`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/25 19:31:00
// Design Name: 
// Module Name: AddFloat_sim
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


module AddFloat_sim(

    );
    reg clk;
    reg rst;
    reg start;
    reg [31:0] a;
    reg [31:0] b;
    wire finish;
    wire [31:0] result;

    AddFloat a0 (
        .clk(clk),
        .rst(rst),
        .start(start),
        .a(a),
        .b(b),
        .finish(finish),
        .result(result)
    );

    always begin
        clk <= 1'b1; #5;
        clk <= 1'b0; #5;
    end
    initial begin
        start = 0;
        #10;
        a = 32'h3E800000;//0.25
        b = 32'h3FE00000;//1.75
        start = 1; #10;
        start = 0; #100;

        a = 32'hBF400000;//-0.75
        b = 32'hBF800000;//-1.0
        start = 1; #10;
        start = 0; #100;

        a = 32'h3FC00000; //1.50
        b = 32'hBF400000;//-0.75
        start = 1; #10;
        start = 0; #100;

        a = 32'hBF400000; // -3.7
        b = 32'h3FC00000; // 1.25
        start = 1; #10;
        start = 0; #100;

        a = 32'h7F800000;
        b = 32'h3fa00000;
        start = 1; #10;
        start = 0; #100;

        a = 32'hFF800000;
        b = 32'h3fa00000;
        start = 1; #10;
        start = 0; #100;

        a = 32'h40000000; //1
        b = 32'hC0000000; //-1
        start = 1; #10;
        start = 0; #100;

        a = 32'h3F800000;
        b = 32'h3F800000;
        start = 1; #10;
        start = 0; #100;

        a = 32'h40580000;
        b = 32'hC0500000;
        start = 1; #10;
        start = 0; #100;


    end


endmodule
