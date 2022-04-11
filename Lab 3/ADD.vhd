-- ADDER - Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ADD IS
    GENERIC (size : INTEGER := 16); -- Constant integer so we can change data-width with ease
	 PORT (A, B	: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
	       Cin	: IN  STD_LOGIC;
			 Cout	: OUT STD_LOGIC;
			 S		: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0)
	 );
END ADD;

ARCHITECTURE main OF ADD IS
    SIGNAL SUM: STD_LOGIC_VECTOR(size DOWNTO 0);
	 BEGIN 
	     SUM	 <= ('0' & A) + ('0' & B) + Cin;
		  Cout <= SUM(size);
		  S 	 <= SUM(size-1 DOWNTO 0);
END main;

-- This is exactly from the textbook, reference below.

-- TEXTBOOK REFERENCE: PAGE 229 ( 10.2 Binary Addition )