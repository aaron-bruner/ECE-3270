-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/10/2022 21:55:54"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab3b IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END lab3b;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \dut|FSMComp|Selector17~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|FSMComp|Selector15~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|FSMComp|Selector13~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dut|FSMComp|Selector29~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \dut|R4|internal_d[0]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|Selector16~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector3~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|state.T2~q\ : std_logic;
SIGNAL \dut|FSMComp|state.T3~q\ : std_logic;
SIGNAL \dut|FSMComp|Selector1~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|state.T0~q\ : std_logic;
SIGNAL \dut|FSMComp|Selector2~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|state.T1~q\ : std_logic;
SIGNAL \dut|FSMComp|Selector17~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector17~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|Selector22~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|Selector22~3_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector15~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector15~0clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|Selector7~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \dut|FSMComp|Selector0~4_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector7~1_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector13~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector13~0clkctrl_outclk\ : std_logic;
SIGNAL \dut|FSMComp|Selector6~4_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector21~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector8~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector8~4_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector9~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector9~4_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector0~6_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector0~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector11~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector11~1_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector12~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector12~4_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal9~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector19~2_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector6~6_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector6~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector10~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector10~4_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector16~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal2~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal4~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector21~1_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector21~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal3~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~5_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector29~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector29~0clkctrl_outclk\ : std_logic;
SIGNAL \dut|FSMComp|Selector28~0_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[0]~9_cout\ : std_logic;
SIGNAL \dut|RG|internal_d[0]~10_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal5~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal6~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal7~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector25~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal8~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal8~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~4_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal9~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|WideNor0~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal2~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal1~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal1~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal5~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal0~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal0~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|WideNor0~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Equal6~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|WideNor0~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~3_combout\ : std_logic;
SIGNAL \dut|R2|internal_d[0]~feeder_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector18~2_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector20~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector18~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~1_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector24~0_combout\ : std_logic;
SIGNAL \dut|R5|internal_d[0]~feeder_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector23~2_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector19~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector7~6_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[0]~11\ : std_logic;
SIGNAL \dut|RG|internal_d[1]~12_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~4_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[1]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~3_combout\ : std_logic;
SIGNAL \dut|R0|internal_d[1]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~1_combout\ : std_logic;
SIGNAL \dut|R1|internal_d[1]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector6~6_combout\ : std_logic;
SIGNAL \dut|MUXComp|m~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~1_combout\ : std_logic;
SIGNAL \dut|R1|internal_d[2]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~2_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[1]~13\ : std_logic;
SIGNAL \dut|RG|internal_d[2]~14_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[2]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~4_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector5~6_combout\ : std_logic;
SIGNAL \dut|R2|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~2_combout\ : std_logic;
SIGNAL \dut|R6|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \dut|R5|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~1_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[3]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~4_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[2]~15\ : std_logic;
SIGNAL \dut|RG|internal_d[3]~16_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector4~6_combout\ : std_logic;
SIGNAL \dut|R2|internal_d[4]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~2_combout\ : std_logic;
SIGNAL \dut|R1|internal_d[4]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~1_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[3]~17\ : std_logic;
SIGNAL \dut|RG|internal_d[4]~18_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~3_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[4]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~4_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector3~6_combout\ : std_logic;
SIGNAL \dut|R1|internal_d[5]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~0_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[5]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~4_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[4]~19\ : std_logic;
SIGNAL \dut|RG|internal_d[5]~20_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector2~6_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~0_combout\ : std_logic;
SIGNAL \dut|R5|internal_d[6]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~1_combout\ : std_logic;
SIGNAL \dut|R0|internal_d[6]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~2_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[6]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~4_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[5]~21\ : std_logic;
SIGNAL \dut|RG|internal_d[6]~22_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~5_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector1~6_combout\ : std_logic;
SIGNAL \dut|R4|internal_d[7]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~4_combout\ : std_logic;
SIGNAL \dut|RG|internal_d[6]~23\ : std_logic;
SIGNAL \dut|RG|internal_d[7]~24_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~3_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~5_combout\ : std_logic;
SIGNAL \dut|R1|internal_d[7]~feeder_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~0_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~1_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~2_combout\ : std_logic;
SIGNAL \dut|MUXComp|Selector0~6_combout\ : std_logic;
SIGNAL \dut|FSMComp|Selector5~0_combout\ : std_logic;
SIGNAL \dut|FSMComp|DoneState~combout\ : std_logic;
SIGNAL \dut|R1|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|RG|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R5|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R2|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R3|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R0|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R6|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R7|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|R4|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|DFFComp|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|AddSubComp|TMP\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|RA|internal_d\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dut|FSMComp|output\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \dut|FSMComp|input\ : std_logic_vector(11 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\dut|FSMComp|Selector17~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dut|FSMComp|Selector17~0_combout\);

\dut|FSMComp|Selector15~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dut|FSMComp|Selector15~0_combout\);

\dut|FSMComp|Selector13~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dut|FSMComp|Selector13~0_combout\);

\dut|FSMComp|Selector29~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dut|FSMComp|Selector29~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N10
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector7~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector6~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector5~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector4~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector3~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector2~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector1~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|MUXComp|Selector0~6_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dut|FSMComp|DoneState~combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X45_Y51_N8
\dut|R4|internal_d[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[0]~feeder_combout\ = \dut|MUXComp|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector7~6_combout\,
	combout => \dut|R4|internal_d[0]~feeder_combout\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X47_Y52_N11
\dut|DFFComp|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(7));

-- Location: LCCOMB_X46_Y52_N16
\dut|FSMComp|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector16~0_combout\ = (!\dut|DFFComp|internal_d\(7) & \dut|FSMComp|state.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(7),
	datad => \dut|FSMComp|state.T1~q\,
	combout => \dut|FSMComp|Selector16~0_combout\);

-- Location: LCCOMB_X47_Y52_N26
\dut|FSMComp|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector3~0_combout\ = (\dut|DFFComp|internal_d\(7) & \dut|FSMComp|state.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|DFFComp|internal_d\(7),
	datad => \dut|FSMComp|state.T1~q\,
	combout => \dut|FSMComp|Selector3~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X47_Y52_N31
\dut|FSMComp|state.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|FSMComp|Selector3~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|FSMComp|state.T2~q\);

-- Location: FF_X47_Y52_N15
\dut|FSMComp|state.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|FSMComp|state.T2~q\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|FSMComp|state.T3~q\);

-- Location: LCCOMB_X46_Y52_N30
\dut|FSMComp|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector1~0_combout\ = (!\dut|FSMComp|Selector16~0_combout\ & (!\dut|FSMComp|state.T3~q\ & ((\SW[9]~input_o\) # (\dut|FSMComp|state.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \dut|FSMComp|Selector16~0_combout\,
	datac => \dut|FSMComp|state.T0~q\,
	datad => \dut|FSMComp|state.T3~q\,
	combout => \dut|FSMComp|Selector1~0_combout\);

-- Location: FF_X46_Y52_N17
\dut|FSMComp|state.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|FSMComp|Selector1~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|FSMComp|state.T0~q\);

-- Location: LCCOMB_X47_Y52_N10
\dut|FSMComp|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector2~0_combout\ = (\SW[9]~input_o\ & !\dut|FSMComp|state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[9]~input_o\,
	datad => \dut|FSMComp|state.T0~q\,
	combout => \dut|FSMComp|Selector2~0_combout\);

-- Location: FF_X47_Y52_N7
\dut|FSMComp|state.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|FSMComp|Selector2~0_combout\,
	clrn => \SW[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|FSMComp|state.T1~q\);

-- Location: LCCOMB_X45_Y52_N30
\dut|FSMComp|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector17~0_combout\ = (\dut|FSMComp|state.T1~q\) # (!\dut|FSMComp|state.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|FSMComp|state.T1~q\,
	datad => \dut|FSMComp|state.T0~q\,
	combout => \dut|FSMComp|Selector17~0_combout\);

-- Location: CLKCTRL_G10
\dut|FSMComp|Selector17~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dut|FSMComp|Selector17~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dut|FSMComp|Selector17~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y52_N6
\dut|FSMComp|input[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(11) = (GLOBAL(\dut|FSMComp|Selector17~0clkctrl_outclk\) & (!\dut|FSMComp|state.T1~q\)) # (!GLOBAL(\dut|FSMComp|Selector17~0clkctrl_outclk\) & ((\dut|FSMComp|input\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector17~0clkctrl_outclk\,
	datac => \dut|FSMComp|state.T1~q\,
	datad => \dut|FSMComp|input\(11),
	combout => \dut|FSMComp|input\(11));

-- Location: FF_X46_Y52_N29
\dut|DFFComp|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(3));

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X46_Y52_N23
\dut|DFFComp|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(5));

-- Location: LCCOMB_X47_Y52_N28
\dut|FSMComp|Selector22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector22~2_combout\ = (\dut|FSMComp|state.T0~q\ & (\dut|DFFComp|internal_d\(5) & ((!\dut|DFFComp|internal_d\(7)) # (!\dut|FSMComp|state.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datab => \dut|FSMComp|state.T0~q\,
	datac => \dut|DFFComp|internal_d\(7),
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector22~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X46_Y52_N21
\dut|DFFComp|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(4));

-- Location: LCCOMB_X49_Y52_N0
\dut|FSMComp|Selector22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector22~3_combout\ = (!\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector22~2_combout\ & !\dut|DFFComp|internal_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|Selector22~2_combout\,
	datad => \dut|DFFComp|internal_d\(4),
	combout => \dut|FSMComp|Selector22~3_combout\);

-- Location: LCCOMB_X47_Y52_N4
\dut|FSMComp|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector15~0_combout\ = (!\dut|FSMComp|state.T2~q\ & ((\dut|DFFComp|internal_d\(7)) # (!\dut|FSMComp|state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T2~q\,
	datac => \dut|FSMComp|state.T3~q\,
	datad => \dut|DFFComp|internal_d\(7),
	combout => \dut|FSMComp|Selector15~0_combout\);

-- Location: CLKCTRL_G13
\dut|FSMComp|Selector15~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dut|FSMComp|Selector15~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dut|FSMComp|Selector15~0clkctrl_outclk\);

-- Location: LCCOMB_X49_Y52_N28
\dut|FSMComp|input[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(4) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|Selector22~3_combout\)) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|input\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector22~3_combout\,
	datab => \dut|FSMComp|input\(4),
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	combout => \dut|FSMComp|input\(4));

-- Location: FF_X45_Y51_N9
\dut|R4|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[0]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(0));

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X46_Y52_N5
\dut|DFFComp|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(1));

-- Location: LCCOMB_X47_Y52_N12
\dut|FSMComp|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector7~0_combout\ = (\dut|DFFComp|internal_d\(4) & (!\dut|DFFComp|internal_d\(5) & (\dut|FSMComp|Selector3~0_combout\ & !\dut|DFFComp|internal_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datab => \dut|DFFComp|internal_d\(5),
	datac => \dut|FSMComp|Selector3~0_combout\,
	datad => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector7~0_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X46_Y52_N11
\dut|DFFComp|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(2));

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X46_Y52_N19
\dut|DFFComp|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(6));

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X46_Y52_N3
\dut|DFFComp|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \dut|FSMComp|input\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|DFFComp|internal_d\(0));

-- Location: LCCOMB_X46_Y52_N2
\dut|FSMComp|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector0~4_combout\ = (!\dut|DFFComp|internal_d\(0) & ((\dut|FSMComp|state.T2~q\) # ((\dut|FSMComp|Selector16~0_combout\ & !\dut|DFFComp|internal_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector16~0_combout\,
	datab => \dut|DFFComp|internal_d\(6),
	datac => \dut|DFFComp|internal_d\(0),
	datad => \dut|FSMComp|state.T2~q\,
	combout => \dut|FSMComp|Selector0~4_combout\);

-- Location: LCCOMB_X47_Y51_N14
\dut|FSMComp|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector7~1_combout\ = (\dut|FSMComp|Selector7~0_combout\) # ((\dut|DFFComp|internal_d\(1) & (!\dut|DFFComp|internal_d\(2) & \dut|FSMComp|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(1),
	datab => \dut|FSMComp|Selector7~0_combout\,
	datac => \dut|DFFComp|internal_d\(2),
	datad => \dut|FSMComp|Selector0~4_combout\,
	combout => \dut|FSMComp|Selector7~1_combout\);

-- Location: LCCOMB_X47_Y52_N8
\dut|FSMComp|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector13~0_combout\ = (!\dut|DFFComp|internal_d\(7) & ((\dut|FSMComp|state.T2~q\) # (\dut|FSMComp|state.T3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T2~q\,
	datac => \dut|FSMComp|state.T3~q\,
	datad => \dut|DFFComp|internal_d\(7),
	combout => \dut|FSMComp|Selector13~0_combout\);

-- Location: CLKCTRL_G14
\dut|FSMComp|Selector13~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dut|FSMComp|Selector13~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dut|FSMComp|Selector13~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y51_N2
\dut|FSMComp|output[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(2) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|output\(2))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|output\(2),
	datac => \dut|FSMComp|Selector7~1_combout\,
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(2));

-- Location: LCCOMB_X46_Y52_N18
\dut|FSMComp|Selector6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector6~4_combout\ = (\dut|DFFComp|internal_d\(0) & ((\dut|FSMComp|state.T2~q\) # ((\dut|FSMComp|Selector16~0_combout\ & !\dut|DFFComp|internal_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector16~0_combout\,
	datab => \dut|DFFComp|internal_d\(0),
	datac => \dut|DFFComp|internal_d\(6),
	datad => \dut|FSMComp|state.T2~q\,
	combout => \dut|FSMComp|Selector6~4_combout\);

-- Location: LCCOMB_X46_Y52_N28
\dut|FSMComp|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector21~0_combout\ = (\dut|DFFComp|internal_d\(4) & \dut|DFFComp|internal_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datac => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector21~0_combout\);

-- Location: LCCOMB_X46_Y52_N24
\dut|FSMComp|Selector8~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector8~5_combout\ = (\dut|FSMComp|state.T1~q\ & (\dut|DFFComp|internal_d\(7) & (!\dut|DFFComp|internal_d\(5) & \dut|FSMComp|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|DFFComp|internal_d\(5),
	datad => \dut|FSMComp|Selector21~0_combout\,
	combout => \dut|FSMComp|Selector8~5_combout\);

-- Location: LCCOMB_X46_Y52_N12
\dut|FSMComp|Selector8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector8~4_combout\ = (\dut|FSMComp|Selector8~5_combout\) # ((!\dut|DFFComp|internal_d\(2) & (\dut|FSMComp|Selector6~4_combout\ & \dut|DFFComp|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(2),
	datab => \dut|FSMComp|Selector6~4_combout\,
	datac => \dut|DFFComp|internal_d\(1),
	datad => \dut|FSMComp|Selector8~5_combout\,
	combout => \dut|FSMComp|Selector8~4_combout\);

-- Location: LCCOMB_X46_Y51_N16
\dut|FSMComp|output[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(3) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|output\(3))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|Selector8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(3),
	datab => \dut|FSMComp|Selector8~4_combout\,
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(3));

-- Location: LCCOMB_X47_Y52_N24
\dut|FSMComp|Selector9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector9~5_combout\ = (!\dut|DFFComp|internal_d\(4) & (!\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector3~0_combout\ & \dut|DFFComp|internal_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|Selector3~0_combout\,
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector9~5_combout\);

-- Location: LCCOMB_X46_Y51_N14
\dut|FSMComp|Selector9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector9~4_combout\ = (\dut|FSMComp|Selector9~5_combout\) # ((\dut|DFFComp|internal_d\(2) & (!\dut|DFFComp|internal_d\(1) & \dut|FSMComp|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(2),
	datab => \dut|FSMComp|Selector9~5_combout\,
	datac => \dut|DFFComp|internal_d\(1),
	datad => \dut|FSMComp|Selector0~4_combout\,
	combout => \dut|FSMComp|Selector9~4_combout\);

-- Location: LCCOMB_X46_Y51_N10
\dut|FSMComp|output[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(4) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|output\(4))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(4),
	datab => \dut|FSMComp|Selector9~4_combout\,
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(4));

-- Location: LCCOMB_X47_Y52_N20
\dut|FSMComp|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector0~6_combout\ = (!\dut|DFFComp|internal_d\(4) & (!\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector3~0_combout\ & !\dut|DFFComp|internal_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|Selector3~0_combout\,
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector0~6_combout\);

-- Location: LCCOMB_X46_Y52_N8
\dut|FSMComp|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector0~5_combout\ = (\dut|FSMComp|Selector0~6_combout\) # ((\dut|FSMComp|Selector0~4_combout\ & (!\dut|DFFComp|internal_d\(1) & !\dut|DFFComp|internal_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector0~4_combout\,
	datab => \dut|DFFComp|internal_d\(1),
	datac => \dut|FSMComp|Selector0~6_combout\,
	datad => \dut|DFFComp|internal_d\(2),
	combout => \dut|FSMComp|Selector0~5_combout\);

-- Location: LCCOMB_X46_Y51_N4
\dut|FSMComp|output[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(0) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|output\(0)))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|Selector0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector0~5_combout\,
	datab => \dut|FSMComp|output\(0),
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(0));

-- Location: LCCOMB_X45_Y51_N10
\dut|FSMComp|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector11~0_combout\ = (\dut|DFFComp|internal_d\(4) & (\dut|FSMComp|Selector3~0_combout\ & (!\dut|DFFComp|internal_d\(3) & \dut|DFFComp|internal_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datab => \dut|FSMComp|Selector3~0_combout\,
	datac => \dut|DFFComp|internal_d\(3),
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector11~0_combout\);

-- Location: LCCOMB_X45_Y51_N16
\dut|FSMComp|Selector11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector11~1_combout\ = (\dut|FSMComp|Selector11~0_combout\) # ((\dut|FSMComp|Selector0~4_combout\ & (\dut|DFFComp|internal_d\(2) & \dut|DFFComp|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector0~4_combout\,
	datab => \dut|DFFComp|internal_d\(2),
	datac => \dut|FSMComp|Selector11~0_combout\,
	datad => \dut|DFFComp|internal_d\(1),
	combout => \dut|FSMComp|Selector11~1_combout\);

-- Location: LCCOMB_X45_Y51_N6
\dut|FSMComp|output[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(6) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|output\(6))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|Selector11~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(6),
	datab => \dut|FSMComp|Selector11~1_combout\,
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(6));

-- Location: LCCOMB_X46_Y52_N0
\dut|FSMComp|Selector12~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector12~5_combout\ = (\dut|FSMComp|state.T1~q\ & (\dut|DFFComp|internal_d\(7) & (\dut|DFFComp|internal_d\(5) & \dut|FSMComp|Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|DFFComp|internal_d\(5),
	datad => \dut|FSMComp|Selector21~0_combout\,
	combout => \dut|FSMComp|Selector12~5_combout\);

-- Location: LCCOMB_X46_Y52_N10
\dut|FSMComp|Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector12~4_combout\ = (\dut|FSMComp|Selector12~5_combout\) # ((\dut|FSMComp|Selector6~4_combout\ & (\dut|DFFComp|internal_d\(2) & \dut|DFFComp|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector12~5_combout\,
	datab => \dut|FSMComp|Selector6~4_combout\,
	datac => \dut|DFFComp|internal_d\(2),
	datad => \dut|DFFComp|internal_d\(1),
	combout => \dut|FSMComp|Selector12~4_combout\);

-- Location: LCCOMB_X45_Y51_N4
\dut|FSMComp|output[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(7) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|output\(7)))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|Selector12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|Selector12~4_combout\,
	datac => \dut|FSMComp|output\(7),
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(7));

-- Location: LCCOMB_X45_Y51_N14
\dut|FSMComp|output[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(8) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|state.T3~q\)) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|output\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T3~q\,
	datac => \dut|FSMComp|output\(8),
	datad => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(8));

-- Location: LCCOMB_X46_Y51_N12
\dut|MUXComp|Equal9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal9~0_combout\ = (!\dut|FSMComp|output\(0) & (!\dut|FSMComp|output\(6) & (!\dut|FSMComp|output\(7) & !\dut|FSMComp|output\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(0),
	datab => \dut|FSMComp|output\(6),
	datac => \dut|FSMComp|output\(7),
	datad => \dut|FSMComp|output\(8),
	combout => \dut|MUXComp|Equal9~0_combout\);

-- Location: LCCOMB_X46_Y52_N20
\dut|FSMComp|Selector19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector19~2_combout\ = (!\dut|DFFComp|internal_d\(4) & \dut|DFFComp|internal_d\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|DFFComp|internal_d\(4),
	datad => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector19~2_combout\);

-- Location: LCCOMB_X46_Y52_N22
\dut|FSMComp|Selector6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector6~6_combout\ = (\dut|FSMComp|state.T1~q\ & (\dut|DFFComp|internal_d\(7) & (!\dut|DFFComp|internal_d\(5) & \dut|FSMComp|Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|DFFComp|internal_d\(5),
	datad => \dut|FSMComp|Selector19~2_combout\,
	combout => \dut|FSMComp|Selector6~6_combout\);

-- Location: LCCOMB_X46_Y52_N26
\dut|FSMComp|Selector6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector6~5_combout\ = (\dut|FSMComp|Selector6~6_combout\) # ((\dut|FSMComp|Selector6~4_combout\ & (!\dut|DFFComp|internal_d\(1) & !\dut|DFFComp|internal_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector6~6_combout\,
	datab => \dut|FSMComp|Selector6~4_combout\,
	datac => \dut|DFFComp|internal_d\(1),
	datad => \dut|DFFComp|internal_d\(2),
	combout => \dut|FSMComp|Selector6~5_combout\);

-- Location: LCCOMB_X46_Y51_N8
\dut|FSMComp|output[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(1) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|output\(1)))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|Selector6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|Selector6~5_combout\,
	datac => \dut|FSMComp|output\(1),
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|output\(1));

-- Location: LCCOMB_X46_Y52_N14
\dut|FSMComp|Selector10~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector10~5_combout\ = (\dut|FSMComp|state.T1~q\ & (\dut|DFFComp|internal_d\(7) & (\dut|DFFComp|internal_d\(5) & \dut|FSMComp|Selector19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|DFFComp|internal_d\(5),
	datad => \dut|FSMComp|Selector19~2_combout\,
	combout => \dut|FSMComp|Selector10~5_combout\);

-- Location: LCCOMB_X46_Y52_N4
\dut|FSMComp|Selector10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector10~4_combout\ = (\dut|FSMComp|Selector10~5_combout\) # ((\dut|DFFComp|internal_d\(2) & (\dut|FSMComp|Selector6~4_combout\ & !\dut|DFFComp|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(2),
	datab => \dut|FSMComp|Selector6~4_combout\,
	datac => \dut|DFFComp|internal_d\(1),
	datad => \dut|FSMComp|Selector10~5_combout\,
	combout => \dut|FSMComp|Selector10~4_combout\);

-- Location: LCCOMB_X47_Y51_N20
\dut|FSMComp|output[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(5) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|output\(5)))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|Selector10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	datab => \dut|FSMComp|Selector10~4_combout\,
	datad => \dut|FSMComp|output\(5),
	combout => \dut|FSMComp|output\(5));

-- Location: LCCOMB_X47_Y51_N12
\dut|FSMComp|Selector16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector16~1_combout\ = (!\dut|DFFComp|internal_d\(7) & (\dut|FSMComp|state.T1~q\ & \dut|DFFComp|internal_d\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|FSMComp|state.T1~q\,
	datad => \dut|DFFComp|internal_d\(6),
	combout => \dut|FSMComp|Selector16~1_combout\);

-- Location: LCCOMB_X47_Y51_N6
\dut|FSMComp|output[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|output\(9) = (GLOBAL(\dut|FSMComp|Selector17~0clkctrl_outclk\) & (\dut|FSMComp|Selector16~1_combout\)) # (!GLOBAL(\dut|FSMComp|Selector17~0clkctrl_outclk\) & ((\dut|FSMComp|output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|Selector16~1_combout\,
	datac => \dut|FSMComp|Selector17~0clkctrl_outclk\,
	datad => \dut|FSMComp|output\(9),
	combout => \dut|FSMComp|output\(9));

-- Location: LCCOMB_X46_Y51_N24
\dut|MUXComp|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal2~0_combout\ = (\dut|MUXComp|Equal9~0_combout\ & (!\dut|FSMComp|output\(1) & (!\dut|FSMComp|output\(5) & !\dut|FSMComp|output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal9~0_combout\,
	datab => \dut|FSMComp|output\(1),
	datac => \dut|FSMComp|output\(5),
	datad => \dut|FSMComp|output\(9),
	combout => \dut|MUXComp|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y51_N20
\dut|MUXComp|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal4~0_combout\ = (!\dut|FSMComp|output\(2) & (!\dut|FSMComp|output\(3) & (\dut|FSMComp|output\(4) & \dut|MUXComp|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(2),
	datab => \dut|FSMComp|output\(3),
	datac => \dut|FSMComp|output\(4),
	datad => \dut|MUXComp|Equal2~0_combout\,
	combout => \dut|MUXComp|Equal4~0_combout\);

-- Location: LCCOMB_X47_Y52_N6
\dut|FSMComp|Selector21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector21~1_combout\ = (!\dut|DFFComp|internal_d\(5) & ((!\dut|FSMComp|state.T1~q\) # (!\dut|DFFComp|internal_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|FSMComp|state.T1~q\,
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector21~1_combout\);

-- Location: LCCOMB_X47_Y52_N16
\dut|FSMComp|Selector21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector21~2_combout\ = (\dut|DFFComp|internal_d\(4) & (\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|state.T0~q\ & \dut|FSMComp|Selector21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(4),
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|state.T0~q\,
	datad => \dut|FSMComp|Selector21~1_combout\,
	combout => \dut|FSMComp|Selector21~2_combout\);

-- Location: LCCOMB_X47_Y52_N2
\dut|FSMComp|input[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(3) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|Selector21~2_combout\)) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|input\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector21~2_combout\,
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datad => \dut|FSMComp|input\(3),
	combout => \dut|FSMComp|input\(3));

-- Location: FF_X49_Y51_N15
\dut|R3|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector7~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(0));

-- Location: LCCOMB_X46_Y51_N18
\dut|MUXComp|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal3~0_combout\ = (!\dut|FSMComp|output\(2) & (\dut|FSMComp|output\(3) & (!\dut|FSMComp|output\(4) & \dut|MUXComp|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(2),
	datab => \dut|FSMComp|output\(3),
	datac => \dut|FSMComp|output\(4),
	datad => \dut|MUXComp|Equal2~0_combout\,
	combout => \dut|MUXComp|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y51_N14
\dut|MUXComp|Selector7~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~5_combout\ = (\dut|R4|internal_d\(0) & ((\dut|MUXComp|Equal4~0_combout\) # ((\dut|R3|internal_d\(0) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|R4|internal_d\(0) & (((\dut|R3|internal_d\(0) & \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R4|internal_d\(0),
	datab => \dut|MUXComp|Equal4~0_combout\,
	datac => \dut|R3|internal_d\(0),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector7~5_combout\);

-- Location: LCCOMB_X47_Y52_N0
\dut|FSMComp|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector29~0_combout\ = (!\dut|FSMComp|state.T3~q\ & ((\dut|DFFComp|internal_d\(7)) # (!\dut|FSMComp|state.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T2~q\,
	datac => \dut|FSMComp|state.T3~q\,
	datad => \dut|DFFComp|internal_d\(7),
	combout => \dut|FSMComp|Selector29~0_combout\);

-- Location: CLKCTRL_G12
\dut|FSMComp|Selector29~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dut|FSMComp|Selector29~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dut|FSMComp|Selector29~0clkctrl_outclk\);

-- Location: LCCOMB_X47_Y52_N22
\dut|FSMComp|input[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(9) = (GLOBAL(\dut|FSMComp|Selector29~0clkctrl_outclk\) & ((\dut|FSMComp|Selector3~0_combout\))) # (!GLOBAL(\dut|FSMComp|Selector29~0clkctrl_outclk\) & (\dut|FSMComp|input\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|input\(9),
	datac => \dut|FSMComp|Selector3~0_combout\,
	datad => \dut|FSMComp|Selector29~0clkctrl_outclk\,
	combout => \dut|FSMComp|input\(9));

-- Location: FF_X50_Y51_N1
\dut|RA|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector7~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(0));

-- Location: LCCOMB_X47_Y52_N30
\dut|FSMComp|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector28~0_combout\ = (\dut|FSMComp|state.T2~q\ & ((\dut|DFFComp|internal_d\(6)) # (!\dut|DFFComp|internal_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|FSMComp|state.T2~q\,
	datad => \dut|DFFComp|internal_d\(6),
	combout => \dut|FSMComp|Selector28~0_combout\);

-- Location: LCCOMB_X50_Y52_N4
\dut|FSMComp|input[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(10) = (GLOBAL(\dut|FSMComp|Selector29~0clkctrl_outclk\) & (\dut|FSMComp|Selector28~0_combout\)) # (!GLOBAL(\dut|FSMComp|Selector29~0clkctrl_outclk\) & ((\dut|FSMComp|input\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector28~0_combout\,
	datac => \dut|FSMComp|input\(10),
	datad => \dut|FSMComp|Selector29~0clkctrl_outclk\,
	combout => \dut|FSMComp|input\(10));

-- Location: LCCOMB_X50_Y51_N24
\dut|AddSubComp|TMP[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(0) = \dut|FSMComp|input\(10) $ (\dut|MUXComp|Selector7~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|FSMComp|input\(10),
	datad => \dut|MUXComp|Selector7~6_combout\,
	combout => \dut|AddSubComp|TMP\(0));

-- Location: LCCOMB_X50_Y51_N4
\dut|RG|internal_d[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[0]~9_cout\ = CARRY(\dut|FSMComp|input\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|input\(10),
	datad => VCC,
	cout => \dut|RG|internal_d[0]~9_cout\);

-- Location: LCCOMB_X50_Y51_N6
\dut|RG|internal_d[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[0]~10_combout\ = (\dut|RA|internal_d\(0) & ((\dut|AddSubComp|TMP\(0) & (\dut|RG|internal_d[0]~9_cout\ & VCC)) # (!\dut|AddSubComp|TMP\(0) & (!\dut|RG|internal_d[0]~9_cout\)))) # (!\dut|RA|internal_d\(0) & ((\dut|AddSubComp|TMP\(0) & 
-- (!\dut|RG|internal_d[0]~9_cout\)) # (!\dut|AddSubComp|TMP\(0) & ((\dut|RG|internal_d[0]~9_cout\) # (GND)))))
-- \dut|RG|internal_d[0]~11\ = CARRY((\dut|RA|internal_d\(0) & (!\dut|AddSubComp|TMP\(0) & !\dut|RG|internal_d[0]~9_cout\)) # (!\dut|RA|internal_d\(0) & ((!\dut|RG|internal_d[0]~9_cout\) # (!\dut|AddSubComp|TMP\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RA|internal_d\(0),
	datab => \dut|AddSubComp|TMP\(0),
	datad => VCC,
	cin => \dut|RG|internal_d[0]~9_cout\,
	combout => \dut|RG|internal_d[0]~10_combout\,
	cout => \dut|RG|internal_d[0]~11\);

-- Location: LCCOMB_X46_Y51_N30
\dut|FSMComp|input[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(8) = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((\dut|FSMComp|input\(8)))) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|state.T2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T2~q\,
	datac => \dut|FSMComp|input\(8),
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|input\(8));

-- Location: FF_X50_Y51_N7
\dut|RG|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[0]~10_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(0));

-- Location: LCCOMB_X46_Y51_N6
\dut|MUXComp|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal5~0_combout\ = (!\dut|FSMComp|output\(4) & (!\dut|FSMComp|output\(2) & (!\dut|FSMComp|output\(1) & !\dut|FSMComp|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(4),
	datab => \dut|FSMComp|output\(2),
	datac => \dut|FSMComp|output\(1),
	datad => \dut|FSMComp|output\(3),
	combout => \dut|MUXComp|Equal5~0_combout\);

-- Location: LCCOMB_X46_Y51_N28
\dut|MUXComp|Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal6~0_combout\ = (\dut|MUXComp|Equal5~0_combout\ & (!\dut|FSMComp|output\(0) & (!\dut|FSMComp|output\(5) & !\dut|FSMComp|output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal5~0_combout\,
	datab => \dut|FSMComp|output\(0),
	datac => \dut|FSMComp|output\(5),
	datad => \dut|FSMComp|output\(9),
	combout => \dut|MUXComp|Equal6~0_combout\);

-- Location: LCCOMB_X45_Y51_N26
\dut|MUXComp|Equal7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal7~0_combout\ = (!\dut|FSMComp|output\(6) & (\dut|FSMComp|output\(7) & (!\dut|FSMComp|output\(8) & \dut|MUXComp|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(6),
	datab => \dut|FSMComp|output\(7),
	datac => \dut|FSMComp|output\(8),
	datad => \dut|MUXComp|Equal6~0_combout\,
	combout => \dut|MUXComp|Equal7~0_combout\);

-- Location: LCCOMB_X47_Y50_N10
\dut|FSMComp|Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector25~2_combout\ = (\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector22~2_combout\ & \dut|DFFComp|internal_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|DFFComp|internal_d\(3),
	datab => \dut|FSMComp|Selector22~2_combout\,
	datad => \dut|DFFComp|internal_d\(4),
	combout => \dut|FSMComp|Selector25~2_combout\);

-- Location: LCCOMB_X47_Y50_N28
\dut|FSMComp|input[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(7) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|Selector25~2_combout\)) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|input\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|Selector25~2_combout\,
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datad => \dut|FSMComp|input\(7),
	combout => \dut|FSMComp|input\(7));

-- Location: FF_X49_Y51_N5
\dut|R7|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector7~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(0));

-- Location: LCCOMB_X45_Y51_N28
\dut|MUXComp|Equal8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal8~0_combout\ = (!\dut|FSMComp|output\(6) & (!\dut|FSMComp|output\(7) & (!\dut|FSMComp|output\(0) & !\dut|FSMComp|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(6),
	datab => \dut|FSMComp|output\(7),
	datac => \dut|FSMComp|output\(0),
	datad => \dut|FSMComp|output\(5),
	combout => \dut|MUXComp|Equal8~0_combout\);

-- Location: LCCOMB_X45_Y51_N18
\dut|MUXComp|Equal8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal8~1_combout\ = (\dut|MUXComp|Equal5~0_combout\ & (\dut|FSMComp|output\(8) & (!\dut|FSMComp|output\(9) & \dut|MUXComp|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal5~0_combout\,
	datab => \dut|FSMComp|output\(8),
	datac => \dut|FSMComp|output\(9),
	datad => \dut|MUXComp|Equal8~0_combout\,
	combout => \dut|MUXComp|Equal8~1_combout\);

-- Location: LCCOMB_X49_Y51_N4
\dut|MUXComp|Selector7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~4_combout\ = (\dut|RG|internal_d\(0) & ((\dut|MUXComp|Equal8~1_combout\) # ((\dut|MUXComp|Equal7~0_combout\ & \dut|R7|internal_d\(0))))) # (!\dut|RG|internal_d\(0) & (\dut|MUXComp|Equal7~0_combout\ & (\dut|R7|internal_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RG|internal_d\(0),
	datab => \dut|MUXComp|Equal7~0_combout\,
	datac => \dut|R7|internal_d\(0),
	datad => \dut|MUXComp|Equal8~1_combout\,
	combout => \dut|MUXComp|Selector7~4_combout\);

-- Location: LCCOMB_X47_Y51_N10
\dut|MUXComp|Equal9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal9~1_combout\ = (\dut|FSMComp|output\(9) & (!\dut|FSMComp|output\(5) & (\dut|MUXComp|Equal5~0_combout\ & \dut|MUXComp|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(9),
	datab => \dut|FSMComp|output\(5),
	datac => \dut|MUXComp|Equal5~0_combout\,
	datad => \dut|MUXComp|Equal9~0_combout\,
	combout => \dut|MUXComp|Equal9~1_combout\);

-- Location: LCCOMB_X47_Y51_N4
\dut|MUXComp|WideNor0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|WideNor0~0_combout\ = (!\dut|MUXComp|Equal8~1_combout\ & (!\dut|MUXComp|Equal4~0_combout\ & (!\dut|MUXComp|Equal7~0_combout\ & !\dut|MUXComp|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal8~1_combout\,
	datab => \dut|MUXComp|Equal4~0_combout\,
	datac => \dut|MUXComp|Equal7~0_combout\,
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|WideNor0~0_combout\);

-- Location: LCCOMB_X46_Y51_N26
\dut|MUXComp|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal2~1_combout\ = (\dut|FSMComp|output\(2) & (!\dut|FSMComp|output\(3) & (!\dut|FSMComp|output\(4) & \dut|MUXComp|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(2),
	datab => \dut|FSMComp|output\(3),
	datac => \dut|FSMComp|output\(4),
	datad => \dut|MUXComp|Equal2~0_combout\,
	combout => \dut|MUXComp|Equal2~1_combout\);

-- Location: LCCOMB_X46_Y51_N22
\dut|MUXComp|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal1~0_combout\ = (!\dut|FSMComp|output\(4) & (!\dut|FSMComp|output\(2) & (\dut|FSMComp|output\(1) & !\dut|FSMComp|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(4),
	datab => \dut|FSMComp|output\(2),
	datac => \dut|FSMComp|output\(1),
	datad => \dut|FSMComp|output\(3),
	combout => \dut|MUXComp|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y51_N0
\dut|MUXComp|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal1~1_combout\ = (\dut|MUXComp|Equal9~0_combout\ & (!\dut|FSMComp|output\(5) & (\dut|MUXComp|Equal1~0_combout\ & !\dut|FSMComp|output\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal9~0_combout\,
	datab => \dut|FSMComp|output\(5),
	datac => \dut|MUXComp|Equal1~0_combout\,
	datad => \dut|FSMComp|output\(9),
	combout => \dut|MUXComp|Equal1~1_combout\);

-- Location: LCCOMB_X47_Y51_N8
\dut|MUXComp|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal5~1_combout\ = (!\dut|FSMComp|output\(9) & (\dut|FSMComp|output\(5) & (\dut|MUXComp|Equal5~0_combout\ & \dut|MUXComp|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(9),
	datab => \dut|FSMComp|output\(5),
	datac => \dut|MUXComp|Equal5~0_combout\,
	datad => \dut|MUXComp|Equal9~0_combout\,
	combout => \dut|MUXComp|Equal5~1_combout\);

-- Location: LCCOMB_X47_Y51_N18
\dut|MUXComp|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal0~0_combout\ = (!\dut|FSMComp|output\(7) & (\dut|FSMComp|output\(0) & (!\dut|FSMComp|output\(6) & !\dut|FSMComp|output\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(7),
	datab => \dut|FSMComp|output\(0),
	datac => \dut|FSMComp|output\(6),
	datad => \dut|FSMComp|output\(8),
	combout => \dut|MUXComp|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y51_N0
\dut|MUXComp|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal0~1_combout\ = (!\dut|FSMComp|output\(9) & (!\dut|FSMComp|output\(5) & (\dut|MUXComp|Equal5~0_combout\ & \dut|MUXComp|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(9),
	datab => \dut|FSMComp|output\(5),
	datac => \dut|MUXComp|Equal5~0_combout\,
	datad => \dut|MUXComp|Equal0~0_combout\,
	combout => \dut|MUXComp|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y51_N26
\dut|MUXComp|WideNor0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|WideNor0~1_combout\ = (!\dut|MUXComp|Equal1~1_combout\ & (!\dut|MUXComp|Equal5~1_combout\ & !\dut|MUXComp|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|MUXComp|Equal5~1_combout\,
	datad => \dut|MUXComp|Equal0~1_combout\,
	combout => \dut|MUXComp|WideNor0~1_combout\);

-- Location: LCCOMB_X45_Y51_N12
\dut|MUXComp|Equal6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Equal6~1_combout\ = (\dut|FSMComp|output\(6) & (!\dut|FSMComp|output\(7) & (!\dut|FSMComp|output\(8) & \dut|MUXComp|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|output\(6),
	datab => \dut|FSMComp|output\(7),
	datac => \dut|FSMComp|output\(8),
	datad => \dut|MUXComp|Equal6~0_combout\,
	combout => \dut|MUXComp|Equal6~1_combout\);

-- Location: LCCOMB_X47_Y51_N16
\dut|MUXComp|WideNor0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|WideNor0~2_combout\ = (!\dut|MUXComp|Equal2~1_combout\ & (\dut|MUXComp|WideNor0~1_combout\ & !\dut|MUXComp|Equal6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal2~1_combout\,
	datac => \dut|MUXComp|WideNor0~1_combout\,
	datad => \dut|MUXComp|Equal6~1_combout\,
	combout => \dut|MUXComp|WideNor0~2_combout\);

-- Location: LCCOMB_X47_Y51_N30
\dut|MUXComp|Selector7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~3_combout\ = (\SW[0]~input_o\ & ((\dut|MUXComp|Equal9~1_combout\) # ((\dut|MUXComp|WideNor0~0_combout\ & \dut|MUXComp|WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal9~1_combout\,
	datab => \SW[0]~input_o\,
	datac => \dut|MUXComp|WideNor0~0_combout\,
	datad => \dut|MUXComp|WideNor0~2_combout\,
	combout => \dut|MUXComp|Selector7~3_combout\);

-- Location: LCCOMB_X49_Y50_N16
\dut|R2|internal_d[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R2|internal_d[0]~feeder_combout\ = \dut|MUXComp|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector7~6_combout\,
	combout => \dut|R2|internal_d[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y52_N4
\dut|FSMComp|Selector18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector18~2_combout\ = (\dut|FSMComp|state.T0~q\ & (!\dut|DFFComp|internal_d\(5) & ((!\dut|FSMComp|state.T1~q\) # (!\dut|DFFComp|internal_d\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T0~q\,
	datab => \dut|DFFComp|internal_d\(7),
	datac => \dut|FSMComp|state.T1~q\,
	datad => \dut|DFFComp|internal_d\(5),
	combout => \dut|FSMComp|Selector18~2_combout\);

-- Location: LCCOMB_X49_Y52_N22
\dut|FSMComp|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector20~0_combout\ = (\dut|DFFComp|internal_d\(4) & (\dut|FSMComp|Selector18~2_combout\ & !\dut|DFFComp|internal_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(4),
	datac => \dut|FSMComp|Selector18~2_combout\,
	datad => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector20~0_combout\);

-- Location: LCCOMB_X49_Y52_N6
\dut|FSMComp|input[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(2) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|Selector20~0_combout\))) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|input\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|input\(2),
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datad => \dut|FSMComp|Selector20~0_combout\,
	combout => \dut|FSMComp|input\(2));

-- Location: FF_X49_Y50_N17
\dut|R2|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R2|internal_d[0]~feeder_combout\,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(0));

-- Location: LCCOMB_X49_Y52_N18
\dut|FSMComp|Selector18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector18~3_combout\ = (!\dut|DFFComp|internal_d\(4) & (\dut|FSMComp|Selector18~2_combout\ & !\dut|DFFComp|internal_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(4),
	datac => \dut|FSMComp|Selector18~2_combout\,
	datad => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector18~3_combout\);

-- Location: LCCOMB_X49_Y52_N8
\dut|FSMComp|input[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(0) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|Selector18~3_combout\))) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|input\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datab => \dut|FSMComp|input\(0),
	datac => \dut|FSMComp|Selector18~3_combout\,
	combout => \dut|FSMComp|input\(0));

-- Location: FF_X50_Y50_N13
\dut|R0|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector7~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(0));

-- Location: LCCOMB_X50_Y50_N12
\dut|MUXComp|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~1_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(0)) # ((\dut|R2|internal_d\(0) & \dut|MUXComp|Equal2~1_combout\)))) # (!\dut|MUXComp|Equal0~1_combout\ & (\dut|R2|internal_d\(0) & 
-- ((\dut|MUXComp|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|R2|internal_d\(0),
	datac => \dut|R0|internal_d\(0),
	datad => \dut|MUXComp|Equal2~1_combout\,
	combout => \dut|MUXComp|Selector7~1_combout\);

-- Location: LCCOMB_X49_Y52_N20
\dut|FSMComp|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector24~0_combout\ = (!\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector22~2_combout\ & \dut|DFFComp|internal_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|Selector22~2_combout\,
	datad => \dut|DFFComp|internal_d\(4),
	combout => \dut|FSMComp|Selector24~0_combout\);

-- Location: LCCOMB_X49_Y52_N14
\dut|FSMComp|input[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(6) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|Selector24~0_combout\))) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|input\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|input\(6),
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datad => \dut|FSMComp|Selector24~0_combout\,
	combout => \dut|FSMComp|input\(6));

-- Location: FF_X50_Y50_N7
\dut|R6|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector7~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(0));

-- Location: LCCOMB_X51_Y52_N12
\dut|R5|internal_d[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R5|internal_d[0]~feeder_combout\ = \dut|MUXComp|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector7~6_combout\,
	combout => \dut|R5|internal_d[0]~feeder_combout\);

-- Location: LCCOMB_X49_Y52_N30
\dut|FSMComp|Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector23~2_combout\ = (\dut|DFFComp|internal_d\(3) & (\dut|FSMComp|Selector22~2_combout\ & !\dut|DFFComp|internal_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(3),
	datac => \dut|FSMComp|Selector22~2_combout\,
	datad => \dut|DFFComp|internal_d\(4),
	combout => \dut|FSMComp|Selector23~2_combout\);

-- Location: LCCOMB_X49_Y52_N26
\dut|FSMComp|input[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(5) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|Selector23~2_combout\))) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|input\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|input\(5),
	datac => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datad => \dut|FSMComp|Selector23~2_combout\,
	combout => \dut|FSMComp|input\(5));

-- Location: FF_X51_Y52_N13
\dut|R5|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R5|internal_d[0]~feeder_combout\,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(0));

-- Location: LCCOMB_X49_Y52_N16
\dut|FSMComp|Selector19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector19~3_combout\ = (!\dut|DFFComp|internal_d\(4) & (\dut|FSMComp|Selector18~2_combout\ & \dut|DFFComp|internal_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|DFFComp|internal_d\(4),
	datac => \dut|FSMComp|Selector18~2_combout\,
	datad => \dut|DFFComp|internal_d\(3),
	combout => \dut|FSMComp|Selector19~3_combout\);

-- Location: LCCOMB_X49_Y52_N24
\dut|FSMComp|input[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|input\(1) = (GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & ((\dut|FSMComp|Selector19~3_combout\))) # (!GLOBAL(\dut|FSMComp|Selector15~0clkctrl_outclk\) & (\dut|FSMComp|input\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|Selector15~0clkctrl_outclk\,
	datab => \dut|FSMComp|input\(1),
	datac => \dut|FSMComp|Selector19~3_combout\,
	combout => \dut|FSMComp|input\(1));

-- Location: FF_X51_Y52_N23
\dut|R1|internal_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector7~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(0));

-- Location: LCCOMB_X51_Y52_N22
\dut|MUXComp|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~0_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(0)) # ((\dut|R5|internal_d\(0) & \dut|MUXComp|Equal5~1_combout\)))) # (!\dut|MUXComp|Equal1~1_combout\ & (\dut|R5|internal_d\(0) & 
-- ((\dut|MUXComp|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|R5|internal_d\(0),
	datac => \dut|R1|internal_d\(0),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector7~0_combout\);

-- Location: LCCOMB_X50_Y50_N6
\dut|MUXComp|Selector7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~2_combout\ = (\dut|MUXComp|Selector7~1_combout\) # ((\dut|MUXComp|Selector7~0_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector7~1_combout\,
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(0),
	datad => \dut|MUXComp|Selector7~0_combout\,
	combout => \dut|MUXComp|Selector7~2_combout\);

-- Location: LCCOMB_X50_Y51_N0
\dut|MUXComp|Selector7~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector7~6_combout\ = (\dut|MUXComp|Selector7~5_combout\) # ((\dut|MUXComp|Selector7~4_combout\) # ((\dut|MUXComp|Selector7~3_combout\) # (\dut|MUXComp|Selector7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector7~5_combout\,
	datab => \dut|MUXComp|Selector7~4_combout\,
	datac => \dut|MUXComp|Selector7~3_combout\,
	datad => \dut|MUXComp|Selector7~2_combout\,
	combout => \dut|MUXComp|Selector7~6_combout\);

-- Location: LCCOMB_X50_Y51_N26
\dut|AddSubComp|TMP[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(1) = \dut|FSMComp|input\(10) $ (\dut|MUXComp|Selector6~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|input\(10),
	datac => \dut|MUXComp|Selector6~6_combout\,
	combout => \dut|AddSubComp|TMP\(1));

-- Location: FF_X50_Y51_N23
\dut|RA|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector6~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(1));

-- Location: LCCOMB_X50_Y51_N8
\dut|RG|internal_d[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[1]~12_combout\ = ((\dut|AddSubComp|TMP\(1) $ (\dut|RA|internal_d\(1) $ (!\dut|RG|internal_d[0]~11\)))) # (GND)
-- \dut|RG|internal_d[1]~13\ = CARRY((\dut|AddSubComp|TMP\(1) & ((\dut|RA|internal_d\(1)) # (!\dut|RG|internal_d[0]~11\))) # (!\dut|AddSubComp|TMP\(1) & (\dut|RA|internal_d\(1) & !\dut|RG|internal_d[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|AddSubComp|TMP\(1),
	datab => \dut|RA|internal_d\(1),
	datad => VCC,
	cin => \dut|RG|internal_d[0]~11\,
	combout => \dut|RG|internal_d[1]~12_combout\,
	cout => \dut|RG|internal_d[1]~13\);

-- Location: FF_X50_Y51_N9
\dut|RG|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[1]~12_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(1));

-- Location: FF_X49_Y51_N17
\dut|R7|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector6~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(1));

-- Location: LCCOMB_X49_Y51_N16
\dut|MUXComp|Selector6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~4_combout\ = (\dut|RG|internal_d\(1) & ((\dut|MUXComp|Equal8~1_combout\) # ((\dut|MUXComp|Equal7~0_combout\ & \dut|R7|internal_d\(1))))) # (!\dut|RG|internal_d\(1) & (\dut|MUXComp|Equal7~0_combout\ & (\dut|R7|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RG|internal_d\(1),
	datab => \dut|MUXComp|Equal7~0_combout\,
	datac => \dut|R7|internal_d\(1),
	datad => \dut|MUXComp|Equal8~1_combout\,
	combout => \dut|MUXComp|Selector6~4_combout\);

-- Location: LCCOMB_X45_Y51_N2
\dut|R4|internal_d[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[1]~feeder_combout\ = \dut|MUXComp|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector6~6_combout\,
	combout => \dut|R4|internal_d[1]~feeder_combout\);

-- Location: FF_X45_Y51_N3
\dut|R4|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[1]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(1));

-- Location: FF_X49_Y51_N31
\dut|R3|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector6~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(1));

-- Location: LCCOMB_X49_Y51_N30
\dut|MUXComp|Selector6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~5_combout\ = (\dut|R4|internal_d\(1) & ((\dut|MUXComp|Equal4~0_combout\) # ((\dut|MUXComp|Equal3~0_combout\ & \dut|R3|internal_d\(1))))) # (!\dut|R4|internal_d\(1) & (\dut|MUXComp|Equal3~0_combout\ & (\dut|R3|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R4|internal_d\(1),
	datab => \dut|MUXComp|Equal3~0_combout\,
	datac => \dut|R3|internal_d\(1),
	datad => \dut|MUXComp|Equal4~0_combout\,
	combout => \dut|MUXComp|Selector6~5_combout\);

-- Location: LCCOMB_X47_Y51_N24
\dut|MUXComp|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~3_combout\ = (\SW[1]~input_o\ & ((\dut|MUXComp|Equal9~1_combout\) # ((\dut|MUXComp|WideNor0~0_combout\ & \dut|MUXComp|WideNor0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal9~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \dut|MUXComp|WideNor0~0_combout\,
	datad => \dut|MUXComp|WideNor0~2_combout\,
	combout => \dut|MUXComp|Selector6~3_combout\);

-- Location: LCCOMB_X50_Y52_N12
\dut|R0|internal_d[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R0|internal_d[1]~feeder_combout\ = \dut|MUXComp|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector6~6_combout\,
	combout => \dut|R0|internal_d[1]~feeder_combout\);

-- Location: FF_X50_Y52_N13
\dut|R0|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R0|internal_d[1]~feeder_combout\,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(1));

-- Location: FF_X49_Y52_N13
\dut|R2|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector6~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(1));

-- Location: LCCOMB_X49_Y52_N12
\dut|MUXComp|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~1_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(1)) # ((\dut|R2|internal_d\(1) & \dut|MUXComp|Equal2~1_combout\)))) # (!\dut|MUXComp|Equal0~1_combout\ & (((\dut|R2|internal_d\(1) & 
-- \dut|MUXComp|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|R0|internal_d\(1),
	datac => \dut|R2|internal_d\(1),
	datad => \dut|MUXComp|Equal2~1_combout\,
	combout => \dut|MUXComp|Selector6~1_combout\);

-- Location: FF_X49_Y52_N11
\dut|R6|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector6~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(1));

-- Location: LCCOMB_X51_Y52_N16
\dut|R1|internal_d[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R1|internal_d[1]~feeder_combout\ = \dut|MUXComp|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector6~6_combout\,
	combout => \dut|R1|internal_d[1]~feeder_combout\);

-- Location: FF_X51_Y52_N17
\dut|R1|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R1|internal_d[1]~feeder_combout\,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(1));

-- Location: FF_X51_Y52_N19
\dut|R5|internal_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector6~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(1));

-- Location: LCCOMB_X51_Y52_N18
\dut|MUXComp|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~0_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(1)) # ((\dut|R5|internal_d\(1) & \dut|MUXComp|Equal5~1_combout\)))) # (!\dut|MUXComp|Equal1~1_combout\ & (((\dut|R5|internal_d\(1) & 
-- \dut|MUXComp|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|R1|internal_d\(1),
	datac => \dut|R5|internal_d\(1),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector6~0_combout\);

-- Location: LCCOMB_X49_Y52_N10
\dut|MUXComp|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~2_combout\ = (\dut|MUXComp|Selector6~1_combout\) # ((\dut|MUXComp|Selector6~0_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector6~1_combout\,
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(1),
	datad => \dut|MUXComp|Selector6~0_combout\,
	combout => \dut|MUXComp|Selector6~2_combout\);

-- Location: LCCOMB_X50_Y51_N22
\dut|MUXComp|Selector6~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector6~6_combout\ = (\dut|MUXComp|Selector6~4_combout\) # ((\dut|MUXComp|Selector6~5_combout\) # ((\dut|MUXComp|Selector6~3_combout\) # (\dut|MUXComp|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector6~4_combout\,
	datab => \dut|MUXComp|Selector6~5_combout\,
	datac => \dut|MUXComp|Selector6~3_combout\,
	datad => \dut|MUXComp|Selector6~2_combout\,
	combout => \dut|MUXComp|Selector6~6_combout\);

-- Location: LCCOMB_X47_Y51_N22
\dut|MUXComp|m~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|m~0_combout\ = (\dut|MUXComp|Equal9~1_combout\) # ((\dut|MUXComp|WideNor0~0_combout\ & \dut|MUXComp|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal9~1_combout\,
	datac => \dut|MUXComp|WideNor0~0_combout\,
	datad => \dut|MUXComp|WideNor0~2_combout\,
	combout => \dut|MUXComp|m~0_combout\);

-- Location: FF_X47_Y51_N27
\dut|R0|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(2));

-- Location: FF_X52_Y51_N13
\dut|R2|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(2));

-- Location: LCCOMB_X52_Y51_N12
\dut|MUXComp|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~1_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(2)) # ((\dut|R2|internal_d\(2) & \dut|MUXComp|Equal2~1_combout\)))) # (!\dut|MUXComp|Equal0~1_combout\ & (((\dut|R2|internal_d\(2) & 
-- \dut|MUXComp|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|R0|internal_d\(2),
	datac => \dut|R2|internal_d\(2),
	datad => \dut|MUXComp|Equal2~1_combout\,
	combout => \dut|MUXComp|Selector5~1_combout\);

-- Location: FF_X52_Y51_N3
\dut|R6|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(2));

-- Location: LCCOMB_X51_Y52_N24
\dut|R1|internal_d[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R1|internal_d[2]~feeder_combout\ = \dut|MUXComp|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector5~6_combout\,
	combout => \dut|R1|internal_d[2]~feeder_combout\);

-- Location: FF_X51_Y52_N25
\dut|R1|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R1|internal_d[2]~feeder_combout\,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(2));

-- Location: FF_X51_Y52_N3
\dut|R5|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(2));

-- Location: LCCOMB_X51_Y52_N2
\dut|MUXComp|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~0_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(2)) # ((\dut|R5|internal_d\(2) & \dut|MUXComp|Equal5~1_combout\)))) # (!\dut|MUXComp|Equal1~1_combout\ & (((\dut|R5|internal_d\(2) & 
-- \dut|MUXComp|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|R1|internal_d\(2),
	datac => \dut|R5|internal_d\(2),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector5~0_combout\);

-- Location: LCCOMB_X52_Y51_N2
\dut|MUXComp|Selector5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~2_combout\ = (\dut|MUXComp|Selector5~1_combout\) # ((\dut|MUXComp|Selector5~0_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector5~1_combout\,
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(2),
	datad => \dut|MUXComp|Selector5~0_combout\,
	combout => \dut|MUXComp|Selector5~2_combout\);

-- Location: FF_X50_Y51_N3
\dut|RA|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector5~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(2));

-- Location: LCCOMB_X50_Y51_N28
\dut|AddSubComp|TMP[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(2) = \dut|FSMComp|input\(10) $ (\dut|MUXComp|Selector5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|FSMComp|input\(10),
	datad => \dut|MUXComp|Selector5~6_combout\,
	combout => \dut|AddSubComp|TMP\(2));

-- Location: LCCOMB_X50_Y51_N10
\dut|RG|internal_d[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[2]~14_combout\ = (\dut|RA|internal_d\(2) & ((\dut|AddSubComp|TMP\(2) & (\dut|RG|internal_d[1]~13\ & VCC)) # (!\dut|AddSubComp|TMP\(2) & (!\dut|RG|internal_d[1]~13\)))) # (!\dut|RA|internal_d\(2) & ((\dut|AddSubComp|TMP\(2) & 
-- (!\dut|RG|internal_d[1]~13\)) # (!\dut|AddSubComp|TMP\(2) & ((\dut|RG|internal_d[1]~13\) # (GND)))))
-- \dut|RG|internal_d[2]~15\ = CARRY((\dut|RA|internal_d\(2) & (!\dut|AddSubComp|TMP\(2) & !\dut|RG|internal_d[1]~13\)) # (!\dut|RA|internal_d\(2) & ((!\dut|RG|internal_d[1]~13\) # (!\dut|AddSubComp|TMP\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RA|internal_d\(2),
	datab => \dut|AddSubComp|TMP\(2),
	datad => VCC,
	cin => \dut|RG|internal_d[1]~13\,
	combout => \dut|RG|internal_d[2]~14_combout\,
	cout => \dut|RG|internal_d[2]~15\);

-- Location: FF_X50_Y51_N11
\dut|RG|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[2]~14_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(2));

-- Location: LCCOMB_X45_Y51_N20
\dut|R4|internal_d[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[2]~feeder_combout\ = \dut|MUXComp|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector5~6_combout\,
	combout => \dut|R4|internal_d[2]~feeder_combout\);

-- Location: FF_X45_Y51_N21
\dut|R4|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[2]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(2));

-- Location: FF_X49_Y51_N27
\dut|R3|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(2));

-- Location: LCCOMB_X49_Y51_N26
\dut|MUXComp|Selector5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~4_combout\ = (\dut|MUXComp|Equal4~0_combout\ & ((\dut|R4|internal_d\(2)) # ((\dut|R3|internal_d\(2) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|MUXComp|Equal4~0_combout\ & (((\dut|R3|internal_d\(2) & 
-- \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal4~0_combout\,
	datab => \dut|R4|internal_d\(2),
	datac => \dut|R3|internal_d\(2),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector5~4_combout\);

-- Location: FF_X49_Y51_N25
\dut|R7|internal_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector5~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(2));

-- Location: LCCOMB_X49_Y51_N24
\dut|MUXComp|Selector5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~3_combout\ = (\dut|R7|internal_d\(2) & \dut|MUXComp|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|R7|internal_d\(2),
	datad => \dut|MUXComp|Equal7~0_combout\,
	combout => \dut|MUXComp|Selector5~3_combout\);

-- Location: LCCOMB_X49_Y51_N28
\dut|MUXComp|Selector5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~5_combout\ = (\dut|MUXComp|Selector5~4_combout\) # ((\dut|MUXComp|Selector5~3_combout\) # ((\dut|MUXComp|Equal8~1_combout\ & \dut|RG|internal_d\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal8~1_combout\,
	datab => \dut|RG|internal_d\(2),
	datac => \dut|MUXComp|Selector5~4_combout\,
	datad => \dut|MUXComp|Selector5~3_combout\,
	combout => \dut|MUXComp|Selector5~5_combout\);

-- Location: LCCOMB_X50_Y51_N2
\dut|MUXComp|Selector5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector5~6_combout\ = (\dut|MUXComp|Selector5~2_combout\) # ((\dut|MUXComp|Selector5~5_combout\) # ((\dut|MUXComp|m~0_combout\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|m~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \dut|MUXComp|Selector5~2_combout\,
	datad => \dut|MUXComp|Selector5~5_combout\,
	combout => \dut|MUXComp|Selector5~6_combout\);

-- Location: LCCOMB_X52_Y51_N6
\dut|R2|internal_d[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R2|internal_d[3]~feeder_combout\ = \dut|MUXComp|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector4~6_combout\,
	combout => \dut|R2|internal_d[3]~feeder_combout\);

-- Location: FF_X52_Y51_N7
\dut|R2|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R2|internal_d[3]~feeder_combout\,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(3));

-- Location: FF_X50_Y50_N9
\dut|R0|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector4~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(3));

-- Location: LCCOMB_X50_Y50_N8
\dut|MUXComp|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~2_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(3)) # ((\dut|R2|internal_d\(3) & \dut|MUXComp|Equal2~1_combout\)))) # (!\dut|MUXComp|Equal0~1_combout\ & (\dut|R2|internal_d\(3) & 
-- ((\dut|MUXComp|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|R2|internal_d\(3),
	datac => \dut|R0|internal_d\(3),
	datad => \dut|MUXComp|Equal2~1_combout\,
	combout => \dut|MUXComp|Selector4~2_combout\);

-- Location: LCCOMB_X52_Y51_N16
\dut|R6|internal_d[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R6|internal_d[3]~feeder_combout\ = \dut|MUXComp|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector4~6_combout\,
	combout => \dut|R6|internal_d[3]~feeder_combout\);

-- Location: FF_X52_Y51_N17
\dut|R6|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R6|internal_d[3]~feeder_combout\,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(3));

-- Location: LCCOMB_X51_Y52_N14
\dut|R5|internal_d[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R5|internal_d[3]~feeder_combout\ = \dut|MUXComp|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector4~6_combout\,
	combout => \dut|R5|internal_d[3]~feeder_combout\);

-- Location: FF_X51_Y52_N15
\dut|R5|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R5|internal_d[3]~feeder_combout\,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(3));

-- Location: FF_X51_Y52_N21
\dut|R1|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector4~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(3));

-- Location: LCCOMB_X51_Y52_N20
\dut|MUXComp|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~0_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(3)) # ((\dut|R5|internal_d\(3) & \dut|MUXComp|Equal5~1_combout\)))) # (!\dut|MUXComp|Equal1~1_combout\ & (\dut|R5|internal_d\(3) & 
-- ((\dut|MUXComp|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|R5|internal_d\(3),
	datac => \dut|R1|internal_d\(3),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector4~0_combout\);

-- Location: LCCOMB_X51_Y51_N4
\dut|MUXComp|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~1_combout\ = (\dut|MUXComp|Selector4~0_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal6~1_combout\,
	datab => \dut|R6|internal_d\(3),
	datad => \dut|MUXComp|Selector4~0_combout\,
	combout => \dut|MUXComp|Selector4~1_combout\);

-- Location: LCCOMB_X50_Y52_N6
\dut|R4|internal_d[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[3]~feeder_combout\ = \dut|MUXComp|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector4~6_combout\,
	combout => \dut|R4|internal_d[3]~feeder_combout\);

-- Location: FF_X50_Y52_N7
\dut|R4|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[3]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(3));

-- Location: FF_X49_Y51_N19
\dut|R3|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector4~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(3));

-- Location: LCCOMB_X49_Y51_N18
\dut|MUXComp|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~4_combout\ = (\dut|MUXComp|Equal4~0_combout\ & ((\dut|R4|internal_d\(3)) # ((\dut|R3|internal_d\(3) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|MUXComp|Equal4~0_combout\ & (((\dut|R3|internal_d\(3) & 
-- \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal4~0_combout\,
	datab => \dut|R4|internal_d\(3),
	datac => \dut|R3|internal_d\(3),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector4~4_combout\);

-- Location: FF_X51_Y51_N31
\dut|RA|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector4~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(3));

-- Location: LCCOMB_X51_Y51_N28
\dut|AddSubComp|TMP[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(3) = \dut|FSMComp|input\(10) $ (((\dut|MUXComp|Selector4~2_combout\) # ((\dut|MUXComp|Selector4~1_combout\) # (\dut|MUXComp|Selector4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|input\(10),
	datab => \dut|MUXComp|Selector4~2_combout\,
	datac => \dut|MUXComp|Selector4~1_combout\,
	datad => \dut|MUXComp|Selector4~5_combout\,
	combout => \dut|AddSubComp|TMP\(3));

-- Location: LCCOMB_X50_Y51_N12
\dut|RG|internal_d[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[3]~16_combout\ = ((\dut|RA|internal_d\(3) $ (\dut|AddSubComp|TMP\(3) $ (!\dut|RG|internal_d[2]~15\)))) # (GND)
-- \dut|RG|internal_d[3]~17\ = CARRY((\dut|RA|internal_d\(3) & ((\dut|AddSubComp|TMP\(3)) # (!\dut|RG|internal_d[2]~15\))) # (!\dut|RA|internal_d\(3) & (\dut|AddSubComp|TMP\(3) & !\dut|RG|internal_d[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RA|internal_d\(3),
	datab => \dut|AddSubComp|TMP\(3),
	datad => VCC,
	cin => \dut|RG|internal_d[2]~15\,
	combout => \dut|RG|internal_d[3]~16_combout\,
	cout => \dut|RG|internal_d[3]~17\);

-- Location: FF_X50_Y51_N13
\dut|RG|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[3]~16_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(3));

-- Location: FF_X51_Y51_N15
\dut|R7|internal_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector4~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(3));

-- Location: LCCOMB_X51_Y51_N14
\dut|MUXComp|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~3_combout\ = (\dut|RG|internal_d\(3) & ((\dut|MUXComp|Equal8~1_combout\) # ((\dut|MUXComp|Equal7~0_combout\ & \dut|R7|internal_d\(3))))) # (!\dut|RG|internal_d\(3) & (\dut|MUXComp|Equal7~0_combout\ & (\dut|R7|internal_d\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RG|internal_d\(3),
	datab => \dut|MUXComp|Equal7~0_combout\,
	datac => \dut|R7|internal_d\(3),
	datad => \dut|MUXComp|Equal8~1_combout\,
	combout => \dut|MUXComp|Selector4~3_combout\);

-- Location: LCCOMB_X51_Y51_N24
\dut|MUXComp|Selector4~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~5_combout\ = (\dut|MUXComp|Selector4~4_combout\) # ((\dut|MUXComp|Selector4~3_combout\) # ((\SW[3]~input_o\ & \dut|MUXComp|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector4~4_combout\,
	datab => \SW[3]~input_o\,
	datac => \dut|MUXComp|Selector4~3_combout\,
	datad => \dut|MUXComp|m~0_combout\,
	combout => \dut|MUXComp|Selector4~5_combout\);

-- Location: LCCOMB_X51_Y51_N30
\dut|MUXComp|Selector4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector4~6_combout\ = (\dut|MUXComp|Selector4~2_combout\) # ((\dut|MUXComp|Selector4~1_combout\) # (\dut|MUXComp|Selector4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|MUXComp|Selector4~2_combout\,
	datac => \dut|MUXComp|Selector4~1_combout\,
	datad => \dut|MUXComp|Selector4~5_combout\,
	combout => \dut|MUXComp|Selector4~6_combout\);

-- Location: FF_X46_Y51_N11
\dut|R0|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector3~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(4));

-- Location: LCCOMB_X52_Y51_N22
\dut|R2|internal_d[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R2|internal_d[4]~feeder_combout\ = \dut|MUXComp|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector3~6_combout\,
	combout => \dut|R2|internal_d[4]~feeder_combout\);

-- Location: FF_X52_Y51_N23
\dut|R2|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R2|internal_d[4]~feeder_combout\,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(4));

-- Location: LCCOMB_X51_Y51_N12
\dut|MUXComp|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~2_combout\ = (\dut|R0|internal_d\(4) & ((\dut|MUXComp|Equal0~1_combout\) # ((\dut|MUXComp|Equal2~1_combout\ & \dut|R2|internal_d\(4))))) # (!\dut|R0|internal_d\(4) & (\dut|MUXComp|Equal2~1_combout\ & ((\dut|R2|internal_d\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R0|internal_d\(4),
	datab => \dut|MUXComp|Equal2~1_combout\,
	datac => \dut|MUXComp|Equal0~1_combout\,
	datad => \dut|R2|internal_d\(4),
	combout => \dut|MUXComp|Selector3~2_combout\);

-- Location: FF_X52_Y51_N1
\dut|R6|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector3~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(4));

-- Location: LCCOMB_X51_Y52_N28
\dut|R1|internal_d[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R1|internal_d[4]~feeder_combout\ = \dut|MUXComp|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector3~6_combout\,
	combout => \dut|R1|internal_d[4]~feeder_combout\);

-- Location: FF_X51_Y52_N29
\dut|R1|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R1|internal_d[4]~feeder_combout\,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(4));

-- Location: FF_X51_Y52_N7
\dut|R5|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector3~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(4));

-- Location: LCCOMB_X51_Y52_N6
\dut|MUXComp|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~0_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(4)) # ((\dut|R5|internal_d\(4) & \dut|MUXComp|Equal5~1_combout\)))) # (!\dut|MUXComp|Equal1~1_combout\ & (((\dut|R5|internal_d\(4) & 
-- \dut|MUXComp|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|R1|internal_d\(4),
	datac => \dut|R5|internal_d\(4),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector3~0_combout\);

-- Location: LCCOMB_X52_Y51_N0
\dut|MUXComp|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~1_combout\ = (\dut|MUXComp|Selector3~0_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(4),
	datad => \dut|MUXComp|Selector3~0_combout\,
	combout => \dut|MUXComp|Selector3~1_combout\);

-- Location: FF_X51_Y51_N27
\dut|RA|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector3~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(4));

-- Location: LCCOMB_X51_Y51_N18
\dut|AddSubComp|TMP[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(4) = \dut|FSMComp|input\(10) $ (((\dut|MUXComp|Selector3~2_combout\) # ((\dut|MUXComp|Selector3~1_combout\) # (\dut|MUXComp|Selector3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector3~2_combout\,
	datab => \dut|FSMComp|input\(10),
	datac => \dut|MUXComp|Selector3~1_combout\,
	datad => \dut|MUXComp|Selector3~5_combout\,
	combout => \dut|AddSubComp|TMP\(4));

-- Location: LCCOMB_X50_Y51_N14
\dut|RG|internal_d[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[4]~18_combout\ = (\dut|RA|internal_d\(4) & ((\dut|AddSubComp|TMP\(4) & (\dut|RG|internal_d[3]~17\ & VCC)) # (!\dut|AddSubComp|TMP\(4) & (!\dut|RG|internal_d[3]~17\)))) # (!\dut|RA|internal_d\(4) & ((\dut|AddSubComp|TMP\(4) & 
-- (!\dut|RG|internal_d[3]~17\)) # (!\dut|AddSubComp|TMP\(4) & ((\dut|RG|internal_d[3]~17\) # (GND)))))
-- \dut|RG|internal_d[4]~19\ = CARRY((\dut|RA|internal_d\(4) & (!\dut|AddSubComp|TMP\(4) & !\dut|RG|internal_d[3]~17\)) # (!\dut|RA|internal_d\(4) & ((!\dut|RG|internal_d[3]~17\) # (!\dut|AddSubComp|TMP\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RA|internal_d\(4),
	datab => \dut|AddSubComp|TMP\(4),
	datad => VCC,
	cin => \dut|RG|internal_d[3]~17\,
	combout => \dut|RG|internal_d[4]~18_combout\,
	cout => \dut|RG|internal_d[4]~19\);

-- Location: FF_X50_Y51_N15
\dut|RG|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[4]~18_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(4));

-- Location: FF_X51_Y51_N11
\dut|R7|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector3~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(4));

-- Location: LCCOMB_X51_Y51_N10
\dut|MUXComp|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~3_combout\ = (\dut|MUXComp|Equal7~0_combout\ & ((\dut|R7|internal_d\(4)) # ((\dut|RG|internal_d\(4) & \dut|MUXComp|Equal8~1_combout\)))) # (!\dut|MUXComp|Equal7~0_combout\ & (\dut|RG|internal_d\(4) & 
-- ((\dut|MUXComp|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal7~0_combout\,
	datab => \dut|RG|internal_d\(4),
	datac => \dut|R7|internal_d\(4),
	datad => \dut|MUXComp|Equal8~1_combout\,
	combout => \dut|MUXComp|Selector3~3_combout\);

-- Location: LCCOMB_X50_Y52_N0
\dut|R4|internal_d[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[4]~feeder_combout\ = \dut|MUXComp|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector3~6_combout\,
	combout => \dut|R4|internal_d[4]~feeder_combout\);

-- Location: FF_X50_Y52_N1
\dut|R4|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[4]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(4));

-- Location: FF_X49_Y51_N9
\dut|R3|internal_d[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector3~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(4));

-- Location: LCCOMB_X49_Y51_N8
\dut|MUXComp|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~4_combout\ = (\dut|R4|internal_d\(4) & ((\dut|MUXComp|Equal4~0_combout\) # ((\dut|R3|internal_d\(4) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|R4|internal_d\(4) & (((\dut|R3|internal_d\(4) & \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R4|internal_d\(4),
	datab => \dut|MUXComp|Equal4~0_combout\,
	datac => \dut|R3|internal_d\(4),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector3~4_combout\);

-- Location: LCCOMB_X51_Y51_N0
\dut|MUXComp|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~5_combout\ = (\dut|MUXComp|Selector3~3_combout\) # ((\dut|MUXComp|Selector3~4_combout\) # ((\SW[4]~input_o\ & \dut|MUXComp|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector3~3_combout\,
	datab => \SW[4]~input_o\,
	datac => \dut|MUXComp|Selector3~4_combout\,
	datad => \dut|MUXComp|m~0_combout\,
	combout => \dut|MUXComp|Selector3~5_combout\);

-- Location: LCCOMB_X51_Y51_N26
\dut|MUXComp|Selector3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector3~6_combout\ = (\dut|MUXComp|Selector3~2_combout\) # ((\dut|MUXComp|Selector3~1_combout\) # (\dut|MUXComp|Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector3~2_combout\,
	datac => \dut|MUXComp|Selector3~1_combout\,
	datad => \dut|MUXComp|Selector3~5_combout\,
	combout => \dut|MUXComp|Selector3~6_combout\);

-- Location: FF_X47_Y53_N27
\dut|R5|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(5));

-- Location: LCCOMB_X47_Y53_N28
\dut|R1|internal_d[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R1|internal_d[5]~feeder_combout\ = \dut|MUXComp|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector2~6_combout\,
	combout => \dut|R1|internal_d[5]~feeder_combout\);

-- Location: FF_X47_Y53_N29
\dut|R1|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R1|internal_d[5]~feeder_combout\,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(5));

-- Location: LCCOMB_X47_Y53_N26
\dut|MUXComp|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~1_combout\ = (\dut|MUXComp|Equal1~1_combout\ & ((\dut|R1|internal_d\(5)) # ((\dut|MUXComp|Equal5~1_combout\ & \dut|R5|internal_d\(5))))) # (!\dut|MUXComp|Equal1~1_combout\ & (\dut|MUXComp|Equal5~1_combout\ & 
-- (\dut|R5|internal_d\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal1~1_combout\,
	datab => \dut|MUXComp|Equal5~1_combout\,
	datac => \dut|R5|internal_d\(5),
	datad => \dut|R1|internal_d\(5),
	combout => \dut|MUXComp|Selector2~1_combout\);

-- Location: FF_X47_Y50_N1
\dut|R0|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(5));

-- Location: FF_X46_Y51_N5
\dut|R2|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(5));

-- Location: LCCOMB_X47_Y50_N0
\dut|MUXComp|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~2_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(5)) # ((\dut|MUXComp|Equal2~1_combout\ & \dut|R2|internal_d\(5))))) # (!\dut|MUXComp|Equal0~1_combout\ & (\dut|MUXComp|Equal2~1_combout\ & 
-- ((\dut|R2|internal_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|MUXComp|Equal2~1_combout\,
	datac => \dut|R0|internal_d\(5),
	datad => \dut|R2|internal_d\(5),
	combout => \dut|MUXComp|Selector2~2_combout\);

-- Location: FF_X44_Y51_N25
\dut|R6|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(5));

-- Location: LCCOMB_X44_Y51_N24
\dut|MUXComp|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~0_combout\ = (\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(5),
	combout => \dut|MUXComp|Selector2~0_combout\);

-- Location: LCCOMB_X45_Y51_N24
\dut|R4|internal_d[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[5]~feeder_combout\ = \dut|MUXComp|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector2~6_combout\,
	combout => \dut|R4|internal_d[5]~feeder_combout\);

-- Location: FF_X45_Y51_N25
\dut|R4|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[5]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(5));

-- Location: FF_X49_Y51_N23
\dut|R3|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(5));

-- Location: LCCOMB_X49_Y51_N22
\dut|MUXComp|Selector2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~4_combout\ = (\dut|MUXComp|Equal4~0_combout\ & ((\dut|R4|internal_d\(5)) # ((\dut|R3|internal_d\(5) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|MUXComp|Equal4~0_combout\ & (((\dut|R3|internal_d\(5) & 
-- \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal4~0_combout\,
	datab => \dut|R4|internal_d\(5),
	datac => \dut|R3|internal_d\(5),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector2~4_combout\);

-- Location: FF_X45_Y51_N23
\dut|R7|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector2~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(5));

-- Location: LCCOMB_X50_Y51_N30
\dut|AddSubComp|TMP[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(5) = \dut|FSMComp|input\(10) $ (\dut|MUXComp|Selector2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|FSMComp|input\(10),
	datad => \dut|MUXComp|Selector2~6_combout\,
	combout => \dut|AddSubComp|TMP\(5));

-- Location: FF_X47_Y51_N3
\dut|RA|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector2~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(5));

-- Location: LCCOMB_X50_Y51_N16
\dut|RG|internal_d[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[5]~20_combout\ = ((\dut|AddSubComp|TMP\(5) $ (\dut|RA|internal_d\(5) $ (!\dut|RG|internal_d[4]~19\)))) # (GND)
-- \dut|RG|internal_d[5]~21\ = CARRY((\dut|AddSubComp|TMP\(5) & ((\dut|RA|internal_d\(5)) # (!\dut|RG|internal_d[4]~19\))) # (!\dut|AddSubComp|TMP\(5) & (\dut|RA|internal_d\(5) & !\dut|RG|internal_d[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|AddSubComp|TMP\(5),
	datab => \dut|RA|internal_d\(5),
	datad => VCC,
	cin => \dut|RG|internal_d[4]~19\,
	combout => \dut|RG|internal_d[5]~20_combout\,
	cout => \dut|RG|internal_d[5]~21\);

-- Location: FF_X50_Y51_N17
\dut|RG|internal_d[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[5]~20_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(5));

-- Location: LCCOMB_X45_Y51_N22
\dut|MUXComp|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~3_combout\ = (\dut|MUXComp|Equal7~0_combout\ & ((\dut|R7|internal_d\(5)) # ((\dut|MUXComp|Equal8~1_combout\ & \dut|RG|internal_d\(5))))) # (!\dut|MUXComp|Equal7~0_combout\ & (\dut|MUXComp|Equal8~1_combout\ & 
-- ((\dut|RG|internal_d\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal7~0_combout\,
	datab => \dut|MUXComp|Equal8~1_combout\,
	datac => \dut|R7|internal_d\(5),
	datad => \dut|RG|internal_d\(5),
	combout => \dut|MUXComp|Selector2~3_combout\);

-- Location: LCCOMB_X47_Y51_N28
\dut|MUXComp|Selector2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~5_combout\ = (\dut|MUXComp|Selector2~4_combout\) # ((\dut|MUXComp|Selector2~3_combout\) # ((\SW[5]~input_o\ & \dut|MUXComp|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \dut|MUXComp|Selector2~4_combout\,
	datac => \dut|MUXComp|m~0_combout\,
	datad => \dut|MUXComp|Selector2~3_combout\,
	combout => \dut|MUXComp|Selector2~5_combout\);

-- Location: LCCOMB_X47_Y51_N2
\dut|MUXComp|Selector2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector2~6_combout\ = (\dut|MUXComp|Selector2~1_combout\) # ((\dut|MUXComp|Selector2~2_combout\) # ((\dut|MUXComp|Selector2~0_combout\) # (\dut|MUXComp|Selector2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector2~1_combout\,
	datab => \dut|MUXComp|Selector2~2_combout\,
	datac => \dut|MUXComp|Selector2~0_combout\,
	datad => \dut|MUXComp|Selector2~5_combout\,
	combout => \dut|MUXComp|Selector2~6_combout\);

-- Location: FF_X52_Y51_N5
\dut|R6|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector1~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(6));

-- Location: LCCOMB_X52_Y51_N4
\dut|MUXComp|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~0_combout\ = (\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|MUXComp|Equal6~1_combout\,
	datac => \dut|R6|internal_d\(6),
	combout => \dut|MUXComp|Selector1~0_combout\);

-- Location: LCCOMB_X50_Y53_N18
\dut|R5|internal_d[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R5|internal_d[6]~feeder_combout\ = \dut|MUXComp|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector1~6_combout\,
	combout => \dut|R5|internal_d[6]~feeder_combout\);

-- Location: FF_X50_Y53_N19
\dut|R5|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R5|internal_d[6]~feeder_combout\,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(6));

-- Location: FF_X50_Y53_N29
\dut|R1|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector1~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(6));

-- Location: LCCOMB_X50_Y53_N28
\dut|MUXComp|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~1_combout\ = (\dut|R5|internal_d\(6) & ((\dut|MUXComp|Equal5~1_combout\) # ((\dut|MUXComp|Equal1~1_combout\ & \dut|R1|internal_d\(6))))) # (!\dut|R5|internal_d\(6) & (\dut|MUXComp|Equal1~1_combout\ & (\dut|R1|internal_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R5|internal_d\(6),
	datab => \dut|MUXComp|Equal1~1_combout\,
	datac => \dut|R1|internal_d\(6),
	datad => \dut|MUXComp|Equal5~1_combout\,
	combout => \dut|MUXComp|Selector1~1_combout\);

-- Location: LCCOMB_X50_Y52_N26
\dut|R0|internal_d[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R0|internal_d[6]~feeder_combout\ = \dut|MUXComp|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector1~6_combout\,
	combout => \dut|R0|internal_d[6]~feeder_combout\);

-- Location: FF_X50_Y52_N27
\dut|R0|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R0|internal_d[6]~feeder_combout\,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(6));

-- Location: FF_X52_Y51_N15
\dut|R2|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector1~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(6));

-- Location: LCCOMB_X52_Y51_N14
\dut|MUXComp|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~2_combout\ = (\dut|R0|internal_d\(6) & ((\dut|MUXComp|Equal0~1_combout\) # ((\dut|MUXComp|Equal2~1_combout\ & \dut|R2|internal_d\(6))))) # (!\dut|R0|internal_d\(6) & (\dut|MUXComp|Equal2~1_combout\ & (\dut|R2|internal_d\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R0|internal_d\(6),
	datab => \dut|MUXComp|Equal2~1_combout\,
	datac => \dut|R2|internal_d\(6),
	datad => \dut|MUXComp|Equal0~1_combout\,
	combout => \dut|MUXComp|Selector1~2_combout\);

-- Location: LCCOMB_X50_Y52_N28
\dut|R4|internal_d[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[6]~feeder_combout\ = \dut|MUXComp|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector1~6_combout\,
	combout => \dut|R4|internal_d[6]~feeder_combout\);

-- Location: FF_X50_Y52_N29
\dut|R4|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[6]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(6));

-- Location: FF_X49_Y51_N21
\dut|R3|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector1~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(6));

-- Location: LCCOMB_X49_Y51_N20
\dut|MUXComp|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~4_combout\ = (\dut|R4|internal_d\(6) & ((\dut|MUXComp|Equal4~0_combout\) # ((\dut|R3|internal_d\(6) & \dut|MUXComp|Equal3~0_combout\)))) # (!\dut|R4|internal_d\(6) & (((\dut|R3|internal_d\(6) & \dut|MUXComp|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|R4|internal_d\(6),
	datab => \dut|MUXComp|Equal4~0_combout\,
	datac => \dut|R3|internal_d\(6),
	datad => \dut|MUXComp|Equal3~0_combout\,
	combout => \dut|MUXComp|Selector1~4_combout\);

-- Location: LCCOMB_X51_Y51_N20
\dut|AddSubComp|TMP[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(6) = \dut|FSMComp|input\(10) $ (\dut|MUXComp|Selector1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|FSMComp|input\(10),
	datad => \dut|MUXComp|Selector1~6_combout\,
	combout => \dut|AddSubComp|TMP\(6));

-- Location: FF_X51_Y51_N17
\dut|RA|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector1~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(6));

-- Location: LCCOMB_X50_Y51_N18
\dut|RG|internal_d[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[6]~22_combout\ = (\dut|AddSubComp|TMP\(6) & ((\dut|RA|internal_d\(6) & (\dut|RG|internal_d[5]~21\ & VCC)) # (!\dut|RA|internal_d\(6) & (!\dut|RG|internal_d[5]~21\)))) # (!\dut|AddSubComp|TMP\(6) & ((\dut|RA|internal_d\(6) & 
-- (!\dut|RG|internal_d[5]~21\)) # (!\dut|RA|internal_d\(6) & ((\dut|RG|internal_d[5]~21\) # (GND)))))
-- \dut|RG|internal_d[6]~23\ = CARRY((\dut|AddSubComp|TMP\(6) & (!\dut|RA|internal_d\(6) & !\dut|RG|internal_d[5]~21\)) # (!\dut|AddSubComp|TMP\(6) & ((!\dut|RG|internal_d[5]~21\) # (!\dut|RA|internal_d\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|AddSubComp|TMP\(6),
	datab => \dut|RA|internal_d\(6),
	datad => VCC,
	cin => \dut|RG|internal_d[5]~21\,
	combout => \dut|RG|internal_d[6]~22_combout\,
	cout => \dut|RG|internal_d[6]~23\);

-- Location: FF_X50_Y51_N19
\dut|RG|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[6]~22_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(6));

-- Location: FF_X51_Y51_N9
\dut|R7|internal_d[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector1~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(6));

-- Location: LCCOMB_X51_Y51_N8
\dut|MUXComp|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~3_combout\ = (\dut|MUXComp|Equal8~1_combout\ & ((\dut|RG|internal_d\(6)) # ((\dut|R7|internal_d\(6) & \dut|MUXComp|Equal7~0_combout\)))) # (!\dut|MUXComp|Equal8~1_combout\ & (((\dut|R7|internal_d\(6) & 
-- \dut|MUXComp|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal8~1_combout\,
	datab => \dut|RG|internal_d\(6),
	datac => \dut|R7|internal_d\(6),
	datad => \dut|MUXComp|Equal7~0_combout\,
	combout => \dut|MUXComp|Selector1~3_combout\);

-- Location: LCCOMB_X51_Y51_N2
\dut|MUXComp|Selector1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~5_combout\ = (\dut|MUXComp|Selector1~4_combout\) # ((\dut|MUXComp|Selector1~3_combout\) # ((\SW[6]~input_o\ & \dut|MUXComp|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector1~4_combout\,
	datab => \SW[6]~input_o\,
	datac => \dut|MUXComp|Selector1~3_combout\,
	datad => \dut|MUXComp|m~0_combout\,
	combout => \dut|MUXComp|Selector1~5_combout\);

-- Location: LCCOMB_X51_Y51_N16
\dut|MUXComp|Selector1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector1~6_combout\ = (\dut|MUXComp|Selector1~0_combout\) # ((\dut|MUXComp|Selector1~1_combout\) # ((\dut|MUXComp|Selector1~2_combout\) # (\dut|MUXComp|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector1~0_combout\,
	datab => \dut|MUXComp|Selector1~1_combout\,
	datac => \dut|MUXComp|Selector1~2_combout\,
	datad => \dut|MUXComp|Selector1~5_combout\,
	combout => \dut|MUXComp|Selector1~6_combout\);

-- Location: FF_X49_Y51_N13
\dut|R3|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R3|internal_d\(7));

-- Location: LCCOMB_X50_Y52_N30
\dut|R4|internal_d[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R4|internal_d[7]~feeder_combout\ = \dut|MUXComp|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector0~6_combout\,
	combout => \dut|R4|internal_d[7]~feeder_combout\);

-- Location: FF_X50_Y52_N31
\dut|R4|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R4|internal_d[7]~feeder_combout\,
	ena => \dut|FSMComp|input\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R4|internal_d\(7));

-- Location: LCCOMB_X49_Y51_N12
\dut|MUXComp|Selector0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~4_combout\ = (\dut|MUXComp|Equal4~0_combout\ & ((\dut|R4|internal_d\(7)) # ((\dut|MUXComp|Equal3~0_combout\ & \dut|R3|internal_d\(7))))) # (!\dut|MUXComp|Equal4~0_combout\ & (\dut|MUXComp|Equal3~0_combout\ & 
-- (\dut|R3|internal_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal4~0_combout\,
	datab => \dut|MUXComp|Equal3~0_combout\,
	datac => \dut|R3|internal_d\(7),
	datad => \dut|R4|internal_d\(7),
	combout => \dut|MUXComp|Selector0~4_combout\);

-- Location: FF_X51_Y51_N23
\dut|RA|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|MUXComp|Selector0~6_combout\,
	ena => \dut|FSMComp|input\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RA|internal_d\(7));

-- Location: LCCOMB_X51_Y51_N6
\dut|AddSubComp|TMP[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|AddSubComp|TMP\(7) = \dut|MUXComp|Selector0~6_combout\ $ (\dut|FSMComp|input\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dut|MUXComp|Selector0~6_combout\,
	datad => \dut|FSMComp|input\(10),
	combout => \dut|AddSubComp|TMP\(7));

-- Location: LCCOMB_X50_Y51_N20
\dut|RG|internal_d[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|RG|internal_d[7]~24_combout\ = \dut|RA|internal_d\(7) $ (\dut|RG|internal_d[6]~23\ $ (!\dut|AddSubComp|TMP\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RA|internal_d\(7),
	datad => \dut|AddSubComp|TMP\(7),
	cin => \dut|RG|internal_d[6]~23\,
	combout => \dut|RG|internal_d[7]~24_combout\);

-- Location: FF_X50_Y51_N21
\dut|RG|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|RG|internal_d[7]~24_combout\,
	ena => \dut|FSMComp|input\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|RG|internal_d\(7));

-- Location: FF_X49_Y51_N7
\dut|R7|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R7|internal_d\(7));

-- Location: LCCOMB_X49_Y51_N6
\dut|MUXComp|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~3_combout\ = (\dut|RG|internal_d\(7) & ((\dut|MUXComp|Equal8~1_combout\) # ((\dut|MUXComp|Equal7~0_combout\ & \dut|R7|internal_d\(7))))) # (!\dut|RG|internal_d\(7) & (\dut|MUXComp|Equal7~0_combout\ & (\dut|R7|internal_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|RG|internal_d\(7),
	datab => \dut|MUXComp|Equal7~0_combout\,
	datac => \dut|R7|internal_d\(7),
	datad => \dut|MUXComp|Equal8~1_combout\,
	combout => \dut|MUXComp|Selector0~3_combout\);

-- Location: LCCOMB_X49_Y51_N10
\dut|MUXComp|Selector0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~5_combout\ = (\dut|MUXComp|Selector0~4_combout\) # (\dut|MUXComp|Selector0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Selector0~4_combout\,
	datad => \dut|MUXComp|Selector0~3_combout\,
	combout => \dut|MUXComp|Selector0~5_combout\);

-- Location: LCCOMB_X51_Y52_N0
\dut|R1|internal_d[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|R1|internal_d[7]~feeder_combout\ = \dut|MUXComp|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dut|MUXComp|Selector0~6_combout\,
	combout => \dut|R1|internal_d[7]~feeder_combout\);

-- Location: FF_X51_Y52_N1
\dut|R1|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \dut|R1|internal_d[7]~feeder_combout\,
	ena => \dut|FSMComp|input\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R1|internal_d\(7));

-- Location: FF_X51_Y52_N27
\dut|R5|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R5|internal_d\(7));

-- Location: LCCOMB_X51_Y52_N26
\dut|MUXComp|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~0_combout\ = (\dut|MUXComp|Equal5~1_combout\ & ((\dut|R5|internal_d\(7)) # ((\dut|R1|internal_d\(7) & \dut|MUXComp|Equal1~1_combout\)))) # (!\dut|MUXComp|Equal5~1_combout\ & (\dut|R1|internal_d\(7) & 
-- ((\dut|MUXComp|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal5~1_combout\,
	datab => \dut|R1|internal_d\(7),
	datac => \dut|R5|internal_d\(7),
	datad => \dut|MUXComp|Equal1~1_combout\,
	combout => \dut|MUXComp|Selector0~0_combout\);

-- Location: FF_X52_Y51_N27
\dut|R6|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R6|internal_d\(7));

-- Location: FF_X47_Y51_N21
\dut|R0|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R0|internal_d\(7));

-- Location: FF_X52_Y51_N29
\dut|R2|internal_d[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	asdata => \dut|MUXComp|Selector0~6_combout\,
	sload => VCC,
	ena => \dut|FSMComp|input\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dut|R2|internal_d\(7));

-- Location: LCCOMB_X52_Y51_N28
\dut|MUXComp|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~1_combout\ = (\dut|MUXComp|Equal0~1_combout\ & ((\dut|R0|internal_d\(7)) # ((\dut|R2|internal_d\(7) & \dut|MUXComp|Equal2~1_combout\)))) # (!\dut|MUXComp|Equal0~1_combout\ & (((\dut|R2|internal_d\(7) & 
-- \dut|MUXComp|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal0~1_combout\,
	datab => \dut|R0|internal_d\(7),
	datac => \dut|R2|internal_d\(7),
	datad => \dut|MUXComp|Equal2~1_combout\,
	combout => \dut|MUXComp|Selector0~1_combout\);

-- Location: LCCOMB_X52_Y51_N26
\dut|MUXComp|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~2_combout\ = (\dut|MUXComp|Selector0~0_combout\) # ((\dut|MUXComp|Selector0~1_combout\) # ((\dut|MUXComp|Equal6~1_combout\ & \dut|R6|internal_d\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|MUXComp|Equal6~1_combout\,
	datab => \dut|MUXComp|Selector0~0_combout\,
	datac => \dut|R6|internal_d\(7),
	datad => \dut|MUXComp|Selector0~1_combout\,
	combout => \dut|MUXComp|Selector0~2_combout\);

-- Location: LCCOMB_X51_Y51_N22
\dut|MUXComp|Selector0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|MUXComp|Selector0~6_combout\ = (\dut|MUXComp|Selector0~5_combout\) # ((\dut|MUXComp|Selector0~2_combout\) # ((\SW[7]~input_o\ & \dut|MUXComp|m~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \dut|MUXComp|m~0_combout\,
	datac => \dut|MUXComp|Selector0~5_combout\,
	datad => \dut|MUXComp|Selector0~2_combout\,
	combout => \dut|MUXComp|Selector0~6_combout\);

-- Location: LCCOMB_X47_Y52_N14
\dut|FSMComp|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|Selector5~0_combout\ = (!\dut|FSMComp|state.T3~q\ & ((\dut|DFFComp|internal_d\(7)) # (!\dut|FSMComp|state.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dut|FSMComp|state.T1~q\,
	datac => \dut|FSMComp|state.T3~q\,
	datad => \dut|DFFComp|internal_d\(7),
	combout => \dut|FSMComp|Selector5~0_combout\);

-- Location: LCCOMB_X47_Y52_N18
\dut|FSMComp|DoneState\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \dut|FSMComp|DoneState~combout\ = (GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & (\dut|FSMComp|DoneState~combout\)) # (!GLOBAL(\dut|FSMComp|Selector13~0clkctrl_outclk\) & ((!\dut|FSMComp|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dut|FSMComp|DoneState~combout\,
	datac => \dut|FSMComp|Selector5~0_combout\,
	datad => \dut|FSMComp|Selector13~0clkctrl_outclk\,
	combout => \dut|FSMComp|DoneState~combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\KEY[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\KEY[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


