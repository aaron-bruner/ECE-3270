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
		IF reset = '0' THEN
			state <= waitState;
		ELSE
			IF RISING_EDGE(clk) THEN
				CASE state IS
					WHEN waitState =>
						IF start = '1' THEN
							state <= loadState;
						ELSE
							state <= waitState;
						END IF;
					WHEN loadState =>
						state <= addState;
					WHEN addState => 
						state <= shiftState;
					WHEN shiftState =>
						IF regD = '1' THEN
							state <= doneState;
						ELSE
							state <= addState;
						END IF;
					WHEN doneState =>
						state <= waitState;
				END CASE;
			END IF;
		END IF;
	END PROCESS;
	
	PROCESS (state) BEGIN
		CASE state IS
			WHEN waitState =>
				busy 		<= '0';
				loadreg 	<= '0';
				shiftreg <= '0';
				addreg 	<= '0';
				count 	<= '0';
				done 		<= '0';
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
				shiftreg <= '0';
				addreg 	<= '0';
				count 	<= '0';
				done 		<= '1';
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
