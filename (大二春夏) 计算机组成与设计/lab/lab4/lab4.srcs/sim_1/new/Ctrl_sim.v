`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/13 17:27:22
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
        .Compare_Ctrl(Compare_Ctrl)
    );

    initial begin
        //R-type
        inst = 32'h001100B3; // add x1, x2, x1
        #50;
        inst = 32'h400080b3; //sub x1, x1, x0
        #50;


        //I-type
        inst = 32'h3e810093; //addi x1,x2, 10
        #50;
        inst = 32'h00116093; //ori x1,x2,1
        #50;
        inst = 32'hfff12093;// slti x1, x2, -1
        #50;

        //load
        inst = 32'h00812083; // lw x1, 8(x2)
        #50;
        //store
        inst = 32'h00c0a823; //sw x12, 16(x1)
        #50;

        //branch
        inst = 32'hfe108ae3; //beq x1, x1, -12
        #50;

        //jump
        inst = 32'hf9dff06f; // jal x0, -100
        #50;
    end
endmodule
