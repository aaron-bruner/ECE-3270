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
-- Generated on "04/10/2022 22:10:10"
                                                            
-- Vhdl Test Bench template for design  :  lab3
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3_vhd_tst IS
END lab3_vhd_tst;
ARCHITECTURE lab3_arch OF lab3_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL bus0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Clock : STD_LOGIC;
SIGNAL DIN : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL Done : STD_LOGIC;
SIGNAL Resetn : STD_LOGIC;
SIGNAL Run : STD_LOGIC;
COMPONENT lab3
	PORT (
	bus0 : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	Clock : IN STD_LOGIC;
	DIN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	Done : BUFFER STD_LOGIC;
	Resetn : IN STD_LOGIC;
	Run : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : lab3
	PORT MAP (
-- list connections between master ports and signals
	bus0 => bus0,
	Clock => Clock,
	DIN => DIN,
	Done => Done,
	Resetn => Resetn,
	Run => Run
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
		  Run		<= '1';
		  Resetn	<= '1';
-- [mvi]	R0 = 00000000 01 000 001
		 DIN<="0000000001000001";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
-- 	   R1 = 00000000 01 001 001
		 DIN<="0000000001001001";  
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
--  		R2 = 10000000 01 010 011
		 DIN<="1000000001010011";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
--  		R3 = 10000000 01 011 010
		 DIN<="1000000001011010";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
-- [mv] R2 to R4 (00000000 00 100 010)
		 DIN<="0000000000100010";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 --Run <= '0';
		 --Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;	-- For screenshot
		 --Run <= '1';
-- [add] R0 + R3 -> R0 (00000000 10 000 011)
		 DIN<="0000000010000011";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns; 
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
-- [sub] R4 - R1 -> R4 (00000000 11 100 001)
	    DIN<="0000000011100001";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Run <= '0';
		 --Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;	-- For screenshot
		 --Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 --Run <= '1';
-- 		R2 - R1 -> R2 (00000000 11 010 001)
	    DIN<="0000000011010001";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
-- [resetn]
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Resetn	<=	'0';
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
-- [run]					  (00000000 11 001 000)
		 Run		<=	'0';
		 DIN		<=	"0000000011001000";
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 Clock	<=	'0'; wait for 10ns; Clock	<=	'1'; wait for 10ns;
		 WAIT;                                                        
	END PROCESS always;                                          
END lab3_arch;