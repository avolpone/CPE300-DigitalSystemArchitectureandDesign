-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "12/07/2015 16:58:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	CENTRAL_PROCESSOR IS
    PORT (
	AC_TOCPU : OUT std_logic_vector(7 DOWNTO 0);
	PC_TOCPU : OUT std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	START : IN std_logic;
	FULL_RESET : IN std_logic
	);
END CENTRAL_PROCESSOR;

-- Design Ports Information
-- AC_TOCPU[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_TOCPU[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_TOCPU[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FULL_RESET	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- START	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CENTRAL_PROCESSOR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_AC_TOCPU : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_TOCPU : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_FULL_RESET : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CU|ALUS2~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_ENABLED~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CU|SOFT_RESET~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CU|ALUS5~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AC_TOCPU[0]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[1]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[2]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[3]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[4]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[5]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[6]~output_o\ : std_logic;
SIGNAL \AC_TOCPU[7]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[0]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[1]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[2]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[3]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[4]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[5]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[6]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[7]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[8]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[9]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[10]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[11]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[12]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[13]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[14]~output_o\ : std_logic;
SIGNAL \PC_TOCPU[15]~output_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLOCK_ENABLED~combout\ : std_logic;
SIGNAL \CLOCK_ENABLED~clkctrl_outclk\ : std_logic;
SIGNAL \FULL_RESET~input_o\ : std_logic;
SIGNAL \CONTROLSTEP|Ccounter|COUNT[0]~0_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Cdecoder|Decoder0~3_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Ccounter|COUNT[2]~2_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Ccounter|COUNT[2]~4_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Cdecoder|Decoder0~1_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~0_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~0_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~3_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~0_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~0_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~4_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|ILDAC~0_combout\ : std_logic;
SIGNAL \CU|PC_INC~0_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Cdecoder|Decoder0~2_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp[3]~1_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~8_combout\ : std_logic;
SIGNAL \CU|AC_LOAD~10_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~0_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|IINAC~0_combout\ : std_logic;
SIGNAL \CU|AC_LOAD~7_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~0_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~1_combout\ : std_logic;
SIGNAL \CU|AC_LOAD~8_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~3_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector7~0_combout\ : std_logic;
SIGNAL \CU|ALUS5~0_combout\ : std_logic;
SIGNAL \CU|ALUS5~0clkctrl_outclk\ : std_logic;
SIGNAL \CU|ALUS1~0_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~1_combout\ : std_logic;
SIGNAL \CU|ALUS1~1_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7_combout\ : std_logic;
SIGNAL \CU|ALUS2~1_combout\ : std_logic;
SIGNAL \CU|ALUS2~1clkctrl_outclk\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector7~0_combout\ : std_logic;
SIGNAL \CU|DR_BUS_L~0_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[6]~feeder_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector6~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector5~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector4~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector4~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector3~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector3~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector2~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector2~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector1~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector0~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~3\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~5_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector1~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~6\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~8_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~9\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~11_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~12\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~14_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~15\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[5]~feeder_combout\ : std_logic;
SIGNAL \DP|BUS[5]~26_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~3\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~4_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~5_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~5\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~6_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~6_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~7\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~8_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~7_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~9\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~10_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~8_combout\ : std_logic;
SIGNAL \DP|BUS[5]~25_combout\ : std_logic;
SIGNAL \DP|BUS[5]~27_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~2_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~11_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~2clkctrl_outclk\ : std_logic;
SIGNAL \DP|ADMODULE|ZCHECK|WideNor0~0_combout\ : std_logic;
SIGNAL \CU|AR_INC~2_combout\ : std_logic;
SIGNAL \CU|AR_INC~3_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~9_combout\ : std_logic;
SIGNAL \CU|AR_INC~5_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ZCHECK|WideNor0~1_combout\ : std_logic;
SIGNAL \CU|AR_INC~4_combout\ : std_logic;
SIGNAL \CU|AR_INC~6_combout\ : std_logic;
SIGNAL \CU|TR_LOAD~3_combout\ : std_logic;
SIGNAL \CU|DR_BUS_H~0_combout\ : std_logic;
SIGNAL \DP|BUS[5]~28_combout\ : std_logic;
SIGNAL \DP|BUS[5]~29_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector5~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~18\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~20_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\ : std_logic;
SIGNAL \DP|BUS[6]~31_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~11\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~12_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~9_combout\ : std_logic;
SIGNAL \DP|BUS[6]~30_combout\ : std_logic;
SIGNAL \DP|BUS[6]~32_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[30]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~12_combout\ : std_logic;
SIGNAL \DP|BUS[6]~33_combout\ : std_logic;
SIGNAL \DP|BUS[6]~34_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|Selector6~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~21\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~23_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ZCHECK|WideNor0~2_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ZCHECK|WideNor0~combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp[3]~2_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp[3]~3_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~1\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~2_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~4_combout\ : std_logic;
SIGNAL \DP|BUS[1]~5_combout\ : std_logic;
SIGNAL \DP|BUS[1]~6_combout\ : std_logic;
SIGNAL \DP|BUS[1]~7_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~7_combout\ : std_logic;
SIGNAL \DP|BUS[1]~8_combout\ : std_logic;
SIGNAL \DP|BUS[1]~9_combout\ : std_logic;
SIGNAL \CU|IR_LOAD~1_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~6_combout\ : std_logic;
SIGNAL \CU|R_LOAD~0_combout\ : std_logic;
SIGNAL \CU|AC_BUS~0_combout\ : std_logic;
SIGNAL \CU|AC_BUS~1_combout\ : std_logic;
SIGNAL \DP|BUS[2]~11_combout\ : std_logic;
SIGNAL \DP|BUS[2]~10_combout\ : std_logic;
SIGNAL \DP|BUS[2]~12_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[22]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~8_combout\ : std_logic;
SIGNAL \DP|BUS[2]~13_combout\ : std_logic;
SIGNAL \DP|BUS[2]~14_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[2]~feeder_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~5_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~4_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~5_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~1_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~2_combout\ : std_logic;
SIGNAL \CU|DR_LOAD~6_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~2_combout\ : std_logic;
SIGNAL \CU|AC_LOAD~9_combout\ : std_logic;
SIGNAL \CU|R_BUS~2_combout\ : std_logic;
SIGNAL \DP|BUS[0]~0_combout\ : std_logic;
SIGNAL \DP|BUS[0]~1_combout\ : std_logic;
SIGNAL \DP|BUS[0]~2_combout\ : std_logic;
SIGNAL \DP|BUS[0]~3_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[17]~0_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~6_combout\ : std_logic;
SIGNAL \DP|BUS[0]~4_combout\ : std_logic;
SIGNAL \CU|AR_INC~7_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~2_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[0]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~1\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~3_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~5_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[1]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~4\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~6_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~8_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[2]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~7\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~9_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~11_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[3]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~10\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~12_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~14_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[4]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~13\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~15_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~17_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[5]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~16\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~18_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~20_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[6]~reg0_q\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~19\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~21_combout\ : std_logic;
SIGNAL \DP|ARMODULE|Add0~23_combout\ : std_logic;
SIGNAL \DP|ARMODULE|AR_OUT[7]~reg0_q\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~4_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~3_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[4]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~0_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~1_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~2_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~5_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~9_combout\ : std_logic;
SIGNAL \DP|BUS[3]~18_combout\ : std_logic;
SIGNAL \DP|BUS[3]~15_combout\ : std_logic;
SIGNAL \DP|BUS[3]~16_combout\ : std_logic;
SIGNAL \DP|BUS[3]~17_combout\ : std_logic;
SIGNAL \DP|BUS[3]~19_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[3]~feeder_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~7_combout\ : std_logic;
SIGNAL \CU|MEMBUS~0_combout\ : std_logic;
SIGNAL \CU|MEMBUS~1_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|data~0_combout\ : std_logic;
SIGNAL \DP|BUS[4]~20_combout\ : std_logic;
SIGNAL \DP|BUS[4]~21_combout\ : std_logic;
SIGNAL \DP|BUS[4]~22_combout\ : std_logic;
SIGNAL \DP|BUS[4]~23_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~10_combout\ : std_logic;
SIGNAL \DP|BUS[4]~24_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[4]~feeder_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|ISUB~0_combout\ : std_logic;
SIGNAL \CU|DR_BUS_H~1_combout\ : std_logic;
SIGNAL \CU|PC_LOAD~0_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~13\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~14_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~10_combout\ : std_logic;
SIGNAL \DP|BUS[7]~35_combout\ : std_logic;
SIGNAL \DP|BUS[7]~36_combout\ : std_logic;
SIGNAL \DP|BUS[7]~37_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass[32]~feeder_combout\ : std_logic;
SIGNAL \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \DP|MEMMODULE|mem~13_combout\ : std_logic;
SIGNAL \DP|BUS[7]~38_combout\ : std_logic;
SIGNAL \DP|BUS[7]~39_combout\ : std_logic;
SIGNAL \DP|DRMODULE|DR_temp[7]~feeder_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|ISUB~1_combout\ : std_logic;
SIGNAL \CU|TR_LOAD~2_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~9_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~7_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~5_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Odecoder|Decoder0~10_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~3_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~4_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~6_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~8_combout\ : std_logic;
SIGNAL \CU|SOFT_RESET~10_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Ccounter|COUNT[1]~3_combout\ : std_logic;
SIGNAL \CONTROLSTEP|Cdecoder|Decoder0~0_combout\ : std_logic;
SIGNAL \CU|ALUS2~0_combout\ : std_logic;
SIGNAL \CU|ALUS7~2_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~2_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|Selector0~0_combout\ : std_logic;
SIGNAL \DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~15\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~16_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~11_combout\ : std_logic;
SIGNAL \CU|IR_LOAD~0_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp[8]~12_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~17\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~18_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~13_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~19\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~20_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~14_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~21\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~22_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~15_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~23\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~24_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~16_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~25\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~26_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~17_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~27\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~28_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~18_combout\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~29\ : std_logic;
SIGNAL \DP|PCMODULE|Add0~30_combout\ : std_logic;
SIGNAL \DP|PCMODULE|PC_temp~19_combout\ : std_logic;
SIGNAL \DP|ADMODULE|AC_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|PCMODULE|PC_temp\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \DP|RMODULE|R_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CONTROLSTEP|Ccounter|COUNT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \DP|IRMODULE|IR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|ADMODULE|ALUMOD|MUX3|OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|DRMODULE|DR_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|TRMODULE|TR_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|MEMMODULE|mem_rtl_0_bypass\ : std_logic_vector(0 TO 32);
SIGNAL \DP|ADMODULE|ALUMOD|MUX2|OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DP|MEMMODULE|data_out\ : std_logic_vector(7 DOWNTO 0);

BEGIN

AC_TOCPU <= ww_AC_TOCPU;
PC_TOCPU <= ww_PC_TOCPU;
ww_CLK <= CLK;
ww_START <= START;
ww_FULL_RESET <= FULL_RESET;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\DP|BUS[7]~39_combout\ & \DP|BUS[6]~34_combout\ & \DP|BUS[5]~29_combout\ & \DP|BUS[4]~24_combout\ & \DP|BUS[3]~19_combout\ & \DP|BUS[2]~14_combout\ & \DP|BUS[1]~9_combout\ & \DP|BUS[0]~4_combout\);

\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DP|ARMODULE|AR_OUT[7]~reg0_q\ & \DP|ARMODULE|AR_OUT[6]~reg0_q\ & \DP|ARMODULE|AR_OUT[5]~reg0_q\ & \DP|ARMODULE|AR_OUT[4]~reg0_q\ & \DP|ARMODULE|AR_OUT[3]~reg0_q\ & 
\DP|ARMODULE|AR_OUT[2]~reg0_q\ & \DP|ARMODULE|AR_OUT[1]~reg0_q\ & \DP|ARMODULE|AR_OUT[0]~reg0_q\);

\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\DP|ARMODULE|Add0~23_combout\ & \DP|ARMODULE|Add0~20_combout\ & \DP|ARMODULE|Add0~17_combout\ & \DP|ARMODULE|Add0~14_combout\ & \DP|ARMODULE|Add0~11_combout\ & 
\DP|ARMODULE|Add0~8_combout\ & \DP|ARMODULE|Add0~5_combout\ & \DP|ARMODULE|Add0~2_combout\);

\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a1\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a2\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a3\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a4\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a5\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a6\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a7\ <= \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\CU|ALUS2~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|ALUS2~1_combout\);

\CLOCK_ENABLED~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_ENABLED~combout\);

\CU|SOFT_RESET~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|SOFT_RESET~2_combout\);

\CU|ALUS5~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CU|ALUS5~0_combout\);

-- Location: IOOBUF_X107_Y73_N9
\AC_TOCPU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(0),
	devoe => ww_devoe,
	o => \AC_TOCPU[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\AC_TOCPU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(1),
	devoe => ww_devoe,
	o => \AC_TOCPU[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\AC_TOCPU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(2),
	devoe => ww_devoe,
	o => \AC_TOCPU[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\AC_TOCPU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(3),
	devoe => ww_devoe,
	o => \AC_TOCPU[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\AC_TOCPU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(4),
	devoe => ww_devoe,
	o => \AC_TOCPU[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\AC_TOCPU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(5),
	devoe => ww_devoe,
	o => \AC_TOCPU[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\AC_TOCPU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(6),
	devoe => ww_devoe,
	o => \AC_TOCPU[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\AC_TOCPU[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|ADMODULE|AC_temp\(7),
	devoe => ww_devoe,
	o => \AC_TOCPU[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\PC_TOCPU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(0),
	devoe => ww_devoe,
	o => \PC_TOCPU[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\PC_TOCPU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(1),
	devoe => ww_devoe,
	o => \PC_TOCPU[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\PC_TOCPU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(2),
	devoe => ww_devoe,
	o => \PC_TOCPU[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\PC_TOCPU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(3),
	devoe => ww_devoe,
	o => \PC_TOCPU[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\PC_TOCPU[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(4),
	devoe => ww_devoe,
	o => \PC_TOCPU[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\PC_TOCPU[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(5),
	devoe => ww_devoe,
	o => \PC_TOCPU[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\PC_TOCPU[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(6),
	devoe => ww_devoe,
	o => \PC_TOCPU[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\PC_TOCPU[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(7),
	devoe => ww_devoe,
	o => \PC_TOCPU[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\PC_TOCPU[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(8),
	devoe => ww_devoe,
	o => \PC_TOCPU[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\PC_TOCPU[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(9),
	devoe => ww_devoe,
	o => \PC_TOCPU[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\PC_TOCPU[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(10),
	devoe => ww_devoe,
	o => \PC_TOCPU[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\PC_TOCPU[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(11),
	devoe => ww_devoe,
	o => \PC_TOCPU[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\PC_TOCPU[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(12),
	devoe => ww_devoe,
	o => \PC_TOCPU[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\PC_TOCPU[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(13),
	devoe => ww_devoe,
	o => \PC_TOCPU[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\PC_TOCPU[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(14),
	devoe => ww_devoe,
	o => \PC_TOCPU[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\PC_TOCPU[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|PCMODULE|PC_temp\(15),
	devoe => ww_devoe,
	o => \PC_TOCPU[15]~output_o\);

-- Location: IOIBUF_X115_Y17_N1
\START~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X74_Y70_N20
CLOCK_ENABLED : cycloneive_lcell_comb
-- Equation(s):
-- \CLOCK_ENABLED~combout\ = LCELL((\START~input_o\ & \CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \START~input_o\,
	datad => \CLK~input_o\,
	combout => \CLOCK_ENABLED~combout\);

-- Location: CLKCTRL_G10
\CLOCK_ENABLED~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_ENABLED~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_ENABLED~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\FULL_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FULL_RESET,
	o => \FULL_RESET~input_o\);

-- Location: LCCOMB_X74_Y70_N14
\CONTROLSTEP|Ccounter|COUNT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Ccounter|COUNT[0]~0_combout\ = (!\CU|SOFT_RESET~10_combout\ & (\CONTROLSTEP|Ccounter|COUNT\(0) $ (((\START~input_o\) # (\FULL_RESET~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datab => \FULL_RESET~input_o\,
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \CU|SOFT_RESET~10_combout\,
	combout => \CONTROLSTEP|Ccounter|COUNT[0]~0_combout\);

-- Location: FF_X74_Y70_N15
\CONTROLSTEP|Ccounter|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	d => \CONTROLSTEP|Ccounter|COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLSTEP|Ccounter|COUNT\(0));

-- Location: LCCOMB_X72_Y70_N16
\CONTROLSTEP|Cdecoder|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Cdecoder|Decoder0~3_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(0) & \CONTROLSTEP|Ccounter|COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \CONTROLSTEP|Ccounter|COUNT\(1),
	combout => \CONTROLSTEP|Cdecoder|Decoder0~3_combout\);

-- Location: LCCOMB_X74_Y70_N24
\CONTROLSTEP|Ccounter|COUNT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Ccounter|COUNT[2]~2_combout\ = (\FULL_RESET~input_o\) # ((\START~input_o\) # (\CU|SOFT_RESET~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datac => \START~input_o\,
	datad => \CU|SOFT_RESET~10_combout\,
	combout => \CONTROLSTEP|Ccounter|COUNT[2]~2_combout\);

-- Location: LCCOMB_X74_Y70_N4
\CONTROLSTEP|Ccounter|COUNT[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Ccounter|COUNT[2]~4_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(2) & (((\CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ & !\CONTROLSTEP|Cdecoder|Decoder0~3_combout\)) # (!\CONTROLSTEP|Ccounter|COUNT[2]~2_combout\))) # (!\CONTROLSTEP|Ccounter|COUNT\(2) 
-- & (\CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ & (\CONTROLSTEP|Cdecoder|Decoder0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT[2]~1_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~3_combout\,
	datac => \CONTROLSTEP|Ccounter|COUNT\(2),
	datad => \CONTROLSTEP|Ccounter|COUNT[2]~2_combout\,
	combout => \CONTROLSTEP|Ccounter|COUNT[2]~4_combout\);

-- Location: FF_X74_Y70_N5
\CONTROLSTEP|Ccounter|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	d => \CONTROLSTEP|Ccounter|COUNT[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLSTEP|Ccounter|COUNT\(2));

-- Location: LCCOMB_X75_Y70_N12
\CONTROLSTEP|Cdecoder|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Cdecoder|Decoder0~1_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(1) & \CONTROLSTEP|Ccounter|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\);

-- Location: LCCOMB_X74_Y69_N16
\CU|DR_LOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~0_combout\ = (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(1) & !\CONTROLSTEP|Ccounter|COUNT\(0))) # (!\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Ccounter|COUNT\(1) & 
-- \CONTROLSTEP|Ccounter|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|DR_LOAD~0_combout\);

-- Location: LCCOMB_X79_Y71_N16
\DP|ARMODULE|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~0_combout\ = \DP|ARMODULE|AR_OUT[0]~reg0_q\ $ (VCC)
-- \DP|ARMODULE|Add0~1\ = CARRY(\DP|ARMODULE|AR_OUT[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ARMODULE|AR_OUT[0]~reg0_q\,
	datad => VCC,
	combout => \DP|ARMODULE|Add0~0_combout\,
	cout => \DP|ARMODULE|Add0~1\);

-- Location: LCCOMB_X74_Y69_N14
\CU|DR_LOAD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~3_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(0) & (\CONTROLSTEP|Ccounter|COUNT\(1) & !\CONTROLSTEP|Ccounter|COUNT\(2))) # (!\CONTROLSTEP|Ccounter|COUNT\(0) & ((\CONTROLSTEP|Ccounter|COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(1),
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \CU|DR_LOAD~3_combout\);

-- Location: LCCOMB_X77_Y69_N0
\DP|PCMODULE|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~0_combout\ = \DP|PCMODULE|PC_temp\(0) $ (VCC)
-- \DP|PCMODULE|Add0~1\ = CARRY(\DP|PCMODULE|PC_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|PCMODULE|PC_temp\(0),
	datad => VCC,
	combout => \DP|PCMODULE|Add0~0_combout\,
	cout => \DP|PCMODULE|Add0~1\);

-- Location: LCCOMB_X75_Y69_N12
\DP|PCMODULE|PC_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~0_combout\ = (\CU|PC_LOAD~0_combout\ & (((!\FULL_RESET~input_o\ & \DP|PCMODULE|Add0~0_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|BUS[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \DP|BUS[0]~4_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|PCMODULE|Add0~0_combout\,
	combout => \DP|PCMODULE|PC_temp~0_combout\);

-- Location: LCCOMB_X72_Y70_N8
\CONTROLSTEP|Odecoder|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~4_combout\ = (!\DP|IRMODULE|IR\(2) & (\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(3) & !\DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~4_combout\);

-- Location: LCCOMB_X74_Y69_N28
\CONTROLSTEP|Odecoder|ILDAC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|ILDAC~0_combout\ = (!\DP|IRMODULE|IR\(7) & (\CONTROLSTEP|Odecoder|Decoder0~4_combout\ & \CONTROLSTEP|Odecoder|ISUB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IRMODULE|IR\(7),
	datac => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CONTROLSTEP|Odecoder|ILDAC~0_combout\);

-- Location: LCCOMB_X74_Y69_N6
\CU|PC_INC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|PC_INC~0_combout\ = (\CONTROLSTEP|Odecoder|ILDAC~0_combout\ & ((\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(1) & !\CONTROLSTEP|Ccounter|COUNT\(0))) # (!\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Ccounter|COUNT\(1) & 
-- \CONTROLSTEP|Ccounter|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|ILDAC~0_combout\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|PC_INC~0_combout\);

-- Location: LCCOMB_X74_Y69_N20
\CONTROLSTEP|Cdecoder|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Cdecoder|Decoder0~2_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(1) & (!\CONTROLSTEP|Ccounter|COUNT\(2) & \CONTROLSTEP|Ccounter|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(1),
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CONTROLSTEP|Cdecoder|Decoder0~2_combout\);

-- Location: LCCOMB_X74_Y69_N12
\DP|PCMODULE|PC_temp[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp[3]~1_combout\ = (\CU|PC_INC~0_combout\) # ((\CONTROLSTEP|Cdecoder|Decoder0~2_combout\) # ((\CONTROLSTEP|Odecoder|Decoder0~5_combout\ & \CU|DR_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datab => \CU|PC_INC~0_combout\,
	datac => \CONTROLSTEP|Cdecoder|Decoder0~2_combout\,
	datad => \CU|DR_LOAD~0_combout\,
	combout => \DP|PCMODULE|PC_temp[3]~1_combout\);

-- Location: LCCOMB_X72_Y70_N26
\CONTROLSTEP|Odecoder|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~8_combout\ = (!\DP|IRMODULE|IR\(3) & (\DP|IRMODULE|IR\(0) & (\DP|IRMODULE|IR\(2) & \DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(3),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(2),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~8_combout\);

-- Location: LCCOMB_X72_Y70_N10
\CU|AC_LOAD~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_LOAD~10_combout\ = (\DP|IRMODULE|IR\(2) & (!\DP|IRMODULE|IR\(3) & ((\DP|IRMODULE|IR\(0)) # (\DP|IRMODULE|IR\(1))))) # (!\DP|IRMODULE|IR\(2) & (((!\DP|IRMODULE|IR\(0) & \DP|IRMODULE|IR\(1))) # (!\DP|IRMODULE|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CU|AC_LOAD~10_combout\);

-- Location: LCCOMB_X73_Y70_N14
\CONTROLSTEP|Odecoder|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~0_combout\ = (!\DP|IRMODULE|IR\(2) & (!\DP|IRMODULE|IR\(0) & (\DP|IRMODULE|IR\(3) & \DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~0_combout\);

-- Location: LCCOMB_X74_Y70_N0
\CONTROLSTEP|Odecoder|IINAC~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|IINAC~0_combout\ = (!\DP|IRMODULE|IR\(7) & (\CONTROLSTEP|Odecoder|Decoder0~0_combout\ & \CONTROLSTEP|Odecoder|ISUB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IRMODULE|IR\(7),
	datac => \CONTROLSTEP|Odecoder|Decoder0~0_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CONTROLSTEP|Odecoder|IINAC~0_combout\);

-- Location: LCCOMB_X72_Y70_N6
\CU|AC_LOAD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_LOAD~7_combout\ = (\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & ((\CONTROLSTEP|Odecoder|IINAC~0_combout\) # ((!\CU|AC_LOAD~10_combout\ & \CONTROLSTEP|Odecoder|ISUB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_LOAD~10_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datac => \CONTROLSTEP|Odecoder|IINAC~0_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|AC_LOAD~7_combout\);

-- Location: LCCOMB_X74_Y70_N8
\CU|SOFT_RESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~0_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(1) & (\CONTROLSTEP|Ccounter|COUNT\(2) & \CONTROLSTEP|Ccounter|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(1),
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|SOFT_RESET~0_combout\);

-- Location: LCCOMB_X72_Y70_N18
\CU|SOFT_RESET~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~1_combout\ = (\CU|SOFT_RESET~0_combout\ & (!\DP|IRMODULE|IR\(7) & (\CONTROLSTEP|Odecoder|Decoder0~4_combout\ & \CONTROLSTEP|Odecoder|ISUB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|SOFT_RESET~0_combout\,
	datab => \DP|IRMODULE|IR\(7),
	datac => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CU|SOFT_RESET~1_combout\);

-- Location: LCCOMB_X72_Y70_N28
\CU|AC_LOAD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_LOAD~8_combout\ = (\CU|AC_LOAD~7_combout\) # ((\FULL_RESET~input_o\) # (\CU|SOFT_RESET~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|AC_LOAD~7_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \CU|SOFT_RESET~1_combout\,
	combout => \CU|AC_LOAD~8_combout\);

-- Location: FF_X73_Y70_N29
\DP|ADMODULE|AC_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(7));

-- Location: LCCOMB_X72_Y70_N4
\CONTROLSTEP|Odecoder|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~3_combout\ = (\DP|IRMODULE|IR\(3) & (\DP|IRMODULE|IR\(0) & (\DP|IRMODULE|IR\(2) & !\DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(3),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(2),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~3_combout\);

-- Location: LCCOMB_X72_Y70_N22
\DP|ADMODULE|ALUMOD|MUX3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\ = (\CU|ALUS2~0_combout\ & (\CONTROLSTEP|Odecoder|Decoder0~3_combout\ & !\FULL_RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CONTROLSTEP|Odecoder|Decoder0~3_combout\,
	datac => \FULL_RESET~input_o\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y70_N12
\DP|ADMODULE|ALUMOD|MUX3|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector7~0_combout\ = (\DP|BUS[7]~39_combout\ & ((\DP|ADMODULE|AC_temp\(7)) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|BUS[7]~39_combout\ & (\DP|ADMODULE|AC_temp\(7) & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[7]~39_combout\,
	datac => \DP|ADMODULE|AC_temp\(7),
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector7~0_combout\);

-- Location: LCCOMB_X73_Y70_N16
\CU|ALUS5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS5~0_combout\ = (\CU|ALUS2~0_combout\ & (\DP|IRMODULE|IR\(3) & (\DP|IRMODULE|IR\(1) & \DP|IRMODULE|IR\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \DP|IRMODULE|IR\(3),
	datac => \DP|IRMODULE|IR\(1),
	datad => \DP|IRMODULE|IR\(2),
	combout => \CU|ALUS5~0_combout\);

-- Location: CLKCTRL_G14
\CU|ALUS5~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|ALUS5~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|ALUS5~0clkctrl_outclk\);

-- Location: LCCOMB_X76_Y70_N0
\DP|ADMODULE|ALUMOD|MUX3|OUT[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(7) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(7)))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|Selector7~0_combout\,
	datab => \DP|ADMODULE|ALUMOD|MUX3|OUT\(7),
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(7));

-- Location: LCCOMB_X73_Y70_N30
\CU|ALUS1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS1~0_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~0_combout\ & (\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & (!\DP|IRMODULE|IR\(7) & \CONTROLSTEP|Odecoder|ISUB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~0_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datac => \DP|IRMODULE|IR\(7),
	datad => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CU|ALUS1~0_combout\);

-- Location: LCCOMB_X73_Y70_N4
\CONTROLSTEP|Odecoder|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~1_combout\ = (!\DP|IRMODULE|IR\(2) & (!\DP|IRMODULE|IR\(1) & (!\DP|IRMODULE|IR\(0) & \DP|IRMODULE|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(1),
	datac => \DP|IRMODULE|IR\(0),
	datad => \DP|IRMODULE|IR\(3),
	combout => \CONTROLSTEP|Odecoder|Decoder0~1_combout\);

-- Location: LCCOMB_X73_Y70_N18
\CU|ALUS1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS1~1_combout\ = (!\CONTROLSTEP|Odecoder|Decoder0~1_combout\ & !\CONTROLSTEP|Odecoder|Decoder0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLSTEP|Odecoder|Decoder0~1_combout\,
	datad => \CONTROLSTEP|Odecoder|Decoder0~2_combout\,
	combout => \CU|ALUS1~1_combout\);

-- Location: LCCOMB_X73_Y70_N28
\DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7_combout\ = (\DP|ADMODULE|AC_temp\(7) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~0_combout\,
	datac => \DP|ADMODULE|AC_temp\(7),
	datad => \CU|ALUS1~1_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7_combout\);

-- Location: LCCOMB_X74_Y70_N18
\CU|ALUS2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS2~1_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~2_combout\ & (\CONTROLSTEP|Odecoder|ISUB~0_combout\ & (\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & !\DP|IRMODULE|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~2_combout\,
	datab => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	datac => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datad => \DP|IRMODULE|IR\(7),
	combout => \CU|ALUS2~1_combout\);

-- Location: CLKCTRL_G11
\CU|ALUS2~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|ALUS2~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|ALUS2~1clkctrl_outclk\);

-- Location: LCCOMB_X72_Y70_N14
\DP|ADMODULE|ALUMOD|MUX2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ = (!\FULL_RESET~input_o\ & ((\CU|SOFT_RESET~1_combout\) # ((\CONTROLSTEP|Odecoder|Decoder0~1_combout\ & \CU|ALUS2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~1_combout\,
	datab => \CU|SOFT_RESET~1_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \CU|ALUS2~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\);

-- Location: LCCOMB_X76_Y70_N2
\DP|ADMODULE|ALUMOD|MUX2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector7~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[7]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datac => \DP|BUS[7]~39_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector7~0_combout\);

-- Location: LCCOMB_X76_Y70_N22
\DP|ADMODULE|ALUMOD|MUX2|OUT[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(7) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(7))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(7),
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|Selector7~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(7));

-- Location: LCCOMB_X75_Y70_N10
\CU|DR_BUS_L~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_BUS_L~0_combout\ = (\CU|SOFT_RESET~0_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~4_combout\) # (\CONTROLSTEP|Odecoder|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	datab => \CU|SOFT_RESET~0_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|DR_BUS_L~0_combout\);

-- Location: LCCOMB_X76_Y69_N16
\DP|DRMODULE|DR_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[6]~feeder_combout\ = \DP|BUS[6]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|BUS[6]~34_combout\,
	combout => \DP|DRMODULE|DR_temp[6]~feeder_combout\);

-- Location: FF_X76_Y69_N17
\DP|DRMODULE|DR_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[6]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(6));

-- Location: LCCOMB_X76_Y70_N28
\DP|ADMODULE|ALUMOD|MUX3|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector6~0_combout\ = (\DP|BUS[6]~34_combout\ & ((\DP|ADMODULE|AC_temp\(6)) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|BUS[6]~34_combout\ & (\DP|ADMODULE|AC_temp\(6) & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[6]~34_combout\,
	datab => \DP|ADMODULE|AC_temp\(6),
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector6~0_combout\);

-- Location: LCCOMB_X76_Y70_N8
\DP|ADMODULE|ALUMOD|MUX3|OUT[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(6) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(6)))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX3|Selector6~0_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(6),
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(6));

-- Location: LCCOMB_X73_Y70_N20
\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ = (\DP|ADMODULE|AC_temp\(6) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(6),
	datad => \CU|ALUS1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\);

-- Location: LCCOMB_X76_Y71_N2
\DP|ADMODULE|ALUMOD|MUX3|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector5~0_combout\ = (\DP|ADMODULE|AC_temp\(5) & ((\DP|BUS[5]~29_combout\) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|ADMODULE|AC_temp\(5) & (\DP|BUS[5]~29_combout\ & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|AC_temp\(5),
	datac => \DP|BUS[5]~29_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector5~0_combout\);

-- Location: LCCOMB_X76_Y71_N30
\DP|ADMODULE|ALUMOD|MUX3|OUT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(5) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(5))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|OUT\(5),
	datac => \DP|ADMODULE|ALUMOD|MUX3|Selector5~0_combout\,
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(5));

-- Location: LCCOMB_X73_Y70_N10
\DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\ = (\DP|ADMODULE|AC_temp\(5) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(5),
	datad => \CU|ALUS1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\);

-- Location: LCCOMB_X76_Y71_N8
\DP|ADMODULE|ALUMOD|MUX3|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector4~0_combout\ = (\DP|BUS[4]~24_combout\ & ((\DP|ADMODULE|AC_temp\(4)) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|BUS[4]~24_combout\ & (\DP|ADMODULE|AC_temp\(4) & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[4]~24_combout\,
	datac => \DP|ADMODULE|AC_temp\(4),
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector4~0_combout\);

-- Location: LCCOMB_X76_Y71_N4
\DP|ADMODULE|ALUMOD|MUX3|OUT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(4) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(4)))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX3|Selector4~0_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(4),
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(4));

-- Location: LCCOMB_X77_Y71_N6
\DP|ADMODULE|ALUMOD|MUX2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector4~0_combout\ = (\DP|BUS[4]~24_combout\ & \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|BUS[4]~24_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector4~0_combout\);

-- Location: LCCOMB_X77_Y71_N28
\DP|ADMODULE|ALUMOD|MUX2|OUT[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(4) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(4)))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|Selector4~0_combout\,
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|OUT\(4),
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(4));

-- Location: LCCOMB_X76_Y71_N14
\DP|ADMODULE|ALUMOD|MUX3|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector3~0_combout\ = (\DP|BUS[3]~19_combout\ & ((\DP|ADMODULE|AC_temp\(3)) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|BUS[3]~19_combout\ & (\DP|ADMODULE|AC_temp\(3) & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|BUS[3]~19_combout\,
	datac => \DP|ADMODULE|AC_temp\(3),
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector3~0_combout\);

-- Location: LCCOMB_X76_Y71_N22
\DP|ADMODULE|ALUMOD|MUX3|OUT[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(3) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(3))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|OUT\(3),
	datac => \DP|ADMODULE|ALUMOD|MUX3|Selector3~0_combout\,
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(3));

-- Location: LCCOMB_X77_Y71_N16
\DP|ADMODULE|ALUMOD|MUX2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector3~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[3]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[3]~19_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector3~0_combout\);

-- Location: LCCOMB_X77_Y71_N18
\DP|ADMODULE|ALUMOD|MUX2|OUT[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(3) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(3)))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX2|Selector3~0_combout\,
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|OUT\(3),
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(3));

-- Location: LCCOMB_X77_Y71_N30
\DP|ADMODULE|ALUMOD|MUX2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector2~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[2]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[2]~14_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector2~0_combout\);

-- Location: LCCOMB_X77_Y71_N0
\DP|ADMODULE|ALUMOD|MUX2|OUT[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(2) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(2)))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|Selector2~0_combout\,
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|OUT\(2),
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(2));

-- Location: LCCOMB_X76_Y71_N12
\DP|ADMODULE|ALUMOD|MUX3|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector2~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\ & ((\DP|BUS[2]~14_combout\) # (\DP|ADMODULE|AC_temp\(2)))) # (!\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\ & (\DP|BUS[2]~14_combout\ & \DP|ADMODULE|AC_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	datac => \DP|BUS[2]~14_combout\,
	datad => \DP|ADMODULE|AC_temp\(2),
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector2~0_combout\);

-- Location: LCCOMB_X76_Y71_N0
\DP|ADMODULE|ALUMOD|MUX3|OUT[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(2) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(2))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX3|OUT\(2),
	datac => \DP|ADMODULE|ALUMOD|MUX3|Selector2~0_combout\,
	datad => \CU|ALUS5~0clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(2));

-- Location: LCCOMB_X77_Y71_N24
\DP|ADMODULE|ALUMOD|MUX2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector1~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[1]~9_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector1~0_combout\);

-- Location: LCCOMB_X77_Y71_N22
\DP|ADMODULE|ALUMOD|MUX2|OUT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(1) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(1))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(1),
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|Selector1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(1));

-- Location: LCCOMB_X74_Y71_N26
\DP|ADMODULE|ALUMOD|MUX2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector0~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[0]~4_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector0~0_combout\);

-- Location: LCCOMB_X74_Y71_N2
\DP|ADMODULE|ALUMOD|MUX2|OUT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(0) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(0))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX2|OUT\(0),
	datac => \DP|ADMODULE|ALUMOD|MUX2|Selector0~0_combout\,
	datad => \CU|ALUS2~1clkctrl_outclk\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(0));

-- Location: LCCOMB_X73_Y70_N0
\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ = (\DP|ADMODULE|AC_temp\(0) & ((\CU|ALUS1~0_combout\) # ((!\CU|ALUS1~1_combout\ & \CU|ALUS2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS1~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \CU|ALUS2~0_combout\,
	datad => \DP|ADMODULE|AC_temp\(0),
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\);

-- Location: LCCOMB_X73_Y71_N6
\DP|ADMODULE|ALUMOD|ADD16b|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\ = CARRY((\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & \CONTROLSTEP|Odecoder|IINAC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datab => \CONTROLSTEP|Odecoder|IINAC~0_combout\,
	datad => VCC,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\);

-- Location: LCCOMB_X73_Y71_N8
\DP|ADMODULE|ALUMOD|ADD16b|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~2_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|OUT\(0) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\ & VCC)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ & 
-- (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\)))) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(0) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ & 
-- ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\) # (GND)))))
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~3\ = CARRY((\DP|ADMODULE|ALUMOD|MUX2|OUT\(0) & (!\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\ & !\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\)) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(0) & ((!\DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\) # 
-- (!\DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(0),
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[0]~0_combout\,
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~1_cout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~2_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~3\);

-- Location: LCCOMB_X73_Y71_N10
\DP|ADMODULE|ALUMOD|ADD16b|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~5_combout\ = ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(1) $ (\DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\ $ (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~3\)))) # (GND)
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~6\ = CARRY((\DP|ADMODULE|ALUMOD|MUX2|OUT\(1) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\) # (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~3\))) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(1) & (\DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\ & 
-- !\DP|ADMODULE|ALUMOD|ADD16b|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(1),
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\,
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~3\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~5_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~6\);

-- Location: LCCOMB_X76_Y71_N26
\DP|ADMODULE|ALUMOD|MUX3|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector1~0_combout\ = (\DP|ADMODULE|AC_temp\(1) & ((\DP|BUS[1]~9_combout\) # (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))) # (!\DP|ADMODULE|AC_temp\(1) & (\DP|BUS[1]~9_combout\ & \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|AC_temp\(1),
	datab => \DP|BUS[1]~9_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector1~0_combout\);

-- Location: LCCOMB_X76_Y71_N16
\DP|ADMODULE|ALUMOD|MUX3|OUT[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(1) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(1))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS5~0clkctrl_outclk\,
	datab => \DP|ADMODULE|ALUMOD|MUX3|OUT\(1),
	datad => \DP|ADMODULE|ALUMOD|MUX3|Selector1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(1));

-- Location: LCCOMB_X73_Y71_N4
\DP|ADMODULE|ALUMOD|ADD16b|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\ = (\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(1)))) # (!\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|ADD16b|Add0~5_combout\,
	datac => \CU|ALUS7~2_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX3|OUT\(1),
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\);

-- Location: FF_X73_Y70_N27
\DP|ADMODULE|AC_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(1));

-- Location: LCCOMB_X73_Y70_N26
\DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\ = (\DP|ADMODULE|AC_temp\(1) & ((\CU|ALUS1~0_combout\) # ((!\CU|ALUS1~1_combout\ & \CU|ALUS2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS1~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(1),
	datad => \CU|ALUS2~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[1]~1_combout\);

-- Location: LCCOMB_X73_Y71_N12
\DP|ADMODULE|ALUMOD|ADD16b|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~8_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|OUT\(2) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\ & VCC)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ & 
-- (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\)))) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(2) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\) # 
-- (GND)))))
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~9\ = CARRY((\DP|ADMODULE|ALUMOD|MUX2|OUT\(2) & (!\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ & !\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\)) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(2) & ((!\DP|ADMODULE|ALUMOD|ADD16b|Add0~6\) # 
-- (!\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(2),
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\,
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~6\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~8_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~9\);

-- Location: LCCOMB_X73_Y71_N30
\DP|ADMODULE|ALUMOD|ADD16b|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(2))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS7~2_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(2),
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~8_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\);

-- Location: FF_X73_Y70_N3
\DP|ADMODULE|AC_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(2));

-- Location: LCCOMB_X73_Y70_N2
\DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\ = (\DP|ADMODULE|AC_temp\(2) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(2),
	datad => \CU|ALUS1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[2]~2_combout\);

-- Location: LCCOMB_X73_Y71_N14
\DP|ADMODULE|ALUMOD|ADD16b|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~11_combout\ = ((\DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\ $ (\DP|ADMODULE|ALUMOD|MUX2|OUT\(3) $ (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~9\)))) # (GND)
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~12\ = CARRY((\DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\ & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(3)) # (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~9\))) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\ & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(3) & 
-- !\DP|ADMODULE|ALUMOD|ADD16b|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\,
	datab => \DP|ADMODULE|ALUMOD|MUX2|OUT\(3),
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~9\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~11_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~12\);

-- Location: LCCOMB_X73_Y71_N28
\DP|ADMODULE|ALUMOD|ADD16b|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(3))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|OUT\(3),
	datac => \DP|ADMODULE|ALUMOD|ADD16b|Add0~11_combout\,
	datad => \CU|ALUS7~2_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\);

-- Location: FF_X73_Y70_N9
\DP|ADMODULE|AC_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(3));

-- Location: LCCOMB_X73_Y70_N8
\DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\ = (\DP|ADMODULE|AC_temp\(3) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(3),
	datad => \CU|ALUS1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[3]~3_combout\);

-- Location: LCCOMB_X73_Y71_N16
\DP|ADMODULE|ALUMOD|ADD16b|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~14_combout\ = (\DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(4) & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\ & VCC)) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(4) & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\)))) 
-- # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ & ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(4) & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\)) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(4) & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\) # (GND)))))
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~15\ = CARRY((\DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ & (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(4) & !\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ & ((!\DP|ADMODULE|ALUMOD|ADD16b|Add0~12\) 
-- # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\,
	datab => \DP|ADMODULE|ALUMOD|MUX2|OUT\(4),
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~12\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~14_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~15\);

-- Location: LCCOMB_X73_Y71_N0
\DP|ADMODULE|ALUMOD|ADD16b|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(4))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS7~2_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(4),
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~14_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\);

-- Location: FF_X73_Y70_N13
\DP|ADMODULE|AC_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(4));

-- Location: LCCOMB_X73_Y70_N12
\DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\ = (\DP|ADMODULE|AC_temp\(4) & ((\CU|ALUS1~0_combout\) # ((\CU|ALUS2~0_combout\ & !\CU|ALUS1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \CU|ALUS1~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(4),
	datad => \CU|ALUS1~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX1|OUT[4]~4_combout\);

-- Location: LCCOMB_X73_Y71_N18
\DP|ADMODULE|ALUMOD|ADD16b|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\ = ((\DP|ADMODULE|ALUMOD|MUX2|OUT\(5) $ (\DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\ $ (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~15\)))) # (GND)
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~18\ = CARRY((\DP|ADMODULE|ALUMOD|MUX2|OUT\(5) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\) # (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~15\))) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(5) & (\DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\ & 
-- !\DP|ADMODULE|ALUMOD|ADD16b|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(5),
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[5]~5_combout\,
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~15\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~18\);

-- Location: LCCOMB_X75_Y71_N4
\DP|ADMODULE|ALUMOD|ADD16b|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(5))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|OUT\(5),
	datab => \CU|ALUS7~2_combout\,
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\);

-- Location: FF_X73_Y70_N11
\DP|ADMODULE|AC_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(5));

-- Location: LCCOMB_X76_Y69_N18
\DP|DRMODULE|DR_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[5]~feeder_combout\ = \DP|BUS[5]~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|BUS[5]~29_combout\,
	combout => \DP|DRMODULE|DR_temp[5]~feeder_combout\);

-- Location: FF_X76_Y69_N19
\DP|DRMODULE|DR_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[5]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(5));

-- Location: LCCOMB_X75_Y70_N2
\DP|BUS[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[5]~26_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(5)) # ((\CU|DR_BUS_L~0_combout\ & \DP|DRMODULE|DR_temp\(5))))) # (!\CU|AC_BUS~1_combout\ & (\CU|DR_BUS_L~0_combout\ & ((\DP|DRMODULE|DR_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \CU|DR_BUS_L~0_combout\,
	datac => \DP|ADMODULE|AC_temp\(5),
	datad => \DP|DRMODULE|DR_temp\(5),
	combout => \DP|BUS[5]~26_combout\);

-- Location: FF_X75_Y70_N1
\DP|RMODULE|R_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[5]~29_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(5));

-- Location: LCCOMB_X77_Y69_N2
\DP|PCMODULE|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~2_combout\ = (\DP|PCMODULE|PC_temp\(1) & (!\DP|PCMODULE|Add0~1\)) # (!\DP|PCMODULE|PC_temp\(1) & ((\DP|PCMODULE|Add0~1\) # (GND)))
-- \DP|PCMODULE|Add0~3\ = CARRY((!\DP|PCMODULE|Add0~1\) # (!\DP|PCMODULE|PC_temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(1),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~1\,
	combout => \DP|PCMODULE|Add0~2_combout\,
	cout => \DP|PCMODULE|Add0~3\);

-- Location: LCCOMB_X77_Y69_N4
\DP|PCMODULE|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~4_combout\ = (\DP|PCMODULE|PC_temp\(2) & (\DP|PCMODULE|Add0~3\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(2) & (!\DP|PCMODULE|Add0~3\ & VCC))
-- \DP|PCMODULE|Add0~5\ = CARRY((\DP|PCMODULE|PC_temp\(2) & !\DP|PCMODULE|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(2),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~3\,
	combout => \DP|PCMODULE|Add0~4_combout\,
	cout => \DP|PCMODULE|Add0~5\);

-- Location: LCCOMB_X75_Y68_N0
\DP|PCMODULE|PC_temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~5_combout\ = (\CU|PC_LOAD~0_combout\ & (\DP|PCMODULE|Add0~4_combout\ & (!\FULL_RESET~input_o\))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|BUS[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|Add0~4_combout\,
	datab => \CU|PC_LOAD~0_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|BUS[2]~14_combout\,
	combout => \DP|PCMODULE|PC_temp~5_combout\);

-- Location: FF_X75_Y68_N1
\DP|PCMODULE|PC_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~5_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(2));

-- Location: LCCOMB_X77_Y69_N6
\DP|PCMODULE|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~6_combout\ = (\DP|PCMODULE|PC_temp\(3) & (!\DP|PCMODULE|Add0~5\)) # (!\DP|PCMODULE|PC_temp\(3) & ((\DP|PCMODULE|Add0~5\) # (GND)))
-- \DP|PCMODULE|Add0~7\ = CARRY((!\DP|PCMODULE|Add0~5\) # (!\DP|PCMODULE|PC_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(3),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~5\,
	combout => \DP|PCMODULE|Add0~6_combout\,
	cout => \DP|PCMODULE|Add0~7\);

-- Location: LCCOMB_X75_Y69_N8
\DP|PCMODULE|PC_temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~6_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & ((\DP|PCMODULE|Add0~6_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|BUS[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \DP|BUS[3]~19_combout\,
	datac => \CU|PC_LOAD~0_combout\,
	datad => \DP|PCMODULE|Add0~6_combout\,
	combout => \DP|PCMODULE|PC_temp~6_combout\);

-- Location: FF_X75_Y69_N9
\DP|PCMODULE|PC_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~6_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(3));

-- Location: LCCOMB_X77_Y69_N8
\DP|PCMODULE|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~8_combout\ = (\DP|PCMODULE|PC_temp\(4) & (\DP|PCMODULE|Add0~7\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(4) & (!\DP|PCMODULE|Add0~7\ & VCC))
-- \DP|PCMODULE|Add0~9\ = CARRY((\DP|PCMODULE|PC_temp\(4) & !\DP|PCMODULE|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(4),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~7\,
	combout => \DP|PCMODULE|Add0~8_combout\,
	cout => \DP|PCMODULE|Add0~9\);

-- Location: LCCOMB_X75_Y69_N22
\DP|PCMODULE|PC_temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~7_combout\ = (\CU|PC_LOAD~0_combout\ & (((!\FULL_RESET~input_o\ & \DP|PCMODULE|Add0~8_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|BUS[4]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \DP|BUS[4]~24_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|PCMODULE|Add0~8_combout\,
	combout => \DP|PCMODULE|PC_temp~7_combout\);

-- Location: FF_X75_Y69_N23
\DP|PCMODULE|PC_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~7_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(4));

-- Location: LCCOMB_X77_Y69_N10
\DP|PCMODULE|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~10_combout\ = (\DP|PCMODULE|PC_temp\(5) & (!\DP|PCMODULE|Add0~9\)) # (!\DP|PCMODULE|PC_temp\(5) & ((\DP|PCMODULE|Add0~9\) # (GND)))
-- \DP|PCMODULE|Add0~11\ = CARRY((!\DP|PCMODULE|Add0~9\) # (!\DP|PCMODULE|PC_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PCMODULE|PC_temp\(5),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~9\,
	combout => \DP|PCMODULE|Add0~10_combout\,
	cout => \DP|PCMODULE|Add0~11\);

-- Location: LCCOMB_X75_Y68_N10
\DP|PCMODULE|PC_temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~8_combout\ = (\CU|PC_LOAD~0_combout\ & (\DP|PCMODULE|Add0~10_combout\ & (!\FULL_RESET~input_o\))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|BUS[5]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|Add0~10_combout\,
	datab => \CU|PC_LOAD~0_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|BUS[5]~29_combout\,
	combout => \DP|PCMODULE|PC_temp~8_combout\);

-- Location: FF_X75_Y68_N11
\DP|PCMODULE|PC_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~8_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(5));

-- Location: LCCOMB_X75_Y68_N12
\DP|BUS[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[5]~25_combout\ = (!\FULL_RESET~input_o\ & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & \DP|PCMODULE|PC_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \DP|PCMODULE|PC_temp\(5),
	combout => \DP|BUS[5]~25_combout\);

-- Location: LCCOMB_X75_Y70_N0
\DP|BUS[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[5]~27_combout\ = (\DP|BUS[5]~26_combout\) # ((\DP|BUS[5]~25_combout\) # ((\CU|R_BUS~2_combout\ & \DP|RMODULE|R_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|R_BUS~2_combout\,
	datab => \DP|BUS[5]~26_combout\,
	datac => \DP|RMODULE|R_temp\(5),
	datad => \DP|BUS[5]~25_combout\,
	combout => \DP|BUS[5]~27_combout\);

-- Location: FF_X76_Y71_N19
\DP|MEMMODULE|mem_rtl_0_bypass[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[5]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(27));

-- Location: LCCOMB_X81_Y71_N12
\DP|MEMMODULE|mem_rtl_0_bypass[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[28]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[28]~feeder_combout\);

-- Location: FF_X81_Y71_N13
\DP|MEMMODULE|mem_rtl_0_bypass[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(28));

-- Location: LCCOMB_X74_Y70_N16
\CU|SOFT_RESET~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~2_combout\ = (\CU|SOFT_RESET~0_combout\ & (\CONTROLSTEP|Odecoder|ISUB~0_combout\ & (\CONTROLSTEP|Odecoder|Decoder0~5_combout\ & !\DP|IRMODULE|IR\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|SOFT_RESET~0_combout\,
	datab => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \DP|IRMODULE|IR\(7),
	combout => \CU|SOFT_RESET~2_combout\);

-- Location: M9K_X78_Y71_N0
\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000006000000005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009000000000000000035000000001000000003000000000000000034000000001",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/FINAL.ram0_RAM_15119.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DATAPATH:DP|RAM:MEMMODULE|altsyncram:mem_rtl_0|altsyncram_i3g1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CU|SOFT_RESET~2_combout\,
	portbre => VCC,
	clk0 => \CLOCK_ENABLED~clkctrl_outclk\,
	clk1 => \CLOCK_ENABLED~clkctrl_outclk\,
	ena0 => \CU|SOFT_RESET~2_combout\,
	portadatain => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X81_Y71_N18
\DP|MEMMODULE|mem~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~11_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(28) & ((\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(27))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a5\))))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(28) & (\DP|MEMMODULE|mem_rtl_0_bypass\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(27),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(28),
	datac => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a5\,
	datad => \DP|MEMMODULE|mem~5_combout\,
	combout => \DP|MEMMODULE|mem~11_combout\);

-- Location: CLKCTRL_G12
\CU|SOFT_RESET~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CU|SOFT_RESET~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CU|SOFT_RESET~2clkctrl_outclk\);

-- Location: LCCOMB_X81_Y71_N24
\DP|MEMMODULE|data_out[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(5) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(5))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|data_out\(5),
	datac => \DP|MEMMODULE|mem~11_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(5));

-- Location: LCCOMB_X73_Y71_N2
\DP|ADMODULE|ZCHECK|WideNor0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ZCHECK|WideNor0~0_combout\ = (\DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\) # ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\) # ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\) # (\DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|ADD16b|Add0~10_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~7_combout\,
	datac => \DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\,
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~13_combout\,
	combout => \DP|ADMODULE|ZCHECK|WideNor0~0_combout\);

-- Location: LCCOMB_X73_Y71_N24
\CU|AR_INC~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~2_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~7_combout\ & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & !\DP|ADMODULE|ZCHECK|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\,
	datac => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datad => \DP|ADMODULE|ZCHECK|WideNor0~0_combout\,
	combout => \CU|AR_INC~2_combout\);

-- Location: LCCOMB_X75_Y71_N6
\CU|AR_INC~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~3_combout\ = (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\ & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\ & (\CU|AR_INC~2_combout\ & !\DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\,
	datac => \CU|AR_INC~2_combout\,
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\,
	combout => \CU|AR_INC~3_combout\);

-- Location: LCCOMB_X72_Y70_N12
\CONTROLSTEP|Odecoder|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~9_combout\ = (\DP|IRMODULE|IR\(2) & (!\DP|IRMODULE|IR\(1) & (\DP|IRMODULE|IR\(0) & !\DP|IRMODULE|IR\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(1),
	datac => \DP|IRMODULE|IR\(0),
	datad => \DP|IRMODULE|IR\(3),
	combout => \CONTROLSTEP|Odecoder|Decoder0~9_combout\);

-- Location: LCCOMB_X74_Y71_N20
\CU|AR_INC~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~5_combout\ = (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~9_combout\) # ((\CONTROLSTEP|Odecoder|Decoder0~5_combout\) # (\CONTROLSTEP|Odecoder|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~9_combout\,
	datab => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	combout => \CU|AR_INC~5_combout\);

-- Location: LCCOMB_X75_Y71_N8
\DP|ADMODULE|ZCHECK|WideNor0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ZCHECK|WideNor0~1_combout\ = (\DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\) # ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\) # ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\) # (\DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\,
	datac => \DP|ADMODULE|ALUMOD|ADD16b|Add0~19_combout\,
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\,
	combout => \DP|ADMODULE|ZCHECK|WideNor0~1_combout\);

-- Location: LCCOMB_X75_Y71_N30
\CU|AR_INC~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~4_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~8_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\DP|ADMODULE|ZCHECK|WideNor0~0_combout\) # (\DP|ADMODULE|ZCHECK|WideNor0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ZCHECK|WideNor0~0_combout\,
	datab => \CONTROLSTEP|Odecoder|Decoder0~8_combout\,
	datac => \DP|ADMODULE|ZCHECK|WideNor0~1_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|AR_INC~4_combout\);

-- Location: LCCOMB_X75_Y71_N10
\CU|AR_INC~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~6_combout\ = (!\FULL_RESET~input_o\ & ((\CU|AR_INC~3_combout\) # ((\CU|AR_INC~5_combout\) # (\CU|AR_INC~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AR_INC~3_combout\,
	datab => \CU|AR_INC~5_combout\,
	datac => \CU|AR_INC~4_combout\,
	datad => \FULL_RESET~input_o\,
	combout => \CU|AR_INC~6_combout\);

-- Location: LCCOMB_X75_Y71_N24
\CU|TR_LOAD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|TR_LOAD~3_combout\ = (\CU|AR_INC~6_combout\ & (\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(1) & !\CONTROLSTEP|Ccounter|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AR_INC~6_combout\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|TR_LOAD~3_combout\);

-- Location: FF_X75_Y71_N15
\DP|TRMODULE|TR_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(5),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(5));

-- Location: LCCOMB_X75_Y70_N18
\CU|DR_BUS_H~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_BUS_H~0_combout\ = (\CONTROLSTEP|Cdecoder|Decoder0~1_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~4_combout\) # (\CONTROLSTEP|Odecoder|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|DR_BUS_H~0_combout\);

-- Location: LCCOMB_X75_Y71_N2
\DP|BUS[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[5]~28_combout\ = (\DP|TRMODULE|TR_temp\(5) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|TRMODULE|TR_temp\(5),
	datab => \CU|DR_BUS_H~0_combout\,
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[5]~28_combout\);

-- Location: LCCOMB_X76_Y71_N18
\DP|BUS[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[5]~29_combout\ = (\DP|BUS[5]~27_combout\) # ((\DP|BUS[5]~28_combout\) # ((\DP|MEMMODULE|data_out\(5) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[5]~27_combout\,
	datab => \DP|MEMMODULE|data_out\(5),
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[5]~28_combout\,
	combout => \DP|BUS[5]~29_combout\);

-- Location: LCCOMB_X77_Y71_N20
\DP|ADMODULE|ALUMOD|MUX2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector5~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[5]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[5]~29_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector5~0_combout\);

-- Location: LCCOMB_X77_Y71_N26
\DP|ADMODULE|ALUMOD|MUX2|OUT[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(5) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(5))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~1clkctrl_outclk\,
	datab => \DP|ADMODULE|ALUMOD|MUX2|OUT\(5),
	datad => \DP|ADMODULE|ALUMOD|MUX2|Selector5~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(5));

-- Location: LCCOMB_X73_Y71_N20
\DP|ADMODULE|ALUMOD|ADD16b|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~20_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|OUT\(6) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\ & VCC)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ & 
-- (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\)))) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(6) & ((\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ & (!\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\)) # (!\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\) 
-- # (GND)))))
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~21\ = CARRY((\DP|ADMODULE|ALUMOD|MUX2|OUT\(6) & (!\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\ & !\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\)) # (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(6) & ((!\DP|ADMODULE|ALUMOD|ADD16b|Add0~18\) # 
-- (!\DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(6),
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[6]~6_combout\,
	datad => VCC,
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~18\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~20_combout\,
	cout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~21\);

-- Location: LCCOMB_X74_Y71_N16
\DP|ADMODULE|ALUMOD|ADD16b|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(6))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS7~2_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(6),
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~20_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\);

-- Location: FF_X73_Y70_N21
\DP|ADMODULE|AC_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(6));

-- Location: LCCOMB_X76_Y70_N4
\DP|BUS[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[6]~31_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(6)) # ((\CU|DR_BUS_L~0_combout\ & \DP|DRMODULE|DR_temp\(6))))) # (!\CU|AC_BUS~1_combout\ & (\CU|DR_BUS_L~0_combout\ & (\DP|DRMODULE|DR_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \CU|DR_BUS_L~0_combout\,
	datac => \DP|DRMODULE|DR_temp\(6),
	datad => \DP|ADMODULE|AC_temp\(6),
	combout => \DP|BUS[6]~31_combout\);

-- Location: FF_X76_Y70_N19
\DP|RMODULE|R_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[6]~34_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(6));

-- Location: LCCOMB_X77_Y69_N12
\DP|PCMODULE|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~12_combout\ = (\DP|PCMODULE|PC_temp\(6) & (\DP|PCMODULE|Add0~11\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(6) & (!\DP|PCMODULE|Add0~11\ & VCC))
-- \DP|PCMODULE|Add0~13\ = CARRY((\DP|PCMODULE|PC_temp\(6) & !\DP|PCMODULE|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(6),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~11\,
	combout => \DP|PCMODULE|Add0~12_combout\,
	cout => \DP|PCMODULE|Add0~13\);

-- Location: LCCOMB_X75_Y69_N28
\DP|PCMODULE|PC_temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~9_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & (\DP|PCMODULE|Add0~12_combout\))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|BUS[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \DP|PCMODULE|Add0~12_combout\,
	datac => \CU|PC_LOAD~0_combout\,
	datad => \DP|BUS[6]~34_combout\,
	combout => \DP|PCMODULE|PC_temp~9_combout\);

-- Location: FF_X75_Y69_N29
\DP|PCMODULE|PC_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~9_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(6));

-- Location: LCCOMB_X75_Y69_N0
\DP|BUS[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[6]~30_combout\ = (!\FULL_RESET~input_o\ & (\DP|PCMODULE|PC_temp\(6) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & !\CONTROLSTEP|Ccounter|COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \DP|PCMODULE|PC_temp\(6),
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \DP|BUS[6]~30_combout\);

-- Location: LCCOMB_X76_Y70_N16
\DP|BUS[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[6]~32_combout\ = (\DP|BUS[6]~31_combout\) # ((\DP|BUS[6]~30_combout\) # ((\DP|RMODULE|R_temp\(6) & \CU|R_BUS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[6]~31_combout\,
	datab => \DP|RMODULE|R_temp\(6),
	datac => \CU|R_BUS~2_combout\,
	datad => \DP|BUS[6]~30_combout\,
	combout => \DP|BUS[6]~32_combout\);

-- Location: FF_X76_Y70_N11
\DP|MEMMODULE|mem_rtl_0_bypass[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(29));

-- Location: LCCOMB_X77_Y70_N12
\DP|MEMMODULE|mem_rtl_0_bypass[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[30]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[30]~feeder_combout\);

-- Location: FF_X77_Y70_N13
\DP|MEMMODULE|mem_rtl_0_bypass[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(30));

-- Location: LCCOMB_X77_Y70_N2
\DP|MEMMODULE|mem~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~12_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(30) & ((\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(29))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a6\))))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(30) & (\DP|MEMMODULE|mem_rtl_0_bypass\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(29),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(30),
	datac => \DP|MEMMODULE|mem~5_combout\,
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \DP|MEMMODULE|mem~12_combout\);

-- Location: LCCOMB_X77_Y70_N16
\DP|MEMMODULE|data_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(6) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(6))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|data_out\(6),
	datac => \DP|MEMMODULE|mem~12_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(6));

-- Location: FF_X76_Y71_N17
\DP|TRMODULE|TR_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(6),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(6));

-- Location: LCCOMB_X76_Y70_N18
\DP|BUS[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[6]~33_combout\ = (\DP|TRMODULE|TR_temp\(6) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|TRMODULE|TR_temp\(6),
	datab => \CU|DR_BUS_H~0_combout\,
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[6]~33_combout\);

-- Location: LCCOMB_X76_Y70_N10
\DP|BUS[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[6]~34_combout\ = (\DP|BUS[6]~32_combout\) # ((\DP|BUS[6]~33_combout\) # ((\DP|MEMMODULE|data_out\(6) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[6]~32_combout\,
	datab => \DP|MEMMODULE|data_out\(6),
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[6]~33_combout\,
	combout => \DP|BUS[6]~34_combout\);

-- Location: LCCOMB_X76_Y70_N6
\DP|ADMODULE|ALUMOD|MUX2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|Selector6~0_combout\ = (\DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\ & \DP|BUS[6]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX2|Equal1~0_combout\,
	datad => \DP|BUS[6]~34_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|Selector6~0_combout\);

-- Location: LCCOMB_X76_Y70_N30
\DP|ADMODULE|ALUMOD|MUX2|OUT[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX2|OUT\(6) = (GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX2|OUT\(6))) # (!GLOBAL(\CU|ALUS2~1clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX2|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX2|OUT\(6),
	datac => \CU|ALUS2~1clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|Selector6~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX2|OUT\(6));

-- Location: LCCOMB_X73_Y71_N22
\DP|ADMODULE|ALUMOD|ADD16b|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~23_combout\ = \DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7_combout\ $ (\DP|ADMODULE|ALUMOD|ADD16b|Add0~21\ $ (!\DP|ADMODULE|ALUMOD|MUX2|OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX1|OUT[7]~7_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX2|OUT\(7),
	cin => \DP|ADMODULE|ALUMOD|ADD16b|Add0~21\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~23_combout\);

-- Location: LCCOMB_X74_Y71_N22
\DP|ADMODULE|ALUMOD|ADD16b|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\ = (\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(7))) # (!\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|MUX3|OUT\(7),
	datab => \CU|ALUS7~2_combout\,
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~23_combout\,
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\);

-- Location: LCCOMB_X73_Y71_N26
\DP|ADMODULE|ZCHECK|WideNor0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ZCHECK|WideNor0~2_combout\ = (\DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\) # ((\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(5)))) # (!\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS7~2_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~17_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|OUT\(5),
	datad => \DP|ADMODULE|ALUMOD|ADD16b|Add0~16_combout\,
	combout => \DP|ADMODULE|ZCHECK|WideNor0~2_combout\);

-- Location: LCCOMB_X74_Y71_N28
\DP|ADMODULE|ZCHECK|WideNor0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ZCHECK|WideNor0~combout\ = (\DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\) # ((\DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\) # ((\DP|ADMODULE|ZCHECK|WideNor0~2_combout\) # (\DP|ADMODULE|ZCHECK|WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ADMODULE|ALUMOD|ADD16b|Add0~25_combout\,
	datab => \DP|ADMODULE|ALUMOD|ADD16b|Add0~22_combout\,
	datac => \DP|ADMODULE|ZCHECK|WideNor0~2_combout\,
	datad => \DP|ADMODULE|ZCHECK|WideNor0~0_combout\,
	combout => \DP|ADMODULE|ZCHECK|WideNor0~combout\);

-- Location: LCCOMB_X75_Y69_N20
\DP|PCMODULE|PC_temp[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp[3]~2_combout\ = (\CU|DR_LOAD~0_combout\ & ((\DP|ADMODULE|ZCHECK|WideNor0~combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~7_combout\))) # (!\DP|ADMODULE|ZCHECK|WideNor0~combout\ & (\CONTROLSTEP|Odecoder|Decoder0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~8_combout\,
	datab => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	datac => \CU|DR_LOAD~0_combout\,
	datad => \DP|ADMODULE|ZCHECK|WideNor0~combout\,
	combout => \DP|PCMODULE|PC_temp[3]~2_combout\);

-- Location: LCCOMB_X75_Y69_N30
\DP|PCMODULE|PC_temp[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp[3]~3_combout\ = (\DP|PCMODULE|PC_temp[3]~1_combout\) # (((\FULL_RESET~input_o\) # (\DP|PCMODULE|PC_temp[3]~2_combout\)) # (!\CU|PC_LOAD~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp[3]~1_combout\,
	datab => \CU|PC_LOAD~0_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|PCMODULE|PC_temp[3]~2_combout\,
	combout => \DP|PCMODULE|PC_temp[3]~3_combout\);

-- Location: FF_X75_Y69_N13
\DP|PCMODULE|PC_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~0_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(0));

-- Location: LCCOMB_X75_Y69_N18
\DP|PCMODULE|PC_temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~4_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & ((\DP|PCMODULE|Add0~2_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|BUS[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CU|PC_LOAD~0_combout\,
	datac => \DP|BUS[1]~9_combout\,
	datad => \DP|PCMODULE|Add0~2_combout\,
	combout => \DP|PCMODULE|PC_temp~4_combout\);

-- Location: FF_X75_Y69_N19
\DP|PCMODULE|PC_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~4_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(1));

-- Location: LCCOMB_X75_Y69_N16
\DP|BUS[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[1]~5_combout\ = (!\FULL_RESET~input_o\ & (\DP|PCMODULE|PC_temp\(1) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & !\CONTROLSTEP|Ccounter|COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \DP|PCMODULE|PC_temp\(1),
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \DP|BUS[1]~5_combout\);

-- Location: FF_X75_Y69_N5
\DP|RMODULE|R_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[1]~9_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(1));

-- Location: LCCOMB_X75_Y69_N6
\DP|BUS[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[1]~6_combout\ = (\CU|DR_BUS_L~0_combout\ & ((\DP|DRMODULE|DR_temp\(1)) # ((\CU|AC_BUS~1_combout\ & \DP|ADMODULE|AC_temp\(1))))) # (!\CU|DR_BUS_L~0_combout\ & (\CU|AC_BUS~1_combout\ & (\DP|ADMODULE|AC_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_BUS_L~0_combout\,
	datab => \CU|AC_BUS~1_combout\,
	datac => \DP|ADMODULE|AC_temp\(1),
	datad => \DP|DRMODULE|DR_temp\(1),
	combout => \DP|BUS[1]~6_combout\);

-- Location: LCCOMB_X75_Y69_N4
\DP|BUS[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[1]~7_combout\ = (\DP|BUS[1]~5_combout\) # ((\DP|BUS[1]~6_combout\) # ((\CU|R_BUS~2_combout\ & \DP|RMODULE|R_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|R_BUS~2_combout\,
	datab => \DP|BUS[1]~5_combout\,
	datac => \DP|RMODULE|R_temp\(1),
	datad => \DP|BUS[1]~6_combout\,
	combout => \DP|BUS[1]~7_combout\);

-- Location: FF_X76_Y71_N29
\DP|MEMMODULE|mem_rtl_0_bypass[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(19));

-- Location: LCCOMB_X80_Y71_N0
\DP|MEMMODULE|mem_rtl_0_bypass[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[20]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[20]~feeder_combout\);

-- Location: FF_X80_Y71_N1
\DP|MEMMODULE|mem_rtl_0_bypass[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(20));

-- Location: LCCOMB_X80_Y71_N6
\DP|MEMMODULE|mem~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~7_combout\ = (\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(19))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0_bypass\(20) & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(20) & (\DP|MEMMODULE|mem_rtl_0_bypass\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~5_combout\,
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(19),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(20),
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \DP|MEMMODULE|mem~7_combout\);

-- Location: LCCOMB_X80_Y71_N12
\DP|MEMMODULE|data_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(1) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(1))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|data_out\(1),
	datab => \DP|MEMMODULE|mem~7_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(1));

-- Location: FF_X75_Y71_N3
\DP|TRMODULE|TR_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(1),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(1));

-- Location: LCCOMB_X75_Y71_N12
\DP|BUS[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[1]~8_combout\ = (\DP|TRMODULE|TR_temp\(1) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|TRMODULE|TR_temp\(1),
	datab => \CU|DR_BUS_H~0_combout\,
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[1]~8_combout\);

-- Location: LCCOMB_X76_Y71_N28
\DP|BUS[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[1]~9_combout\ = (\DP|BUS[1]~7_combout\) # ((\DP|BUS[1]~8_combout\) # ((\DP|MEMMODULE|data_out\(1) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[1]~7_combout\,
	datab => \DP|MEMMODULE|data_out\(1),
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[1]~8_combout\,
	combout => \DP|BUS[1]~9_combout\);

-- Location: FF_X76_Y69_N3
\DP|DRMODULE|DR_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[1]~9_combout\,
	sload => VCC,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(1));

-- Location: LCCOMB_X74_Y69_N24
\CU|IR_LOAD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|IR_LOAD~1_combout\ = (!\FULL_RESET~input_o\ & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Ccounter|COUNT\(1) & !\CONTROLSTEP|Ccounter|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|IR_LOAD~1_combout\);

-- Location: FF_X73_Y70_N17
\DP|IRMODULE|IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(1),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(1));

-- Location: LCCOMB_X72_Y70_N2
\CONTROLSTEP|Odecoder|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~6_combout\ = (!\DP|IRMODULE|IR\(2) & (\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(3) & \DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~6_combout\);

-- Location: LCCOMB_X74_Y70_N28
\CU|R_LOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|R_LOAD~0_combout\ = (!\DP|IRMODULE|IR\(7) & (\CONTROLSTEP|Odecoder|Decoder0~6_combout\ & (\CONTROLSTEP|Odecoder|ISUB~0_combout\ & \CONTROLSTEP|Cdecoder|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(7),
	datab => \CONTROLSTEP|Odecoder|Decoder0~6_combout\,
	datac => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	datad => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	combout => \CU|R_LOAD~0_combout\);

-- Location: LCCOMB_X75_Y70_N16
\CU|AC_BUS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_BUS~0_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(0) & (\CONTROLSTEP|Ccounter|COUNT\(1) & \CONTROLSTEP|Ccounter|COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \CU|AC_BUS~0_combout\);

-- Location: LCCOMB_X75_Y70_N30
\CU|AC_BUS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_BUS~1_combout\ = (\CU|R_LOAD~0_combout\) # ((\CU|AC_BUS~0_combout\ & (\CONTROLSTEP|Odecoder|Decoder0~5_combout\ & \CONTROLSTEP|Odecoder|ISUB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|R_LOAD~0_combout\,
	datab => \CU|AC_BUS~0_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|AC_BUS~1_combout\);

-- Location: LCCOMB_X75_Y70_N8
\DP|BUS[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[2]~11_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(2)) # ((\CU|DR_BUS_L~0_combout\ & \DP|DRMODULE|DR_temp\(2))))) # (!\CU|AC_BUS~1_combout\ & (((\CU|DR_BUS_L~0_combout\ & \DP|DRMODULE|DR_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \DP|ADMODULE|AC_temp\(2),
	datac => \CU|DR_BUS_L~0_combout\,
	datad => \DP|DRMODULE|DR_temp\(2),
	combout => \DP|BUS[2]~11_combout\);

-- Location: FF_X75_Y70_N15
\DP|RMODULE|R_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[2]~14_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(2));

-- Location: LCCOMB_X75_Y68_N4
\DP|BUS[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[2]~10_combout\ = (!\FULL_RESET~input_o\ & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & \DP|PCMODULE|PC_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \DP|PCMODULE|PC_temp\(2),
	combout => \DP|BUS[2]~10_combout\);

-- Location: LCCOMB_X75_Y70_N14
\DP|BUS[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[2]~12_combout\ = (\DP|BUS[2]~11_combout\) # ((\DP|BUS[2]~10_combout\) # ((\CU|R_BUS~2_combout\ & \DP|RMODULE|R_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|R_BUS~2_combout\,
	datab => \DP|BUS[2]~11_combout\,
	datac => \DP|RMODULE|R_temp\(2),
	datad => \DP|BUS[2]~10_combout\,
	combout => \DP|BUS[2]~12_combout\);

-- Location: FF_X76_Y71_N7
\DP|MEMMODULE|mem_rtl_0_bypass[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(21));

-- Location: LCCOMB_X77_Y71_N2
\DP|MEMMODULE|mem_rtl_0_bypass[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[22]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[22]~feeder_combout\);

-- Location: FF_X77_Y71_N3
\DP|MEMMODULE|mem_rtl_0_bypass[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(22));

-- Location: LCCOMB_X77_Y71_N12
\DP|MEMMODULE|mem~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~8_combout\ = (\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(21))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0_bypass\(22) & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(22) & (\DP|MEMMODULE|mem_rtl_0_bypass\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~5_combout\,
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(21),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(22),
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a2\,
	combout => \DP|MEMMODULE|mem~8_combout\);

-- Location: LCCOMB_X77_Y71_N14
\DP|MEMMODULE|data_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(2) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(2))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|data_out\(2),
	datac => \DP|MEMMODULE|mem~8_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(2));

-- Location: FF_X75_Y71_N1
\DP|TRMODULE|TR_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(2),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(2));

-- Location: LCCOMB_X75_Y71_N0
\DP|BUS[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[2]~13_combout\ = (\DP|TRMODULE|TR_temp\(2) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|DR_BUS_H~0_combout\,
	datac => \DP|TRMODULE|TR_temp\(2),
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[2]~13_combout\);

-- Location: LCCOMB_X76_Y71_N6
\DP|BUS[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[2]~14_combout\ = (\DP|BUS[2]~12_combout\) # ((\DP|BUS[2]~13_combout\) # ((\DP|MEMMODULE|data_out\(2) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[2]~12_combout\,
	datab => \DP|MEMMODULE|data_out\(2),
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[2]~13_combout\,
	combout => \DP|BUS[2]~14_combout\);

-- Location: LCCOMB_X76_Y69_N24
\DP|DRMODULE|DR_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[2]~feeder_combout\ = \DP|BUS[2]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|BUS[2]~14_combout\,
	combout => \DP|DRMODULE|DR_temp[2]~feeder_combout\);

-- Location: FF_X76_Y69_N25
\DP|DRMODULE|DR_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[2]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(2));

-- Location: FF_X73_Y70_N7
\DP|IRMODULE|IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(2),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(2));

-- Location: LCCOMB_X74_Y70_N26
\CONTROLSTEP|Odecoder|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~5_combout\ = (!\DP|IRMODULE|IR\(3) & (!\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(2) & \DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(3),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(2),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~5_combout\);

-- Location: LCCOMB_X75_Y69_N24
\CU|DR_LOAD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~4_combout\ = (\CU|DR_LOAD~3_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~5_combout\) # (\CONTROLSTEP|Odecoder|Decoder0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_LOAD~3_combout\,
	datab => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	datad => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	combout => \CU|DR_LOAD~4_combout\);

-- Location: LCCOMB_X75_Y69_N10
\CU|DR_LOAD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~5_combout\ = (\CU|DR_LOAD~4_combout\) # ((!\DP|ADMODULE|ZCHECK|WideNor0~combout\ & (\CU|DR_LOAD~0_combout\ & \CONTROLSTEP|Odecoder|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_LOAD~4_combout\,
	datab => \DP|ADMODULE|ZCHECK|WideNor0~combout\,
	datac => \CU|DR_LOAD~0_combout\,
	datad => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	combout => \CU|DR_LOAD~5_combout\);

-- Location: LCCOMB_X74_Y71_N30
\CU|DR_LOAD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~1_combout\ = (!\CONTROLSTEP|Cdecoder|Decoder0~2_combout\ & ((!\CU|DR_LOAD~0_combout\) # (!\CONTROLSTEP|Odecoder|Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~9_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~2_combout\,
	datad => \CU|DR_LOAD~0_combout\,
	combout => \CU|DR_LOAD~1_combout\);

-- Location: LCCOMB_X74_Y71_N6
\CU|DR_LOAD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~2_combout\ = (\CU|DR_LOAD~1_combout\ & (((!\DP|ADMODULE|ZCHECK|WideNor0~combout\) # (!\CONTROLSTEP|Odecoder|Decoder0~8_combout\)) # (!\CU|DR_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_LOAD~1_combout\,
	datab => \CU|DR_LOAD~0_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~8_combout\,
	datad => \DP|ADMODULE|ZCHECK|WideNor0~combout\,
	combout => \CU|DR_LOAD~2_combout\);

-- Location: LCCOMB_X76_Y69_N2
\CU|DR_LOAD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_LOAD~6_combout\ = (!\FULL_RESET~input_o\ & ((\CU|DR_LOAD~5_combout\) # (!\CU|DR_LOAD~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_LOAD~5_combout\,
	datab => \FULL_RESET~input_o\,
	datad => \CU|DR_LOAD~2_combout\,
	combout => \CU|DR_LOAD~6_combout\);

-- Location: FF_X76_Y69_N5
\DP|DRMODULE|DR_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[0]~4_combout\,
	sload => VCC,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(0));

-- Location: FF_X73_Y70_N5
\DP|IRMODULE|IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(0),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(0));

-- Location: LCCOMB_X73_Y70_N6
\CONTROLSTEP|Odecoder|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~2_combout\ = (\DP|IRMODULE|IR\(3) & (\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(2) & !\DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(3),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(2),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~2_combout\);

-- Location: LCCOMB_X72_Y70_N20
\CU|AC_LOAD~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AC_LOAD~9_combout\ = ((\DP|IRMODULE|IR\(0) & ((\DP|IRMODULE|IR\(1)) # (!\DP|IRMODULE|IR\(3)))) # (!\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(3) & \DP|IRMODULE|IR\(1)))) # (!\DP|IRMODULE|IR\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CU|AC_LOAD~9_combout\);

-- Location: LCCOMB_X75_Y70_N22
\CU|R_BUS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|R_BUS~2_combout\ = (\CU|ALUS2~0_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~2_combout\) # ((\CONTROLSTEP|Odecoder|Decoder0~1_combout\) # (!\CU|AC_LOAD~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~2_combout\,
	datab => \CONTROLSTEP|Odecoder|Decoder0~1_combout\,
	datac => \CU|ALUS2~0_combout\,
	datad => \CU|AC_LOAD~9_combout\,
	combout => \CU|R_BUS~2_combout\);

-- Location: FF_X75_Y71_N19
\DP|RMODULE|R_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[0]~4_combout\,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(0));

-- Location: LCCOMB_X75_Y70_N24
\DP|BUS[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[0]~0_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & (\DP|PCMODULE|PC_temp\(0) & !\FULL_RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(2),
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datac => \DP|PCMODULE|PC_temp\(0),
	datad => \FULL_RESET~input_o\,
	combout => \DP|BUS[0]~0_combout\);

-- Location: LCCOMB_X75_Y70_N20
\DP|BUS[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[0]~1_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(0)) # ((\DP|DRMODULE|DR_temp\(0) & \CU|DR_BUS_L~0_combout\)))) # (!\CU|AC_BUS~1_combout\ & (\DP|DRMODULE|DR_temp\(0) & (\CU|DR_BUS_L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \DP|DRMODULE|DR_temp\(0),
	datac => \CU|DR_BUS_L~0_combout\,
	datad => \DP|ADMODULE|AC_temp\(0),
	combout => \DP|BUS[0]~1_combout\);

-- Location: LCCOMB_X75_Y70_N26
\DP|BUS[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[0]~2_combout\ = (\DP|BUS[0]~0_combout\) # ((\DP|BUS[0]~1_combout\) # ((\CU|R_BUS~2_combout\ & \DP|RMODULE|R_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|R_BUS~2_combout\,
	datab => \DP|RMODULE|R_temp\(0),
	datac => \DP|BUS[0]~0_combout\,
	datad => \DP|BUS[0]~1_combout\,
	combout => \DP|BUS[0]~2_combout\);

-- Location: FF_X75_Y71_N13
\DP|TRMODULE|TR_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(0),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(0));

-- Location: LCCOMB_X75_Y71_N14
\DP|BUS[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[0]~3_combout\ = (\DP|TRMODULE|TR_temp\(0) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|TRMODULE|TR_temp\(0),
	datab => \CU|DR_BUS_H~0_combout\,
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[0]~3_combout\);

-- Location: LCCOMB_X80_Y71_N30
\DP|MEMMODULE|mem_rtl_0_bypass[17]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[17]~0_combout\ = !\DP|BUS[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|BUS[0]~4_combout\,
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[17]~0_combout\);

-- Location: FF_X80_Y71_N31
\DP|MEMMODULE|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[17]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(17));

-- Location: LCCOMB_X79_Y72_N4
\DP|MEMMODULE|mem_rtl_0_bypass[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X79_Y72_N5
\DP|MEMMODULE|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(18));

-- Location: LCCOMB_X79_Y72_N2
\DP|MEMMODULE|mem~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~6_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(18) & ((\DP|MEMMODULE|mem~5_combout\ & (!\DP|MEMMODULE|mem_rtl_0_bypass\(17))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(18) & (!\DP|MEMMODULE|mem_rtl_0_bypass\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(17),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(18),
	datac => \DP|MEMMODULE|mem~5_combout\,
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \DP|MEMMODULE|mem~6_combout\);

-- Location: LCCOMB_X79_Y72_N0
\DP|MEMMODULE|data_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(0) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(0))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|data_out\(0),
	datac => \DP|MEMMODULE|mem~6_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(0));

-- Location: LCCOMB_X75_Y71_N18
\DP|BUS[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[0]~4_combout\ = (\DP|BUS[0]~2_combout\) # ((\DP|BUS[0]~3_combout\) # ((\DP|MEMMODULE|data~0_combout\ & \DP|MEMMODULE|data_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[0]~2_combout\,
	datab => \DP|MEMMODULE|data~0_combout\,
	datac => \DP|BUS[0]~3_combout\,
	datad => \DP|MEMMODULE|data_out\(0),
	combout => \DP|BUS[0]~4_combout\);

-- Location: LCCOMB_X75_Y71_N26
\CU|AR_INC~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|AR_INC~7_combout\ = (\CU|AR_INC~6_combout\ & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Ccounter|COUNT\(1) & \CONTROLSTEP|Ccounter|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AR_INC~6_combout\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|AR_INC~7_combout\);

-- Location: LCCOMB_X80_Y71_N26
\DP|ARMODULE|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~2_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~0_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~0_combout\,
	datac => \DP|BUS[0]~4_combout\,
	datad => \CU|AR_INC~7_combout\,
	combout => \DP|ARMODULE|Add0~2_combout\);

-- Location: FF_X80_Y71_N13
\DP|ARMODULE|AR_OUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[0]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N18
\DP|ARMODULE|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~3_combout\ = (\DP|ARMODULE|AR_OUT[1]~reg0_q\ & (!\DP|ARMODULE|Add0~1\)) # (!\DP|ARMODULE|AR_OUT[1]~reg0_q\ & ((\DP|ARMODULE|Add0~1\) # (GND)))
-- \DP|ARMODULE|Add0~4\ = CARRY((!\DP|ARMODULE|Add0~1\) # (!\DP|ARMODULE|AR_OUT[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|AR_OUT[1]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~1\,
	combout => \DP|ARMODULE|Add0~3_combout\,
	cout => \DP|ARMODULE|Add0~4\);

-- Location: LCCOMB_X77_Y71_N4
\DP|ARMODULE|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~5_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~3_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~3_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[1]~9_combout\,
	combout => \DP|ARMODULE|Add0~5_combout\);

-- Location: FF_X77_Y71_N27
\DP|ARMODULE|AR_OUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[1]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N20
\DP|ARMODULE|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~6_combout\ = (\DP|ARMODULE|AR_OUT[2]~reg0_q\ & (\DP|ARMODULE|Add0~4\ $ (GND))) # (!\DP|ARMODULE|AR_OUT[2]~reg0_q\ & (!\DP|ARMODULE|Add0~4\ & VCC))
-- \DP|ARMODULE|Add0~7\ = CARRY((\DP|ARMODULE|AR_OUT[2]~reg0_q\ & !\DP|ARMODULE|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|ARMODULE|AR_OUT[2]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~4\,
	combout => \DP|ARMODULE|Add0~6_combout\,
	cout => \DP|ARMODULE|Add0~7\);

-- Location: LCCOMB_X77_Y71_N8
\DP|ARMODULE|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~8_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~6_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~6_combout\,
	datac => \DP|BUS[2]~14_combout\,
	datad => \CU|AR_INC~7_combout\,
	combout => \DP|ARMODULE|Add0~8_combout\);

-- Location: FF_X77_Y71_N31
\DP|ARMODULE|AR_OUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[2]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N22
\DP|ARMODULE|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~9_combout\ = (\DP|ARMODULE|AR_OUT[3]~reg0_q\ & (!\DP|ARMODULE|Add0~7\)) # (!\DP|ARMODULE|AR_OUT[3]~reg0_q\ & ((\DP|ARMODULE|Add0~7\) # (GND)))
-- \DP|ARMODULE|Add0~10\ = CARRY((!\DP|ARMODULE|Add0~7\) # (!\DP|ARMODULE|AR_OUT[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|AR_OUT[3]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~7\,
	combout => \DP|ARMODULE|Add0~9_combout\,
	cout => \DP|ARMODULE|Add0~10\);

-- Location: LCCOMB_X79_Y71_N8
\DP|ARMODULE|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~11_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~9_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~9_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[3]~19_combout\,
	combout => \DP|ARMODULE|Add0~11_combout\);

-- Location: FF_X79_Y71_N27
\DP|ARMODULE|AR_OUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[3]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N24
\DP|ARMODULE|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~12_combout\ = (\DP|ARMODULE|AR_OUT[4]~reg0_q\ & (\DP|ARMODULE|Add0~10\ $ (GND))) # (!\DP|ARMODULE|AR_OUT[4]~reg0_q\ & (!\DP|ARMODULE|Add0~10\ & VCC))
-- \DP|ARMODULE|Add0~13\ = CARRY((\DP|ARMODULE|AR_OUT[4]~reg0_q\ & !\DP|ARMODULE|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|ARMODULE|AR_OUT[4]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~10\,
	combout => \DP|ARMODULE|Add0~12_combout\,
	cout => \DP|ARMODULE|Add0~13\);

-- Location: LCCOMB_X79_Y71_N2
\DP|ARMODULE|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~14_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~12_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~12_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[4]~24_combout\,
	combout => \DP|ARMODULE|Add0~14_combout\);

-- Location: FF_X79_Y71_N21
\DP|ARMODULE|AR_OUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[4]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N26
\DP|ARMODULE|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~15_combout\ = (\DP|ARMODULE|AR_OUT[5]~reg0_q\ & (!\DP|ARMODULE|Add0~13\)) # (!\DP|ARMODULE|AR_OUT[5]~reg0_q\ & ((\DP|ARMODULE|Add0~13\) # (GND)))
-- \DP|ARMODULE|Add0~16\ = CARRY((!\DP|ARMODULE|Add0~13\) # (!\DP|ARMODULE|AR_OUT[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|ARMODULE|AR_OUT[5]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~13\,
	combout => \DP|ARMODULE|Add0~15_combout\,
	cout => \DP|ARMODULE|Add0~16\);

-- Location: LCCOMB_X79_Y71_N14
\DP|ARMODULE|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~17_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~15_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[5]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~15_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[5]~29_combout\,
	combout => \DP|ARMODULE|Add0~17_combout\);

-- Location: FF_X79_Y71_N25
\DP|ARMODULE|AR_OUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[5]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N28
\DP|ARMODULE|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~18_combout\ = (\DP|ARMODULE|AR_OUT[6]~reg0_q\ & (\DP|ARMODULE|Add0~16\ $ (GND))) # (!\DP|ARMODULE|AR_OUT[6]~reg0_q\ & (!\DP|ARMODULE|Add0~16\ & VCC))
-- \DP|ARMODULE|Add0~19\ = CARRY((\DP|ARMODULE|AR_OUT[6]~reg0_q\ & !\DP|ARMODULE|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|AR_OUT[6]~reg0_q\,
	datad => VCC,
	cin => \DP|ARMODULE|Add0~16\,
	combout => \DP|ARMODULE|Add0~18_combout\,
	cout => \DP|ARMODULE|Add0~19\);

-- Location: LCCOMB_X79_Y71_N12
\DP|ARMODULE|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~20_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~18_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[6]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~18_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[6]~34_combout\,
	combout => \DP|ARMODULE|Add0~20_combout\);

-- Location: FF_X79_Y71_N23
\DP|ARMODULE|AR_OUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[6]~reg0_q\);

-- Location: LCCOMB_X79_Y71_N30
\DP|ARMODULE|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~21_combout\ = \DP|ARMODULE|Add0~19\ $ (\DP|ARMODULE|AR_OUT[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DP|ARMODULE|AR_OUT[7]~reg0_q\,
	cin => \DP|ARMODULE|Add0~19\,
	combout => \DP|ARMODULE|Add0~21_combout\);

-- Location: LCCOMB_X79_Y71_N4
\DP|ARMODULE|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ARMODULE|Add0~23_combout\ = (\CU|AR_INC~7_combout\ & (\DP|ARMODULE|Add0~21_combout\)) # (!\CU|AR_INC~7_combout\ & ((\DP|BUS[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|ARMODULE|Add0~21_combout\,
	datab => \CU|AR_INC~7_combout\,
	datad => \DP|BUS[7]~39_combout\,
	combout => \DP|ARMODULE|Add0~23_combout\);

-- Location: FF_X79_Y71_N19
\DP|ARMODULE|AR_OUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ARMODULE|AR_OUT[7]~reg0_q\);

-- Location: FF_X79_Y71_N31
\DP|MEMMODULE|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[7]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(15));

-- Location: FF_X79_Y71_N17
\DP|MEMMODULE|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(16));

-- Location: FF_X79_Y71_N1
\DP|MEMMODULE|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(14));

-- Location: FF_X79_Y71_N29
\DP|MEMMODULE|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[6]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(13));

-- Location: LCCOMB_X79_Y71_N0
\DP|MEMMODULE|mem~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~4_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(15) & (\DP|MEMMODULE|mem_rtl_0_bypass\(16) & (\DP|MEMMODULE|mem_rtl_0_bypass\(14) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(13))))) # (!\DP|MEMMODULE|mem_rtl_0_bypass\(15) & 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(16) & (\DP|MEMMODULE|mem_rtl_0_bypass\(14) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(15),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(16),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(14),
	datad => \DP|MEMMODULE|mem_rtl_0_bypass\(13),
	combout => \DP|MEMMODULE|mem~4_combout\);

-- Location: FF_X79_Y71_N7
\DP|MEMMODULE|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(10));

-- Location: FF_X79_Y71_N3
\DP|MEMMODULE|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(12));

-- Location: FF_X79_Y71_N11
\DP|MEMMODULE|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[4]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(9));

-- Location: FF_X79_Y71_N5
\DP|MEMMODULE|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[5]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(11));

-- Location: LCCOMB_X79_Y71_N10
\DP|MEMMODULE|mem~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~3_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(10) & (\DP|MEMMODULE|mem_rtl_0_bypass\(9) & (\DP|MEMMODULE|mem_rtl_0_bypass\(12) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(11))))) # (!\DP|MEMMODULE|mem_rtl_0_bypass\(10) & 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(9) & (\DP|MEMMODULE|mem_rtl_0_bypass\(12) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(10),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(12),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(9),
	datad => \DP|MEMMODULE|mem_rtl_0_bypass\(11),
	combout => \DP|MEMMODULE|mem~3_combout\);

-- Location: FF_X80_Y71_N17
\DP|MEMMODULE|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \CU|SOFT_RESET~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(0));

-- Location: FF_X77_Y71_N5
\DP|MEMMODULE|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(6));

-- Location: FF_X79_Y71_N9
\DP|MEMMODULE|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[1]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(3));

-- Location: LCCOMB_X77_Y71_N10
\DP|MEMMODULE|mem_rtl_0_bypass[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[4]~feeder_combout\ = \DP|ARMODULE|Add0~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|ARMODULE|Add0~5_combout\,
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[4]~feeder_combout\);

-- Location: FF_X77_Y71_N11
\DP|MEMMODULE|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(4));

-- Location: FF_X80_Y71_N29
\DP|MEMMODULE|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(2));

-- Location: FF_X80_Y71_N19
\DP|MEMMODULE|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[0]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X80_Y71_N28
\DP|MEMMODULE|mem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~0_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(3) & (\DP|MEMMODULE|mem_rtl_0_bypass\(4) & (\DP|MEMMODULE|mem_rtl_0_bypass\(2) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(1))))) # (!\DP|MEMMODULE|mem_rtl_0_bypass\(3) & 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(4) & (\DP|MEMMODULE|mem_rtl_0_bypass\(2) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(3),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(4),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(2),
	datad => \DP|MEMMODULE|mem_rtl_0_bypass\(1),
	combout => \DP|MEMMODULE|mem~0_combout\);

-- Location: FF_X80_Y71_N15
\DP|MEMMODULE|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[2]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(5));

-- Location: FF_X79_Y71_N15
\DP|MEMMODULE|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|Add0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(8));

-- Location: FF_X79_Y71_N13
\DP|MEMMODULE|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ARMODULE|AR_OUT[3]~reg0_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(7));

-- Location: LCCOMB_X79_Y71_N6
\DP|MEMMODULE|mem~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~1_combout\ = \DP|MEMMODULE|mem_rtl_0_bypass\(8) $ (\DP|MEMMODULE|mem_rtl_0_bypass\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(8),
	datad => \DP|MEMMODULE|mem_rtl_0_bypass\(7),
	combout => \DP|MEMMODULE|mem~1_combout\);

-- Location: LCCOMB_X80_Y71_N14
\DP|MEMMODULE|mem~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~2_combout\ = (\DP|MEMMODULE|mem~0_combout\ & (!\DP|MEMMODULE|mem~1_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(6) $ (!\DP|MEMMODULE|mem_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(6),
	datab => \DP|MEMMODULE|mem~0_combout\,
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(5),
	datad => \DP|MEMMODULE|mem~1_combout\,
	combout => \DP|MEMMODULE|mem~2_combout\);

-- Location: LCCOMB_X80_Y71_N20
\DP|MEMMODULE|mem~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~5_combout\ = (\DP|MEMMODULE|mem~4_combout\ & (\DP|MEMMODULE|mem~3_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(0) & \DP|MEMMODULE|mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~4_combout\,
	datab => \DP|MEMMODULE|mem~3_combout\,
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(0),
	datad => \DP|MEMMODULE|mem~2_combout\,
	combout => \DP|MEMMODULE|mem~5_combout\);

-- Location: FF_X76_Y71_N25
\DP|MEMMODULE|mem_rtl_0_bypass[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(23));

-- Location: LCCOMB_X80_Y71_N4
\DP|MEMMODULE|mem_rtl_0_bypass[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[24]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[24]~feeder_combout\);

-- Location: FF_X80_Y71_N5
\DP|MEMMODULE|mem_rtl_0_bypass[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(24));

-- Location: LCCOMB_X80_Y71_N2
\DP|MEMMODULE|mem~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~9_combout\ = (\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(23))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0_bypass\(24) & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a3\))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(24) & (\DP|MEMMODULE|mem_rtl_0_bypass\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~5_combout\,
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(23),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(24),
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \DP|MEMMODULE|mem~9_combout\);

-- Location: LCCOMB_X80_Y71_N8
\DP|MEMMODULE|data_out[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(3) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|data_out\(3)))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|mem~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|MEMMODULE|mem~9_combout\,
	datac => \DP|MEMMODULE|data_out\(3),
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(3));

-- Location: FF_X75_Y71_N23
\DP|TRMODULE|TR_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(3),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(3));

-- Location: LCCOMB_X75_Y71_N22
\DP|BUS[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[3]~18_combout\ = (\DP|TRMODULE|TR_temp\(3) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|DR_BUS_H~0_combout\,
	datac => \DP|TRMODULE|TR_temp\(3),
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[3]~18_combout\);

-- Location: LCCOMB_X75_Y69_N26
\DP|BUS[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[3]~15_combout\ = (!\FULL_RESET~input_o\ & (!\CONTROLSTEP|Ccounter|COUNT\(0) & (\DP|PCMODULE|PC_temp\(3) & !\CONTROLSTEP|Ccounter|COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datac => \DP|PCMODULE|PC_temp\(3),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \DP|BUS[3]~15_combout\);

-- Location: LCCOMB_X75_Y70_N4
\DP|BUS[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[3]~16_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(3)) # ((\DP|DRMODULE|DR_temp\(3) & \CU|DR_BUS_L~0_combout\)))) # (!\CU|AC_BUS~1_combout\ & (\DP|DRMODULE|DR_temp\(3) & (\CU|DR_BUS_L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \DP|DRMODULE|DR_temp\(3),
	datac => \CU|DR_BUS_L~0_combout\,
	datad => \DP|ADMODULE|AC_temp\(3),
	combout => \DP|BUS[3]~16_combout\);

-- Location: FF_X75_Y70_N7
\DP|RMODULE|R_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[3]~19_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(3));

-- Location: LCCOMB_X75_Y70_N6
\DP|BUS[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[3]~17_combout\ = (\DP|BUS[3]~15_combout\) # ((\DP|BUS[3]~16_combout\) # ((\DP|RMODULE|R_temp\(3) & \CU|R_BUS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[3]~15_combout\,
	datab => \DP|BUS[3]~16_combout\,
	datac => \DP|RMODULE|R_temp\(3),
	datad => \CU|R_BUS~2_combout\,
	combout => \DP|BUS[3]~17_combout\);

-- Location: LCCOMB_X76_Y71_N24
\DP|BUS[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[3]~19_combout\ = (\DP|BUS[3]~18_combout\) # ((\DP|BUS[3]~17_combout\) # ((\DP|MEMMODULE|data_out\(3) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|data_out\(3),
	datab => \DP|BUS[3]~18_combout\,
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[3]~17_combout\,
	combout => \DP|BUS[3]~19_combout\);

-- Location: LCCOMB_X76_Y69_N22
\DP|DRMODULE|DR_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[3]~feeder_combout\ = \DP|BUS[3]~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|BUS[3]~19_combout\,
	combout => \DP|DRMODULE|DR_temp[3]~feeder_combout\);

-- Location: FF_X76_Y69_N23
\DP|DRMODULE|DR_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[3]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(3));

-- Location: FF_X73_Y70_N15
\DP|IRMODULE|IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(3),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(3));

-- Location: LCCOMB_X72_Y70_N0
\CONTROLSTEP|Odecoder|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~7_combout\ = (!\DP|IRMODULE|IR\(3) & (!\DP|IRMODULE|IR\(0) & (\DP|IRMODULE|IR\(2) & \DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(3),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(2),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~7_combout\);

-- Location: LCCOMB_X74_Y69_N18
\CU|MEMBUS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MEMBUS~0_combout\ = (\CONTROLSTEP|Odecoder|ILDAC~0_combout\ & ((\CONTROLSTEP|Ccounter|COUNT\(2) & ((!\CONTROLSTEP|Ccounter|COUNT\(0)))) # (!\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Ccounter|COUNT\(1) & \CONTROLSTEP|Ccounter|COUNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(1),
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Odecoder|ILDAC~0_combout\,
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|MEMBUS~0_combout\);

-- Location: LCCOMB_X74_Y69_N22
\CU|MEMBUS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|MEMBUS~1_combout\ = (\CU|MEMBUS~0_combout\) # ((\CU|DR_LOAD~0_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~7_combout\) # (\CONTROLSTEP|Odecoder|Decoder0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|DR_LOAD~0_combout\,
	datab => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	datac => \CU|MEMBUS~0_combout\,
	datad => \CONTROLSTEP|Odecoder|Decoder0~5_combout\,
	combout => \CU|MEMBUS~1_combout\);

-- Location: LCCOMB_X75_Y71_N16
\DP|MEMMODULE|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data~0_combout\ = (!\CU|SOFT_RESET~2_combout\ & (!\FULL_RESET~input_o\ & ((\CU|MEMBUS~1_combout\) # (!\CU|DR_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|MEMBUS~1_combout\,
	datab => \CU|SOFT_RESET~2_combout\,
	datac => \CU|DR_LOAD~2_combout\,
	datad => \FULL_RESET~input_o\,
	combout => \DP|MEMMODULE|data~0_combout\);

-- Location: LCCOMB_X75_Y68_N6
\DP|BUS[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[4]~20_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(0) & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\FULL_RESET~input_o\ & \DP|PCMODULE|PC_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(0),
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \FULL_RESET~input_o\,
	datad => \DP|PCMODULE|PC_temp\(4),
	combout => \DP|BUS[4]~20_combout\);

-- Location: LCCOMB_X75_Y70_N28
\DP|BUS[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[4]~21_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(4)) # ((\DP|DRMODULE|DR_temp\(4) & \CU|DR_BUS_L~0_combout\)))) # (!\CU|AC_BUS~1_combout\ & (\DP|DRMODULE|DR_temp\(4) & (\CU|DR_BUS_L~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \DP|DRMODULE|DR_temp\(4),
	datac => \CU|DR_BUS_L~0_combout\,
	datad => \DP|ADMODULE|AC_temp\(4),
	combout => \DP|BUS[4]~21_combout\);

-- Location: FF_X75_Y71_N21
\DP|RMODULE|R_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[4]~24_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(4));

-- Location: LCCOMB_X75_Y71_N20
\DP|BUS[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[4]~22_combout\ = (\DP|BUS[4]~20_combout\) # ((\DP|BUS[4]~21_combout\) # ((\DP|RMODULE|R_temp\(4) & \CU|R_BUS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[4]~20_combout\,
	datab => \DP|BUS[4]~21_combout\,
	datac => \DP|RMODULE|R_temp\(4),
	datad => \CU|R_BUS~2_combout\,
	combout => \DP|BUS[4]~22_combout\);

-- Location: FF_X76_Y71_N11
\DP|TRMODULE|TR_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(4),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(4));

-- Location: LCCOMB_X76_Y71_N10
\DP|BUS[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[4]~23_combout\ = (\DP|TRMODULE|TR_temp\(4) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|DR_BUS_H~0_combout\,
	datac => \DP|TRMODULE|TR_temp\(4),
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[4]~23_combout\);

-- Location: FF_X76_Y71_N21
\DP|MEMMODULE|mem_rtl_0_bypass[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(25));

-- Location: LCCOMB_X80_Y71_N24
\DP|MEMMODULE|mem_rtl_0_bypass[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[26]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[26]~feeder_combout\);

-- Location: FF_X80_Y71_N25
\DP|MEMMODULE|mem_rtl_0_bypass[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(26));

-- Location: LCCOMB_X80_Y71_N10
\DP|MEMMODULE|mem~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~10_combout\ = (\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(25))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0_bypass\(26) & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a4\))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(26) & (\DP|MEMMODULE|mem_rtl_0_bypass\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~5_combout\,
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(25),
	datac => \DP|MEMMODULE|mem_rtl_0_bypass\(26),
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \DP|MEMMODULE|mem~10_combout\);

-- Location: LCCOMB_X80_Y71_N16
\DP|MEMMODULE|data_out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(4) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|data_out\(4))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|mem~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|data_out\(4),
	datab => \DP|MEMMODULE|mem~10_combout\,
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(4));

-- Location: LCCOMB_X76_Y71_N20
\DP|BUS[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[4]~24_combout\ = (\DP|BUS[4]~22_combout\) # ((\DP|BUS[4]~23_combout\) # ((\DP|MEMMODULE|data~0_combout\ & \DP|MEMMODULE|data_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|data~0_combout\,
	datab => \DP|BUS[4]~22_combout\,
	datac => \DP|BUS[4]~23_combout\,
	datad => \DP|MEMMODULE|data_out\(4),
	combout => \DP|BUS[4]~24_combout\);

-- Location: LCCOMB_X76_Y69_N12
\DP|DRMODULE|DR_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[4]~feeder_combout\ = \DP|BUS[4]~24_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|BUS[4]~24_combout\,
	combout => \DP|DRMODULE|DR_temp[4]~feeder_combout\);

-- Location: FF_X76_Y69_N13
\DP|DRMODULE|DR_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[4]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(4));

-- Location: FF_X74_Y70_N23
\DP|IRMODULE|IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(4),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(4));

-- Location: FF_X74_Y70_N21
\DP|IRMODULE|IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(5),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(5));

-- Location: FF_X74_Y70_N9
\DP|IRMODULE|IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(6),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(6));

-- Location: LCCOMB_X74_Y70_N2
\CONTROLSTEP|Odecoder|ISUB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|ISUB~0_combout\ = (!\DP|IRMODULE|IR\(4) & (!\DP|IRMODULE|IR\(5) & (!\DP|IRMODULE|IR\(6) & !\FULL_RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(4),
	datab => \DP|IRMODULE|IR\(5),
	datac => \DP|IRMODULE|IR\(6),
	datad => \FULL_RESET~input_o\,
	combout => \CONTROLSTEP|Odecoder|ISUB~0_combout\);

-- Location: LCCOMB_X74_Y71_N4
\CU|DR_BUS_H~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|DR_BUS_H~1_combout\ = (\CONTROLSTEP|Odecoder|ISUB~0_combout\ & (\CONTROLSTEP|Cdecoder|Decoder0~1_combout\ & (!\DP|IRMODULE|IR\(7) & \CONTROLSTEP|Odecoder|Decoder0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\,
	datac => \DP|IRMODULE|IR\(7),
	datad => \CONTROLSTEP|Odecoder|Decoder0~9_combout\,
	combout => \CU|DR_BUS_H~1_combout\);

-- Location: LCCOMB_X75_Y71_N28
\CU|PC_LOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|PC_LOAD~0_combout\ = (!\CU|DR_BUS_H~1_combout\ & (((!\CU|AR_INC~4_combout\ & !\CU|AR_INC~3_combout\)) # (!\CONTROLSTEP|Cdecoder|Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\,
	datab => \CU|DR_BUS_H~1_combout\,
	datac => \CU|AR_INC~4_combout\,
	datad => \CU|AR_INC~3_combout\,
	combout => \CU|PC_LOAD~0_combout\);

-- Location: LCCOMB_X77_Y69_N14
\DP|PCMODULE|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~14_combout\ = (\DP|PCMODULE|PC_temp\(7) & (!\DP|PCMODULE|Add0~13\)) # (!\DP|PCMODULE|PC_temp\(7) & ((\DP|PCMODULE|Add0~13\) # (GND)))
-- \DP|PCMODULE|Add0~15\ = CARRY((!\DP|PCMODULE|Add0~13\) # (!\DP|PCMODULE|PC_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PCMODULE|PC_temp\(7),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~13\,
	combout => \DP|PCMODULE|Add0~14_combout\,
	cout => \DP|PCMODULE|Add0~15\);

-- Location: LCCOMB_X75_Y69_N2
\DP|PCMODULE|PC_temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~10_combout\ = (\CU|PC_LOAD~0_combout\ & (((!\FULL_RESET~input_o\ & \DP|PCMODULE|Add0~14_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|BUS[7]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \DP|BUS[7]~39_combout\,
	datac => \FULL_RESET~input_o\,
	datad => \DP|PCMODULE|Add0~14_combout\,
	combout => \DP|PCMODULE|PC_temp~10_combout\);

-- Location: FF_X75_Y69_N3
\DP|PCMODULE|PC_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~10_combout\,
	ena => \DP|PCMODULE|PC_temp[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(7));

-- Location: LCCOMB_X75_Y69_N14
\DP|BUS[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[7]~35_combout\ = (!\FULL_RESET~input_o\ & (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\CONTROLSTEP|Ccounter|COUNT\(0) & \DP|PCMODULE|PC_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datac => \CONTROLSTEP|Ccounter|COUNT\(0),
	datad => \DP|PCMODULE|PC_temp\(7),
	combout => \DP|BUS[7]~35_combout\);

-- Location: LCCOMB_X76_Y70_N24
\DP|BUS[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[7]~36_combout\ = (\CU|AC_BUS~1_combout\ & ((\DP|ADMODULE|AC_temp\(7)) # ((\CU|DR_BUS_L~0_combout\ & \DP|DRMODULE|DR_temp\(7))))) # (!\CU|AC_BUS~1_combout\ & (\CU|DR_BUS_L~0_combout\ & (\DP|DRMODULE|DR_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_BUS~1_combout\,
	datab => \CU|DR_BUS_L~0_combout\,
	datac => \DP|DRMODULE|DR_temp\(7),
	datad => \DP|ADMODULE|AC_temp\(7),
	combout => \DP|BUS[7]~36_combout\);

-- Location: FF_X76_Y70_N15
\DP|RMODULE|R_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|BUS[7]~39_combout\,
	sload => VCC,
	ena => \CU|R_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|RMODULE|R_temp\(7));

-- Location: LCCOMB_X76_Y70_N14
\DP|BUS[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[7]~37_combout\ = (\DP|BUS[7]~35_combout\) # ((\DP|BUS[7]~36_combout\) # ((\DP|RMODULE|R_temp\(7) & \CU|R_BUS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[7]~35_combout\,
	datab => \DP|BUS[7]~36_combout\,
	datac => \DP|RMODULE|R_temp\(7),
	datad => \CU|R_BUS~2_combout\,
	combout => \DP|BUS[7]~37_combout\);

-- Location: LCCOMB_X77_Y70_N4
\DP|MEMMODULE|mem_rtl_0_bypass[32]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem_rtl_0_bypass[32]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \DP|MEMMODULE|mem_rtl_0_bypass[32]~feeder_combout\);

-- Location: FF_X77_Y70_N5
\DP|MEMMODULE|mem_rtl_0_bypass[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|MEMMODULE|mem_rtl_0_bypass[32]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(32));

-- Location: FF_X76_Y70_N27
\DP|MEMMODULE|mem_rtl_0_bypass[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|BUS[7]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|MEMMODULE|mem_rtl_0_bypass\(31));

-- Location: LCCOMB_X77_Y70_N10
\DP|MEMMODULE|mem~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|mem~13_combout\ = (\DP|MEMMODULE|mem_rtl_0_bypass\(32) & ((\DP|MEMMODULE|mem~5_combout\ & (\DP|MEMMODULE|mem_rtl_0_bypass\(31))) # (!\DP|MEMMODULE|mem~5_combout\ & ((\DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a7\))))) # 
-- (!\DP|MEMMODULE|mem_rtl_0_bypass\(32) & (\DP|MEMMODULE|mem_rtl_0_bypass\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem_rtl_0_bypass\(32),
	datab => \DP|MEMMODULE|mem_rtl_0_bypass\(31),
	datac => \DP|MEMMODULE|mem~5_combout\,
	datad => \DP|MEMMODULE|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \DP|MEMMODULE|mem~13_combout\);

-- Location: LCCOMB_X77_Y70_N30
\DP|MEMMODULE|data_out[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|MEMMODULE|data_out\(7) = (GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & ((\DP|MEMMODULE|data_out\(7)))) # (!GLOBAL(\CU|SOFT_RESET~2clkctrl_outclk\) & (\DP|MEMMODULE|mem~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|MEMMODULE|mem~13_combout\,
	datac => \DP|MEMMODULE|data_out\(7),
	datad => \CU|SOFT_RESET~2clkctrl_outclk\,
	combout => \DP|MEMMODULE|data_out\(7));

-- Location: FF_X75_Y71_N5
\DP|TRMODULE|TR_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|DRMODULE|DR_temp\(7),
	sload => VCC,
	ena => \CU|TR_LOAD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|TRMODULE|TR_temp\(7));

-- Location: LCCOMB_X76_Y70_N20
\DP|BUS[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[7]~38_combout\ = (\DP|TRMODULE|TR_temp\(7) & ((\CU|DR_BUS_H~0_combout\) # (!\CU|PC_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|TRMODULE|TR_temp\(7),
	datab => \CU|DR_BUS_H~0_combout\,
	datad => \CU|PC_LOAD~0_combout\,
	combout => \DP|BUS[7]~38_combout\);

-- Location: LCCOMB_X76_Y70_N26
\DP|BUS[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|BUS[7]~39_combout\ = (\DP|BUS[7]~37_combout\) # ((\DP|BUS[7]~38_combout\) # ((\DP|MEMMODULE|data_out\(7) & \DP|MEMMODULE|data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[7]~37_combout\,
	datab => \DP|MEMMODULE|data_out\(7),
	datac => \DP|MEMMODULE|data~0_combout\,
	datad => \DP|BUS[7]~38_combout\,
	combout => \DP|BUS[7]~39_combout\);

-- Location: LCCOMB_X76_Y69_N30
\DP|DRMODULE|DR_temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|DRMODULE|DR_temp[7]~feeder_combout\ = \DP|BUS[7]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DP|BUS[7]~39_combout\,
	combout => \DP|DRMODULE|DR_temp[7]~feeder_combout\);

-- Location: FF_X76_Y69_N31
\DP|DRMODULE|DR_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|DRMODULE|DR_temp[7]~feeder_combout\,
	ena => \CU|DR_LOAD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|DRMODULE|DR_temp\(7));

-- Location: FF_X73_Y70_N23
\DP|IRMODULE|IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	asdata => \DP|DRMODULE|DR_temp\(7),
	sload => VCC,
	ena => \CU|IR_LOAD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|IRMODULE|IR\(7));

-- Location: LCCOMB_X74_Y70_N6
\CONTROLSTEP|Odecoder|ISUB~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|ISUB~1_combout\ = (!\DP|IRMODULE|IR\(7) & \CONTROLSTEP|Odecoder|ISUB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|IRMODULE|IR\(7),
	datac => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CONTROLSTEP|Odecoder|ISUB~1_combout\);

-- Location: LCCOMB_X74_Y71_N24
\CU|TR_LOAD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|TR_LOAD~2_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(0) & (!\CONTROLSTEP|Ccounter|COUNT\(1) & \CONTROLSTEP|Ccounter|COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT\(2),
	combout => \CU|TR_LOAD~2_combout\);

-- Location: LCCOMB_X74_Y71_N18
\CU|SOFT_RESET~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~9_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~8_combout\ & ((\CU|TR_LOAD~2_combout\) # ((\CONTROLSTEP|Cdecoder|Decoder0~1_combout\ & \CONTROLSTEP|Odecoder|Decoder0~7_combout\)))) # (!\CONTROLSTEP|Odecoder|Decoder0~8_combout\ & 
-- (\CONTROLSTEP|Cdecoder|Decoder0~1_combout\ & (\CONTROLSTEP|Odecoder|Decoder0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~8_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	datad => \CU|TR_LOAD~2_combout\,
	combout => \CU|SOFT_RESET~9_combout\);

-- Location: LCCOMB_X74_Y71_N10
\CU|SOFT_RESET~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~7_combout\ = (\CONTROLSTEP|Odecoder|Decoder0~8_combout\ & ((\CONTROLSTEP|Cdecoder|Decoder0~1_combout\) # ((\CONTROLSTEP|Odecoder|Decoder0~7_combout\ & \CU|TR_LOAD~2_combout\)))) # (!\CONTROLSTEP|Odecoder|Decoder0~8_combout\ & 
-- (((\CONTROLSTEP|Odecoder|Decoder0~7_combout\ & \CU|TR_LOAD~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|Decoder0~8_combout\,
	datab => \CONTROLSTEP|Cdecoder|Decoder0~1_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~7_combout\,
	datad => \CU|TR_LOAD~2_combout\,
	combout => \CU|SOFT_RESET~7_combout\);

-- Location: LCCOMB_X74_Y70_N10
\CU|SOFT_RESET~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~5_combout\ = (\CONTROLSTEP|Odecoder|IINAC~0_combout\) # ((\CONTROLSTEP|Odecoder|ISUB~1_combout\ & ((\CONTROLSTEP|Odecoder|Decoder0~6_combout\) # (!\CU|AC_LOAD~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|AC_LOAD~10_combout\,
	datab => \CONTROLSTEP|Odecoder|IINAC~0_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~6_combout\,
	datad => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	combout => \CU|SOFT_RESET~5_combout\);

-- Location: LCCOMB_X72_Y70_N24
\CONTROLSTEP|Odecoder|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Odecoder|Decoder0~10_combout\ = (!\DP|IRMODULE|IR\(2) & (!\DP|IRMODULE|IR\(0) & (!\DP|IRMODULE|IR\(3) & !\DP|IRMODULE|IR\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|IRMODULE|IR\(2),
	datab => \DP|IRMODULE|IR\(0),
	datac => \DP|IRMODULE|IR\(3),
	datad => \DP|IRMODULE|IR\(1),
	combout => \CONTROLSTEP|Odecoder|Decoder0~10_combout\);

-- Location: LCCOMB_X72_Y70_N30
\CU|SOFT_RESET~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~3_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(0) & (((\CONTROLSTEP|Odecoder|Decoder0~4_combout\ & \CONTROLSTEP|Ccounter|COUNT\(1))))) # (!\CONTROLSTEP|Ccounter|COUNT\(0) & (\CONTROLSTEP|Odecoder|Decoder0~10_combout\ & 
-- ((!\CONTROLSTEP|Ccounter|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(0),
	datab => \CONTROLSTEP|Odecoder|Decoder0~10_combout\,
	datac => \CONTROLSTEP|Odecoder|Decoder0~4_combout\,
	datad => \CONTROLSTEP|Ccounter|COUNT\(1),
	combout => \CU|SOFT_RESET~3_combout\);

-- Location: LCCOMB_X74_Y71_N12
\CU|SOFT_RESET~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~4_combout\ = (\CU|DR_BUS_H~1_combout\) # ((\CONTROLSTEP|Ccounter|COUNT\(2) & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & \CU|SOFT_RESET~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(2),
	datab => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datac => \CU|DR_BUS_H~1_combout\,
	datad => \CU|SOFT_RESET~3_combout\,
	combout => \CU|SOFT_RESET~4_combout\);

-- Location: LCCOMB_X74_Y71_N14
\CU|SOFT_RESET~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~6_combout\ = (\CU|SOFT_RESET~2_combout\) # ((\CU|SOFT_RESET~4_combout\) # ((\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & \CU|SOFT_RESET~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datab => \CU|SOFT_RESET~2_combout\,
	datac => \CU|SOFT_RESET~5_combout\,
	datad => \CU|SOFT_RESET~4_combout\,
	combout => \CU|SOFT_RESET~6_combout\);

-- Location: LCCOMB_X74_Y71_N0
\CU|SOFT_RESET~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~8_combout\ = (\CU|SOFT_RESET~6_combout\) # ((\CU|SOFT_RESET~7_combout\ & (\CONTROLSTEP|Odecoder|ISUB~1_combout\ & \DP|ADMODULE|ZCHECK|WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|SOFT_RESET~7_combout\,
	datab => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datac => \CU|SOFT_RESET~6_combout\,
	datad => \DP|ADMODULE|ZCHECK|WideNor0~combout\,
	combout => \CU|SOFT_RESET~8_combout\);

-- Location: LCCOMB_X74_Y71_N8
\CU|SOFT_RESET~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|SOFT_RESET~10_combout\ = (\CU|SOFT_RESET~8_combout\) # ((\CONTROLSTEP|Odecoder|ISUB~1_combout\ & (!\DP|ADMODULE|ZCHECK|WideNor0~combout\ & \CU|SOFT_RESET~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Odecoder|ISUB~1_combout\,
	datab => \DP|ADMODULE|ZCHECK|WideNor0~combout\,
	datac => \CU|SOFT_RESET~9_combout\,
	datad => \CU|SOFT_RESET~8_combout\,
	combout => \CU|SOFT_RESET~10_combout\);

-- Location: LCCOMB_X74_Y70_N12
\CONTROLSTEP|Ccounter|COUNT[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ = (!\CU|SOFT_RESET~10_combout\ & ((\FULL_RESET~input_o\) # (\START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datac => \START~input_o\,
	datad => \CU|SOFT_RESET~10_combout\,
	combout => \CONTROLSTEP|Ccounter|COUNT[2]~1_combout\);

-- Location: LCCOMB_X74_Y70_N30
\CONTROLSTEP|Ccounter|COUNT[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Ccounter|COUNT[1]~3_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(1) & (((\CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ & !\CONTROLSTEP|Ccounter|COUNT\(0))) # (!\CONTROLSTEP|Ccounter|COUNT[2]~2_combout\))) # (!\CONTROLSTEP|Ccounter|COUNT\(1) & 
-- (\CONTROLSTEP|Ccounter|COUNT[2]~1_combout\ & (\CONTROLSTEP|Ccounter|COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT[2]~1_combout\,
	datab => \CONTROLSTEP|Ccounter|COUNT\(0),
	datac => \CONTROLSTEP|Ccounter|COUNT\(1),
	datad => \CONTROLSTEP|Ccounter|COUNT[2]~2_combout\,
	combout => \CONTROLSTEP|Ccounter|COUNT[1]~3_combout\);

-- Location: FF_X74_Y70_N31
\CONTROLSTEP|Ccounter|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~combout\,
	d => \CONTROLSTEP|Ccounter|COUNT[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CONTROLSTEP|Ccounter|COUNT\(1));

-- Location: LCCOMB_X74_Y70_N22
\CONTROLSTEP|Cdecoder|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CONTROLSTEP|Cdecoder|Decoder0~0_combout\ = (\CONTROLSTEP|Ccounter|COUNT\(1) & (!\CONTROLSTEP|Ccounter|COUNT\(2) & \CONTROLSTEP|Ccounter|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(1),
	datab => \CONTROLSTEP|Ccounter|COUNT\(2),
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\);

-- Location: LCCOMB_X73_Y70_N22
\CU|ALUS2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS2~0_combout\ = (\CONTROLSTEP|Cdecoder|Decoder0~0_combout\ & (!\DP|IRMODULE|IR\(7) & \CONTROLSTEP|Odecoder|ISUB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CONTROLSTEP|Cdecoder|Decoder0~0_combout\,
	datac => \DP|IRMODULE|IR\(7),
	datad => \CONTROLSTEP|Odecoder|ISUB~0_combout\,
	combout => \CU|ALUS2~0_combout\);

-- Location: LCCOMB_X73_Y70_N24
\CU|ALUS7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|ALUS7~2_combout\ = (\CU|ALUS2~0_combout\ & (\DP|IRMODULE|IR\(2) & (\DP|IRMODULE|IR\(3) & !\FULL_RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|ALUS2~0_combout\,
	datab => \DP|IRMODULE|IR\(2),
	datac => \DP|IRMODULE|IR\(3),
	datad => \FULL_RESET~input_o\,
	combout => \CU|ALUS7~2_combout\);

-- Location: LCCOMB_X72_Y71_N22
\DP|ADMODULE|ALUMOD|MUX3|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|Selector0~0_combout\ = (\DP|BUS[0]~4_combout\ & ((\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\) # (\DP|ADMODULE|AC_temp\(0)))) # (!\DP|BUS[0]~4_combout\ & (\DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\ & \DP|ADMODULE|AC_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|BUS[0]~4_combout\,
	datac => \DP|ADMODULE|ALUMOD|MUX3|Equal1~0_combout\,
	datad => \DP|ADMODULE|AC_temp\(0),
	combout => \DP|ADMODULE|ALUMOD|MUX3|Selector0~0_combout\);

-- Location: LCCOMB_X72_Y71_N24
\DP|ADMODULE|ALUMOD|MUX3|OUT[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|MUX3|OUT\(0) = (GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & (\DP|ADMODULE|ALUMOD|MUX3|OUT\(0))) # (!GLOBAL(\CU|ALUS5~0clkctrl_outclk\) & ((\DP|ADMODULE|ALUMOD|MUX3|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DP|ADMODULE|ALUMOD|MUX3|OUT\(0),
	datac => \CU|ALUS5~0clkctrl_outclk\,
	datad => \DP|ADMODULE|ALUMOD|MUX3|Selector0~0_combout\,
	combout => \DP|ADMODULE|ALUMOD|MUX3|OUT\(0));

-- Location: LCCOMB_X72_Y71_N16
\DP|ADMODULE|ALUMOD|ADD16b|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\ = (\CU|ALUS7~2_combout\ & ((\DP|ADMODULE|ALUMOD|MUX3|OUT\(0)))) # (!\CU|ALUS7~2_combout\ & (\DP|ADMODULE|ALUMOD|ADD16b|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|ALUS7~2_combout\,
	datac => \DP|ADMODULE|ALUMOD|ADD16b|Add0~2_combout\,
	datad => \DP|ADMODULE|ALUMOD|MUX3|OUT\(0),
	combout => \DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\);

-- Location: FF_X73_Y70_N19
\DP|ADMODULE|AC_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	asdata => \DP|ADMODULE|ALUMOD|ADD16b|Add0~4_combout\,
	sload => VCC,
	ena => \CU|AC_LOAD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|ADMODULE|AC_temp\(0));

-- Location: LCCOMB_X77_Y69_N16
\DP|PCMODULE|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~16_combout\ = (\DP|PCMODULE|PC_temp\(8) & (\DP|PCMODULE|Add0~15\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(8) & (!\DP|PCMODULE|Add0~15\ & VCC))
-- \DP|PCMODULE|Add0~17\ = CARRY((\DP|PCMODULE|PC_temp\(8) & !\DP|PCMODULE|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(8),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~15\,
	combout => \DP|PCMODULE|Add0~16_combout\,
	cout => \DP|PCMODULE|Add0~17\);

-- Location: LCCOMB_X76_Y69_N8
\DP|PCMODULE|PC_temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~11_combout\ = (\CU|PC_LOAD~0_combout\ & (((\DP|PCMODULE|Add0~16_combout\ & !\FULL_RESET~input_o\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|DRMODULE|DR_temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DRMODULE|DR_temp\(0),
	datab => \DP|PCMODULE|Add0~16_combout\,
	datac => \CU|PC_LOAD~0_combout\,
	datad => \FULL_RESET~input_o\,
	combout => \DP|PCMODULE|PC_temp~11_combout\);

-- Location: LCCOMB_X74_Y69_N26
\CU|IR_LOAD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CU|IR_LOAD~0_combout\ = (!\CONTROLSTEP|Ccounter|COUNT\(2) & (!\FULL_RESET~input_o\ & !\CONTROLSTEP|Ccounter|COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CONTROLSTEP|Ccounter|COUNT\(2),
	datab => \FULL_RESET~input_o\,
	datad => \CONTROLSTEP|Ccounter|COUNT\(0),
	combout => \CU|IR_LOAD~0_combout\);

-- Location: LCCOMB_X76_Y69_N4
\DP|PCMODULE|PC_temp[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp[8]~12_combout\ = (\DP|PCMODULE|PC_temp[3]~3_combout\ & ((\CU|PC_LOAD~0_combout\) # (!\CU|IR_LOAD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \CU|IR_LOAD~0_combout\,
	datad => \DP|PCMODULE|PC_temp[3]~3_combout\,
	combout => \DP|PCMODULE|PC_temp[8]~12_combout\);

-- Location: FF_X76_Y69_N9
\DP|PCMODULE|PC_temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~11_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(8));

-- Location: LCCOMB_X77_Y69_N18
\DP|PCMODULE|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~18_combout\ = (\DP|PCMODULE|PC_temp\(9) & (!\DP|PCMODULE|Add0~17\)) # (!\DP|PCMODULE|PC_temp\(9) & ((\DP|PCMODULE|Add0~17\) # (GND)))
-- \DP|PCMODULE|Add0~19\ = CARRY((!\DP|PCMODULE|Add0~17\) # (!\DP|PCMODULE|PC_temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(9),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~17\,
	combout => \DP|PCMODULE|Add0~18_combout\,
	cout => \DP|PCMODULE|Add0~19\);

-- Location: LCCOMB_X76_Y69_N6
\DP|PCMODULE|PC_temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~13_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & ((\DP|PCMODULE|Add0~18_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|DRMODULE|DR_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \FULL_RESET~input_o\,
	datac => \DP|DRMODULE|DR_temp\(1),
	datad => \DP|PCMODULE|Add0~18_combout\,
	combout => \DP|PCMODULE|PC_temp~13_combout\);

-- Location: FF_X76_Y69_N7
\DP|PCMODULE|PC_temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~13_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(9));

-- Location: LCCOMB_X77_Y69_N20
\DP|PCMODULE|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~20_combout\ = (\DP|PCMODULE|PC_temp\(10) & (\DP|PCMODULE|Add0~19\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(10) & (!\DP|PCMODULE|Add0~19\ & VCC))
-- \DP|PCMODULE|Add0~21\ = CARRY((\DP|PCMODULE|PC_temp\(10) & !\DP|PCMODULE|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PCMODULE|PC_temp\(10),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~19\,
	combout => \DP|PCMODULE|Add0~20_combout\,
	cout => \DP|PCMODULE|Add0~21\);

-- Location: LCCOMB_X76_Y69_N28
\DP|PCMODULE|PC_temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~14_combout\ = (\CU|PC_LOAD~0_combout\ & (((\DP|PCMODULE|Add0~20_combout\ & !\FULL_RESET~input_o\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|DRMODULE|DR_temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \DP|DRMODULE|DR_temp\(2),
	datac => \DP|PCMODULE|Add0~20_combout\,
	datad => \FULL_RESET~input_o\,
	combout => \DP|PCMODULE|PC_temp~14_combout\);

-- Location: FF_X76_Y69_N29
\DP|PCMODULE|PC_temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~14_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(10));

-- Location: LCCOMB_X77_Y69_N22
\DP|PCMODULE|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~22_combout\ = (\DP|PCMODULE|PC_temp\(11) & (!\DP|PCMODULE|Add0~21\)) # (!\DP|PCMODULE|PC_temp\(11) & ((\DP|PCMODULE|Add0~21\) # (GND)))
-- \DP|PCMODULE|Add0~23\ = CARRY((!\DP|PCMODULE|Add0~21\) # (!\DP|PCMODULE|PC_temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(11),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~21\,
	combout => \DP|PCMODULE|Add0~22_combout\,
	cout => \DP|PCMODULE|Add0~23\);

-- Location: LCCOMB_X76_Y69_N10
\DP|PCMODULE|PC_temp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~15_combout\ = (\CU|PC_LOAD~0_combout\ & (((!\FULL_RESET~input_o\ & \DP|PCMODULE|Add0~22_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|DRMODULE|DR_temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DRMODULE|DR_temp\(3),
	datab => \FULL_RESET~input_o\,
	datac => \CU|PC_LOAD~0_combout\,
	datad => \DP|PCMODULE|Add0~22_combout\,
	combout => \DP|PCMODULE|PC_temp~15_combout\);

-- Location: FF_X76_Y69_N11
\DP|PCMODULE|PC_temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~15_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(11));

-- Location: LCCOMB_X77_Y69_N24
\DP|PCMODULE|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~24_combout\ = (\DP|PCMODULE|PC_temp\(12) & (\DP|PCMODULE|Add0~23\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(12) & (!\DP|PCMODULE|Add0~23\ & VCC))
-- \DP|PCMODULE|Add0~25\ = CARRY((\DP|PCMODULE|PC_temp\(12) & !\DP|PCMODULE|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(12),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~23\,
	combout => \DP|PCMODULE|Add0~24_combout\,
	cout => \DP|PCMODULE|Add0~25\);

-- Location: LCCOMB_X76_Y69_N0
\DP|PCMODULE|PC_temp~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~16_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & ((\DP|PCMODULE|Add0~24_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|DRMODULE|DR_temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \FULL_RESET~input_o\,
	datac => \DP|DRMODULE|DR_temp\(4),
	datad => \DP|PCMODULE|Add0~24_combout\,
	combout => \DP|PCMODULE|PC_temp~16_combout\);

-- Location: FF_X76_Y69_N1
\DP|PCMODULE|PC_temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~16_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(12));

-- Location: LCCOMB_X77_Y69_N26
\DP|PCMODULE|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~26_combout\ = (\DP|PCMODULE|PC_temp\(13) & (!\DP|PCMODULE|Add0~25\)) # (!\DP|PCMODULE|PC_temp\(13) & ((\DP|PCMODULE|Add0~25\) # (GND)))
-- \DP|PCMODULE|Add0~27\ = CARRY((!\DP|PCMODULE|Add0~25\) # (!\DP|PCMODULE|PC_temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DP|PCMODULE|PC_temp\(13),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~25\,
	combout => \DP|PCMODULE|Add0~26_combout\,
	cout => \DP|PCMODULE|Add0~27\);

-- Location: LCCOMB_X76_Y69_N26
\DP|PCMODULE|PC_temp~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~17_combout\ = (\CU|PC_LOAD~0_combout\ & (((\DP|PCMODULE|Add0~26_combout\ & !\FULL_RESET~input_o\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|DRMODULE|DR_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|PC_LOAD~0_combout\,
	datab => \DP|DRMODULE|DR_temp\(5),
	datac => \DP|PCMODULE|Add0~26_combout\,
	datad => \FULL_RESET~input_o\,
	combout => \DP|PCMODULE|PC_temp~17_combout\);

-- Location: FF_X76_Y69_N27
\DP|PCMODULE|PC_temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~17_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(13));

-- Location: LCCOMB_X77_Y69_N28
\DP|PCMODULE|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~28_combout\ = (\DP|PCMODULE|PC_temp\(14) & (\DP|PCMODULE|Add0~27\ $ (GND))) # (!\DP|PCMODULE|PC_temp\(14) & (!\DP|PCMODULE|Add0~27\ & VCC))
-- \DP|PCMODULE|Add0~29\ = CARRY((\DP|PCMODULE|PC_temp\(14) & !\DP|PCMODULE|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DP|PCMODULE|PC_temp\(14),
	datad => VCC,
	cin => \DP|PCMODULE|Add0~27\,
	combout => \DP|PCMODULE|Add0~28_combout\,
	cout => \DP|PCMODULE|Add0~29\);

-- Location: LCCOMB_X76_Y69_N20
\DP|PCMODULE|PC_temp~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~18_combout\ = (\CU|PC_LOAD~0_combout\ & (!\FULL_RESET~input_o\ & ((\DP|PCMODULE|Add0~28_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (((\DP|DRMODULE|DR_temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FULL_RESET~input_o\,
	datab => \DP|DRMODULE|DR_temp\(6),
	datac => \CU|PC_LOAD~0_combout\,
	datad => \DP|PCMODULE|Add0~28_combout\,
	combout => \DP|PCMODULE|PC_temp~18_combout\);

-- Location: FF_X76_Y69_N21
\DP|PCMODULE|PC_temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~18_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(14));

-- Location: LCCOMB_X77_Y69_N30
\DP|PCMODULE|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|Add0~30_combout\ = \DP|PCMODULE|Add0~29\ $ (\DP|PCMODULE|PC_temp\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DP|PCMODULE|PC_temp\(15),
	cin => \DP|PCMODULE|Add0~29\,
	combout => \DP|PCMODULE|Add0~30_combout\);

-- Location: LCCOMB_X76_Y69_N14
\DP|PCMODULE|PC_temp~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DP|PCMODULE|PC_temp~19_combout\ = (\CU|PC_LOAD~0_combout\ & (((!\FULL_RESET~input_o\ & \DP|PCMODULE|Add0~30_combout\)))) # (!\CU|PC_LOAD~0_combout\ & (\DP|DRMODULE|DR_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|DRMODULE|DR_temp\(7),
	datab => \FULL_RESET~input_o\,
	datac => \CU|PC_LOAD~0_combout\,
	datad => \DP|PCMODULE|Add0~30_combout\,
	combout => \DP|PCMODULE|PC_temp~19_combout\);

-- Location: FF_X76_Y69_N15
\DP|PCMODULE|PC_temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_ENABLED~clkctrl_outclk\,
	d => \DP|PCMODULE|PC_temp~19_combout\,
	ena => \DP|PCMODULE|PC_temp[8]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|PCMODULE|PC_temp\(15));

ww_AC_TOCPU(0) <= \AC_TOCPU[0]~output_o\;

ww_AC_TOCPU(1) <= \AC_TOCPU[1]~output_o\;

ww_AC_TOCPU(2) <= \AC_TOCPU[2]~output_o\;

ww_AC_TOCPU(3) <= \AC_TOCPU[3]~output_o\;

ww_AC_TOCPU(4) <= \AC_TOCPU[4]~output_o\;

ww_AC_TOCPU(5) <= \AC_TOCPU[5]~output_o\;

ww_AC_TOCPU(6) <= \AC_TOCPU[6]~output_o\;

ww_AC_TOCPU(7) <= \AC_TOCPU[7]~output_o\;

ww_PC_TOCPU(0) <= \PC_TOCPU[0]~output_o\;

ww_PC_TOCPU(1) <= \PC_TOCPU[1]~output_o\;

ww_PC_TOCPU(2) <= \PC_TOCPU[2]~output_o\;

ww_PC_TOCPU(3) <= \PC_TOCPU[3]~output_o\;

ww_PC_TOCPU(4) <= \PC_TOCPU[4]~output_o\;

ww_PC_TOCPU(5) <= \PC_TOCPU[5]~output_o\;

ww_PC_TOCPU(6) <= \PC_TOCPU[6]~output_o\;

ww_PC_TOCPU(7) <= \PC_TOCPU[7]~output_o\;

ww_PC_TOCPU(8) <= \PC_TOCPU[8]~output_o\;

ww_PC_TOCPU(9) <= \PC_TOCPU[9]~output_o\;

ww_PC_TOCPU(10) <= \PC_TOCPU[10]~output_o\;

ww_PC_TOCPU(11) <= \PC_TOCPU[11]~output_o\;

ww_PC_TOCPU(12) <= \PC_TOCPU[12]~output_o\;

ww_PC_TOCPU(13) <= \PC_TOCPU[13]~output_o\;

ww_PC_TOCPU(14) <= \PC_TOCPU[14]~output_o\;

ww_PC_TOCPU(15) <= \PC_TOCPU[15]~output_o\;
END structure;


