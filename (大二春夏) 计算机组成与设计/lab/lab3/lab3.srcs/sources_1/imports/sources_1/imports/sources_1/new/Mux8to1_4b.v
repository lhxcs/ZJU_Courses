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
      output [3:0] o // 输出
    );
    assign o = ((s == 3'b000) ? a : 
                (s == 3'b001) ? b : 
                (s == 3'b010) ? c : 
                (s == 3'b011) ? d : 
                (s == 3'b100) ? e : 
                (s == 3'b101) ? f : 
                (s == 3'b110) ? g : 
                                h );
endmodule