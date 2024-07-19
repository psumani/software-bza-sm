library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- AD9837BCPZ SPI MASTER!!

entity DDS_AD9837 is
Port (
	CLK 		: in 		std_logic; 		-- system clock
	TRIG		: in 		std_logic;
	DATA		: in 		std_logic_vector(15 downto 0);
	SCLK 		: out 	std_logic; 		-- SPI clock
	CS 		: out 	std_logic; 		-- SPI chip select, active in low
	MOSI 		: out 	std_logic 		-- SPI serial data from master to slave
);
end DDS_AD9837;

architecture behav of DDS_AD9837 is

	type def_state 			is (s_idle, s_chkstart, s_start, s_rise, s_fall, s_finish);
	signal dds_state 			: def_state := s_idle;
	signal tmp_buf     		: std_logic_vector(15 downto 0):= x"0000";
	signal bit_cnt 			: unsigned(3 downto 0) := x"0";

begin	
	
	process(CLK, TRIG, dds_state, DATA)
	begin
		if rising_edge(CLK) then
			case dds_state is

			when s_idle =>
				SCLK 			<= '1';
				CS				<= '1';
				if TRIG = '1' then
					dds_state 	<= s_chkstart;
				end if;
				
			when s_chkstart =>		
				if TRIG = '0' then
					CS				<= '0';
					tmp_buf  	<= DATA;
					dds_state 	<= s_start;
				end if;
				
			when s_start =>	
				MOSI				<= tmp_buf(15);
				bit_cnt			<= x"0";
				dds_state 		<= s_fall;
				
			when s_fall =>
				SCLK 				<= '0';
				tmp_buf 			<= tmp_buf(14 downto 0) & tmp_buf(15);
				dds_state 		<= s_rise;
					
			when s_rise =>
				SCLK 				<= '1';
				bit_cnt 			<= bit_cnt + "1";
				MOSI				<= tmp_buf(15);
				if bit_cnt 	= x"F" then
					dds_state 	<= s_finish;
				else 
					dds_state 	<= s_fall;
				end if;
			
			when s_finish =>	
				CS					<= '1';
				dds_state 		<= s_idle;
			
			when others =>
				dds_state		<= s_finish;
			end case;
		end if;
	end process;
	
end behav;