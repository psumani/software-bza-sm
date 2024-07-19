library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- ADS1252U SPI MASTER!!

entity ADC_ADS1252 is
Port (
	CLK 			: in 		std_logic; 						         -- system clock :  16 MHz clock				        
	ADC_DATA		: out 	std_logic_vector(23 downto 0); 		-- Last read adc value
	MCLK 			: out 	std_logic; 		-- SPI clock :  MHz
	SCLK 			: out 	std_logic; 		-- SPI clock :  MHz
	MISO 			: in 		std_logic 		-- SPI serial data from slave to master
);

end ADC_ADS1252;


architecture behav of ADC_ADS1252 is

	component vdc_gen_clk is
	port (	
			ICLK			: in		std_logic; 	
			OCLK		   : out		std_logic;  
			DIVIDE		: in 		std_logic_vector(15 downto 0)
	);
	end component;
	
type def_state 				is (s_idle, s_ready1, s_ready2, s_ready3, s_read1, s_read2, s_read3, s_read4, s_read5, s_read6, s_read7, s_finish1);
signal adc_state 				: def_state := s_idle;
signal cmd_rdadctmp     	: std_logic_vector(23 downto 0):= X"000000"; 
signal bit_cnt 				: unsigned(7 downto 0) := x"00";
signal avg_cnt 				: unsigned(11 downto 0) := x"000";
signal adcmclk					: std_logic := '0';	
signal cmd_rdadcbuf     	: std_logic_vector(35 downto 0):= X"000000000"; 

begin

	MCLK	<= adcmclk;
	
	process(adcmclk, adc_state, MISO) 
	begin
		if rising_edge(adcmclk) then
			case adc_state is
			
			when s_idle =>
				SCLK 			<= '0';
				if MISO = '1' then
					bit_cnt		<= x"00";
					adc_state 	<= s_ready1;
				end if;
				
			when s_ready1 =>	
				bit_cnt 	<= bit_cnt + "1";
				if MISO = '0' then
					if bit_cnt < x"17" then
						adc_state 	<= s_idle;
					else
						adc_state 	<= s_ready2;
					end if;
				end if;
				
			when s_ready2 =>		
				if MISO = '1' then
					bit_cnt		<= x"00";
					adc_state 	<= s_ready3;
				end if;	
			
			when s_ready3 =>		
				bit_cnt 	<= bit_cnt + "1";
				if bit_cnt 	= x"05" then
					adc_state 	<= s_read1;
				end if;
			
			when s_read1 =>	
				bit_cnt	<= x"00";
				cmd_rdadctmp <= x"000000000";
				adc_state 	<= s_read2;

			when s_read2 =>
				SCLK 		<= '1';
				cmd_rdadctmp <= cmd_rdadctmp(22 downto 0) & MISO;
				bit_cnt 	<= bit_cnt + "1";
				adc_state 	<= s_read3;
				
			when s_read3 =>
				SCLK 			<= '0';
				if bit_cnt 	= x"18" then
					cmd_rdadctmp(23) <= not cmd_rdadctmp(23);
					adc_state 	<= s_read4;
				else 
					adc_state 	<= s_read2;
				end if;
				
			when s_read4 =>
				SCLK 			<= '0';
				cmd_rdadcbuf  	<= cmd_rdadcbuf + cmd_rdadctmp;
				avg_cnt			<= avg_cnt + "1";
				adc_state 		<= s_read5;	
				
			when s_read5 =>
				SCLK 				<= '1';
				if avg_cnt = x"800" then 
					cmd_rdadcbuf(34) <= not cmd_rdadcbuf(34);
					adc_state 		<= s_read6;
				else
					adc_state 		<= s_finish1;
				end if;
				
			when s_read6 =>	
				SCLK 				<= '1';
				ADC_DATA  		<= cmd_rdadcbuf(34 downto 11);
				adc_state 		<= s_read7;
				
			when s_read7 =>	
				SCLK 				<= '0';
				avg_cnt 			<= x"000";
				cmd_rdadcbuf	<= x"000000000";
				adc_state 		<= s_finish1;
				
			when s_finish1 =>
				SCLK 				<= '0';
				if MISO = '0' then
					adc_state 	<= s_idle;
				end if;

			when others =>
				adc_state	<= s_idle;
			end case;
		end if;
	end process;
	
	--   3840( = 10Hz * 384) * 128 = 491520 
	--   3840( = 10Hz * 384) * 256 = 983040 
	genclk : vdc_gen_clk
	Port map (
			ICLK			=> CLK,		-- 16MHz
			OCLK			=> adcmclk, -- 
			DIVIDE		=> x"0010"  --0010
	);
	
end behav;