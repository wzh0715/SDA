-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_top_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_56_2_VITIS_LOOP_59_3_VITIS_LOOP_62_4 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv_a_dout : IN STD_LOGIC_VECTOR (127 downto 0);
    conv_a_empty_n : IN STD_LOGIC;
    conv_a_read : OUT STD_LOGIC;
    conv3_samepad_din : OUT STD_LOGIC_VECTOR (127 downto 0);
    conv3_samepad_full_n : IN STD_LOGIC;
    conv3_samepad_write : OUT STD_LOGIC;
    bound78 : IN STD_LOGIC_VECTOR (119 downto 0);
    bound65 : IN STD_LOGIC_VECTOR (91 downto 0);
    div12_i_cast : IN STD_LOGIC_VECTOR (27 downto 0);
    bound58 : IN STD_LOGIC_VECTOR (59 downto 0);
    add22_i : IN STD_LOGIC_VECTOR (31 downto 0);
    add17_i : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of top_top_Pipeline_VITIS_LOOP_53_1_VITIS_LOOP_56_2_VITIS_LOOP_59_3_VITIS_LOOP_62_4 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv28_0 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    constant ap_const_lv60_0 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv92_0 : STD_LOGIC_VECTOR (91 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv120_0 : STD_LOGIC_VECTOR (119 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv120_1 : STD_LOGIC_VECTOR (119 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv28_1 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000001";
    constant ap_const_lv60_1 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv92_1 : STD_LOGIC_VECTOR (91 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal icmp_ln53_reg_526 : STD_LOGIC_VECTOR (0 downto 0);
    signal brmerge10_i_reg_530 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_predicate_op77_read_state3 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln53_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal conv3_samepad_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal conv_a_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal brmerge10_i_fu_362_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_phi_mux_outData_phi_fu_149_p4 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_phi_reg_pp0_iter2_outData_reg_145 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_phi_reg_pp0_iter0_outData_reg_145 : STD_LOGIC_VECTOR (127 downto 0);
    signal ap_phi_reg_pp0_iter1_outData_reg_145 : STD_LOGIC_VECTOR (127 downto 0);
    signal k_fu_72 : STD_LOGIC_VECTOR (27 downto 0) := "0000000000000000000000000000";
    signal k_3_fu_386_p3 : STD_LOGIC_VECTOR (27 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal x_fu_76 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal select_ln59_fu_308_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal indvar_flatten60_fu_80 : STD_LOGIC_VECTOR (59 downto 0) := "000000000000000000000000000000000000000000000000000000000000";
    signal select_ln59_1_fu_400_p3 : STD_LOGIC_VECTOR (59 downto 0);
    signal y_fu_84 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal select_ln56_2_fu_294_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal indvar_flatten73_fu_88 : STD_LOGIC_VECTOR (91 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal select_ln56_3_fu_414_p3 : STD_LOGIC_VECTOR (91 downto 0);
    signal indvar_flatten94_fu_92 : STD_LOGIC_VECTOR (119 downto 0) := "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    signal add_ln53_fu_205_p2 : STD_LOGIC_VECTOR (119 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal icmp_ln56_fu_217_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln62_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln62_1_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_fu_248_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_1_fu_253_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln53_fu_222_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln53_2_fu_258_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln56_fu_272_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln53_1_fu_240_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal y_2_fu_266_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln56_fu_278_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln56_1_fu_286_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_2_fu_302_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ult_fu_322_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp20_i_fu_316_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev_fu_327_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ult11_fu_345_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal rev12_fu_350_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal cmp16_i_fu_339_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp9_fu_356_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp10_fu_333_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln62_fu_374_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln62_1_fu_380_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln62_fu_368_p2 : STD_LOGIC_VECTOR (27 downto 0);
    signal add_ln59_1_fu_394_p2 : STD_LOGIC_VECTOR (59 downto 0);
    signal add_ln56_1_fu_408_p2 : STD_LOGIC_VECTOR (91 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_119 : BOOLEAN;
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
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
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


    ap_phi_reg_pp0_iter2_outData_reg_145_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_119)) then
                if (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (brmerge10_i_fu_362_p2 = ap_const_lv1_1))) then 
                    ap_phi_reg_pp0_iter2_outData_reg_145 <= ap_const_lv128_lc_1;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    ap_phi_reg_pp0_iter2_outData_reg_145 <= ap_phi_reg_pp0_iter1_outData_reg_145;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten60_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten60_fu_80 <= ap_const_lv60_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten60_fu_80 <= select_ln59_1_fu_400_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten73_fu_88_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten73_fu_88 <= ap_const_lv92_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten73_fu_88 <= select_ln56_3_fu_414_p3;
                end if;
            end if; 
        end if;
    end process;

    indvar_flatten94_fu_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten94_fu_92 <= ap_const_lv120_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    indvar_flatten94_fu_92 <= add_ln53_fu_205_p2;
                end if;
            end if; 
        end if;
    end process;

    k_fu_72_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_72 <= ap_const_lv28_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    k_fu_72 <= k_3_fu_386_p3;
                end if;
            end if; 
        end if;
    end process;

    x_fu_76_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    x_fu_76 <= ap_const_lv32_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    x_fu_76 <= select_ln59_fu_308_p3;
                end if;
            end if; 
        end if;
    end process;

    y_fu_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_84 <= ap_const_lv32_0;
                elsif (((icmp_ln53_fu_200_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                    y_fu_84 <= select_ln56_2_fu_294_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_phi_reg_pp0_iter1_outData_reg_145 <= ap_phi_reg_pp0_iter0_outData_reg_145;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                brmerge10_i_reg_530 <= brmerge10_i_fu_362_p2;
                icmp_ln53_reg_526 <= icmp_ln53_fu_200_p2;
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
    add_ln53_fu_205_p2 <= std_logic_vector(unsigned(indvar_flatten94_fu_92) + unsigned(ap_const_lv120_1));
    add_ln56_1_fu_408_p2 <= std_logic_vector(unsigned(indvar_flatten73_fu_88) + unsigned(ap_const_lv92_1));
    add_ln59_1_fu_394_p2 <= std_logic_vector(unsigned(indvar_flatten60_fu_80) + unsigned(ap_const_lv60_1));
    add_ln62_fu_368_p2 <= std_logic_vector(unsigned(k_fu_72) + unsigned(ap_const_lv28_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_01001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_11001 <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_state3_pp0_stage0_iter2)
    begin
                ap_block_pp0_stage0_subdone <= ((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_1 = ap_block_state3_pp0_stage0_iter2));
    end process;


    ap_block_state3_pp0_stage0_iter2_assign_proc : process(conv_a_empty_n, ap_predicate_op77_read_state3, conv3_samepad_full_n)
    begin
                ap_block_state3_pp0_stage0_iter2 <= ((conv3_samepad_full_n = ap_const_logic_0) or ((ap_predicate_op77_read_state3 = ap_const_boolean_1) and (conv_a_empty_n = ap_const_logic_0)));
    end process;


    ap_condition_119_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
                ap_condition_119 <= ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln53_fu_200_p2)
    begin
        if (((icmp_ln53_fu_200_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_phi_mux_outData_phi_fu_149_p4_assign_proc : process(conv_a_dout, icmp_ln53_reg_526, brmerge10_i_reg_530, ap_phi_reg_pp0_iter2_outData_reg_145)
    begin
        if (((brmerge10_i_reg_530 = ap_const_lv1_0) and (icmp_ln53_reg_526 = ap_const_lv1_0))) then 
            ap_phi_mux_outData_phi_fu_149_p4 <= conv_a_dout;
        else 
            ap_phi_mux_outData_phi_fu_149_p4 <= ap_phi_reg_pp0_iter2_outData_reg_145;
        end if; 
    end process;

    ap_phi_reg_pp0_iter0_outData_reg_145 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

    ap_predicate_op77_read_state3_assign_proc : process(icmp_ln53_reg_526, brmerge10_i_reg_530)
    begin
                ap_predicate_op77_read_state3 <= ((brmerge10_i_reg_530 = ap_const_lv1_0) and (icmp_ln53_reg_526 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;

    brmerge10_i_fu_362_p2 <= (tmp9_fu_356_p2 or tmp10_fu_333_p2);
    cmp16_i_fu_339_p2 <= "1" when (select_ln59_fu_308_p3 = ap_const_lv32_0) else "0";
    cmp20_i_fu_316_p2 <= "1" when (select_ln56_2_fu_294_p3 = ap_const_lv32_0) else "0";

    conv3_samepad_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, conv3_samepad_full_n, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            conv3_samepad_blk_n <= conv3_samepad_full_n;
        else 
            conv3_samepad_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    conv3_samepad_din <= ap_phi_mux_outData_phi_fu_149_p4;

    conv3_samepad_write_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            conv3_samepad_write <= ap_const_logic_1;
        else 
            conv3_samepad_write <= ap_const_logic_0;
        end if; 
    end process;


    conv_a_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, conv_a_empty_n, ap_predicate_op77_read_state3, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_predicate_op77_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            conv_a_blk_n <= conv_a_empty_n;
        else 
            conv_a_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    conv_a_read_assign_proc : process(ap_enable_reg_pp0_iter2, ap_predicate_op77_read_state3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_predicate_op77_read_state3 = ap_const_boolean_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            conv_a_read <= ap_const_logic_1;
        else 
            conv_a_read <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln53_fu_200_p2 <= "1" when (indvar_flatten94_fu_92 = bound78) else "0";
    icmp_ln56_fu_217_p2 <= "1" when (indvar_flatten73_fu_88 = bound65) else "0";
    icmp_ln59_1_fu_253_p2 <= "1" when (indvar_flatten60_fu_80 = bound58) else "0";
    icmp_ln59_fu_248_p2 <= "1" when (bound58 = ap_const_lv60_0) else "0";
    icmp_ln62_1_fu_235_p2 <= "1" when (k_fu_72 = div12_i_cast) else "0";
    icmp_ln62_fu_230_p2 <= "1" when (div12_i_cast = ap_const_lv28_0) else "0";
    k_3_fu_386_p3 <= 
        ap_const_lv28_1 when (or_ln62_1_fu_380_p2(0) = '1') else 
        add_ln62_fu_368_p2;
    or_ln56_fu_272_p2 <= (select_ln53_2_fu_258_p3 or icmp_ln56_fu_217_p2);
    or_ln62_1_fu_380_p2 <= (or_ln62_fu_374_p2 or icmp_ln56_fu_217_p2);
    or_ln62_fu_374_p2 <= (select_ln56_1_fu_286_p3 or select_ln53_2_fu_258_p3);
    rev12_fu_350_p2 <= (ult11_fu_345_p2 xor ap_const_lv1_1);
    rev_fu_327_p2 <= (ult_fu_322_p2 xor ap_const_lv1_1);
    select_ln53_1_fu_240_p3 <= 
        icmp_ln62_fu_230_p2 when (icmp_ln56_fu_217_p2(0) = '1') else 
        icmp_ln62_1_fu_235_p2;
    select_ln53_2_fu_258_p3 <= 
        icmp_ln59_fu_248_p2 when (icmp_ln56_fu_217_p2(0) = '1') else 
        icmp_ln59_1_fu_253_p2;
    select_ln53_fu_222_p3 <= 
        ap_const_lv32_0 when (icmp_ln56_fu_217_p2(0) = '1') else 
        y_fu_84;
    select_ln56_1_fu_286_p3 <= 
        icmp_ln62_fu_230_p2 when (select_ln53_2_fu_258_p3(0) = '1') else 
        select_ln53_1_fu_240_p3;
    select_ln56_2_fu_294_p3 <= 
        y_2_fu_266_p2 when (select_ln53_2_fu_258_p3(0) = '1') else 
        select_ln53_fu_222_p3;
    select_ln56_3_fu_414_p3 <= 
        ap_const_lv92_1 when (icmp_ln56_fu_217_p2(0) = '1') else 
        add_ln56_1_fu_408_p2;
    select_ln56_fu_278_p3 <= 
        ap_const_lv32_0 when (or_ln56_fu_272_p2(0) = '1') else 
        x_fu_76;
    select_ln59_1_fu_400_p3 <= 
        ap_const_lv60_1 when (or_ln56_fu_272_p2(0) = '1') else 
        add_ln59_1_fu_394_p2;
    select_ln59_fu_308_p3 <= 
        x_2_fu_302_p2 when (select_ln56_1_fu_286_p3(0) = '1') else 
        select_ln56_fu_278_p3;
    tmp10_fu_333_p2 <= (rev_fu_327_p2 or cmp20_i_fu_316_p2);
    tmp9_fu_356_p2 <= (rev12_fu_350_p2 or cmp16_i_fu_339_p2);
    ult11_fu_345_p2 <= "1" when (unsigned(select_ln59_fu_308_p3) < unsigned(add17_i)) else "0";
    ult_fu_322_p2 <= "1" when (unsigned(select_ln56_2_fu_294_p3) < unsigned(add22_i)) else "0";
    x_2_fu_302_p2 <= std_logic_vector(unsigned(select_ln56_fu_278_p3) + unsigned(ap_const_lv32_1));
    y_2_fu_266_p2 <= std_logic_vector(unsigned(select_ln53_fu_222_p3) + unsigned(ap_const_lv32_1));
end behav;
