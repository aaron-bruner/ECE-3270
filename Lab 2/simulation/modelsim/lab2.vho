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

-- DATE "03/09/2022 13:53:08"

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

ENTITY 	MooreFSMb IS
    PORT (
	SW : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0)
	);
END MooreFSMb;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MooreFSMb IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SW[3]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \mmmap|Equal3~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \mmmap|Equal1~0_combout\ : std_logic;
SIGNAL \mmmap|Selector3~0_combout\ : std_logic;
SIGNAL \mmmap|Equal3~0_combout\ : std_logic;
SIGNAL \mmmap|Selector1~0_combout\ : std_logic;
SIGNAL \mmmap|Equal2~0_combout\ : std_logic;
SIGNAL \mmmap|state.gnd~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[3]~inputclkctrl_outclk\ : std_logic;
SIGNAL \mmmap|state.gnd~q\ : std_logic;
SIGNAL \mmmap|Selector1~1_combout\ : std_logic;
SIGNAL \mmmap|Selector1~2_combout\ : std_logic;
SIGNAL \mmmap|Selector7~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth5~q\ : std_logic;
SIGNAL \mmmap|Selector2~1_combout\ : std_logic;
SIGNAL \mmmap|Selector1~3_combout\ : std_logic;
SIGNAL \mmmap|Selector1~4_combout\ : std_logic;
SIGNAL \mmmap|state.alt10k~q\ : std_logic;
SIGNAL \mmmap|Selector2~0_combout\ : std_logic;
SIGNAL \mmmap|Selector2~2_combout\ : std_logic;
SIGNAL \mmmap|Selector2~3_combout\ : std_logic;
SIGNAL \mmmap|state.alt25k~q\ : std_logic;
SIGNAL \mmmap|Selector3~1_combout\ : std_logic;
SIGNAL \mmmap|state.smooth1~q\ : std_logic;
SIGNAL \mmmap|Selector4~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth2~q\ : std_logic;
SIGNAL \mmmap|Selector5~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth3~q\ : std_logic;
SIGNAL \mmmap|Selector6~0_combout\ : std_logic;
SIGNAL \mmmap|state.smooth4~q\ : std_logic;
SIGNAL \mmmap|WideOr2~0_combout\ : std_logic;
SIGNAL \mmmap|WideOr1~combout\ : std_logic;
SIGNAL \mmmap|WideOr0~0_combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.smooth5~q\ : std_logic;
SIGNAL \mmmap|ALT_INV_state.gnd~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\SW[3]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW[3]~input_o\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
\mmmap|ALT_INV_WideOr0~0_combout\ <= NOT \mmmap|WideOr0~0_combout\;
\mmmap|ALT_INV_WideOr1~combout\ <= NOT \mmmap|WideOr1~combout\;
\mmmap|ALT_INV_state.smooth5~q\ <= NOT \mmmap|state.smooth5~q\;
\mmmap|ALT_INV_state.gnd~q\ <= NOT \mmmap|state.gnd~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X54_Y54_N30
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|state.smooth5~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_state.smooth5~q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mmmap|ALT_INV_state.gnd~q\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
\KEY[0]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: IOIBUF_X56_Y54_N15
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

-- Location: LCCOMB_X55_Y53_N10
\mmmap|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Equal3~1_combout\ = (!\SW[2]~input_o\ & !\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \mmmap|Equal3~1_combout\);

-- Location: IOIBUF_X56_Y54_N8
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

-- Location: LCCOMB_X55_Y53_N20
\mmmap|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Equal1~0_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \mmmap|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y53_N14
\mmmap|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector3~0_combout\ = (\mmmap|state.smooth1~q\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \mmmap|state.smooth1~q\,
	combout => \mmmap|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y53_N14
\mmmap|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Equal3~0_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \mmmap|Equal3~0_combout\);

-- Location: LCCOMB_X56_Y53_N20
\mmmap|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~0_combout\ = (\mmmap|state.alt10k~q\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \mmmap|state.alt10k~q\,
	combout => \mmmap|Selector1~0_combout\);

-- Location: LCCOMB_X55_Y53_N12
\mmmap|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Equal2~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \mmmap|Equal2~0_combout\);

-- Location: LCCOMB_X56_Y53_N6
\mmmap|state.gnd~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|state.gnd~0_combout\ = (\mmmap|Equal2~0_combout\ & ((!\mmmap|state.alt10k~q\))) # (!\mmmap|Equal2~0_combout\ & (\mmmap|state.gnd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal2~0_combout\,
	datac => \mmmap|state.gnd~q\,
	datad => \mmmap|state.alt10k~q\,
	combout => \mmmap|state.gnd~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\SW[3]~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW[3]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW[3]~inputclkctrl_outclk\);

-- Location: FF_X56_Y53_N7
\mmmap|state.gnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|state.gnd~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.gnd~q\);

-- Location: LCCOMB_X56_Y53_N30
\mmmap|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~1_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\mmmap|state.gnd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \mmmap|state.gnd~q\,
	combout => \mmmap|Selector1~1_combout\);

-- Location: LCCOMB_X56_Y53_N8
\mmmap|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~2_combout\ = (\SW[2]~input_o\ & (((\mmmap|state.alt10k~q\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & ((\mmmap|state.alt10k~q\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \mmmap|state.alt10k~q\,
	combout => \mmmap|Selector1~2_combout\);

-- Location: LCCOMB_X56_Y53_N10
\mmmap|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector7~0_combout\ = (\mmmap|Equal1~0_combout\ & (!\mmmap|Equal3~1_combout\ & (\mmmap|state.smooth5~q\))) # (!\mmmap|Equal1~0_combout\ & (((\mmmap|state.smooth5~q\) # (\mmmap|state.smooth4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal3~1_combout\,
	datab => \mmmap|Equal1~0_combout\,
	datac => \mmmap|state.smooth5~q\,
	datad => \mmmap|state.smooth4~q\,
	combout => \mmmap|Selector7~0_combout\);

-- Location: FF_X56_Y53_N11
\mmmap|state.smooth5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector7~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth5~q\);

-- Location: LCCOMB_X56_Y53_N2
\mmmap|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector2~1_combout\ = (\mmmap|state.smooth3~q\) # ((\mmmap|state.smooth1~q\) # ((\mmmap|state.smooth2~q\) # (\mmmap|state.smooth5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|state.smooth3~q\,
	datab => \mmmap|state.smooth1~q\,
	datac => \mmmap|state.smooth2~q\,
	datad => \mmmap|state.smooth5~q\,
	combout => \mmmap|Selector2~1_combout\);

-- Location: LCCOMB_X56_Y53_N18
\mmmap|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~3_combout\ = (\mmmap|Selector1~1_combout\) # ((\mmmap|Selector1~2_combout\ & ((\mmmap|state.smooth4~q\) # (\mmmap|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Selector1~1_combout\,
	datab => \mmmap|state.smooth4~q\,
	datac => \mmmap|Selector1~2_combout\,
	datad => \mmmap|Selector2~1_combout\,
	combout => \mmmap|Selector1~3_combout\);

-- Location: LCCOMB_X56_Y53_N28
\mmmap|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector1~4_combout\ = (\mmmap|Selector1~0_combout\) # ((\mmmap|Selector1~3_combout\) # ((\mmmap|Equal3~0_combout\ & \mmmap|state.alt25k~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal3~0_combout\,
	datab => \mmmap|state.alt25k~q\,
	datac => \mmmap|Selector1~0_combout\,
	datad => \mmmap|Selector1~3_combout\,
	combout => \mmmap|Selector1~4_combout\);

-- Location: FF_X56_Y53_N29
\mmmap|state.alt10k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector1~4_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.alt10k~q\);

-- Location: LCCOMB_X56_Y53_N22
\mmmap|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector2~0_combout\ = (\SW[2]~input_o\ & (((\mmmap|state.alt25k~q\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\SW[0]~input_o\ & \mmmap|state.alt25k~q\)) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \mmmap|state.alt25k~q\,
	combout => \mmmap|Selector2~0_combout\);

-- Location: LCCOMB_X56_Y53_N16
\mmmap|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector2~2_combout\ = (\mmmap|state.smooth4~q\) # ((\mmmap|state.alt25k~q\) # (\mmmap|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|state.smooth4~q\,
	datac => \mmmap|state.alt25k~q\,
	datad => \mmmap|Selector2~1_combout\,
	combout => \mmmap|Selector2~2_combout\);

-- Location: LCCOMB_X56_Y53_N0
\mmmap|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector2~3_combout\ = (\mmmap|Equal3~0_combout\ & ((\mmmap|state.alt10k~q\) # ((\mmmap|Selector2~0_combout\ & \mmmap|Selector2~2_combout\)))) # (!\mmmap|Equal3~0_combout\ & (((\mmmap|Selector2~0_combout\ & \mmmap|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal3~0_combout\,
	datab => \mmmap|state.alt10k~q\,
	datac => \mmmap|Selector2~0_combout\,
	datad => \mmmap|Selector2~2_combout\,
	combout => \mmmap|Selector2~3_combout\);

-- Location: FF_X56_Y53_N1
\mmmap|state.alt25k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector2~3_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.alt25k~q\);

-- Location: LCCOMB_X56_Y53_N4
\mmmap|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector3~1_combout\ = (\mmmap|Selector3~0_combout\) # ((!\mmmap|Equal1~0_combout\ & \mmmap|state.alt25k~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mmmap|Equal1~0_combout\,
	datac => \mmmap|Selector3~0_combout\,
	datad => \mmmap|state.alt25k~q\,
	combout => \mmmap|Selector3~1_combout\);

-- Location: FF_X56_Y53_N5
\mmmap|state.smooth1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector3~1_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth1~q\);

-- Location: LCCOMB_X56_Y53_N26
\mmmap|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector4~0_combout\ = (\mmmap|Equal1~0_combout\ & (!\mmmap|Equal3~1_combout\ & (\mmmap|state.smooth2~q\))) # (!\mmmap|Equal1~0_combout\ & (((\mmmap|state.smooth1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal3~1_combout\,
	datab => \mmmap|Equal1~0_combout\,
	datac => \mmmap|state.smooth2~q\,
	datad => \mmmap|state.smooth1~q\,
	combout => \mmmap|Selector4~0_combout\);

-- Location: FF_X56_Y53_N27
\mmmap|state.smooth2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector4~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth2~q\);

-- Location: LCCOMB_X56_Y53_N12
\mmmap|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector5~0_combout\ = (\mmmap|Equal1~0_combout\ & (((\mmmap|state.smooth3~q\ & !\mmmap|Equal3~1_combout\)))) # (!\mmmap|Equal1~0_combout\ & (\mmmap|state.smooth2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|state.smooth2~q\,
	datab => \mmmap|Equal1~0_combout\,
	datac => \mmmap|state.smooth3~q\,
	datad => \mmmap|Equal3~1_combout\,
	combout => \mmmap|Selector5~0_combout\);

-- Location: FF_X56_Y53_N13
\mmmap|state.smooth3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector5~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth3~q\);

-- Location: LCCOMB_X56_Y53_N24
\mmmap|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|Selector6~0_combout\ = (\mmmap|Equal1~0_combout\ & (!\mmmap|Equal3~1_combout\ & (\mmmap|state.smooth4~q\))) # (!\mmmap|Equal1~0_combout\ & (((\mmmap|state.smooth3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|Equal3~1_combout\,
	datab => \mmmap|Equal1~0_combout\,
	datac => \mmmap|state.smooth4~q\,
	datad => \mmmap|state.smooth3~q\,
	combout => \mmmap|Selector6~0_combout\);

-- Location: FF_X56_Y53_N25
\mmmap|state.smooth4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputclkctrl_outclk\,
	d => \mmmap|Selector6~0_combout\,
	clrn => \SW[3]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mmmap|state.smooth4~q\);

-- Location: LCCOMB_X55_Y53_N4
\mmmap|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|WideOr2~0_combout\ = (\mmmap|state.smooth4~q\) # ((\mmmap|state.alt25k~q\) # ((\mmmap|state.smooth2~q\) # (!\mmmap|state.gnd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|state.smooth4~q\,
	datab => \mmmap|state.alt25k~q\,
	datac => \mmmap|state.smooth2~q\,
	datad => \mmmap|state.gnd~q\,
	combout => \mmmap|WideOr2~0_combout\);

-- Location: LCCOMB_X55_Y53_N26
\mmmap|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|WideOr1~combout\ = ((\mmmap|state.smooth1~q\) # ((\mmmap|state.smooth2~q\) # (\mmmap|state.smooth5~q\))) # (!\mmmap|state.gnd~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|state.gnd~q\,
	datab => \mmmap|state.smooth1~q\,
	datac => \mmmap|state.smooth2~q\,
	datad => \mmmap|state.smooth5~q\,
	combout => \mmmap|WideOr1~combout\);

-- Location: LCCOMB_X55_Y53_N24
\mmmap|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mmmap|WideOr0~0_combout\ = (\mmmap|state.smooth5~q\) # ((\mmmap|state.alt10k~q\) # ((\mmmap|state.alt25k~q\) # (!\mmmap|state.gnd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmmap|state.smooth5~q\,
	datab => \mmmap|state.alt10k~q\,
	datac => \mmmap|state.alt25k~q\,
	datad => \mmmap|state.gnd~q\,
	combout => \mmmap|WideOr0~0_combout\);

-- Location: IOIBUF_X69_Y0_N1
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

-- Location: IOIBUF_X69_Y0_N15
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

-- Location: IOIBUF_X58_Y0_N1
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
END structure;


