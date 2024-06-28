`define ALU_ADD  4'd0
`define ALU_SUB  4'd1
`define ALU_SLL  4'd2
`define ALU_SLT  4'd3
`define ALU_SLTU 4'd4
`define ALU_XOR  4'd5
`define ALU_SRL  4'd6
`define ALU_SRA  4'd7
`define ALU_OR   4'd8
`define ALU_AND  4'd9


`define CMP_EQ  3'd0
`define CMP_NE  3'd1
`define CMP_LT  3'd2
`define CMP_LTU 3'd3
`define CMP_GE  3'd4
`define CMP_GEU 3'd5

`define RegFile_DBG_Definitions \
    output wire [31:0] dbg_regs0, \
    output wire [31:0] dbg_regs1, \
    output wire [31:0] dbg_regs2, \
    output wire [31:0] dbg_regs3, \
    output wire [31:0] dbg_regs4, \
    output wire [31:0] dbg_regs5, \
    output wire [31:0] dbg_regs6, \
    output wire [31:0] dbg_regs7, \
    output wire [31:0] dbg_regs8, \
    output wire [31:0] dbg_regs9, \
    output wire [31:0] dbg_regs10, \
    output wire [31:0] dbg_regs11, \
    output wire [31:0] dbg_regs12, \
    output wire [31:0] dbg_regs13, \
    output wire [31:0] dbg_regs14, \
    output wire [31:0] dbg_regs15, \
    output wire [31:0] dbg_regs16, \
    output wire [31:0] dbg_regs17, \
    output wire [31:0] dbg_regs18, \
    output wire [31:0] dbg_regs19, \
    output wire [31:0] dbg_regs20, \
    output wire [31:0] dbg_regs21, \
    output wire [31:0] dbg_regs22, \
    output wire [31:0] dbg_regs23, \
    output wire [31:0] dbg_regs24, \
    output wire [31:0] dbg_regs25, \
    output wire [31:0] dbg_regs26, \
    output wire [31:0] dbg_regs27, \
    output wire [31:0] dbg_regs28, \
    output wire [31:0] dbg_regs29, \
    output wire [31:0] dbg_regs30, \
    output wire [31:0] dbg_regs31, 

`define RegFile_DBG_Assignment \
    assign dbg_regs0 = regs[0]; \
    assign dbg_regs1 = regs[1]; \
    assign dbg_regs2 = regs[2]; \
    assign dbg_regs3 = regs[3]; \
    assign dbg_regs4 = regs[4]; \
    assign dbg_regs5 = regs[5]; \
    assign dbg_regs6 = regs[6]; \
    assign dbg_regs7 = regs[7]; \
    assign dbg_regs8 = regs[8]; \
    assign dbg_regs9 = regs[9]; \
    assign dbg_regs10 = regs[10]; \
    assign dbg_regs11 = regs[11]; \
    assign dbg_regs12 = regs[12]; \
    assign dbg_regs13 = regs[13]; \
    assign dbg_regs14 = regs[14]; \
    assign dbg_regs15 = regs[15]; \
    assign dbg_regs16 = regs[16]; \
    assign dbg_regs17 = regs[17]; \
    assign dbg_regs18 = regs[18]; \
    assign dbg_regs19 = regs[19]; \
    assign dbg_regs20 = regs[20]; \
    assign dbg_regs21 = regs[21]; \
    assign dbg_regs22 = regs[22]; \
    assign dbg_regs23 = regs[23]; \
    assign dbg_regs24 = regs[24]; \
    assign dbg_regs25 = regs[25]; \
    assign dbg_regs26 = regs[26]; \
    assign dbg_regs27 = regs[27]; \
    assign dbg_regs28 = regs[28]; \
    assign dbg_regs29 = regs[29]; \
    assign dbg_regs30 = regs[30]; \
    assign dbg_regs31 = regs[31]; 

`define RegFile_DBG_Arguments \
    .dbg_regs0(dbg_regs0), \
    .dbg_regs1(dbg_regs1), \
    .dbg_regs2(dbg_regs2), \
    .dbg_regs3(dbg_regs3), \
    .dbg_regs4(dbg_regs4), \
    .dbg_regs5(dbg_regs5), \
    .dbg_regs6(dbg_regs6), \
    .dbg_regs7(dbg_regs7), \
    .dbg_regs8(dbg_regs8), \
    .dbg_regs9(dbg_regs9), \
    .dbg_regs10(dbg_regs10), \
    .dbg_regs11(dbg_regs11), \
    .dbg_regs12(dbg_regs12), \
    .dbg_regs13(dbg_regs13), \
    .dbg_regs14(dbg_regs14), \
    .dbg_regs15(dbg_regs15), \
    .dbg_regs16(dbg_regs16), \
    .dbg_regs17(dbg_regs17), \
    .dbg_regs18(dbg_regs18), \
    .dbg_regs19(dbg_regs19), \
    .dbg_regs20(dbg_regs20), \
    .dbg_regs21(dbg_regs21), \
    .dbg_regs22(dbg_regs22), \
    .dbg_regs23(dbg_regs23), \
    .dbg_regs24(dbg_regs24), \
    .dbg_regs25(dbg_regs25), \
    .dbg_regs26(dbg_regs26), \
    .dbg_regs27(dbg_regs27), \
    .dbg_regs28(dbg_regs28), \
    .dbg_regs29(dbg_regs29), \
    .dbg_regs30(dbg_regs30), \
    .dbg_regs31(dbg_regs31), 

`define RegFile_DBG_Declaration \
    wire [31:0] dbg_regs [31:0];

`define Core_DBG_Definitions \
    output wire [31:0] dbg_pc, \
    output wire [31:0] dbg_inst, \
    output wire [31:0] dbg_regs0, \
    output wire [31:0] dbg_regs1, \
    output wire [31:0] dbg_regs2, \
    output wire [31:0] dbg_regs3, \
    output wire [31:0] dbg_regs4, \
    output wire [31:0] dbg_regs5, \
    output wire [31:0] dbg_regs6, \
    output wire [31:0] dbg_regs7, \
    output wire [31:0] dbg_regs8, \
    output wire [31:0] dbg_regs9, \
    output wire [31:0] dbg_regs10, \
    output wire [31:0] dbg_regs11, \
    output wire [31:0] dbg_regs12, \
    output wire [31:0] dbg_regs13, \
    output wire [31:0] dbg_regs14, \
    output wire [31:0] dbg_regs15, \
    output wire [31:0] dbg_regs16, \
    output wire [31:0] dbg_regs17, \
    output wire [31:0] dbg_regs18, \
    output wire [31:0] dbg_regs19, \
    output wire [31:0] dbg_regs20, \
    output wire [31:0] dbg_regs21, \
    output wire [31:0] dbg_regs22, \
    output wire [31:0] dbg_regs23, \
    output wire [31:0] dbg_regs24, \
    output wire [31:0] dbg_regs25, \
    output wire [31:0] dbg_regs26, \
    output wire [31:0] dbg_regs27, \
    output wire [31:0] dbg_regs28, \
    output wire [31:0] dbg_regs29, \
    output wire [31:0] dbg_regs30, \
    output wire [31:0] dbg_regs31, 

`define Core_DBG_Assignment \
    assign dbg_pc = pc; \
    assign dbg_inst = inst; 

`define Core_DBG_Arguments \
    .dbg_pc(dbg_pc), \
    .dbg_inst(dbg_inst), \
    .dbg_regs0(dbg_regs[0]), \
    .dbg_regs1(dbg_regs[1]), \
    .dbg_regs2(dbg_regs[2]), \
    .dbg_regs3(dbg_regs[3]), \
    .dbg_regs4(dbg_regs[4]), \
    .dbg_regs5(dbg_regs[5]), \
    .dbg_regs6(dbg_regs[6]), \
    .dbg_regs7(dbg_regs[7]), \
    .dbg_regs8(dbg_regs[8]), \
    .dbg_regs9(dbg_regs[9]), \
    .dbg_regs10(dbg_regs[10]), \
    .dbg_regs11(dbg_regs[11]), \
    .dbg_regs12(dbg_regs[12]), \
    .dbg_regs13(dbg_regs[13]), \
    .dbg_regs14(dbg_regs[14]), \
    .dbg_regs15(dbg_regs[15]), \
    .dbg_regs16(dbg_regs[16]), \
    .dbg_regs17(dbg_regs[17]), \
    .dbg_regs18(dbg_regs[18]), \
    .dbg_regs19(dbg_regs[19]), \
    .dbg_regs20(dbg_regs[20]), \
    .dbg_regs21(dbg_regs[21]), \
    .dbg_regs22(dbg_regs[22]), \
    .dbg_regs23(dbg_regs[23]), \
    .dbg_regs24(dbg_regs[24]), \
    .dbg_regs25(dbg_regs[25]), \
    .dbg_regs26(dbg_regs[26]), \
    .dbg_regs27(dbg_regs[27]), \
    .dbg_regs28(dbg_regs[28]), \
    .dbg_regs29(dbg_regs[29]), \
    .dbg_regs30(dbg_regs[30]), \
    .dbg_regs31(dbg_regs[31]), 

`define Core_DBG_Declarations \
    wire [31:0] dbg_pc; \
    wire [31:0] dbg_inst;

`define RV32core_DBG_Assignments \
    assign pc = dbg_pc; \
    assign inst = dbg_inst; \
    assign debug_data = dbg_regs[debug_addr[4:0]]; \
    assign mem_addr = dmem_addr; \
    assign mem_data = (dmem_wen)? dmem_i_data: dmem_o_data;

`define Core_Other_DBG_Arguments \
    .dbg_pc(dbg_pc), \
    .dbg_inst(dbg_inst), \
 


// `define VGA_DBG_Core_Arguments \
//     .dbg_pc(dbg_pc), \
//     .dbg_inst(dbg_inst), \
//     .dbg_rs1(dbg_rs1), \
//     .dbg_rs1_val(dbg_rs1_val), \
//     .dbg_rs2(dbg_rs2), \
//     .dbg_rs2_val(dbg_rs2_val), \
//     .dbg_rd(dbg_rd), \
//     .dbg_reg_i_data(dbg_reg_i_data), \
//     .dbg_reg_wen(dbg_reg_wen), \
//     .dbg_is_imm(dbg_is_imm), \
//     .dbg_is_auipc(dbg_is_auipc), \
//     .dbg_is_lui(dbg_is_lui), \
//     .dbg_imm(dbg_imm), \
//     .dbg_a_val(dbg_a_val), \
//     .dbg_b_val(dbg_b_val), \
//     .dbg_alu_ctrl(dbg_alu_ctrl), \
//     .dbg_cmp_ctrl(dbg_cmp_ctrl), \
//     .dbg_alu_res(dbg_alu_res), \
//     .dbg_cmp_res(dbg_cmp_res), \
//     .dbg_is_branch(dbg_is_branch), \
//     .dbg_is_jal(dbg_is_jal), \
//     .dbg_is_jalr(dbg_is_jalr), \
//     .dbg_do_branch(dbg_do_branch), \
//     .dbg_pc_branch(dbg_pc_branch), \
//     .dbg_mem_wen(dbg_mem_wen), \
//     .dbg_mem_ren(dbg_mem_ren), \
//     .dbg_dmem_o_data(dbg_dmem_o_data), \
//     .dbg_dmem_i_data(dbg_dmem_i_data), \
//     .dbg_dmem_addr(dbg_dmem_addr), \
//     .dbg_x0(dbg_x0), \
//     .dbg_ra(dbg_ra), \
//     .dbg_sp(dbg_sp), \
//     .dbg_gp(dbg_gp), \
//     .dbg_tp(dbg_tp), \
//     .dbg_t0(dbg_t0), \
//     .dbg_t1(dbg_t1), \
//     .dbg_t2(dbg_t2), \
//     .dbg_s0(dbg_s0), \
//     .dbg_s1(dbg_s1), \
//     .dbg_a0(dbg_a0), \
//     .dbg_a1(dbg_a1), \
//     .dbg_a2(dbg_a2), \
//     .dbg_a3(dbg_a3), \
//     .dbg_a4(dbg_a4), \
//     .dbg_a5(dbg_a5), \
//     .dbg_a6(dbg_a6), \
//     .dbg_a7(dbg_a7), \
//     .dbg_s2(dbg_s2), \
//     .dbg_s3(dbg_s3), \
//     .dbg_s4(dbg_s4), \
//     .dbg_s5(dbg_s5), \
//     .dbg_s6(dbg_s6), \
//     .dbg_s7(dbg_s7), \
//     .dbg_s8(dbg_s8), \
//     .dbg_s9(dbg_s9), \
//     .dbg_s10(dbg_s10), \
//     .dbg_s11(dbg_s11), \
//     .dbg_t3(dbg_t3), \
//     .dbg_t4(dbg_t4), \
//     .dbg_t5(dbg_t5), \
//     .dbg_t6(dbg_t6),


// `define VGA_DBG_VgaDebugger_Arguments \
//     .pc(dbg_pc), \
//     .inst(dbg_inst), \
//     .rs1(dbg_rs1), \
//     .rs1_val(dbg_rs1_val), \
//     .rs2(dbg_rs2), \
//     .rs2_val(dbg_rs2_val), \
//     .rd(dbg_rd), \
//     .reg_i_data(dbg_reg_i_data), \
//     .reg_wen(dbg_reg_wen), \
//     .is_imm(dbg_is_imm), \
//     .is_auipc(dbg_is_auipc), \
//     .is_lui(dbg_is_lui), \
//     .imm(dbg_imm), \
//     .a_val(dbg_a_val), \
//     .b_val(dbg_b_val), \
//     .alu_ctrl(dbg_alu_ctrl), \
//     .cmp_ctrl(dbg_cmp_ctrl), \
//     .alu_res(dbg_alu_res), \
//     .cmp_res(dbg_cmp_res), \
//     .is_branch(dbg_is_branch), \
//     .is_jal(dbg_is_jal), \
//     .is_jalr(dbg_is_jalr), \
//     .do_branch(dbg_do_branch), \
//     .pc_branch(dbg_pc_branch), \
//     .mem_wen(dbg_mem_wen), \
//     .mem_ren(dbg_mem_ren), \
//     .dmem_o_data(dbg_dmem_o_data), \
//     .dmem_i_data(dbg_dmem_i_data), \
//     .dmem_addr(dbg_dmem_addr), \
//     .x0(dbg_x0), \
//     .ra(dbg_ra), \
//     .sp(dbg_sp), \
//     .gp(dbg_gp), \
//     .tp(dbg_tp), \
//     .t0(dbg_t0), \
//     .t1(dbg_t1), \
//     .t2(dbg_t2), \
//     .s0(dbg_s0), \
//     .s1(dbg_s1), \
//     .a0(dbg_a0), \
//     .a1(dbg_a1), \
//     .a2(dbg_a2), \
//     .a3(dbg_a3), \
//     .a4(dbg_a4), \
//     .a5(dbg_a5), \
//     .a6(dbg_a6), \
//     .a7(dbg_a7), \
//     .s2(dbg_s2), \
//     .s3(dbg_s3), \
//     .s4(dbg_s4), \
//     .s5(dbg_s5), \
//     .s6(dbg_s6), \
//     .s7(dbg_s7), \
//     .s8(dbg_s8), \
//     .s9(dbg_s9), \
//     .s10(dbg_s10), \
//     .s11(dbg_s11), \
//     .t3(dbg_t3), \
//     .t4(dbg_t4), \
//     .t5(dbg_t5), \
//     .t6(dbg_t6),
    
    
// `define VGA_DBG_Core_Declaration \
//     wire [31:0] dbg_pc; \
//     wire [31:0] dbg_inst; \
//     wire [4:0] dbg_rs1; \
//     wire [31:0] dbg_rs1_val; \
//     wire [4:0] dbg_rs2; \
//     wire [31:0] dbg_rs2_val; \
//     wire [4:0] dbg_rd; \
//     wire [31:0] dbg_reg_i_data; \
//     wire dbg_reg_wen; \
//     wire dbg_is_imm; \
//     wire dbg_is_auipc; \
//     wire dbg_is_lui; \
//     wire [31:0] dbg_imm; \
//     wire [31:0] dbg_a_val; \
//     wire [31:0] dbg_b_val; \
//     wire [3:0] dbg_alu_ctrl; \
//     wire [2:0] dbg_cmp_ctrl; \
//     wire [31:0] dbg_alu_res; \
//     wire dbg_cmp_res; \
//     wire dbg_is_branch; \
//     wire dbg_is_jal; \
//     wire dbg_is_jalr; \
//     wire dbg_do_branch; \
//     wire [31:0] dbg_pc_branch; \
//     wire dbg_mem_wen; \
//     wire dbg_mem_ren; \
//     wire [31:0] dbg_dmem_o_data; \
//     wire [31:0] dbg_dmem_i_data; \
//     wire [31:0] dbg_dmem_addr;
    
    
    
// `define VGA_DBG_RegFile_Declaration \
//     wire [31:0] dbg_x0; \
//     wire [31:0] dbg_ra; \
//     wire [31:0] dbg_sp; \
//     wire [31:0] dbg_gp; \
//     wire [31:0] dbg_tp; \
//     wire [31:0] dbg_t0; \
//     wire [31:0] dbg_t1; \
//     wire [31:0] dbg_t2; \
//     wire [31:0] dbg_s0; \
//     wire [31:0] dbg_s1; \
//     wire [31:0] dbg_a0; \
//     wire [31:0] dbg_a1; \
//     wire [31:0] dbg_a2; \
//     wire [31:0] dbg_a3; \
//     wire [31:0] dbg_a4; \
//     wire [31:0] dbg_a5; \
//     wire [31:0] dbg_a6; \
//     wire [31:0] dbg_a7; \
//     wire [31:0] dbg_s2; \
//     wire [31:0] dbg_s3; \
//     wire [31:0] dbg_s4; \
//     wire [31:0] dbg_s5; \
//     wire [31:0] dbg_s6; \
//     wire [31:0] dbg_s7; \
//     wire [31:0] dbg_s8; \
//     wire [31:0] dbg_s9; \
//     wire [31:0] dbg_s10; \
//     wire [31:0] dbg_s11; \
//     wire [31:0] dbg_t3; \
//     wire [31:0] dbg_t4; \
//     wire [31:0] dbg_t5; \
//     wire [31:0] dbg_t6;