`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 15:20:07
// Design Name: 
// Module Name: Comparator_sim
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


module Comparator_sim(

    );

    reg [31:0] a_val;
    reg [31:0] b_val;
    reg [2:0] ctrl;
    wire result;
    Comparator a0(
        .a_val(a_val),
        .b_val(b_val),
        .ctrl(ctrl),
        .result(result)
    );
    initial begin
        a_val = 32'd5;
        b_val = 32'd3;
        ctrl = 3'b0;
        #100;
        a_val = 32'd5;
        b_val = 32'd5;
        #100;
        ctrl = 3'd1;
        #100;
        a_val = 32'd5;
        b_val = 32'd3;
        #100;
        ctrl = 3'd2;
        #100
        a_val = -32'd7;
        b_val = -32'd5;
        #100 
        ctrl = 3'd3;
        a_val = 32'd2;
        b_val = 32'd1;
        #100
        a_val = 32'd5;
        b_val = -32'd3;
        #100
        ctrl = 3'd4;
        #100
        a_val = 32'd1;
        b_val = 32'd2;
        #100;
        ctrl = 3'd5;
        #100
        a_val = 32'd5;
        b_val = 32'd3;
        #100;
    end
endmodule
