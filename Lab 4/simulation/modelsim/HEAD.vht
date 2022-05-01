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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/01/2022 17:42:15"
                                                            
-- Vhdl Test Bench template for design  :  HEAD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HEAD_vhd_tst IS
END HEAD_vhd_tst;
ARCHITECTURE HEAD_arch OF HEAD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL finalResult : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL MULTIPLICAND : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MULTIPLIER : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT HEAD
	PORT (
	busy : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	done : BUFFER STD_LOGIC;
	finalResult : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	MULTIPLICAND : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	MULTIPLIER : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : HEAD
	PORT MAP (
-- list connections between master ports and signals
	busy => busy,
	clk => clk,
	done => done,
	finalResult => finalResult,
	MULTIPLICAND => MULTIPLICAND,
	MULTIPLIER => MULTIPLIER,
	reset => reset,
	start => start
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  clk <= '0';
        start <= '1';
        reset <= '0';
        MULTIPLICAND <= "11011000";
        MULTIPLIER <= "01100101";
		  wait for 10 ns;
		  clk <= '1';
        wait for 10 ns;
		  start <= '0';
		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;

		  clk <= '0';
        wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;


WAIT;                                                        
END PROCESS always;                                          
END HEAD_arch;
