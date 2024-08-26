`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/08 19:47:58
// Design Name: 
// Module Name: Core_tb
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


module Core_tb(

    );
    reg clk;
    reg rst;
    wire [31:0] imem_addr;
    wire [31:0] imem_o_data;
    wire [31:0] dmem_addr;
    wire [31:0] dmem_o_data;
    wire [31:0] dmem_i_data;
    wire dmem_wen;
    wire sw;
    Core m0(
        .clk(clk),
        .rst(rst),
        .imem_addr(imem_addr),
        .imem_o_data(imem_o_data),
        .dmem_addr(dmem_addr),
        .dmem_o_data(dmem_o_data),
        .dmem_i_data(dmem_i_data),
        .dmem_wen(dmem_wen),
        .sw(sw)
    );

    Mem m1(
        .i_addr(imem_addr),
        .i_data(imem_o_data),
        .clk(clk),
        .d_wen(dmem_wen),
        .d_addr(dmem_addr),
        .d_i_data(dmem_i_data),
        .d_o_data(dmem_o_data)
    );
    initial begin
        rst = 1'b1; #10;
        rst = 1'b0; 
    end

    always begin
        clk <= 1'b1; #5;
        clk <= 1'b0; #5;
    end
    
endmodule
