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
-- Generated on "05/01/2022 18:37:37"
                                                            
-- Vhdl Test Bench template for design  :  FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_vhd_tst IS
END FSM_vhd_tst;
ARCHITECTURE FSM_arch OF FSM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addreg : STD_LOGIC;
SIGNAL busy : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL count : STD_LOGIC;
SIGNAL done : STD_LOGIC;
SIGNAL loadreg : STD_LOGIC;
SIGNAL regD : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL shiftreg : STD_LOGIC;
SIGNAL start : STD_LOGIC;
COMPONENT FSM
	PORT (
	addreg : BUFFER STD_LOGIC;
	busy : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	count : BUFFER STD_LOGIC;
	done : BUFFER STD_LOGIC;
	loadreg : BUFFER STD_LOGIC;
	regD : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	shiftreg : BUFFER STD_LOGIC;
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM
	PORT MAP (
-- list connections between master ports and signals
	addreg => addreg,
	busy => busy,
	clk => clk,
	count => count,
	done => done,
	loadreg => loadreg,
	regD => regD,
	reset => reset,
	shiftreg => shiftreg,
	start => start
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
		  start <= '1';
		  reset <= '0';
		  regD <= '0'; -- Done
		  wait for 10ns;
		  clk <= '1';
		  wait for 10 ns;
		  start <= '0'; -- Busy
		  clk <= '0';
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  regD <= '1'; -- Get busy to go low
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
		  clk <= '0';
		  regD <= '0'; -- Get busy to go low
		  wait for 10 ns;
		  clk <= '1';
		  wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END FSM_arch;
