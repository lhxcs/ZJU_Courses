`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/25 10:53:30
// Design Name: 
// Module Name: Core
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

`include "Defines.vh"

module Core(
       `Core_DBG_Definitions
        input clk,
        input rst,
        output [31:0] imem_addr, 
        input [31:0] imem_o_data,
        output [31:0] dmem_addr,
        input [31:0] dmem_o_data,
        output [31:0] dmem_i_data,
        output dmem_wen,
        input sw
    );

    `define CSRRW 3'b000
    `define CSRRS 3'b001
    `define CSRRC 3'b010
    `define CSRRWI 3'b011
    `define CSRRSI 3'b100
    `define CSRRCI 3'b101

    
    reg [31:0] pc;
    wire [31:0] next_PC;
    wire [31:0] inst;

    wire [31:0] mret;
    assign mret = (inst == 32'h30200073);
    wire [31:0] mepc;
    wire  [31:0] mtvec;

    `Core_DBG_Assignment

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pc <= 32'b0;
        end
        else if(mret) begin //exit from exception
            pc <= mepc;
        end
        else begin
            pc <= next_PC;
        end
    end

    assign inst = imem_o_data;
    assign imem_addr = pc;

    wire [2:0] ImmSel;
    wire ALUSrc;
    wire [1:0] MemtoReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire Branch;
    wire Jump;
    wire [3:0] ALU_Ctrl;
    wire [2:0] Compare_Ctrl;
    wire illegal;
    wire [2:0] CSR_ctrl;
    wire CSR;
    wire mie;
    wire interupt;

    //Generaet ctrl signal
    SCPU_Ctrl Ctrl(
        .inst(inst),
        .ImmSel(ImmSel),
        .ALUSrc(ALUSrc),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .Jump(Jump),
        .ALU_Ctrl(ALU_Ctrl),
        .Compare_Ctrl(Compare_Ctrl),
        .CSR_ctrl(CSR_ctrl),
        .CSR(CSR),
        .is_illegal(illegal)
    );

    //data memory write enable
    assign dmem_wen = MemWrite && ~(interupt && mie);

    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;

    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];

    wire [31:0] rs1_val;
    wire [31:0] rs2_val;
    wire [31:0] rd_val;

    wire RegWrite_final;
    assign RegWrite_final = RegWrite && ~(interupt && mie);

    //Register file
    RegFile RegFile(
        `RegFile_DBG_Arguments
        .clk(clk),
        .rst(rst),
        .wen(RegWrite_final),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .i_data(rd_val),
        .rs1_val(rs1_val),
        .rs2_val(rs2_val)
    );

    //ImmGen
    wire [31:0] Imm;
    ImmGen ImmGen(
        .inst(inst),
        .ImmSel(ImmSel),
        .Imm(Imm)
    );

    wire [31:0] ALU_src1;
    wire [31:0] ALU_src2;

    assign ALU_src1 = rs1_val;
    assign ALU_src2 = ALUSrc ? Imm : rs2_val;

    wire [31:0] ALU_res;

    //ALU
    Alu ALU(
        .a_val(ALU_src1),
        .b_val(ALU_src2),
        .ctrl(ALU_Ctrl),
        .result(ALU_res)
    );

    assign dmem_addr = ALU_res;
    assign dmem_i_data = rs2_val;

    wire [31:0] csr_rd_val;

    assign rd_val = (CSR) ? csr_rd_val : 
                    (MemtoReg == 2'b00) ? ALU_res :
                    (MemtoReg == 2'b01) ? dmem_o_data :
                    (MemtoReg == 2'b10) ? pc + 4 :
                    (MemtoReg == 2'b11) ? ((inst[6:0] == 7'b0110111) ? {Imm[31:12], 12'b0} : 
                                            (inst[6:0] == 7'b0010111) ? pc + {Imm[31:12], 12'b0} : 32'b0):
                    32'b0;

    //Branch
    wire branch_taken;
    Comparator Comparator(
        .a_val(rs1_val),
        .b_val(rs2_val),
        .ctrl(Compare_Ctrl),
        .result(branch_taken)
    );

    // always @(negedge clk) begin
    //     if(interupt && mie) begin
    //         next_PC <= mtvec;
    //     end
    //     else if(Branch == 1'b1 && branch_taken == 1'b1 && !interupt) begin
    //         next_PC <= pc + Imm;
    //     end
    //     else if(Jump == 1'b1 && !interupt) begin
    //         if(ALUSrc == 1'b1) begin
    //             next_PC <= ALU_res;
    //         end
    //         else begin
    //             next_PC <= pc + Imm;
    //         end
    //     end
    //     else begin
    //         next_PC <= pc + 4;
    //     end
    // end
    assign next_PC = (interupt && mie) ? mtvec : 
                    ((Branch == 1'b1 && branch_taken == 1'b1)) ? pc + Imm :
                    (Jump == 1'b1) ? ((ALUSrc == 1'b1) ? ALU_res : pc + Imm) : pc + 4;

    wire [2:0] csr_rd;
    assign csr_rd = (inst[31:20] == `CSR_MSTATUS) ? 3'b000:
                    (inst[31:20] == `CSR_MEPC) ? 3'b001:
                    (inst[31:20] == `CSR_MCAUSE) ? 3'b010:
                    (inst[31:20] == `CSR_MTVAL) ? 3'b011:
                    (inst[31:20] == `CSR_MTVEC) ? 3'b100: 3'b000;
    
    wire [31:0] csr_data;
    wire [31:0] csr_i_data;
    wire [31:0] error_id;
    wire [31:0] error_info;

    CSR_File CSRFile(
        .clk(clk),
        .rst(rst),
        .CSR_addr(csr_rd),
        .rs1(rs1),
        .rd(rd),
        .Write_CSR_data(csr_i_data),
        .pc(pc),
        .error_info(error_info),
        .error_id(error_id),
        .CSR_wen(CSR),
        .interupt(interupt),
        .mret(mret),
        .CSR_data(csr_data),
        .mepc(mepc),
        .mtvec(mtvec),
        .mie(mie)
    );

    CSR_ALU CSR_ALU(
        .rs_val(rs1_val),
        .imm(inst[19:15]),
        .csr_val(csr_data),
        .ctrl(CSR_ctrl),
        .rd_i_data(csr_rd_val),
        .csr_i_val(csr_i_data)
    );

    wire branch_jump;
    assign branch_jump = Branch | Jump;
    wire [31:0] csr_controll_alu_res;
    assign csr_controll_alu_res = (Branch == 1'b1 && branch_taken == 1'b1) ? pc + Imm : 
                                (Jump == 1'b1 ) ? (ALUSrc == 1'b1) ? ALU_res : pc + Imm : 32'b0;

    Exception_Controller ex_controll(
        .sw(sw),
        .inst(inst),
        .branch_jump(branch_jump),
        .ALU_res(csr_controll_alu_res),
        .dmem_addr(dmem_addr),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .illegal(illegal),
        .interupt(interupt),
        .error_info(error_info),
        .error_id(error_id)
    );
    
endmodule
