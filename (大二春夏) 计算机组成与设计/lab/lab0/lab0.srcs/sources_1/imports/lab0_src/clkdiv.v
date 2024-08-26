`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2023 02:58:51 PM
// Design Name: 
// Module Name: clkdiv
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


module clkdiv(
        input wire clk,
        input wire rst,
        output wire [2:0] scan
    );

    reg [31:0] clk_div;
    initial begin
        clk_div <= 32'h0000_0000;
    end

    always @ (posedge clk or posedge rst) begin
        if (rst) clk_div <= 0;
        else clk_div <= clk_div + 1'b1;
    end

    assign scan = clk_div[12:10];
endmodule
