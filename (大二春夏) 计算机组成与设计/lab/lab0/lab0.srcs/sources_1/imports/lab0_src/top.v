`timescale 1ns / 1ps


/**
 * Top module for MIPS 5-stage pipeline CPU.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */
module top (
    input wire CLK100MHZ,
    input wire [15:0] SW,
    input wire RSTN,
    input wire BTN_C,
    input wire BTN_R,

    output wire CA,    
    output wire CB,
    output wire CC,
    output wire CD,
    output wire CE,
    output wire CF,
    output wire CG,
    output wire DP,    
    output wire [7:0] AN,
    
    output wire [15:0] LED,
    output wire [3:0]VGA_B,
    output wire [3:0]VGA_G,
    output wire [3:0]VGA_R,
    output wire HS, VS,
    output wire UART_TXD
    );
    
    // clock generator
    wire clk_cpu, clk_disp;
    wire locked;
    wire clk100MHz, led_clk;

    wire [7:0] seg_ca;
    assign {DP,CG,CF,CE,CD,CC,CB,CA} = seg_ca;
    
    my_clk_gen CLK_GEN (
        .clkin1(CLK100MHZ),
        .CLK_OUT1(clk100MHz), //100MHz
        .CLK_OUT2(),          //50MHz
        .CLK_OUT3(clk_disp),  //25MHz
        .CLK_OUT4(clk_cpu),   //10MHz
        .CLK_OUT5(led_clk)
        );

    wire [1:0] btn;  //{btn_c, btn_r}
    wire btn_step;
    wire btn_interrupt;

    btn_scan #(
        .CLK_FREQ(25)
        ) BTN_SCAN (
        .clk(clk_disp),
        .rst(1'b0),
        .btn_c(BTN_C), // TODO
        .btn_r(BTN_R),
        .result(btn)
        );
    
    assign
        btn_step = btn[0],
        btn_interrupt = btn[1];
    
    // reset
    reg rst_all;
    reg [15:0] rst_count = 16'hFFFF;
    
    always @(posedge clk_cpu) begin
        rst_all <= (rst_count != 0);
        rst_count <= {rst_count[14:0], (!RSTN)};
    end

    wire [31:0] disp_data;
    wire [15:0] led_array;
    assign led_array = {btn_interrupt, btn_step, SW[13:0]};
    assign LED = led_array;
    
    wire [6:0] debug_addr;
    wire [31:0] debug_data;
    
    // clock divisor for computer organization
    wire [31:0] clk_div;
    wire clk_1s;
    ClockDividor clock_dividor(
        .clk(clk100MHz),
        .rst(rst_all),
        .step_en(SW[0]),
        .clk_step(btn_step),
        .clk_div(clk_div),
        .clk_cpu(clk_1s)
    );

    wire [31:0] data;
    wire wen;
    wire [31:0] dr_o_data;
    test_gen gen (
        .clk(clk_1s),
        .rst(rst_all),
        .wen(wen),
        .data(data)
    );


    DispNum dr(
        .clk(clk100MHz),
        .rst(rst_all),
        .wen(wen),
        .i_data(data),
        .o_data(dr_o_data),
        .Segments(seg_ca[6:0]),
        .AN(AN)
    );

    assign seg_ca[7] = 1'b1;

    

endmodule
