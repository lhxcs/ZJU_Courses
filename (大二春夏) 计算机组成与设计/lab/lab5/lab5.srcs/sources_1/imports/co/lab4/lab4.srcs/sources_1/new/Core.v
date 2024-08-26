`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/25 10:53:30
// Design Name: 
// Module Name: Core
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

module Core(
       `Core_DBG_Definitions
        input clk,
        input rst,
        output [31:0] imem_addr, 
        input [31:0] imem_o_data,
        output [31:0] dmem_addr,
        input [31:0] dmem_o_data,
        output [31:0] dmem_i_data,
        output dmem_wen,
        input sw
    );

    
    reg [31:0] pc;
    wire [31:0] next_PC;
    wire [31:0] inst;

    //PC
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            pc <= 32'b0;
        end
        else begin
            if(~stall)
            pc <= next_PC;
        end
    end

    //IF/ID pipeline register
    reg [31:0] IF_ID_inst;
    reg [31:0] IF_ID_pc;
    reg IF_ID_valid;

    assign inst = imem_o_data;
    assign imem_addr = pc;

    //IF/ID
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            IF_ID_inst <= 32'h00000013; // nop
            IF_ID_pc <= 32'b0;
            IF_ID_valid <= 1'b0;
        end
        else if(control_hazard) begin
            IF_ID_inst <= 32'h00000013; // nop
            IF_ID_pc <= pc;
            IF_ID_valid <= 1'b0;
        end
        else begin
            if(~stall) begin
                IF_ID_inst <= inst;
                IF_ID_pc <= pc;
                IF_ID_valid <= 1'b1;
            end
        end
    end

    //ID/EX pipeline register
    reg [31:0] ID_EX_inst;
    reg [31:0] ID_EX_pc;
    reg ID_EX_valid;
    reg [4:0] ID_EX_rd;
    reg [4:0] ID_EX_rs1;
    reg [4:0] ID_EX_rs2;
    reg [31:0] ID_EX_rs1_val;
    reg [31:0] ID_EX_rs2_val;
    reg [31:0] ID_EX_imm;
    reg ID_EX_RegWrite;
    reg ID_EX_MemRead;
    reg ID_EX_MemWrite;
    reg [3:0] ID_EX_ALU_Ctrl;
    reg [2:0] ID_EX_Compare_Ctrl;
    reg [1:0] ID_EX_MemtoReg;
    reg ID_EX_Branch;
    reg ID_EX_Jump;
    reg ID_EX_ALUSrc;
    reg ID_EX_auipc;
    reg ID_EX_lui;

    wire [2:0] ImmSel;
    wire ALUSrc;
    wire [1:0] MemtoReg;
    wire RegWrite;
    wire MemRead;
    wire MemWrite;
    wire Branch;
    wire Jump;
    wire [3:0] ALU_Ctrl;
    wire [2:0] Compare_Ctrl;
    wire is_auipc;
    wire is_lui;

    `Core_DBG_Assignment
    //Generaet ctrl signal
    SCPU_Ctrl Ctrl(
        .inst(IF_ID_inst),
        .ImmSel(ImmSel),
        .ALUSrc(ALUSrc),
        .MemtoReg(MemtoReg),
        .RegWrite(RegWrite),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .Jump(Jump),
        .ALU_Ctrl(ALU_Ctrl),
        .Compare_Ctrl(Compare_Ctrl),
        .lui(is_lui),
        .auipc(is_auipc)
    );

    wire [4:0] rs1;
    wire [4:0] rs2;
    wire [4:0] rd;

    assign rs1 = IF_ID_inst[19:15];
    assign rs2 = IF_ID_inst[24:20];

    wire [31:0] rs1_val;
    wire [31:0] rs2_val;
    wire [31:0] rd_val;

    //Register file
    RegFile RegFile(
        `RegFile_DBG_Arguments
        .clk(clk),
        .rst(rst),
        .wen(wb_RegWrite),
        .rs1(rs1),
        .rs2(rs2),
        .rd(wb_rd),
        .i_data(rd_val),
        .rs1_val(rs1_val),
        .rs2_val(rs2_val)
    );

    //ImmGen
    wire [31:0] Imm;
    ImmGen ImmGen(
        .inst(IF_ID_inst),
        .ImmSel(ImmSel),
        .Imm(Imm)
    );

    //ID/EX
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            ID_EX_inst <= 32'h00000013; // nop
            ID_EX_pc <= 32'b0;
            ID_EX_valid <= 1'b0;
            ID_EX_rd <= 5'b0;
            ID_EX_rs1 <= 5'b0;
            ID_EX_rs2 <= 5'b0;
            ID_EX_rs1_val <= 32'b0;
            ID_EX_rs2_val <= 32'b0;
            ID_EX_imm <= 32'b0;
            ID_EX_RegWrite <= 1'b0;
            ID_EX_MemRead <= 1'b0;
            ID_EX_MemWrite <= 1'b0;
            ID_EX_ALU_Ctrl <= 4'b0;
            ID_EX_Compare_Ctrl <= 3'b0;
            ID_EX_Branch <= 1'b0;
            ID_EX_Jump <= 1'b0;
            ID_EX_ALUSrc <= 1'b0;
            ID_EX_MemtoReg <= 2'b00;
            ID_EX_auipc <= 1'b0;
            ID_EX_lui <= 1'b0;
        end
        else begin
            if(stall) begin
                ID_EX_valid <= 1'b0;
                ID_EX_rd <= 5'b0;
                ID_EX_rs1 <= 5'b0;
                ID_EX_rs2 <= 5'b0;
                ID_EX_rs1_val <= 32'b0;
                ID_EX_rs2_val <= 32'b0;
                ID_EX_imm <= 32'b0;
                ID_EX_RegWrite <= 1'b0;
                ID_EX_MemRead <= 1'b0;
                ID_EX_MemWrite <= 1'b0;
                ID_EX_ALU_Ctrl <= 4'b0;
                ID_EX_Compare_Ctrl <= 3'b0;
                ID_EX_Branch <= 1'b0;
                ID_EX_Jump <= 1'b0;
                ID_EX_ALUSrc <= 1'b0;
                ID_EX_MemtoReg <= 2'b00;
                ID_EX_auipc <= 1'b0;
                ID_EX_lui <= 1'b0;
            end
            else if(control_hazard) begin
                ID_EX_inst <= 32'h00000013; // nop
                ID_EX_pc <= IF_ID_pc;
                ID_EX_valid <= 1'b0;
                ID_EX_rd <= 5'b0;
                ID_EX_rs1 <= 5'b0;
                ID_EX_rs2 <= 5'b0;
                ID_EX_rs1_val <= 32'b0;
                ID_EX_rs2_val <= 32'b0;
                ID_EX_imm <= 32'b0;
                ID_EX_RegWrite <= 1'b0;
                ID_EX_MemRead <= 1'b0;
                ID_EX_MemWrite <= 1'b0;
                ID_EX_ALU_Ctrl <= 4'b0;
                ID_EX_Compare_Ctrl <= 3'b0;
                ID_EX_Branch <= 1'b0;
                ID_EX_Jump <= 1'b0;
                ID_EX_ALUSrc <= 1'b0;
                ID_EX_MemtoReg <= 2'b00;
                ID_EX_auipc <= 1'b0;
                ID_EX_lui <= 1'b0;
            end
            else begin
                ID_EX_inst <= IF_ID_inst;
                ID_EX_pc <= IF_ID_pc;
                ID_EX_valid <= IF_ID_valid;
                ID_EX_rd <= IF_ID_inst[11:7];
                ID_EX_rs1 <= IF_ID_inst[19:15];
                ID_EX_rs2 <= IF_ID_inst[24:20];
                ID_EX_rs1_val <= rs1_val;
                ID_EX_rs2_val <= rs2_val;
                ID_EX_imm <= Imm;
                ID_EX_RegWrite <= RegWrite;
                ID_EX_MemRead <= MemRead;
                ID_EX_MemWrite <= MemWrite;
                ID_EX_ALU_Ctrl <= ALU_Ctrl;
                ID_EX_Compare_Ctrl <= Compare_Ctrl;
                ID_EX_Branch <= Branch;
                ID_EX_Jump <= Jump;
                ID_EX_ALUSrc <= ALUSrc;
                ID_EX_MemtoReg <= MemtoReg;
                ID_EX_auipc <= is_auipc;
                ID_EX_lui <= is_lui;
            end
        end
    end

    wire stall_pre;
    wire stall;
    Hazard_Detection Hazard_Detection(
        .ID_EX_MemRead(ID_EX_MemRead),
        .IF_ID_MemWrite(MemWrite),
        .ID_EX_rd(ID_EX_rd),
        .IF_ID_rs1(IF_ID_inst[19:15]),
        .IF_ID_rs2(IF_ID_inst[24:20]),
        .stall(stall)
    );

    //EX/MEM pipeline register
    reg [31:0] EX_MEM_inst;
    reg [31:0] EX_MEM_pc;
    reg EX_MEM_valid;
    reg [4:0] EX_MEM_rd;
    reg [31:0] EX_MEM_alu_res;
    reg [31:0] EX_MEM_rs2_val;
    reg [31:0] EX_MEM_Imm;
    reg EX_MEM_MemRead;
    reg EX_MEM_MemWrite;
    reg EX_MEM_RegWrite;
    reg EX_MEM_branchtaken;
    reg EX_MEM_branch;
    reg EX_MEM_jump;
    reg EX_MEM_ALU_src;
    reg [1:0] EX_MEM_MemtoReg;

    wire [1:0] ForwardA;
    wire [1:0] ForwardB;
    wire [1:0] ForwardC;

    Forwarding_Ctrl m0(
        .ID_EX_rs1(ID_EX_rs1),
        .ID_EX_rs2(ID_EX_rs2),
        .EX_MEM_rd(EX_MEM_rd),
        .wb_rd(wb_rd),
        .EX_MEM_RegWrite(EX_MEM_RegWrite),
        .wb_RegWrite(wb_RegWrite),
        .ALUsrc(ID_EX_ALUSrc),
        .auipc_lui(ID_EX_auipc || ID_EX_lui),
        .ForwardA(ForwardA),
        .ForwardB(ForwardB),
        .ForwardC(ForwardC)
    );

    wire [31:0] ALU_src1;
    wire [31:0] ALU_src2;
    assign ALU_src1 = (ForwardA == 2'b01) ? EX_MEM_alu_res :
                        (ForwardA == 2'b10) ? rd_val :
                        (ForwardA == 2'b11) ? (
                            (ID_EX_auipc) ? ID_EX_pc : 32'b0
                        ) : ID_EX_rs1_val;
    assign ALU_src2 = (ForwardB == 2'b01) ? EX_MEM_alu_res :
                        (ForwardB == 2'b10) ? rd_val :
                        (ForwardB == 2'b11) ? ID_EX_imm :
                        ID_EX_rs2_val;

    wire [31:0] ex_mem_val;
    assign ex_mem_val = (ForwardB != 2'b00 && EX_MEM_MemRead && ID_EX_MemWrite) ? dmem_o_data :
                        (ForwardC == 2'b01) ? EX_MEM_alu_res :
                        (ForwardC == 2'b10) ? rd_val :
                        ID_EX_rs2_val;
    wire [31:0] ALU_res;

    //ALU
    Alu ALU(
        .a_val(ALU_src1),
        .b_val(ALU_src2),
        .ctrl(ID_EX_ALU_Ctrl),
        .result(ALU_res)
    );

    
    //Branch
    wire branch_taken;
    Comparator Comparator(
        .a_val(ALU_src1),
        .b_val(ALU_src2),
        .ctrl(ID_EX_Compare_Ctrl),
        .result(branch_taken)
    );

    wire control_hazard;
    assign control_hazard = ID_EX_Jump || (ID_EX_Branch && branch_taken);


    //EX/MEM
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            EX_MEM_inst <= 32'h00000013; // nop
            EX_MEM_pc <= 32'b0;
            EX_MEM_valid <= 1'b0;
            EX_MEM_rd <= 5'b0;
            EX_MEM_alu_res <= 32'b0;
            EX_MEM_rs2_val <= 32'b0;
            EX_MEM_MemRead <= 1'b0;
            EX_MEM_MemWrite <= 1'b0;
            EX_MEM_RegWrite <= 1'b0;
            EX_MEM_branchtaken <= 1'b0;
            EX_MEM_branch <= 1'b0;
            EX_MEM_jump <= 1'b0;
            EX_MEM_Imm <= 32'b0;
            EX_MEM_ALU_src <= 1'b0;
            EX_MEM_MemtoReg <= 2'b00;
        end
        else begin
            EX_MEM_inst <= ID_EX_inst;
            EX_MEM_pc <= ID_EX_pc;
            EX_MEM_valid <= ID_EX_valid;
            EX_MEM_rd <= ID_EX_rd;
            EX_MEM_alu_res <= ALU_res;
            EX_MEM_rs2_val <= ex_mem_val; // 将要写进数据内存的数据值
            EX_MEM_MemRead <= ID_EX_MemRead;
            EX_MEM_MemWrite <= ID_EX_MemWrite;
            EX_MEM_RegWrite <= ID_EX_RegWrite;
            EX_MEM_branchtaken <= branch_taken;
            EX_MEM_branch <= ID_EX_Branch;
            EX_MEM_jump <= ID_EX_Jump;
            EX_MEM_Imm <= ID_EX_imm;
            EX_MEM_ALU_src <= ID_EX_ALUSrc;
            EX_MEM_MemtoReg <= ID_EX_MemtoReg;
        end
    end

      //MEM/WB pipeline register
    reg [31:0] wb_inst;
    reg [31:0] wb_pc;
    reg wb_valid;
    reg [4:0] wb_rd;
    reg [31:0] wb_data;
    reg wb_RegWrite;
    reg [1:0] wb_MemtoReg;
    reg [31:0] wb_ALU_res, wb_Imm;

    //MEM/WB
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            wb_inst <= 32'h00000013; // nop
            wb_pc <= 32'b0;
            wb_valid <= 1'b0;
            wb_rd <= 5'b0;
            wb_data <= 32'b0;
            wb_RegWrite <= 1'b0;
            wb_MemtoReg <= 2'b00;
            wb_ALU_res <= 32'b0;
            wb_Imm <= 32'b0;
        end
        else begin
            wb_inst <= EX_MEM_inst;
            wb_pc <= EX_MEM_pc;
            wb_valid <= EX_MEM_valid;
            wb_rd <= EX_MEM_rd;
            wb_data <= dmem_o_data;
            wb_RegWrite <= EX_MEM_RegWrite;
            wb_MemtoReg <= EX_MEM_MemtoReg;
            wb_ALU_res <= EX_MEM_alu_res;
            wb_Imm <= EX_MEM_Imm;
        end
    end


    assign dmem_wen = EX_MEM_MemWrite;
    assign dmem_addr = EX_MEM_alu_res;
    assign dmem_i_data = EX_MEM_rs2_val; // 写进内存的数据值

    assign rd_val = (wb_MemtoReg == 2'b00) ? wb_ALU_res :
                    (wb_MemtoReg == 2'b01) ? wb_data :
                    (wb_MemtoReg == 2'b10) ? wb_pc + 4 :
                    (wb_MemtoReg == 2'b11) ? wb_ALU_res:
                    32'b0;


    wire [31:0] jal_addr;
    wire [31:0] jalr_addr;
    assign jalr_addr = ALU_res;
    assign jal_addr = ID_EX_pc + ID_EX_imm;
    
    assign next_PC = (ID_EX_Branch && branch_taken) ? ID_EX_pc + ID_EX_imm :
                    (ID_EX_Jump) ? ((ID_EX_ALUSrc) ? jalr_addr : jal_addr ) :// jalr or jal
                    pc + 4;
    
endmodule
