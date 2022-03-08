-- Part Three Board - Lab 1 (Determining valid fibonacci numbers)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY p4b IS
port(SW: IN STD_LOGIC_VECTOR(3 downto 0);
HEX0: OUT STD_LOGIC_VECTOR(6 downto 0)); -- Taken from manual. We're using 7-Seg instead of LEDs
END p4b;
ARCHITECTURE struct OF p4b IS
COMPONENT p4
PORT (
output : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
input  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : p4
PORT MAP (
input  => sw(3 DOWNTO 0),
output => HEX0(6 DOWNTO 0));

end struct;

-- This was pretty much a copy of Lab 1 board code but just changing variable names.