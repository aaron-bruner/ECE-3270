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
-- Generated on "05/01/2022 12:58:57"
                                                            
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
SIGNAL m : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL negOneX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL negTwoX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL oneX : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL twoX : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT MUX
	PORT (
	m : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	negOneX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	negTwoX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	oneX : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	twoX : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MUX
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	negOneX => negOneX,
	negTwoX => negTwoX,
	oneX => oneX,
	S => S,
	twoX => twoX
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
		  oneX <= "00111100";
		  twoX <= "11000011";
		  negOneX <= "10000001";
		  negTwoX <= "01111110";
		  S <= "000";
		  wait for 5ns;	-- SHOULD SEE  0x
		  S <= "001";
		  wait for 5ns;	-- SHOULD SEE  1x
		  S <= "010";
		  wait for 5ns;	-- SHOULD SEE  1x
		  S <= "011";
		  wait for 5ns;	-- SHOULD SEE  2x
		  S <= "100";
		  wait for 5ns;	-- SHOULD SEE -2x
		  S <= "101";
		  wait for 5ns;	-- SHOULD SEE -1x
		  S <= "110";
		  wait for 5ns;	-- SHOULD SEE -1x
		  S <= "111";
		  wait for 5ns;	-- SHOULD SEE  0x 
WAIT;                                                        
END PROCESS always;                                          
END MUX_arch;
