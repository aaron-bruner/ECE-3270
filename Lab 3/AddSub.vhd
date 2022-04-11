-- AddSub - Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY AddSub IS
    GENERIC (size : INTEGER := 16); -- Constant integer so we can change data-width with ease
	 PORT( a, b	: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			 sub 	: IN  STD_LOGIC; -- subtract if sub=1, otherwise add
			 s   	: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0); 	--result.
			 ovf 	: OUT STD_LOGIC -- 1 if overflow
	 );
END AddSub;

ARCHITECTURE structural_impl OF AddSub IS
    SIGNAL c1, c2	: STD_LOGIC; -- carry out of last two bits.
	 SIGNAL TMP 	: STD_LOGIC_VECTOR(size-1 DOWNTO 0); -- Resolves errors generated from having XOR in PORT MAP
	 
	 COMPONENT ADD IS
		 GENERIC (size : INTEGER := 16); -- Constant integer so we can change data-width with ease
		 PORT (A, B	: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
				 Cin	: IN  STD_LOGIC;
				 Cout	: OUT STD_LOGIC;
				 S		: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0)
		 );
    END COMPONENT;

	 BEGIN 
	 -- add non sign bits
		  TMP <= b(size-1 DOWNTO 0 ) xor (size-1 DOWNTO 0 => sub);
	 Ai : ADD GENERIC MAP(size)
		PORT MAP(a(size-1 DOWNTO 0),TMP,sub,c1,s(size-1 DOWNTO 0));
	-- add sign bits
	 --As: Adder generic map(1)
		--port map(a(size-1 downto 0),TMP,c1,c2,s(size-1 downto 0));
END structural_impl;

-- https://allaboutfpga.com/vhdl-code-for-4-bit-adder-subtractor/
-- VHDL Adder / Subtractor implmentation

-- TEXTBOOK REFERENCE: PAGE 235 ( 10.3 Negative numbers and subtraction )