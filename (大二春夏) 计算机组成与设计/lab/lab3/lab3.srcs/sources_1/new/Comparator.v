`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 14:53:05
// Design Name: 
// Module Name: Comparator
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


module Comparator(
        input [31:0] a_val,
        input [31:0] b_val,
        input [2:0] ctrl,
        output result
    );

    `define CMP_EQ  3'd0
    `define CMP_NE  3'd1
    `define CMP_LT  3'd2
    `define CMP_LTU 3'd3
    `define CMP_GE  3'd4
    `define CMP_GEU 3'd5

    wire a,b;
    assign a = (a_val == b_val);
    assign b = ~(a_val == b_val);
    wire [31:0] sub;
    assign sub = a_val - b_val;
    assign result = (ctrl == `CMP_EQ) ? a :
                    (ctrl == `CMP_NE) ? b :
                    (ctrl == `CMP_LT) ? (sub[31] == 1) :
                    (ctrl == `CMP_LTU) ? (a_val < b_val) :
                    (ctrl == `CMP_GE) ? (sub[31] == 0) :
                    (ctrl == `CMP_GEU) ? (a_val >= b_val) :
                    1'b0;
endmodule
