`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/19 19:08:57
// Design Name: 
// Module Name: Mul
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


module Mul(
    input clk,
    input rst,
    input [15:0] multiplicand,
    input [15:0] multiplier,
    input start,
    output [31:0] product,
    output ready,
    output finish
    );
    wire neg;
    reg [31:0] result;
    assign neg = multiplier[15] ^ multiplicand[15];
    wire [15:0] num1;
    wire [15:0] num2;
    assign num1 = (multiplicand[15] == 1) ? ~multiplicand + 1 : multiplicand;
    assign num2 = (multiplier[15] == 1) ? ~multiplier + 1 : multiplier;
    //assign result = {16'b0, multiplier};
    reg ready_reg;
    reg finish_reg;
    reg [1:0] state;
    reg [3:0] n;
    
    initial begin
        ready_reg <= 1;
        finish_reg <= 0;
        n <= 0;
        state <= 0;
    end
    always@(posedge clk or posedge rst) begin
        if(rst) begin
            state <= 2'b00;
        end
        else if ((state == 2'b00) && start) begin
            state <= 2'b01;
            ready_reg <= 1'b0;
        end
        else if((state == 2'b01) && (n == 0)) begin
            state <= 2'b10;
            finish_reg <= 1'b1;
        end
        else if(state == 2'b10) begin
            state <= 2'b00;
            ready_reg <= 1'b1;
            finish_reg <= 1'b0;
        end
    end

    always@(posedge clk or posedge rst) begin
        if(rst)  result <= 32'b0;
        else if((state == 2'b00) && start) begin
            n <= 4'd15;
            result <= {16'b0, num2};
        end
        else if(state == 2'b01) begin
            if(result[0] == 1'b1) begin
                result = {result[31:16] + num1, result[15:0]};
            end
            result = result >> 1;
            n = n - 1'b1;
        end
    end

    assign product = (neg) ? ~result + 1 : result;
    assign ready = ready_reg;
    assign finish = finish_reg;


endmodule
