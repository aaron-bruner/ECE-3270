LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MooreFSMb IS
	port(
		SW    : IN STD_LOGIC_VECTOR(3 downto 0);
		LEDR : OUT STD_LOGIC_VECTOR(5 downto 0);
		KEY  : IN STD_LOGIC_VECTOR(3 DOWNTO 0));
END MooreFSMb;

ARCHITECTURE struct OF MooreFSMb IS
COMPONENT MooreFSM IS
port(
    clk: IN std_logic;
    rst: IN std_logic;

    input: IN std_logic_vector(2 downto 0);		-- alt10k, alt25k, smooth
    signDisplay: OUT std_logic_vector(1 downto 0);	-- no-electronics, seat-belt
	 currentState: OUT std_logic_vector(3 downto 0)	-- Sign Output
);

END COMPONENT;

begin 
mmmap : MooreFSM
port map(
	 clk		=>	KEY(0),
	 rst		=>	SW(3),
	 input	=>	SW(2 downto 0),
	 signDisplay	=>	LEDR(5 DOWNTO 4),
	 currentState	=>	LEDR(3 downto 0)
);

end struct;
