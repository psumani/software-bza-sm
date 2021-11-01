library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity zim is
	port (
		ICE_SYSCLK		: in  	std_logic;
		EIS_SYNCCLK		: in  	std_logic;
		TEST_LED     	: out  	std_logic;
		
		DDS_MCLK1		: out  	std_logic;
		DDS_CS1			: out  	std_logic;
		DDS_MOSI1		: out  	std_logic;
		DDS_SCK1			: out  	std_logic;

--		ICE_CFG_DONE	: out  	std_logic;
--		ICE_RESET_B		: in  	std_logic;
--		ICE_CFG_MISO	: in  	std_logic;
--		ICE_CFG_MOSI	: in  	std_logic;  
--		ICE_CFG_SCLK	: out  	std_logic;
--		ICE_CFG_SSS		: out  	std_logic;

		ICE_SPI_SCLK	: in  	std_logic;
		ICE_SPI_MOSI	: in  	std_logic;
		ICE_SPI_MISO	: out  	std_logic;
		ICE_SPI_CE0		: in  	std_logic;
		ICE_GPMO_0		: in  	std_logic;

		DDS_MCLK		: out  	std_logic;
		DDS_CS		: out  	std_logic;
		DDS_SCK		: out  	std_logic;
		DDS_MOSI		: out  	std_logic;

		DDS_RNG_0	: out  	std_logic;
		ICE_IOT_173	: in  	std_logic;
		ICE_IOT_174	: in  	std_logic;

		VAC_OSR0		: out  	std_logic;
		VAC_OSR1		: out  	std_logic;
		VAC_FLT0		: out  	std_logic;
		VAC_FLT1		: out  	std_logic;
		
		VAC_CLK		: out  	std_logic;
		VAC_CS		: out  	std_logic;
		VAC_SCLK		: out  	std_logic;
		VAC_MOSI		: out  	std_logic;
		VAC_MISO		: in  	std_logic;
		VAC_DRDY		: in  	std_logic;

		ICE_IOL_13A		: in  	std_logic;
		VDC_SDO		: in  	std_logic;
		VDC_SCLK		: out  	std_logic;
		VDC_CLK		: out  	std_logic;
		VDC_RNG0		: out  	std_logic;
		
		CONT_SD		: out  	std_logic;
		SELIRNG0		: out  	std_logic;
		SELIRNG1		: out  	std_logic;
		IAC_OSR0		: out  	std_logic;
		IAC_OSR1		: out  	std_logic;
		IAC_FLT0		: out  	std_logic;
		IAC_FLT1		: out  	std_logic;
		IAC_CLK		: out  	std_logic;
		IAC_CS		: out  	std_logic;
		IAC_SCLK		: out  	std_logic;
		IAC_MOSI		: out  	std_logic;
		IAC_MISO		: in  	std_logic;
		IAC_DRDY		: in  	std_logic;
		
		RTD_DRDY		: in  	std_logic;
		RTD_SDI		: out  	std_logic;
		RTD_SCLK		: out  	std_logic;
		RTD_CS		: out  	std_logic;
		RTD_SDO		: in  	std_logic;

		-- J14 connector pins 
		ICE_IOT_222		: in  	std_logic;
		ICE_IOT_221		: in  	std_logic;
		AC_ADC_SYNC		: out  	std_logic;
		ICE_IOT_198		: in  	std_logic;
		ICE_IOT_197		: in  	std_logic;
		ICE_IOT_178		: in  	std_logic;
		ICE_IOT_177		: in  	std_logic;
		ICE_IOR_141		: in  	std_logic;

		-- J15 connector pins 
		AMPV_POW			: out  	std_logic;   --ICE_IOL_23A
		ICE_IOL_18B		: in  	std_logic;
		ICE_IOL_14A		: in  	std_logic;
		ICE_IOL_13B		: in  	std_logic;
		ICE_IOL_12B		: in  	std_logic;
		ICE_IOL_12A		: in  	std_logic;
		ICE_IOL_4B		: in  	std_logic;
		ICE_IOL_4A		: in  	std_logic;

		-- J16 connector pins 
		ICE_IOR_140		: in  	std_logic;
		ICE_IOR_120		: in  	std_logic;
		ICE_IOR_119		: in  	std_logic;
		ICE_IOR_118		: in  	std_logic;

		-- J17 connector pins 
		ICE_IOB_81		: in  	std_logic;
		ICE_IOB_80		: in  	std_logic;
		STAT_COMM		: out  	std_logic; --ICE_IOB_73
		THERMOSTAT		: in  	std_logic; --ICE_IOB_72
		
		-- J18 connector pins 
		ICE_IOB_104		: in  	std_logic;
		ICE_IOB_103		: in  	std_logic;
		ICE_IOB_102		: in  	std_logic;
		ICE_IOB_96		: in  	std_logic;
		ICE_IOB_95		: in  	std_logic;
		ICE_IOB_94		: in  	std_logic;
		ICE_IOB_91		: in  	std_logic;
		ICE_IOB_82		: in  	std_logic;
		
		-- isolated in/out pins
		ICE_GPMO_1		: in  	std_logic;
		ICE_GPMO_2		: in  	std_logic;
		ICE_GPMI_0	   	: out  	std_logic;
		
		ICE_IOR_138		: in  	std_logic;
		ICE_IOR_137		: in  	std_logic;
		ICE_IOR_136		: in  	std_logic;
		ICE_IOR_128		: in  	std_logic;
		ICE_IOR_147		: in  	std_logic;
		ICE_IOR_146		: in  	std_logic;
		ICE_IOR_144		: in  	std_logic;
		ICE_IOR_139		: in  	std_logic;

		ICE_IOR_161		: in  	std_logic;
		ICE_IOR_160		: in  	std_logic;
		ICE_IOR_152		: in  	std_logic;
		ICE_IOR_148		: in  	std_logic;
		ICE_IOR_167		: in  	std_logic;
		ICE_IOR_166		: in  	std_logic;
		ICE_IOR_165		: in  	std_logic;
		ICE_IOR_164		: in  	std_logic
	);
end zim;

architecture behav of zim is

	component zim_pll is
	port(
			REFERENCECLK: in std_logic;
			RESET: in std_logic;
			PLLOUTCOREA: out std_logic;
			PLLOUTCOREB: out std_logic;
			PLLOUTGLOBALA: out std_logic;
			PLLOUTGLOBALB: out std_logic
		 );
	end component zim_pll;
	
	component SPI_SLAVE is
		Port (
			CLK 				: in 	std_logic;	
			RESET 			: in std_logic;
			SCLK 				: in 	std_logic; 	
			CS_N 				: in 	std_logic; 	
			MOSI 				: in 	std_logic; 	
			MISO 				: out 	std_logic; 	
			DIN 				: in 	std_logic_vector(7 downto 0); 
			DOUT 				: out 	std_logic_vector(7 downto 0); 
			DATA_VLD 		: out 	std_logic
		);
	end component;

	component DDS_AD9837 is
		Port (
			CLK 		: in 		std_logic; 		-- system clock
			TRIG		: in 		std_logic;
			DATA		: in 		std_logic_vector(15 downto 0);
			SCLK 		: out 	std_logic; 		-- SPI clock
			CS 		: out 	std_logic; 		-- SPI chip select, active in low
			MOSI 		: out 	std_logic 		-- SPI serial data from master to slave
		);
	end component;
	
	component ADC_MAX31865 is
		Port (
			CLK 			: in 		std_logic; 		-- system clock : 5.12 MHz clock
			CFG_DATA		: in 		std_logic_vector(7 downto 0); 		-- configuration data
			READ_DATA	: out		std_logic_vector(15 downto 0); 		-- Last read RTD value
			SCLK 			: out 	std_logic; 		-- SPI clock : max. 5MHz   - 2.56 MHz
			CS 			: out 	std_logic; 		-- SPI chip select, active in low
			MOSI 			: out 	std_logic; 		-- SPI serial data from master to slave
			MISO 			: in 		std_logic;		-- SPI serial data from master to slave
			DRDY 			: in 		std_logic 		-- SPI serial data from master to slave
		);
	end component;
	
	component ADC_ADS127 is
		Port (
			CLK 			: in 		std_logic; 						         -- system clock :  MHz clock
			RESET			: in		std_logic; 
			TRIG 			: in 		std_logic;
			DTRIG 		: out 	std_logic; 
			ADC_DATA		: out 	std_logic_vector(23 downto 0); 		-- Last read adc value
			SCLK 			: out 	std_logic; 		-- SPI clock :  MHz
			CS 			: out 	std_logic; 		-- SPI chip select, active in low
			MOSI 			: out 	std_logic; 		-- SPI serial data from master to slave
			MISO 			: in 		std_logic; 		-- SPI serial data from slave to master
			DRDY 			: in 		std_logic 		-- SPI serial data from slave to master
		);
	end component;

	component ADC_ADS1252 is
		Port (
			CLK 			: in 		std_logic; 						         -- system clock :  MHz clock	
			ADC_DATA		: out 	std_logic_vector(23 downto 0); 		-- Last read adc value
			MCLK 			: out 	std_logic; 		-- SPI clock :  MHz
			SCLK 			: out 	std_logic; 		-- SPI clock :  MHz
			MISO 			: in 		std_logic 		-- SPI serial data from slave to master
		);
	end component;
	
	
	
	signal clk_16MHz			: std_logic := '0';
	signal clk_32MHz			: std_logic := '0';
	--pll vars
	signal pll_reset		: std_logic := '1';
	signal pll_outa		: std_logic := '0';
	signal pll_outb		: std_logic := '0';
	
	type def_slave_state 	is (s_reset, s_idle, s_start, s_comm_err, s_chk_cmd, s_data_set, s_data_wrd, s_data_chk, s_data_finish, s_data_finish1);
	type def_comm_buf 		is array(0 to 6) of std_logic_vector(7 downto 0);
   --spi slave vars
	signal clk_spislave		: std_logic := '0';
	signal clk_spicomm		: std_logic := '0';
	
	signal comm_tx_buf 		: std_logic_vector(7 downto 0);
	signal comm_data_vld		: std_logic := '0';
	signal comm_rx_buf 		: std_logic_vector(7 downto 0);
	signal comm_test_buf_24	: std_logic_vector(23 downto 0);
	
	signal comm_state 		: def_slave_state := s_reset;
	signal comm_response		: std_logic := '0';
	signal comm_cmd			: std_logic_vector(7 downto 0):= (others => '0');
	signal comm_clear			: std_logic := '0';
	
	signal comm_buf 			: def_comm_buf;
	signal comm_index			: integer range 0 to 6 := 0;
	signal comm_length		: integer range 0 to 6 := 0;

	--signal dds vars
	signal dds0_mclkcnt   	: std_logic_vector(7 downto 0):= x"01";
	signal dds0_mclk			: std_logic := '0';
	signal clk_dds0			: std_logic := '0';
	signal buf_dds0 			: std_logic_vector(15 downto 0):= x"0000";
	signal trig_dds0			: std_logic := '0';
	
	--mclk dds vars
	signal clk_dds1			: std_logic := '0';
	signal buf_dds1 			: std_logic_vector(15 downto 0):= x"0000";
	signal trig_dds1			: std_logic := '0';
	
	--rtd vars
	signal clk_RTD				: std_logic := '0';
	signal clk_cnt     		: std_logic_vector(3 downto 0):= x"0";
	signal buf_cfgRTD 		: std_logic_vector(7 downto 0):= x"00";
	signal buf_readRTD 		: std_logic_vector(15 downto 0);

	--ac adc vars
	type def_trig_state 		is (s_chk_high, s_highdelay, s_highdelay1, s_chk_low);
	signal actrig_state 		: def_trig_state := s_chk_high;
	signal acadc_trig			: std_logic:= '0';
	signal acadc_dtrig_i		: std_logic:= '0';
	signal acadc_dtrig_v		: std_logic:= '0';
	
	signal acadc_skipcnt		: std_logic_vector(15 downto 0) := x"0000";
	signal acadc_skipCount	: std_logic_vector(15 downto 0) := x"0000";
	
	signal clk_IAC_ADC			: std_logic := '0';
	signal clk_VAC_ADC			: std_logic := '0';
	signal buf_device_acadc	: std_logic_vector(7 downto 0) := x"00";
	signal buf_adc_iac 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adc_vac 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata_iac 	: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata_vac 	: std_logic_vector(23 downto 0) := x"000000";

	type def_eis_state 		is (s_reset, s_idle, s_chk_begin, s_sample_h, s_skipsmpl_h, s_bypass_h, s_chk_finish, s_finish);
	signal eis_state 		: def_eis_state := s_reset;
	
	signal eis_clk				: std_logic := '0';
	signal acadc_rst			: std_logic := '0';
	signal eis_start			: std_logic := '0';
	signal eis_stop			: std_logic := '0';
	signal eis_end				: std_logic := '0';
	signal req_data_cnt    	: std_logic_vector(15 downto 0):= x"0000";
	
	signal buf_data_iac 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_data_vac 		: std_logic_vector(23 downto 0) := x"000000";
	
	signal data_count    	: integer range 0 to 1023 := 0;
	signal data_cntvec    	: std_logic_vector(15 downto 0):= x"0000";
	signal data_index    	: integer range 0 to 1023 := 0;
	signal data_idxvec    	: std_logic_vector(15 downto 0):= x"0000";
	
	type def_ac_raw_buf 		is array(0 to 1023) of std_logic_vector(23 downto 0);
	signal iac_raw_buf 		: def_ac_raw_buf;
	signal vac_raw_buf 		: def_ac_raw_buf;
	
	--vdc adc vars
	signal clk_VDC_ADC		: std_logic := '0';
	signal buf_adcdata_vdc 	: std_logic_vector(23 downto 0)  := x"000000";

	--control vars
	signal buf_control 		: std_logic_vector(7 downto 0):= x"00";
	
	signal wdtick_flag		: std_logic := '0';
	signal flagcntwd			: std_logic := '0';
	signal wdtick_cnt    	: std_logic_vector(27 downto 0):= x"0000000";
	
	signal SecClk				: std_logic := '0';
	signal secclk_cnt    	: std_logic_vector(31 downto 0):= x"00000000";
	
	signal buf_version 		: std_logic_vector(15 downto 0)  := x"0FA2";  -- 4001
	
begin   -- pll_gouta = 32MHz, pll_goutb = 16MHz

	TEST_LED 		<= SecClk; --ICE_SPI_MOSI; ICE_SPI_SCLK;
	
	DDS_MCLK 		<= dds0_mclk;  -- 125KHz = 16MHz / 128
	DDS_MCLK1 		<= clk_16MHz; 	-- 16MHz 
	
	--acadc_trig 		<= EIS_SYNCCLK; 
	VAC_CLK			<= not EIS_SYNCCLK;  
	IAC_CLK			<= not EIS_SYNCCLK; 
	
	
	clk_spicomm 	<= clk_32MHz; 
	clk_spislave 	<= not clk_32MHz;	
	
	clk_dds0			<= clk_32MHz;	-- 32MHz 
	clk_dds1			<= clk_32MHz;	-- 32MHz
	
	eis_clk			<= not clk_32MHz;	-- 32MHz  

	clk_IAC_ADC		<= clk_32MHz;	-- 32MHz  
	clk_VAC_ADC		<= clk_32MHz;	-- 32MHz 

	AC_ADC_SYNC		<= not acadc_rst; 
	clk_VDC_ADC		<= not clk_16MHz;	-- 16MHz 

	VAC_FLT1			<= buf_device_acadc(7);
	VAC_FLT0			<= buf_device_acadc(6);
	VAC_OSR1			<= buf_device_acadc(5);
	VAC_OSR0			<= buf_device_acadc(4);
	IAC_FLT1			<= buf_device_acadc(3);
	IAC_FLT0			<= buf_device_acadc(2);
	IAC_OSR1			<= buf_device_acadc(1);
	IAC_OSR0			<= buf_device_acadc(0);
	
--	VAC_FLT1			<= buf_device_acadc(7);
--	VAC_FLT0			<= buf_device_acadc(6);
--	VAC_OSR1			<= buf_device_acadc(5);
--	VAC_OSR0			<= buf_device_acadc(4);
--	IAC_FLT1			<= eis_end;
--	IAC_FLT0			<= acadc_rst;
--	IAC_OSR1			<= eis_stop;
--	IAC_OSR0			<= eis_start;

	AMPV_POW			<= buf_control(5);
	VDC_RNG0			<= buf_control(4);
	SELIRNG1			<= buf_control(3);
	SELIRNG0			<= buf_control(2);
	DDS_RNG_0		<= buf_control(1);
--	CONT_SD			<= buf_control(0);
	CONT_SD <= buf_control(0) when wdtick_flag = '0' else '0';
	
	buf_data_iac 	<=  iac_raw_buf(data_index);
	buf_data_vac 	<=  vac_raw_buf(data_index);

	STAT_COMM		<= ICE_GPMO_2; 
	--STAT_COMM		<= not comm_response;
	ICE_GPMI_0     <= comm_response;
	
	process(clk_16MHz) --16MHz
	begin
		if rising_edge(clk_16MHz) then
			if clk_cnt = x"3" then
				clk_RTD <= not clk_RTD;			
				clk_cnt <= x"0";
			else 
				clk_cnt <= clk_cnt + "1";
			end if;
		end if;
	end process;	
	
	process(clk_16MHz) --16000000 / 16000000 = 1Hz , 16000000 * 2 = 01E84800
	begin
		if flagcntwd = '1' then
			wdtick_flag	<= '0'; 
			wdtick_cnt <= x"0000000";
		elsif rising_edge(clk_16MHz) then 
			if wdtick_flag	= '0' then
				wdtick_cnt <= wdtick_cnt + "1";
				if wdtick_cnt = x"1E84800" then
					wdtick_flag	<= '1'; 
					wdtick_cnt <= x"0000000";
				end if;
			end if;
		end if;
	end process;
	
	process(clk_16MHz) --16MHz / 16000000 = 1Hz , 8000000 = 0x7A1200
	begin
		if rising_edge(clk_16MHz) then 
			secclk_cnt <= secclk_cnt + "1";
			if secclk_cnt = x"007A1200" then
				SecClk	<= not SecClk; 
				secclk_cnt <= x"00000000";
			end if;
		end if;
	end process;
	
	
--	process(clk_32MHz) --32MHz / 256 = 125KHz , 128 = 0x80
--	begin
--		if rising_edge(clk_32MHz) then 
--			dds0_mclkcnt <= dds0_mclkcnt + "1";
--			if dds0_mclkcnt = x"80" then
--				dds0_mclk	<= not dds0_mclk; 
--				dds0_mclkcnt <= x"01";
--			end if;
--		end if;
--	end process;

	process(clk_16MHz) --16MHz / 128 = 120500Hz , 64= 0x40 :::: 
	begin
		if falling_edge(clk_16MHz) then 
			dds0_mclkcnt <= dds0_mclkcnt + "1";
			if dds0_mclkcnt = x"40" then 
				dds0_mclk	<= not dds0_mclk; 
				dds0_mclkcnt <= x"01";
			end if;
		end if;
	end process;
	
	process(eis_clk, acadc_trig, acadc_dtrig_i, acadc_dtrig_v, acadc_rst, eis_start, eis_stop, req_data_cnt,acadc_skipCount) --8MHz
	begin
		if acadc_rst = '1' then
			eis_state		<= s_reset;
		elsif rising_edge(eis_clk) then
			case eis_state is
			when s_reset =>
				data_count		<= 0;
				data_cntvec		<= x"0000";
				acadc_skipcnt	<= x"0000";
				eis_end 			<= '0';
				acadc_trig     <= '0';
				eis_state		<= s_idle;
				
			when s_idle =>
				eis_state		<= s_chk_begin;
				eis_end 			<= '0';
				data_count		<= 0;
				data_cntvec		<= x"0000";
				acadc_skipcnt	<= x"0000";
				acadc_trig     <= '0';
				
			when s_chk_begin =>
				eis_end 			<= '0';
				acadc_trig     <= '1';
--				if acadc_trig = '1' then	
					if eis_start = '1' then
						if acadc_skipCount = acadc_skipcnt then
							eis_state		<= s_sample_h;
						else
							eis_state		<= s_skipsmpl_h;
						end if;
					else
						eis_state		<= s_bypass_h;
					end if;
--				end if;		
	
			when s_sample_h =>
				if acadc_dtrig_i = '1' and acadc_dtrig_v = '1' then	
					iac_raw_buf(data_count) <= buf_adcdata_iac;
					vac_raw_buf(data_count) <= buf_adcdata_vac;
					data_count 	<= data_count + 1;
					data_cntvec <= data_cntvec + "1";
					eis_state		<= s_chk_finish;
				end if;

			when s_skipsmpl_h =>
				if acadc_dtrig_i = '1' and acadc_dtrig_v = '1' then	
					acadc_skipcnt <= acadc_skipcnt + "1";
					eis_state		<= s_chk_finish;
				end if;
				
			when s_bypass_h =>
				if acadc_dtrig_i = '1' and acadc_dtrig_v = '1' then	
					eis_state		<= s_chk_finish;
				end if;
				
			when s_chk_finish =>
				acadc_trig	<= '0';
				if acadc_dtrig_i = '0' and acadc_dtrig_v = '0' then
					if data_cntvec = req_data_cnt or eis_stop = '1' then 
						eis_end 	<= '1';
						eis_state	<= s_finish;
					else 
						eis_state	<= s_chk_begin;
					end if;
				end if;	

			when s_finish =>
				if eis_start = '0' and  eis_stop = '0' then
					eis_state		<= s_idle;
				end if;
				
			when	others =>
				eis_state		<= s_reset;
				
			end case;
		end if;
	end process;
	
	process(clk_spicomm, THERMOSTAT, ICE_SPI_CE0,eis_end, comm_data_vld, data_cntvec)
	begin
		if rising_edge(clk_spicomm) then

			case comm_state is
			when s_reset =>
				comm_clear		<= '1';
				comm_response	<= '0';
				flagcntwd		<= '1';
				trig_dds0		<= '0';
				trig_dds1		<= '0';
				buf_dds1			<= x"2028";
				comm_state		<= s_data_finish1;
			
			when s_idle =>
				comm_clear		<= '1';
				comm_response	<= '0';
				trig_dds0		<= '0';
				trig_dds1		<= '0';
				flagcntwd		<= '0';
				comm_index		<= 0;
				comm_length 	<= 0;
				comm_cmd			<= x"00";
				if ICE_SPI_CE0 = '0' then
					comm_state			<= s_start;
				end if;
	
			when s_start =>	
				comm_clear		<= '0';
				comm_response	<= '1';
				flagcntwd		<= '1';
				buf_control(7) 	<= not THERMOSTAT;
				
				if ICE_SPI_CE0 = '1' then
					comm_state			<= s_comm_err;
				else
					if comm_data_vld  = '1' then
						comm_cmd 			<= comm_rx_buf;
						comm_state			<= s_chk_cmd;
					end if;
				end if;
				
			when s_comm_err =>	
				comm_clear		<= '1';
				comm_response	<= '0';
				
				if comm_data_vld = '0' and ICE_SPI_CE0 = '1' then
					comm_state		<= s_idle;	
--					comm_state			<= s_data_finish1;
				end if;
			
			when s_chk_cmd =>	
				comm_clear		<= '1';
--				comm_response	<= '1';
--				comm_index		<= 0;

				comm_state		<= s_data_set;
				case comm_cmd(6 downto 0) is
					when "0010000" =>		--ICE_CMD_DDS_SIG : 0x90
						comm_length			<= 2;
						comm_buf(0)			<= buf_dds0(15 downto 8);
						comm_buf(1)			<= buf_dds0(7 downto 0);
						
					when "0010001" =>		--ICE_CMD_DDS_CLK : 0x91
						comm_length			<= 2;
						comm_buf(0)			<= buf_dds1(15 downto 8);
						comm_buf(1)			<= buf_dds1(7 downto 0);	
						
					when "0010010" =>		--ICE_CMD_DEV_ACADC : 0x92
						comm_length			<= 1;
						comm_buf(0)			<= buf_device_acadc(7 downto 0);
					
					when "0010011" =>		--ICE_CMD_IACADC_LAST_IACADC_DATA : 0x93
						comm_length			<= 3;
						comm_buf(0)			<= buf_adcdata_iac(23 downto 16);
						comm_buf(1)			<= buf_adcdata_iac(15 downto 8);
						comm_buf(2)			<= buf_adcdata_iac(7 downto 0);
						
					when "0010100" =>		--ICE_CMD_IACADC_LAST_VACADC_DATA : 0x94	
						comm_length			<= 3;
						comm_buf(0)			<= buf_adcdata_vac(23 downto 16);
						comm_buf(1)			<= buf_adcdata_vac(15 downto 8);
						comm_buf(2)			<= buf_adcdata_vac(7 downto 0);
						
					when "0010101" =>		--ICE_CMD_IACADC_LAST_VDCADC_DATA : 0x95
						comm_length			<= 3;
						comm_buf(0)			<= buf_adcdata_vdc(23 downto 16);
						comm_buf(1)			<= buf_adcdata_vdc(15 downto 8);
						comm_buf(2)			<= buf_adcdata_vdc(7 downto 0);		
					
					when "0010110" =>		--ICE_CMD_RTD_CFG : 0x96
						comm_length			<= 1;
						comm_buf(0)			<= buf_cfgRTD(7 downto 0);
						
					when "0010111" =>		--ICE_CMD_RTD_DTA : 0x97
						comm_length			<= 2;
						comm_buf(0)			<= buf_readRTD(15 downto 8);
						comm_buf(1)			<= buf_readRTD(7 downto 0);

					when "0011000" =>			--ICE_CMD_DEVICE_DO 		: 0x98
						comm_length			<= 1;
						comm_buf(0)			<= buf_control(7 downto 0);

					when "0011001" =>			--ICE_CMD_EIS_SKIP_COUNT 		: 0x99
						comm_length			<= 2;
						comm_buf(0)			<= acadc_skipCount(15 downto 8);
						comm_buf(1)			<= acadc_skipCount(7 downto 0);
						
					when "0011010" =>			--ICE_CMD_EIS_SMPLS 		: 0x9A
						comm_length			<= 2;
						comm_buf(0)			<= req_data_cnt(15 downto 8);
						comm_buf(1)			<= req_data_cnt(7 downto 0);
						
					when "0011011" =>			--ICE_CMD_EIS_CFG 		: 0x9B
						comm_length			<= 1;
						comm_buf(0)			<= "00000" & acadc_rst & eis_stop & eis_start;
						
					when "0011100" =>			--ICE_CMD_EIS_SMPLS 		: 0x9C
						comm_length			<= 2;
						comm_buf(0)			<= eis_end & "000" & data_cntvec(11 downto 8);
						comm_buf(1)			<= data_cntvec(7 downto 0);
					
					when "0011101" =>			--ICE_CMD_EIS_GET INDEX 		: 0x9D
						comm_length			<= 2;
						comm_buf(0)			<= data_idxvec(15 downto 8);
						comm_buf(1)			<= data_idxvec(7 downto 0);

					when "0011110" =>			--ICE_CMD_EIS_DATA of index 		: 0x9E
						comm_length			<= 6;
						comm_buf(0)			<= buf_data_iac(23 downto 16);
						comm_buf(1)			<= buf_data_iac(15 downto 8);
						comm_buf(2)			<= buf_data_iac(7 downto 0);	
						comm_buf(3)			<= buf_data_vac(23 downto 16);
						comm_buf(4)			<= buf_data_vac(15 downto 8);
						comm_buf(5)			<= buf_data_vac(7 downto 0);
						data_index			<= data_index + 1;
						data_idxvec			<= data_idxvec + "1";
					
					when "0011111" =>			
						comm_length			<= 2; 
						comm_buf(0)			<= buf_version(15 downto 8);
						comm_buf(1)			<= buf_version(7 downto 0);

					when "1110001" =>
						comm_length			<= 1;
						comm_buf(0)			<= comm_test_buf_24(7 downto 0);
						
					when "1110010" =>
						comm_length			<= 2;
						comm_buf(0)			<= comm_test_buf_24(15 downto 8);
						comm_buf(1)			<= comm_test_buf_24(7 downto 0);
						
					when "1110011" =>
						comm_length			<= 3;
						comm_buf(0)			<= comm_test_buf_24(23 downto 16);
						comm_buf(1)			<= comm_test_buf_24(15 downto 8);
						comm_buf(2)			<= comm_test_buf_24(7 downto 0);
						
					when others =>
						comm_state			<= s_comm_err;
						
				end case;
				
			when  s_data_set => 
				comm_clear		<= '1';
--				comm_response	<= '1';

				if comm_cmd(7) = '1' then
					comm_tx_buf <= comm_buf(comm_index);
				else
					comm_tx_buf <= x"00";
				end if;
				
				if ICE_SPI_CE0 = '1' then
					comm_state			<= s_comm_err;
				else
					if comm_data_vld = '0' then
						comm_state			<= s_data_wrd;
					end if;
				end if;
				
			when  s_data_wrd =>
				comm_clear			<= '0';
--				comm_response		<= '1';
				
				if ICE_SPI_CE0 = '1' then
					comm_state			<= s_comm_err;
				else
					if comm_data_vld = '1' then
						if comm_cmd(7) = '0' then
							comm_buf(comm_index)		<= comm_rx_buf;
						end if;
						comm_index 		<= comm_index + 1;
						comm_state		<= s_data_chk;
					end if;
				end if;
				
			when  s_data_chk => 	
				comm_clear		<= '1';
--				comm_response		<= '1';
				
				if ICE_SPI_CE0 = '1' then
					comm_state			<= s_comm_err;
				else
					if comm_length = comm_index then
						if comm_cmd(7) = '0' then
							comm_state		<= s_data_finish;
						else
							comm_state		<= s_data_finish1;
						end if;
					else 
						comm_state		<= s_data_set;
					end if;
				end if;
				
			when  s_data_finish => 	
				comm_state		<= s_data_finish1;
--				comm_clear		<= '1';
--				comm_response	<= '1';

				case comm_cmd(6 downto 0) is	
					when "0010000" =>		--ICE_CMD_DDS0 : 0x10
						buf_dds0(15 downto 8)			<= comm_buf(0);
						buf_dds0(7 downto 0)				<= comm_buf(1);
						trig_dds0		<= '1';
						
					when "0010001" =>		--ICE_CMD_DDS1 : 0x11
						buf_dds1(15 downto 8)			<= comm_buf(0);
						buf_dds1(7 downto 0)				<= comm_buf(1);	
						trig_dds1		<= '1';
					
					when "0010010" =>		--ICE_CMD_DEV_ACADC : 0x12
						buf_device_acadc(7 downto 0) 	<= comm_buf(0);	
						
					when "0010110" =>		--ICE_CMD_RTD_CFG : 0x16
						buf_cfgRTD(7 downto 0)			<= comm_buf(0);

					when "0011000" =>		--ICE_CMD_DEVICE_DO : 0x18
						buf_control(6 downto 0) <= comm_buf(0)(6 downto 0);
						
					when "0011001" =>			--ICE_CMD_EIS_SKIP_COUNT 		: 0x19
						acadc_skipCount(15 downto 8)			<= comm_buf(0);
						acadc_skipCount(7 downto 0)			<= comm_buf(1);
						
					when "0011010" =>			--ICE_CMD_EIS REQ SMPL DATA: 0x1A
						req_data_cnt(15 downto 8)			<= comm_buf(0);
						req_data_cnt(7 downto 0)			<= comm_buf(1);	
						
					when "0011011" =>			--ICE_CMD_EIS CFG 		: 0x1B
						acadc_rst			<= comm_buf(0)(2);
						eis_stop				<= comm_buf(0)(1);
						eis_start			<= comm_buf(0)(0);

					when "0011101" =>			--ICE_CMD_EIS SET INDEX 		: 0x1D
						data_idxvec(15 downto 8)			<= comm_buf(0);
						data_idxvec(7 downto 0)				<= comm_buf(1);
						data_index		<= conv_integer(comm_buf(0) & comm_buf(1));

					when "1110001" =>
						comm_test_buf_24(7 downto 0) 	<= comm_buf(0);
						buf_device_acadc		<= comm_buf(0);		
					
					when "1110010" =>
						comm_test_buf_24(15 downto 8)		<= comm_buf(0);
						comm_test_buf_24(7 downto 0)		<= comm_buf(1);
						buf_device_acadc		<= comm_buf(1);		
					
					when "1110011" =>	
						comm_test_buf_24(23 downto 16)	<= comm_buf(0);
						comm_test_buf_24(15 downto 8)		<= comm_buf(1);
						comm_test_buf_24(7 downto 0)		<= comm_buf(2);
						buf_device_acadc		<= comm_buf(2);	
						
					when others =>
						comm_state			<= s_comm_err;
				end case;
			
			when  s_data_finish1 => 	
				comm_clear		<= '1';
				comm_response	<= '1';

				if comm_data_vld = '0' and ICE_SPI_CE0 = '1' then
					comm_state		<= s_idle;	
				end if;
				
			when others =>
				comm_state		<= s_idle;
				
			end case;
		end if;
	end process;
	
	pll_main : zim_pll 
	port map (
		REFERENCECLK	=> ICE_SYSCLK,
		RESET				=> pll_reset,
		PLLOUTCOREA		=> pll_outa,
		PLLOUTCOREB		=> pll_outb,
		PLLOUTGLOBALA	=> clk_32MHz,   -- 32MHz
		PLLOUTGLOBALB	=> clk_16MHz    -- 16MHz
	);
	
	comm_spi : SPI_SLAVE 
	port map (
		CLK 		=> clk_spislave,
		RESET		=> comm_clear,
		SCLK 		=> ICE_SPI_SCLK,	
		CS_N 		=> ICE_SPI_CE0, 
		MOSI 		=> ICE_SPI_MOSI, 	
		MISO 		=> ICE_SPI_MISO, 	
		DIN 		=> comm_tx_buf,   	
		DOUT 		=> comm_rx_buf, 
		DATA_VLD => comm_data_vld
	);
	
	SIG_DDS : DDS_AD9837 
	port map (
			CLK 		=> clk_dds0, 	
			TRIG		=> trig_dds0,
			DATA 		=> buf_dds0, 		
			SCLK 		=> DDS_SCK, 
			CS			=> DDS_CS, 
			MOSI		=> DDS_MOSI
	);
	
	CLK_DDS : DDS_AD9837 
	port map (
			CLK 		=> clk_dds1, 
			TRIG		=> trig_dds1,	
			DATA 		=> buf_dds1, 		
			SCLK 		=> DDS_SCK1, 
			CS			=> DDS_CS1, 
			MOSI		=> DDS_MOSI1
	);

	RTD : ADC_MAX31865 
	port map (
			CLK 			=> clk_RTD, 	
			CFG_DATA 	=> buf_cfgRTD, 		
			READ_DATA 	=> buf_readRTD, 		
			SCLK 			=> RTD_SCLK, 
			CS				=> RTD_CS, 
			MOSI			=> RTD_SDI, 
			MISO			=> RTD_SDO, 
			DRDY			=> RTD_DRDY 
	);

	ADC_IAC : ADC_ADS127 
	port map (
		CLK 			=> clk_IAC_ADC, 
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig_i,	
		ADC_DATA		=> buf_adcdata_iac, 		
		SCLK 			=> IAC_SCLK, 	
		CS 			=> IAC_CS, 	
		MOSI 			=> IAC_MOSI, 	
		MISO 			=> IAC_MISO, 	
		DRDY 			=> IAC_DRDY 	
	);

	ADC_VAC : ADC_ADS127 
	port map (
		CLK 			=> clk_VAC_ADC, 	
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig_v,	
		ADC_DATA		=> buf_adcdata_vac, 		
		SCLK 			=> VAC_SCLK, 	
		CS 			=> VAC_CS, 	
		MOSI 			=> VAC_MOSI, 	
		MISO 			=> VAC_MISO, 	
		DRDY 			=> VAC_DRDY 	
	);
	
	ADC_VDC : ADC_ADS1252
	Port map (
		CLK 			=> clk_VDC_ADC,			
		ADC_DATA		=> buf_adcdata_vdc, 	
		MCLK 			=> VDC_CLK, 	
		SCLK 			=> VDC_SCLK, 	
		MISO 			=> VDC_SDO
	);

	
end behav;
