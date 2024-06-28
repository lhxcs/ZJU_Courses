`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/14 14:41:42
// Design Name: 
// Module Name: CSR_File
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

`include "Defines.vh"
module CSR_File(
    input clk,
    input rst,
    input [2:0] CSR_addr,
    input [4:0] rs1,
    input [4:0] rd,
    input [31:0] Write_CSR_data,
    input [31:0] pc,
    input [31:0] error_info,
    input [31:0] error_id,
    input CSR_wen, //csr_write_enable
    input interupt,
    input mret,
    output [31:0] CSR_data, //读出来的数据
    output [31:0] mepc,
    output [31:0] mtvec,
    output mie
    );

    reg [31:0] CSR [4:0];
    integer i;
    initial begin
        for (i = 0; i < 5; i = i + 1) begin
            CSR[i] = 0;
        end
    end

    assign CSR_data = (rd != 0) ? CSR[CSR_addr] : 0;

   always @ (posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 5; i = i + 1) begin
            CSR[i] = 0;
        end
        end
        else if (interupt && CSR[0][3]) begin
            CSR[1] <= pc;
            CSR[2] <= error_id;
            CSR[3] <= error_info;
            CSR[0][7] <= CSR[0][3];
            CSR[0][3] <= 0;
        end
        else if(mret) begin
            CSR[0][3] <= CSR[0][7];
        end
        else if(CSR_wen && rs1!=0) begin
            CSR[CSR_addr] <= Write_CSR_data;
        end
    end

    assign mepc = mret ? CSR[1] : 0;
    assign mtvec = interupt ? CSR[4] : 0;
    assign mie = CSR[0][3];
endmodule
