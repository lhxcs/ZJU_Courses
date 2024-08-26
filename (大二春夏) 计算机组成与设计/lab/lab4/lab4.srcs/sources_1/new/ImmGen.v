`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 13:21:51
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input [2:0] ImmSel,
    input [31:0] inst,
    output [31:0] Imm
    );

    wire [31:0] res[4:0];
    assign res[0] = {{20{inst[31]}}, inst[31:20]}; // I-type
    assign res[1] = {{20{inst[31]}}, inst[31:25], inst[11:7]}; //S-type
    assign res[2] = {{19{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8], 1'b0}; //SB-type
    assign res[3] = {{11{inst[31]}}, inst[31], inst[19:12], inst[20], inst[30:21], 1'b0}; //UJ-type
    assign res[4] = {inst[31:12], 12'b0}; //U-type
    assign Imm = res[ImmSel];
endmodule
