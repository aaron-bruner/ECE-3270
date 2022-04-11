-- DLatch - Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY DFlipFlop IS
    GENERIC (size : INTEGER := 16); -- Constant integer so we can change data-width with ease
    PORT( clk	: IN  STD_LOGIC;
			 S		: IN  STD_LOGIC;
			 d		: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			 q		: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0)
        );
END DFlipFlop;
--Begin the architecture, why is it called mixed?
ARCHITECTURE mixed OF DFlipFlop IS
    SIGNAL internal_d: STD_LOGIC_VECTOR(size-1 DOWNTO 0);

	 BEGIN
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    PROCESS(clk,S)
        BEGIN
        IF (RISING_EDGE(clk) and S='1') THEN
            internal_d <= d;
        ELSE
		      internal_d <= internal_d;
        END IF;
    END PROCESS;
    q <= internal_d;
END mixed;

-- Code copied from Lab 0