-- Board Code - Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab3b IS
    GENERIC (size : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( SW   : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);
			 KEY  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			 LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END lab3b;

ARCHITECTURE main OF lab3b IS

COMPONENT lab3
    GENERIC (size : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( Clock, Run, Resetn	: IN  STD_LOGIC;
			 DIN     				: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			 Bus0 					: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			 Done    				: OUT STD_LOGIC);
END COMPONENT;

BEGIN
   dut : lab3
   GENERIC MAP(size)
   PORT MAP(KEY(0),SW(9),SW(8),SW(7 DOWNTO 0),LEDR(7 DOWNTO 0),LEDR(9));
END main;