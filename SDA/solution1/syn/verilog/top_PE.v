// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module top_PE (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        fifo_SA_A_0_0_dout,
        fifo_SA_A_0_0_empty_n,
        fifo_SA_A_0_0_read,
        fifo_SA_W_0_0_dout,
        fifo_SA_W_0_0_empty_n,
        fifo_SA_W_0_0_read,
        fifo_SA_O_0_0_0_din,
        fifo_SA_O_0_0_0_full_n,
        fifo_SA_O_0_0_0_write,
        fifo_SA_O_0_0_1_din,
        fifo_SA_O_0_0_1_full_n,
        fifo_SA_O_0_0_1_write,
        fifo_SA_O_0_0_2_din,
        fifo_SA_O_0_0_2_full_n,
        fifo_SA_O_0_0_2_write,
        fifo_SA_O_0_0_3_din,
        fifo_SA_O_0_0_3_full_n,
        fifo_SA_O_0_0_3_write,
        num,
        num_a_sa,
        mode
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] fifo_SA_A_0_0_dout;
input   fifo_SA_A_0_0_empty_n;
output   fifo_SA_A_0_0_read;
input  [31:0] fifo_SA_W_0_0_dout;
input   fifo_SA_W_0_0_empty_n;
output   fifo_SA_W_0_0_read;
output  [31:0] fifo_SA_O_0_0_0_din;
input   fifo_SA_O_0_0_0_full_n;
output   fifo_SA_O_0_0_0_write;
output  [31:0] fifo_SA_O_0_0_1_din;
input   fifo_SA_O_0_0_1_full_n;
output   fifo_SA_O_0_0_1_write;
output  [31:0] fifo_SA_O_0_0_2_din;
input   fifo_SA_O_0_0_2_full_n;
output   fifo_SA_O_0_0_2_write;
output  [31:0] fifo_SA_O_0_0_3_din;
input   fifo_SA_O_0_0_3_full_n;
output   fifo_SA_O_0_0_3_write;
input  [31:0] num;
input  [31:0] num_a_sa;
input  [0:0] mode;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg fifo_SA_A_0_0_read;
reg fifo_SA_W_0_0_read;
reg fifo_SA_O_0_0_0_write;
reg fifo_SA_O_0_0_1_write;
reg fifo_SA_O_0_0_2_write;
reg fifo_SA_O_0_0_3_write;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] sub_fu_94_p2;
reg   [31:0] sub_reg_144;
wire    ap_CS_fsm_state2;
wire   [31:0] sub270_fu_100_p2;
reg   [31:0] sub270_reg_149;
wire   [31:0] add308_1_fu_106_p2;
reg   [31:0] add308_1_reg_154;
wire   [31:0] add308_2_fu_112_p2;
reg   [31:0] add308_2_reg_159;
wire   [31:0] add308_3_fu_118_p2;
reg   [31:0] add308_3_reg_164;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_idle;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read;
wire   [31:0] grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write;
wire   [31:0] grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write;
wire   [31:0] grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write;
wire   [31:0] grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din;
wire    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write;
reg    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg;
wire    ap_CS_fsm_state3;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg = 1'b0;
end

top_PE_Pipeline_VITIS_LOOP_378_5 grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start),
    .ap_done(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done),
    .ap_idle(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_idle),
    .ap_ready(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready),
    .fifo_SA_A_0_0_dout(fifo_SA_A_0_0_dout),
    .fifo_SA_A_0_0_empty_n(fifo_SA_A_0_0_empty_n),
    .fifo_SA_A_0_0_read(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read),
    .fifo_SA_W_0_0_dout(fifo_SA_W_0_0_dout),
    .fifo_SA_W_0_0_empty_n(fifo_SA_W_0_0_empty_n),
    .fifo_SA_W_0_0_read(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read),
    .fifo_SA_O_0_0_0_din(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din),
    .fifo_SA_O_0_0_0_full_n(fifo_SA_O_0_0_0_full_n),
    .fifo_SA_O_0_0_0_write(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write),
    .fifo_SA_O_0_0_1_din(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din),
    .fifo_SA_O_0_0_1_full_n(fifo_SA_O_0_0_1_full_n),
    .fifo_SA_O_0_0_1_write(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write),
    .fifo_SA_O_0_0_2_din(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din),
    .fifo_SA_O_0_0_2_full_n(fifo_SA_O_0_0_2_full_n),
    .fifo_SA_O_0_0_2_write(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write),
    .fifo_SA_O_0_0_3_din(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din),
    .fifo_SA_O_0_0_3_full_n(fifo_SA_O_0_0_3_full_n),
    .fifo_SA_O_0_0_3_write(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write),
    .sub(sub_reg_144),
    .mode(mode),
    .sub270(sub270_reg_149),
    .num(num),
    .num_a_sa(num_a_sa),
    .add308_3(add308_3_reg_164),
    .add308_2(add308_2_reg_159),
    .add308_1(add308_1_reg_154)
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
        grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= 1'b1;
        end else if ((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready == 1'b1)) begin
            grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add308_1_reg_154 <= add308_1_fu_106_p2;
        add308_2_reg_159 <= add308_2_fu_112_p2;
        add308_3_reg_164 <= add308_3_fu_118_p2;
        sub270_reg_149 <= sub270_fu_100_p2;
        sub_reg_144 <= sub_fu_94_p2;
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_A_0_0_read = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read;
    end else begin
        fifo_SA_A_0_0_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_O_0_0_0_write = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write;
    end else begin
        fifo_SA_O_0_0_0_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_O_0_0_1_write = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write;
    end else begin
        fifo_SA_O_0_0_1_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_O_0_0_2_write = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write;
    end else begin
        fifo_SA_O_0_0_2_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_O_0_0_3_write = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write;
    end else begin
        fifo_SA_O_0_0_3_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        fifo_SA_W_0_0_read = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read;
    end else begin
        fifo_SA_W_0_0_read = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add308_1_fu_106_p2 = (num_a_sa + 32'd1);

assign add308_2_fu_112_p2 = (num_a_sa + 32'd2);

assign add308_3_fu_118_p2 = (num_a_sa + 32'd3);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign fifo_SA_O_0_0_0_din = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din;

assign fifo_SA_O_0_0_1_din = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din;

assign fifo_SA_O_0_0_2_din = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din;

assign fifo_SA_O_0_0_3_din = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din;

assign grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start = grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg;

assign sub270_fu_100_p2 = ($signed(num) + $signed(32'd4294967295));

assign sub_fu_94_p2 = (num_a_sa + 32'd6);

endmodule //top_PE
