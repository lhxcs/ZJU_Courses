`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/19 20:05:38
// Design Name: 
// Module Name: Mul_sim
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


module Mul_sim(

    );

    reg clk;
    reg rst;
    reg [15:0] multiplicand;
    reg [15:0] multiplier;
    reg start;
    wire [31:0] product;
    wire ready;
    wire finish;

    Mul m0 (
        .clk(clk),
        .rst(rst),
        .multiplicand(multiplicand),
        .multiplier(multiplier),
        .start(start),
        .product(product),
        .ready(ready),
        .finish(finish)
    );
    
    always begin
        clk <= 1'b1; #2;
        clk <= 1'b0; #2;
    end

    initial begin
        start = 0;
        #10;
        multiplicand = 15'd1;
        multiplier = 15'd0;
        #10 start = 1;
        #10 start = 0;
        #200;

        multiplicand = 15'd10;
        multiplier = 15'd30;
        #10 start = 1;
        #10 start = 0;
        #200;

        multiplicand = 15'd15;
        multiplier = 15'd23;
        #10 start = 1;
        #10 start = 0;
        #200;

        multiplicand = -15'd5;
        multiplier = 15'd10;
        #10 start = 1;
        #10 start = 0;
        #200;

        multiplicand = 15'd10;
        multiplier = -15'd23;
        #10 start = 1;
        #10 start = 0;
        #200;

        multiplicand = -15'd15;
        multiplier = -15'd23;
        #10 start = 1;
        #10 start = 0;
        #200;

    end
endmodule
