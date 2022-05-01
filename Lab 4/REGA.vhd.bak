-- REGA - Lab 4 (Bit-Pair Recoded Multiplier)
-- Aaron Bruner
-- C16480080

-- The purpose of REGA is to hold our multiplicand and the required 1x, 2x, -1x and -2x operations 
-- done to the multiplicand. 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY REGA IS
    GENERIC (b : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( clk				: IN STD_LOGIC;
			 loadreg 		: IN STD_LOGIC; -- Signal to check if we need to fill the register with all 0's
			 multiplicand 	: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0); -- Multiplicand provided from input
			 
			 oneX				: OUT STD_LOGIC_VECTOR(b DOWNTO 0);	-- From our recoding schemes we know that the only operations we will ever need
			 twoX				: OUT STD_LOGIC_VECTOR(b DOWNTO 0); -- for radix-4 recoding is 1x, 2x, -1x and -2x of the multiplicant. We calculate these
			 negOneX			: OUT STD_LOGIC_VECTOR(b DOWNTO 0); -- and keep them avaliable for quick reference.
			 negTwoX			: OUT STD_LOGIC_VECTOR(b DOWNTO 0));
END REGA;
--Begin the architecture, why is it called mixed?
ARCHITECTURE mixed OF REGA IS
    --SIGNAL internal_d: STD_LOGIC_VECTOR(b-1 DOWNTO 0);
	 SIGNAL temp : STD_LOGIC_VECTOR(b DOWNTO 0);

	 BEGIN
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    PROCESS(clk,loadreg,multiplicand)
        BEGIN

	 			oneX(b-1 DOWNTO 0) <= multiplicand;
				oneX(b) <= multiplicand(b-1);			-- SIGN EXTEND
				
				twoX(b DOWNTO 1) <= multiplicand;
				twoX(0) <= '0';							-- << 1 (LEFT SHIFT == MULT BY TWO)
				
				temp(b-1 DOWNTO 0) <= multiplicand; -- Load a temp variable with the multiplicand sign extended
				temp(b) <= multiplicand(b-1);
				negOneX <= not(temp) + 1; -- 2's of the temp register which is multiplicand + 1
				
				negTwoX(b DOWNTO 1) <= not(multiplicand) + 1; -- Two's Complement
				negTwoX(0) <= '0';
		  
    END PROCESS; 
END mixed;

-- Code copied from Lab 0