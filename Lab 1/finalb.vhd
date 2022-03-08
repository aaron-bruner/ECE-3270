-- Part Five Board - Lab 1 (Determining valid fibonacci numbers)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY finalb IS
port(SW: IN STD_LOGIC_VECTOR(9 downto 0);
HEX0: OUT STD_LOGIC_VECTOR(6 downto 0);
LEDR: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END finalb;
ARCHITECTURE struct OF finalb IS
COMPONENT final
PORT ( sIn 				: IN  STD_LOGIC;
		 data 			: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		 outputTo7Seg	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		 isFib 			: OUT STD_LOGIC);
END COMPONENT;
BEGIN
--Create the device and map it to the appropriate pins
dut : final
PORT MAP (
sIn => SW(9),
data => SW(3 DOWNTO 0),
outputTo7Seg => HEX0,
isFib => LEDR(9));
end struct;

-- This was pretty much a copy of Lab 1 board code but just changing variable names.