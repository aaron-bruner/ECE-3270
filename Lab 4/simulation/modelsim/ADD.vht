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
-- Generated on "05/01/2022 20:26:23"
                                                            
-- Vhdl Test Bench template for design  :  ADD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ADD_vhd_tst IS
END ADD_vhd_tst;
ARCHITECTURE ADD_arch OF ADD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT ADD
	PORT (
	A : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	S : OUT STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ADD
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S
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
		  A <= "001100111";
		  B <= "000010001";
		  wait for 10 ns;
		  -- We should see s = 0 0111 1000
		  A <= "110000000";
		  B <= "010000000";
		  wait for 10 ns;
		  -- We should see s = 0 0000 0000
WAIT;                                                        
END PROCESS always;                                          
END ADD_arch;
