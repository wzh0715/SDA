// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fifo_conv_w_2_dout,
        fifo_conv_w_2_empty_n,
        fifo_conv_w_2_read,
        Conv_SA_W_0_2_din,
        Conv_SA_W_0_2_full_n,
        Conv_SA_W_0_2_write,
        Conv_SA_W_1_2_din,
        Conv_SA_W_1_2_full_n,
        Conv_SA_W_1_2_write,
        Conv_SA_W_2_2_din,
        Conv_SA_W_2_2_full_n,
        Conv_SA_W_2_2_write,
        Conv_SA_W_3_2_din,
        Conv_SA_W_3_2_full_n,
        Conv_SA_W_3_2_write,
        fifo_conv_w_1_dout,
        fifo_conv_w_1_empty_n,
        fifo_conv_w_1_read,
        Conv_SA_W_0_1_din,
        Conv_SA_W_0_1_full_n,
        Conv_SA_W_0_1_write,
        Conv_SA_W_1_1_din,
        Conv_SA_W_1_1_full_n,
        Conv_SA_W_1_1_write,
        Conv_SA_W_2_1_din,
        Conv_SA_W_2_1_full_n,
        Conv_SA_W_2_1_write,
        Conv_SA_W_3_1_din,
        Conv_SA_W_3_1_full_n,
        Conv_SA_W_3_1_write,
        fifo_conv_w_0_dout,
        fifo_conv_w_0_empty_n,
        fifo_conv_w_0_read,
        Conv_SA_W_0_0_din,
        Conv_SA_W_0_0_full_n,
        Conv_SA_W_0_0_write,
        Conv_SA_W_1_0_din,
        Conv_SA_W_1_0_full_n,
        Conv_SA_W_1_0_write,
        Conv_SA_W_2_0_din,
        Conv_SA_W_2_0_full_n,
        Conv_SA_W_2_0_write,
        Conv_SA_W_3_0_din,
        Conv_SA_W_3_0_full_n,
        Conv_SA_W_3_0_write,
        fifo_conv_w_3_dout,
        fifo_conv_w_3_empty_n,
        fifo_conv_w_3_read,
        Conv_SA_W_0_3_din,
        Conv_SA_W_0_3_full_n,
        Conv_SA_W_0_3_write,
        Conv_SA_W_1_3_din,
        Conv_SA_W_1_3_full_n,
        Conv_SA_W_1_3_write,
        Conv_SA_W_2_3_din,
        Conv_SA_W_2_3_full_n,
        Conv_SA_W_2_3_write,
        Conv_SA_W_3_3_din,
        Conv_SA_W_3_3_full_n,
        Conv_SA_W_3_3_write,
        zext_ln268
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] fifo_conv_w_2_dout;
input   fifo_conv_w_2_empty_n;
output   fifo_conv_w_2_read;
output  [31:0] Conv_SA_W_0_2_din;
input   Conv_SA_W_0_2_full_n;
output   Conv_SA_W_0_2_write;
output  [31:0] Conv_SA_W_1_2_din;
input   Conv_SA_W_1_2_full_n;
output   Conv_SA_W_1_2_write;
output  [31:0] Conv_SA_W_2_2_din;
input   Conv_SA_W_2_2_full_n;
output   Conv_SA_W_2_2_write;
output  [31:0] Conv_SA_W_3_2_din;
input   Conv_SA_W_3_2_full_n;
output   Conv_SA_W_3_2_write;
input  [127:0] fifo_conv_w_1_dout;
input   fifo_conv_w_1_empty_n;
output   fifo_conv_w_1_read;
output  [31:0] Conv_SA_W_0_1_din;
input   Conv_SA_W_0_1_full_n;
output   Conv_SA_W_0_1_write;
output  [31:0] Conv_SA_W_1_1_din;
input   Conv_SA_W_1_1_full_n;
output   Conv_SA_W_1_1_write;
output  [31:0] Conv_SA_W_2_1_din;
input   Conv_SA_W_2_1_full_n;
output   Conv_SA_W_2_1_write;
output  [31:0] Conv_SA_W_3_1_din;
input   Conv_SA_W_3_1_full_n;
output   Conv_SA_W_3_1_write;
input  [127:0] fifo_conv_w_0_dout;
input   fifo_conv_w_0_empty_n;
output   fifo_conv_w_0_read;
output  [31:0] Conv_SA_W_0_0_din;
input   Conv_SA_W_0_0_full_n;
output   Conv_SA_W_0_0_write;
output  [31:0] Conv_SA_W_1_0_din;
input   Conv_SA_W_1_0_full_n;
output   Conv_SA_W_1_0_write;
output  [31:0] Conv_SA_W_2_0_din;
input   Conv_SA_W_2_0_full_n;
output   Conv_SA_W_2_0_write;
output  [31:0] Conv_SA_W_3_0_din;
input   Conv_SA_W_3_0_full_n;
output   Conv_SA_W_3_0_write;
input  [127:0] fifo_conv_w_3_dout;
input   fifo_conv_w_3_empty_n;
output   fifo_conv_w_3_read;
output  [31:0] Conv_SA_W_0_3_din;
input   Conv_SA_W_0_3_full_n;
output   Conv_SA_W_0_3_write;
output  [31:0] Conv_SA_W_1_3_din;
input   Conv_SA_W_1_3_full_n;
output   Conv_SA_W_1_3_write;
output  [31:0] Conv_SA_W_2_3_din;
input   Conv_SA_W_2_3_full_n;
output   Conv_SA_W_2_3_write;
output  [31:0] Conv_SA_W_3_3_din;
input   Conv_SA_W_3_3_full_n;
output   Conv_SA_W_3_3_write;
input  [31:0] zext_ln268;

reg ap_idle;
reg fifo_conv_w_2_read;
reg Conv_SA_W_0_2_write;
reg Conv_SA_W_1_2_write;
reg Conv_SA_W_2_2_write;
reg Conv_SA_W_3_2_write;
reg fifo_conv_w_1_read;
reg Conv_SA_W_0_1_write;
reg Conv_SA_W_1_1_write;
reg Conv_SA_W_2_1_write;
reg Conv_SA_W_3_1_write;
reg fifo_conv_w_0_read;
reg Conv_SA_W_0_0_write;
reg Conv_SA_W_1_0_write;
reg Conv_SA_W_2_0_write;
reg Conv_SA_W_3_0_write;
reg fifo_conv_w_3_read;
reg Conv_SA_W_0_3_write;
reg Conv_SA_W_1_3_write;
reg Conv_SA_W_2_3_write;
reg Conv_SA_W_3_3_write;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg   [1:0] trunc_ln271_reg_481;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln268_fu_259_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    fifo_conv_w_2_blk_n;
wire    ap_block_pp0_stage0;
reg    Conv_SA_W_0_2_blk_n;
reg    Conv_SA_W_1_2_blk_n;
reg    Conv_SA_W_2_2_blk_n;
reg    Conv_SA_W_3_2_blk_n;
reg    fifo_conv_w_1_blk_n;
reg    Conv_SA_W_0_1_blk_n;
reg    Conv_SA_W_1_1_blk_n;
reg    Conv_SA_W_2_1_blk_n;
reg    Conv_SA_W_3_1_blk_n;
reg    fifo_conv_w_0_blk_n;
reg    Conv_SA_W_0_0_blk_n;
reg    Conv_SA_W_1_0_blk_n;
reg    Conv_SA_W_2_0_blk_n;
reg    Conv_SA_W_3_0_blk_n;
reg    fifo_conv_w_3_blk_n;
reg    Conv_SA_W_0_3_blk_n;
reg    Conv_SA_W_1_3_blk_n;
reg    Conv_SA_W_2_3_blk_n;
reg    Conv_SA_W_3_3_blk_n;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln271_fu_287_p1;
reg   [2:0] c_fu_96;
wire   [2:0] add_ln271_fu_291_p2;
wire    ap_loop_init;
reg   [31:0] indvar_flatten_fu_100;
wire   [31:0] add_ln268_fu_264_p2;
reg    ap_block_pp0_stage0_01001;
wire   [0:0] icmp_ln271_fu_273_p2;
wire   [2:0] select_ln268_fu_279_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 c_fu_96 = 3'd0;
#0 indvar_flatten_fu_100 = 32'd0;
#0 ap_done_reg = 1'b0;
end

top_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            c_fu_96 <= 3'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln268_fu_259_p2 == 1'd0))) begin
            c_fu_96 <= add_ln271_fu_291_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_100 <= 32'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln268_fu_259_p2 == 1'd0))) begin
            indvar_flatten_fu_100 <= add_ln268_fu_264_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        trunc_ln271_reg_481 <= trunc_ln271_fu_287_p1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_0_0_blk_n = Conv_SA_W_0_0_full_n;
    end else begin
        Conv_SA_W_0_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_0_0_write = 1'b1;
    end else begin
        Conv_SA_W_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_0_1_blk_n = Conv_SA_W_0_1_full_n;
    end else begin
        Conv_SA_W_0_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_0_1_write = 1'b1;
    end else begin
        Conv_SA_W_0_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_0_2_blk_n = Conv_SA_W_0_2_full_n;
    end else begin
        Conv_SA_W_0_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_0_2_write = 1'b1;
    end else begin
        Conv_SA_W_0_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_0_3_blk_n = Conv_SA_W_0_3_full_n;
    end else begin
        Conv_SA_W_0_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_0_3_write = 1'b1;
    end else begin
        Conv_SA_W_0_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_1_0_blk_n = Conv_SA_W_1_0_full_n;
    end else begin
        Conv_SA_W_1_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_1_0_write = 1'b1;
    end else begin
        Conv_SA_W_1_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_1_1_blk_n = Conv_SA_W_1_1_full_n;
    end else begin
        Conv_SA_W_1_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_1_1_write = 1'b1;
    end else begin
        Conv_SA_W_1_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_1_2_blk_n = Conv_SA_W_1_2_full_n;
    end else begin
        Conv_SA_W_1_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_1_2_write = 1'b1;
    end else begin
        Conv_SA_W_1_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_1_3_blk_n = Conv_SA_W_1_3_full_n;
    end else begin
        Conv_SA_W_1_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_1_3_write = 1'b1;
    end else begin
        Conv_SA_W_1_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_2_0_blk_n = Conv_SA_W_2_0_full_n;
    end else begin
        Conv_SA_W_2_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_2_0_write = 1'b1;
    end else begin
        Conv_SA_W_2_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_2_1_blk_n = Conv_SA_W_2_1_full_n;
    end else begin
        Conv_SA_W_2_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_2_1_write = 1'b1;
    end else begin
        Conv_SA_W_2_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_2_2_blk_n = Conv_SA_W_2_2_full_n;
    end else begin
        Conv_SA_W_2_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_2_2_write = 1'b1;
    end else begin
        Conv_SA_W_2_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_2_3_blk_n = Conv_SA_W_2_3_full_n;
    end else begin
        Conv_SA_W_2_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_2_3_write = 1'b1;
    end else begin
        Conv_SA_W_2_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_3_0_blk_n = Conv_SA_W_3_0_full_n;
    end else begin
        Conv_SA_W_3_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_3_0_write = 1'b1;
    end else begin
        Conv_SA_W_3_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_3_1_blk_n = Conv_SA_W_3_1_full_n;
    end else begin
        Conv_SA_W_3_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_3_1_write = 1'b1;
    end else begin
        Conv_SA_W_3_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_3_2_blk_n = Conv_SA_W_3_2_full_n;
    end else begin
        Conv_SA_W_3_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_3_2_write = 1'b1;
    end else begin
        Conv_SA_W_3_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        Conv_SA_W_3_3_blk_n = Conv_SA_W_3_3_full_n;
    end else begin
        Conv_SA_W_3_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        Conv_SA_W_3_3_write = 1'b1;
    end else begin
        Conv_SA_W_3_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln268_fu_259_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo_conv_w_0_blk_n = fifo_conv_w_0_empty_n;
    end else begin
        fifo_conv_w_0_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo_conv_w_0_read = 1'b1;
    end else begin
        fifo_conv_w_0_read = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo_conv_w_1_blk_n = fifo_conv_w_1_empty_n;
    end else begin
        fifo_conv_w_1_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo_conv_w_1_read = 1'b1;
    end else begin
        fifo_conv_w_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo_conv_w_2_blk_n = fifo_conv_w_2_empty_n;
    end else begin
        fifo_conv_w_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo_conv_w_2_read = 1'b1;
    end else begin
        fifo_conv_w_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0))) begin
        fifo_conv_w_3_blk_n = fifo_conv_w_3_empty_n;
    end else begin
        fifo_conv_w_3_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((trunc_ln271_reg_481 == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        fifo_conv_w_3_read = 1'b1;
    end else begin
        fifo_conv_w_3_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Conv_SA_W_0_0_din = fifo_conv_w_0_dout[31:0];

assign Conv_SA_W_0_1_din = fifo_conv_w_1_dout[31:0];

assign Conv_SA_W_0_2_din = fifo_conv_w_2_dout[31:0];

assign Conv_SA_W_0_3_din = fifo_conv_w_3_dout[31:0];

assign Conv_SA_W_1_0_din = {{fifo_conv_w_0_dout[63:32]}};

assign Conv_SA_W_1_1_din = {{fifo_conv_w_1_dout[63:32]}};

assign Conv_SA_W_1_2_din = {{fifo_conv_w_2_dout[63:32]}};

assign Conv_SA_W_1_3_din = {{fifo_conv_w_3_dout[63:32]}};

assign Conv_SA_W_2_0_din = {{fifo_conv_w_0_dout[95:64]}};

assign Conv_SA_W_2_1_din = {{fifo_conv_w_1_dout[95:64]}};

assign Conv_SA_W_2_2_din = {{fifo_conv_w_2_dout[95:64]}};

assign Conv_SA_W_2_3_din = {{fifo_conv_w_3_dout[95:64]}};

assign Conv_SA_W_3_0_din = {{fifo_conv_w_0_dout[127:96]}};

assign Conv_SA_W_3_1_din = {{fifo_conv_w_1_dout[127:96]}};

assign Conv_SA_W_3_2_din = {{fifo_conv_w_2_dout[127:96]}};

assign Conv_SA_W_3_3_din = {{fifo_conv_w_3_dout[127:96]}};

assign add_ln268_fu_264_p2 = (indvar_flatten_fu_100 + 32'd1);

assign add_ln271_fu_291_p2 = (select_ln268_fu_279_p3 + 3'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_block_state3_pp0_stage0_iter2));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (((trunc_ln271_reg_481 == 2'd1) & (1'b0 == Conv_SA_W_2_1_full_n)) | ((trunc_ln271_reg_481 == 2'd1) & (1'b0 == Conv_SA_W_1_1_full_n)) | ((trunc_ln271_reg_481 == 2'd1) & (1'b0 == Conv_SA_W_0_1_full_n)) | ((trunc_ln271_reg_481 == 2'd1) & (1'b0 == Conv_SA_W_3_1_full_n)) | ((fifo_conv_w_1_empty_n == 1'b0) & (trunc_ln271_reg_481 == 2'd1)) | ((trunc_ln271_reg_481 == 2'd2) & (1'b0 == Conv_SA_W_3_2_full_n)) | ((trunc_ln271_reg_481 == 2'd2) & (1'b0 == Conv_SA_W_2_2_full_n)) | ((trunc_ln271_reg_481 == 2'd2) & (1'b0 == Conv_SA_W_1_2_full_n)) | ((trunc_ln271_reg_481 == 2'd2) & (1'b0 == Conv_SA_W_0_2_full_n)) | ((trunc_ln271_reg_481 == 2'd2) & (fifo_conv_w_2_empty_n == 1'b0)) | ((trunc_ln271_reg_481 == 2'd3) & (1'b0 == Conv_SA_W_3_3_full_n)) | ((trunc_ln271_reg_481 == 2'd3) & (1'b0 == Conv_SA_W_2_3_full_n)) | ((trunc_ln271_reg_481 == 2'd3) & (1'b0 == Conv_SA_W_1_3_full_n)) | ((trunc_ln271_reg_481 == 2'd3) & (1'b0 == Conv_SA_W_0_3_full_n)) | ((trunc_ln271_reg_481 == 2'd3) & (fifo_conv_w_3_empty_n == 1'b0)) | ((trunc_ln271_reg_481 
    == 2'd0) & (1'b0 == Conv_SA_W_3_0_full_n)) | ((trunc_ln271_reg_481 == 2'd0) & (1'b0 == Conv_SA_W_2_0_full_n)) | ((trunc_ln271_reg_481 == 2'd0) & (1'b0 == Conv_SA_W_1_0_full_n)) | ((trunc_ln271_reg_481 == 2'd0) & (1'b0 == Conv_SA_W_0_0_full_n)) | ((trunc_ln271_reg_481 == 2'd0) & (fifo_conv_w_0_empty_n == 1'b0)));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign icmp_ln268_fu_259_p2 = ((indvar_flatten_fu_100 == zext_ln268) ? 1'b1 : 1'b0);

assign icmp_ln271_fu_273_p2 = ((c_fu_96 == 3'd4) ? 1'b1 : 1'b0);

assign select_ln268_fu_279_p3 = ((icmp_ln271_fu_273_p2[0:0] == 1'b1) ? 3'd0 : c_fu_96);

assign trunc_ln271_fu_287_p1 = select_ln268_fu_279_p3[1:0];

endmodule //top_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2
