`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/19 11:21:45
// Design Name: 
// Module Name: test_gen
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


module test_gen(
        input wire clk,
        input wire rst,
        output reg wen,
        output reg [31:0] data
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data <= 32'h60396039; // TODO: Replace with the last four digits of the student number.
            wen  <= 1'b1;
        end
        else begin
            data <= {data[27:0], data[31:28]};
            wen  <= ~wen;
        end
    end

endmodule
