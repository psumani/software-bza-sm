library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


-- THE SPI SLAVE MODULE SUPPORT ONLY SPI MODE 0 (CPOL=0, CPHA=0)!!

entity SPI_SLAVE is
Port (
	CLK : in std_logic; 		-- system clock
	RESET : in std_logic;
	-- SPI SLAVE INTERFACE
	SCLK : in std_logic; 		-- SPI clock
	CS_N : in std_logic; 		-- SPI chip select, active in low
	MOSI : in std_logic; 		-- SPI serial data from master to slave
	MISO : out std_logic	:= '0'; 		-- SPI serial data from slave to master		-- added to ensure
	-- USER INTERFACE
	DIN : in std_logic_vector(7 downto 0); -- input data for SPI master
	DOUT : out std_logic_vector(7 downto 0); -- output data from SPI master
	DATA_VLD : out std_logic -- when DATA_VLD = 1, data are valid

);
end SPI_SLAVE;

architecture behav of SPI_SLAVE is
signal data_valid 		: std_logic := '0';
signal bit_cnt 			: std_logic_vector(3 downto 0) := x"0";
signal data_rx 			: std_logic_vector(7 downto 0) := x"00";
signal data_tx 			: std_logic_vector(7 downto 0);

signal sclk_sync1, sclk_sync2 : std_logic := '0';
signal sclk_rising_pend, sclk_falling_pend : std_logic := '0';
--signal tilde_led : std_logic := '1';
begin
	
--	spi_reset <= '1' when RESET = '1'								else
--					 '1' when data_valid = '1' and CS_N = '1' 	else
--					 '1' when bit_cnt = x"0" and CS_N = '1' 		else
--					 '0';
	
	DOUT 		<= data_rx; -- master out
	DATA_VLD <= data_valid;
	--TLED <= tilde_led;

	process(CLK, RESET, CS_N) --
	begin
		if RESET = '1' then
			data_tx				<= DIN; -- slave out
			
			bit_cnt 			<= x"0";
			MISO	  		<= DIN(7);
		elsif rising_edge(CLK) then
			-- 2-FF 동기화
			sclk_sync1 <= SCLK;
			sclk_sync2 <= sclk_sync1;

			-- rising edge pending
			if (sclk_sync1='1' and sclk_sync2='0') then
				sclk_rising_pend <= '1';
			end if;

			-- falling edge pending
			if (sclk_sync1='0' and sclk_sync2='1') then
				sclk_falling_pend <= '1';
			end if;
			
--			if data_valid = '1' then
--				data_tx	<= DIN;
--				MISO <= DIN(7);
--			end if ;
			if sclk_rising_pend = '1' then -- if sclk_rising = '1' then
				if bit_cnt = x"0" then
--					data_tx <= DIN;
					data_rx <= "0000000" & MOSI;	
--					MISO <= DIN(7);
				elsif bit_cnt = x"8" then
					bit_cnt <= x"0";
					data_tx <= DIN;
					data_rx <= "0000000" & MOSI;
--					MISO <= DIN(7);
				else
					data_rx <= data_rx(6 downto 0) & MOSI;	
				end if;
				data_tx 		<= data_tx(6 downto 0) & '1';
				sclk_rising_pend <= '0'; -- clear after use --tilde_led <= '1';
			elsif sclk_falling_pend = '1' then -- elsif sclk_falling = '1' then
				bit_cnt 		<= bit_cnt + "1";	
				MISO	  		<= data_tx(7);
				sclk_falling_pend <= '0'; --tilde_led <= '0';
			end if;
		end if;
	end process;
	
	
	
	process(CLK, bit_cnt)
	begin
		if RESET = '1' then
			data_valid <= '0';
		elsif falling_edge(CLK) then
			if bit_cnt = x"8" then
				data_valid <= '1';
				
			else
				data_valid <= '0';
			end if;
		end if;
	end process;
	
	
end behav;



