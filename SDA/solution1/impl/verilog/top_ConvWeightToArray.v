// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_ConvWeightToArray (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fifo_conv_w_0_dout,
        fifo_conv_w_0_empty_n,
        fifo_conv_w_0_read,
        fifo_conv_w_1_dout,
        fifo_conv_w_1_empty_n,
        fifo_conv_w_1_read,
        fifo_conv_w_2_dout,
        fifo_conv_w_2_empty_n,
        fifo_conv_w_2_read,
        fifo_conv_w_3_dout,
        fifo_conv_w_3_empty_n,
        fifo_conv_w_3_read,
        Conv_SA_W_0_0_din,
        Conv_SA_W_0_0_full_n,
        Conv_SA_W_0_0_write,
        Conv_SA_W_0_1_din,
        Conv_SA_W_0_1_full_n,
        Conv_SA_W_0_1_write,
        Conv_SA_W_0_2_din,
        Conv_SA_W_0_2_full_n,
        Conv_SA_W_0_2_write,
        Conv_SA_W_0_3_din,
        Conv_SA_W_0_3_full_n,
        Conv_SA_W_0_3_write,
        Conv_SA_W_1_0_din,
        Conv_SA_W_1_0_full_n,
        Conv_SA_W_1_0_write,
        Conv_SA_W_1_1_din,
        Conv_SA_W_1_1_full_n,
        Conv_SA_W_1_1_write,
        Conv_SA_W_1_2_din,
        Conv_SA_W_1_2_full_n,
        Conv_SA_W_1_2_write,
        Conv_SA_W_1_3_din,
        Conv_SA_W_1_3_full_n,
        Conv_SA_W_1_3_write,
        Conv_SA_W_2_0_din,
        Conv_SA_W_2_0_full_n,
        Conv_SA_W_2_0_write,
        Conv_SA_W_2_1_din,
        Conv_SA_W_2_1_full_n,
        Conv_SA_W_2_1_write,
        Conv_SA_W_2_2_din,
        Conv_SA_W_2_2_full_n,
        Conv_SA_W_2_2_write,
        Conv_SA_W_2_3_din,
        Conv_SA_W_2_3_full_n,
        Conv_SA_W_2_3_write,
        Conv_SA_W_3_0_din,
        Conv_SA_W_3_0_full_n,
        Conv_SA_W_3_0_write,
        Conv_SA_W_3_1_din,
        Conv_SA_W_3_1_full_n,
        Conv_SA_W_3_1_write,
        Conv_SA_W_3_2_din,
        Conv_SA_W_3_2_full_n,
        Conv_SA_W_3_2_write,
        Conv_SA_W_3_3_din,
        Conv_SA_W_3_3_full_n,
        Conv_SA_W_3_3_write,
        num_w_in,
        mode
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [127:0] fifo_conv_w_0_dout;
input   fifo_conv_w_0_empty_n;
output   fifo_conv_w_0_read;
input  [127:0] fifo_conv_w_1_dout;
input   fifo_conv_w_1_empty_n;
output   fifo_conv_w_1_read;
input  [127:0] fifo_conv_w_2_dout;
input   fifo_conv_w_2_empty_n;
output   fifo_conv_w_2_read;
input  [127:0] fifo_conv_w_3_dout;
input   fifo_conv_w_3_empty_n;
output   fifo_conv_w_3_read;
output  [31:0] Conv_SA_W_0_0_din;
input   Conv_SA_W_0_0_full_n;
output   Conv_SA_W_0_0_write;
output  [31:0] Conv_SA_W_0_1_din;
input   Conv_SA_W_0_1_full_n;
output   Conv_SA_W_0_1_write;
output  [31:0] Conv_SA_W_0_2_din;
input   Conv_SA_W_0_2_full_n;
output   Conv_SA_W_0_2_write;
output  [31:0] Conv_SA_W_0_3_din;
input   Conv_SA_W_0_3_full_n;
output   Conv_SA_W_0_3_write;
output  [31:0] Conv_SA_W_1_0_din;
input   Conv_SA_W_1_0_full_n;
output   Conv_SA_W_1_0_write;
output  [31:0] Conv_SA_W_1_1_din;
input   Conv_SA_W_1_1_full_n;
output   Conv_SA_W_1_1_write;
output  [31:0] Conv_SA_W_1_2_din;
input   Conv_SA_W_1_2_full_n;
output   Conv_SA_W_1_2_write;
output  [31:0] Conv_SA_W_1_3_din;
input   Conv_SA_W_1_3_full_n;
output   Conv_SA_W_1_3_write;
output  [31:0] Conv_SA_W_2_0_din;
input   Conv_SA_W_2_0_full_n;
output   Conv_SA_W_2_0_write;
output  [31:0] Conv_SA_W_2_1_din;
input   Conv_SA_W_2_1_full_n;
output   Conv_SA_W_2_1_write;
output  [31:0] Conv_SA_W_2_2_din;
input   Conv_SA_W_2_2_full_n;
output   Conv_SA_W_2_2_write;
output  [31:0] Conv_SA_W_2_3_din;
input   Conv_SA_W_2_3_full_n;
output   Conv_SA_W_2_3_write;
output  [31:0] Conv_SA_W_3_0_din;
input   Conv_SA_W_3_0_full_n;
output   Conv_SA_W_3_0_write;
output  [31:0] Conv_SA_W_3_1_din;
input   Conv_SA_W_3_1_full_n;
output   Conv_SA_W_3_1_write;
output  [31:0] Conv_SA_W_3_2_din;
input   Conv_SA_W_3_2_full_n;
output   Conv_SA_W_3_2_write;
output  [31:0] Conv_SA_W_3_3_din;
input   Conv_SA_W_3_3_full_n;
output   Conv_SA_W_3_3_write;
input  [29:0] num_w_in;
input  [0:0] mode;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_conv_w_0_read;
reg fifo_conv_w_1_read;
reg fifo_conv_w_2_read;
reg fifo_conv_w_3_read;
reg Conv_SA_W_0_0_write;
reg Conv_SA_W_0_1_write;
reg Conv_SA_W_0_2_write;
reg Conv_SA_W_0_3_write;
reg Conv_SA_W_1_0_write;
reg Conv_SA_W_1_1_write;
reg Conv_SA_W_1_2_write;
reg Conv_SA_W_1_3_write;
reg Conv_SA_W_2_0_write;
reg Conv_SA_W_2_1_write;
reg Conv_SA_W_2_2_write;
reg Conv_SA_W_2_3_write;
reg Conv_SA_W_3_0_write;
reg Conv_SA_W_3_1_write;
reg Conv_SA_W_3_2_write;
reg Conv_SA_W_3_3_write;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] tmp_s_fu_123_p3;
reg   [31:0] tmp_s_reg_136;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_done;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_idle;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_ready;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_2_read;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_write;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_1_read;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_write;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_0_read;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_write;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_3_read;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_write;
wire   [31:0] grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_din;
wire    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_write;
reg    grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg;
wire    ap_CS_fsm_state2;
reg    ap_block_state2_on_subcall_done;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg = 1'b0;
end

top_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2 grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start),
    .ap_done(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_done),
    .ap_idle(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_idle),
    .ap_ready(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_ready),
    .fifo_conv_w_2_dout(fifo_conv_w_2_dout),
    .fifo_conv_w_2_empty_n(fifo_conv_w_2_empty_n),
    .fifo_conv_w_2_read(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_2_read),
    .Conv_SA_W_0_2_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_din),
    .Conv_SA_W_0_2_full_n(Conv_SA_W_0_2_full_n),
    .Conv_SA_W_0_2_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_write),
    .Conv_SA_W_1_2_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_din),
    .Conv_SA_W_1_2_full_n(Conv_SA_W_1_2_full_n),
    .Conv_SA_W_1_2_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_write),
    .Conv_SA_W_2_2_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_din),
    .Conv_SA_W_2_2_full_n(Conv_SA_W_2_2_full_n),
    .Conv_SA_W_2_2_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_write),
    .Conv_SA_W_3_2_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_din),
    .Conv_SA_W_3_2_full_n(Conv_SA_W_3_2_full_n),
    .Conv_SA_W_3_2_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_write),
    .fifo_conv_w_1_dout(fifo_conv_w_1_dout),
    .fifo_conv_w_1_empty_n(fifo_conv_w_1_empty_n),
    .fifo_conv_w_1_read(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_1_read),
    .Conv_SA_W_0_1_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_din),
    .Conv_SA_W_0_1_full_n(Conv_SA_W_0_1_full_n),
    .Conv_SA_W_0_1_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_write),
    .Conv_SA_W_1_1_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_din),
    .Conv_SA_W_1_1_full_n(Conv_SA_W_1_1_full_n),
    .Conv_SA_W_1_1_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_write),
    .Conv_SA_W_2_1_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_din),
    .Conv_SA_W_2_1_full_n(Conv_SA_W_2_1_full_n),
    .Conv_SA_W_2_1_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_write),
    .Conv_SA_W_3_1_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_din),
    .Conv_SA_W_3_1_full_n(Conv_SA_W_3_1_full_n),
    .Conv_SA_W_3_1_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_write),
    .fifo_conv_w_0_dout(fifo_conv_w_0_dout),
    .fifo_conv_w_0_empty_n(fifo_conv_w_0_empty_n),
    .fifo_conv_w_0_read(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_0_read),
    .Conv_SA_W_0_0_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_din),
    .Conv_SA_W_0_0_full_n(Conv_SA_W_0_0_full_n),
    .Conv_SA_W_0_0_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_write),
    .Conv_SA_W_1_0_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_din),
    .Conv_SA_W_1_0_full_n(Conv_SA_W_1_0_full_n),
    .Conv_SA_W_1_0_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_write),
    .Conv_SA_W_2_0_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_din),
    .Conv_SA_W_2_0_full_n(Conv_SA_W_2_0_full_n),
    .Conv_SA_W_2_0_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_write),
    .Conv_SA_W_3_0_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_din),
    .Conv_SA_W_3_0_full_n(Conv_SA_W_3_0_full_n),
    .Conv_SA_W_3_0_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_write),
    .fifo_conv_w_3_dout(fifo_conv_w_3_dout),
    .fifo_conv_w_3_empty_n(fifo_conv_w_3_empty_n),
    .fifo_conv_w_3_read(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_3_read),
    .Conv_SA_W_0_3_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_din),
    .Conv_SA_W_0_3_full_n(Conv_SA_W_0_3_full_n),
    .Conv_SA_W_0_3_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_write),
    .Conv_SA_W_1_3_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_din),
    .Conv_SA_W_1_3_full_n(Conv_SA_W_1_3_full_n),
    .Conv_SA_W_1_3_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_write),
    .Conv_SA_W_2_3_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_din),
    .Conv_SA_W_2_3_full_n(Conv_SA_W_2_3_full_n),
    .Conv_SA_W_2_3_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_write),
    .Conv_SA_W_3_3_din(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_din),
    .Conv_SA_W_3_3_full_n(Conv_SA_W_3_3_full_n),
    .Conv_SA_W_3_3_write(grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_write),
    .zext_ln268(tmp_s_reg_136)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (mode == 1'd1))) begin
            grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg <= 1'b1;
        end else if ((grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_ready == 1'b1)) begin
            grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_s_reg_136[31 : 2] <= tmp_s_fu_123_p3[31 : 2];
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_0_0_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_write;
    end else begin
        Conv_SA_W_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_0_1_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_write;
    end else begin
        Conv_SA_W_0_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_0_2_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_write;
    end else begin
        Conv_SA_W_0_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_0_3_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_write;
    end else begin
        Conv_SA_W_0_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_1_0_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_write;
    end else begin
        Conv_SA_W_1_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_1_1_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_write;
    end else begin
        Conv_SA_W_1_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_1_2_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_write;
    end else begin
        Conv_SA_W_1_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_1_3_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_write;
    end else begin
        Conv_SA_W_1_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_2_0_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_write;
    end else begin
        Conv_SA_W_2_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_2_1_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_write;
    end else begin
        Conv_SA_W_2_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_2_2_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_write;
    end else begin
        Conv_SA_W_2_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_2_3_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_write;
    end else begin
        Conv_SA_W_2_3_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_3_0_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_write;
    end else begin
        Conv_SA_W_3_0_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_3_1_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_write;
    end else begin
        Conv_SA_W_3_1_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_3_2_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_write;
    end else begin
        Conv_SA_W_3_2_write = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        Conv_SA_W_3_3_write = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_write;
    end else begin
        Conv_SA_W_3_3_write = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state2_on_subcall_done)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        fifo_conv_w_0_read = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_0_read;
    end else begin
        fifo_conv_w_0_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        fifo_conv_w_1_read = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_1_read;
    end else begin
        fifo_conv_w_1_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        fifo_conv_w_2_read = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_2_read;
    end else begin
        fifo_conv_w_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (mode == 1'd1))) begin
        fifo_conv_w_3_read = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_fifo_conv_w_3_read;
    end else begin
        fifo_conv_w_3_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Conv_SA_W_0_0_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_0_din;

assign Conv_SA_W_0_1_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_1_din;

assign Conv_SA_W_0_2_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_2_din;

assign Conv_SA_W_0_3_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_0_3_din;

assign Conv_SA_W_1_0_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_0_din;

assign Conv_SA_W_1_1_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_1_din;

assign Conv_SA_W_1_2_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_2_din;

assign Conv_SA_W_1_3_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_1_3_din;

assign Conv_SA_W_2_0_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_0_din;

assign Conv_SA_W_2_1_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_1_din;

assign Conv_SA_W_2_2_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_2_din;

assign Conv_SA_W_2_3_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_2_3_din;

assign Conv_SA_W_3_0_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_0_din;

assign Conv_SA_W_3_1_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_1_din;

assign Conv_SA_W_3_2_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_2_din;

assign Conv_SA_W_3_3_din = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_Conv_SA_W_3_3_din;

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state2_on_subcall_done = ((grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_done == 1'b0) & (mode == 1'd1));
end

assign grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start = grp_ConvWeightToArray_Pipeline_VITIS_LOOP_268_1_VITIS_LOOP_271_2_fu_78_ap_start_reg;

assign tmp_s_fu_123_p3 = {{num_w_in}, {2'd0}};

always @ (posedge ap_clk) begin
    tmp_s_reg_136[1:0] <= 2'b00;
end

endmodule //top_ConvWeightToArray
