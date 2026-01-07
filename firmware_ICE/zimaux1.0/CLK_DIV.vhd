library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CLK_DIV is
	port (	
			CLK	   	: in		std_logic;
			RESET			: in		std_logic; 
			DCNT			: in		std_logic_vector(15 downto 0);
			CLKOUT		: out		std_logic
	);
end CLK_DIV;

architecture behav of CLK_DIV is

	signal t_clk : std_logic;
	signal t_cnt : std_logic_vector(15 downto 0) := x"0000";
	signal divcnt : std_logic_vector(15 downto 0) := x"0000";

	type sm_cnt is (s_0, s_1, s_2);
	signal cnt_state : sm_cnt := s_0;
	
	type sm0 is (s_0, s_1, s_2, s_3);
	signal state0 : sm0 := s_0;

	signal t0on : std_logic_vector(15 downto 0);
	signal t0off : std_logic_vector(15 downto 0);
	
	signal cnt : std_logic_vector(1 downto 0);
	signal clk2 : std_logic;
	signal clk3 : std_logic;
	
	
begin
		
	divcnt	<= DCNT when reset = '0' else x"0001";

	CLKOUT	<= '1'	when divcnt = x"0000" else
			   CLK	when divcnt = x"0001" else
			   clk2	when divcnt = x"0002" else 
			   clk3	when divcnt = x"0003" else
			   t_clk;
			
				   
	-----DAC Devide -------------------------------
			   
	process(CLK, RESET) -- Devide 2
	begin
		if RESET = '1' then
			cnt 	<= (others => '0');
		elsif rising_edge(CLK) then
			cnt	<= cnt + '1';
		end if;
	end process;
	
	clk2 <= cnt(0);
	
	process(CLK, RESET) -- Devide 3
	begin
		if RESET = '1' then
			cnt_state	<= s_0;
		elsif rising_edge(CLK) then
			case cnt_state is
				when s_0 =>
					cnt_state <= s_1;
					clk3 <= '1';
				when s_1 =>
					cnt_state <= s_2;
					clk3 <= '0';
				when s_2 =>
					cnt_state <= s_0;
					clk3 <= '0';
				when others =>
			end case;
		end if;
	end process;
	
	
	process(CLK, RESET, divcnt) -- Devide n
	begin
		if RESET = '1' then
			state0	<= s_0;
		elsif rising_edge(CLK) then
			case state0 is
				when s_0 =>
					if divcnt >= x"0004" then
						t_clk <= '1';
						t0on    <= '0' & divcnt(15 downto 1);	
						t0off	<= divcnt - ('0' & divcnt(15 downto 1));
						state0 <= s_1;
						
					end if;
				when s_1 =>
					t_clk <= '1';
					t0on	<= t0on - '1';
					if t0on = x"0002" then
						state0	<= s_2;
					end if;
					
				when s_2 =>
					t_clk <= '0';
					state0	<= s_3;
					
				when s_3 =>
					t0off	<= t0off - '1';
					t_clk <= '0';
					if t0off = x"0002" then
						state0	<= s_0;
					end if;
					
				when others =>
			end case;
		end if;
	end process;			
	
end behav;