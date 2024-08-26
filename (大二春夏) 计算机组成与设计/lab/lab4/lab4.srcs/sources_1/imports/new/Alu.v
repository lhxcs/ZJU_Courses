`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/27 17:50:16
// Design Name: 
// Module Name: Alu
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


module Alu(
        input [31:0] a_val,
        input [31:0] b_val,
        input [3:0] ctrl,
        output [31:0] result
    );
    `define ALU_ADD  4'd0
    `define ALU_SUB  4'd1
    `define ALU_SLL  4'd2
    `define ALU_SLT  4'd3
    `define ALU_SLTU 4'd4
    `define ALU_XOR  4'd5
    `define ALU_SRL  4'd6
    `define ALU_SRA  4'd7
    `define ALU_OR   4'd8
    `define ALU_AND  4'd9

    wire[31:0] a, b, c, d, e, f, g, h, i, j;
    assign a = a_val + b_val; //ADD
    assign b = a_val - b_val; //SUB
    assign c = a_val << b_val[4:0]; //SLL
    assign d = (a_val[31] == 1 && b_val[31] == 0) ? 32'b1 :
                (a_val[31] == 0 && b_val[31] == 1) ? 32'b0 :
                (a_val < b_val) ? 32'b1 : 32'b0; //SLT
    assign e = (a_val < b_val); //SLTU
    assign f = a_val ^ b_val; //XOR
    assign g = a_val | b_val; //OR
    assign h = a_val & b_val; //AND
    assign i = ($signed(a_val) >>> $signed(b_val[4:0])); //SRA
    assign j = a_val >> b_val[4:0];

    assign result = (ctrl == `ALU_ADD) ? a:
                    (ctrl == `ALU_SUB) ? b:
                    (ctrl == `ALU_SLL) ? c:
                    (ctrl == `ALU_SLT) ? d:
                    (ctrl == `ALU_SLTU) ? e:
                    (ctrl == `ALU_XOR) ? f:
                    (ctrl == `ALU_OR) ? g:
                    (ctrl == `ALU_AND) ? h:
                    (ctrl == `ALU_SRA) ? i:
                    j;

endmodule
