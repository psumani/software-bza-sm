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
	MISO : out std_logic; 		-- SPI serial data from slave to master
	-- USER INTERFACE
	DIN : in std_logic_vector(7 downto 0); -- input data for SPI master
	DOUT : out std_logic_vector(7 downto 0); -- output data from SPI master
	DATA_VLD : out std_logic -- when DATA_VLD = 1, data are valid

);
end SPI_SLAVE;

architecture behav of SPI_SLAVE is
signal data_valid 		: std_logic := '0';
signal iclk 				: std_logic := '0';
signal imosi 				: std_logic := '0';
signal imiso 				: std_logic := '0';
signal bit_cnt 			: std_logic_vector(3 downto 0) := x"0";
signal data_rx 			: std_logic_vector(7 downto 0);
signal data_tx 			: std_logic_vector(7 downto 0);

begin

--	spi_reset <= '1' when RESET = '1'								else
--					 '1' when data_valid = '1' and CS_N = '1' 	else
--					 '1' when bit_cnt = x"0" and CS_N = '1' 		else
--					 '0';
	
	DOUT 		<= data_rx; 
	DATA_VLD <= data_valid;

	process(CLK, SCLK, MOSI) --, imiso, DIN(7))
	begin
		if RESET = '1' then
			iclk <= SCLK;
			imosi <= MOSI;
--			MISO <= DIN(7);
		elsif falling_edge(CLK) then
			iclk <= SCLK;
			imosi <= MOSI;
--			MISO <= imiso;
		end if;
	end process;
	
	process(CLK, imiso, DIN(7))
	begin
		if RESET = '1' then
			MISO <= DIN(7);
		elsif rising_edge(CLK) then
			MISO <= imiso;
		end if;
	end process;
	
	
	process(iclk, RESET, data_tx,imosi)
	begin
		if RESET = '1' then
			data_tx				<= DIN;
			data_rx <= "0000000" & imosi;
		elsif rising_edge(iclk) then
			if bit_cnt = x"0" then
				data_rx <= "0000000" & imosi;	
			else
				data_rx <= data_rx(6 downto 0) & imosi;	
			end if;
			data_tx 		<= data_tx(6 downto 0) & '1';
		end if;
	end process;
	
	process(iclk, RESET, bit_cnt, DIN(7), data_tx(7))
	begin
		if RESET = '1' then
			imiso 					<= DIN(7);
			bit_cnt 				<= x"0";
		elsif falling_edge(iclk) then
			bit_cnt 		<= bit_cnt + "1";
			imiso	  		<= data_tx(7);
		end if;
	end process;
	
	
	process(CLK, bit_cnt)
	begin
		if RESET = '1' then
			data_valid <= '0';
		elsif rising_edge(CLK) then
			if bit_cnt = x"8" then
				data_valid <= '1';
			else
				data_valid <= '0';
			end if;
		end if;
	end process;
	
	
end behav;


