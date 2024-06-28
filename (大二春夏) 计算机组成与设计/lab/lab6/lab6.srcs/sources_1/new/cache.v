module cache(
    input clk,
    input rst,
    input [31:0] cpu_addr,
    input [31:0] write_data,
    input [31:0] block_data, // from memory
    input Read, //from cpu
    input Write, // from cpu
    input ack, // memory ack
    output [31:0] data, // 读出来的data
    output [31:0] mem_data, //write-back data
    output [31:0] mem_addr,
    output MemRead, //Cache miss: memory read
    output MemWrite, // Cache miss: memory write
    output ready // cache 读写完成
    );

    `define IDLE 2'd0
    `define COMPARE_TAG 2'd1
    `define ALLOCATE 2'd2
    `define WRITE_BACK 2'd3 

    // one word per block (32-bit) + (32 sets, 5 index bits) 27 tag bits
    //+1 valid bit + 1 dirty bit + 1 LRU bit
    reg [61:0] cache_data[31:0][1:0]; // 2-set associative cache

    wire [4:0] index = cpu_addr[4:0];
    wire [26:0] tag = cpu_addr[31:5];
    reg [1:0] state;

    reg MemRead_out;
    reg MemWrite_out;
    reg [31:0] data_r;
    reg [31:0] mem_data_r;
    reg [31:0] mem_addr_r;
    reg ready_r;
    integer i;

    always @(posedge clk or posedge rst) begin
        if(rst) begin
            for(i = 0; i < 32; i = i + 1) begin
                cache_data[i][0] <= 0;
                cache_data[i][1] <= 0;
            end
            state <= `IDLE;
            ready_r <= 0;
        end
        else begin
            case(state)
                `IDLE: begin
                    MemRead_out <= 0;
                    MemWrite_out <= 0;
                    ready_r <= 0;
                    // Read_r <= Read;
                    // Write_r <= Write;
                    // cpu_addr_r <= cpu_addr;
                    // write_data_r <= write_data;
                    if(Read || Write) begin
                        state <= `COMPARE_TAG;
                    end
                    else begin
                        state <= `IDLE;
                    end
                end

                `COMPARE_TAG: begin
                    if(cache_data[index][0][61] == 1'b1 && cache_data[index][0][58:32] == tag) begin
                        if(Write) begin
                            cache_data[index][0][31:0] <= write_data;
                            cache_data[index][0][60] <= 1'b1;
                            cache_data[index][0][59] <= 1'b1;
                        end
                        else begin
                            data_r <= cache_data[index][0][31:0];
                        end
                        state <= `IDLE;
                        ready_r <= 1;
                    end
                    else if(cache_data[index][1][61] == 1'b1 && cache_data[index][1][58:32] == tag) begin
                        if(Write) begin
                            cache_data[index][1][31:0] <= write_data;
                            cache_data[index][1][60] <= 1'b1;
                            cache_data[index][1][59] <= 1'b1;
                        end
                        else begin
                            data_r <= cache_data[index][1][31:0];
                        end
                        state <= `IDLE;
                        ready_r <= 1;
                    end
                    else begin
                        if(cache_data[index][0][60] == 1 || cache_data[index][1][60] == 1) begin //dirty, need write back
                            state <= `WRITE_BACK;
                            MemWrite_out <= 1;
                            MemRead_out <= 0;
                        end
                        else begin
                            state <= `ALLOCATE;
                            mem_addr_r <= cpu_addr;
                            MemRead_out <= 1;
                            MemWrite_out <= 0;
                        end
                    end
                end

                `ALLOCATE: begin
                    mem_addr_r <= cpu_addr;
                    if(ack) begin
                        if(cache_data[index][0][59] == 1) begin
                            cache_data[index][0][59] <= 1'b0;
                            cache_data[index][1][59] <= 1'b1;
                            cache_data[index][1][61] <= 1'b1;
                            cache_data[index][1][60] <= 1'b0;
                            cache_data[index][1][58:32] <= tag;
                            cache_data[index][1][31:0] <= block_data;
                        end
                        else begin
                            cache_data[index][1][59] <= 1'b0;
                            cache_data[index][0][59] <= 1'b1;
                            cache_data[index][0][61] <= 1'b1;
                            cache_data[index][0][60] <= 1'b0;
                            cache_data[index][0][58:32] <= tag;
                            cache_data[index][0][31:0] <= block_data;
                        end
                        state <= `COMPARE_TAG;
                    end
                    else begin
                        state <= `ALLOCATE;
                    end
                end

                `WRITE_BACK: begin
                    if(ack) begin
                        MemWrite_out <= 1;
                        if(cache_data[index][0][60] == 1) begin
                            mem_data_r <= cache_data[index][0][31:0];
                            cache_data[index][0][60] <= 0;
                            mem_addr_r <= {cache_data[index][0][58:32], index};
                            state <= `ALLOCATE;
                        end
                        else begin
                            mem_data_r <= cache_data[index][1][31:0];
                            mem_addr_r <= {cache_data[index][1][58:32], index};
                            cache_data[index][1][60] <= 0;
                            state <= `ALLOCATE;
                        end
                    end
                    else begin
                        state <= `WRITE_BACK;
                    end
                end
            endcase
        end
    end

    assign MemRead = MemRead_out;
    assign MemWrite = MemWrite_out;
    assign data = data_r;
    assign mem_data = mem_data_r;
    assign mem_addr = mem_addr_r;
    assign ready = ready_r;



endmodule