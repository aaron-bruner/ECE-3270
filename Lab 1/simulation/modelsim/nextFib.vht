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
-- Generated on "02/24/2022 21:39:56"
                                                            
-- Vhdl Test Bench template for design  :  nextFib
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY nextFib_vhd_tst IS
END nextFib_vhd_tst;
ARCHITECTURE nextFib_arch OF nextFib_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL findNextInput : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL findNextOutput : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT nextFib
	PORT (
	findNextInput : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	findNextOutput : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : nextFib
	PORT MAP (
-- list connections between master ports and signals
	findNextInput => findNextInput,
	findNextOutput => findNextOutput
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
		  findNextInput <= "0000"; -- 0
		  wait for 10 ns;
		  findNextInput <= "0001"; -- 1
		  wait for 10 ns;
		  findNextInput <= "0010"; -- 2
		  wait for 10 ns;
		  findNextInput <= "0011"; -- 3
		  wait for 10 ns;
		  findNextInput <= "0101"; -- 5
		  wait for 10 ns;
		  findNextInput <= "1000"; -- 8
		  wait for 10 ns;
		  findNextInput <= "1101"; -- 13
		  wait for 10 ns;
		  -- The above code will show the respective result based on our logic in p3.vhd
		  findNextInput <= "0100"; -- 4
		  wait for 10 ns;
		  findNextInput <= "0110"; -- 6
		  wait for 10 ns;
		  findNextInput <= "0111"; -- 7
		  wait for 10 ns;
		  findNextInput <= "1001"; -- 9
		  wait for 10 ns;
		  findNextInput <= "1010"; -- 10
		  wait for 10 ns;
		  findNextInput <= "1011"; -- 11
		  wait for 10 ns;
		  findNextInput <= "1100"; -- 12
		  wait for 10 ns;
		  findNextInput <= "1110"; -- 14
		  wait for 10 ns;
		  findNextInput <= "1111"; -- 15
		  wait for 10 ns;
		  -- The above test cases will display 11111 on the output since they're considered not valid
WAIT;                                                        
END PROCESS always;                                          
END nextFib_arch;
