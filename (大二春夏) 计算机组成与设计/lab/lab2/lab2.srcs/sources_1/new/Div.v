`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/24 18:24:50
// Design Name: 
// Module Name: Div
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


module Div(
        input clk,
        input rst,
        input start,
        input [15:0] dividend,
        input [15:0] divisor,
        output finish,
        output ready,
        output [15:0] quotient,
        output [15:0] remainder,
        output div_by_0
    );

    wire neg;
    assign neg = dividend[15] ^ divisor[15];
    wire [15:0] num1;
    wire [15:0] num2;
    assign num1 = (dividend[15] == 1) ? ~dividend + 1 : dividend;
    assign num2 = (divisor[15] == 1) ? ~divisor + 1 : divisor;

    reg [1:0] state;
    reg [3:0] n;

    reg ready_reg;
    reg finish_reg;
    reg [31:0] remainder_reg;
    reg div_by_0_reg;

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
            if(divisor == 0) begin
                state <= 2'b10;
                finish_reg <= 1'b0;
            end
            else begin
                state <= 2'b01;
                ready_reg <= 1'b0;
            end
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
        if(rst) begin
            remainder_reg <= 32'b0;
        end
        else if(state == 2'b00 && start) begin
            if(divisor == 0) begin
                remainder_reg <= 32'b0;
                div_by_0_reg <= 1;
            end
            else begin
                n <= 4'd15;
                div_by_0_reg <= 0;
                remainder_reg <= {15'b0, num1, 1'b0};
            end
        end
        else if(state == 2'b01) begin
            n = n - 1'b1;
            if(remainder_reg[31:16] >= num2) begin
                remainder_reg = {remainder_reg[31:16] - num2, remainder_reg[15:0]} << 1;
                remainder_reg = remainder_reg + 1'b1;
            end
            else begin
                remainder_reg = remainder_reg << 1;
            end
        end
    end
    
    assign quotient = (neg) ? ~remainder_reg[15:0] + 1 : remainder_reg[15:0];
    wire [15:0] abs_remainder;
    assign abs_remainder = remainder_reg[31:16] >> 1;
    assign remainder = (dividend[15] == 1) ? ~abs_remainder + 1 : abs_remainder;

    assign div_by_0 = div_by_0_reg;
    assign ready = ready_reg;
    assign finish = finish_reg;
endmodule
