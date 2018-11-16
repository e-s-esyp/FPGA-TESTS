-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "02/04/2018 13:22:39"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test0 IS
    PORT (
	\pin_CLOCK(n)\ : OUT std_logic;
	\pin_TMDS[2](n)\ : OUT std_logic;
	\pin_TMDS[1](n)\ : OUT std_logic;
	\pin_TMDS[0](n)\ : OUT std_logic;
	pin_CLOCK : OUT std_logic;
	CLOCK_50 : IN std_logic;
	pin_LED : OUT std_logic_vector(7 DOWNTO 0);
	pin_TMDS : OUT std_logic_vector(2 DOWNTO 0)
	);
END test0;

-- Design Ports Information
-- pin_CLOCK	=>  Location: PIN_F8,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- pin_TMDS[2]	=>  Location: PIN_B7,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_TMDS[1]	=>  Location: PIN_B6,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_TMDS[0]	=>  Location: PIN_B5,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pin_CLOCK(n)	=>  Location: PIN_E8,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_TMDS[2](n)	=>  Location: PIN_A7,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_TMDS[1](n)	=>  Location: PIN_A6,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current
-- pin_TMDS[0](n)	=>  Location: PIN_A5,	 I/O Standard: LVDS_E_3R,	 Current Strength: Maximum Current


ARCHITECTURE structure OF test0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_pin_CLOCK(n)\ : std_logic;
SIGNAL \ww_pin_TMDS[2](n)\ : std_logic;
SIGNAL \ww_pin_TMDS[1](n)\ : std_logic;
SIGNAL \ww_pin_TMDS[0](n)\ : std_logic;
SIGNAL ww_pin_CLOCK : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_pin_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pin_TMDS : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|num[7]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|num[7]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|inPix[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|num[7]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|TDMS[2]~19clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|CL~0_combout\ : std_logic;
SIGNAL \inst|CL~q\ : std_logic;
SIGNAL \pin_CLOCK~output_pseudo_diff_o\ : std_logic;
SIGNAL \inst|inPix~6_combout\ : std_logic;
SIGNAL \inst|inPix[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|num[0]~21_combout\ : std_logic;
SIGNAL \inst4|num[1]~7_combout\ : std_logic;
SIGNAL \inst4|num[1]~8\ : std_logic;
SIGNAL \inst4|num[2]~9_combout\ : std_logic;
SIGNAL \inst4|num[2]~10\ : std_logic;
SIGNAL \inst4|num[3]~11_combout\ : std_logic;
SIGNAL \inst4|num[3]~12\ : std_logic;
SIGNAL \inst4|num[4]~13_combout\ : std_logic;
SIGNAL \inst4|num[4]~14\ : std_logic;
SIGNAL \inst4|num[5]~15_combout\ : std_logic;
SIGNAL \inst4|num[5]~16\ : std_logic;
SIGNAL \inst4|num[6]~17_combout\ : std_logic;
SIGNAL \inst4|num[6]~18\ : std_logic;
SIGNAL \inst4|num[7]~19_combout\ : std_logic;
SIGNAL \inst4|num[7]~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|num[0]~21_combout\ : std_logic;
SIGNAL \inst5|num[1]~7_combout\ : std_logic;
SIGNAL \inst5|num[1]~8\ : std_logic;
SIGNAL \inst5|num[2]~9_combout\ : std_logic;
SIGNAL \inst5|num[2]~10\ : std_logic;
SIGNAL \inst5|num[3]~11_combout\ : std_logic;
SIGNAL \inst5|num[3]~12\ : std_logic;
SIGNAL \inst5|num[4]~13_combout\ : std_logic;
SIGNAL \inst5|num[4]~14\ : std_logic;
SIGNAL \inst5|num[5]~15_combout\ : std_logic;
SIGNAL \inst5|num[5]~16\ : std_logic;
SIGNAL \inst5|num[6]~17_combout\ : std_logic;
SIGNAL \inst5|num[6]~18\ : std_logic;
SIGNAL \inst5|num[7]~19_combout\ : std_logic;
SIGNAL \inst5|num[7]~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|num[0]~21_combout\ : std_logic;
SIGNAL \inst6|num[1]~7_combout\ : std_logic;
SIGNAL \inst6|num[1]~8\ : std_logic;
SIGNAL \inst6|num[2]~9_combout\ : std_logic;
SIGNAL \inst6|num[2]~10\ : std_logic;
SIGNAL \inst6|num[3]~11_combout\ : std_logic;
SIGNAL \inst6|num[3]~12\ : std_logic;
SIGNAL \inst6|num[4]~13_combout\ : std_logic;
SIGNAL \inst6|num[4]~14\ : std_logic;
SIGNAL \inst6|num[5]~15_combout\ : std_logic;
SIGNAL \inst6|num[5]~16\ : std_logic;
SIGNAL \inst6|num[6]~17_combout\ : std_logic;
SIGNAL \inst6|num[6]~18\ : std_logic;
SIGNAL \inst6|num[7]~19_combout\ : std_logic;
SIGNAL \inst6|num[7]~clkctrl_outclk\ : std_logic;
SIGNAL \inst14|num[0]~21_combout\ : std_logic;
SIGNAL \inst14|num[1]~7_combout\ : std_logic;
SIGNAL \inst14|num[1]~8\ : std_logic;
SIGNAL \inst14|num[2]~9_combout\ : std_logic;
SIGNAL \inst14|num[2]~10\ : std_logic;
SIGNAL \inst14|num[3]~11_combout\ : std_logic;
SIGNAL \inst14|num[3]~12\ : std_logic;
SIGNAL \inst14|num[4]~13_combout\ : std_logic;
SIGNAL \inst14|num[4]~14\ : std_logic;
SIGNAL \inst14|num[5]~15_combout\ : std_logic;
SIGNAL \inst14|num[5]~16\ : std_logic;
SIGNAL \inst14|num[6]~17_combout\ : std_logic;
SIGNAL \inst14|num[6]~18\ : std_logic;
SIGNAL \inst14|num[7]~19_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Y~4_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|X~1_combout\ : std_logic;
SIGNAL \inst|Add3~15\ : std_logic;
SIGNAL \inst|Add3~16_combout\ : std_logic;
SIGNAL \inst|Add3~17\ : std_logic;
SIGNAL \inst|Add3~18_combout\ : std_logic;
SIGNAL \inst19~2_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \inst|Add3~19\ : std_logic;
SIGNAL \inst|Add3~20_combout\ : std_logic;
SIGNAL \inst|X~2_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|X~3_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|X~0_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \inst|Y[0]~1_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Y~6_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~15\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|Add2~17\ : std_logic;
SIGNAL \inst|Add2~18_combout\ : std_logic;
SIGNAL \inst|Y~5_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Y~7_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Y~0_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|Equal8~2_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Y~2_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Y~3_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst19~1_combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst19~3_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|inPix~1_combout\ : std_logic;
SIGNAL \inst8|LessThan1~0_combout\ : std_logic;
SIGNAL \inst8|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|inPix~0_combout\ : std_logic;
SIGNAL \inst|frame[0]~14_combout\ : std_logic;
SIGNAL \inst|frame[1]~9_combout\ : std_logic;
SIGNAL \inst|frame[0]~13_combout\ : std_logic;
SIGNAL \inst|frame[1]~10\ : std_logic;
SIGNAL \inst|frame[2]~11_combout\ : std_logic;
SIGNAL \inst|frame[2]~12\ : std_logic;
SIGNAL \inst|frame[3]~15_combout\ : std_logic;
SIGNAL \inst8|Add1~1\ : std_logic;
SIGNAL \inst8|Add1~3\ : std_logic;
SIGNAL \inst8|Add1~5\ : std_logic;
SIGNAL \inst8|Add1~6_combout\ : std_logic;
SIGNAL \inst|frame[3]~16\ : std_logic;
SIGNAL \inst|frame[4]~17_combout\ : std_logic;
SIGNAL \inst8|Add1~7\ : std_logic;
SIGNAL \inst8|Add1~8_combout\ : std_logic;
SIGNAL \inst|inPix~3_combout\ : std_logic;
SIGNAL \inst|inPix~2_combout\ : std_logic;
SIGNAL \inst|frame[4]~18\ : std_logic;
SIGNAL \inst|frame[5]~19_combout\ : std_logic;
SIGNAL \inst8|Add1~9\ : std_logic;
SIGNAL \inst8|Add1~10_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~4_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~5_combout\ : std_logic;
SIGNAL \inst8|Add1~4_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~6_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~0_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~3_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~7_combout\ : std_logic;
SIGNAL \inst|inPix~5_combout\ : std_logic;
SIGNAL \inst|DE~0_combout\ : std_logic;
SIGNAL \inst|DE~1_combout\ : std_logic;
SIGNAL \inst|DE~2_combout\ : std_logic;
SIGNAL \inst|DE~q\ : std_logic;
SIGNAL \inst|inPix~4_combout\ : std_logic;
SIGNAL \inst|Equal10~0_combout\ : std_logic;
SIGNAL \inst|VS~q\ : std_logic;
SIGNAL \inst7|TDMS[2]~1_combout\ : std_logic;
SIGNAL \inst|frame[5]~20\ : std_logic;
SIGNAL \inst|frame[6]~21_combout\ : std_logic;
SIGNAL \inst|frame[6]~22\ : std_logic;
SIGNAL \inst|frame[7]~23_combout\ : std_logic;
SIGNAL \inst|frame[7]~24\ : std_logic;
SIGNAL \inst|frame[8]~25_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|frame[8]~26\ : std_logic;
SIGNAL \inst|frame[9]~27_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|HS~q\ : std_logic;
SIGNAL \inst7|TDMS[2]~2_combout\ : std_logic;
SIGNAL \inst18|inst4|v~0_combout\ : std_logic;
SIGNAL \inst18|inst4|v~1_combout\ : std_logic;
SIGNAL \inst18|inst4|v~2_combout\ : std_logic;
SIGNAL \inst18|inst5|v~1_combout\ : std_logic;
SIGNAL \inst18|inst5|v~0_combout\ : std_logic;
SIGNAL \inst18|inst5|v~2_combout\ : std_logic;
SIGNAL \inst18|inst17|8~3_combout\ : std_logic;
SIGNAL \inst18|inst17|8~1_combout\ : std_logic;
SIGNAL \inst18|inst17|8~0_combout\ : std_logic;
SIGNAL \inst18|inst17|8~2_combout\ : std_logic;
SIGNAL \inst18|inst17|8~5_combout\ : std_logic;
SIGNAL \inst18|inst17|8~4_combout\ : std_logic;
SIGNAL \inst18|inst17|8~6_combout\ : std_logic;
SIGNAL \inst18|inst17|8~7_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~11_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~12_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~13_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~14_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~9_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~10_combout\ : std_logic;
SIGNAL \inst18|inst3|v~0_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~41_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~42_combout\ : std_logic;
SIGNAL \inst18|inst1|v~2_combout\ : std_logic;
SIGNAL \inst18|inst1|v~0_combout\ : std_logic;
SIGNAL \inst18|inst1|v~1_combout\ : std_logic;
SIGNAL \inst18|inst1|v~3_combout\ : std_logic;
SIGNAL \inst18|inst0|v~0_combout\ : std_logic;
SIGNAL \inst18|inst0|v~1_combout\ : std_logic;
SIGNAL \inst18|inst0|v~2_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~8_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~15_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~39_combout\ : std_logic;
SIGNAL \inst18|inst3|v~3_combout\ : std_logic;
SIGNAL \inst18|inst3|v~4_combout\ : std_logic;
SIGNAL \inst18|inst3|v~1_combout\ : std_logic;
SIGNAL \inst18|inst3|v~2_combout\ : std_logic;
SIGNAL \inst18|inst3|v~5_combout\ : std_logic;
SIGNAL \inst18|inst2|v~3_combout\ : std_logic;
SIGNAL \inst18|inst2|v~4_combout\ : std_logic;
SIGNAL \inst18|inst2|v~5_combout\ : std_logic;
SIGNAL \inst18|inst2|v~0_combout\ : std_logic;
SIGNAL \inst18|inst2|v~1_combout\ : std_logic;
SIGNAL \inst18|inst2|v~2_combout\ : std_logic;
SIGNAL \inst18|inst2|v~6_combout\ : std_logic;
SIGNAL \inst18|inst17|49~0_combout\ : std_logic;
SIGNAL \inst18|inst17|49~1_combout\ : std_logic;
SIGNAL \inst18|inst17|46~0_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~16_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~17_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~40_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~18_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~19_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~19clkctrl_outclk\ : std_logic;
SIGNAL \pin_TMDS[2]~output_pseudo_diff_o\ : std_logic;
SIGNAL \inst8|Add1~0_combout\ : std_logic;
SIGNAL \inst8|Add1~2_combout\ : std_logic;
SIGNAL \inst8|G[5]~2_combout\ : std_logic;
SIGNAL \inst8|G[5]~3_combout\ : std_logic;
SIGNAL \inst8|LessThan2~0_combout\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|G[5]~0_combout\ : std_logic;
SIGNAL \inst8|G[5]~1_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~20_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~21_combout\ : std_logic;
SIGNAL \inst8|G[1]~4_combout\ : std_logic;
SIGNAL \inst8|G[1]~5_combout\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~22_combout\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|G[1]~6_combout\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|G[1]~7_combout\ : std_logic;
SIGNAL \inst8|G[1]~8_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~37_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~38_combout\ : std_logic;
SIGNAL \inst7|TDMS[1]~23_combout\ : std_logic;
SIGNAL \pin_TMDS[1]~output_pseudo_diff_o\ : std_logic;
SIGNAL \inst8|B~1_combout\ : std_logic;
SIGNAL \inst8|B~0_combout\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|B~2_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~24_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~35_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~28_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~29_combout\ : std_logic;
SIGNAL \inst7|TDMS[2]~30_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~31_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~32_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~25_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~26_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~27_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~36_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~33_combout\ : std_logic;
SIGNAL \inst7|TDMS[0]~34_combout\ : std_logic;
SIGNAL \pin_TMDS[0]~output_pseudo_diff_o\ : std_logic;
SIGNAL \pin_CLOCK~output_pseudo_diffoutn\ : std_logic;
SIGNAL \pin_TMDS[2]~output_pseudo_diffoutn\ : std_logic;
SIGNAL \pin_TMDS[1]~output_pseudo_diffoutn\ : std_logic;
SIGNAL \pin_TMDS[0]~output_pseudo_diffoutn\ : std_logic;
SIGNAL \inst14|num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|frame\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst7|TDMS\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Y\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|num\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|inPix\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|X\ : std_logic_vector(10 DOWNTO 0);

BEGIN

\pin_CLOCK(n)\ <= \ww_pin_CLOCK(n)\;
\pin_TMDS[2](n)\ <= \ww_pin_TMDS[2](n)\;
\pin_TMDS[1](n)\ <= \ww_pin_TMDS[1](n)\;
\pin_TMDS[0](n)\ <= \ww_pin_TMDS[0](n)\;
pin_CLOCK <= ww_pin_CLOCK;
ww_CLOCK_50 <= CLOCK_50;
pin_LED <= ww_pin_LED;
pin_TMDS <= ww_pin_TMDS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \CLOCK_50~input_o\);

\inst1|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst1|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst1|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst5|num[7]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|num\(7));

\inst4|num[7]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|num\(7));

\inst|inPix[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|inPix\(0));

\inst6|num[7]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|num\(7));

\inst7|TDMS[2]~19clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|TDMS[2]~19_combout\);

\inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|altpll_component|auto_generated|wire_pll1_clk\(1));

-- Location: IOOBUF_X20_Y34_N16
\pin_CLOCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_CLOCK~output_pseudo_diff_o\,
	devoe => ww_devoe,
	o => ww_pin_CLOCK);

-- Location: IOOBUF_X0_Y10_N23
\pin_LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(7),
	devoe => ww_devoe,
	o => ww_pin_LED(7));

-- Location: IOOBUF_X0_Y28_N9
\pin_LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(6),
	devoe => ww_devoe,
	o => ww_pin_LED(6));

-- Location: IOOBUF_X0_Y26_N16
\pin_LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(5),
	devoe => ww_devoe,
	o => ww_pin_LED(5));

-- Location: IOOBUF_X0_Y25_N9
\pin_LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(4),
	devoe => ww_devoe,
	o => ww_pin_LED(4));

-- Location: IOOBUF_X40_Y34_N2
\pin_LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(3),
	devoe => ww_devoe,
	o => ww_pin_LED(3));

-- Location: IOOBUF_X49_Y34_N9
\pin_LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(2),
	devoe => ww_devoe,
	o => ww_pin_LED(2));

-- Location: IOOBUF_X49_Y34_N2
\pin_LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(1),
	devoe => ww_devoe,
	o => ww_pin_LED(1));

-- Location: IOOBUF_X38_Y34_N16
\pin_LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|num\(0),
	devoe => ww_devoe,
	o => ww_pin_LED(0));

-- Location: IOOBUF_X18_Y34_N2
\pin_TMDS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[2]~output_pseudo_diff_o\,
	devoe => ww_devoe,
	o => ww_pin_TMDS(2));

-- Location: IOOBUF_X16_Y34_N9
\pin_TMDS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[1]~output_pseudo_diff_o\,
	devoe => ww_devoe,
	o => ww_pin_TMDS(1));

-- Location: IOOBUF_X11_Y34_N2
\pin_TMDS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[0]~output_pseudo_diff_o\,
	devoe => ww_devoe,
	o => ww_pin_TMDS(0));

-- Location: IOOBUF_X20_Y34_N9
\pin_CLOCK~output(n)\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_CLOCK~output_pseudo_diffoutn\,
	devoe => ww_devoe,
	o => \ww_pin_CLOCK(n)\);

-- Location: IOOBUF_X20_Y34_N23
\pin_TMDS[2]~output(n)\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[2]~output_pseudo_diffoutn\,
	devoe => ww_devoe,
	o => \ww_pin_TMDS[2](n)\);

-- Location: IOOBUF_X16_Y34_N2
\pin_TMDS[1]~output(n)\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[1]~output_pseudo_diffoutn\,
	devoe => ww_devoe,
	o => \ww_pin_TMDS[1](n)\);

-- Location: IOOBUF_X14_Y34_N23
\pin_TMDS[0]~output(n)\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pin_TMDS[0]~output_pseudo_diffoutn\,
	devoe => ww_devoe,
	o => \ww_pin_TMDS[0](n)\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLL_4
\inst1|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 1,
	c0_initial => 1,
	c0_low => 0,
	c0_mode => "bypass",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "unused",
	clk0_divide_by => 0,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 0,
	clk0_phase_shift => "0",
	clk1_counter => "c0",
	clk1_divide_by => 1,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 7,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock1",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 7,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 357,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst1|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst1|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst1|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y26_N26
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & \inst|counter\(0))) # (!\inst|counter\(1) & (\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|counter~0_combout\);

-- Location: FF_X36_Y26_N27
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X36_Y26_N14
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|counter\(0) & (!\inst|counter\(1))) # (!\inst|counter\(0) & (\inst|counter\(1) & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|counter~2_combout\);

-- Location: FF_X36_Y26_N15
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X36_Y26_N12
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|counter\(0) & ((!\inst|counter\(2)) # (!\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|counter~1_combout\);

-- Location: FF_X36_Y26_N13
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X36_Y26_N16
\inst|CL~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|CL~0_combout\ = (\inst|counter\(0) & ((\inst|CL~q\) # ((!\inst|counter\(1) & \inst|counter\(2))))) # (!\inst|counter\(0) & ((\inst|counter\(2) & ((\inst|CL~q\))) # (!\inst|counter\(2) & (!\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|CL~q\,
	datad => \inst|counter\(2),
	combout => \inst|CL~0_combout\);

-- Location: FF_X36_Y26_N17
\inst|CL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|CL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|CL~q\);

-- Location: PSEUDODIFFOUT_X20_Y34_N20
\pin_CLOCK~output_pseudo_diff\ : cycloneive_pseudo_diff_out
PORT MAP (
	i => \inst|CL~q\,
	o => \pin_CLOCK~output_pseudo_diff_o\,
	obar => \pin_CLOCK~output_pseudo_diffoutn\);

-- Location: LCCOMB_X36_Y26_N10
\inst|inPix~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~6_combout\ = (\inst|counter\(0) & (((\inst|inPix\(0))))) # (!\inst|counter\(0) & ((\inst|counter\(1) & ((\inst|inPix\(0)) # (\inst|counter\(2)))) # (!\inst|counter\(1) & (\inst|inPix\(0) & \inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(0),
	datad => \inst|counter\(2),
	combout => \inst|inPix~6_combout\);

-- Location: FF_X36_Y26_N11
\inst|inPix[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(0));

-- Location: CLKCTRL_G14
\inst|inPix[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|inPix[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|inPix[0]~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N24
\inst4|num[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[0]~21_combout\ = !\inst4|num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|num\(0),
	combout => \inst4|num[0]~21_combout\);

-- Location: FF_X52_Y17_N25
\inst4|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(0));

-- Location: LCCOMB_X52_Y17_N2
\inst4|num[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[1]~7_combout\ = (\inst4|num\(0) & (\inst4|num\(1) $ (VCC))) # (!\inst4|num\(0) & (\inst4|num\(1) & VCC))
-- \inst4|num[1]~8\ = CARRY((\inst4|num\(0) & \inst4|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|num\(1),
	datad => VCC,
	combout => \inst4|num[1]~7_combout\,
	cout => \inst4|num[1]~8\);

-- Location: FF_X52_Y17_N3
\inst4|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(1));

-- Location: LCCOMB_X52_Y17_N4
\inst4|num[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[2]~9_combout\ = (\inst4|num\(2) & (!\inst4|num[1]~8\)) # (!\inst4|num\(2) & ((\inst4|num[1]~8\) # (GND)))
-- \inst4|num[2]~10\ = CARRY((!\inst4|num[1]~8\) # (!\inst4|num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(2),
	datad => VCC,
	cin => \inst4|num[1]~8\,
	combout => \inst4|num[2]~9_combout\,
	cout => \inst4|num[2]~10\);

-- Location: FF_X52_Y17_N5
\inst4|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(2));

-- Location: LCCOMB_X52_Y17_N6
\inst4|num[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[3]~11_combout\ = (\inst4|num\(3) & (\inst4|num[2]~10\ $ (GND))) # (!\inst4|num\(3) & (!\inst4|num[2]~10\ & VCC))
-- \inst4|num[3]~12\ = CARRY((\inst4|num\(3) & !\inst4|num[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(3),
	datad => VCC,
	cin => \inst4|num[2]~10\,
	combout => \inst4|num[3]~11_combout\,
	cout => \inst4|num[3]~12\);

-- Location: FF_X52_Y17_N7
\inst4|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(3));

-- Location: LCCOMB_X52_Y17_N8
\inst4|num[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[4]~13_combout\ = (\inst4|num\(4) & (!\inst4|num[3]~12\)) # (!\inst4|num\(4) & ((\inst4|num[3]~12\) # (GND)))
-- \inst4|num[4]~14\ = CARRY((!\inst4|num[3]~12\) # (!\inst4|num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(4),
	datad => VCC,
	cin => \inst4|num[3]~12\,
	combout => \inst4|num[4]~13_combout\,
	cout => \inst4|num[4]~14\);

-- Location: FF_X52_Y17_N9
\inst4|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(4));

-- Location: LCCOMB_X52_Y17_N10
\inst4|num[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[5]~15_combout\ = (\inst4|num\(5) & (\inst4|num[4]~14\ $ (GND))) # (!\inst4|num\(5) & (!\inst4|num[4]~14\ & VCC))
-- \inst4|num[5]~16\ = CARRY((\inst4|num\(5) & !\inst4|num[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(5),
	datad => VCC,
	cin => \inst4|num[4]~14\,
	combout => \inst4|num[5]~15_combout\,
	cout => \inst4|num[5]~16\);

-- Location: FF_X52_Y17_N11
\inst4|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(5));

-- Location: LCCOMB_X52_Y17_N12
\inst4|num[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[6]~17_combout\ = (\inst4|num\(6) & (!\inst4|num[5]~16\)) # (!\inst4|num\(6) & ((\inst4|num[5]~16\) # (GND)))
-- \inst4|num[6]~18\ = CARRY((!\inst4|num[5]~16\) # (!\inst4|num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(6),
	datad => VCC,
	cin => \inst4|num[5]~16\,
	combout => \inst4|num[6]~17_combout\,
	cout => \inst4|num[6]~18\);

-- Location: FF_X52_Y17_N13
\inst4|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(6));

-- Location: LCCOMB_X52_Y17_N14
\inst4|num[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num[7]~19_combout\ = \inst4|num\(7) $ (!\inst4|num[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(7),
	cin => \inst4|num[6]~18\,
	combout => \inst4|num[7]~19_combout\);

-- Location: FF_X52_Y17_N15
\inst4|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inPix[0]~clkctrl_outclk\,
	d => \inst4|num[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(7));

-- Location: CLKCTRL_G8
\inst4|num[7]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|num[7]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|num[7]~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N24
\inst5|num[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[0]~21_combout\ = !\inst5|num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|num\(0),
	combout => \inst5|num[0]~21_combout\);

-- Location: FF_X27_Y1_N25
\inst5|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(0));

-- Location: LCCOMB_X27_Y1_N4
\inst5|num[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[1]~7_combout\ = (\inst5|num\(0) & (\inst5|num\(1) $ (VCC))) # (!\inst5|num\(0) & (\inst5|num\(1) & VCC))
-- \inst5|num[1]~8\ = CARRY((\inst5|num\(0) & \inst5|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|num\(0),
	datab => \inst5|num\(1),
	datad => VCC,
	combout => \inst5|num[1]~7_combout\,
	cout => \inst5|num[1]~8\);

-- Location: FF_X27_Y1_N5
\inst5|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(1));

-- Location: LCCOMB_X27_Y1_N6
\inst5|num[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[2]~9_combout\ = (\inst5|num\(2) & (!\inst5|num[1]~8\)) # (!\inst5|num\(2) & ((\inst5|num[1]~8\) # (GND)))
-- \inst5|num[2]~10\ = CARRY((!\inst5|num[1]~8\) # (!\inst5|num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|num\(2),
	datad => VCC,
	cin => \inst5|num[1]~8\,
	combout => \inst5|num[2]~9_combout\,
	cout => \inst5|num[2]~10\);

-- Location: FF_X27_Y1_N7
\inst5|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(2));

-- Location: LCCOMB_X27_Y1_N8
\inst5|num[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[3]~11_combout\ = (\inst5|num\(3) & (\inst5|num[2]~10\ $ (GND))) # (!\inst5|num\(3) & (!\inst5|num[2]~10\ & VCC))
-- \inst5|num[3]~12\ = CARRY((\inst5|num\(3) & !\inst5|num[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|num\(3),
	datad => VCC,
	cin => \inst5|num[2]~10\,
	combout => \inst5|num[3]~11_combout\,
	cout => \inst5|num[3]~12\);

-- Location: FF_X27_Y1_N9
\inst5|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(3));

-- Location: LCCOMB_X27_Y1_N10
\inst5|num[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[4]~13_combout\ = (\inst5|num\(4) & (!\inst5|num[3]~12\)) # (!\inst5|num\(4) & ((\inst5|num[3]~12\) # (GND)))
-- \inst5|num[4]~14\ = CARRY((!\inst5|num[3]~12\) # (!\inst5|num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|num\(4),
	datad => VCC,
	cin => \inst5|num[3]~12\,
	combout => \inst5|num[4]~13_combout\,
	cout => \inst5|num[4]~14\);

-- Location: FF_X27_Y1_N11
\inst5|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(4));

-- Location: LCCOMB_X27_Y1_N12
\inst5|num[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[5]~15_combout\ = (\inst5|num\(5) & (\inst5|num[4]~14\ $ (GND))) # (!\inst5|num\(5) & (!\inst5|num[4]~14\ & VCC))
-- \inst5|num[5]~16\ = CARRY((\inst5|num\(5) & !\inst5|num[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|num\(5),
	datad => VCC,
	cin => \inst5|num[4]~14\,
	combout => \inst5|num[5]~15_combout\,
	cout => \inst5|num[5]~16\);

-- Location: FF_X27_Y1_N13
\inst5|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(5));

-- Location: LCCOMB_X27_Y1_N14
\inst5|num[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[6]~17_combout\ = (\inst5|num\(6) & (!\inst5|num[5]~16\)) # (!\inst5|num\(6) & ((\inst5|num[5]~16\) # (GND)))
-- \inst5|num[6]~18\ = CARRY((!\inst5|num[5]~16\) # (!\inst5|num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|num\(6),
	datad => VCC,
	cin => \inst5|num[5]~16\,
	combout => \inst5|num[6]~17_combout\,
	cout => \inst5|num[6]~18\);

-- Location: FF_X27_Y1_N15
\inst5|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(6));

-- Location: LCCOMB_X27_Y1_N16
\inst5|num[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|num[7]~19_combout\ = \inst5|num[6]~18\ $ (!\inst5|num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|num\(7),
	cin => \inst5|num[6]~18\,
	combout => \inst5|num[7]~19_combout\);

-- Location: FF_X27_Y1_N17
\inst5|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|num[7]~clkctrl_outclk\,
	d => \inst5|num[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|num\(7));

-- Location: CLKCTRL_G17
\inst5|num[7]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|num[7]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|num[7]~clkctrl_outclk\);

-- Location: LCCOMB_X49_Y20_N8
\inst6|num[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[0]~21_combout\ = !\inst6|num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|num\(0),
	combout => \inst6|num[0]~21_combout\);

-- Location: FF_X49_Y20_N9
\inst6|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(0));

-- Location: LCCOMB_X49_Y20_N10
\inst6|num[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[1]~7_combout\ = (\inst6|num\(1) & (\inst6|num\(0) $ (VCC))) # (!\inst6|num\(1) & (\inst6|num\(0) & VCC))
-- \inst6|num[1]~8\ = CARRY((\inst6|num\(1) & \inst6|num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|num\(1),
	datab => \inst6|num\(0),
	datad => VCC,
	combout => \inst6|num[1]~7_combout\,
	cout => \inst6|num[1]~8\);

-- Location: FF_X49_Y20_N11
\inst6|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(1));

-- Location: LCCOMB_X49_Y20_N12
\inst6|num[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[2]~9_combout\ = (\inst6|num\(2) & (!\inst6|num[1]~8\)) # (!\inst6|num\(2) & ((\inst6|num[1]~8\) # (GND)))
-- \inst6|num[2]~10\ = CARRY((!\inst6|num[1]~8\) # (!\inst6|num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|num\(2),
	datad => VCC,
	cin => \inst6|num[1]~8\,
	combout => \inst6|num[2]~9_combout\,
	cout => \inst6|num[2]~10\);

-- Location: FF_X49_Y20_N13
\inst6|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(2));

-- Location: LCCOMB_X49_Y20_N14
\inst6|num[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[3]~11_combout\ = (\inst6|num\(3) & (\inst6|num[2]~10\ $ (GND))) # (!\inst6|num\(3) & (!\inst6|num[2]~10\ & VCC))
-- \inst6|num[3]~12\ = CARRY((\inst6|num\(3) & !\inst6|num[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|num\(3),
	datad => VCC,
	cin => \inst6|num[2]~10\,
	combout => \inst6|num[3]~11_combout\,
	cout => \inst6|num[3]~12\);

-- Location: FF_X49_Y20_N15
\inst6|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(3));

-- Location: LCCOMB_X49_Y20_N16
\inst6|num[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[4]~13_combout\ = (\inst6|num\(4) & (!\inst6|num[3]~12\)) # (!\inst6|num\(4) & ((\inst6|num[3]~12\) # (GND)))
-- \inst6|num[4]~14\ = CARRY((!\inst6|num[3]~12\) # (!\inst6|num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|num\(4),
	datad => VCC,
	cin => \inst6|num[3]~12\,
	combout => \inst6|num[4]~13_combout\,
	cout => \inst6|num[4]~14\);

-- Location: FF_X49_Y20_N17
\inst6|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(4));

-- Location: LCCOMB_X49_Y20_N18
\inst6|num[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[5]~15_combout\ = (\inst6|num\(5) & (\inst6|num[4]~14\ $ (GND))) # (!\inst6|num\(5) & (!\inst6|num[4]~14\ & VCC))
-- \inst6|num[5]~16\ = CARRY((\inst6|num\(5) & !\inst6|num[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|num\(5),
	datad => VCC,
	cin => \inst6|num[4]~14\,
	combout => \inst6|num[5]~15_combout\,
	cout => \inst6|num[5]~16\);

-- Location: FF_X49_Y20_N19
\inst6|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(5));

-- Location: LCCOMB_X49_Y20_N20
\inst6|num[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[6]~17_combout\ = (\inst6|num\(6) & (!\inst6|num[5]~16\)) # (!\inst6|num\(6) & ((\inst6|num[5]~16\) # (GND)))
-- \inst6|num[6]~18\ = CARRY((!\inst6|num[5]~16\) # (!\inst6|num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|num\(6),
	datad => VCC,
	cin => \inst6|num[5]~16\,
	combout => \inst6|num[6]~17_combout\,
	cout => \inst6|num[6]~18\);

-- Location: FF_X49_Y20_N21
\inst6|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(6));

-- Location: LCCOMB_X49_Y20_N22
\inst6|num[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|num[7]~19_combout\ = \inst6|num\(7) $ (!\inst6|num[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|num\(7),
	cin => \inst6|num[6]~18\,
	combout => \inst6|num[7]~19_combout\);

-- Location: FF_X49_Y20_N23
\inst6|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|num[7]~clkctrl_outclk\,
	d => \inst6|num[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|num\(7));

-- Location: CLKCTRL_G7
\inst6|num[7]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|num[7]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|num[7]~clkctrl_outclk\);

-- Location: LCCOMB_X38_Y33_N24
\inst14|num[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[0]~21_combout\ = !\inst14|num\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|num\(0),
	combout => \inst14|num[0]~21_combout\);

-- Location: FF_X38_Y33_N25
\inst14|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(0));

-- Location: LCCOMB_X28_Y33_N12
\inst14|num[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[1]~7_combout\ = (\inst14|num\(0) & (\inst14|num\(1) $ (VCC))) # (!\inst14|num\(0) & (\inst14|num\(1) & VCC))
-- \inst14|num[1]~8\ = CARRY((\inst14|num\(0) & \inst14|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|num\(0),
	datab => \inst14|num\(1),
	datad => VCC,
	combout => \inst14|num[1]~7_combout\,
	cout => \inst14|num[1]~8\);

-- Location: FF_X28_Y33_N13
\inst14|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(1));

-- Location: LCCOMB_X28_Y33_N14
\inst14|num[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[2]~9_combout\ = (\inst14|num\(2) & (!\inst14|num[1]~8\)) # (!\inst14|num\(2) & ((\inst14|num[1]~8\) # (GND)))
-- \inst14|num[2]~10\ = CARRY((!\inst14|num[1]~8\) # (!\inst14|num\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|num\(2),
	datad => VCC,
	cin => \inst14|num[1]~8\,
	combout => \inst14|num[2]~9_combout\,
	cout => \inst14|num[2]~10\);

-- Location: FF_X28_Y33_N15
\inst14|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(2));

-- Location: LCCOMB_X28_Y33_N16
\inst14|num[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[3]~11_combout\ = (\inst14|num\(3) & (\inst14|num[2]~10\ $ (GND))) # (!\inst14|num\(3) & (!\inst14|num[2]~10\ & VCC))
-- \inst14|num[3]~12\ = CARRY((\inst14|num\(3) & !\inst14|num[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|num\(3),
	datad => VCC,
	cin => \inst14|num[2]~10\,
	combout => \inst14|num[3]~11_combout\,
	cout => \inst14|num[3]~12\);

-- Location: FF_X28_Y33_N17
\inst14|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(3));

-- Location: LCCOMB_X28_Y33_N18
\inst14|num[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[4]~13_combout\ = (\inst14|num\(4) & (!\inst14|num[3]~12\)) # (!\inst14|num\(4) & ((\inst14|num[3]~12\) # (GND)))
-- \inst14|num[4]~14\ = CARRY((!\inst14|num[3]~12\) # (!\inst14|num\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|num\(4),
	datad => VCC,
	cin => \inst14|num[3]~12\,
	combout => \inst14|num[4]~13_combout\,
	cout => \inst14|num[4]~14\);

-- Location: FF_X28_Y33_N19
\inst14|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(4));

-- Location: LCCOMB_X28_Y33_N20
\inst14|num[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[5]~15_combout\ = (\inst14|num\(5) & (\inst14|num[4]~14\ $ (GND))) # (!\inst14|num\(5) & (!\inst14|num[4]~14\ & VCC))
-- \inst14|num[5]~16\ = CARRY((\inst14|num\(5) & !\inst14|num[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|num\(5),
	datad => VCC,
	cin => \inst14|num[4]~14\,
	combout => \inst14|num[5]~15_combout\,
	cout => \inst14|num[5]~16\);

-- Location: FF_X28_Y33_N21
\inst14|num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(5));

-- Location: LCCOMB_X28_Y33_N22
\inst14|num[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[6]~17_combout\ = (\inst14|num\(6) & (!\inst14|num[5]~16\)) # (!\inst14|num\(6) & ((\inst14|num[5]~16\) # (GND)))
-- \inst14|num[6]~18\ = CARRY((!\inst14|num[5]~16\) # (!\inst14|num\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|num\(6),
	datad => VCC,
	cin => \inst14|num[5]~16\,
	combout => \inst14|num[6]~17_combout\,
	cout => \inst14|num[6]~18\);

-- Location: FF_X28_Y33_N23
\inst14|num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(6));

-- Location: LCCOMB_X28_Y33_N24
\inst14|num[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|num[7]~19_combout\ = \inst14|num[6]~18\ $ (!\inst14|num\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst14|num\(7),
	cin => \inst14|num[6]~18\,
	combout => \inst14|num[7]~19_combout\);

-- Location: FF_X28_Y33_N25
\inst14|num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|num[7]~clkctrl_outclk\,
	d => \inst14|num[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|num\(7));

-- Location: LCCOMB_X36_Y28_N18
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|Y\(6) & (\inst|Add2~11\ $ (GND))) # (!\inst|Y\(6) & (!\inst|Add2~11\ & VCC))
-- \inst|Add2~13\ = CARRY((\inst|Y\(6) & !\inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X36_Y28_N20
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\inst|Y\(7) & (!\inst|Add2~13\)) # (!\inst|Y\(7) & ((\inst|Add2~13\) # (GND)))
-- \inst|Add2~15\ = CARRY((!\inst|Add2~13\) # (!\inst|Y\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(7),
	datad => VCC,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\,
	cout => \inst|Add2~15\);

-- Location: LCCOMB_X36_Y28_N4
\inst|Y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~4_combout\ = (\inst|Add2~14_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~14_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~4_combout\);

-- Location: LCCOMB_X39_Y26_N6
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = \inst|X\(0) $ (VCC)
-- \inst|Add3~1\ = CARRY(\inst|X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(0),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X37_Y26_N0
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(1) & (\inst|counter\(2) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X39_Y26_N7
\inst|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~0_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(0));

-- Location: LCCOMB_X39_Y26_N8
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|X\(1) & (!\inst|Add3~1\)) # (!\inst|X\(1) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(1),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: FF_X39_Y26_N9
\inst|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~2_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(1));

-- Location: LCCOMB_X39_Y26_N10
\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|X\(2) & (\inst|Add3~3\ $ (GND))) # (!\inst|X\(2) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|X\(2) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: FF_X39_Y26_N11
\inst|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~4_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(2));

-- Location: LCCOMB_X39_Y26_N4
\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (\inst|X\(1) & (!\inst|X\(3) & (!\inst|X\(4) & \inst|X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(1),
	datab => \inst|X\(3),
	datac => \inst|X\(4),
	datad => \inst|X\(0),
	combout => \inst|Equal7~1_combout\);

-- Location: LCCOMB_X39_Y26_N12
\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|X\(3) & (!\inst|Add3~5\)) # (!\inst|X\(3) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|X\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X39_Y26_N16
\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|X\(5) & (!\inst|Add3~9\)) # (!\inst|X\(5) & ((\inst|Add3~9\) # (GND)))
-- \inst|Add3~11\ = CARRY((!\inst|Add3~9\) # (!\inst|X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(5),
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X39_Y26_N18
\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = (\inst|X\(6) & (\inst|Add3~11\ $ (GND))) # (!\inst|X\(6) & (!\inst|Add3~11\ & VCC))
-- \inst|Add3~13\ = CARRY((\inst|X\(6) & !\inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: FF_X39_Y26_N19
\inst|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~12_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(6));

-- Location: LCCOMB_X39_Y26_N20
\inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = (\inst|X\(7) & (!\inst|Add3~13\)) # (!\inst|X\(7) & ((\inst|Add3~13\) # (GND)))
-- \inst|Add3~15\ = CARRY((!\inst|Add3~13\) # (!\inst|X\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(7),
	datad => VCC,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\,
	cout => \inst|Add3~15\);

-- Location: LCCOMB_X39_Y26_N2
\inst|X~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|X~1_combout\ = (\inst|Add3~14_combout\ & (((!\inst|Equal7~0_combout\) # (!\inst|Equal7~1_combout\)) # (!\inst|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Add3~14_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|X~1_combout\);

-- Location: FF_X39_Y26_N3
\inst|X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|X~1_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(7));

-- Location: LCCOMB_X39_Y26_N22
\inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~16_combout\ = (\inst|X\(8) & (\inst|Add3~15\ $ (GND))) # (!\inst|X\(8) & (!\inst|Add3~15\ & VCC))
-- \inst|Add3~17\ = CARRY((\inst|X\(8) & !\inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(8),
	datad => VCC,
	cin => \inst|Add3~15\,
	combout => \inst|Add3~16_combout\,
	cout => \inst|Add3~17\);

-- Location: FF_X39_Y26_N23
\inst|X[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~16_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(8));

-- Location: LCCOMB_X39_Y26_N24
\inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~18_combout\ = (\inst|X\(9) & (!\inst|Add3~17\)) # (!\inst|X\(9) & ((\inst|Add3~17\) # (GND)))
-- \inst|Add3~19\ = CARRY((!\inst|Add3~17\) # (!\inst|X\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(9),
	datad => VCC,
	cin => \inst|Add3~17\,
	combout => \inst|Add3~18_combout\,
	cout => \inst|Add3~19\);

-- Location: FF_X39_Y26_N25
\inst|X[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~18_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(9));

-- Location: LCCOMB_X40_Y27_N16
\inst19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~2_combout\ = (!\inst|X\(8) & (!\inst|X\(9) & !\inst|X\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(8),
	datac => \inst|X\(9),
	datad => \inst|X\(6),
	combout => \inst19~2_combout\);

-- Location: LCCOMB_X38_Y26_N26
\inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = (\inst|Equal7~1_combout\ & (\inst|X\(10) & (\inst|Equal7~2_combout\ & \inst19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~1_combout\,
	datab => \inst|X\(10),
	datac => \inst|Equal7~2_combout\,
	datad => \inst19~2_combout\,
	combout => \inst|Equal7~3_combout\);

-- Location: LCCOMB_X39_Y26_N26
\inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~20_combout\ = \inst|Add3~19\ $ (!\inst|X\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|X\(10),
	cin => \inst|Add3~19\,
	combout => \inst|Add3~20_combout\);

-- Location: LCCOMB_X38_Y26_N2
\inst|X~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|X~2_combout\ = (!\inst|Equal7~3_combout\ & \inst|Add3~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal7~3_combout\,
	datad => \inst|Add3~20_combout\,
	combout => \inst|X~2_combout\);

-- Location: FF_X38_Y26_N3
\inst|X[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|X~2_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(10));

-- Location: LCCOMB_X40_Y27_N28
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (\inst|X\(10) & (!\inst|X\(8) & (!\inst|X\(9) & !\inst|X\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(10),
	datab => \inst|X\(8),
	datac => \inst|X\(9),
	datad => \inst|X\(6),
	combout => \inst|Equal7~0_combout\);

-- Location: LCCOMB_X39_Y26_N28
\inst|X~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|X~3_combout\ = (\inst|Add3~6_combout\ & (((!\inst|Equal7~0_combout\) # (!\inst|Equal7~1_combout\)) # (!\inst|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|X~3_combout\);

-- Location: FF_X39_Y26_N29
\inst|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|X~3_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(3));

-- Location: LCCOMB_X39_Y26_N14
\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|X\(4) & (\inst|Add3~7\ $ (GND))) # (!\inst|X\(4) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|X\(4) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|X\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: FF_X39_Y26_N15
\inst|X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add3~8_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(4));

-- Location: LCCOMB_X39_Y26_N0
\inst|X~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|X~0_combout\ = (\inst|Add3~10_combout\ & (((!\inst|Equal7~0_combout\) # (!\inst|Equal7~1_combout\)) # (!\inst|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Add3~10_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|X~0_combout\);

-- Location: FF_X39_Y26_N1
\inst|X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|X~0_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|X\(5));

-- Location: LCCOMB_X38_Y26_N8
\inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (\inst|X\(2) & (\inst|X\(5) & \inst|X\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(2),
	datab => \inst|X\(5),
	datac => \inst|X\(7),
	combout => \inst|Equal7~2_combout\);

-- Location: LCCOMB_X39_Y26_N30
\inst|Y[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y[0]~1_combout\ = (\inst|Equal7~2_combout\ & (\inst|Equal7~1_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~2_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|Y[0]~1_combout\);

-- Location: FF_X36_Y28_N5
\inst|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~4_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(7));

-- Location: LCCOMB_X36_Y28_N6
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|Y\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|Y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X36_Y28_N28
\inst|Y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~6_combout\ = (\inst|Add2~0_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~6_combout\);

-- Location: FF_X36_Y28_N29
\inst|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~6_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(0));

-- Location: LCCOMB_X36_Y28_N8
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|Y\(1) & (!\inst|Add2~1\)) # (!\inst|Y\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: FF_X36_Y28_N9
\inst|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add2~2_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(1));

-- Location: LCCOMB_X36_Y28_N22
\inst|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\inst|Y\(8) & (\inst|Add2~15\ $ (GND))) # (!\inst|Y\(8) & (!\inst|Add2~15\ & VCC))
-- \inst|Add2~17\ = CARRY((\inst|Y\(8) & !\inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(8),
	datad => VCC,
	cin => \inst|Add2~15\,
	combout => \inst|Add2~16_combout\,
	cout => \inst|Add2~17\);

-- Location: FF_X36_Y28_N23
\inst|Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add2~16_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(8));

-- Location: LCCOMB_X36_Y28_N24
\inst|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~18_combout\ = \inst|Add2~17\ $ (\inst|Y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Y\(9),
	cin => \inst|Add2~17\,
	combout => \inst|Add2~18_combout\);

-- Location: LCCOMB_X36_Y28_N2
\inst|Y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~5_combout\ = (\inst|Add2~18_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~18_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~5_combout\);

-- Location: FF_X36_Y28_N3
\inst|Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~5_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(9));

-- Location: LCCOMB_X36_Y28_N10
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|Y\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|Y\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|Y\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X36_Y28_N30
\inst|Y~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~7_combout\ = (\inst|Add2~4_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~7_combout\);

-- Location: FF_X36_Y28_N31
\inst|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~7_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(2));

-- Location: LCCOMB_X36_Y28_N12
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|Y\(3) & (!\inst|Add2~5\)) # (!\inst|Y\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X36_Y27_N16
\inst|Y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~0_combout\ = (\inst|Add2~6_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~6_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~0_combout\);

-- Location: FF_X36_Y27_N17
\inst|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~0_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(3));

-- Location: LCCOMB_X37_Y26_N28
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (\inst|Y\(2) & (\inst|Y\(4) & (!\inst|Y\(0) & \inst|Y\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(2),
	datab => \inst|Y\(4),
	datac => \inst|Y\(0),
	datad => \inst|Y\(3),
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X37_Y26_N6
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (!\inst|Y\(1) & (\inst|Y\(9) & (!\inst|Y\(8) & \inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(1),
	datab => \inst|Y\(9),
	datac => \inst|Y\(8),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X37_Y26_N12
\inst|Equal8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~2_combout\ = (!\inst|Y\(6) & (\inst|Y\(7) & (\inst|Y\(5) & \inst|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(7),
	datac => \inst|Y\(5),
	datad => \inst|Equal8~1_combout\,
	combout => \inst|Equal8~2_combout\);

-- Location: LCCOMB_X36_Y28_N14
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|Y\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|Y\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|Y\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X36_Y28_N0
\inst|Y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~2_combout\ = (!\inst|Equal8~2_combout\ & \inst|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal8~2_combout\,
	datac => \inst|Add2~8_combout\,
	combout => \inst|Y~2_combout\);

-- Location: FF_X36_Y28_N1
\inst|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~2_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(4));

-- Location: LCCOMB_X36_Y28_N16
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|Y\(5) & (!\inst|Add2~9\)) # (!\inst|Y\(5) & ((\inst|Add2~9\) # (GND)))
-- \inst|Add2~11\ = CARRY((!\inst|Add2~9\) # (!\inst|Y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X36_Y28_N26
\inst|Y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Y~3_combout\ = (\inst|Add2~10_combout\ & !\inst|Equal8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~10_combout\,
	datac => \inst|Equal8~2_combout\,
	combout => \inst|Y~3_combout\);

-- Location: FF_X36_Y28_N27
\inst|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Y~3_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(5));

-- Location: FF_X36_Y28_N19
\inst|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Add2~12_combout\,
	ena => \inst|Y[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Y\(6));

-- Location: LCCOMB_X37_Y26_N10
\inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~1_combout\ = (\inst|Y\(6)) # ((\inst|Y\(9)) # ((\inst|Y\(5)) # (\inst|X\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(9),
	datac => \inst|Y\(5),
	datad => \inst|X\(10),
	combout => \inst19~1_combout\);

-- Location: LCCOMB_X38_Y26_N24
\inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\inst|Y\(8)) # ((\inst|X\(5)) # ((\inst|Y\(7)) # (\inst|X\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(8),
	datab => \inst|X\(5),
	datac => \inst|Y\(7),
	datad => \inst|X\(7),
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X38_Y26_N4
\inst19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~3_combout\ = (\inst19~1_combout\) # ((\inst19~0_combout\) # (!\inst19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~1_combout\,
	datab => \inst19~0_combout\,
	datad => \inst19~2_combout\,
	combout => \inst19~3_combout\);

-- Location: LCCOMB_X37_Y26_N30
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = ((!\inst|Y\(4) & (!\inst|Y\(5) & !\inst|Y\(3)))) # (!\inst|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(4),
	datac => \inst|Y\(5),
	datad => \inst|Y\(3),
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y26_N16
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = (!\inst|Y\(8) & (!\inst|Y\(9) & ((\inst8|LessThan0~0_combout\) # (!\inst|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(8),
	datab => \inst|Y\(7),
	datac => \inst8|LessThan0~0_combout\,
	datad => \inst|Y\(9),
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y26_N2
\inst|inPix~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~1_combout\ = (\inst|counter\(0) & ((\inst|inPix\(6)) # ((!\inst|counter\(1) & \inst|counter\(2))))) # (!\inst|counter\(0) & (\inst|inPix\(6) & ((!\inst|counter\(2)) # (!\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(6),
	datad => \inst|counter\(2),
	combout => \inst|inPix~1_combout\);

-- Location: FF_X36_Y26_N3
\inst|inPix[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(6));

-- Location: LCCOMB_X37_Y26_N20
\inst8|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~0_combout\ = (!\inst|Y\(6) & (!\inst|Y\(5) & (!\inst|Y\(4) & !\inst|Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(5),
	datac => \inst|Y\(4),
	datad => \inst|Y\(9),
	combout => \inst8|LessThan1~0_combout\);

-- Location: LCCOMB_X37_Y26_N22
\inst8|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan1~1_combout\ = (\inst8|LessThan1~0_combout\) # ((!\inst|Y\(9) & ((!\inst|Y\(7)) # (!\inst|Y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(8),
	datab => \inst|Y\(9),
	datac => \inst|Y\(7),
	datad => \inst8|LessThan1~0_combout\,
	combout => \inst8|LessThan1~1_combout\);

-- Location: LCCOMB_X36_Y26_N0
\inst|inPix~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~0_combout\ = (\inst|counter\(1) & (((\inst|inPix\(5))))) # (!\inst|counter\(1) & ((\inst|counter\(2) & (!\inst|counter\(0))) # (!\inst|counter\(2) & ((\inst|inPix\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(5),
	datad => \inst|counter\(2),
	combout => \inst|inPix~0_combout\);

-- Location: FF_X36_Y26_N1
\inst|inPix[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(5));

-- Location: LCCOMB_X37_Y26_N24
\inst|frame[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[0]~14_combout\ = \inst|frame\(0) $ (((\inst|Equal8~2_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~2_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|frame\(0),
	datad => \inst|Equal7~3_combout\,
	combout => \inst|frame[0]~14_combout\);

-- Location: FF_X37_Y26_N25
\inst|frame[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(0));

-- Location: LCCOMB_X39_Y24_N10
\inst|frame[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[1]~9_combout\ = (\inst|frame\(1) & (\inst|frame\(0) $ (VCC))) # (!\inst|frame\(1) & (\inst|frame\(0) & VCC))
-- \inst|frame[1]~10\ = CARRY((\inst|frame\(1) & \inst|frame\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(1),
	datab => \inst|frame\(0),
	datad => VCC,
	combout => \inst|frame[1]~9_combout\,
	cout => \inst|frame[1]~10\);

-- Location: LCCOMB_X37_Y26_N14
\inst|frame[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[0]~13_combout\ = (\inst|Equal8~2_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~2_combout\,
	datab => \inst|Equal0~0_combout\,
	datad => \inst|Equal7~3_combout\,
	combout => \inst|frame[0]~13_combout\);

-- Location: FF_X39_Y24_N11
\inst|frame[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[1]~9_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(1));

-- Location: LCCOMB_X39_Y24_N12
\inst|frame[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[2]~11_combout\ = (\inst|frame\(2) & (!\inst|frame[1]~10\)) # (!\inst|frame\(2) & ((\inst|frame[1]~10\) # (GND)))
-- \inst|frame[2]~12\ = CARRY((!\inst|frame[1]~10\) # (!\inst|frame\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(2),
	datad => VCC,
	cin => \inst|frame[1]~10\,
	combout => \inst|frame[2]~11_combout\,
	cout => \inst|frame[2]~12\);

-- Location: FF_X39_Y24_N13
\inst|frame[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[2]~11_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(2));

-- Location: LCCOMB_X39_Y24_N14
\inst|frame[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[3]~15_combout\ = (\inst|frame\(3) & (\inst|frame[2]~12\ $ (GND))) # (!\inst|frame\(3) & (!\inst|frame[2]~12\ & VCC))
-- \inst|frame[3]~16\ = CARRY((\inst|frame\(3) & !\inst|frame[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(3),
	datad => VCC,
	cin => \inst|frame[2]~12\,
	combout => \inst|frame[3]~15_combout\,
	cout => \inst|frame[3]~16\);

-- Location: FF_X39_Y24_N15
\inst|frame[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[3]~15_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(3));

-- Location: LCCOMB_X37_Y25_N2
\inst8|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~0_combout\ = (\inst|Y\(0) & (\inst|frame\(0) $ (VCC))) # (!\inst|Y\(0) & (\inst|frame\(0) & VCC))
-- \inst8|Add1~1\ = CARRY((\inst|Y\(0) & \inst|frame\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(0),
	datab => \inst|frame\(0),
	datad => VCC,
	combout => \inst8|Add1~0_combout\,
	cout => \inst8|Add1~1\);

-- Location: LCCOMB_X37_Y25_N4
\inst8|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~2_combout\ = (\inst|frame\(1) & ((\inst|Y\(1) & (\inst8|Add1~1\ & VCC)) # (!\inst|Y\(1) & (!\inst8|Add1~1\)))) # (!\inst|frame\(1) & ((\inst|Y\(1) & (!\inst8|Add1~1\)) # (!\inst|Y\(1) & ((\inst8|Add1~1\) # (GND)))))
-- \inst8|Add1~3\ = CARRY((\inst|frame\(1) & (!\inst|Y\(1) & !\inst8|Add1~1\)) # (!\inst|frame\(1) & ((!\inst8|Add1~1\) # (!\inst|Y\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(1),
	datab => \inst|Y\(1),
	datad => VCC,
	cin => \inst8|Add1~1\,
	combout => \inst8|Add1~2_combout\,
	cout => \inst8|Add1~3\);

-- Location: LCCOMB_X37_Y25_N6
\inst8|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~4_combout\ = ((\inst|frame\(2) $ (\inst|Y\(2) $ (!\inst8|Add1~3\)))) # (GND)
-- \inst8|Add1~5\ = CARRY((\inst|frame\(2) & ((\inst|Y\(2)) # (!\inst8|Add1~3\))) # (!\inst|frame\(2) & (\inst|Y\(2) & !\inst8|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(2),
	datab => \inst|Y\(2),
	datad => VCC,
	cin => \inst8|Add1~3\,
	combout => \inst8|Add1~4_combout\,
	cout => \inst8|Add1~5\);

-- Location: LCCOMB_X37_Y25_N8
\inst8|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~6_combout\ = (\inst|frame\(3) & ((\inst|Y\(3) & (\inst8|Add1~5\ & VCC)) # (!\inst|Y\(3) & (!\inst8|Add1~5\)))) # (!\inst|frame\(3) & ((\inst|Y\(3) & (!\inst8|Add1~5\)) # (!\inst|Y\(3) & ((\inst8|Add1~5\) # (GND)))))
-- \inst8|Add1~7\ = CARRY((\inst|frame\(3) & (!\inst|Y\(3) & !\inst8|Add1~5\)) # (!\inst|frame\(3) & ((!\inst8|Add1~5\) # (!\inst|Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(3),
	datab => \inst|Y\(3),
	datad => VCC,
	cin => \inst8|Add1~5\,
	combout => \inst8|Add1~6_combout\,
	cout => \inst8|Add1~7\);

-- Location: LCCOMB_X39_Y24_N16
\inst|frame[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[4]~17_combout\ = (\inst|frame\(4) & (!\inst|frame[3]~16\)) # (!\inst|frame\(4) & ((\inst|frame[3]~16\) # (GND)))
-- \inst|frame[4]~18\ = CARRY((!\inst|frame[3]~16\) # (!\inst|frame\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(4),
	datad => VCC,
	cin => \inst|frame[3]~16\,
	combout => \inst|frame[4]~17_combout\,
	cout => \inst|frame[4]~18\);

-- Location: FF_X39_Y24_N17
\inst|frame[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[4]~17_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(4));

-- Location: LCCOMB_X37_Y25_N10
\inst8|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~8_combout\ = ((\inst|frame\(4) $ (\inst|Y\(4) $ (!\inst8|Add1~7\)))) # (GND)
-- \inst8|Add1~9\ = CARRY((\inst|frame\(4) & ((\inst|Y\(4)) # (!\inst8|Add1~7\))) # (!\inst|frame\(4) & (\inst|Y\(4) & !\inst8|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(4),
	datab => \inst|Y\(4),
	datad => VCC,
	cin => \inst8|Add1~7\,
	combout => \inst8|Add1~8_combout\,
	cout => \inst8|Add1~9\);

-- Location: LCCOMB_X36_Y26_N30
\inst|inPix~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~3_combout\ = (\inst|counter\(0) & ((\inst|inPix\(4)) # ((\inst|counter\(1) & !\inst|counter\(2))))) # (!\inst|counter\(0) & (\inst|inPix\(4) & ((\inst|counter\(1)) # (!\inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(4),
	datad => \inst|counter\(2),
	combout => \inst|inPix~3_combout\);

-- Location: FF_X36_Y26_N31
\inst|inPix[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(4));

-- Location: LCCOMB_X36_Y26_N4
\inst|inPix~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~2_combout\ = (\inst|counter\(1) & ((\inst|counter\(2) & ((\inst|inPix\(3)))) # (!\inst|counter\(2) & (!\inst|counter\(0))))) # (!\inst|counter\(1) & (((\inst|inPix\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(3),
	datad => \inst|counter\(2),
	combout => \inst|inPix~2_combout\);

-- Location: FF_X36_Y26_N5
\inst|inPix[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(3));

-- Location: LCCOMB_X39_Y24_N18
\inst|frame[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[5]~19_combout\ = (\inst|frame\(5) & (\inst|frame[4]~18\ $ (GND))) # (!\inst|frame\(5) & (!\inst|frame[4]~18\ & VCC))
-- \inst|frame[5]~20\ = CARRY((\inst|frame\(5) & !\inst|frame[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(5),
	datad => VCC,
	cin => \inst|frame[4]~18\,
	combout => \inst|frame[5]~19_combout\,
	cout => \inst|frame[5]~20\);

-- Location: FF_X39_Y24_N19
\inst|frame[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[5]~19_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(5));

-- Location: LCCOMB_X37_Y25_N12
\inst8|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add1~10_combout\ = \inst|Y\(5) $ (\inst|frame\(5) $ (\inst8|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(5),
	datab => \inst|frame\(5),
	cin => \inst8|Add1~9\,
	combout => \inst8|Add1~10_combout\);

-- Location: LCCOMB_X37_Y25_N24
\inst7|TDMS[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~4_combout\ = (\inst|inPix\(4) & (\inst8|Add1~8_combout\)) # (!\inst|inPix\(4) & (((\inst|inPix\(3) & \inst8|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~8_combout\,
	datab => \inst|inPix\(4),
	datac => \inst|inPix\(3),
	datad => \inst8|Add1~10_combout\,
	combout => \inst7|TDMS[2]~4_combout\);

-- Location: LCCOMB_X37_Y25_N30
\inst7|TDMS[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~5_combout\ = (\inst|inPix\(5) & (\inst8|Add1~6_combout\)) # (!\inst|inPix\(5) & ((\inst7|TDMS[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(5),
	datac => \inst8|Add1~6_combout\,
	datad => \inst7|TDMS[2]~4_combout\,
	combout => \inst7|TDMS[2]~5_combout\);

-- Location: LCCOMB_X37_Y25_N0
\inst7|TDMS[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~6_combout\ = (!\inst8|LessThan1~1_combout\ & ((\inst|inPix\(6) & ((\inst8|Add1~4_combout\))) # (!\inst|inPix\(6) & (\inst7|TDMS[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(6),
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst7|TDMS[2]~5_combout\,
	datad => \inst8|Add1~4_combout\,
	combout => \inst7|TDMS[2]~6_combout\);

-- Location: LCCOMB_X36_Y26_N24
\inst7|TDMS[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~0_combout\ = (!\inst|inPix\(4) & (!\inst|inPix\(5) & (!\inst|inPix\(3) & !\inst|inPix\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(4),
	datab => \inst|inPix\(5),
	datac => \inst|inPix\(3),
	datad => \inst|inPix\(6),
	combout => \inst7|TDMS[2]~0_combout\);

-- Location: LCCOMB_X40_Y26_N16
\inst7|TDMS[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~3_combout\ = (!\inst7|TDMS[2]~0_combout\ & (\inst8|LessThan0~1_combout\ & (\inst|Y\(0) $ (\inst|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(0),
	datab => \inst7|TDMS[2]~0_combout\,
	datac => \inst|X\(0),
	datad => \inst8|LessThan0~1_combout\,
	combout => \inst7|TDMS[1]~3_combout\);

-- Location: LCCOMB_X40_Y26_N10
\inst7|TDMS[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~7_combout\ = (\inst19~3_combout\ & ((\inst7|TDMS[1]~3_combout\) # ((!\inst8|LessThan0~1_combout\ & \inst7|TDMS[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~3_combout\,
	datab => \inst8|LessThan0~1_combout\,
	datac => \inst7|TDMS[2]~6_combout\,
	datad => \inst7|TDMS[1]~3_combout\,
	combout => \inst7|TDMS[2]~7_combout\);

-- Location: LCCOMB_X36_Y26_N20
\inst|inPix~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~5_combout\ = (\inst|counter\(0) & ((\inst|inPix\(2)) # ((!\inst|counter\(1) & !\inst|counter\(2))))) # (!\inst|counter\(0) & (\inst|inPix\(2) & ((\inst|counter\(2)) # (!\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(2),
	datad => \inst|counter\(2),
	combout => \inst|inPix~5_combout\);

-- Location: FF_X36_Y26_N21
\inst|inPix[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(2));

-- Location: LCCOMB_X38_Y26_N6
\inst|DE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DE~0_combout\ = (!\inst|Y\(8) & !\inst|Y\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(8),
	datac => \inst|Y\(7),
	combout => \inst|DE~0_combout\);

-- Location: LCCOMB_X37_Y26_N26
\inst|DE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DE~1_combout\ = ((!\inst|Y\(5) & ((!\inst|Y\(3)) # (!\inst|Y\(4))))) # (!\inst|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(4),
	datac => \inst|Y\(5),
	datad => \inst|Y\(3),
	combout => \inst|DE~1_combout\);

-- Location: LCCOMB_X37_Y26_N2
\inst|DE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|DE~2_combout\ = (!\inst|X\(10) & (((\inst|DE~0_combout\ & \inst|DE~1_combout\)) # (!\inst|Y\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DE~0_combout\,
	datab => \inst|Y\(9),
	datac => \inst|DE~1_combout\,
	datad => \inst|X\(10),
	combout => \inst|DE~2_combout\);

-- Location: FF_X37_Y26_N3
\inst|DE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|DE~2_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|DE~q\);

-- Location: LCCOMB_X36_Y26_N18
\inst|inPix~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inPix~4_combout\ = (\inst|counter\(1) & (((\inst|inPix\(1))))) # (!\inst|counter\(1) & ((\inst|counter\(2) & ((\inst|inPix\(1)))) # (!\inst|counter\(2) & (!\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|inPix\(1),
	datad => \inst|counter\(2),
	combout => \inst|inPix~4_combout\);

-- Location: FF_X36_Y26_N19
\inst|inPix[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|inPix~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inPix\(1));

-- Location: LCCOMB_X37_Y26_N8
\inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal10~0_combout\ = ((\inst|Y\(7)) # ((\inst|Y\(5)) # (!\inst|Equal8~1_combout\))) # (!\inst|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(6),
	datab => \inst|Y\(7),
	datac => \inst|Y\(5),
	datad => \inst|Equal8~1_combout\,
	combout => \inst|Equal10~0_combout\);

-- Location: FF_X37_Y26_N9
\inst|VS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Equal10~0_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|VS~q\);

-- Location: LCCOMB_X36_Y26_N22
\inst7|TDMS[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~1_combout\ = (!\inst|inPix\(2) & ((\inst|inPix\(1) & ((\inst|VS~q\))) # (!\inst|inPix\(1) & (\inst|DE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|DE~q\,
	datab => \inst|inPix\(1),
	datac => \inst|VS~q\,
	datad => \inst|inPix\(2),
	combout => \inst7|TDMS[2]~1_combout\);

-- Location: LCCOMB_X39_Y24_N20
\inst|frame[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[6]~21_combout\ = (\inst|frame\(6) & (!\inst|frame[5]~20\)) # (!\inst|frame\(6) & ((\inst|frame[5]~20\) # (GND)))
-- \inst|frame[6]~22\ = CARRY((!\inst|frame[5]~20\) # (!\inst|frame\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(6),
	datad => VCC,
	cin => \inst|frame[5]~20\,
	combout => \inst|frame[6]~21_combout\,
	cout => \inst|frame[6]~22\);

-- Location: FF_X39_Y24_N21
\inst|frame[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[6]~21_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(6));

-- Location: LCCOMB_X39_Y24_N22
\inst|frame[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[7]~23_combout\ = (\inst|frame\(7) & (\inst|frame[6]~22\ $ (GND))) # (!\inst|frame\(7) & (!\inst|frame[6]~22\ & VCC))
-- \inst|frame[7]~24\ = CARRY((\inst|frame\(7) & !\inst|frame[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(7),
	datad => VCC,
	cin => \inst|frame[6]~22\,
	combout => \inst|frame[7]~23_combout\,
	cout => \inst|frame[7]~24\);

-- Location: FF_X39_Y24_N23
\inst|frame[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[7]~23_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(7));

-- Location: LCCOMB_X39_Y24_N24
\inst|frame[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[8]~25_combout\ = (\inst|frame\(8) & (!\inst|frame[7]~24\)) # (!\inst|frame\(8) & ((\inst|frame[7]~24\) # (GND)))
-- \inst|frame[8]~26\ = CARRY((!\inst|frame[7]~24\) # (!\inst|frame\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(8),
	datad => VCC,
	cin => \inst|frame[7]~24\,
	combout => \inst|frame[8]~25_combout\,
	cout => \inst|frame[8]~26\);

-- Location: FF_X39_Y24_N25
\inst|frame[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[8]~25_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(8));

-- Location: LCCOMB_X37_Y24_N28
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = \inst|frame\(7) $ (\inst|frame\(8) $ (\inst|X\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(7),
	datac => \inst|frame\(8),
	datad => \inst|X\(2),
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X39_Y24_N26
\inst|frame[9]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|frame[9]~27_combout\ = \inst|frame\(9) $ (!\inst|frame[8]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(9),
	cin => \inst|frame[8]~26\,
	combout => \inst|frame[9]~27_combout\);

-- Location: FF_X39_Y24_N27
\inst|frame[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|frame[9]~27_combout\,
	ena => \inst|frame[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|frame\(9));

-- Location: LCCOMB_X37_Y24_N22
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = \inst|X\(4) $ (((\inst|frame\(9) & ((\inst|frame\(8)) # (\inst|frame\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(8),
	datab => \inst|frame\(7),
	datac => \inst|frame\(9),
	datad => \inst|X\(4),
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X37_Y24_N0
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = \inst|frame\(9) $ (\inst|X\(3) $ (((\inst|frame\(8)) # (\inst|frame\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(8),
	datab => \inst|frame\(7),
	datac => \inst|frame\(9),
	datad => \inst|X\(3),
	combout => \inst|Equal9~2_combout\);

-- Location: LCCOMB_X37_Y24_N4
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (\inst|X\(1) & (!\inst|frame\(7) & (\inst|frame\(6) $ (!\inst|X\(0))))) # (!\inst|X\(1) & (\inst|frame\(7) & (\inst|frame\(6) $ (!\inst|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(1),
	datab => \inst|frame\(7),
	datac => \inst|frame\(6),
	datad => \inst|X\(0),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X37_Y24_N10
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (!\inst|Equal9~1_combout\ & (!\inst|Equal9~2_combout\ & (\inst|Equal9~0_combout\ & \inst|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~1_combout\,
	datab => \inst|Equal9~2_combout\,
	datac => \inst|Equal9~0_combout\,
	datad => \inst|Equal7~0_combout\,
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X37_Y26_N4
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|X\(7)) # (((\inst|X\(5)) # (!\inst|Equal9~3_combout\)) # (!\inst|Equal9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(7),
	datab => \inst|Equal9~4_combout\,
	datac => \inst|X\(5),
	datad => \inst|Equal9~3_combout\,
	combout => \inst|Equal9~5_combout\);

-- Location: FF_X37_Y26_N5
\inst|HS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \inst|Equal9~5_combout\,
	ena => \inst|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|HS~q\);

-- Location: LCCOMB_X36_Y26_N8
\inst7|TDMS[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~2_combout\ = (\inst7|TDMS[2]~0_combout\ & ((\inst7|TDMS[2]~1_combout\) # ((\inst|inPix\(2) & \inst|HS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[2]~0_combout\,
	datab => \inst|inPix\(2),
	datac => \inst7|TDMS[2]~1_combout\,
	datad => \inst|HS~q\,
	combout => \inst7|TDMS[2]~2_combout\);

-- Location: LCCOMB_X38_Y24_N22
\inst18|inst4|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst4|v~0_combout\ = (\inst|Y\(3) & \inst|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst18|inst4|v~0_combout\);

-- Location: LCCOMB_X38_Y24_N0
\inst18|inst4|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst4|v~1_combout\ = (\inst18|inst4|v~0_combout\ & (\inst|Y\(4) $ (((\inst|X\(4)))))) # (!\inst18|inst4|v~0_combout\ & ((\inst|X\(2)) # ((\inst|Y\(4) & !\inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|X\(2),
	datac => \inst18|inst4|v~0_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst4|v~1_combout\);

-- Location: LCCOMB_X38_Y24_N2
\inst18|inst4|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst4|v~2_combout\ = (\inst|X\(3) & (!\inst18|inst4|v~1_combout\ & !\inst|X\(4))) # (!\inst|X\(3) & (\inst18|inst4|v~1_combout\ & \inst|X\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst18|inst4|v~1_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst4|v~2_combout\);

-- Location: LCCOMB_X37_Y24_N12
\inst18|inst5|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst5|v~1_combout\ = (\inst|Y\(4) & (\inst|X\(2) & ((!\inst|Y\(3)) # (!\inst|Y\(2))))) # (!\inst|Y\(4) & (\inst|Y\(2) $ (\inst|Y\(3) $ (\inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst5|v~1_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst18|inst5|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst5|v~0_combout\ = (\inst|Y\(4) & ((\inst|Y\(2)) # ((!\inst|Y\(3))))) # (!\inst|Y\(4) & (\inst|X\(2) & (\inst|Y\(2) $ (\inst|Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst5|v~0_combout\);

-- Location: LCCOMB_X38_Y24_N4
\inst18|inst5|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst5|v~2_combout\ = (\inst|X\(4) & (!\inst|X\(3) & (\inst18|inst5|v~1_combout\ $ (!\inst18|inst5|v~0_combout\)))) # (!\inst|X\(4) & (((!\inst18|inst5|v~0_combout\ & \inst|X\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst5|v~1_combout\,
	datab => \inst|X\(4),
	datac => \inst18|inst5|v~0_combout\,
	datad => \inst|X\(3),
	combout => \inst18|inst5|v~2_combout\);

-- Location: LCCOMB_X39_Y24_N2
\inst18|inst17|8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~3_combout\ = (\inst|frame\(7) & (((\inst|frame\(6))))) # (!\inst|frame\(7) & ((\inst|frame\(6) & ((\inst18|inst5|v~2_combout\))) # (!\inst|frame\(6) & (\inst18|inst4|v~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst4|v~2_combout\,
	datab => \inst18|inst5|v~2_combout\,
	datac => \inst|frame\(7),
	datad => \inst|frame\(6),
	combout => \inst18|inst17|8~3_combout\);

-- Location: LCCOMB_X38_Y24_N16
\inst18|inst17|8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~1_combout\ = (\inst|Y\(2) & (\inst|Y\(3) $ (((!\inst|Y\(4) & \inst|X\(2)))))) # (!\inst|Y\(2) & (!\inst|Y\(4) & (\inst|Y\(3) & \inst|X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst17|8~1_combout\);

-- Location: LCCOMB_X37_Y24_N8
\inst18|inst17|8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~0_combout\ = (\inst|Y\(2) & ((\inst|Y\(3) & (!\inst|Y\(4))) # (!\inst|Y\(3) & ((!\inst|X\(2)))))) # (!\inst|Y\(2) & (\inst|Y\(4) $ (\inst|Y\(3) $ (\inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst17|8~0_combout\);

-- Location: LCCOMB_X38_Y24_N18
\inst18|inst17|8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~2_combout\ = (\inst|X\(3) & (((\inst18|inst17|8~0_combout\ & !\inst|X\(4))))) # (!\inst|X\(3) & (\inst|X\(4) & (\inst18|inst17|8~1_combout\ $ (!\inst18|inst17|8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst18|inst17|8~1_combout\,
	datac => \inst18|inst17|8~0_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst17|8~2_combout\);

-- Location: LCCOMB_X37_Y24_N16
\inst18|inst17|8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~5_combout\ = (\inst|Y\(4)) # ((\inst|Y\(3) & ((\inst|X\(2)))) # (!\inst|Y\(3) & (\inst|Y\(2) & !\inst|X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst17|8~5_combout\);

-- Location: LCCOMB_X37_Y24_N30
\inst18|inst17|8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~4_combout\ = (\inst|X\(2) & ((\inst|Y\(2) & ((!\inst|Y\(3)))) # (!\inst|Y\(2) & (\inst|Y\(4))))) # (!\inst|X\(2) & (!\inst|Y\(4) & ((\inst|Y\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst18|inst17|8~4_combout\);

-- Location: LCCOMB_X37_Y24_N26
\inst18|inst17|8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~6_combout\ = (\inst|X\(3) & (!\inst|X\(4) & (\inst18|inst17|8~5_combout\ $ (!\inst18|inst17|8~4_combout\)))) # (!\inst|X\(3) & (!\inst18|inst17|8~5_combout\ & ((\inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst18|inst17|8~5_combout\,
	datac => \inst18|inst17|8~4_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst17|8~6_combout\);

-- Location: LCCOMB_X38_Y24_N12
\inst18|inst17|8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|8~7_combout\ = (\inst18|inst17|8~3_combout\ & (((\inst18|inst17|8~6_combout\) # (!\inst|frame\(7))))) # (!\inst18|inst17|8~3_combout\ & (\inst18|inst17|8~2_combout\ & ((\inst|frame\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst17|8~3_combout\,
	datab => \inst18|inst17|8~2_combout\,
	datac => \inst18|inst17|8~6_combout\,
	datad => \inst|frame\(7),
	combout => \inst18|inst17|8~7_combout\);

-- Location: LCCOMB_X37_Y24_N24
\inst7|TDMS[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~11_combout\ = (\inst|frame\(6) & (\inst|X\(3))) # (!\inst|frame\(6) & ((\inst|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datac => \inst|frame\(6),
	datad => \inst|X\(4),
	combout => \inst7|TDMS[2]~11_combout\);

-- Location: LCCOMB_X37_Y24_N18
\inst7|TDMS[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~12_combout\ = (\inst|Y\(4) & ((\inst|Y\(3) & (!\inst|Y\(2) & \inst|X\(2))) # (!\inst|Y\(3) & ((!\inst|X\(2)))))) # (!\inst|Y\(4) & (\inst|Y\(2) $ (\inst|Y\(3) $ (\inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(2),
	combout => \inst7|TDMS[2]~12_combout\);

-- Location: LCCOMB_X37_Y24_N20
\inst7|TDMS[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~13_combout\ = (\inst|Y\(4) & (\inst|Y\(3) & \inst|Y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst7|TDMS[2]~13_combout\);

-- Location: LCCOMB_X37_Y24_N14
\inst7|TDMS[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~14_combout\ = (\inst|X\(3) & (!\inst7|TDMS[2]~11_combout\ & (\inst7|TDMS[2]~12_combout\ & !\inst7|TDMS[2]~13_combout\))) # (!\inst|X\(3) & (\inst7|TDMS[2]~11_combout\ & (\inst7|TDMS[2]~12_combout\ $ (!\inst7|TDMS[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst7|TDMS[2]~11_combout\,
	datac => \inst7|TDMS[2]~12_combout\,
	datad => \inst7|TDMS[2]~13_combout\,
	combout => \inst7|TDMS[2]~14_combout\);

-- Location: LCCOMB_X38_Y25_N18
\inst7|TDMS[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~9_combout\ = (\inst|Y\(3) & ((!\inst|Y\(2)))) # (!\inst|Y\(3) & (!\inst|Y\(4) & \inst|Y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst7|TDMS[2]~9_combout\);

-- Location: LCCOMB_X38_Y25_N28
\inst7|TDMS[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~10_combout\ = (\inst|X\(2) & ((\inst|X\(4)) # (\inst7|TDMS[2]~9_combout\ $ (!\inst|Y\(4))))) # (!\inst|X\(2) & ((\inst7|TDMS[2]~9_combout\ & (!\inst|Y\(4))) # (!\inst7|TDMS[2]~9_combout\ & (\inst|Y\(4) & \inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(2),
	datab => \inst7|TDMS[2]~9_combout\,
	datac => \inst|Y\(4),
	datad => \inst|X\(4),
	combout => \inst7|TDMS[2]~10_combout\);

-- Location: LCCOMB_X38_Y25_N24
\inst18|inst3|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~0_combout\ = (\inst|Y\(4) & (!\inst|Y\(3))) # (!\inst|Y\(4) & ((\inst|Y\(3)) # (\inst|Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst18|inst3|v~0_combout\);

-- Location: LCCOMB_X38_Y25_N30
\inst7|TDMS[2]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~41_combout\ = (\inst|X\(3) & (\inst7|TDMS[2]~10_combout\)) # (!\inst|X\(3) & (((\inst|X\(2) & \inst18|inst3|v~0_combout\)) # (!\inst7|TDMS[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst7|TDMS[2]~10_combout\,
	datac => \inst|X\(2),
	datad => \inst18|inst3|v~0_combout\,
	combout => \inst7|TDMS[2]~41_combout\);

-- Location: LCCOMB_X38_Y24_N14
\inst7|TDMS[2]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~42_combout\ = (\inst|frame\(6) & (\inst7|TDMS[2]~41_combout\ & (\inst|X\(3) $ (\inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|frame\(6),
	datac => \inst7|TDMS[2]~41_combout\,
	datad => \inst|X\(4),
	combout => \inst7|TDMS[2]~42_combout\);

-- Location: LCCOMB_X38_Y25_N12
\inst18|inst1|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst1|v~2_combout\ = (\inst|X\(3) & (!\inst|Y\(2) & (\inst|Y\(3) & !\inst|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|Y\(2),
	datac => \inst|Y\(3),
	datad => \inst|X\(4),
	combout => \inst18|inst1|v~2_combout\);

-- Location: LCCOMB_X38_Y25_N0
\inst18|inst1|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst1|v~0_combout\ = (\inst|X\(2) & (((!\inst|Y\(2)) # (!\inst|Y\(4))) # (!\inst|Y\(3)))) # (!\inst|X\(2) & (!\inst|Y\(3) & (!\inst|Y\(4) & \inst|Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(2),
	datab => \inst|Y\(3),
	datac => \inst|Y\(4),
	datad => \inst|Y\(2),
	combout => \inst18|inst1|v~0_combout\);

-- Location: LCCOMB_X38_Y25_N10
\inst18|inst1|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst1|v~1_combout\ = (!\inst|X\(3) & (\inst18|inst1|v~0_combout\ & \inst|X\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst18|inst1|v~0_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst1|v~1_combout\);

-- Location: LCCOMB_X38_Y25_N14
\inst18|inst1|v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst1|v~3_combout\ = (\inst18|inst1|v~1_combout\) # ((\inst18|inst1|v~2_combout\ & (!\inst|Y\(4) & \inst|X\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|v~2_combout\,
	datab => \inst|Y\(4),
	datac => \inst|X\(2),
	datad => \inst18|inst1|v~1_combout\,
	combout => \inst18|inst1|v~3_combout\);

-- Location: LCCOMB_X38_Y24_N8
\inst18|inst0|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst0|v~0_combout\ = (\inst|Y\(4) & (\inst|Y\(3) $ (!\inst|Y\(2)))) # (!\inst|Y\(4) & (\inst|Y\(3) & !\inst|Y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst18|inst0|v~0_combout\);

-- Location: LCCOMB_X38_Y24_N10
\inst18|inst0|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst0|v~1_combout\ = (\inst|Y\(2) & ((\inst18|inst0|v~0_combout\ & (!\inst|X\(3))) # (!\inst18|inst0|v~0_combout\ & ((!\inst|X\(2)))))) # (!\inst|Y\(2) & ((\inst18|inst0|v~0_combout\ $ (\inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|Y\(2),
	datac => \inst18|inst0|v~0_combout\,
	datad => \inst|X\(2),
	combout => \inst18|inst0|v~1_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst18|inst0|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst0|v~2_combout\ = (\inst18|inst0|v~1_combout\ & (!\inst|X\(4) & \inst|X\(3))) # (!\inst18|inst0|v~1_combout\ & (\inst|X\(4) & !\inst|X\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst0|v~1_combout\,
	datab => \inst|X\(4),
	datad => \inst|X\(3),
	combout => \inst18|inst0|v~2_combout\);

-- Location: LCCOMB_X39_Y24_N8
\inst7|TDMS[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~8_combout\ = (\inst|frame\(7) & ((\inst|frame\(6) & (\inst18|inst1|v~3_combout\)) # (!\inst|frame\(6) & ((\inst18|inst0|v~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst1|v~3_combout\,
	datab => \inst18|inst0|v~2_combout\,
	datac => \inst|frame\(7),
	datad => \inst|frame\(6),
	combout => \inst7|TDMS[2]~8_combout\);

-- Location: LCCOMB_X38_Y24_N6
\inst7|TDMS[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~15_combout\ = (\inst7|TDMS[2]~8_combout\) # ((!\inst|frame\(7) & ((\inst7|TDMS[2]~14_combout\) # (\inst7|TDMS[2]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[2]~14_combout\,
	datab => \inst7|TDMS[2]~42_combout\,
	datac => \inst7|TDMS[2]~8_combout\,
	datad => \inst|frame\(7),
	combout => \inst7|TDMS[2]~15_combout\);

-- Location: LCCOMB_X37_Y24_N6
\inst7|TDMS[2]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~39_combout\ = (\inst|frame\(8) & (\inst18|inst17|8~7_combout\ & (!\inst|frame\(9)))) # (!\inst|frame\(8) & (((\inst|frame\(9) & \inst7|TDMS[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(8),
	datab => \inst18|inst17|8~7_combout\,
	datac => \inst|frame\(9),
	datad => \inst7|TDMS[2]~15_combout\,
	combout => \inst7|TDMS[2]~39_combout\);

-- Location: LCCOMB_X38_Y25_N4
\inst18|inst3|v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~3_combout\ = (\inst|Y\(4) & (!\inst|Y\(3) & !\inst|Y\(2))) # (!\inst|Y\(4) & (\inst|Y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst18|inst3|v~3_combout\);

-- Location: LCCOMB_X38_Y24_N26
\inst18|inst3|v~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~4_combout\ = (\inst|X\(3) & (!\inst|X\(4) & ((\inst|X\(2)) # (!\inst|Y\(2))))) # (!\inst|X\(3) & (((!\inst|X\(2) & \inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|Y\(2),
	datac => \inst|X\(2),
	datad => \inst|X\(4),
	combout => \inst18|inst3|v~4_combout\);

-- Location: LCCOMB_X38_Y24_N30
\inst18|inst3|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~1_combout\ = \inst|Y\(3) $ (((\inst|Y\(4)) # (\inst|Y\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|Y\(2),
	combout => \inst18|inst3|v~1_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst18|inst3|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~2_combout\ = (!\inst|X\(3) & (\inst|X\(2) & (\inst18|inst3|v~1_combout\ & \inst|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|X\(2),
	datac => \inst18|inst3|v~1_combout\,
	datad => \inst|X\(4),
	combout => \inst18|inst3|v~2_combout\);

-- Location: LCCOMB_X38_Y24_N20
\inst18|inst3|v~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst3|v~5_combout\ = (\inst18|inst3|v~2_combout\) # ((\inst18|inst3|v~4_combout\ & (\inst18|inst3|v~3_combout\ $ (!\inst|Y\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst3|v~3_combout\,
	datab => \inst|Y\(2),
	datac => \inst18|inst3|v~4_combout\,
	datad => \inst18|inst3|v~2_combout\,
	combout => \inst18|inst3|v~5_combout\);

-- Location: LCCOMB_X38_Y25_N20
\inst18|inst2|v~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~3_combout\ = (\inst|X\(4) & ((\inst|X\(3)) # ((!\inst|Y\(4) & \inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|Y\(4),
	datac => \inst|X\(2),
	datad => \inst|X\(4),
	combout => \inst18|inst2|v~3_combout\);

-- Location: LCCOMB_X38_Y25_N6
\inst18|inst2|v~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~4_combout\ = (!\inst|Y\(2) & (!\inst18|inst2|v~3_combout\ & (\inst|Y\(3) $ (!\inst|Y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(3),
	datab => \inst|Y\(2),
	datac => \inst|Y\(4),
	datad => \inst18|inst2|v~3_combout\,
	combout => \inst18|inst2|v~4_combout\);

-- Location: LCCOMB_X38_Y25_N16
\inst18|inst2|v~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~5_combout\ = (\inst|X\(3) & ((\inst18|inst2|v~4_combout\) # ((!\inst|Y\(3) & !\inst|X\(4))))) # (!\inst|X\(3) & (\inst|X\(4) & ((\inst|Y\(3)) # (\inst18|inst2|v~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|Y\(3),
	datac => \inst|X\(4),
	datad => \inst18|inst2|v~4_combout\,
	combout => \inst18|inst2|v~5_combout\);

-- Location: LCCOMB_X38_Y25_N22
\inst18|inst2|v~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~0_combout\ = (\inst|Y\(4)) # ((\inst|Y\(3)) # (\inst|X\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Y\(4),
	datac => \inst|Y\(3),
	datad => \inst|X\(3),
	combout => \inst18|inst2|v~0_combout\);

-- Location: LCCOMB_X38_Y25_N8
\inst18|inst2|v~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~1_combout\ = (!\inst18|inst2|v~0_combout\ & (\inst|Y\(2) & (\inst|X\(2) & \inst|X\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst2|v~0_combout\,
	datab => \inst|Y\(2),
	datac => \inst|X\(2),
	datad => \inst|X\(4),
	combout => \inst18|inst2|v~1_combout\);

-- Location: LCCOMB_X38_Y25_N2
\inst18|inst2|v~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~2_combout\ = (\inst|X\(2) & (!\inst|Y\(2) & (\inst|Y\(4) $ (\inst|X\(4))))) # (!\inst|X\(2) & (\inst|Y\(2) & (\inst|Y\(4) $ (\inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(2),
	datab => \inst|Y\(2),
	datac => \inst|Y\(4),
	datad => \inst|X\(4),
	combout => \inst18|inst2|v~2_combout\);

-- Location: LCCOMB_X38_Y25_N26
\inst18|inst2|v~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst2|v~6_combout\ = (\inst18|inst2|v~1_combout\) # ((\inst18|inst2|v~5_combout\ & ((\inst18|inst2|v~4_combout\) # (\inst18|inst2|v~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst2|v~4_combout\,
	datab => \inst18|inst2|v~5_combout\,
	datac => \inst18|inst2|v~1_combout\,
	datad => \inst18|inst2|v~2_combout\,
	combout => \inst18|inst2|v~6_combout\);

-- Location: LCCOMB_X39_Y24_N4
\inst18|inst17|49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|49~0_combout\ = (\inst|frame\(6) & (((\inst|frame\(7))))) # (!\inst|frame\(6) & ((\inst|frame\(7) & (\inst18|inst2|v~6_combout\)) # (!\inst|frame\(7) & ((\inst18|inst0|v~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(6),
	datab => \inst18|inst2|v~6_combout\,
	datac => \inst|frame\(7),
	datad => \inst18|inst0|v~2_combout\,
	combout => \inst18|inst17|49~0_combout\);

-- Location: LCCOMB_X39_Y24_N6
\inst18|inst17|49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|49~1_combout\ = (\inst18|inst17|49~0_combout\ & ((\inst18|inst3|v~5_combout\) # ((!\inst|frame\(6))))) # (!\inst18|inst17|49~0_combout\ & (((\inst18|inst1|v~3_combout\ & \inst|frame\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst3|v~5_combout\,
	datab => \inst18|inst17|49~0_combout\,
	datac => \inst18|inst1|v~3_combout\,
	datad => \inst|frame\(6),
	combout => \inst18|inst17|49~1_combout\);

-- Location: LCCOMB_X39_Y24_N0
\inst18|inst17|46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|inst17|46~0_combout\ = (\inst|frame\(7) & ((\inst18|inst4|v~2_combout\) # ((\inst|frame\(6))))) # (!\inst|frame\(7) & (((\inst18|inst2|v~6_combout\ & !\inst|frame\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst4|v~2_combout\,
	datab => \inst18|inst2|v~6_combout\,
	datac => \inst|frame\(7),
	datad => \inst|frame\(6),
	combout => \inst18|inst17|46~0_combout\);

-- Location: LCCOMB_X39_Y24_N28
\inst7|TDMS[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~16_combout\ = (\inst18|inst17|46~0_combout\ & (((\inst18|inst5|v~2_combout\) # (!\inst|frame\(6))))) # (!\inst18|inst17|46~0_combout\ & (\inst18|inst3|v~5_combout\ & ((\inst|frame\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst3|v~5_combout\,
	datab => \inst18|inst17|46~0_combout\,
	datac => \inst18|inst5|v~2_combout\,
	datad => \inst|frame\(6),
	combout => \inst7|TDMS[2]~16_combout\);

-- Location: LCCOMB_X39_Y24_N30
\inst7|TDMS[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~17_combout\ = (\inst|frame\(9) & (((\inst7|TDMS[2]~16_combout\ & \inst|frame\(8))))) # (!\inst|frame\(9) & (\inst18|inst17|49~1_combout\ & ((!\inst|frame\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|inst17|49~1_combout\,
	datab => \inst7|TDMS[2]~16_combout\,
	datac => \inst|frame\(9),
	datad => \inst|frame\(8),
	combout => \inst7|TDMS[2]~17_combout\);

-- Location: LCCOMB_X40_Y26_N12
\inst7|TDMS[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~40_combout\ = (!\inst19~3_combout\ & ((\inst7|TDMS[2]~39_combout\) # (\inst7|TDMS[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~3_combout\,
	datab => \inst7|TDMS[2]~39_combout\,
	datac => \inst7|TDMS[2]~17_combout\,
	combout => \inst7|TDMS[2]~40_combout\);

-- Location: LCCOMB_X40_Y26_N4
\inst7|TDMS[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~18_combout\ = (\inst7|TDMS[2]~7_combout\) # ((\inst7|TDMS[2]~2_combout\) # ((!\inst7|TDMS[2]~0_combout\ & \inst7|TDMS[2]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[2]~7_combout\,
	datab => \inst7|TDMS[2]~0_combout\,
	datac => \inst7|TDMS[2]~2_combout\,
	datad => \inst7|TDMS[2]~40_combout\,
	combout => \inst7|TDMS[2]~18_combout\);

-- Location: LCCOMB_X36_Y25_N0
\inst7|TDMS[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~19_combout\ = (\inst|inPix\(1)) # ((\inst|inPix\(0)) # ((\inst|inPix\(2)) # (!\inst7|TDMS[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(1),
	datab => \inst|inPix\(0),
	datac => \inst7|TDMS[2]~0_combout\,
	datad => \inst|inPix\(2),
	combout => \inst7|TDMS[2]~19_combout\);

-- Location: CLKCTRL_G10
\inst7|TDMS[2]~19clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|TDMS[2]~19clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|TDMS[2]~19clkctrl_outclk\);

-- Location: LCCOMB_X39_Y30_N0
\inst7|TDMS[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS\(2) = (GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & (\inst7|TDMS[2]~18_combout\)) # (!GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & ((\inst7|TDMS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[2]~18_combout\,
	datac => \inst7|TDMS[2]~19clkctrl_outclk\,
	datad => \inst7|TDMS\(2),
	combout => \inst7|TDMS\(2));

-- Location: PSEUDODIFFOUT_X18_Y34_N6
\pin_TMDS[2]~output_pseudo_diff\ : cycloneive_pseudo_diff_out
PORT MAP (
	i => \inst7|TDMS\(2),
	o => \pin_TMDS[2]~output_pseudo_diff_o\,
	obar => \pin_TMDS[2]~output_pseudo_diffoutn\);

-- Location: LCCOMB_X36_Y25_N26
\inst8|G[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[5]~2_combout\ = (!\inst|inPix\(2) & ((\inst|inPix\(1) & (\inst8|Add1~0_combout\)) # (!\inst|inPix\(1) & ((\inst8|Add1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~0_combout\,
	datab => \inst8|Add1~2_combout\,
	datac => \inst|inPix\(1),
	datad => \inst|inPix\(2),
	combout => \inst8|G[5]~2_combout\);

-- Location: LCCOMB_X37_Y26_N18
\inst8|G[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[5]~3_combout\ = (\inst8|G[5]~2_combout\ & (!\inst8|LessThan1~1_combout\ & !\inst8|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|G[5]~2_combout\,
	datac => \inst8|LessThan1~1_combout\,
	datad => \inst8|LessThan0~1_combout\,
	combout => \inst8|G[5]~3_combout\);

-- Location: LCCOMB_X40_Y27_N26
\inst8|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan2~0_combout\ = (\inst|X\(10)) # (\inst|X\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(10),
	datac => \inst|X\(9),
	combout => \inst8|LessThan2~0_combout\);

-- Location: LCCOMB_X40_Y24_N0
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = (\inst|frame\(0) & (\inst|X\(0) $ (VCC))) # (!\inst|frame\(0) & (\inst|X\(0) & VCC))
-- \inst8|Add0~1\ = CARRY((\inst|frame\(0) & \inst|X\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(0),
	datab => \inst|X\(0),
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: LCCOMB_X40_Y24_N2
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst|frame\(1) & ((\inst|X\(1) & (\inst8|Add0~1\ & VCC)) # (!\inst|X\(1) & (!\inst8|Add0~1\)))) # (!\inst|frame\(1) & ((\inst|X\(1) & (!\inst8|Add0~1\)) # (!\inst|X\(1) & ((\inst8|Add0~1\) # (GND)))))
-- \inst8|Add0~3\ = CARRY((\inst|frame\(1) & (!\inst|X\(1) & !\inst8|Add0~1\)) # (!\inst|frame\(1) & ((!\inst8|Add0~1\) # (!\inst|X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(1),
	datab => \inst|X\(1),
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: LCCOMB_X40_Y24_N4
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = ((\inst|frame\(2) $ (\inst|X\(2) $ (!\inst8|Add0~3\)))) # (GND)
-- \inst8|Add0~5\ = CARRY((\inst|frame\(2) & ((\inst|X\(2)) # (!\inst8|Add0~3\))) # (!\inst|frame\(2) & (\inst|X\(2) & !\inst8|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(2),
	datab => \inst|X\(2),
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: LCCOMB_X40_Y24_N6
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst|X\(3) & ((\inst|frame\(3) & (\inst8|Add0~5\ & VCC)) # (!\inst|frame\(3) & (!\inst8|Add0~5\)))) # (!\inst|X\(3) & ((\inst|frame\(3) & (!\inst8|Add0~5\)) # (!\inst|frame\(3) & ((\inst8|Add0~5\) # (GND)))))
-- \inst8|Add0~7\ = CARRY((\inst|X\(3) & (!\inst|frame\(3) & !\inst8|Add0~5\)) # (!\inst|X\(3) & ((!\inst8|Add0~5\) # (!\inst|frame\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|frame\(3),
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: LCCOMB_X40_Y24_N8
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = ((\inst|frame\(4) $ (\inst|X\(4) $ (!\inst8|Add0~7\)))) # (GND)
-- \inst8|Add0~9\ = CARRY((\inst|frame\(4) & ((\inst|X\(4)) # (!\inst8|Add0~7\))) # (!\inst|frame\(4) & (\inst|X\(4) & !\inst8|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|frame\(4),
	datab => \inst|X\(4),
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: LCCOMB_X40_Y24_N10
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = \inst|frame\(5) $ (\inst8|Add0~9\ $ (\inst|X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|frame\(5),
	datad => \inst|X\(5),
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\);

-- Location: LCCOMB_X40_Y24_N12
\inst8|G[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[5]~0_combout\ = (\inst8|LessThan1~1_combout\ & (((!\inst8|LessThan2~0_combout\ & \inst8|Add0~10_combout\)))) # (!\inst8|LessThan1~1_combout\ & (\inst|X\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(5),
	datab => \inst8|LessThan2~0_combout\,
	datac => \inst8|LessThan1~1_combout\,
	datad => \inst8|Add0~10_combout\,
	combout => \inst8|G[5]~0_combout\);

-- Location: LCCOMB_X40_Y26_N8
\inst8|G[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[5]~1_combout\ = (!\inst8|LessThan0~1_combout\ & (\inst|inPix\(2) & \inst8|G[5]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LessThan0~1_combout\,
	datac => \inst|inPix\(2),
	datad => \inst8|G[5]~0_combout\,
	combout => \inst8|G[5]~1_combout\);

-- Location: LCCOMB_X40_Y26_N6
\inst7|TDMS[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~20_combout\ = (\inst8|LessThan0~1_combout\ & (\inst|Y\(0) $ (\inst|X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Y\(0),
	datac => \inst|X\(0),
	datad => \inst8|LessThan0~1_combout\,
	combout => \inst7|TDMS[1]~20_combout\);

-- Location: LCCOMB_X40_Y26_N26
\inst7|TDMS[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~21_combout\ = (\inst7|TDMS[2]~0_combout\ & ((\inst8|G[5]~3_combout\) # ((\inst8|G[5]~1_combout\) # (\inst7|TDMS[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|G[5]~3_combout\,
	datab => \inst7|TDMS[2]~0_combout\,
	datac => \inst8|G[5]~1_combout\,
	datad => \inst7|TDMS[1]~20_combout\,
	combout => \inst7|TDMS[1]~21_combout\);

-- Location: LCCOMB_X40_Y24_N16
\inst8|G[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[1]~4_combout\ = (\inst|inPix\(4) & (\inst|X\(3))) # (!\inst|inPix\(4) & (((\inst|inPix\(3) & \inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(3),
	datab => \inst|inPix\(3),
	datac => \inst|inPix\(4),
	datad => \inst|X\(4),
	combout => \inst8|G[1]~4_combout\);

-- Location: LCCOMB_X40_Y24_N26
\inst8|G[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[1]~5_combout\ = (!\inst8|LessThan1~1_combout\ & ((\inst|inPix\(5) & (\inst|X\(2))) # (!\inst|inPix\(5) & ((\inst8|G[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~1_combout\,
	datab => \inst|X\(2),
	datac => \inst|inPix\(5),
	datad => \inst8|G[1]~4_combout\,
	combout => \inst8|G[1]~5_combout\);

-- Location: LCCOMB_X40_Y24_N30
\inst7|TDMS[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~22_combout\ = (\inst8|LessThan1~1_combout\ & (\inst8|Add0~2_combout\ & ((!\inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (((\inst|X\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~1_combout\,
	datab => \inst8|Add0~2_combout\,
	datac => \inst|X\(1),
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[1]~22_combout\);

-- Location: LCCOMB_X40_Y24_N20
\inst8|G[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[1]~6_combout\ = (!\inst|inPix\(4) & (\inst|inPix\(3) & (\inst8|Add0~8_combout\ & !\inst|inPix\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(4),
	datab => \inst|inPix\(3),
	datac => \inst8|Add0~8_combout\,
	datad => \inst|inPix\(5),
	combout => \inst8|G[1]~6_combout\);

-- Location: LCCOMB_X40_Y24_N22
\inst8|G[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[1]~7_combout\ = (\inst|inPix\(5) & (\inst8|Add0~4_combout\)) # (!\inst|inPix\(5) & (((\inst|inPix\(4) & \inst8|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(5),
	datab => \inst8|Add0~4_combout\,
	datac => \inst|inPix\(4),
	datad => \inst8|Add0~6_combout\,
	combout => \inst8|G[1]~7_combout\);

-- Location: LCCOMB_X40_Y24_N24
\inst8|G[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|G[1]~8_combout\ = (\inst8|LessThan1~1_combout\ & (!\inst8|LessThan2~0_combout\ & ((\inst8|G[1]~6_combout\) # (\inst8|G[1]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~1_combout\,
	datab => \inst8|G[1]~6_combout\,
	datac => \inst8|G[1]~7_combout\,
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst8|G[1]~8_combout\);

-- Location: LCCOMB_X40_Y24_N18
\inst7|TDMS[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~37_combout\ = (\inst|inPix\(6) & (((\inst7|TDMS[1]~22_combout\)))) # (!\inst|inPix\(6) & ((\inst8|G[1]~5_combout\) # ((\inst8|G[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|G[1]~5_combout\,
	datab => \inst|inPix\(6),
	datac => \inst7|TDMS[1]~22_combout\,
	datad => \inst8|G[1]~8_combout\,
	combout => \inst7|TDMS[1]~37_combout\);

-- Location: LCCOMB_X40_Y26_N18
\inst7|TDMS[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~38_combout\ = (\inst7|TDMS[1]~21_combout\) # ((\inst7|TDMS[1]~3_combout\) # ((!\inst8|LessThan0~1_combout\ & \inst7|TDMS[1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[1]~21_combout\,
	datab => \inst8|LessThan0~1_combout\,
	datac => \inst7|TDMS[1]~37_combout\,
	datad => \inst7|TDMS[1]~3_combout\,
	combout => \inst7|TDMS[1]~38_combout\);

-- Location: LCCOMB_X40_Y26_N20
\inst7|TDMS[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[1]~23_combout\ = (\inst7|TDMS[2]~40_combout\) # ((\inst19~3_combout\ & \inst7|TDMS[1]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~3_combout\,
	datab => \inst7|TDMS[1]~38_combout\,
	datad => \inst7|TDMS[2]~40_combout\,
	combout => \inst7|TDMS[1]~23_combout\);

-- Location: LCCOMB_X40_Y26_N22
\inst7|TDMS[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS\(1) = (GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & (\inst7|TDMS[1]~23_combout\)) # (!GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & ((\inst7|TDMS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|TDMS[1]~23_combout\,
	datac => \inst7|TDMS\(1),
	datad => \inst7|TDMS[2]~19clkctrl_outclk\,
	combout => \inst7|TDMS\(1));

-- Location: PSEUDODIFFOUT_X16_Y34_N13
\pin_TMDS[1]~output_pseudo_diff\ : cycloneive_pseudo_diff_out
PORT MAP (
	i => \inst7|TDMS\(1),
	o => \pin_TMDS[1]~output_pseudo_diff_o\,
	obar => \pin_TMDS[1]~output_pseudo_diffoutn\);

-- Location: LCCOMB_X36_Y25_N6
\inst8|B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|B~1_combout\ = (\inst8|LessThan1~1_combout\ & (((\inst|inPix\(1))))) # (!\inst8|LessThan1~1_combout\ & ((\inst|inPix\(1) & ((\inst|X\(5)))) # (!\inst|inPix\(1) & (\inst|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|X\(0),
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst|inPix\(1),
	datad => \inst|X\(5),
	combout => \inst8|B~1_combout\);

-- Location: LCCOMB_X36_Y25_N28
\inst8|B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|B~0_combout\ = (\inst|inPix\(1) & (\inst8|Add1~10_combout\ & ((\inst|X\(9)) # (\inst|X\(10))))) # (!\inst|inPix\(1) & (((\inst|X\(9)) # (\inst|X\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(1),
	datab => \inst8|Add1~10_combout\,
	datac => \inst|X\(9),
	datad => \inst|X\(10),
	combout => \inst8|B~0_combout\);

-- Location: LCCOMB_X36_Y25_N24
\inst8|B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|B~2_combout\ = (\inst8|B~1_combout\ & ((\inst8|B~0_combout\) # ((!\inst8|LessThan1~1_combout\)))) # (!\inst8|B~1_combout\ & (!\inst8|B~0_combout\ & (\inst8|Add0~0_combout\ & \inst8|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|B~1_combout\,
	datab => \inst8|B~0_combout\,
	datac => \inst8|Add0~0_combout\,
	datad => \inst8|LessThan1~1_combout\,
	combout => \inst8|B~2_combout\);

-- Location: LCCOMB_X37_Y25_N18
\inst7|TDMS[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~24_combout\ = (\inst8|LessThan1~1_combout\ & (\inst8|Add1~8_combout\ & ((\inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (((\inst|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~8_combout\,
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst|X\(4),
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[0]~24_combout\);

-- Location: LCCOMB_X36_Y25_N14
\inst7|TDMS[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~35_combout\ = (\inst7|TDMS[2]~0_combout\ & ((\inst|inPix\(2) & ((\inst7|TDMS[0]~24_combout\))) # (!\inst|inPix\(2) & (\inst8|B~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(2),
	datab => \inst8|B~2_combout\,
	datac => \inst7|TDMS[2]~0_combout\,
	datad => \inst7|TDMS[0]~24_combout\,
	combout => \inst7|TDMS[0]~35_combout\);

-- Location: LCCOMB_X37_Y25_N22
\inst7|TDMS[0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~28_combout\ = (\inst8|LessThan1~1_combout\ & (\inst8|Add1~4_combout\ & ((\inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (((\inst|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~4_combout\,
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst|X\(2),
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[0]~28_combout\);

-- Location: LCCOMB_X37_Y25_N16
\inst7|TDMS[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~29_combout\ = (!\inst|inPix\(5) & (\inst|inPix\(4) & (\inst7|TDMS[0]~28_combout\ & !\inst|inPix\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(5),
	datab => \inst|inPix\(4),
	datac => \inst7|TDMS[0]~28_combout\,
	datad => \inst|inPix\(6),
	combout => \inst7|TDMS[0]~29_combout\);

-- Location: LCCOMB_X37_Y25_N26
\inst7|TDMS[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[2]~30_combout\ = (!\inst|inPix\(6) & !\inst|inPix\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inPix\(6),
	datac => \inst|inPix\(5),
	combout => \inst7|TDMS[2]~30_combout\);

-- Location: LCCOMB_X39_Y25_N24
\inst7|TDMS[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~31_combout\ = (\inst8|LessThan1~1_combout\ & (\inst8|Add1~6_combout\ & ((\inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (((\inst|X\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~6_combout\,
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst|X\(3),
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[0]~31_combout\);

-- Location: LCCOMB_X37_Y25_N28
\inst7|TDMS[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~32_combout\ = (\inst7|TDMS[2]~30_combout\ & (!\inst|inPix\(4) & (\inst|inPix\(3) & \inst7|TDMS[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[2]~30_combout\,
	datab => \inst|inPix\(4),
	datac => \inst|inPix\(3),
	datad => \inst7|TDMS[0]~31_combout\,
	combout => \inst7|TDMS[0]~32_combout\);

-- Location: LCCOMB_X36_Y25_N2
\inst7|TDMS[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~25_combout\ = (\inst8|LessThan1~1_combout\ & (((\inst8|Add1~2_combout\ & \inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (\inst|X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan1~1_combout\,
	datab => \inst|X\(1),
	datac => \inst8|Add1~2_combout\,
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[0]~25_combout\);

-- Location: LCCOMB_X36_Y25_N12
\inst7|TDMS[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~26_combout\ = (\inst8|LessThan1~1_combout\ & (\inst8|Add1~0_combout\ & ((\inst8|LessThan2~0_combout\)))) # (!\inst8|LessThan1~1_combout\ & (((\inst|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add1~0_combout\,
	datab => \inst8|LessThan1~1_combout\,
	datac => \inst|X\(0),
	datad => \inst8|LessThan2~0_combout\,
	combout => \inst7|TDMS[0]~26_combout\);

-- Location: LCCOMB_X37_Y25_N20
\inst7|TDMS[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~27_combout\ = (\inst|inPix\(6) & (((\inst7|TDMS[0]~26_combout\)))) # (!\inst|inPix\(6) & (\inst7|TDMS[0]~25_combout\ & (\inst|inPix\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[0]~25_combout\,
	datab => \inst|inPix\(6),
	datac => \inst|inPix\(5),
	datad => \inst7|TDMS[0]~26_combout\,
	combout => \inst7|TDMS[0]~27_combout\);

-- Location: LCCOMB_X37_Y25_N14
\inst7|TDMS[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~36_combout\ = (\inst7|TDMS[0]~35_combout\) # ((\inst7|TDMS[0]~29_combout\) # ((\inst7|TDMS[0]~32_combout\) # (\inst7|TDMS[0]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|TDMS[0]~35_combout\,
	datab => \inst7|TDMS[0]~29_combout\,
	datac => \inst7|TDMS[0]~32_combout\,
	datad => \inst7|TDMS[0]~27_combout\,
	combout => \inst7|TDMS[0]~36_combout\);

-- Location: LCCOMB_X40_Y26_N14
\inst7|TDMS[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~33_combout\ = (\inst19~3_combout\ & ((\inst7|TDMS[1]~20_combout\) # ((!\inst8|LessThan0~1_combout\ & \inst7|TDMS[0]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~3_combout\,
	datab => \inst8|LessThan0~1_combout\,
	datac => \inst7|TDMS[0]~36_combout\,
	datad => \inst7|TDMS[1]~20_combout\,
	combout => \inst7|TDMS[0]~33_combout\);

-- Location: LCCOMB_X40_Y26_N24
\inst7|TDMS[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS[0]~34_combout\ = (\inst7|TDMS[0]~33_combout\) # (\inst7|TDMS[2]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|TDMS[0]~33_combout\,
	datad => \inst7|TDMS[2]~40_combout\,
	combout => \inst7|TDMS[0]~34_combout\);

-- Location: LCCOMB_X40_Y30_N24
\inst7|TDMS[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|TDMS\(0) = (GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & (\inst7|TDMS[0]~34_combout\)) # (!GLOBAL(\inst7|TDMS[2]~19clkctrl_outclk\) & ((\inst7|TDMS\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|TDMS[0]~34_combout\,
	datac => \inst7|TDMS[2]~19clkctrl_outclk\,
	datad => \inst7|TDMS\(0),
	combout => \inst7|TDMS\(0));

-- Location: PSEUDODIFFOUT_X11_Y34_N6
\pin_TMDS[0]~output_pseudo_diff\ : cycloneive_pseudo_diff_out
PORT MAP (
	i => \inst7|TDMS\(0),
	o => \pin_TMDS[0]~output_pseudo_diff_o\,
	obar => \pin_TMDS[0]~output_pseudo_diffoutn\);
END structure;


