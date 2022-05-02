-- REGB - Lab 4 (Bit-Pair Recoded Multiplier)
-- Aaron Bruner
-- C16480080

-- The purpose OF REGB is to hold the lower 8 bits OF our result. In addition, REGB will
-- hold our multiplier and determine what Bit-Pair recoding operation for us to perform to REGC.
-- We keep shifting by two as we move our data in from REGC and our of REGB.

-- There are only a few operations that actually occur with register B. The first operation is
-- to load the regsiter with the multiplier. If we need to do this then the 'loadreg' signal will be
-- high. We can't forget about our dummy bit which is always 0. If we're not loading the register then
-- we're shifting in two LSB from C and putting them into the 2 MSB of B.

LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;
USE ieee.STD_LOGIC_unsigned.all;

ENTITY REGB IS
    GENERIC(b : INTEGER := 8);
    PORT( clk              : IN  STD_LOGIC;
			 multiplier       : IN  STD_LOGIC_VECTOR(b-1 DOWNTO 0);
			 loadreg,shiftreg : IN  STD_LOGIC;
			 REGC 				: IN  STD_LOGIC_VECTOR(1 DOWNTO 0);			-- Two bits from REGC that are shifted into REGB
			 
			 finalProduct		: OUT STD_LOGIC_VECTOR(b-1 DOWNTO 0);  	-- After 4 ADD/SHIFT operations this will be the lower 8 bits of our result
			 recodeOperation  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));		-- Three bit code to select 1x, 2x, -1x or -2x
END REGB;
--Begin the architecture, why is it called mixed?
ARCHITECTURE mixed OF REGB IS
	--SIGNAL internal_d: STD_LOGIC_VECTOR(b-1 DOWNTO 0);
	SIGNAL REGBdata: STD_LOGIC_VECTOR(b DOWNTO 0);

	BEGIN
    --You should expect a comment explaining the process in your own code.
    --However, this is omitted here so you can figure it out!
    PROCESS(clk,loadreg,shiftreg)
		BEGIN
		 IF(RISING_EDGE(clk)) THEN
			  IF(loadreg = '1') THEN
					REGBdata(b DOWNTO 1) <= multiplier;		-- 8 MSB of REGB = multiplier
					REGBdata(0) <= '0';							-- Dummy Bit always first 0
			  ELSIF shiftreg = '1' THEN
					  REGBdata(b DOWNTO 0) <= REGC(1 DOWNTO 0) & REGBdata(b DOWNTO 2); -- REGB = (CCBBBBBBD)
					  -- We have 9 total bits avalible. The two MSB are the two LSB of C, the next six bits are the previous 6 MSB (Right shift by two), then the last bit is
					  -- still our dummy bit. It's odd to think this but the dummy bit is not really a dummy bit. I say this because the dummy bit is not always 0, it can be 1.
			 END IF;
		 END IF;
	 END PROCESS;
	 -- Why is this not in process? Because it needs to update no matter what. These values are constantly changing 
    recodeOperation(2 DOWNTO 0) <= REGBdata(2 DOWNTO 0); -- 3-bit recode for our MUX (LSB of REG B)
    finalProduct 					  <= REGBdata(b DOWNTO 1); -- The upper 8 bits of REG B for our final product
END mixed;

-- Code copied from Lab 0