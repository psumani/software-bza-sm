library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity zimaux is
	port (
		ICE_SYSCLK		: in  	std_logic;
		TEST_LED     	: out  	std_logic;
		
		DDS_MCLK1		: out  	std_logic;
		DDS_CS1			: out  	std_logic;
		DDS_MOSI1		: out  	std_logic;
		DDS_SCK1			: out  	std_logic;

		DISP_COMM		: out  	std_logic;
		EIS_SYNCCLK		: in  	std_logic;
		
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
		ICE_GPMO_0 		: in  	std_logic;
		ICE_GPMO_1		: in  	std_logic;
		ICE_GPMO_2		: in  	std_logic;
		ICE_GPMI_0		: out  	std_logic;
		ICE_CHKCABLE	: in  	std_logic;
		
		M_OSR0			: out  	std_logic;
		M_OSR1			: out  	std_logic;
		M_FLT0			: out  	std_logic;
		M_FLT1			: out  	std_logic;
		M_POW				: out  	std_logic;
		M_DCSEL			: out  	std_logic;
		M_START			: out  	std_logic;
		
		M_CLK1			: out  	std_logic;
		M_SCLK1			: out  	std_logic;
		M_CS1				: out  	std_logic;
		M_MOSI1			: out  	std_logic;
		M_MISO1			: in  	std_logic;
		M_DRDY1			: in  	std_logic;
		
		M_CLK2			: out  	std_logic;
		M_SCLK2			: out  	std_logic;
		M_CS2				: out  	std_logic;
		M_MOSI2			: out  	std_logic;
		M_MISO2			: in  	std_logic;
		M_DRDY2			: in  	std_logic;
		
		M_CLK3			: out  	std_logic;
		M_SCLK3			: out  	std_logic;
		M_CS3				: out  	std_logic;
		M_MOSI3			: out  	std_logic;
		M_MISO3			: in  	std_logic;
		M_DRDY3			: in  	std_logic;
		
		M_CLK4			: out  	std_logic;
		M_SCLK4			: out  	std_logic;
		M_CS4				: out  	std_logic;
		M_MOSI4			: out  	std_logic;
		M_MISO4			: in  	std_logic;
		M_DRDY4			: in  	std_logic
		
      ------------ J5 -------------------		
--		ICE_IOL_14B		: out  	std_logic;
--		ICE_IOL_17A		: out  	std_logic;
--		ICE_IOL_17B		: out  	std_logic;
--		ICE_IOL_18A		: out  	std_logic;
--		ICE_IOL_18B		: out  	std_logic;
--		ICE_IOL_23A		: out  	std_logic;
--		ICE_IOL_23B		: out  	std_logic;
--		ICE_IOL_24A		: out  	std_logic;
--		ICE_IOL_24B		: out		std_logic;
--		ICE_IOL_25A		: out  	std_logic;
--		ICE_IOL_25B		: out  	std_logic;
		----------------------------------
		
		------------ J6 ------------------
--		ICE_IOR_136		: out  	std_logic;
--		ICE_IOR_137		: out  	std_logic;
--		ICE_IOR_138		: out  	std_logic;
--		ICE_IOR_139		: out  	std_logic;
--		ICE_IOR_144		: out  	std_logic;
--		ICE_IOR_149		: out  	std_logic;
		----------------------------------
		
		------------ J7 ------------------
--		ICE_IOR_152		: out  	std_logic;
--		ICE_IOR_160		: out  	std_logic;
--		ICE_IOR_161		: out  	std_logic;
--		ICE_IOR_164		: out  	std_logic;
--		ICE_IOR_165		: out  	std_logic;
--		ICE_IOR_166		: out  	std_logic;
		----------------------------------		
		
		------------ Not used ------------
--		ICE_IOL_2A		: out  	std_logic;
--		ICE_IOL_5B 		: out  	std_logic;
--		ICE_IOL_13A		: out  	std_logic;
--		ICE_IOL_13B		: out  	std_logic;
--		ICE_IOL_14A		: out  	std_logic;
--		ICE_IOL_25B		: out  	std_logic;
--		
--		ICE_IOB_72		: out  	std_logic;
--		ICE_IOB_80		: out  	std_logic;
--		ICE_IOB_81		: out  	std_logic;
--		ICE_IOB_82		: out  	std_logic;
--		ICE_IOB_91		: out  	std_logic;
--		ICE_IOB_94		: out  	std_logic;
--		ICE_IOB_95		: out  	std_logic;
--		ICE_IOB_96		: out  	std_logic;
--		ICE_IOB_102		: out  	std_logic;
--		ICE_IOB_103		: out  	std_logic;
--		ICE_IOB_104		: out  	std_logic;
--		
--		ICE_IOR_118		: out  	std_logic;
--		ICE_IOR_120		: out  	std_logic;
--		ICE_IOR_128		: out  	std_logic;
--		ICE_IOR_140		: out  	std_logic;
--		ICE_IOR_141		: out  	std_logic;
--		ICE_IOR_147		: out  	std_logic;
--		ICE_IOR_148		: out  	std_logic;
--		ICE_IOR_167		: out  	std_logic;
--		
--		ICE_IOT_168		: out  	std_logic;
--		ICE_IOT_177		: out  	std_logic;
--		ICE_IOT_178		: out  	std_logic;
--		ICE_IOT_191		: out  	std_logic;
--		ICE_IOT_197		: out  	std_logic;
--		ICE_IOT_198		: out  	std_logic;
--		ICE_IOT_214		: out  	std_logic;
--		ICE_IOT_222		: out  	std_logic;
		----------------------------------
		
	);
end zimaux;

architecture behav of zimaux is

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
	
	
	signal clk_16MHz			: std_logic := '0';
	signal clk_32MHz			: std_logic := '0';
	
	signal eis_clk				: std_logic := '0';
	signal clk_VAC_ADC			: std_logic := '0';
	signal clk_spislave		: std_logic := '0';
	signal clk_spicomm		: std_logic := '0';
	
	signal clk_dds				: std_logic := '0';
	signal buf_dds 			: std_logic_vector(15 downto 0):= x"0000";
	signal trig_dds			: std_logic := '0';
	
	signal SecClk				: std_logic := '0';
	signal secclk_cnt    	: std_logic_vector(31 downto 0):= x"00000000";
	
	--pll vars
	signal pll_reset		: std_logic := '1';
	signal pll_outa		: std_logic := '0';
	signal pll_outb		: std_logic := '0';
	
	type def_slave_state 	is (s_reset, s_idle, s_start, s_comm_err, s_chk_cmd, s_data_set, s_data_wrd, s_data_chk, s_data_finish, s_data_finish1);
	type def_comm_buf 		is array(0 to 11) of std_logic_vector(7 downto 0);
   --spi slave vars
	
	
	signal comm_tx_buf 		: std_logic_vector(7 downto 0);
	signal comm_data_vld		: std_logic := '0';
	signal comm_rx_buf 		: std_logic_vector(7 downto 0);
	signal comm_test_buf_24	: std_logic_vector(23 downto 0);
	
	signal comm_state 		: def_slave_state := s_reset;
	signal comm_response		: std_logic := '0';
	signal comm_cmd			: std_logic_vector(7 downto 0):= (others => '0');
	signal comm_clear			: std_logic := '0';
	
	signal comm_buf 			: def_comm_buf;
	signal comm_index			: integer range 0 to 12 := 0;
	signal comm_length		: integer range 0 to 12 := 0;

	--ac adc vars
	type def_trig_state 		is (s_chk_high, s_highdelay, s_highdelay1, s_chk_low);
	signal actrig_state 		: def_trig_state := s_chk_high;
	signal acadc_trig			: std_logic:= '0';
	signal acadc_dtrigH		: std_logic:= '0';
	signal acadc_dtrigL		: std_logic:= '0';
	signal acadc_dtrig1		: std_logic:= '0';
	signal acadc_dtrig2		: std_logic:= '0';
	signal acadc_dtrig3		: std_logic:= '0';
	signal acadc_dtrig4		: std_logic:= '0';
	
	signal acadc_skipcnt		: std_logic_vector(15 downto 0) := x"0000";
	signal acadc_skipCount	: std_logic_vector(15 downto 0) := x"0000";
	
	signal buf_device_acadc	: std_logic_vector(7 downto 0) := x"00";
	signal buf_adc1 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adc2 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adc3 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adc4 			: std_logic_vector(23 downto 0) := x"000000";
	
	signal buf_adcdata1 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata2 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata3 		: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata4 		: std_logic_vector(23 downto 0) := x"000000";
	
	signal buf_adcdata_vdc1	: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata_vdc2	: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata_vdc3	: std_logic_vector(23 downto 0) := x"000000";
	signal buf_adcdata_vdc4	: std_logic_vector(23 downto 0) := x"000000";

	type def_eis_state 		is (s_reset, s_idle, s_chk_begin, s_sample_h, s_skipsmpl_h, s_bypass_h, s_chk_finish, s_finish);
	signal eis_state 		: def_eis_state := s_reset;

	
	signal tacadc_rst			: std_logic := '0';
	signal acadc_rst			: std_logic := '0';
	signal eis_start			: std_logic := '0';
	signal eis_stop			: std_logic := '0';
	signal eis_end				: std_logic := '0';
	signal req_data_cnt    	: std_logic_vector(15 downto 0):= x"0000";
	
	signal buf_data1 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_data2 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_data3 			: std_logic_vector(23 downto 0) := x"000000";
	signal buf_data4 			: std_logic_vector(23 downto 0) := x"000000";
	
	signal data_count    	: integer range 0 to 1023 := 0;
	signal data_cntvec    	: std_logic_vector(15 downto 0):= x"0000";
	signal data_index    	: integer range 0 to 1023 := 0;
	signal data_idxvec    	: std_logic_vector(15 downto 0):= x"0000";
	
	type def_ac_raw_buf 		is array(0 to 511) of std_logic_vector(23 downto 0);
	signal raw_buf1	 		: def_ac_raw_buf;
	signal raw_buf2			: def_ac_raw_buf;
	signal raw_buf3			: def_ac_raw_buf;
	signal raw_buf4			: def_ac_raw_buf;

	--control vars
	signal buf_control 		: std_logic_vector(7 downto 0):= x"00";
	
	signal wdtick_flag		: std_logic := '0';
	signal flagcntwd			: std_logic := '0';
	signal wdtick_cnt    	: std_logic_vector(3 downto 0):= x"0";
	
	
	
	signal buf_version 		: std_logic_vector(15 downto 0)  := x"13EC";  -- 5100
	
begin   -- pll_gouta = 32MHz, pll_goutb = 16MHz

	eis_clk			<= not clk_32MHz;	-- 32MHz  
	clk_VAC_ADC		<= clk_32MHz;	-- 32MHz 
	clk_dds			<= clk_32MHz;	-- 32MHz
	
	DDS_MCLK1 		<= not clk_16MHz; 	-- 16MHz 

	M_CLK1			<= EIS_SYNCCLK; -- not EIS_SYNCCLK;  
	M_CLK2			<= EIS_SYNCCLK; -- not EIS_SYNCCLK;
	M_CLK3			<= EIS_SYNCCLK; -- not EIS_SYNCCLK; 
	M_CLK4			<= EIS_SYNCCLK; -- not EIS_SYNCCLK; -
	
	clk_spicomm 	<= clk_32MHz; 
	clk_spislave 	<= not clk_32MHz;	
	
	

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
	
	process(SecClk) --16000000 / 16000000 = 1Hz , 16000000 * 2 = 01E84800
	begin
		if flagcntwd = '1' then
			wdtick_flag	<= '0'; 
			wdtick_cnt <= x"0";
		elsif rising_edge(SecClk) then 
			if wdtick_flag	= '0' then
				wdtick_cnt <= wdtick_cnt + "1";
				if wdtick_cnt = x"4" then
					wdtick_flag	<= '1'; 
					wdtick_cnt <= x"0";
				end if;
			end if;
		end if;
	end process;
	
	TEST_LED 		<= SecClk; --ICE_SPI_MOSI; ICE_SPI_SCLK;
	
	acadc_dtrigH		<= '1' when acadc_dtrig1 = '1' and acadc_dtrig2 = '1' and acadc_dtrig3 = '1' and acadc_dtrig4 = '1' else '1';
	acadc_dtrigL		<= '1' when acadc_dtrig1 = '0' and acadc_dtrig2 = '0' and acadc_dtrig3 = '0' and acadc_dtrig4 = '0' else '0';
	
	acadc_rst		<=	ICE_GPMO_0; -- and tacadc_rst;
	M_START			<= not acadc_rst; 
	
	M_FLT1			<= buf_device_acadc(3);
	M_FLT0			<= buf_device_acadc(2);
	M_OSR1			<= buf_device_acadc(1);
	M_OSR0			<= buf_device_acadc(0);

	M_POW				<= buf_control(2);
	M_DCSEL			<= buf_control(1);
	--M_START 			<= buf_control(0);
	
	buf_data1 		<=  raw_buf1(data_index);
	buf_data2 		<=  raw_buf2(data_index);
	buf_data3 		<=  raw_buf3(data_index);
	buf_data4 		<=  raw_buf4(data_index);
	
	
	DISP_COMM		<= ICE_GPMO_2; 
	ICE_GPMI_0     <= comm_response;
	

	
	process(eis_clk, acadc_trig, acadc_dtrigH, acadc_dtrigL, eis_start, eis_stop, req_data_cnt,acadc_skipCount) --8MHz
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
				if acadc_dtrigH = '1' then	
					raw_buf1(data_count) <= buf_adcdata1;
					raw_buf2(data_count) <= buf_adcdata2;
					raw_buf3(data_count) <= buf_adcdata3;
					raw_buf4(data_count) <= buf_adcdata4;
					data_count 	<= data_count + 1;
					data_cntvec <= data_cntvec + "1";
					eis_state		<= s_chk_finish;
				end if;

			when s_skipsmpl_h =>
				if acadc_dtrigH = '1' then	
					acadc_skipcnt <= acadc_skipcnt + "1";
					eis_state		<= s_chk_finish;
				end if;
				
			when s_bypass_h =>
				if acadc_dtrigH = '1' then	
					eis_state		<= s_chk_finish;
				end if;
				
			when s_chk_finish =>
				acadc_trig	<= '0';
				if acadc_dtrigL = '1' then
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
	
	process(clk_spicomm, ICE_SPI_CE0,ICE_CHKCABLE,eis_end, comm_data_vld, data_cntvec)
	begin
		if rising_edge(clk_spicomm) then

			case comm_state is
			when s_reset =>
				comm_clear		<= '1';
				comm_response	<= '0';
				flagcntwd		<= '1';
				trig_dds			<= '0';
				buf_dds			<= x"2028";
				comm_state		<= s_data_finish1;
			
			when s_idle =>
				comm_clear		<= '1';
				comm_response	<= '0';
				trig_dds			<= '0';
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
					when "0010001" =>		--ICE_CMD_DDS_CLK : 0x91
						comm_length			<= 2;
						comm_buf(0)			<= buf_dds(15 downto 8);
						comm_buf(1)			<= buf_dds(7 downto 0);	
						
					when "0010010" =>		--ICE_CMD_DEV_ACADC : 0x92
						comm_length			<= 1;
						comm_buf(0)			<= buf_device_acadc(7 downto 0);
--						M_FLT1			<= buf_device_acadc(3);
--						M_FLT0			<= buf_device_acadc(2);
--						M_OSR1			<= buf_device_acadc(1);
--						M_OSR0			<= buf_device_acadc(0);
					
					when "0010011" =>		--LAST_ADC_DATA1 : 0x93
						comm_length			<= 6;
						comm_buf(0)			<= buf_adcdata_vdc1(23 downto 16);
						comm_buf(1)			<= buf_adcdata_vdc1(15 downto 8);
						comm_buf(2)			<= buf_adcdata_vdc1(7 downto 0);
						comm_buf(3)			<= buf_adcdata_vdc2(23 downto 16);
						comm_buf(4)			<= buf_adcdata_vdc2(15 downto 8);
						comm_buf(5)			<= buf_adcdata_vdc2(7 downto 0);

						
						
					when "0010100" =>		--LAST_ADC_DATA2 : 0x94	
						comm_length			<= 6;
						comm_buf(0)			<= buf_adcdata3(23 downto 16);
						comm_buf(1)			<= buf_adcdata3(15 downto 8);
						comm_buf(2)			<= buf_adcdata3(7 downto 0);
						comm_buf(3)			<= buf_adcdata4(23 downto 16);
						comm_buf(4)			<= buf_adcdata4(15 downto 8);
						comm_buf(5)			<= buf_adcdata4(7 downto 0);
						
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
						comm_buf(0)			<= "0000" & ICE_CHKCABLE & tacadc_rst & eis_stop & eis_start;
						
					when "0011100" =>			--ICE_CMD_EIS_SMPLS 		: 0x9C
						comm_length			<= 2;
						comm_buf(0)			<= eis_end & "000" & data_cntvec(11 downto 8);
						comm_buf(1)			<= data_cntvec(7 downto 0);
					
					when "0011101" =>			--ICE_CMD_EIS_GET INDEX 		: 0x9D
						comm_length			<= 2;
						comm_buf(0)			<= data_idxvec(15 downto 8);
						comm_buf(1)			<= data_idxvec(7 downto 0);

					when "0011110" =>			--ICE_CMD_EIS_DATA of index 		: 0x9E
						comm_length			<= 12;
						comm_buf(0)			<= buf_data1(23 downto 16);
						comm_buf(1)			<= buf_data1(15 downto 8);
						comm_buf(2)			<= buf_data1(7 downto 0);	
						comm_buf(3)			<= buf_data2(23 downto 16);
						comm_buf(4)			<= buf_data2(15 downto 8);
						comm_buf(5)			<= buf_data2(7 downto 0);
						comm_buf(6)			<= buf_data3(23 downto 16);
						comm_buf(7)			<= buf_data3(15 downto 8);
						comm_buf(8)			<= buf_data3(7 downto 0);
						comm_buf(9)			<= buf_data4(23 downto 16);
						comm_buf(10)		<= buf_data4(15 downto 8);
						comm_buf(11)		<= buf_data4(7 downto 0);
						data_index			<= data_index + 1;
						data_idxvec			<= data_idxvec + "1";
					
					when "0011111" =>			
						comm_length			<= 2; 
						comm_buf(0)			<= buf_version(15 downto 8);
						comm_buf(1)			<= buf_version(7 downto 0);
						
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
					when "0010001" =>		--ICE_CMD_DDS1 : 0x11
						buf_dds(15 downto 8)			<= comm_buf(0);
						buf_dds(7 downto 0)				<= comm_buf(1);	
						trig_dds		<= '1';
					
					when "0010010" =>		--ICE_CMD_DEV_ACADC : 0x12
						buf_device_acadc(7 downto 0) 	<= comm_buf(0);	
						
					when "0011000" =>		--ICE_CMD_DEVICE_DO : 0x18
						buf_control(6 downto 0) <= comm_buf(0)(6 downto 0);
						
					when "0011001" =>			--ICE_CMD_EIS_SKIP_COUNT 		: 0x19
						acadc_skipCount(15 downto 8)			<= comm_buf(0);
						acadc_skipCount(7 downto 0)			<= comm_buf(1);
						
					when "0011010" =>			--ICE_CMD_EIS REQ SMPL DATA: 0x1A
						req_data_cnt(15 downto 8)			<= comm_buf(0);
						req_data_cnt(7 downto 0)			<= comm_buf(1);	
						
					when "0011011" =>			--ICE_CMD_EIS CFG 		: 0x1B
						tacadc_rst			<= comm_buf(0)(2);
						eis_stop				<= comm_buf(0)(1);
						eis_start			<= comm_buf(0)(0);

					when "0011101" =>			--ICE_CMD_EIS SET INDEX 		: 0x1D
						data_idxvec(15 downto 8)			<= comm_buf(0);
						data_idxvec(7 downto 0)				<= comm_buf(1);
						data_index		<= conv_integer(comm_buf(0) & comm_buf(1));

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
	
	ADC_VAC1 : ADC_ADS127 
	port map (
		CLK 			=> clk_VAC_ADC, 	
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig1,	
		ADC_DATA		=> buf_adcdata1, 		
		SCLK 			=> M_SCLK1, 	
		CS 			=> M_CS1, 	
		MOSI 			=> M_MOSI1, 	
		MISO 			=> M_MISO1, 	
		DRDY 			=> M_DRDY1 	
	);
	
	ADC_VAC2 : ADC_ADS127 
	port map (
		CLK 			=> clk_VAC_ADC, 	
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig2,	
		ADC_DATA		=> buf_adcdata2, 		
		SCLK 			=> M_SCLK2, 	
		CS 			=> M_CS2, 	
		MOSI 			=> M_MOSI2, 	
		MISO 			=> M_MISO2, 	
		DRDY 			=> M_DRDY2 	
	);
	
	ADC_VAC3 : ADC_ADS127 
	port map (
		CLK 			=> clk_VAC_ADC, 	
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig3,	
		ADC_DATA		=> buf_adcdata3, 		
		SCLK 			=> M_SCLK3, 	
		CS 			=> M_CS3, 	
		MOSI 			=> M_MOSI3, 	
		MISO 			=> M_MISO3, 	
		DRDY 			=> M_DRDY3 	
	);
	
	ADC_VAC4 : ADC_ADS127 
	port map (
		CLK 			=> clk_VAC_ADC, 	
		RESET			=> '0',
		TRIG			=> acadc_trig, 
		DTRIG			=> acadc_dtrig4,	
		ADC_DATA		=> buf_adcdata4, 		
		SCLK 			=> M_SCLK4, 	
		CS 			=> M_CS4, 	
		MOSI 			=> M_MOSI4, 	
		MISO 			=> M_MISO4, 	
		DRDY 			=> M_DRDY4 	
	);
	
	
	CLOCK_DDS : DDS_AD9837 
	port map (
			CLK 		=> clk_dds, 
			TRIG		=> trig_dds,	
			DATA 		=> buf_dds, 		
			SCLK 		=> DDS_SCK1, 
			CS			=> DDS_CS1, 
			MOSI		=> DDS_MOSI1
	);


	
end behav;
