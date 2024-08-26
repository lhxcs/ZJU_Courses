`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/28 20:55:57
// Design Name: 
// Module Name: Forwarding_Ctrl
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


module Forwarding_Ctrl(
    input [4:0] ID_EX_rs1,
    input [4:0] ID_EX_rs2,
    input [4:0] EX_MEM_rd,
    input [4:0] wb_rd,
    input EX_MEM_RegWrite,
    input wb_RegWrite,
    input [1:0] EX_MEM_MemtoReg,
    input [1:0] wb_MemtoReg,
    input ALUsrc,
    input auipc_lui,
    output [1:0] ForwardA, //00 表示来自寄存器, 01 表示来自 EX/MEM, 10 表示来自 MEM/WB, 11 来自 pc
    output [1:0] ForwardB, // 00 来自寄存器，01来自 EX/MEM，10来自MEM/WB，11来自 imm
    output [1:0] ForwardC // 针对 store 的 forwarding, 00来自 rs2_val, 01 来自 EX/MEM, 10 来自 MEM/WB
    );

    wire EX_MEM_Forwarding1;
    wire EX_MEM_Forwarding2;
    assign EX_MEM_Forwarding1 = (EX_MEM_RegWrite && (EX_MEM_rd != 5'b0)) && (EX_MEM_rd == ID_EX_rs1);
    assign EX_MEM_Forwarding2 = (EX_MEM_RegWrite && (EX_MEM_rd != 5'b0)) && (EX_MEM_rd == ID_EX_rs2);

    wire MEM_WB_Forwarding1;
    wire MEM_WB_Forwarding2;
    assign MEM_WB_Forwarding1 = (wb_RegWrite && (wb_rd != 5'b0)) && (wb_rd == ID_EX_rs1) && (~EX_MEM_Forwarding1);
    assign MEM_WB_Forwarding2 = (wb_RegWrite && (wb_rd != 5'b0)) && (wb_rd == ID_EX_rs2) && (~EX_MEM_Forwarding2);

    assign ForwardA = (auipc_lui) ? 2'b11 :
                        (MEM_WB_Forwarding1) ? 2'b10:
                        (EX_MEM_Forwarding1) ? 2'b01: 2'b00;
    assign ForwardB = (ALUsrc) ? 2'b11 : (MEM_WB_Forwarding2) ? 2'b10:
                        (EX_MEM_Forwarding2) ? 2'b01: 2'b00;
    assign ForwardC = (EX_MEM_Forwarding2) ? 2'b01:
                        (MEM_WB_Forwarding2) ? 2'b10: 2'b00;
endmodule
