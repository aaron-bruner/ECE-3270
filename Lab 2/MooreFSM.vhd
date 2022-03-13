LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY MooreFSM IS
port(
    clk: IN STD_LOGIC;
    rst: IN STD_LOGIC;
    input: IN STD_LOGIC_VECTOR(2 downto 0);			-- alt10k, alt25k, smooth
    signDisplay: OUT STD_LOGIC_VECTOR(1 downto 0);	-- no-electronics, seat-belt
	 currentState: OUT STD_LOGIC_VECTOR(3 downto 0));
END MooreFSM;


ARCHITECTURE impl OF MooreFSM IS
    TYPE fsm_state IS (gnd,alt10k,alt25k,smooth1,smooth2,smooth3,smooth4,smooth5);
    SIGNAL state:fsm_state;
begin

    process(clk,rst) begin
      if (rst = '0') then
			state <= gnd; -- Low Actitave
		elsif (RISING_EDGE(clk)) then
			case state is
				when gnd =>
					if    	input = "000" then state <= gnd;			-- No takeoff yet
						elsif input = "001" then state <= gnd;			-- No takeoff yet
						elsif input = "100" then state <= alt10k; 	-- Ascending to 10k
						else state <= gnd; 	end if;
				when alt10k =>
					if    	input = "100" then state <= gnd;			-- Decending to ground
						elsif input = "010" then state <= alt25k;		-- Acending to 25k
						elsif input = "001" then state <= alt10k;		-- Staying at 10K -> SMOOTH
						else state <= alt10k;	end if;
				when alt25k =>
					if    	input = "100" then state <= alt10k; 	-- Decending
						elsif input = "001" then state <= smooth1; 	-- Alt. 25k & SMOOTH then ++ smooth count
						else state <= alt25k;	end if;
				when smooth1 =>
					if    	input = "001" then state <= smooth2; 	-- Alt. 25k & SMOOTH then ++ smooth count
						elsif input = "100" then state <= alt10k; 	-- Decending
						elsif input = "010" then state <= alt25k; 	-- Turbulence 
						else state <= alt25k;	end if;
				when smooth2 =>
					if    	input = "001" then state <= smooth3; 	-- Alt. 25k & SMOOTH then ++ smooth count
						elsif input = "100" then state <= alt10k; 	-- Decending
						elsif input = "010" then state <= alt25k; 	-- Turbulence 
						else state <= alt25k;	end if;
				when smooth3 =>
					if    	input = "001" then state <= smooth4; 	-- Alt. 25k & SMOOTH then ++ smooth count
						elsif input = "100" then state <= alt10k; 	-- Decending
						elsif input = "010" then state <= alt25k; 	-- Turbulence 
						else state <= alt25k;	end if;
				when smooth4 =>
					if    	input = "001" then state <= smooth5; 	-- Alt. 25k & SMOOTH then ++ smooth count
						elsif input = "100" then state <= alt10k; 	-- Decending
						elsif input = "010" then state <= alt25k; 	-- Turbulence 
						else state <= alt25k;	end if;
				when smooth5 =>
					if    	input = "001" then state <= smooth5; 	-- Alt. 25k & SMOOTH & ALREADY SMOOTH 5 KEEP SMOOTH
						elsif input = "100" then state <= alt10k; 	-- Decending
						elsif input = "010" then state <= alt25k; 	-- Turbulence 
						else state <= alt25k;	end if;
			end case;
		end if; --end rising.  
    end process;
	 
	  with state select
	     signDisplay <= "11" when gnd,			-- On ground: No electronics & Seatbelts
		       		"00" when smooth5,	-- Above 25k & Smooth: Electronics & No Seatbelts
						"01" when others;		-- Climbing or Decending

  with state select		-- Output binary counter to debug current state on board
	     currentState <= "0001" when gnd,
								"0010" when alt10k,
								"0011" when alt25k,
								"0100" when smooth1,
								"0101" when smooth2,
								"0110" when smooth3,
								"0111" when smooth4,
								"1000" when smooth5;

end impl;


-- Notes:

-- Whenever the airplane passes 10 000 (25 000) feet moving in either direction,
-- alt10k (alt25k) will pulse high for one cycle.

-- If the plane is not climbing, descending, or experiencing turbulence,
-- the smooth signal will be set to high.

-- The state machine should set the noelectronics signal to high when the plane is below 10 000 feet,
-- and low otherwise.

-- The seatbelt signal should be low only when the plane is above 25 000 feet and smooth has been
-- asserted for at least five cycles.

-- Assume that the plane is initially on the ground.
