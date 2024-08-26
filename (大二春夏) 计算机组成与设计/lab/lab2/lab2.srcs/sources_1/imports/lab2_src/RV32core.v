`include "Defines.vh"
`timescale 1ns / 1ps


module  RV32core(
        input debug_en,  // debug enable
        input debug_step,  // debug step clock
        input [6:0] debug_addr,  // debug address
        output[31:0] debug_data,  // debug data
        input clk,  // main clock
        input rst,  // synchronous reset
        input led_clk,
        output [6:0] seg_ca,
        output [7:0] AN,
        input [15:0] SW,

        output[31:0] dbg_A,
        output[31:0] dbg_B,
        output[31:0] mem_addr,
        output[31:0] mem_data
	);

	wire debug_clk;

	debug_clk clock(.clk(clk),.debug_en(debug_en),.debug_step(debug_step),.debug_clk(debug_clk));

    wire [15:0] A;
    wire [15:0] B;
    wire start;

    wire [31:0] product;
    wire mul_ready;
    wire mul_finish;

    wire [15:0] quotient;
    wire [15:0] remainder;
    wire div_ready;
    wire div_finish;
    wire div_by_0;

    wire [31:0] prod;
    wire [31:0] quot;
    wire [31:0] rema;
    wire [31:0] ref_div_by_0;

    test_gen test (
        .clk(debug_clk),
        .rst(rst),
        .A(A),
        .B(B),
        .prod(prod),
        .quot(quot),
        .rema(rema),
        .div_by_0(ref_div_by_0)
    );
    

    Mul mul (
        .clk(clk),
        .rst(rst),
        .multiplicand(A),
        .multiplier(B),
        .start(debug_clk),
        .product(product),
        .ready(mul_ready),
        .finish(mul_finish)
    );

    Div div (
        .clk(clk),
        .rst(rst),
        .start(debug_clk),
        .dividend(A),
        .divisor(B),
        .finish(div_finish),
        .ready(div_ready),
        .quotient(quotient),
        .remainder(remainder),
        .div_by_0(div_by_0)
    );

    /* Debug code */
    wire [31:0] dbg_regs [31:0];

    assign debug_data = dbg_regs[debug_addr[4:0]];
    assign dbg_regs[1] = prod;
    assign dbg_regs[2] = quot;
    assign dbg_regs[3] = rema;
    assign dbg_regs[4] = ref_div_by_0;

    assign dbg_A = {16'b0, A};
    assign dbg_B = {16'b0, B};
    assign mem_addr = 32'b0;
    assign mem_data = 32'b0;

    wire [31:0] seg_datas [0:3];

    reg [31:0] prod_reg;
    reg [31:0] quot_reg;
    reg [31:0] rema_reg;

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            prod_reg <= 32'd0;
        end
        else if (mul_finish) begin
            prod_reg <= product;
        end
    end

    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            quot_reg <= 32'd0;
            rema_reg <= 32'd0;
        end
        else if (div_finish) begin
            quot_reg <= {16'b0, quotient};
            rema_reg <= {16'b0, remainder};
        end
    end

    assign seg_datas[0] = prod_reg;
    assign seg_datas[1] = quot_reg;
    assign seg_datas[2] = rema_reg;
    assign seg_datas[3] = {31'b0, div_by_0};

    DispNum dr (
        .clk(led_clk),
        .rst(rst),
        .wen(1'b1),
        .i_data(seg_datas[SW[2:1]]),
        .Segments(seg_ca),
        .AN(AN)
    );

endmodule