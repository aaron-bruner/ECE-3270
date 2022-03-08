-- Multiplexer - Lab 1 (Five-Bit Wide 2-to-1 Multiplexer)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- The best representation of this entity is the figure a) Circuit.
-- We are supporting two 5-Bit input lines and a select line. Depending on the select line
-- we will either output X or Y. If the select line is 0 then we output the data on X
-- otherwise we output Y.
entity MUX is
	port( s : IN STD_LOGIC;									-- Select   -> 1-Bit
			x : IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Input X  -> 5-Bit
			y : IN STD_LOGIC_VECTOR(4 DOWNTO 0);		-- Input Y  -> 5-Bit
			m : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));		-- Output M -> 5-Bit
end MUX;

architecture main of MUX is
	begin
		with s select -- This a simple select statement taken from the lecture slides
			m <= x when '0',
				  y when '1',
				  unaffected when others;
end main;


-- NOTES:
-- s = 0 => M = X
-- s = 1 => M = Y
-- m <= (NOT (s) AND x) OR (s AND y);   MULTIPLEXER

-- Origional Code for Part 1
--LIBRARY ieee;
--USE ieee.std_logic_1164.all;
--
--entity MUX is
--	port( s : IN STD_LOGIC;
--			x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--			y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
--			m : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
--end MUX;
--
--architecture main of MUX is
--	begin
--		with s select
--			m <= x when '0',
--				  y when '1',
--				  unaffected when others;
--end main;