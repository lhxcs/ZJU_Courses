`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/28 23:45:43
// Design Name: 
// Module Name: DMem
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DMem(
        input wire clk,
        input wire rst,
        input wire wen,
        input wire ren,
        input wire [31:0] addr,
        input wire [31:0] i_data,
        output wire [31:0] o_data,
        output wire ack
    );

    reg [31:0] data [255:0]; 

    initial begin
        $readmemh("data.mem", data);
    end

    reg [2:0] state;
    reg [31:0] o_data_r;
    reg [31:0] addr_r;
    reg [31:0] i_data_r;

    /*
    value of state:
    3'd0: ready state
    3'd1: first busy state cycle of read
    3'd2: second busy state cycle of read
    
    3'd5: first busy state cycle of write
    3'd6: second busy state cycle of write
    3'd7: finish state
    */

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            o_data_r <= 128'h0;
            state <= 3'b000;
            i_data_r <= 128'h0;
            addr_r <= 32'h0;
        end
        else if (state == 3'b000) begin
            if (ren) begin
                state <= 3'b001;
                addr_r <= addr;
            end
            else if (wen) begin
                state <= 3'b101;
                addr_r <= addr;
                i_data_r <= i_data;
            end
        end
        else if (state == 3'b001 || state == 3'b101) begin
            state <= state + 1;
        end
        else if (state == 3'b010) begin
            state <= 3'b111;
            o_data_r <= data[addr_r[9:2]];
        end
        else if (state == 3'b110) begin
            state <= 3'b111;
            data[addr_r[9:2]] <= i_data_r;
        end
        else begin
            state <= 3'b000;
        end
    end

    assign ack = (state == 3'b111);
    assign o_data = o_data_r;
endmodule