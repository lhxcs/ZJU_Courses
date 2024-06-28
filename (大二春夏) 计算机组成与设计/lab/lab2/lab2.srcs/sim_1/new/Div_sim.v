`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/24 19:02:47
// Design Name: 
// Module Name: Div_sim
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


module Div_sim(

    );

    reg clk;
    reg rst;
    reg start;
    reg [15:0] dividend;
    reg [15:0] divisor;
    wire finish;
    wire ready;
    wire [15:0] quotient;
    wire [15:0] remainder;
    wire div_by_0;

    Div d0 (
        .clk(clk),
        .rst(rst),
        .start(start),
        .dividend(dividend),
        .divisor(divisor),
        .finish(finish),
        .ready(ready),
        .quotient(quotient),
        .remainder(remainder),
        .div_by_0(div_by_0)
    );

    always begin
        clk <= 1'b1; #2;
        clk <= 1'b0; #2;
    end

    initial begin
        start = 0;
        #10;
        dividend = 15'd1;
        divisor = 15'd0;
        #10 start = 1;
        #10 start = 0;
        #200;

        dividend = 15'd74;
        divisor = 15'd21;
        #10 start = 1;
        #10 start = 0;
        #200;

        dividend = 15'd15;
        divisor = 15'd3;
        #10 start = 1;
        #10 start = 0;
        #200;

        dividend = -15'd15;
        divisor = 15'd2;
        #10 start = 1;
        #10 start = 0;
        #200;

        dividend = 15'd100;
        divisor = -15'd3;
        #10 start = 1;
        #10 start = 0;
        #200;

        dividend = -15'd200;
        divisor = -15'd13;
        #10 start = 1;
        #10 start = 0;
        #200;
    end

endmodule
