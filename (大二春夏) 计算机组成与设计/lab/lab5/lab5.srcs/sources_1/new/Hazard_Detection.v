`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/31 18:27:08
// Design Name: 
// Module Name: Hazard_Detection
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


module Hazard_Detection(
    input ID_EX_MemRead,
    input IF_ID_MemWrite,
    input [4:0] ID_EX_rd,
    input [4:0] IF_ID_rs1,
    input [4:0] IF_ID_rs2,
    output stall
    );

    assign stall =  (~IF_ID_MemWrite) && ID_EX_MemRead && ((ID_EX_rd != 5'b0) && ((ID_EX_rd == IF_ID_rs1) || (ID_EX_rd == IF_ID_rs2)));
endmodule
