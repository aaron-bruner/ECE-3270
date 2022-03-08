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
-- Generated on "02/24/2022 21:39:37"
                                                            
-- Vhdl Test Bench template for design  :  FibChk
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FibChk_vhd_tst IS
END FibChk_vhd_tst;
ARCHITECTURE FibChk_arch OF FibChk_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL fibToCheck : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
COMPONENT FibChk
	PORT (
	fibToCheck : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FibChk
	PORT MAP (
-- list connections between master ports and signals
	fibToCheck => fibToCheck,
	valid => valid
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
		  fibToCheck <= "0000"; -- 0
		  wait for 10 ns;
		  fibToCheck <= "0001"; -- 1
		  wait for 10 ns;
		  fibToCheck <= "0010"; -- 2
		  wait for 10 ns;
		  fibToCheck <= "0011"; -- 3
		  wait for 10 ns;
		  fibToCheck <= "0101"; -- 5
		  wait for 10 ns;
		  fibToCheck <= "1000"; -- 8
		  wait for 10 ns;
		  fibToCheck <= "1101"; -- 13
		  wait for 10 ns;
		  -- We expect to see all 1's on the output. Now, we will try our invalid inputs which should all have 0
		  fibToCheck <= "0100"; -- 4
		  wait for 10 ns;
		  fibToCheck <= "0110"; -- 6
		  wait for 10 ns;
		  fibToCheck <= "0111"; -- 7
		  wait for 10 ns;
		  fibToCheck <= "1001"; -- 9
		  wait for 10 ns;
		  fibToCheck <= "1010"; -- 10
		  wait for 10 ns;
		  fibToCheck <= "1011"; -- 11
		  wait for 10 ns;
		  fibToCheck <= "1100"; -- 12
		  wait for 10 ns;
		  fibToCheck <= "1110"; -- 14
		  wait for 10 ns;
		  fibToCheck <= "1111"; -- 15
		  wait for 10 ns;
		  -- The above code should all produce 0. Thus, we should see a very long one followed by a very long zero
WAIT;                                                        
END PROCESS always;                                          
END FibChk_arch;
