-- HEAD - Lab 4 (Bit-Pair Recoded Multiplier [2-to-1 Multiplexer])
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY HEAD IS
    GENERIC (b,x : INTEGER := 8); -- Constant integer so we can change data-width with ease
    PORT( clk,start,reset				: IN STD_LOGIC;
			 MULTIPLICAND,MULTIPLIER	: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 
			 busy,done		: OUT STD_LOGIC;
			 finalResult	: OUT STD_LOGIC_VECTOR(2*b-1 DOWNTO 0));
end HEAD;

ARCHITECTURE mixed OF HEAD IS
	--SIGNAL zeroX : STD_LOGIC_VECTOR(b-1 DOWNTO 0) := (others => '0'); -- Generate a (b-1 DOWNTO 0) of 0's for 0x

	
COMPONENT REGA
    PORT( clk				: IN STD_LOGIC;
			 loadreg 		: IN STD_LOGIC; -- Signal to check if we need to fill the register with all 0's
			 multiplicand 	: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0); -- Multiplicand provided from input
			 
			 oneX				: OUT STD_LOGIC_VECTOR(b DOWNTO 0);	-- From our recoding schemes we know that the only operations we will ever need
			 twoX				: OUT STD_LOGIC_VECTOR(b DOWNTO 0); -- for radix-4 recoding is 1x, 2x, -1x and -2x of the multiplicant. We calculate these
			 negOneX			: OUT STD_LOGIC_VECTOR(b DOWNTO 0); -- and keep them avaliable for quick reference.
			 negTwoX			: OUT STD_LOGIC_VECTOR(b DOWNTO 0));
END COMPONENT;
	
COMPONENT REGB
    PORT( clk              : IN  STD_LOGIC;
			 multiplier       : IN  STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 loadreg,shiftreg : IN  STD_LOGIC;
			 REGC 				: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);			-- Two bits from REGC that are shifted into REGB
			 
			 finalProduct		: OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0);  	-- After 4 ADD/SHIFT operations this will be the lower 8 bits of our result
			 recodeOperation  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));		-- Three bit code to select 1x, 2x, -1x or -2x
END COMPONENT;

COMPONENT REGC
    PORT( clk,loadreg,shiftreg,add : IN  STD_LOGIC;
			 REGCd 					 	  : IN  STD_LOGIC_VECTOR(b DOWNTO 0);	-- The partial product of our additions

			 REGCout					  	  : OUT STD_LOGIC_VECTOR(b DOWNTO 0); 	-- Result from adding what we currently have in REGC & either 1x, 2x, -1x or -2x
			 REGB							  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);  -- Two LSB that are sent to REGB
			 finalProduct			 	  : OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0));-- After 4 ADD/SHIFT operations this will be the lower 8 bits of our result
END COMPONENT;

COMPONENT REGD
    PORT( clk,loadreg,count : IN  STD_LOGIC;
			 done					 : OUT STD_LOGIC);
END COMPONENT;

COMPONENT FSM

	 PORT( clk,start,reset,regD : IN  STD_LOGIC;
	 		 busy,loadreg,shiftreg,addreg,count,done : OUT STD_LOGIC);
END COMPONENT;
	
COMPONENT ADD
	 PORT (A, B	: IN  STD_LOGIC_VECTOR(x-1 DOWNTO 0);
	       --Cin	: IN  STD_LOGIC; -- Always 0
			 --Cout	: OUT STD_LOGIC; -- We don't care about overflow
			 S		: OUT STD_LOGIC_VECTOR(x-1 DOWNTO 0)
	 );
END COMPONENT;	

COMPONENT MUX
    PORT( oneX				: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 twoX				: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 negOneX			: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 negTwoX			: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 
			 S		: IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 	-- Select
			 m		: OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0)	-- Output
			);
end COMPONENT;

COMPONENT smallMUX
    PORT( input			: IN STD_LOGIC_VECTOR(b-1 DOWNTO 0); -- Input from ADDER
			 loadreg			: IN STD_LOGIC;							 -- [ OUR SELECT LINE ]
			 
			 --S		: IN  STD_LOGIC_VECTOR(2 DOWNTO 0); 	-- Select
			 m		: OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0)	-- Output
			);
end COMPONENT;
	
SIGNAL Sloadreg : STD_LOGIC;
SIGNAL SoneX, StwoX, SnegOneX, SnegTwoX : STD_LOGIC_VECTOR(b DOWNTO 0);
	
	
	BEGIN
		-- If a string below begins with an 'S' then it's a SIGNAL line
		registerA : REGA
			GENERIC MAP(b)
			PORT MAP(clk,				-- Input clock
						Sloadreg,		-- FSM Output
						MULTIPLICAND,	-- Input multiplicand from switches
						SoneX,			-- Output  1 x MULTIPLICAND
						StwoX,			-- Output  2 x MULTIPLICAND
						SnegOneX,		-- Output -1 x MULTIPLICAND
						SnegTwoX			-- Output -2 x MULTIPLICAND
			);
		
		registerD : REGD
			GENERIC MAP(b)
			PORT MAP(clk,			-- Input clock
						Sloadreg,	-- FSM Output
						count,		-- 
						done			-- 
			);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
END mixed;