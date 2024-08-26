`timescale 1ns / 1ps

module uart_buffer (
    input clk, rst,
    input wire ready,
    input wire [7:0] sim_uart_char,
    input wire sim_uart_char_valid,
    output wire busy,
    output reg send,
    output reg [7:0] datao
);
    localparam SIZE = 256;
    reg[7:0] buffer[0:SIZE-1];

    reg [8:0] head;
    reg [8:0] tail;
    reg full;
    wire [8:0] next_tail = (tail == SIZE-1)? 0 : tail+1;
    wire update_head = ready && (head != tail || full);
    wire [8:0] next_head = update_head ? 
                           head == SIZE-1 ? 0 : head+1 
                           : head;
                           
    assign busy = full;
    
    always@(posedge clk) begin
        if(rst) begin
            head <= 0;
            tail <= 0; 
            full <= 0;
        end else begin
            if (update_head) begin
                datao <= buffer[head];
                send <= 1'b1;
                head <= (head == SIZE-1)? 0 : head+1;
                full <= 0;
            end
            if (sim_uart_char_valid) begin
                buffer[tail] <= sim_uart_char;
                tail <= next_tail;
                full <= next_tail == next_head;
            end
            if (send == 1'b1) begin
                send <= 1'b0;
            end 
        end
    end

endmodule