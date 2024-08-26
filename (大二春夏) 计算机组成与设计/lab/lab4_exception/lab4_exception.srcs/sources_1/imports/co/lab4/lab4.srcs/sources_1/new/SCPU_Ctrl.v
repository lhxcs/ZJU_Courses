`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 13:28:40
// Design Name: 
// Module Name: SCPU_Ctrl
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


module SCPU_Ctrl(
    input [31:0] inst,
    output [2:0] ImmSel,
    output ALUSrc,
    output [1:0] MemtoReg,
    output RegWrite,
    output MemRead,
    output MemWrite,
    output Branch,
    output Jump,
    output [3:0] ALU_Ctrl,
    output [2:0] Compare_Ctrl,

    output [2:0] CSR_ctrl,
    output CSR,
    output is_illegal
    );
    `include "Defines.vh"
    `define CSRRW 3'b000
    `define CSRRS 3'b001
    `define CSRRC 3'b010
    `define CSRRWI 3'b011
    `define CSRRSI 3'b100
    `define CSRRCI 3'b101
    wire [1:0] ALUOp; 
    //`define CPU_ctrl_signals {ALUSrc, MemtoReg, RegWrite, MemRW, Branch, Jump, ALUOp}
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;
    wire [3:0] Func;

    assign opcode = inst[6:0];
    assign funct3 = inst[14:12];
    assign funct7 = inst[31:25];
    assign Func = {funct3, funct7[5]};

    

    reg [2:0] ImmSel_reg;
    reg ALUSrc_reg;
    reg [1:0] MemtoReg_reg;
    reg RegWrite_reg;
    reg MemRead_reg;
    reg MemWrite_reg;
    reg Branch_reg;
    reg Jump_reg;
    reg [1:0] ALUop_reg;
    reg [2:0] Compare_Ctrl_reg;
    reg [3:0] ALU_Ctrl_reg;
    reg illegal;

    `define CPU_ctrl_signals {ALUSrc_reg, MemtoReg_reg, RegWrite_reg, MemRead_reg, MemWrite_reg, Branch_reg, Jump_reg, ALUop_reg}

    //CSR
    reg CSR_reg; //是否是 CSR 指令
    reg [2:0] CSR_op;

    //ALUop: 00->add, 01->sub, 10->ALU, 11->ALU_imm
    //ALUSrc: 0->rs2, 1->imm
    //MemtoReg: 00->ALU, 01->mem, 10->pc+4, 11->lui,auipc

    always @(*) begin
        case(opcode[6:2])
            5'b01100: begin //R-type
                ImmSel_reg = 3'b000;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b00, 1'b1, 1'b0,1'b0, 1'b0, 1'b0, 2'b10};
            end 
            5'b00000: begin //I-type(load)
                ImmSel_reg = 3'b000;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b1, 2'b01, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 2'b00};
            end
            5'b01000: begin //S-type
                ImmSel_reg = 3'b001;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b1, 2'b00, 1'b0, 1'b0,1'b1, 1'b0, 1'b0, 2'b00};
            end
            5'b11000: begin //SB-type
                ImmSel_reg = 3'b010;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b00, 1'b0, 1'b0, 1'b0,1'b1, 1'b0, 2'b01};
            end
            5'b11011: begin //UJ-type
                ImmSel_reg = 3'b011;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b10, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 2'b00};
            end
            5'b00100: begin //I-type(ALU_imm)
                ImmSel_reg = 3'b000;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b1, 2'b00, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 2'b11};
            end
            5'b11001: begin //I-type(JALR) pay attention to!
                ImmSel_reg = 3'b000;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b1, 2'b10, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 2'b00};
            end
            5'b01101: begin //U-type (lui), MemtoReg?
                ImmSel_reg = 3'b100;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00};
            end
            5'b00101: begin //U-type (auipc)
                ImmSel_reg = 3'b100;
                illegal = 1'b0;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b11, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00};
            end
            //CSR
            5'b11100: begin //CSR指令
                ImmSel_reg = 3'b000;
                illegal = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b00, 1'b1, 1'b0, 1'b0,1'b0, 1'b0, 2'b00};
                //CSR_imm_reg = inst[14];// 是否是 Imm 操作
                CSR_reg = (inst == 32'h73 || inst == 32'h30200073) ? 0 : 1;;
                case(funct3)
                    3'b001: begin //CSRRW
                        CSR_op = `CSRRW;
                    end
                    3'b010: begin //CSRRS
                        CSR_op = `CSRRS;
                    end
                    3'b011: begin //CSRRC
                        CSR_op = `CSRRC;
                    end
                    3'b101: begin //CSRRWI
                        CSR_op = `CSRRWI;
                    end
                    3'b110: begin //CSRRSI
                        CSR_op = `CSRRSI;
                    end
                    3'b111: begin //CSRRCI
                        CSR_op = `CSRRCI;
                    end
                endcase
            end
            default: begin
                ImmSel_reg = 3'b000;
                illegal = 1'b1;
                CSR_op = 3'b000;
                CSR_reg = 1'b0;
                `CPU_ctrl_signals = {1'b0, 2'b00, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00};
            end
        endcase

        case(ALUop_reg)
            2'b00: ALU_Ctrl_reg = `ALU_ADD;
            2'b01: ALU_Ctrl_reg = `ALU_SUB;
            2'b10: begin
                case(Func)
                    4'b0000: ALU_Ctrl_reg = `ALU_ADD;
                    4'b0001: ALU_Ctrl_reg = `ALU_SUB;
                    4'b0010: ALU_Ctrl_reg = `ALU_SLL;
                    4'b0100: ALU_Ctrl_reg = `ALU_SLT;
                    4'b0110: ALU_Ctrl_reg = `ALU_SLTU;
                    4'b1000: ALU_Ctrl_reg = `ALU_XOR;
                    4'b1010: ALU_Ctrl_reg = `ALU_SRL;
                    4'b1011: ALU_Ctrl_reg = `ALU_SRA;
                    4'b1100: ALU_Ctrl_reg = `ALU_OR;
                    4'b1110: ALU_Ctrl_reg = `ALU_AND;
                    default: ALU_Ctrl_reg = `ALU_ADD;
                endcase
            end
            2'b11: begin
                case(funct3)
                    3'b000: ALU_Ctrl_reg = `ALU_ADD;
                    3'b001: ALU_Ctrl_reg = `ALU_SLL;
                    3'b010: ALU_Ctrl_reg = `ALU_SLT;
                    3'b011: ALU_Ctrl_reg = `ALU_SLTU;
                    3'b100: ALU_Ctrl_reg = `ALU_XOR;
                    3'b101: ALU_Ctrl_reg = (funct7[5])? `ALU_SRA : `ALU_SRL;
                    3'b110: ALU_Ctrl_reg = `ALU_OR;
                    3'b111: ALU_Ctrl_reg = `ALU_AND;
                    default: ALU_Ctrl_reg = `ALU_ADD;
                endcase
            end
        endcase
        case(Branch_reg)
            1'b1: begin
                case(funct3)
                    3'b000: Compare_Ctrl_reg = `CMP_EQ;
                    3'b001: Compare_Ctrl_reg = `CMP_NE;
                    3'b100: Compare_Ctrl_reg = `CMP_LT;
                    3'b110: Compare_Ctrl_reg = `CMP_LTU;
                    3'b101: Compare_Ctrl_reg = `CMP_GE;
                    3'b111: Compare_Ctrl_reg = `CMP_GEU;
                    default: Compare_Ctrl_reg = `CMP_EQ;
                endcase
            end
            default: Compare_Ctrl_reg = `CMP_EQ;
        endcase
    end

    assign ImmSel = ImmSel_reg;
    assign ALUSrc = ALUSrc_reg;
    assign MemtoReg = MemtoReg_reg;
    assign RegWrite = RegWrite_reg;
    assign MemRead = MemRead_reg;
    assign MemWrite = MemWrite_reg;
    assign Branch = Branch_reg;
    assign Jump = Jump_reg;
    assign ALU_Ctrl = ALU_Ctrl_reg;
    assign Compare_Ctrl = Compare_Ctrl_reg;

    assign CSR = CSR_reg;
    assign CSR_ctrl = CSR_op;
    assign is_illegal = illegal;

endmodule
