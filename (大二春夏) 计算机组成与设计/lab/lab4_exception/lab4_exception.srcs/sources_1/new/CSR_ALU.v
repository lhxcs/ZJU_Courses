`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/14 14:08:43
// Design Name: 
// Module Name: CSR_ALU
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


module CSR_ALU(
        input [31:0] rs_val, //rs1_data
        input [4:0] imm, //zimm
        input [31:0] csr_val, //csr_data
        input [2:0] ctrl, //ctrl
        output [31:0] rd_i_data, //rd_i_data
        output [31:0] csr_i_val //csr_i_data
    );

    `define CSRRW 3'b000
    `define CSRRS 3'b001
    `define CSRRC 3'b010
    `define CSRRWI 3'b011
    `define CSRRSI 3'b100
    `define CSRRCI 3'b101

    assign rd_i_data = csr_val;
    wire [31:0] Imm;
    assign Imm = {27'b0, imm};

    assign csr_i_val = (ctrl == `CSRRW) ? rs_val :
                        (ctrl == `CSRRS) ? csr_val | rs_val :
                        (ctrl == `CSRRC) ? csr_val & ~rs_val :
                        (ctrl == `CSRRWI) ? Imm :
                        (ctrl == `CSRRSI) ? csr_val | Imm :
                        (ctrl == `CSRRCI) ? csr_val & ~Imm : 0;
    

endmodule
