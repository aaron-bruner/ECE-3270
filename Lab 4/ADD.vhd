-- ADDER - Lab 4 (Bit-Pair Recoded Multiplier)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ADD IS
    GENERIC (x : INTEGER := 8); -- Constant integer so we can change data-width with ease
	 PORT (A, B	: IN  STD_LOGIC_VECTOR(x DOWNTO 0);
	       --Cin	: IN  STD_LOGIC; -- Always 0
			 --Cout	: OUT STD_LOGIC; -- We don't care about overflow
			 S		: OUT STD_LOGIC_VECTOR(x DOWNTO 0)
	 );
END ADD;

ARCHITECTURE main OF ADD IS
    SIGNAL SUM: STD_LOGIC_VECTOR(x DOWNTO 0);
	 BEGIN 
	     SUM	 <= A + B;
		  --Cout <= SUM(x);
		  S 	 <= SUM(x DOWNTO 0);
END main;

-- This is exactly from the textbook, reference below.

-- TEXTBOOK REFERENCE: PAGE 229 ( 10.2 Binary Addition )