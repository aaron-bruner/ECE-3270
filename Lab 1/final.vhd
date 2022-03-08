-- Part Five - Lab 1
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity final is
	port( sIn 				: IN  STD_LOGIC;
			data  			: IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
			outputTo7Seg 	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			isFib 			: OUT STD_LOGIC);
end final;

architecture main of final is -- Signals are how we connect the different components in our lab. Reference L02-Slide14

SIGNAL dataNextFib: STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL longData: STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL MUXoutToDisp: STD_LOGIC_VECTOR(4 DOWNTO 0);

COMPONENT MUX
PORT ( s : IN  STD_LOGIC;
		 x : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		 y : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		 m : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
END COMPONENT;

COMPONENT FibChk
PORT ( fibToCheck : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		 valid 		: OUT STD_LOGIC);
END COMPONENT;

COMPONENT nextFib
PORT ( findNextInput : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 findNextOutput: OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
END COMPONENT;

COMPONENT sevenSegOutput
PORT ( sevenSegIn   : IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		 sevenSegOut : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;


BEGIN

fibonacciCheck: FibChk
PORT MAP ( fibToCheck => data, -- 4-Bit
			  valid => isFib		 -- 1-Bit
);

fibonacciNext: nextFib
PORT MAP ( findNextInput => data, -- 4-Bit
			  findNextOutput => dataNextFib -- 5-Bit
);

-- There is an issue here where to put our data into the MUX we need it to be 5-Bits long
-- The solution is to add a leading zero using concatenation : https://www.edaboard.com/threads/vhdl-concatenation-and-integer-to-single-bit-question.155878/ POST #2
--longData <= (4 DOWNTO 4 => '0') & data;
longData <= "0" & data;

getOutput: MUX
PORT MAP ( s => sIn,
			  x => longData,
			  y => dataNextFib,
			  m => MUXoutToDisp
);

display: sevenSegOutput
PORT MAP ( sevenSegIn => MUXoutToDisp,
			  sevenSegOut => outputTo7Seg
);
end main;