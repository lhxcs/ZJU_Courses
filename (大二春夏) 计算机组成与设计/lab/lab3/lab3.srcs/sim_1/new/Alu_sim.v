`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 14:38:40
// Design Name: 
// Module Name: Alu_sim
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


module Alu_sim(

    );
    reg [31:0] a_val;
    reg [31:0] b_val;
    reg [3:0] ctrl;
    wire [31:0] result;
    Alu a0(
        .a_val(a_val),
        .b_val(b_val),
        .ctrl(ctrl),
        .result(result)
    );

    initial begin
        a_val = 32'b0;
        b_val = 32'b0;
        ctrl = 4'b0;
        a_val = 32'hffffffff;
        b_val = 32'd5; #100;

        ctrl = 4'd1;
        a_val = 32'b1;
        b_val = 32'd2; #100;

        ctrl = 4'd2;
        a_val = 32'h00001000;
        b_val = 32'd4; #100;

        ctrl = 4'd3;
        a_val = 32'hffffffff;
        b_val = 32'd1; #100;
        a_val = 32'd1;
        b_val = 32'd2; #100;

        ctrl = 4'd4;
        a_val = 32'hffffffff;
        b_val = 32'd1; #100;
        a_val = 32'd2;
        #100;

        ctrl = 4'd5;
        a_val = 32'b0;
        b_val = 32'd8; #100
        
        ctrl = 4'd6;
        a_val = 32'h00001000;
        b_val = 32'd4; #100;

        ctrl = 4'd7;
        a_val = 32'hffff0000;
        b_val = 32'd4; #100;

        ctrl = 4'd8;
        a_val = 32'hffff0000;
        b_val = 32'h0000f000; #100;

        ctrl = 4'd9;
        #100;
    end
endmodule
