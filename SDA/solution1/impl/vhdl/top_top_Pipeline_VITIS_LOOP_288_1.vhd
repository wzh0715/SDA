-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_top_Pipeline_VITIS_LOOP_288_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_mm_w_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    fifo_mm_w_empty_n : IN STD_LOGIC;
    fifo_mm_w_read : OUT STD_LOGIC;
    MM_SA_W_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_full_n : IN STD_LOGIC;
    MM_SA_W_write : OUT STD_LOGIC;
    MM_SA_W_4_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_4_full_n : IN STD_LOGIC;
    MM_SA_W_4_write : OUT STD_LOGIC;
    MM_SA_W_8_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_8_full_n : IN STD_LOGIC;
    MM_SA_W_8_write : OUT STD_LOGIC;
    MM_SA_W_12_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_12_full_n : IN STD_LOGIC;
    MM_SA_W_12_write : OUT STD_LOGIC;
    MM_SA_W_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_1_full_n : IN STD_LOGIC;
    MM_SA_W_1_write : OUT STD_LOGIC;
    MM_SA_W_5_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_5_full_n : IN STD_LOGIC;
    MM_SA_W_5_write : OUT STD_LOGIC;
    MM_SA_W_9_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_9_full_n : IN STD_LOGIC;
    MM_SA_W_9_write : OUT STD_LOGIC;
    MM_SA_W_13_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_13_full_n : IN STD_LOGIC;
    MM_SA_W_13_write : OUT STD_LOGIC;
    MM_SA_W_2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_2_full_n : IN STD_LOGIC;
    MM_SA_W_2_write : OUT STD_LOGIC;
    MM_SA_W_6_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_6_full_n : IN STD_LOGIC;
    MM_SA_W_6_write : OUT STD_LOGIC;
    MM_SA_W_10_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_10_full_n : IN STD_LOGIC;
    MM_SA_W_10_write : OUT STD_LOGIC;
    MM_SA_W_14_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_14_full_n : IN STD_LOGIC;
    MM_SA_W_14_write : OUT STD_LOGIC;
    MM_SA_W_3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_3_full_n : IN STD_LOGIC;
    MM_SA_W_3_write : OUT STD_LOGIC;
    MM_SA_W_7_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_7_full_n : IN STD_LOGIC;
    MM_SA_W_7_write : OUT STD_LOGIC;
    MM_SA_W_11_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_11_full_n : IN STD_LOGIC;
    MM_SA_W_11_write : OUT STD_LOGIC;
    MM_SA_W_15_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    MM_SA_W_15_full_n : IN STD_LOGIC;
    MM_SA_W_15_write : OUT STD_LOGIC;
    empty : IN STD_LOGIC_VECTOR (29 downto 0) );
end;


architecture behav of top_top_Pipeline_VITIS_LOOP_288_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv30_1 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000001";
    constant ap_const_lv32_20 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv32_40 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001000000";
    constant ap_const_lv32_5F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001011111";
    constant ap_const_lv32_60 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001100000";
    constant ap_const_lv32_7F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000001111111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln288_fu_218_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal fifo_mm_w_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal MM_SA_W_blk_n : STD_LOGIC;
    signal MM_SA_W_4_blk_n : STD_LOGIC;
    signal MM_SA_W_8_blk_n : STD_LOGIC;
    signal MM_SA_W_12_blk_n : STD_LOGIC;
    signal MM_SA_W_1_blk_n : STD_LOGIC;
    signal MM_SA_W_5_blk_n : STD_LOGIC;
    signal MM_SA_W_9_blk_n : STD_LOGIC;
    signal MM_SA_W_13_blk_n : STD_LOGIC;
    signal MM_SA_W_2_blk_n : STD_LOGIC;
    signal MM_SA_W_6_blk_n : STD_LOGIC;
    signal MM_SA_W_10_blk_n : STD_LOGIC;
    signal MM_SA_W_14_blk_n : STD_LOGIC;
    signal MM_SA_W_3_blk_n : STD_LOGIC;
    signal MM_SA_W_7_blk_n : STD_LOGIC;
    signal MM_SA_W_11_blk_n : STD_LOGIC;
    signal MM_SA_W_15_blk_n : STD_LOGIC;
    signal rep_fu_82 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    signal rep_2_fu_224_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal ap_sig_allocacmp_rep_1 : STD_LOGIC_VECTOR (29 downto 0);
    signal trunc_ln295_fu_235_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component top_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component top_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    rep_fu_82_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln288_fu_218_p2 = ap_const_lv1_0))) then 
                    rep_fu_82 <= rep_2_fu_224_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    rep_fu_82 <= ap_const_lv30_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;

    MM_SA_W_10_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_10_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_10_blk_n <= MM_SA_W_10_full_n;
        else 
            MM_SA_W_10_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_10_din <= fifo_mm_w_dout(95 downto 64);

    MM_SA_W_10_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_10_write <= ap_const_logic_1;
        else 
            MM_SA_W_10_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_11_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_11_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_11_blk_n <= MM_SA_W_11_full_n;
        else 
            MM_SA_W_11_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_11_din <= fifo_mm_w_dout(127 downto 96);

    MM_SA_W_11_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_11_write <= ap_const_logic_1;
        else 
            MM_SA_W_11_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_12_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_12_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_12_blk_n <= MM_SA_W_12_full_n;
        else 
            MM_SA_W_12_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_12_din <= trunc_ln295_fu_235_p1;

    MM_SA_W_12_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_12_write <= ap_const_logic_1;
        else 
            MM_SA_W_12_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_13_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_13_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_13_blk_n <= MM_SA_W_13_full_n;
        else 
            MM_SA_W_13_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_13_din <= fifo_mm_w_dout(63 downto 32);

    MM_SA_W_13_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_13_write <= ap_const_logic_1;
        else 
            MM_SA_W_13_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_14_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_14_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_14_blk_n <= MM_SA_W_14_full_n;
        else 
            MM_SA_W_14_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_14_din <= fifo_mm_w_dout(95 downto 64);

    MM_SA_W_14_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_14_write <= ap_const_logic_1;
        else 
            MM_SA_W_14_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_15_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_15_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_15_blk_n <= MM_SA_W_15_full_n;
        else 
            MM_SA_W_15_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_15_din <= fifo_mm_w_dout(127 downto 96);

    MM_SA_W_15_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_15_write <= ap_const_logic_1;
        else 
            MM_SA_W_15_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_1_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_1_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_1_blk_n <= MM_SA_W_1_full_n;
        else 
            MM_SA_W_1_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_1_din <= fifo_mm_w_dout(63 downto 32);

    MM_SA_W_1_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_1_write <= ap_const_logic_1;
        else 
            MM_SA_W_1_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_2_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_2_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_2_blk_n <= MM_SA_W_2_full_n;
        else 
            MM_SA_W_2_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_2_din <= fifo_mm_w_dout(95 downto 64);

    MM_SA_W_2_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_2_write <= ap_const_logic_1;
        else 
            MM_SA_W_2_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_3_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_3_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_3_blk_n <= MM_SA_W_3_full_n;
        else 
            MM_SA_W_3_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_3_din <= fifo_mm_w_dout(127 downto 96);

    MM_SA_W_3_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_3_write <= ap_const_logic_1;
        else 
            MM_SA_W_3_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_4_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_4_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_4_blk_n <= MM_SA_W_4_full_n;
        else 
            MM_SA_W_4_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_4_din <= trunc_ln295_fu_235_p1;

    MM_SA_W_4_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_4_write <= ap_const_logic_1;
        else 
            MM_SA_W_4_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_5_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_5_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_5_blk_n <= MM_SA_W_5_full_n;
        else 
            MM_SA_W_5_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_5_din <= fifo_mm_w_dout(63 downto 32);

    MM_SA_W_5_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_5_write <= ap_const_logic_1;
        else 
            MM_SA_W_5_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_6_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_6_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_6_blk_n <= MM_SA_W_6_full_n;
        else 
            MM_SA_W_6_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_6_din <= fifo_mm_w_dout(95 downto 64);

    MM_SA_W_6_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_6_write <= ap_const_logic_1;
        else 
            MM_SA_W_6_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_7_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_7_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_7_blk_n <= MM_SA_W_7_full_n;
        else 
            MM_SA_W_7_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_7_din <= fifo_mm_w_dout(127 downto 96);

    MM_SA_W_7_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_7_write <= ap_const_logic_1;
        else 
            MM_SA_W_7_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_8_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_8_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_8_blk_n <= MM_SA_W_8_full_n;
        else 
            MM_SA_W_8_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_8_din <= trunc_ln295_fu_235_p1;

    MM_SA_W_8_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_8_write <= ap_const_logic_1;
        else 
            MM_SA_W_8_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_9_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_9_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_9_blk_n <= MM_SA_W_9_full_n;
        else 
            MM_SA_W_9_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_9_din <= fifo_mm_w_dout(63 downto 32);

    MM_SA_W_9_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_9_write <= ap_const_logic_1;
        else 
            MM_SA_W_9_write <= ap_const_logic_0;
        end if; 
    end process;


    MM_SA_W_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, MM_SA_W_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            MM_SA_W_blk_n <= MM_SA_W_full_n;
        else 
            MM_SA_W_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    MM_SA_W_din <= trunc_ln295_fu_235_p1;

    MM_SA_W_write_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            MM_SA_W_write <= ap_const_logic_1;
        else 
            MM_SA_W_write <= ap_const_logic_0;
        end if; 
    end process;

    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter1, ap_block_state2_pp0_stage0_iter1)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state2_pp0_stage0_iter1));
    end process;


    ap_block_state2_pp0_stage0_iter1_assign_proc : process(fifo_mm_w_empty_n, MM_SA_W_full_n, MM_SA_W_4_full_n, MM_SA_W_8_full_n, MM_SA_W_12_full_n, MM_SA_W_1_full_n, MM_SA_W_5_full_n, MM_SA_W_9_full_n, MM_SA_W_13_full_n, MM_SA_W_2_full_n, MM_SA_W_6_full_n, MM_SA_W_10_full_n, MM_SA_W_14_full_n, MM_SA_W_3_full_n, MM_SA_W_7_full_n, MM_SA_W_11_full_n, MM_SA_W_15_full_n)
    begin
                ap_block_state2_pp0_stage0_iter1 <= ((fifo_mm_w_empty_n = ap_const_logic_0) or (ap_const_logic_0 = MM_SA_W_10_full_n) or (ap_const_logic_0 = MM_SA_W_6_full_n) or (ap_const_logic_0 = MM_SA_W_2_full_n) or (ap_const_logic_0 = MM_SA_W_13_full_n) or (ap_const_logic_0 = MM_SA_W_9_full_n) or (ap_const_logic_0 = MM_SA_W_5_full_n) or (ap_const_logic_0 = MM_SA_W_1_full_n) or (ap_const_logic_0 = MM_SA_W_12_full_n) or (ap_const_logic_0 = MM_SA_W_8_full_n) or (ap_const_logic_0 = MM_SA_W_4_full_n) or (ap_const_logic_0 = MM_SA_W_full_n) or (ap_const_logic_0 = MM_SA_W_15_full_n) or (ap_const_logic_0 = MM_SA_W_11_full_n) or (ap_const_logic_0 = MM_SA_W_7_full_n) or (ap_const_logic_0 = MM_SA_W_3_full_n) or (ap_const_logic_0 = MM_SA_W_14_full_n));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln288_fu_218_p2)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln288_fu_218_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_rep_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, rep_fu_82, ap_loop_init)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_sig_allocacmp_rep_1 <= ap_const_lv30_0;
        else 
            ap_sig_allocacmp_rep_1 <= rep_fu_82;
        end if; 
    end process;


    fifo_mm_w_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, fifo_mm_w_empty_n, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            fifo_mm_w_blk_n <= fifo_mm_w_empty_n;
        else 
            fifo_mm_w_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    fifo_mm_w_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            fifo_mm_w_read <= ap_const_logic_1;
        else 
            fifo_mm_w_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln288_fu_218_p2 <= "1" when (ap_sig_allocacmp_rep_1 = empty) else "0";
    rep_2_fu_224_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_rep_1) + unsigned(ap_const_lv30_1));
    trunc_ln295_fu_235_p1 <= fifo_mm_w_dout(32 - 1 downto 0);
end behav;
