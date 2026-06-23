library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- MAX31865AAP+ SPI MASTER!!

entity ADC_MAX31865 is
Port (
	CLK 			: in 		std_logic; 		-- system clock : 5.12 MHz clock
	CFG_DATA		: in 		std_logic_vector(7 downto 0); 		-- configuration data
	READ_DATA	: out 	std_logic_vector(15 downto 0); 		-- Last read RTD value
	SCLK 			: out 	std_logic; 		-- SPI clock : max. 5MHz   - 2.56 MHz
	CS 			: out 	std_logic; 		-- SPI chip select, active in low
	MOSI 			: out 	std_logic; 		-- SPI serial data from master to slave
	MISO 			: in 		std_logic; 		-- SPI serial data from slave to master
	DRDY 			: in 		std_logic 		-- SPI serial data from slave to master
);
end ADC_MAX31865;

architecture behav of ADC_MAX31865 is

type def_state 			is (s_reset, s_idle, s_start, s_wr_cmd1, s_wr_cmd2, s_wr_cfg1, s_wr_cfg2, s_wr_cfg3, s_rd_rtd1, s_rd_rtd2, s_rd_rtd3, s_rd_rtd4, s_finish);
signal adc_state 			: def_state := s_idle;

signal cfg_buf     		: std_logic_vector(7 downto 0):= X"00"; -- bias on, 3wire, fault then auto delay, 60Hz, 
signal adress				: std_logic_vector(7 downto 0):= x"00";
signal cfg_tmp				: std_logic_vector(7 downto 0);
signal bit_cnt 			: unsigned(3 downto 0) := x"0";
signal mode					: std_logic := '0';	-- 1-wr cfg, 0-rd rtd

signal read_buf     		: std_logic_vector(15 downto 0):= x"0000";

begin
	
	process(CLK, adc_state, CFG_DATA, MISO, DRDY)
	begin
		if rising_edge(CLK) then
			case adc_state is
			when s_reset =>
				SCLK 			<= '0';
				CS				<= '1';
				mode			<= '0';
				adress		<= x"01";
				cfg_buf		<= x"00";
				cfg_tmp		<= x"00";
				read_buf		<= x"0000";
				adc_state	<= s_idle;
				
			when s_idle =>
				SCLK 			<= '0';
				CS				<= '1';
				if cfg_buf /= CFG_DATA then
					cfg_buf 	<= CFG_DATA;
					cfg_tmp 	<= CFG_DATA;
					mode		<= '1';
					adress	<= x"80";
					CS			<= '0';
					adc_state 	<= s_start;
				else
					if DRDY = '0' then
						adress	<= x"01";
						mode		<= '0';
						CS			<= '0';
						adc_state 	<= s_start;
					end if;
				end if;
				
			when s_start => -- rising
					SCLK 		<= '1';
					MOSI		<= adress(7);
					bit_cnt	<= x"0";
					adc_state 	<= s_wr_cmd1;
					
			when s_wr_cmd1 =>	 -- falling
				SCLK 		<= '0';
				adress <= adress(6 downto 0) & adress(7);
				bit_cnt 	<= bit_cnt + "1";
				if bit_cnt 	= x"7" then
					if mode = '1' then
						adc_state 	<= s_wr_cfg1;
					else
						adc_state 	<= s_rd_rtd1;
					end if;
				else 
					adc_state 	<= s_wr_cmd2;
				end if;
				
			when s_wr_cmd2 =>	-- rising
				MOSI		<= adress(7);
				SCLK 		<= '1';
				adc_state 	<= s_wr_cmd1;
				
			when s_wr_cfg1 =>	-- rising
				SCLK 		<= '1';
				MOSI		<= cfg_tmp(7);
				bit_cnt	<= x"0";
				adc_state 	<= s_wr_cfg2;
				
			when s_wr_cfg2 =>	 -- falling
				SCLK 		<= '0';
				cfg_tmp <= cfg_tmp(6 downto 0) & cfg_tmp(7);
				bit_cnt 	<= bit_cnt + "1";
				if bit_cnt 	= x"7" then
					adc_state 	<= s_finish;
				else 
					adc_state 	<= s_wr_cfg3;
				end if;
				
			when s_wr_cfg3 =>	-- rising
				MOSI		<= cfg_tmp(7);
				SCLK 		<= '1';
				adc_state 	<= s_wr_cfg2;
				
				
			when s_rd_rtd1 =>	
				SCLK 		<= '1';
				bit_cnt	<= x"0";
				read_buf <= x"0000";
				adc_state 	<= s_rd_rtd2;
				
			when s_rd_rtd2 =>
				SCLK 		<= '0';
				read_buf <= read_buf(14 downto 0) & MISO;
				bit_cnt 	<= bit_cnt + "1";
				if bit_cnt 	= x"F" then
					adc_state 	<= s_rd_rtd4;
				else 
					adc_state 	<= s_rd_rtd3;
				end if;
					
			when s_rd_rtd3 =>
				SCLK 		<= '1';
				adc_state 	<= s_rd_rtd2;
			
			when s_rd_rtd4 =>
				READ_DATA   <= read_buf;
				adc_state 	<= s_finish;
				
			when s_finish =>
				CS				<= '1';
				mode			<= '0';
				adc_state 	<= s_idle;
				
			when others =>
				adc_state		<= s_idle;
			end case;
		end if;
	end process;

end behav;