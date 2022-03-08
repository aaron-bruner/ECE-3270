-- Part Three Board - Lab 1 (Determining valid fibonacci numbers)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY p3b IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0));
END p3b;
ARCHITECTURE struct OF p3b IS
COMPONENT p3
PORT (
output : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
input  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : p3
PORT MAP (
input  => sw(3 DOWNTO 0),
output => ledr(4 DOWNTO 0));

end struct;

-- This was pretty much a copy of Lab 1 board code but just changing variable names.