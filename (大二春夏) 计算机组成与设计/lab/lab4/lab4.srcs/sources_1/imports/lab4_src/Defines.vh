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
 
// csr index
`define	CSR_MSTATUS       12'h300
`define CSR_MEPC          12'h341
`define CSR_MCAUSE        12'h342
`define CSR_MTVAL         12'h343
`define CSR_MTVEC         12'h305

// interrupt cause
`define CSR_CAUSE_M_SOFT_INT              32'h8000_0003 
`define CSR_CAUSE_M_TIMER_INT             32'h8000_0007
`define CSR_CAUSE_M_EXTERNAL_INT          32'h8000_000b
// exception cause
`define CSR_CAUSE_INST_ADDR_MISALIGN      32'h0000_0000
`define CSR_CAUSE_ILLEGAL_INST            32'h0000_0002
`define CSR_CAUSE_LOAD_ADDR_MISALIGN      32'h0000_0004
`define CSR_CAUSE_STORE_ADDR_MISALIGN     32'h0000_0006
`define CSR_CAUSE_ECALL_FROM_M            32'h0000_000B
`define CSR_CAUSE_INST_PAGE_FAULT         32'h0000_000C
`define CSR_CAUSE_LOAD_PAGE_FAULT         32'h0000_000D
`define CSR_CAUSE_STORE_PAGE_FAULT        32'h0000_000F
