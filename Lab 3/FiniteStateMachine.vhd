-- FSM - Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY FiniteStateMachine IS
	GENERIC (size : INTEGER := 16);
	PORT (
		clk, Run, Resetn : IN STD_LOGIC;
		IR : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		FSMout : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		FSMin : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
		Done : OUT STD_LOGIC
	);
END FiniteStateMachine;

ARCHITECTURE struct OF FiniteStateMachine IS
	TYPE fsm_state IS (T0, T1, T2, T3);
	SIGNAL state : fsm_state;
	SIGNAL RegX, RegY : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL II : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL output : STD_LOGIC_VECTOR(9 DOWNTO 0);
	SIGNAL input : STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL DoneState : STD_LOGIC;

BEGIN
	PROCESS (clk, Resetn) BEGIN
	IF Resetn = '0' THEN
		state <= T0;
	ELSE
		IF RISING_EDGE(clk) THEN
			CASE state IS
				WHEN T0 => 
					IF Run = '1' THEN
						state <= T1;
					END IF;
				WHEN T1 => 
					IF II = "00" THEN
						state <= T0;
					ELSIF II = "01" THEN
						state <= T0;
					ELSIF II = "10" THEN
						state <= T2;
					ELSIF II = "11" THEN
						state <= T2;
					END IF;
				WHEN T2 => 
					state <= T3;
				WHEN T3 => 
					state <= T0;
			END CASE;
		END IF;
	END IF;
END PROCESS;
 
PROCESS (IR) BEGIN
	CASE IR(5 DOWNTO 3) IS -- Figure out where the X value needs to be stored
		WHEN "000" => RegX <= "00000001"; -- R0
		WHEN "001" => RegX <= "00000010"; -- R1
		WHEN "010" => RegX <= "00000100"; -- R2
		WHEN "011" => RegX <= "00001000"; -- R3
		WHEN "100" => RegX <= "00010000"; -- R4
		WHEN "101" => RegX <= "00100000"; -- R5
		WHEN "110" => RegX <= "01000000"; -- R6
		WHEN "111" => RegX <= "10000000"; -- R7
		WHEN OTHERS => RegX <= "00000000";
	END CASE;
	CASE IR(2 DOWNTO 0) IS -- Figure out where the Y value needs to be stored
		WHEN "000" => RegY <= "00000001"; -- R0
		WHEN "001" => RegY <= "00000010"; -- R1
		WHEN "010" => RegY <= "00000100"; -- R2
		WHEN "011" => RegY <= "00001000"; -- R3
		WHEN "100" => RegY <= "00010000"; -- R4
		WHEN "101" => RegY <= "00100000"; -- R5
		WHEN "110" => RegY <= "01000000"; -- R6
		WHEN "111" => RegY <= "10000000"; -- R7
		WHEN OTHERS => RegY <= "00000000";
	END CASE;
	II <= IR(7 DOWNTO 6);
END PROCESS;
 
PROCESS (II, state, RegX, RegY) BEGIN
CASE state IS
	WHEN T0 => 
		input <= '1' & (others => '0'); -- "100...0"
		output <= (others => '0');
		DoneState <= '0';
	WHEN T1 =>
		input <= (others => '0');
		output(7 DOWNTO 0) <= RegX;
		IF II = "00" THEN -- [mv]
			input(7 DOWNTO 0) <= RegX;
			output(7 DOWNTO 0) <= RegY;
			DoneState <= '1';
		ELSIF II = "01" THEN -- [mvi]
			output(9) <= '1';
			input(7 DOWNTO 0) <= RegX;
			DoneState <= '1';
		ELSIF II = "10" THEN -- [add]
			output(7 DOWNTO 0) <= RegX;
			input(9) <= '1';
			DoneState <= '0';
		ELSIF II = "11" THEN -- [sub]
			output(7 DOWNTO 0) <= RegX;
			input(9) <= '1';
			DoneState <= '0';
		END IF;
	WHEN T2 =>
	input(9) <= '0';
	output(7 DOWNTO 0) <= RegY;
	input(8) <= '1';
		IF II = "10" THEN -- [add]
			input(10) <= '0';
		ELSIF II = "11" THEN -- [sub]
			input(10) <= '1';
		END IF;
	DoneState <= '0';
	WHEN T3 =>
		output(7 DOWNTO 0) <= "00000000";
		input(8) <= '0';
		output(8) <= '1';
		input(7 DOWNTO 0) <= RegX;
		DoneState <= '1';
	END CASE;
END PROCESS;
FSMout <= output;
FSMin <= input;
Done <= DoneState;
END struct;