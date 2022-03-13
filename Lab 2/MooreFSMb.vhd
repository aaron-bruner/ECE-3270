LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MooreFSMb IS
	port(
		SW    : IN STD_LOGIC_VECTOR(3 downto 0); -- rst, alt10k, alt25k, smooth
		LEDR : OUT STD_LOGIC_VECTOR(5 downto 0); -- no-electronics, seat-belt, 3->0 currentState
		KEY  : IN STD_LOGIC_VECTOR(3 DOWNTO 0)); -- clk
END MooreFSMb;

ARCHITECTURE struct OF MooreFSMb IS
COMPONENT MooreFSM IS
port(
    clk: IN std_logic;
    rst: IN std_logic;
    input: IN std_logic_vector(2 downto 0);			-- alt10k, alt25k, smooth
    signDisplay: OUT std_logic_vector(1 downto 0);	-- no-electronics, seat-belt
	 currentState: OUT std_logic_vector(3 downto 0));
END COMPONENT;

begin 
dut : MooreFSM
port map(
	 clk				=>	KEY(0),
	 rst				=>	SW(3),
	 input			=>	SW(2 downto 0),
	 signDisplay	=>	LEDR(5 DOWNTO 4),
	 currentState	=>	LEDR(3 downto 0));
end struct;