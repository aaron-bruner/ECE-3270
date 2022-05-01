-- REGD - Lab 4 (Bit-Pair Recoded Multiplier)
-- Aaron Bruner
-- C16480080

-- The purpose OF REGD is to determine if we're done doing our ADD/SHIFT operations. Bascially we will count down from b/2 to determine
-- if we have done enough operations to finish our Bit-Pair.

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.STD_LOGIC_unsigned.all;

ENTITY REGD IS
    GENERIC(b : INTEGER := 8);
    PORT( clk,loadreg,count : IN  STD_LOGIC;
			 done					 : OUT STD_LOGIC);
END REGD;
--Begin the architecture, why is it called mixed?
ARCHITECTURE mixed OF REGD IS
	--SIGNAL internal_d: STD_LOGIC_VECTOR(b-1 DOWNTO 0);
	SIGNAL x : INTEGER := -1; -- Just a variable to do counting with
	
	BEGIN
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    PROCESS(clk,loadreg,count)
		BEGIN
		 IF(RISING_EDGE(clk)) THEN
			  IF(loadreg = '1') THEN -- Initialize values
					x <= b/2;
					done  <= '0';
			  ELSIF x = 1 THEN -- We have counted from 4, 3, 2 and finally 1. This is our 4 operations
					done  <= '1';
			  ELSIF count = '1' THEN
					x <= x - 1; 	-- Continue with ADD/SHIFT
					done <= '0';	-- Keep done signal low
			  ELSE done <= '0';  -- Keep done from being uninitialized after first rising edge
			 END IF;
		 END IF;
	 END PROCESS;
END mixed;