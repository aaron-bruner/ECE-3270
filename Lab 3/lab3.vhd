-- Lab 3 (Simple Processor)
-- Aaron Bruner
-- C16480080

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

-- Following lab manual's part 1 instructions of using only Clock, Run, Resetn, DIN, bus (cannot use bus, reserved) and Done
entity lab3 is
    generic (size : integer := 16);
	 port ( Clock,Run,Resetn	: IN  STD_LOGIC;
			  DIN					: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			  bus0		 		: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0);
			  Done 				: OUT STD_LOGIC);
end lab3;

ARCHITECTURE struct OF lab3 IS

-- The best way to read all of these signals is by looking at figure 1. 
-- These are the wires that connect all of the components together.
    SIGNAL Reg0 ,Reg1 ,Reg2 ,Reg3 ,Reg4 ,Reg5 ,Reg6 ,Reg7 ,A,G,S,sub,ovf : STD_LOGIC;
    SIGNAL Reg0d,Reg1d,Reg2d,Reg3d,Reg4d,Reg5d,Reg6d,Reg7d 					 : STD_LOGIC_VECTOR(size-1 DOWNTO 0);
    SIGNAL Reg0q,Reg1q,Reg2q,Reg3q,Reg4q,Reg5q,Reg6q,Reg7q 					 : STD_LOGIC_VECTOR(size-1 DOWNTO 0);
	 SIGNAL data,Gq,Gd,Aq,Ad 										  					 : STD_LOGIC_VECTOR(size-1 DOWNTO 0);
	 SIGNAL MUXoutOut     											  					 : STD_LOGIC_VECTOR(9 		DOWNTO 0); 
	 SIGNAL MUXoutIn													  					 : STD_LOGIC_VECTOR(11 		DOWNTO 0);
	 SIGNAL IR 																				 : STD_LOGIC_VECTOR(7 		DOWNTO 0);

-- Input all of our components for use.
    COMPONENT DFlipFlop 			GENERIC(size: integer := 8);
        PORT( clk : IN  STD_LOGIC;
              S 	: IN  STD_LOGIC;
              d 	: IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
	           q 	: OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0)); 
    END COMPONENT;
	 
	 COMPONENT AddSub 				GENERIC (size : integer := 8);
	     PORT( a,b : IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
				  sub : IN  STD_LOGIC;
				  s   : OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0);
				  ovf : OUT STD_LOGIC);
    END COMPONENT;
	 
	 COMPONENT MUX 					GENERIC (size: integer := 16);
        PORT( R0,R1,R2,R3,R4,R5,R6,R7 : IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
				  DIN,G                   : IN  STD_LOGIC_VECTOR(size-1 DOWNTO 0);
				  S							  : IN  STD_LOGIC_VECTOR(9		  DOWNTO 0);    
				  m                 		  : OUT STD_LOGIC_VECTOR(size-1 DOWNTO 0)); 
    END COMPONENT;
	 
	 COMPONENT FiniteStateMachine GENERIC (size: integer := 16);
	 PORT( clk,Run,Resetn : IN  STD_LOGIC;
			 IR          	 : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
			 FSMout      	 : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	       FSMin       	 : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
			 Done        	 : OUT STD_LOGIC);
    END COMPONENT;
	 
BEGIN

-- Put everything that is in figure 1 in the report here and wire it together.
    R0 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg0,data(size-1 DOWNTO 0),Reg0q(size-1 DOWNTO 0));
	 R1 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg1,data(size-1 DOWNTO 0),Reg1q(size-1 DOWNTO 0));
	 R2 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg2,data(size-1 DOWNTO 0),Reg2q(size-1 DOWNTO 0));
	 R3 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg3,data(size-1 DOWNTO 0),Reg3q(size-1 DOWNTO 0));
	 R4 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg4,data(size-1 DOWNTO 0),Reg4q(size-1 DOWNTO 0));
	 R5 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg5,data(size-1 DOWNTO 0),Reg5q(size-1 DOWNTO 0));
	 R6 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg6,data(size-1 DOWNTO 0),Reg6q(size-1 DOWNTO 0));
	 R7 			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,Reg7,data(size-1 DOWNTO 0),Reg7q(size-1 DOWNTO 0));
	 RA  			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,A,	  data(size-1 DOWNTO 0),Aq(	size-1 DOWNTO 0));
	 RG  			: DFlipFlop 			GENERIC MAP(size) PORT MAP(Clock,G,	  Gd(	 size-1 DOWNTO 0),Gq(	size-1 DOWNTO 0));
	 DFFComp 	: DFlipFlop 			GENERIC MAP(8) 	PORT MAP(Clock,S,	  DIN( 7 	  DOWNTO 0),IR(	7 		 DOWNTO 0));
	 AddSubComp : AddSub 				GENERIC MAP(size) PORT MAP(Aq,	data,sub,						Gd,ovf);
    MUXComp 	: MUX 					GENERIC MAP(size) PORT MAP(Reg0q,Reg1q,Reg2q,Reg3q,Reg4q,Reg5q,Reg6q,Reg7q,DIN,Gq,MUXoutOut,data);
    FSMComp 	: FiniteStateMachine GENERIC MAP(size) PORT MAP(Clock,Run,Resetn,IR,MUXoutOut,MUXoutIn,Done);
	 
	-- Results
	 Reg0	<=	MUXoutIn(0);
	 Reg1	<=	MUXoutIn(1);
	 Reg2	<=	MUXoutIn(2);
	 Reg3	<=	MUXoutIn(3);
	 Reg4	<=	MUXoutIn(4);
	 Reg5	<=	MUXoutIn(5);
	 Reg6	<=	MUXoutIn(6);
	 Reg7	<=	MUXoutIn(7);
	 G		<=	MUXoutIn(8);
	 A		<=	MUXoutIn(9);
	 sub	<=	MUXoutIn(10);
    S		<=	MUXoutIn(11);
	 bus0	<=	data;

END struct;