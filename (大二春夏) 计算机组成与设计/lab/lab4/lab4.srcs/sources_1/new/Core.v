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

    
    reg [31:0] pc;
    reg [31:0] next_PC;
    wire [31:0] inst;

    `Core_DBG_Assignment

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pc <= 32'b0;
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
    wire is_auipc;  
    wire is_lui;

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
        .lui(is_lui),
        .auipc(is_auipc)
    );

    //data memory write enable
    assign dmem_wen = MemWrite;

    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;

    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];

    wire [31:0] rs1_val;
    wire [31:0] rs2_val;
    wire [31:0] rd_val;

    //Register file
    RegFile RegFile(
        `RegFile_DBG_Arguments
        .clk(clk),
        .rst(rst),
        .wen(RegWrite),
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

    assign ALU_src1 = (is_auipc) ? pc : (is_lui) ? 32'b0 : rs1_val;
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

    assign rd_val = (MemtoReg == 2'b00) ? ALU_res :
                    (MemtoReg == 2'b01) ? dmem_o_data :
                    (MemtoReg == 2'b10) ? pc + 4 :
                    (MemtoReg == 2'b11) ? ALU_res:
                    32'b0;

    //Branch
    wire branch_taken;
    Comparator Comparator(
        .a_val(rs1_val),
        .b_val(rs2_val),
        .ctrl(Compare_Ctrl),
        .result(branch_taken)
    );

    always @(negedge clk) begin
        if(Branch == 1'b1 && branch_taken == 1'b1) begin
            next_PC <= pc + Imm;
        end
        else if(Jump == 1'b1) begin
            if(ALUSrc == 1'b1) begin
                next_PC <= ALU_res;
            end
            else begin
                next_PC <= pc + Imm;
            end
        end
        else begin
            next_PC <= pc + 4;
        end
    end
    
endmodule
