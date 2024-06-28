`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/27 19:12:54
// Design Name: 
// Module Name: Mux8to1_4b
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


module Mux8to1_4b(
      input [3:0] a, // 第一个输入
      input [3:0] b, // 第二个输入
      input [3:0] c, // 第三个输入
      input [3:0] d, // 第四个输入
      input [3:0] e, // 第五个输入
      input [3:0] f, // 第六个输入
      input [3:0] g, // 第七个输入
      input [3:0] h, // 第八个输入
      input [2:0] s, // 选择信号
      output reg [3:0] o // 输出
    );
    always @(*) begin
        case(s)
            3'b000: o = a;
            3'b001: o = b;
            3'b010: o = c;
            3'b011: o = d;
            3'b100: o = e;
            3'b101: o = f;
            3'b110: o = g;
            3'b111: o = h;
        endcase
    end
endmodule