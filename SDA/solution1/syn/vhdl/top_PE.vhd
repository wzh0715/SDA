-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity top_PE is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    fifo_SA_A_0_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_A_0_0_empty_n : IN STD_LOGIC;
    fifo_SA_A_0_0_read : OUT STD_LOGIC;
    fifo_SA_W_0_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_W_0_0_empty_n : IN STD_LOGIC;
    fifo_SA_W_0_0_read : OUT STD_LOGIC;
    fifo_SA_O_0_0_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_O_0_0_0_full_n : IN STD_LOGIC;
    fifo_SA_O_0_0_0_write : OUT STD_LOGIC;
    fifo_SA_O_0_0_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_O_0_0_1_full_n : IN STD_LOGIC;
    fifo_SA_O_0_0_1_write : OUT STD_LOGIC;
    fifo_SA_O_0_0_2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_O_0_0_2_full_n : IN STD_LOGIC;
    fifo_SA_O_0_0_2_write : OUT STD_LOGIC;
    fifo_SA_O_0_0_3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
    fifo_SA_O_0_0_3_full_n : IN STD_LOGIC;
    fifo_SA_O_0_0_3_write : OUT STD_LOGIC;
    num : IN STD_LOGIC_VECTOR (31 downto 0);
    num_a_sa : IN STD_LOGIC_VECTOR (31 downto 0);
    mode : IN STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of top_PE is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal sub_fu_94_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_reg_144 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal sub270_fu_100_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub270_reg_149 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_1_fu_106_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_1_reg_154 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_2_fu_112_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_2_reg_159 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_3_fu_118_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal add308_3_reg_164 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_idle : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write : STD_LOGIC;
    signal grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component top_PE_Pipeline_VITIS_LOOP_378_5 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        fifo_SA_A_0_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_A_0_0_empty_n : IN STD_LOGIC;
        fifo_SA_A_0_0_read : OUT STD_LOGIC;
        fifo_SA_W_0_0_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_W_0_0_empty_n : IN STD_LOGIC;
        fifo_SA_W_0_0_read : OUT STD_LOGIC;
        fifo_SA_O_0_0_0_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_O_0_0_0_full_n : IN STD_LOGIC;
        fifo_SA_O_0_0_0_write : OUT STD_LOGIC;
        fifo_SA_O_0_0_1_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_O_0_0_1_full_n : IN STD_LOGIC;
        fifo_SA_O_0_0_1_write : OUT STD_LOGIC;
        fifo_SA_O_0_0_2_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_O_0_0_2_full_n : IN STD_LOGIC;
        fifo_SA_O_0_0_2_write : OUT STD_LOGIC;
        fifo_SA_O_0_0_3_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        fifo_SA_O_0_0_3_full_n : IN STD_LOGIC;
        fifo_SA_O_0_0_3_write : OUT STD_LOGIC;
        sub : IN STD_LOGIC_VECTOR (31 downto 0);
        mode : IN STD_LOGIC_VECTOR (0 downto 0);
        sub270 : IN STD_LOGIC_VECTOR (31 downto 0);
        num : IN STD_LOGIC_VECTOR (31 downto 0);
        num_a_sa : IN STD_LOGIC_VECTOR (31 downto 0);
        add308_3 : IN STD_LOGIC_VECTOR (31 downto 0);
        add308_2 : IN STD_LOGIC_VECTOR (31 downto 0);
        add308_1 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70 : component top_PE_Pipeline_VITIS_LOOP_378_5
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start,
        ap_done => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done,
        ap_idle => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_idle,
        ap_ready => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready,
        fifo_SA_A_0_0_dout => fifo_SA_A_0_0_dout,
        fifo_SA_A_0_0_empty_n => fifo_SA_A_0_0_empty_n,
        fifo_SA_A_0_0_read => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read,
        fifo_SA_W_0_0_dout => fifo_SA_W_0_0_dout,
        fifo_SA_W_0_0_empty_n => fifo_SA_W_0_0_empty_n,
        fifo_SA_W_0_0_read => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read,
        fifo_SA_O_0_0_0_din => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din,
        fifo_SA_O_0_0_0_full_n => fifo_SA_O_0_0_0_full_n,
        fifo_SA_O_0_0_0_write => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write,
        fifo_SA_O_0_0_1_din => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din,
        fifo_SA_O_0_0_1_full_n => fifo_SA_O_0_0_1_full_n,
        fifo_SA_O_0_0_1_write => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write,
        fifo_SA_O_0_0_2_din => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din,
        fifo_SA_O_0_0_2_full_n => fifo_SA_O_0_0_2_full_n,
        fifo_SA_O_0_0_2_write => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write,
        fifo_SA_O_0_0_3_din => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din,
        fifo_SA_O_0_0_3_full_n => fifo_SA_O_0_0_3_full_n,
        fifo_SA_O_0_0_3_write => grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write,
        sub => sub_reg_144,
        mode => mode,
        sub270 => sub270_reg_149,
        num => num,
        num_a_sa => num_a_sa,
        add308_3 => add308_3_reg_164,
        add308_2 => add308_2_reg_159,
        add308_1 => add308_1_reg_154);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_ready = ap_const_logic_1)) then 
                    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                add308_1_reg_154 <= add308_1_fu_106_p2;
                add308_2_reg_159 <= add308_2_fu_112_p2;
                add308_3_reg_164 <= add308_3_fu_118_p2;
                sub270_reg_149 <= sub270_fu_100_p2;
                sub_reg_144 <= sub_fu_94_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done, ap_CS_fsm_state3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;
    add308_1_fu_106_p2 <= std_logic_vector(unsigned(num_a_sa) + unsigned(ap_const_lv32_1));
    add308_2_fu_112_p2 <= std_logic_vector(unsigned(num_a_sa) + unsigned(ap_const_lv32_2));
    add308_3_fu_118_p2 <= std_logic_vector(unsigned(num_a_sa) + unsigned(ap_const_lv32_3));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done)
    begin
        if ((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done, ap_CS_fsm_state3)
    begin
        if ((((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done, ap_CS_fsm_state3)
    begin
        if (((grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    fifo_SA_A_0_0_read_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_A_0_0_read <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_A_0_0_read;
        else 
            fifo_SA_A_0_0_read <= ap_const_logic_0;
        end if; 
    end process;

    fifo_SA_O_0_0_0_din <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_din;

    fifo_SA_O_0_0_0_write_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_O_0_0_0_write <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_0_write;
        else 
            fifo_SA_O_0_0_0_write <= ap_const_logic_0;
        end if; 
    end process;

    fifo_SA_O_0_0_1_din <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_din;

    fifo_SA_O_0_0_1_write_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_O_0_0_1_write <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_1_write;
        else 
            fifo_SA_O_0_0_1_write <= ap_const_logic_0;
        end if; 
    end process;

    fifo_SA_O_0_0_2_din <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_din;

    fifo_SA_O_0_0_2_write_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_O_0_0_2_write <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_2_write;
        else 
            fifo_SA_O_0_0_2_write <= ap_const_logic_0;
        end if; 
    end process;

    fifo_SA_O_0_0_3_din <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_din;

    fifo_SA_O_0_0_3_write_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_O_0_0_3_write <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_O_0_0_3_write;
        else 
            fifo_SA_O_0_0_3_write <= ap_const_logic_0;
        end if; 
    end process;


    fifo_SA_W_0_0_read_assign_proc : process(grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read, ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            fifo_SA_W_0_0_read <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_fifo_SA_W_0_0_read;
        else 
            fifo_SA_W_0_0_read <= ap_const_logic_0;
        end if; 
    end process;

    grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start <= grp_PE_Pipeline_VITIS_LOOP_378_5_fu_70_ap_start_reg;
    sub270_fu_100_p2 <= std_logic_vector(unsigned(num) + unsigned(ap_const_lv32_FFFFFFFF));
    sub_fu_94_p2 <= std_logic_vector(unsigned(num_a_sa) + unsigned(ap_const_lv32_6));
end behav;
