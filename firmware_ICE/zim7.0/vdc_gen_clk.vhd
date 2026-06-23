library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vdc_gen_clk is
	port (	
			ICLK			: in		std_logic; -- 20.48000MHz
			OCLK		   : out		std_logic;
			DIVIDE		: in 		std_logic_vector(15 downto 0)
	);
end vdc_gen_clk;

architecture behav of vdc_gen_clk is
	signal t_clk : std_logic;
	
	type state is (s_0, s_1, s_2, s_3);
	signal div_state : state := s_0;

	signal t0on : std_logic_vector(15 downto 0);
	signal t0off : std_logic_vector(15 downto 0);

begin
		
	
	OCLK		<= t_clk;
	
	process(ICLK,DIVIDE) -- Devide n
	begin
		if rising_edge(ICLK) then
			case div_state is
				when s_0 =>
						t_clk <= '1';
						t0on    <= '0' & DIVIDE(15 downto 1);	
						t0off	<= DIVIDE - ('0' & DIVIDE(15 downto 1));
						div_state <= s_1;
				when s_1 =>
					t_clk <= '1';
					t0on	<= t0on - '1';
					if t0on = x"0002" then
						div_state	<= s_2;
					end if;
					
				when s_2 =>
					t_clk <= '0';
					div_state	<= s_3;
					
				when s_3 =>
					t0off	<= t0off - '1';
					t_clk <= '0';
					if t0off = x"0002" then
						div_state	<= s_0;
					end if;
				when others =>
			end case;
		end if;
	end process;			
end behav;