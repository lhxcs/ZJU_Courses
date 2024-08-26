`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/14 19:18:39
// Design Name: 
// Module Name: Exception_Controller
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
module Exception_Controller(
    input sw,
    input [31:0] inst,
    input branch_jump,
    input [31:0] ALU_res,
    input [31:0] dmem_addr,
    input MemRead,
    input MemWrite,
    input illegal,
    output interupt,
    output [31:0] error_info,
    output [31:0] error_id
    );

    //内存地址对齐异常
    wire ls_unalign;
    assign ls_unalign = ((dmem_addr[1:0] != 2'b00) && (MemRead || MemWrite));

    //跳转指令不对齐
    wire bj_unalign;
    assign bj_unalign = ((ALU_res[1:0] != 2'b00) && branch_jump);

    wire is_ecall;
    assign is_ecall = (inst == 32'h00000073);

    assign interupt = sw | ls_unalign | bj_unalign | illegal | is_ecall;

    assign error_info = illegal ? inst :
                        ls_unalign ? dmem_addr :
                        bj_unalign ? ALU_res : 32'b0;
                        
    assign error_id = bj_unalign ? `CSR_CAUSE_INST_ADDR_MISALIGN:
                        illegal ? `CSR_CAUSE_ILLEGAL_INST:
                        (ls_unalign && MemRead) ? `CSR_CAUSE_LOAD_ADDR_MISALIGN:
                        (ls_unalign && MemWrite) ? `CSR_CAUSE_STORE_ADDR_MISALIGN:
                        is_ecall ? `CSR_CAUSE_ECALL_FROM_M:
                        sw ? `CSR_CAUSE_M_EXTERNAL_INT : 32'b0;
endmodule
