-- Next Fibonacci - Lab 1 (Output NEXT Fibonacci Number)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity nextFib is
	port( findNextInput  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); -- 4-Bit input
			findNextOutput : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));-- 5-Bit Output
end nextFib;

architecture main of nextFib is
	begin
		with findNextInput select
		-- Depending on the input value we want to produce the NEXT Fibonacci number
			findNextOutput <= "00001" when "0000", -- Input: 0  -> Output: 1
									"00010" when "0001", -- Input: 1  -> Output: 2
									"00011" when "0010", -- Input: 2  -> OUtput: 3
									"00101" when "0011", -- Input: 3  -> Output: 5
									"01000" when "0101", -- Input: 5  -> Output: 8
									"01101" when "1000", -- Input: 8  -> Output: 13
									"10101" when "1101", -- Input: 13 -> Output: 21
									"11111" when others; -- Else: 111111 (Predetermined Value)
end main;

-- The reason we need a 5-Bit output is so that we can support outputting values such as 21.
-- Even if we do not support displaying it on the 7-Segment display we need to check for errors.