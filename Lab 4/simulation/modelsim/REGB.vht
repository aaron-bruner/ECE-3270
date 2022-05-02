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
-- Generated on "05/01/2022 20:12:31"
                                                            
-- Vhdl Test Bench template for design  :  REGB
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REGB_vhd_tst IS
END REGB_vhd_tst;
ARCHITECTURE REGB_arch OF REGB_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL finalProduct : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL loadreg : STD_LOGIC;
SIGNAL multiplier : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL recodeOperation : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL REGC : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
COMPONENT REGB
	PORT (
	clk : IN STD_LOGIC;
	finalProduct : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	loadreg : IN STD_LOGIC;
	multiplier : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	recodeOperation : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	REGC : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	shiftreg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : REGB
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	finalProduct => finalProduct,
	loadreg => loadreg,
	multiplier => multiplier,
	recodeOperation => recodeOperation,
	REGC => REGC,
	shiftreg => shiftreg
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
		  REGC <= "11";
		  multiplier <= "00110011";
		  loadreg <= '1';
		  shiftreg <= '0';
		  wait for 10ns;
		  clk <= '1';
		  wait for 10ns;
		  clk <= '0';
		  loadreg <= '0';
		  shiftreg <= '1';
		  clk <= '1';
		  wait for 10ns;
		  clk <= '0';
		  wait for 10ns;
		  clk <= '1';
		  wait for 10ns; 
WAIT;                                                        
END PROCESS always;                                          
END REGB_arch;
