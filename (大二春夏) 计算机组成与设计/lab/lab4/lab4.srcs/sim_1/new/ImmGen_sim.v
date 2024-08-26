`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/13 15:50:00
// Design Name: 
// Module Name: ImmGen_sim
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


module ImmGen_sim(

    );

    reg [31:0] inst;
    reg [2:0] ImmSel;
    wire [31:0] Imm;

    ImmGen m0(
        .ImmSel(ImmSel),
        .inst(inst),
        .Imm(Imm)
    );

    initial begin
        inst = 32'b0;
        //I-format
        ImmSel = 3'b0;
        #50;
        inst = 32'h00952593; // addi a0, zero, 9
        ImmSel = 3'b0;
        #50;
        inst = 32'h00700513; //slti a1, a0, 7
        #50;

        //S-format
        inst = 32'h00C0A523; //sw x12, 10(x1)
        ImmSel = 3'b1;
        #50;

        //SB-format
        inst = 32'hFE108AE3; // beq x1, x1, -12
        ImmSel = 3'd2;
        #50;
        inst = 32'h00211463; // bne x2, x2, 8
        #50;

        //UJ-format
        inst = 32'hF9DFF06F; //jal x0, -100
        ImmSel = 3'd3;
        #50;

        //U-format
        inst = 32'hFE000DB7;
        ImmSel = 3'd4;
        #50;
    end
endmodule
