-- smallMUX - Lab 4 (Bit-Pair Recoded Multiplier [2-to-1 Multiplexer])
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY smallMUX IS
    GENERIC (b : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( input			: IN STD_LOGIC_VECTOR(b DOWNTO 0); -- Input from ADDER
			 loadreg			: IN STD_LOGIC;						-- [ OUR SELECT LINE ]
			 
			 --S		: IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 	-- Select
			 m		: OUT STD_LOGIC_VECTOR(b DOWNTO 0)	-- Output
			);
end smallMUX;

ARCHITECTURE main OF smallMUX IS
	SIGNAL zeroX : STD_LOGIC_VECTOR(b DOWNTO 0) := (others => '0'); -- Generate a (b DOWNTO 0) of 0's for 0x

	BEGIN
		WITH loadreg SELECT
			m <= input	 WHEN '0',
				  zeroX 	 WHEN OTHERS;
END main;

-- Here is a great example that demonstrates this model we are using:
-- https://surf-vhdl.com/how-to-implement-digital-mux-in-vhdl/