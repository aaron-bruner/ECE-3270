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
-- Generated on "02/21/2022 11:22:17"
                                                            
-- Vhdl Test Bench template for design  :  MUX
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MUX_vhd_tst IS
END MUX_vhd_tst;
ARCHITECTURE MUX_arch OF MUX_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL s : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT MUX
	PORT (
	m : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	s : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	s => s,
	x => x,
	y => y
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
		-- First we will demonstrate setting s to 0 which will let us select the X data
			s <= '0';
			x <= "10101";
			wait for 10 ns; -- We should expect uninitialized Y
		-- Next, we will set s to 1 which will select the Y data
			s <= '1';
			y <= "01010";
			wait for 10 ns; -- We should expect same X 
		-- Now we can test boundary cases such as invalid s input to ensure our code is redundant
			s <= 'W';
			x <= "10001";
			y <= "01000";
			wait for 10 ns; -- New X & Y but same M
		-- Return all values to 0 (This should select logic 0 for the X data)
			s <= '0';
			x <= "00000";
			y <= "00000";
			wait for 10 ns; -- M = X
WAIT;                                                        
END PROCESS always;                                          
END MUX_arch;
