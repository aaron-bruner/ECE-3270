-- MUX - Lab 4 (Bit-Pair Recoded Multiplier [5-to-1 Multiplexer])
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY MUX IS
    GENERIC (b : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( oneX				: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 twoX				: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 negOneX			: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 negTwoX			: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 
			 S		: IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 	-- Select
			 m		: OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0)	-- Output
			);
end MUX;

ARCHITECTURE main OF MUX IS
	SIGNAL zeroX : STD_LOGIC_VECTOR(b-1 DOWNTO 0) := (others => '0'); -- Generate a (b-1 DOWNTO 0) of 0's for 0x

	BEGIN
		WITH S SELECT
			m <= zeroX	 WHEN "000"|"111", --  0x
				  oneX	 WHEN "001"|"010", --  1x
				  twoX	 WHEN "011",		 --  2x
              negOneX WHEN "101"|"110", -- -1x
              negTwoX WHEN "100",		 -- -2x
				  zeroX 	 WHEN OTHERS;
END main;

-- Here is a great example that demonstrates this model we are using:
-- https://surf-vhdl.com/how-to-implement-digital-mux-in-vhdl/