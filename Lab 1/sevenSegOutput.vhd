-- 7-Segment Output - Lab 1 (Output to 7-Segment Display)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity sevenSegOutput is															-- Input 4-Bit number from switches to determine equilivent 7-Segment output
	port( sevenSegIn 	 : IN  STD_LOGIC_VECTOR(4 DOWNTO 0); 	-- 5-Bit Input Number
			sevenSegOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));-- Based on predetermined table, appropirate output to make number
end sevenSegOutput;

architecture main of sevenSegOutput is
	begin
		with sevenSegIn select
			sevenSegOut <=  "1000000" when "00000", -- Input: 0 		-> 7-Seg Output: 0
								 "1111001" when "00001", -- Input: 1 		-> 7-Seg Output: 1
								 "0100100" when "00010", -- Input: 2 		-> 7-Seg Output: 2
								 "0110000" when "00011", -- Input: 3 		-> 7-Seg Output: 3
								 "0010010" when "00101", -- Input: 5 		-> 7-Seg Output: 5
								 "0000000" when "01000", -- Input: 8 		-> 7-Seg Output: 8
								 "0000110" when others;  -- Input: ELSE   -> 7-Seg Output: E
end main;

-- Notes:
-- c3c2c1c0		Character
--	  0000			 0
--	  0001			 1
--	  0010			 2
--	  0011			 3
--	  0100			 E
--	  0101			 5
--	  0110			 E
--	  0111			 E
--	  1000			 8
--	  1001			 E
--	  ....			 E
--	  1111			 E
--
-- c3c2c1c0 is sevenSegIn & character is sevenSegOut
-- HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
--

-- 									Origional code for Part 4:
--LIBRARY ieee;
--USE ieee.std_logic_1164.all;
--
--entity sevenSegOutput is
--	port( sevenSegIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
--			sevenSegOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
--end sevenSegOutput;
--
--architecture main of sevenSegOutput is
--	begin
--		with sevenSegIn select
--			sevenSegOut <= "1000000" when "0000", -- Input: 0 		-> 7-Seg Output: 0
--								"1111001" when "0001", -- Input: 1 		-> 7-Seg Output: 1
--								"0100100" when "0010", -- Input: 2 		-> 7-Seg Output: 2
--								"0110000" when "0011", -- Input: 3 		-> 7-Seg Output: 3
--								"0010010" when "0101", -- Input: 5 		-> 7-Seg Output: 5
--								"0000000" when "1000", -- Input: 8 		-> 7-Seg Output: 8
--								"0000110" when others;  -- Input: ELSE  -> 7-Seg Output: E
--end main;
