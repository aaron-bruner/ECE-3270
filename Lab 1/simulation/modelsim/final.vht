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
-- Generated on "02/24/2022 21:40:36"
                                                            
-- Vhdl Test Bench template for design  :  final
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY final_vhd_tst IS
END final_vhd_tst;
ARCHITECTURE final_arch OF final_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL isFib : STD_LOGIC;
SIGNAL outputTo7Seg : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sIn : STD_LOGIC;
COMPONENT final
	PORT (
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	isFib : OUT STD_LOGIC;
	outputTo7Seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sIn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : final
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	isFib => isFib,
	outputTo7Seg => outputTo7Seg,
	sIn => sIn
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
        data <= "0000";	-- IN: 0
		  sIn <= '1';		-- NEXT FIB = 1 -> DISP 1
		  wait for 20 ns;
		  
		  data <= "0000"; -- IN: 0
		  sIn <= '0';		-- CURR FIB = 0 -> DISP 0
		  wait for 20 ns;
		  
		  data <= "0010"; -- IN: 2
		  sIn <= '1';		-- NEXT FIB = 3 -> DISP 3
		  wait for 20 ns;
		  
		  data <= "1000"; -- IN: 8
		  sIn <= '1';		-- NEXT FIB = 13 -> DISP E
		  wait for 20 ns; 
		  
		  data <= "1101"; -- IN: 13
		  sIn <= '1';		-- NEXT FIB = 21 -> DISP E
		  wait for 20 ns; 
WAIT;                                                        
END PROCESS always;                                          
END final_arch;
