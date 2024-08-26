`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/29 15:29:36
// Design Name: 
// Module Name: RegFile
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


module RegFile(
        `Core_DBG_Definitions
        input clk,
        input rst,
        input wen,
        input [4:0] rs1,
        input [4:0] rs2,
        input [4:0] rd,
        input [31:0] i_data,
        output [31:0] rs1_val,
        output [31:0] rs2_val
    );
    
     reg [31:0] regs [31:0];
    `RegFile_DBG_Assignment

    integer i;
    initial begin
        for(i = 0; i < 32; i = i + 1) begin
            regs[i] = 0;
        end
    end

    
    always@(negedge clk or posedge rst) begin
        if(rst) begin
            for(i = 0; i < 32; i = i + 1) begin
                regs[i] = 0;
            end
        end
        else begin
            if(wen && rd != 0) begin
                regs[rd] <= i_data;
            end
        end
    end

    assign rs1_val = regs[rs1];
    assign rs2_val = regs[rs2];

endmodule
