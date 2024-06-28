`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 15:37:06
// Design Name: 
// Module Name: RegFile_sim
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


module RegFile_sim(

    );
    reg clk;
    reg rst;
    reg wen;
    reg[4:0] rs1;
    reg[4:0] rs2;
    reg[4:0] rd;
    reg[31:0] i_data;
    wire[31:0] rs1_val;
    wire[31:0] rs2_val;

    RegFile uut (
        .clk(clk), 
        .rst(rst), 
        .wen(wen), 
        .rs1(rs1), 
        .rs2(rs2), 
        .rd(rd), 
        .i_data(i_data), 
        .rs1_val(rs1_val), 
        .rs2_val(rs2_val)
    );

    always begin
        clk <= 1'b1; #50;
        clk <= 1'b0; #50;
    end

    initial begin
        i_data = 32'b0;
        rs1 = 0;
        rs2 = 0;
        rd = 0;
        wen = 0;
        #100;
        i_data = 32'b1;
        rd = 5'd7;
        wen = 1;
        rs1 = 5'd7;
        rs2 = 5'd8;
        #100;
        wen = 0;
        rd = 5'd8;
        i_data = 32'hffffffff;
        #100;
        wen = 1;
        #100;
        wen = 0;
        rd = 5'b0;
        #100;
        wen = 1;
        rs1 = 5'b0;
        #100;
        wen = 0;
        rd = 5'd23;
        i_data = 32'hffff3333;
        #50;
        wen = 1;
        #100;
        wen = 0;
        rd = 5'd4;
        i_data = 32'haaaaaaaa;
        #100;
        wen  = 1;
        rs1 = 5'd8;
        rs2 = 5'd7;
        #100;
        rs1 = 5'd4;
        rs2 = 5'd23;
        #50;






    end

    

endmodule
