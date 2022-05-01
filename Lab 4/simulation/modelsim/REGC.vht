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
-- Generated on "05/01/2022 08:55:22"
                                                            
-- Vhdl Test Bench template for design  :  REGC
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REGC_vhd_tst IS
END REGC_vhd_tst;
ARCHITECTURE REGC_arch OF REGC_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL add : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL finalProduct : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL loadreg : STD_LOGIC;
SIGNAL REGB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL REGCd : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL REGCout : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL shiftreg : STD_LOGIC;
COMPONENT REGC
	PORT (
	add : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	finalProduct : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	loadreg : IN STD_LOGIC;
	REGB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	REGCd : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	REGCout : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	shiftreg : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : REGC
	PORT MAP (
-- list connections between master ports and signals
	add => add,
	clk => clk,
	finalProduct => finalProduct,
	loadreg => loadreg,
	REGB => REGB,
	REGCd => REGCd,
	REGCout => REGCout,
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
		  add <= '0';
		  shiftreg <= '0';
		  loadreg <= '1';
		  REGCd <= "001000101";
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  loadreg <= '0';
		  REGCd <= "010001010";
		  add <= '1'; -- ADD 1x
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  add <= '0';
		  shiftreg <= '1';
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END REGC_arch;
