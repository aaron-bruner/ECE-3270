-- Part Two Board - Lab 1 (Determining Valid Fibonacci Number)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY p2b IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 downto 0));
END p2b;
ARCHITECTURE struct OF p2b IS
COMPONENT p2
PORT (
valid : OUT STD_LOGIC;
input  : IN  STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : p2
PORT MAP (
input  => sw(3 DOWNTO 0),
valid => ledr(0));

end struct;

-- This was pretty much a copy of Lab 1 board code but just changing variable names.