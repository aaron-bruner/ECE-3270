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
-- Generated on "05/01/2022 20:10:01"
                                                            
-- Vhdl Test Bench template for design  :  REGA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY REGA_vhd_tst IS
END REGA_vhd_tst;
ARCHITECTURE REGA_arch OF REGA_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL multiplicand : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL negOneX : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL negTwoX : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL oneX : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL twoX : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT REGA
	PORT (
	clk : IN STD_LOGIC;
	loadreg : IN STD_LOGIC;
	multiplicand : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	negOneX : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	negTwoX : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	oneX : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0);
	twoX : BUFFER STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : REGA
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	loadreg => loadreg,
	multiplicand => multiplicand,
	negOneX => negOneX,
	negTwoX => negTwoX,
	oneX => oneX,
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
		  clk <= '0';
		  loadreg <= '1';
		  wait for 10ns;
		  multiplicand <= "01010110";
		  wait for 10ns;
		  clk <= '1';
		  wait for 10ns;
		  clk <= '0';
		  wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END REGA_arch;
