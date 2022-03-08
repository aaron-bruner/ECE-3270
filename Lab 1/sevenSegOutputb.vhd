-- Part Four Board - Lab 1 (Display to 7-Segment Display)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY sevenSegOutputb IS
port(SW: IN STD_LOGIC_VECTOR(4 downto 0);
HEX0: OUT STD_LOGIC_VECTOR(6 downto 0)); -- Taken from manual. We're using 7-Seg instead of LEDs
END sevenSegOutputb;
ARCHITECTURE struct OF sevenSegOutputb IS
COMPONENT sevenSegOutput
PORT (
sevenSegIn  : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
sevenSegOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : sevenSegOutput
PORT MAP (
sevenSegIn  => sw(4 DOWNTO 0),
sevenSegOut => HEX0(6 DOWNTO 0));

end struct;

-- This was pretty much a copy of Lab 1 board code but just changing variable names.