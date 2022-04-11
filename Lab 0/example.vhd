--This is example.vhd, used for Lab0.
--Read over this code and determine the purpose.
--Further, what hardware does this represent?
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY example IS
	PORT (
		d : IN std_logic_vector(3 DOWNTO 0);
		clk : IN std_logic;
		q : OUT std_logic_vector(3 DOWNTO 0)
	);
END example;
--Begin the architecture, why is it called mixed?
ARCHITECTURE mixed OF example IS
	SIGNAL internal_d : std_logic_vector(3 DOWNTO 0);
BEGIN
	--You should expect a comment explaining the process in your own code.
	--However, this is omitted here so you can figure it out!
	PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			internal_d <= d;
		ELSE
			internal_d <= internal_d;
		END IF;
	END PROCESS;
	q <= internal_d;
END mixed;