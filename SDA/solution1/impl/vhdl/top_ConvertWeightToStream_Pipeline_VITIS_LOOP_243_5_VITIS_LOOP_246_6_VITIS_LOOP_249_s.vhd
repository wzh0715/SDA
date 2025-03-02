-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_ConvertWeightToStream_Pipeline_VITIS_LOOP_243_5_VITIS_LOOP_246_6_VITIS_LOOP_249_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    m_axi_MM_BUS_AWVALID : OUT STD_LOGIC;
    m_axi_MM_BUS_AWREADY : IN STD_LOGIC;
    m_axi_MM_BUS_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_MM_BUS_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_MM_BUS_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_MM_BUS_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_MM_BUS_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_WVALID : OUT STD_LOGIC;
    m_axi_MM_BUS_WREADY : IN STD_LOGIC;
    m_axi_MM_BUS_WDATA : OUT STD_LOGIC_VECTOR (127 downto 0);
    m_axi_MM_BUS_WSTRB : OUT STD_LOGIC_VECTOR (15 downto 0);
    m_axi_MM_BUS_WLAST : OUT STD_LOGIC;
    m_axi_MM_BUS_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_ARVALID : OUT STD_LOGIC;
    m_axi_MM_BUS_ARREADY : IN STD_LOGIC;
    m_axi_MM_BUS_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_MM_BUS_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_MM_BUS_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_MM_BUS_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_MM_BUS_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_MM_BUS_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_RVALID : IN STD_LOGIC;
    m_axi_MM_BUS_RREADY : OUT STD_LOGIC;
    m_axi_MM_BUS_RDATA : IN STD_LOGIC_VECTOR (127 downto 0);
    m_axi_MM_BUS_RLAST : IN STD_LOGIC;
    m_axi_MM_BUS_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_MM_BUS_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_BVALID : IN STD_LOGIC;
    m_axi_MM_BUS_BREADY : OUT STD_LOGIC;
    m_axi_MM_BUS_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_MM_BUS_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_MM_BUS_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    fifo_mm_w_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    fifo_mm_w_full_n : IN STD_LOGIC;
    fifo_mm_w_write : OUT STD_LOGIC;
    bound46 : IN STD_LOGIC_VECTOR (87 downto 0);
    N : IN STD_LOGIC_VECTOR (31 downto 0);
    bound39 : IN STD_LOGIC_VECTOR (59 downto 0);
    MM_Weight : IN STD_LOGIC_VECTOR (63 downto 0) );
end;


architecture behav of top_ConvertWeightToStream_Pipeline_VITIS_LOOP_243_5_VITIS_LOOP_246_6_VITIS_LOOP_249_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv28_0 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    constant ap_const_lv60_0 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv88_0 : STD_LOGIC_VECTOR (87 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv88_1 : STD_LOGIC_VECTOR (87 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv28_1 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv60_1 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter8 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter9 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter10 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter11 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal or_ln246_reg_409 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_io : BOOLEAN;
    signal icmp_ln243_reg_405 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter9_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state11_pp0_stage0_iter10 : BOOLEAN;
    signal icmp_ln243_reg_405_pp0_iter10_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state12_pp0_stage0_iter11 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln243_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal fifo_mm_w_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal MM_BUS_blk_n_R : STD_LOGIC;
    signal MM_BUS_blk_n_AR : STD_LOGIC;
    signal first_iter_3_reg_142 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln243_reg_405_pp0_iter2_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter4_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter5_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter6_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter7_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln243_reg_405_pp0_iter8_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln246_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln_reg_413 : STD_LOGIC_VECTOR (59 downto 0);
    signal MM_BUS_addr_read_reg_424 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_phi_mux_first_iter_3_phi_fu_146_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal sext_ln249_fu_344_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal n_fu_84 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal select_ln249_fu_302_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal m_fu_88 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    signal select_ln246_fu_250_p3 : STD_LOGIC_VECTOR (27 downto 0);
    signal indvar_flatten41_fu_92 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000000";
    signal select_ln246_1_fu_316_p3 : STD_LOGIC_VECTOR (59 downto 0);
    signal indvar_flatten53_fu_96 : STD_LOGIC_VECTOR (87 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal add_ln243_fu_192_p2 : STD_LOGIC_VECTOR (87 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal empty_354_fu_154_p0 : STD_LOGIC_VECTOR (27 downto 0);
    signal icmp_ln246_fu_201_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln249_fu_220_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln249_1_fu_225_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln249_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln249_1_fu_225_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln243_fu_206_p3 : STD_LOGIC_VECTOR (27 downto 0);
    signal select_ln243_1_fu_230_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln243_fu_214_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln246_fu_238_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal empty_354_fu_154_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_263_p3 : STD_LOGIC_VECTOR (35 downto 0);
    signal p_cast3_fu_271_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_355_fu_275_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal or_ln249_fu_296_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln249_fu_290_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add_ln246_1_fu_310_p2 : STD_LOGIC_VECTOR (59 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter7_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter8_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter9_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter10_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal empty_354_fu_154_p00 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_ce_reg : STD_LOGIC;

    component top_mul_28ns_32s_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (27 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


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
    mul_28ns_32s_32_1_1_U83 : component top_mul_28ns_32s_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 28,
        din1_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => empty_354_fu_154_p0,
        din1 => N,
        dout => empty_354_fu_154_p2);

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
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
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
                elsif (((ap_loop_exit_ready_pp0_iter10_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
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
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter10_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter10 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter11_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter11 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter8_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter8 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter9_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter9 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
                end if; 
            end if;
        end if;
    end process;


    first_iter_3_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln243_reg_405 = ap_const_lv1_0))) then 
                first_iter_3_reg_142 <= ap_const_lv1_0;
            elsif (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                first_iter_3_reg_142 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    indvar_flatten41_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten41_fu_92 <= ap_const_lv60_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln243_fu_187_p2 = ap_const_lv1_0))) then 
                    indvar_flatten41_fu_92 <= select_ln246_1_fu_316_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten53_fu_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten53_fu_96 <= ap_const_lv88_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln243_fu_187_p2 = ap_const_lv1_0))) then 
                    indvar_flatten53_fu_96 <= add_ln243_fu_192_p2;
                end if;
            end if; 
        end if;
    end process;

    m_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    m_fu_88 <= ap_const_lv28_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln243_fu_187_p2 = ap_const_lv1_0))) then 
                    m_fu_88 <= select_ln246_fu_250_p3;
                end if;
            end if; 
        end if;
    end process;

    n_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    n_fu_84 <= ap_const_lv32_0;
                elsif (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (icmp_ln243_fu_187_p2 = ap_const_lv1_0))) then 
                    n_fu_84 <= select_ln249_fu_302_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                MM_BUS_addr_read_reg_424 <= m_axi_MM_BUS_RDATA;
                ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
                ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
                ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
                icmp_ln243_reg_405_pp0_iter10_reg <= icmp_ln243_reg_405_pp0_iter9_reg;
                icmp_ln243_reg_405_pp0_iter2_reg <= icmp_ln243_reg_405;
                icmp_ln243_reg_405_pp0_iter3_reg <= icmp_ln243_reg_405_pp0_iter2_reg;
                icmp_ln243_reg_405_pp0_iter4_reg <= icmp_ln243_reg_405_pp0_iter3_reg;
                icmp_ln243_reg_405_pp0_iter5_reg <= icmp_ln243_reg_405_pp0_iter4_reg;
                icmp_ln243_reg_405_pp0_iter6_reg <= icmp_ln243_reg_405_pp0_iter5_reg;
                icmp_ln243_reg_405_pp0_iter7_reg <= icmp_ln243_reg_405_pp0_iter6_reg;
                icmp_ln243_reg_405_pp0_iter8_reg <= icmp_ln243_reg_405_pp0_iter7_reg;
                icmp_ln243_reg_405_pp0_iter9_reg <= icmp_ln243_reg_405_pp0_iter8_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
                icmp_ln243_reg_405 <= icmp_ln243_fu_187_p2;
                or_ln246_reg_409 <= or_ln246_fu_244_p2;
                trunc_ln_reg_413 <= empty_355_fu_275_p2(63 downto 4);
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

    MM_BUS_blk_n_AR_assign_proc : process(ap_enable_reg_pp0_iter2, m_axi_MM_BUS_ARREADY, or_ln246_reg_409, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (or_ln246_reg_409 = ap_const_lv1_1))) then 
            MM_BUS_blk_n_AR <= m_axi_MM_BUS_ARREADY;
        else 
            MM_BUS_blk_n_AR <= ap_const_logic_1;
        end if; 
    end process;


    MM_BUS_blk_n_R_assign_proc : process(ap_enable_reg_pp0_iter10, m_axi_MM_BUS_RVALID, icmp_ln243_reg_405_pp0_iter9_reg, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln243_reg_405_pp0_iter9_reg = ap_const_lv1_0))) then 
            MM_BUS_blk_n_R <= m_axi_MM_BUS_RVALID;
        else 
            MM_BUS_blk_n_R <= ap_const_logic_1;
        end if; 
    end process;

    add_ln243_fu_192_p2 <= std_logic_vector(unsigned(indvar_flatten53_fu_96) + unsigned(ap_const_lv88_1));
    add_ln246_1_fu_310_p2 <= std_logic_vector(unsigned(indvar_flatten41_fu_92) + unsigned(ap_const_lv60_1));
    add_ln246_fu_238_p2 <= std_logic_vector(unsigned(select_ln243_fu_206_p3) + unsigned(ap_const_lv28_1));
    add_ln249_fu_290_p2 <= std_logic_vector(unsigned(n_fu_84) + unsigned(ap_const_lv32_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_block_state11_pp0_stage0_iter10, ap_block_state12_pp0_stage0_iter11)
    begin
                ap_block_pp0_stage0_01001 <= (((ap_enable_reg_pp0_iter11 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state12_pp0_stage0_iter11)) or ((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state11_pp0_stage0_iter10)));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_block_state3_io, ap_block_state11_pp0_stage0_iter10, ap_block_state12_pp0_stage0_iter11)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter11 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state12_pp0_stage0_iter11)) or ((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state11_pp0_stage0_iter10)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_io)));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11, ap_block_state3_io, ap_block_state11_pp0_stage0_iter10, ap_block_state12_pp0_stage0_iter11)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter11 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state12_pp0_stage0_iter11)) or ((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state11_pp0_stage0_iter10)) or ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_io)));
    end process;


    ap_block_state11_pp0_stage0_iter10_assign_proc : process(m_axi_MM_BUS_RVALID, icmp_ln243_reg_405_pp0_iter9_reg)
    begin
                ap_block_state11_pp0_stage0_iter10 <= ((m_axi_MM_BUS_RVALID = ap_const_logic_0) and (icmp_ln243_reg_405_pp0_iter9_reg = ap_const_lv1_0));
    end process;


    ap_block_state12_pp0_stage0_iter11_assign_proc : process(fifo_mm_w_full_n, icmp_ln243_reg_405_pp0_iter10_reg)
    begin
                ap_block_state12_pp0_stage0_iter11 <= ((icmp_ln243_reg_405_pp0_iter10_reg = ap_const_lv1_0) and (fifo_mm_w_full_n = ap_const_logic_0));
    end process;


    ap_block_state3_io_assign_proc : process(m_axi_MM_BUS_ARREADY, or_ln246_reg_409)
    begin
                ap_block_state3_io <= ((m_axi_MM_BUS_ARREADY = ap_const_logic_0) and (or_ln246_reg_409 = ap_const_lv1_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln243_fu_187_p2)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln243_fu_187_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter10_reg)
    begin
        if (((ap_loop_exit_ready_pp0_iter10_reg = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7, ap_enable_reg_pp0_iter8, ap_enable_reg_pp0_iter9, ap_enable_reg_pp0_iter10, ap_enable_reg_pp0_iter11)
    begin
        if (((ap_enable_reg_pp0_iter11 = ap_const_logic_0) and (ap_enable_reg_pp0_iter10 = ap_const_logic_0) and (ap_enable_reg_pp0_iter9 = ap_const_logic_0) and (ap_enable_reg_pp0_iter8 = ap_const_logic_0) and (ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_phi_mux_first_iter_3_phi_fu_146_p4_assign_proc : process(ap_enable_reg_pp0_iter2, icmp_ln243_reg_405, ap_block_pp0_stage0, first_iter_3_reg_142)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln243_reg_405 = ap_const_lv1_0))) then 
            ap_phi_mux_first_iter_3_phi_fu_146_p4 <= ap_const_lv1_0;
        else 
            ap_phi_mux_first_iter_3_phi_fu_146_p4 <= first_iter_3_reg_142;
        end if; 
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    empty_354_fu_154_p0 <= empty_354_fu_154_p00(28 - 1 downto 0);
    empty_354_fu_154_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln246_fu_250_p3),32));
    empty_355_fu_275_p2 <= std_logic_vector(unsigned(p_cast3_fu_271_p1) + unsigned(MM_Weight));

    fifo_mm_w_blk_n_assign_proc : process(ap_enable_reg_pp0_iter11, fifo_mm_w_full_n, icmp_ln243_reg_405_pp0_iter10_reg, ap_block_pp0_stage0)
    begin
        if (((ap_enable_reg_pp0_iter11 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (icmp_ln243_reg_405_pp0_iter10_reg = ap_const_lv1_0))) then 
            fifo_mm_w_blk_n <= fifo_mm_w_full_n;
        else 
            fifo_mm_w_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    fifo_mm_w_din <= MM_BUS_addr_read_reg_424;

    fifo_mm_w_write_assign_proc : process(ap_enable_reg_pp0_iter11, icmp_ln243_reg_405_pp0_iter10_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter11 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln243_reg_405_pp0_iter10_reg = ap_const_lv1_0))) then 
            fifo_mm_w_write <= ap_const_logic_1;
        else 
            fifo_mm_w_write <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln243_fu_187_p2 <= "1" when (indvar_flatten53_fu_96 = bound46) else "0";
    icmp_ln246_fu_201_p2 <= "1" when (indvar_flatten41_fu_92 = bound39) else "0";
    icmp_ln249_1_fu_225_p1 <= N;
    icmp_ln249_1_fu_225_p2 <= "1" when (n_fu_84 = icmp_ln249_1_fu_225_p1) else "0";
    icmp_ln249_fu_220_p0 <= N;
    icmp_ln249_fu_220_p2 <= "1" when (icmp_ln249_fu_220_p0 = ap_const_lv32_0) else "0";
    m_axi_MM_BUS_ARADDR <= sext_ln249_fu_344_p1;
    m_axi_MM_BUS_ARBURST <= ap_const_lv2_0;
    m_axi_MM_BUS_ARCACHE <= ap_const_lv4_0;
    m_axi_MM_BUS_ARID <= ap_const_lv1_0;
    m_axi_MM_BUS_ARLEN <= N;
    m_axi_MM_BUS_ARLOCK <= ap_const_lv2_0;
    m_axi_MM_BUS_ARPROT <= ap_const_lv3_0;
    m_axi_MM_BUS_ARQOS <= ap_const_lv4_0;
    m_axi_MM_BUS_ARREGION <= ap_const_lv4_0;
    m_axi_MM_BUS_ARSIZE <= ap_const_lv3_0;
    m_axi_MM_BUS_ARUSER <= ap_const_lv1_0;

    m_axi_MM_BUS_ARVALID_assign_proc : process(ap_enable_reg_pp0_iter2, or_ln246_reg_409, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (or_ln246_reg_409 = ap_const_lv1_1))) then 
            m_axi_MM_BUS_ARVALID <= ap_const_logic_1;
        else 
            m_axi_MM_BUS_ARVALID <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_MM_BUS_AWADDR <= ap_const_lv64_0;
    m_axi_MM_BUS_AWBURST <= ap_const_lv2_0;
    m_axi_MM_BUS_AWCACHE <= ap_const_lv4_0;
    m_axi_MM_BUS_AWID <= ap_const_lv1_0;
    m_axi_MM_BUS_AWLEN <= ap_const_lv32_0;
    m_axi_MM_BUS_AWLOCK <= ap_const_lv2_0;
    m_axi_MM_BUS_AWPROT <= ap_const_lv3_0;
    m_axi_MM_BUS_AWQOS <= ap_const_lv4_0;
    m_axi_MM_BUS_AWREGION <= ap_const_lv4_0;
    m_axi_MM_BUS_AWSIZE <= ap_const_lv3_0;
    m_axi_MM_BUS_AWUSER <= ap_const_lv1_0;
    m_axi_MM_BUS_AWVALID <= ap_const_logic_0;
    m_axi_MM_BUS_BREADY <= ap_const_logic_0;

    m_axi_MM_BUS_RREADY_assign_proc : process(ap_enable_reg_pp0_iter10, icmp_ln243_reg_405_pp0_iter9_reg, ap_block_pp0_stage0_11001)
    begin
        if (((ap_enable_reg_pp0_iter10 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln243_reg_405_pp0_iter9_reg = ap_const_lv1_0))) then 
            m_axi_MM_BUS_RREADY <= ap_const_logic_1;
        else 
            m_axi_MM_BUS_RREADY <= ap_const_logic_0;
        end if; 
    end process;

    m_axi_MM_BUS_WDATA <= ap_const_lv128_lc_1;
    m_axi_MM_BUS_WID <= ap_const_lv1_0;
    m_axi_MM_BUS_WLAST <= ap_const_logic_0;
    m_axi_MM_BUS_WSTRB <= ap_const_lv16_0;
    m_axi_MM_BUS_WUSER <= ap_const_lv1_0;
    m_axi_MM_BUS_WVALID <= ap_const_logic_0;
    or_ln243_fu_214_p2 <= (icmp_ln246_fu_201_p2 or ap_phi_mux_first_iter_3_phi_fu_146_p4);
    or_ln246_fu_244_p2 <= (select_ln243_1_fu_230_p3 or or_ln243_fu_214_p2);
    or_ln249_fu_296_p2 <= (select_ln243_1_fu_230_p3 or icmp_ln246_fu_201_p2);
    p_cast3_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_263_p3),64));
    select_ln243_1_fu_230_p3 <= 
        icmp_ln249_fu_220_p2 when (icmp_ln246_fu_201_p2(0) = '1') else 
        icmp_ln249_1_fu_225_p2;
    select_ln243_fu_206_p3 <= 
        ap_const_lv28_0 when (icmp_ln246_fu_201_p2(0) = '1') else 
        m_fu_88;
    select_ln246_1_fu_316_p3 <= 
        ap_const_lv60_1 when (icmp_ln246_fu_201_p2(0) = '1') else 
        add_ln246_1_fu_310_p2;
    select_ln246_fu_250_p3 <= 
        add_ln246_fu_238_p2 when (select_ln243_1_fu_230_p3(0) = '1') else 
        select_ln243_fu_206_p3;
    select_ln249_fu_302_p3 <= 
        ap_const_lv32_1 when (or_ln249_fu_296_p2(0) = '1') else 
        add_ln249_fu_290_p2;
        sext_ln249_fu_344_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(trunc_ln_reg_413),64));

    tmp_s_fu_263_p3 <= (empty_354_fu_154_p2 & ap_const_lv4_0);
end behav;
