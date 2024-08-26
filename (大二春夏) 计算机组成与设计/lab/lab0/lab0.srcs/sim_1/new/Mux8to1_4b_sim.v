`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/27 19:17:17
// Design Name: 
// Module Name: Mux8to1_4b_sim
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


module Mux8to1_4b_sim(

    );
    reg [3:0] a, b, c, d, e, f, g, h;
    reg [2:0] s;
    wire [3:0] out;

    Mux8to1_4b m0 (.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.s(s),.o(out));

    initial begin
        a <= 4'b0000;
        b <= 4'b0001;
        c <= 4'b0010;
        d <= 4'b0011;
        e <= 4'b0100;
        f <= 4'b0101;
        g <= 4'b0110;
        h <= 4'b1110;
        s <= 3'b000;
        #50;
        s <= 3'b001;
        #50;
        s <= 3'b010;
        #50;
        s <= 3'b011;
        #50;
        s <= 3'b100;
        #50;
        s <= 3'b101;
        #50;
        s <= 3'b110;
        #50;
        s <= 3'b111;
        #50;
    end


endmodule
