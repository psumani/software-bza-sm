library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- DAC8830ICD SPI MASTER!!

entity DAC8830 is
Port (
	CLK 		: in 		std_logic; 		-- system clock
	DATA		: in 		std_logic_vector(15 downto 0);
	SCLK 		: out 	std_logic; 		-- SPI clock
	CS 		: out 	std_logic; 		-- SPI chip select, active in low
	MOSI 		: out 	std_logic 		-- SPI serial data from master to slave
);
end DAC8830;

architecture behav of DAC8830 is

type def_state 			is (s_idle, s_start, s_rise, s_fall, s_finish);
signal dac_state 			: def_state := s_idle;

signal dac_data     		: std_logic_vector(15 downto 0):= x"0001";
signal dac_buf     		: std_logic_vector(15 downto 0):= x"0000";
signal bit_cnt 			: unsigned(3 downto 0) := x"0";

begin

	process(CLK, dac_state, DATA)
	begin
		if rising_edge(CLK) then
			case dac_state is
			when s_idle =>
				if dac_data /= DATA  then
					dac_buf 	<= DATA;
					dac_data <= DATA;
					CS			<= '0';
					SCLK 		<= '0';
					dac_state 	<= s_start;
				else 
					CS			<= '1';
				end if;
				
			when s_start =>	
				MOSI		<= dac_buf(15);
				bit_cnt		<= x"0";
				dac_state 	<= s_rise;
				
			when s_rise =>
				SCLK 		<= '1';
				dac_buf <= dac_buf(14 downto 0) & dac_buf(15);
				dac_state 	<= s_fall;
					
			when s_fall =>
				SCLK 		<= '0';
				bit_cnt 	<= bit_cnt + "1";
				MOSI		<= dac_buf(15);
				if bit_cnt 	= x"F" then
					dac_state 	<= s_finish;
				else 
					dac_state 	<= s_rise;
				end if;
			
			when s_finish =>	
				CS				<= '1';
				dac_state 	<= s_idle;
				
			when others =>
				dac_state		<= s_idle;
			end case;
		end if;
	end process;

end behav;