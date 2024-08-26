`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/14 17:59:10
// Design Name: 
// Module Name: Ctrl_sim
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


module Ctrl_sim(

    );

   reg [31:0] inst;
    wire [2:0] ImmSel;
    wire ALUSrc;
    wire [1:0] MemtoReg;
    wire RegWrite;
    wire MemRW;
    wire Branch;
    wire Jump;
    wire [3:0] ALU_Ctrl;
    wire [2:0] Compare_Ctrl;
    wire CSR;
    wire [2:0] CSR_ctrl;

    SCPU_Ctrl SCPU_Ctrl(
        .inst(inst),
        .ImmSel(ImmSel),
        .ALUSrc(ALUSrc),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite),
        .MemRW(MemRW),
        .Branch(Branch),
        .Jump(Jump),
        .ALU_Ctrl(ALU_Ctrl),
        .Compare_Ctrl(Compare_Ctrl),
        .CSR(CSR),
        .CSR_ctrl(CSR_ctrl)
    );

    initial begin
        inst = 32'h30529073; //csrrw 0
        #50;
        inst = 32'h3052A5f3; //csrrs 1
        #50;
        inst = 32'h30029073; //csrrw 0
        #50;
        inst = 32'h34203573;//csrrc 2
        #50;
        inst = 32'h3410d673; //csrrwi 3
        #50;
        inst = 32'h3411e6f3;//csrrsi 4
        #50;
        inst = 32'h3410f773;//csrrci 5
        #50;

    end


endmodule
