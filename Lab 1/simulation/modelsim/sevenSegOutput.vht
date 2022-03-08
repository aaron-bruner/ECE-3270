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
-- Generated on "02/24/2022 21:40:15"
                                                            
-- Vhdl Test Bench template for design  :  sevenSegOutput
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY sevenSegOutput_vhd_tst IS
END sevenSegOutput_vhd_tst;
ARCHITECTURE sevenSegOutput_arch OF sevenSegOutput_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sevenSegIn : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL sevenSegOut : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT sevenSegOutput
	PORT (
	sevenSegIn : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	sevenSegOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : sevenSegOutput
	PORT MAP (
-- list connections between master ports and signals
	sevenSegIn => sevenSegIn,
	sevenSegOut => sevenSegOut
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
        -- First we will try all valid inputs (0, 1, 2, 3, 5, 8, 13)
		  sevenSegIn <= "00000"; -- 0
		  wait for 10 ns;
		  sevenSegIn <= "00001"; -- 1
		  wait for 10 ns;
		  sevenSegIn <= "00010"; -- 2
		  wait for 10 ns;
		  sevenSegIn <= "00011"; -- 3
		  wait for 10 ns;
		  sevenSegIn <= "00101"; -- 5
		  wait for 10 ns;
		  sevenSegIn <= "01000"; -- 8
		  wait for 10 ns;
		  -- The above code will show the respective result based on our logic in p3.vhd
		  sevenSegIn <= "00100"; -- 4
		  wait for 10 ns;
		  sevenSegIn <= "00110"; -- 6
		  wait for 10 ns;
		  sevenSegIn <= "00111"; -- 7
		  wait for 10 ns;
		  sevenSegIn <= "01001"; -- 9
		  wait for 10 ns;
		  sevenSegIn <= "01010"; -- 10
		  wait for 10 ns;
		  sevenSegIn <= "01011"; -- 11
		  wait for 10 ns;
		  sevenSegIn <= "01100"; -- 12
		  wait for 10 ns;
		  sevenSegIn <= "01101"; -- 13
		  wait for 10 ns;
		  sevenSegIn <= "01110"; -- 14
		  wait for 10 ns;
		  sevenSegIn <= "01111"; -- 15
		  wait for 10 ns;
		  -- The above test cases will display 1111 on the output since they're considered not valid
WAIT;                                                        
END PROCESS always;                                          
END sevenSegOutput_arch;
