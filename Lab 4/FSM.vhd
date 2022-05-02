-- FSM - Lab 4 (Bit-Pair Recoded Multiplier)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY FSM IS
	 PORT( clk,start,reset,regD : IN  STD_LOGIC;
	 		 busy,loadreg,shiftreg,addreg,count,done : OUT STD_LOGIC);
END FSM;

ARCHITECTURE mixed OF FSM IS
	 TYPE fsm_state IS (waitState,loadState,addState,shiftState,doneState);
	 SIGNAL state:fsm_state;
BEGIN
	PROCESS (clk, reset) BEGIN -- Process to handle our state transition
		IF reset = '1' THEN
			state <= waitState;
		ELSE
			IF RISING_EDGE(clk) THEN
				CASE state IS
					WHEN waitState =>
						IF start = '1' THEN
							state <= loadState;		-- Ready to multiply? Move to load
						ELSE
							state <= waitState;
						END IF;
					WHEN loadState =>					-- After load we add
						state <= addState;
					WHEN addState => 
						state <= shiftState;			-- After shift we go back to add UNLESS we're done
					WHEN shiftState =>
						IF regD = '1' THEN
							state <= doneState;
						ELSE
							state <= addState;
						END IF;
					WHEN doneState =>					-- Once we're done we go back to waiting
						state <= waitState;
				END CASE;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (state) BEGIN
		CASE state IS
			WHEN waitState =>
				busy 		<= '0'; -- Performing multiplication - Only reset can break
				loadreg 	<= '0'; -- Load all registers
				shiftreg <= '0'; -- Shift REGC & REGB
				addreg 	<= '0'; -- Add MUX out & REGC
				count 	<= '0'; -- Add/Shift -> Count ... Add/Shift -> Count ... 
				done 		<= '0'; -- We're only done if we're at last A/S operation and regD = 1
			WHEN loadState =>
				busy 		<= '1';
				loadreg 	<= '1';
				shiftreg <= '0';
				addreg 	<= '0';
				count 	<= '0';
				done 		<= '0';
			WHEN addState =>
				busy 		<= '1';
				loadreg 	<= '0';
				shiftreg <= '0';
				addreg 	<= '1';
				count 	<= '0';
				done 		<= '0';
			WHEN shiftState =>
				busy 		<= '1';
				loadreg 	<= '0';
				shiftreg <= '1';
				addreg 	<= '0';
				count 	<= '1';
			WHEN doneState =>
				busy 		<= '1';
				loadreg 	<= '0';
				shiftreg <= '0';
				addreg 	<= '0';
				count 	<= '0';
				done 		<= '1';
		END CASE;
	END PROCESS;
END mixed;
