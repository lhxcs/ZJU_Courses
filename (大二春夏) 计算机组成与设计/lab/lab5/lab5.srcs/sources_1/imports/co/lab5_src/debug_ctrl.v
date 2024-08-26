`timescale 1ns / 1ps

/**
* Author: Gong Haochen  <1527198893@qq.com>
*/
module debug_ctrl (
    input clk, rst,
    input debug_clk,
    input wire en,
    input wire [31:0] debug_data,
    input wire [31:0] wb_pc,
    input wire [31:0] wb_inst,
    input wire [31:0] mem_addr,
    input wire [31:0] mem_data,
    // [MODIFY] add other input debugged signals here, should be 32 bits
    input wire uart_busy,
    output wire [4:0] debug_addr,
    output wire [7:0] sim_uart_char,
    output wire sim_uart_char_valid
);
    
    
    // len = 1 
    localparam STR_X = "x";
    // len = 7
    localparam STR_PC = "WB_PC  ";
    localparam STR_INST = "WB_INST";
    localparam STR_CUST0 = "CUSTOM0"; 
    localparam STR_CUST1 = "CUSTOM1";
    // len = 3
    localparam STR_COLON = "=0x";

    // xXX=0xXXXXXXXX\n\r - 16 chars
    localparam BEAT_REG = 15; // 1+2+3+8+2-1
    localparam NUM_REG = 32; 

    // =================== For customization ============================
    // -!!!- Only modify those lines commented with [MODIFY] -!!!-
    // XXXXXXX=0xXXXXXXXX\n\r - 20 chars
    // 7 chars - name of sig
    // 3 chars - "=0x"
    // 8 chars - hex of 32 bits signal
    // 2 chars - "\n\r"    
    localparam BEAT_CUST = 19;  // 7+3+8+2-1
    localparam NUM_CUST_SIG = 4; // [MODIFY] +1 when add a new debugged signal

    wire [31:0] cust_sig_list [0:31];
    assign cust_sig_list[0] = wb_pc;
    assign cust_sig_list[1] = wb_inst;
    assign cust_sig_list[2] = mem_addr;
    assign cust_sig_list[3] = mem_data;
    // [MODIFY] assign new signal here
    // assign cust_sig_list[2] = xxx;

    wire[55:0] cust_name_list [0:31];
    assign cust_name_list[0] = STR_PC;
    assign cust_name_list[1] = STR_INST;
    assign cust_name_list[2] = "MEMADDR";
    assign cust_name_list[3] = "MEMDATA";
    // [MODIFY] assign new signal here
    // assign cust_name_list[2] = "xxxxxxx"; (7 chars!)

    reg[4:0] cust_counter;  // [MODIFY] should cover NUM_CUST_SIG
    // =================== customization END ============================

    localparam CNT_REG = NUM_REG-1;
    localparam CNT_CUST = NUM_CUST_SIG - 1;
 
    // State
    localparam sIDLE = 2'b00;
    localparam sREG = 2'b01;  // transfer general purpose registers
    localparam sCUST = 2'b10; // transfer customized signal

    wire[7:0] ascii_char [0:7]; // 8*8
    wire[63:0] ascii_buffer;
    wire[20*8-1:0] str_buffer; // 20*8=160
    wire[7:0] char_array [0:BEAT_CUST];
    
    reg[1:0] state;
    reg[4:0] reg_counter;
    reg[4:0] beat_counter;
    
    // Used to ensure that only one round of 
    // printing will be done during the raising debug_clk
    reg start; // trigger
    reg done;  // mark if triggered

    wire reg_cnt_full = reg_counter == CNT_REG;
    wire reg_beat_full = beat_counter == BEAT_REG;
    wire cust_cnt_full = cust_counter == CNT_CUST;
    wire cust_beat_full = beat_counter == BEAT_CUST;

    wire reg_beat_done = reg_beat_full && sim_uart_char_valid;
    wire cust_beat_done = cust_beat_full && sim_uart_char_valid;

    wire reg_trans_done = reg_cnt_full && reg_beat_done;
    wire cust_trans_done = cust_cnt_full && cust_beat_done;

    always@(posedge clk) begin
        if(rst) begin
            start <= 0;
            done <= 0;
        end else begin
            if (debug_clk && done==0 && en) begin
                start <= 1;
                done <= 1;
            end else if (done==1) begin
                start <= 0;
                done <= debug_clk ? done : 0;
            end
        end
    end
    
    always@(posedge clk) begin
        if(rst) begin
            state <= sIDLE;
        end else begin
            if (start) begin 
                if(state == sIDLE)begin
                    state <= sREG;
                end      
            end else begin
                case(state)
                    sREG: begin
                        state <= reg_trans_done ? sCUST : state;
                    end
                    sCUST: begin
                        state <= cust_trans_done ? sIDLE : state; 
                    end
                    default: begin
                        state <= state;
                    end
                endcase 
            end
        end
    end

    always@(posedge clk) begin
        if(rst) begin
            reg_counter <= 5'd1;
            beat_counter <= 5'd0;
            cust_counter <= 0;
        end else begin 
            case(state)
                sREG: begin
                    // update when prev str trans done.
                    reg_counter <= reg_beat_done ? 
                                   reg_cnt_full ? 5'd1 : reg_counter + 1 
                                   : reg_counter;
                    beat_counter <= reg_beat_done ? 0 :
                                   uart_busy ? beat_counter : beat_counter + 1;
                end
                sCUST: begin
                    cust_counter <= cust_beat_done ? 
                                  cust_cnt_full ? 0 : cust_counter + 1 
                                  : cust_counter;
                    beat_counter <= cust_beat_done ? 0 :
                                   uart_busy ? beat_counter : beat_counter + 1;
                end
                default: begin
                    reg_counter <= 5'd1;
                    beat_counter <= 5'd0;
                    cust_counter <= 0;
                end
            endcase
        end
    end

    assign debug_addr = reg_counter;

    wire[31:0] sig_cust = cust_sig_list[cust_counter];  
    wire[31:0] debug_sig = state == sREG ? debug_data :
                           state == sCUST ? sig_cust : 0;
    wire[23:0] reg_name = {STR_X, num2str_dec(reg_counter)};  // 3*8
    wire[55:0] cust_name = cust_name_list[cust_counter];      // 7*8

    genvar i;
    generate for(i = 0; i < 8; i = i + 1)
    	begin : ascii_enc
    		assign ascii_char[i] = { num2str_hex(debug_sig[4*i+3 : 4*i]) };
    	end
    endgenerate

    // xRR=0xXXXXXXXX\n\r - 16 chars
    // WB_XXXX=0xXXXXXXXX\n\r - 20 chars
    assign ascii_buffer = {ascii_char[7],ascii_char[6],ascii_char[5],ascii_char[4],
                           ascii_char[3],ascii_char[2],ascii_char[1],ascii_char[0]};
    assign str_buffer = state == sREG ? {reg_name, STR_COLON, ascii_buffer, "\n",8'h0d, 32'd0}:
                        state == sCUST  ? {cust_name, STR_COLON, ascii_buffer, "\n",8'h0d} : 0;
    
    //sgenvar i;
    generate for(i = 0; i < 20; i = i + 1)
    	begin : buffer2array
    		assign char_array[i] = str_buffer[(BEAT_CUST-i)*8+7:(BEAT_CUST-i)*8];
    	end
    endgenerate

    // clk   ____|||||____|||||____|||||____|||||____|||||____
    // head                        |update
    // tail      |update
    // busy  _____||||||||||||||||||_______________________
    // valid ||||||_________________|||||||||
    // char      |take                      |take
    //
    // The uart buffer will take the char before raising busy
    // So we update and then hold the counter.
    assign sim_uart_char = char_array[beat_counter];
    assign sim_uart_char_valid = (state != sIDLE) & (~uart_busy);

    function [7:0] num2str_hex;
		input [3:0] number;
		begin
			if (number < 10)
				num2str_hex = "0" + number;
			else
				num2str_hex = "A" - 10 + number;
		end
	endfunction

    function [15:0] num2str_dec;
		input [5:0] number;
		begin
			if (number < 10)
				num2str_dec = {"0","0" + number};
            else if (number < 20)
                num2str_dec = {"1","0" + (number - 5'd10)};
            else if (number < 30)
                num2str_dec = {"2","0" + (number - 5'd20)};
			else
				num2str_dec = {"3","0" + (number - 5'd30)};
		end
	endfunction
endmodule
