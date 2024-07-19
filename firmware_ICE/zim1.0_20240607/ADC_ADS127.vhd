library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ADS127L01IPBSR SPI MASTER!!

entity ADC_ADS127 is
Port (
	CLK 			: in 		std_logic; 						         -- system clock :  MHz clock	
	RESET			: in		std_logic; 
	TRIG 			: in 		std_logic;    								-- trigger clock 
	DTRIG 		: out 	std_logic;    								-- trigger clock 
	ADC_DATA		: out 	std_logic_vector(23 downto 0); 		-- Last read adc value
	SCLK 			: out 	std_logic; 		-- SPI clock :  MHz
	CS 			: out 	std_logic; 		-- SPI chip select, active in low
	MOSI 			: out 	std_logic; 		-- SPI serial data from master to slave
	MISO 			: in 		std_logic; 		-- SPI serial data from slave to master
	DRDY 			: in 		std_logic 		-- SPI serial data from slave to master
);

end ADC_ADS127;

architecture behav of ADC_ADS127 is
type def_state 				is (s_idle, s_rd_adc0, s_rd_adc1, s_rd_adc2, s_rd_adc3, s_rd_adc4, s_finish);
signal adc_state 				: def_state := s_idle;
signal cmd_rdadctmp     	: std_logic_vector(31 downto 0):= X"00000000"; 
signal bit_cnt 				: unsigned(7 downto 0) := x"00";

begin

	process(CLK, RESET, TRIG, adc_state, MISO, DRDY)
	begin
		if RESET = '1' then
			SCLK 			<= '0';
			CS				<= '1';
			MOSI			<= '0';
			ADC_DATA		<= x"000000";
			DTRIG			<= '1';
			adc_state 	<= s_idle;
			
		elsif rising_edge(CLK) then

			case adc_state is
			when s_idle =>
				DTRIG			<= '0';
				CS				<= '1';
				SCLK 			<= '0';
				if TRIG = '1' then
					adc_state 		<= s_rd_adc1;
				end if;
			
			when s_rd_adc1 =>
				if DRDY = '0' then
					bit_cnt	<= x"00";
					cmd_rdadctmp <= x"00000000";
					adc_state 		<= s_rd_adc3;
					CS				<= '0';
				end if;

			when s_rd_adc2 =>
				SCLK 			<= '0';
				cmd_rdadctmp <= cmd_rdadctmp(30 downto 0) & MISO;
				if bit_cnt 	= x"20" then
					adc_state 	<= s_rd_adc4;
				else 
					adc_state 	<= s_rd_adc3;
				end if;
					
			when s_rd_adc3 =>
				SCLK 			<= '1';
				bit_cnt 	<= bit_cnt + "1";
				adc_state 	<= s_rd_adc2;
			
			when s_rd_adc4 =>
				CS 			<= '1';
				ADC_DATA   	<= cmd_rdadctmp(31 downto 8);
				adc_state 	<= s_finish;
				
			when s_finish =>
				DTRIG			<= '1';
				if TRIG = '0' then
					adc_state 		<= s_idle;
				end if;

			when others =>
				adc_state	<= s_idle;
			end case;
		end if;
	end process;
	
--	process(CLK, RESET, TRIG, adc_state, MISO, DRDY)
--	begin
--		if RESET = '1' then
--			SCLK 			<= '0';
--			CS				<= '1';
--			MOSI			<= '0';
--			ADC_DATA		<= x"000000";
--			DTRIG			<= '1';
--			adc_state 	<= s_idle;
--		elsif rising_edge(CLK) then
--			case adc_state is
--			when s_idle =>
--				SCLK 			<= '0';
--				CS				<= '1';
--				DTRIG			<= '0';
--				if TRIG = '1' then
--					adc_state 		<= s_rd_adc1;
--				end if;
--			
--			when s_rd_adc1 =>
--				if DRDY = '0' then
--					DTRIG			<= '0';
--					SCLK 			<= '1';
--					bit_cnt	<= x"00";
--					cmd_rdadctmp <= x"00000000";
--					CS					<= '0';
--					adc_state 		<= s_rd_adc3;
--				end if;
--
--			when s_rd_adc2 =>
--				SCLK 		<= '0';
--				cmd_rdadctmp <= cmd_rdadctmp(30 downto 0) & MISO;
--				bit_cnt 	<= bit_cnt + "1";
--				if bit_cnt 	= x"20" then
--					ADC_DATA   	<= cmd_rdadctmp(31 downto 8);
--					adc_state 	<= s_finish;
--				else 
--					adc_state 	<= s_rd_adc3;
--				end if;
--					
--			when s_rd_adc3 =>
--				SCLK 			<= '1';
--				adc_state 	<= s_rd_adc2;
--			
--			when s_finish =>
--				CS				<= '1';
--				DTRIG			<= '1';
--				if TRIG = '0' then
--					adc_state 		<= s_idle;
--				end if;
--
--			when others =>
--				adc_state	<= s_idle;
--			end case;
--		end if;
--	end process;

end behav;