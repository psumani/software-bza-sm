-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Jun 25 2018 11:12:57

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "SPI_MASTER" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of SPI_MASTER
entity SPI_MASTER is
port (
    CS_N : out std_logic_vector(0 to 0);
    DOUT : out std_logic_vector(7 downto 0);
    DIN : in std_logic_vector(7 downto 0);
    DOUT_VLD : out std_logic;
    DIN_LAST : in std_logic;
    SCLK : out std_logic;
    RST : in std_logic;
    MOSI : out std_logic;
    READY : out std_logic;
    MISO : in std_logic;
    DIN_VLD : in std_logic;
    CLK : in std_logic);
end SPI_MASTER;

-- Architecture of SPI_MASTER
-- View name is \INTERFACE\
architecture \INTERFACE\ of SPI_MASTER is

signal \N__2066\ : std_logic;
signal \N__2065\ : std_logic;
signal \N__2064\ : std_logic;
signal \N__2057\ : std_logic;
signal \N__2056\ : std_logic;
signal \N__2055\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2047\ : std_logic;
signal \N__2046\ : std_logic;
signal \N__2039\ : std_logic;
signal \N__2038\ : std_logic;
signal \N__2037\ : std_logic;
signal \N__2030\ : std_logic;
signal \N__2029\ : std_logic;
signal \N__2028\ : std_logic;
signal \N__2021\ : std_logic;
signal \N__2020\ : std_logic;
signal \N__2019\ : std_logic;
signal \N__2012\ : std_logic;
signal \N__2011\ : std_logic;
signal \N__2010\ : std_logic;
signal \N__2003\ : std_logic;
signal \N__2002\ : std_logic;
signal \N__2001\ : std_logic;
signal \N__1994\ : std_logic;
signal \N__1993\ : std_logic;
signal \N__1992\ : std_logic;
signal \N__1985\ : std_logic;
signal \N__1984\ : std_logic;
signal \N__1983\ : std_logic;
signal \N__1976\ : std_logic;
signal \N__1975\ : std_logic;
signal \N__1974\ : std_logic;
signal \N__1967\ : std_logic;
signal \N__1966\ : std_logic;
signal \N__1965\ : std_logic;
signal \N__1958\ : std_logic;
signal \N__1957\ : std_logic;
signal \N__1956\ : std_logic;
signal \N__1949\ : std_logic;
signal \N__1948\ : std_logic;
signal \N__1947\ : std_logic;
signal \N__1940\ : std_logic;
signal \N__1939\ : std_logic;
signal \N__1938\ : std_logic;
signal \N__1931\ : std_logic;
signal \N__1930\ : std_logic;
signal \N__1929\ : std_logic;
signal \N__1922\ : std_logic;
signal \N__1921\ : std_logic;
signal \N__1920\ : std_logic;
signal \N__1913\ : std_logic;
signal \N__1912\ : std_logic;
signal \N__1911\ : std_logic;
signal \N__1904\ : std_logic;
signal \N__1903\ : std_logic;
signal \N__1902\ : std_logic;
signal \N__1895\ : std_logic;
signal \N__1894\ : std_logic;
signal \N__1893\ : std_logic;
signal \N__1886\ : std_logic;
signal \N__1885\ : std_logic;
signal \N__1884\ : std_logic;
signal \N__1877\ : std_logic;
signal \N__1876\ : std_logic;
signal \N__1875\ : std_logic;
signal \N__1868\ : std_logic;
signal \N__1867\ : std_logic;
signal \N__1866\ : std_logic;
signal \N__1859\ : std_logic;
signal \N__1858\ : std_logic;
signal \N__1857\ : std_logic;
signal \N__1850\ : std_logic;
signal \N__1849\ : std_logic;
signal \N__1848\ : std_logic;
signal \N__1841\ : std_logic;
signal \N__1840\ : std_logic;
signal \N__1839\ : std_logic;
signal \N__1822\ : std_logic;
signal \N__1819\ : std_logic;
signal \N__1816\ : std_logic;
signal \N__1813\ : std_logic;
signal \N__1810\ : std_logic;
signal \N__1809\ : std_logic;
signal \N__1808\ : std_logic;
signal \N__1807\ : std_logic;
signal \N__1806\ : std_logic;
signal \N__1805\ : std_logic;
signal \N__1804\ : std_logic;
signal \N__1803\ : std_logic;
signal \N__1800\ : std_logic;
signal \N__1795\ : std_logic;
signal \N__1790\ : std_logic;
signal \N__1785\ : std_logic;
signal \N__1782\ : std_logic;
signal \N__1779\ : std_logic;
signal \N__1776\ : std_logic;
signal \N__1773\ : std_logic;
signal \N__1768\ : std_logic;
signal \N__1765\ : std_logic;
signal \N__1760\ : std_logic;
signal \N__1757\ : std_logic;
signal \N__1754\ : std_logic;
signal \N__1751\ : std_logic;
signal \N__1748\ : std_logic;
signal \N__1745\ : std_logic;
signal \N__1742\ : std_logic;
signal \N__1739\ : std_logic;
signal \N__1732\ : std_logic;
signal \N__1731\ : std_logic;
signal \N__1728\ : std_logic;
signal \N__1727\ : std_logic;
signal \N__1726\ : std_logic;
signal \N__1723\ : std_logic;
signal \N__1720\ : std_logic;
signal \N__1717\ : std_logic;
signal \N__1714\ : std_logic;
signal \N__1705\ : std_logic;
signal \N__1704\ : std_logic;
signal \N__1701\ : std_logic;
signal \N__1700\ : std_logic;
signal \N__1699\ : std_logic;
signal \N__1698\ : std_logic;
signal \N__1695\ : std_logic;
signal \N__1690\ : std_logic;
signal \N__1685\ : std_logic;
signal \N__1678\ : std_logic;
signal \N__1675\ : std_logic;
signal \N__1672\ : std_logic;
signal \N__1671\ : std_logic;
signal \N__1666\ : std_logic;
signal \N__1665\ : std_logic;
signal \N__1664\ : std_logic;
signal \N__1661\ : std_logic;
signal \N__1658\ : std_logic;
signal \N__1657\ : std_logic;
signal \N__1654\ : std_logic;
signal \N__1651\ : std_logic;
signal \N__1648\ : std_logic;
signal \N__1645\ : std_logic;
signal \N__1636\ : std_logic;
signal \N__1633\ : std_logic;
signal \N__1632\ : std_logic;
signal \N__1629\ : std_logic;
signal \N__1626\ : std_logic;
signal \N__1623\ : std_logic;
signal \N__1620\ : std_logic;
signal \N__1615\ : std_logic;
signal \N__1614\ : std_logic;
signal \N__1613\ : std_logic;
signal \N__1612\ : std_logic;
signal \N__1611\ : std_logic;
signal \N__1604\ : std_logic;
signal \N__1603\ : std_logic;
signal \N__1602\ : std_logic;
signal \N__1601\ : std_logic;
signal \N__1600\ : std_logic;
signal \N__1599\ : std_logic;
signal \N__1596\ : std_logic;
signal \N__1593\ : std_logic;
signal \N__1590\ : std_logic;
signal \N__1581\ : std_logic;
signal \N__1578\ : std_logic;
signal \N__1567\ : std_logic;
signal \N__1564\ : std_logic;
signal \N__1561\ : std_logic;
signal \N__1558\ : std_logic;
signal \N__1557\ : std_logic;
signal \N__1554\ : std_logic;
signal \N__1551\ : std_logic;
signal \N__1546\ : std_logic;
signal \N__1543\ : std_logic;
signal \N__1540\ : std_logic;
signal \N__1539\ : std_logic;
signal \N__1536\ : std_logic;
signal \N__1533\ : std_logic;
signal \N__1528\ : std_logic;
signal \N__1525\ : std_logic;
signal \N__1524\ : std_logic;
signal \N__1519\ : std_logic;
signal \N__1518\ : std_logic;
signal \N__1517\ : std_logic;
signal \N__1514\ : std_logic;
signal \N__1511\ : std_logic;
signal \N__1508\ : std_logic;
signal \N__1501\ : std_logic;
signal \N__1500\ : std_logic;
signal \N__1499\ : std_logic;
signal \N__1498\ : std_logic;
signal \N__1497\ : std_logic;
signal \N__1496\ : std_logic;
signal \N__1495\ : std_logic;
signal \N__1492\ : std_logic;
signal \N__1491\ : std_logic;
signal \N__1490\ : std_logic;
signal \N__1487\ : std_logic;
signal \N__1484\ : std_logic;
signal \N__1481\ : std_logic;
signal \N__1478\ : std_logic;
signal \N__1475\ : std_logic;
signal \N__1472\ : std_logic;
signal \N__1469\ : std_logic;
signal \N__1466\ : std_logic;
signal \N__1463\ : std_logic;
signal \N__1458\ : std_logic;
signal \N__1451\ : std_logic;
signal \N__1448\ : std_logic;
signal \N__1441\ : std_logic;
signal \N__1438\ : std_logic;
signal \N__1435\ : std_logic;
signal \N__1430\ : std_logic;
signal \N__1425\ : std_logic;
signal \N__1422\ : std_logic;
signal \N__1419\ : std_logic;
signal \N__1416\ : std_logic;
signal \N__1411\ : std_logic;
signal \N__1408\ : std_logic;
signal \N__1405\ : std_logic;
signal \N__1404\ : std_logic;
signal \N__1401\ : std_logic;
signal \N__1398\ : std_logic;
signal \N__1395\ : std_logic;
signal \N__1392\ : std_logic;
signal \N__1387\ : std_logic;
signal \N__1386\ : std_logic;
signal \N__1383\ : std_logic;
signal \N__1380\ : std_logic;
signal \N__1377\ : std_logic;
signal \N__1372\ : std_logic;
signal \N__1371\ : std_logic;
signal \N__1370\ : std_logic;
signal \N__1365\ : std_logic;
signal \N__1362\ : std_logic;
signal \N__1357\ : std_logic;
signal \N__1356\ : std_logic;
signal \N__1355\ : std_logic;
signal \N__1354\ : std_logic;
signal \N__1349\ : std_logic;
signal \N__1344\ : std_logic;
signal \N__1339\ : std_logic;
signal \N__1338\ : std_logic;
signal \N__1337\ : std_logic;
signal \N__1332\ : std_logic;
signal \N__1329\ : std_logic;
signal \N__1324\ : std_logic;
signal \N__1323\ : std_logic;
signal \N__1322\ : std_logic;
signal \N__1319\ : std_logic;
signal \N__1316\ : std_logic;
signal \N__1313\ : std_logic;
signal \N__1306\ : std_logic;
signal \N__1303\ : std_logic;
signal \N__1300\ : std_logic;
signal \N__1297\ : std_logic;
signal \N__1296\ : std_logic;
signal \N__1291\ : std_logic;
signal \N__1288\ : std_logic;
signal \N__1287\ : std_logic;
signal \N__1282\ : std_logic;
signal \N__1279\ : std_logic;
signal \N__1278\ : std_logic;
signal \N__1275\ : std_logic;
signal \N__1272\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1268\ : std_logic;
signal \N__1263\ : std_logic;
signal \N__1258\ : std_logic;
signal \N__1255\ : std_logic;
signal \N__1252\ : std_logic;
signal \N__1249\ : std_logic;
signal \N__1246\ : std_logic;
signal \N__1245\ : std_logic;
signal \N__1244\ : std_logic;
signal \N__1241\ : std_logic;
signal \N__1238\ : std_logic;
signal \N__1235\ : std_logic;
signal \N__1232\ : std_logic;
signal \N__1227\ : std_logic;
signal \N__1224\ : std_logic;
signal \N__1221\ : std_logic;
signal \N__1218\ : std_logic;
signal \N__1215\ : std_logic;
signal \N__1210\ : std_logic;
signal \N__1207\ : std_logic;
signal \N__1204\ : std_logic;
signal \N__1201\ : std_logic;
signal \N__1198\ : std_logic;
signal \N__1197\ : std_logic;
signal \N__1196\ : std_logic;
signal \N__1195\ : std_logic;
signal \N__1194\ : std_logic;
signal \N__1191\ : std_logic;
signal \N__1186\ : std_logic;
signal \N__1181\ : std_logic;
signal \N__1174\ : std_logic;
signal \N__1173\ : std_logic;
signal \N__1172\ : std_logic;
signal \N__1171\ : std_logic;
signal \N__1170\ : std_logic;
signal \N__1169\ : std_logic;
signal \N__1168\ : std_logic;
signal \N__1167\ : std_logic;
signal \N__1166\ : std_logic;
signal \N__1149\ : std_logic;
signal \N__1146\ : std_logic;
signal \N__1141\ : std_logic;
signal \N__1138\ : std_logic;
signal \N__1135\ : std_logic;
signal \N__1132\ : std_logic;
signal \N__1131\ : std_logic;
signal \N__1128\ : std_logic;
signal \N__1125\ : std_logic;
signal \N__1120\ : std_logic;
signal \N__1117\ : std_logic;
signal \N__1114\ : std_logic;
signal \N__1111\ : std_logic;
signal \N__1108\ : std_logic;
signal \N__1105\ : std_logic;
signal \N__1102\ : std_logic;
signal \N__1099\ : std_logic;
signal \N__1096\ : std_logic;
signal \N__1095\ : std_logic;
signal \N__1092\ : std_logic;
signal \N__1089\ : std_logic;
signal \N__1084\ : std_logic;
signal \N__1081\ : std_logic;
signal \N__1078\ : std_logic;
signal \N__1075\ : std_logic;
signal \N__1072\ : std_logic;
signal \N__1069\ : std_logic;
signal \N__1066\ : std_logic;
signal \N__1063\ : std_logic;
signal \N__1060\ : std_logic;
signal \N__1057\ : std_logic;
signal \N__1054\ : std_logic;
signal \N__1051\ : std_logic;
signal \N__1050\ : std_logic;
signal \N__1047\ : std_logic;
signal \N__1044\ : std_logic;
signal \N__1039\ : std_logic;
signal \N__1036\ : std_logic;
signal \N__1033\ : std_logic;
signal \N__1030\ : std_logic;
signal \N__1027\ : std_logic;
signal \N__1024\ : std_logic;
signal \N__1021\ : std_logic;
signal \N__1018\ : std_logic;
signal \N__1015\ : std_logic;
signal \N__1012\ : std_logic;
signal \N__1009\ : std_logic;
signal \N__1008\ : std_logic;
signal \N__1005\ : std_logic;
signal \N__1002\ : std_logic;
signal \N__997\ : std_logic;
signal \N__996\ : std_logic;
signal \N__993\ : std_logic;
signal \N__990\ : std_logic;
signal \N__985\ : std_logic;
signal \N__982\ : std_logic;
signal \N__979\ : std_logic;
signal \N__976\ : std_logic;
signal \N__973\ : std_logic;
signal \N__970\ : std_logic;
signal \N__967\ : std_logic;
signal \N__964\ : std_logic;
signal \N__961\ : std_logic;
signal \N__958\ : std_logic;
signal \N__955\ : std_logic;
signal \N__952\ : std_logic;
signal \N__949\ : std_logic;
signal \N__946\ : std_logic;
signal \N__943\ : std_logic;
signal \N__940\ : std_logic;
signal \N__937\ : std_logic;
signal \N__934\ : std_logic;
signal \N__931\ : std_logic;
signal \N__928\ : std_logic;
signal \N__925\ : std_logic;
signal \N__922\ : std_logic;
signal \N__919\ : std_logic;
signal \N__916\ : std_logic;
signal \N__913\ : std_logic;
signal \N__910\ : std_logic;
signal \N__907\ : std_logic;
signal \N__904\ : std_logic;
signal \N__901\ : std_logic;
signal \N__898\ : std_logic;
signal \N__895\ : std_logic;
signal \N__892\ : std_logic;
signal \N__889\ : std_logic;
signal \N__886\ : std_logic;
signal \N__883\ : std_logic;
signal \N__880\ : std_logic;
signal \N__877\ : std_logic;
signal \N__874\ : std_logic;
signal \N__871\ : std_logic;
signal \N__868\ : std_logic;
signal \N__865\ : std_logic;
signal \N__862\ : std_logic;
signal \N__859\ : std_logic;
signal \N__858\ : std_logic;
signal \N__855\ : std_logic;
signal \N__852\ : std_logic;
signal \N__847\ : std_logic;
signal \N__844\ : std_logic;
signal \N__841\ : std_logic;
signal \N__838\ : std_logic;
signal \N__835\ : std_logic;
signal \N__832\ : std_logic;
signal \N__829\ : std_logic;
signal \N__826\ : std_logic;
signal \N__823\ : std_logic;
signal \N__822\ : std_logic;
signal \N__819\ : std_logic;
signal \N__816\ : std_logic;
signal \N__811\ : std_logic;
signal \N__808\ : std_logic;
signal \N__805\ : std_logic;
signal \N__802\ : std_logic;
signal \N__799\ : std_logic;
signal \N__796\ : std_logic;
signal \N__793\ : std_logic;
signal \N__790\ : std_logic;
signal \N__789\ : std_logic;
signal \N__786\ : std_logic;
signal \N__783\ : std_logic;
signal \N__778\ : std_logic;
signal \N__775\ : std_logic;
signal \N__772\ : std_logic;
signal \N__769\ : std_logic;
signal \N__766\ : std_logic;
signal \N__763\ : std_logic;
signal \N__760\ : std_logic;
signal \N__759\ : std_logic;
signal \N__756\ : std_logic;
signal \N__753\ : std_logic;
signal \N__748\ : std_logic;
signal \N__745\ : std_logic;
signal \N__742\ : std_logic;
signal \N__739\ : std_logic;
signal \N__736\ : std_logic;
signal \N__733\ : std_logic;
signal \N__730\ : std_logic;
signal \GNDG0\ : std_logic;
signal \VCCG0\ : std_logic;
signal \MISO\ : std_logic;
signal \CS_N_0_\ : std_logic;
signal \DOUT_VLD\ : std_logic;
signal \DIN_0_\ : std_logic;
signal miso_reg : std_logic;
signal \DIN_1_\ : std_logic;
signal \DOUT_0_\ : std_logic;
signal \DIN_2_\ : std_logic;
signal \DOUT_1_\ : std_logic;
signal \DIN_3_\ : std_logic;
signal \DOUT_2_\ : std_logic;
signal \DIN_4_\ : std_logic;
signal \DOUT_3_\ : std_logic;
signal \DIN_5_\ : std_logic;
signal \DOUT_4_\ : std_logic;
signal \DIN_6_\ : std_logic;
signal \DOUT_5_\ : std_logic;
signal \DIN_7_\ : std_logic;
signal \DOUT_6_\ : std_logic;
signal \DOUT_7_\ : std_logic;
signal n435 : std_logic;
signal \DIN_LAST\ : std_logic;
signal din_last_reg_n : std_logic;
signal \next_state_2_N_33_0_cascade_\ : std_logic;
signal bit_cnt_2 : std_logic;
signal bit_cnt_1 : std_logic;
signal sys_clk_cnt_1 : std_logic;
signal n214 : std_logic;
signal sys_clk_cnt_2 : std_logic;
signal n378 : std_logic;
signal n481 : std_logic;
signal second_edge_en : std_logic;
signal n215 : std_logic;
signal n546 : std_logic;
signal \DIN_VLD\ : std_logic;
signal \READY\ : std_logic;
signal load_data : std_logic;
signal \load_data_cascade_\ : std_logic;
signal n429 : std_logic;
signal \RST\ : std_logic;
signal n217 : std_logic;
signal n216 : std_logic;
signal \bit_cnt_rst_cascade_\ : std_logic;
signal sys_clk_cnt_0 : std_logic;
signal sys_clk_cnt_rst : std_logic;
signal \next_state_2_N_33_0\ : std_logic;
signal \SCLK\ : std_logic;
signal n321 : std_logic;
signal bit_cnt_0 : std_logic;
signal \_gnd_net_\ : std_logic;
signal \CLK\ : std_logic;
signal bit_cnt_rst : std_logic;

signal \DOUT_VLD_wire\ : std_logic;
signal \DOUT_wire\ : std_logic_vector(7 downto 0);
signal \DIN_LAST_wire\ : std_logic;
signal \DIN_wire\ : std_logic_vector(7 downto 0);
signal \SCLK_wire\ : std_logic;
signal \RST_wire\ : std_logic;
signal \MOSI_wire\ : std_logic;
signal \READY_wire\ : std_logic;
signal \MISO_wire\ : std_logic;
signal \DIN_VLD_wire\ : std_logic;
signal \CS_N_wire\ : std_logic_vector(0 to 0);
signal \CLK_wire\ : std_logic;

begin
    DOUT_VLD <= \DOUT_VLD_wire\;
    DOUT <= \DOUT_wire\;
    \DIN_LAST_wire\ <= DIN_LAST;
    \DIN_wire\ <= DIN;
    SCLK <= \SCLK_wire\;
    \RST_wire\ <= RST;
    MOSI <= \MOSI_wire\;
    READY <= \READY_wire\;
    \MISO_wire\ <= MISO;
    \DIN_VLD_wire\ <= DIN_VLD;
    CS_N <= \CS_N_wire\;
    \CLK_wire\ <= CLK;

    \ipInertedIOPad_DOUT_VLD_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2066\,
            DIN => \N__2065\,
            DOUT => \N__2064\,
            PACKAGEPIN => \DOUT_VLD_wire\
        );

    \ipInertedIOPad_DOUT_VLD_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2066\,
            PADOUT => \N__2065\,
            PADIN => \N__2064\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__895\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2057\,
            DIN => \N__2056\,
            DOUT => \N__2055\,
            PACKAGEPIN => \DOUT_wire\(5)
        );

    \ipInertedIOPad_DOUT_5_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2057\,
            PADOUT => \N__2056\,
            PADIN => \N__2055\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1063\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_LAST_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2048\,
            DIN => \N__2047\,
            DOUT => \N__2046\,
            PACKAGEPIN => \DIN_LAST_wire\
        );

    \ipInertedIOPad_DIN_LAST_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2048\,
            PADOUT => \N__2047\,
            PADIN => \N__2046\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_LAST\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2039\,
            DIN => \N__2038\,
            DOUT => \N__2037\,
            PACKAGEPIN => \DIN_wire\(6)
        );

    \ipInertedIOPad_DIN_6_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2039\,
            PADOUT => \N__2038\,
            PADIN => \N__2037\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_6_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_SCLK_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2030\,
            DIN => \N__2029\,
            DOUT => \N__2028\,
            PACKAGEPIN => \SCLK_wire\
        );

    \ipInertedIOPad_SCLK_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2030\,
            PADOUT => \N__2029\,
            PADIN => \N__2028\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1567\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_RST_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2021\,
            DIN => \N__2020\,
            DOUT => \N__2019\,
            PACKAGEPIN => \RST_wire\
        );

    \ipInertedIOPad_RST_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2021\,
            PADOUT => \N__2020\,
            PADIN => \N__2019\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \RST\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_MOSI_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2012\,
            DIN => \N__2011\,
            DOUT => \N__2010\,
            PACKAGEPIN => \MOSI_wire\
        );

    \ipInertedIOPad_MOSI_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2012\,
            PADOUT => \N__2011\,
            PADIN => \N__2010\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__996\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2003\,
            DIN => \N__2002\,
            DOUT => \N__2001\,
            PACKAGEPIN => \DOUT_wire\(6)
        );

    \ipInertedIOPad_DOUT_6_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2003\,
            PADOUT => \N__2002\,
            PADIN => \N__2001\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1021\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1994\,
            DIN => \N__1993\,
            DOUT => \N__1992\,
            PACKAGEPIN => \DIN_wire\(5)
        );

    \ipInertedIOPad_DIN_5_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1994\,
            PADOUT => \N__1993\,
            PADIN => \N__1992\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_5_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_READY_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1985\,
            DIN => \N__1984\,
            DOUT => \N__1983\,
            PACKAGEPIN => \READY_wire\
        );

    \ipInertedIOPad_READY_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1985\,
            PADOUT => \N__1984\,
            PADIN => \N__1983\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1210\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_7_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1976\,
            DIN => \N__1975\,
            DOUT => \N__1974\,
            PACKAGEPIN => \DOUT_wire\(7)
        );

    \ipInertedIOPad_DOUT_7_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1976\,
            PADOUT => \N__1975\,
            PADIN => \N__1974\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__997\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1967\,
            DIN => \N__1966\,
            DOUT => \N__1965\,
            PACKAGEPIN => \DIN_wire\(4)
        );

    \ipInertedIOPad_DIN_4_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1967\,
            PADOUT => \N__1966\,
            PADIN => \N__1965\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_4_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_MISO_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1958\,
            DIN => \N__1957\,
            DOUT => \N__1956\,
            PACKAGEPIN => \MISO_wire\
        );

    \ipInertedIOPad_MISO_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1958\,
            PADOUT => \N__1957\,
            PADIN => \N__1956\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \MISO\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1949\,
            DIN => \N__1948\,
            DOUT => \N__1947\,
            PACKAGEPIN => \DOUT_wire\(4)
        );

    \ipInertedIOPad_DOUT_4_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1949\,
            PADOUT => \N__1948\,
            PADIN => \N__1947\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1105\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1940\,
            DIN => \N__1939\,
            DOUT => \N__1938\,
            PACKAGEPIN => \DOUT_wire\(0)
        );

    \ipInertedIOPad_DOUT_0_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1940\,
            PADOUT => \N__1939\,
            PADIN => \N__1938\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__832\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_VLD_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1931\,
            DIN => \N__1930\,
            DOUT => \N__1929\,
            PACKAGEPIN => \DIN_VLD_wire\
        );

    \ipInertedIOPad_DIN_VLD_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1931\,
            PADOUT => \N__1930\,
            PADIN => \N__1929\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_VLD\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_7_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1922\,
            DIN => \N__1921\,
            DOUT => \N__1920\,
            PACKAGEPIN => \DIN_wire\(7)
        );

    \ipInertedIOPad_DIN_7_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1922\,
            PADOUT => \N__1921\,
            PADIN => \N__1920\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_7_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1913\,
            DIN => \N__1912\,
            DOUT => \N__1911\,
            PACKAGEPIN => \DIN_wire\(3)
        );

    \ipInertedIOPad_DIN_3_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1913\,
            PADOUT => \N__1912\,
            PADIN => \N__1911\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_3_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1904\,
            DIN => \N__1903\,
            DOUT => \N__1902\,
            PACKAGEPIN => \DOUT_wire\(1)
        );

    \ipInertedIOPad_DOUT_1_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1904\,
            PADOUT => \N__1903\,
            PADIN => \N__1902\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__793\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1895\,
            DIN => \N__1894\,
            DOUT => \N__1893\,
            PACKAGEPIN => \DIN_wire\(2)
        );

    \ipInertedIOPad_DIN_2_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1895\,
            PADOUT => \N__1894\,
            PADIN => \N__1893\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_2_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_CS_N_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1886\,
            DIN => \N__1885\,
            DOUT => \N__1884\,
            PACKAGEPIN => \CS_N_wire\(0)
        );

    \ipInertedIOPad_CS_N_0_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1886\,
            PADOUT => \N__1885\,
            PADIN => \N__1884\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__916\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1877\,
            DIN => \N__1876\,
            DOUT => \N__1875\,
            PACKAGEPIN => \DOUT_wire\(2)
        );

    \ipInertedIOPad_DOUT_2_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1877\,
            PADOUT => \N__1876\,
            PADIN => \N__1875\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__763\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1868\,
            DIN => \N__1867\,
            DOUT => \N__1866\,
            PACKAGEPIN => \DIN_wire\(1)
        );

    \ipInertedIOPad_DIN_1_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1868\,
            PADOUT => \N__1867\,
            PADIN => \N__1866\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_1_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_CLK_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1859\,
            DIN => \N__1858\,
            DOUT => \N__1857\,
            PACKAGEPIN => \CLK_wire\
        );

    \ipInertedIOPad_CLK_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1859\,
            PADOUT => \N__1858\,
            PADIN => \N__1857\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \CLK\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DOUT_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1850\,
            DIN => \N__1849\,
            DOUT => \N__1848\,
            PACKAGEPIN => \DOUT_wire\(3)
        );

    \ipInertedIOPad_DOUT_3_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1850\,
            PADOUT => \N__1849\,
            PADIN => \N__1848\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1141\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DIN_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__1841\,
            DIN => \N__1840\,
            DOUT => \N__1839\,
            PACKAGEPIN => \DIN_wire\(0)
        );

    \ipInertedIOPad_DIN_0_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__1841\,
            PADOUT => \N__1840\,
            PADIN => \N__1839\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DIN_0_\,
            DIN1 => OPEN
        );

    \I__428\ : CascadeMux
    port map (
            O => \N__1822\,
            I => \load_data_cascade_\
        );

    \I__427\ : CEMux
    port map (
            O => \N__1819\,
            I => \N__1816\
        );

    \I__426\ : LocalMux
    port map (
            O => \N__1816\,
            I => \N__1813\
        );

    \I__425\ : Odrv4
    port map (
            O => \N__1813\,
            I => n429
        );

    \I__424\ : InMux
    port map (
            O => \N__1810\,
            I => \N__1800\
        );

    \I__423\ : InMux
    port map (
            O => \N__1809\,
            I => \N__1795\
        );

    \I__422\ : InMux
    port map (
            O => \N__1808\,
            I => \N__1795\
        );

    \I__421\ : InMux
    port map (
            O => \N__1807\,
            I => \N__1790\
        );

    \I__420\ : SRMux
    port map (
            O => \N__1806\,
            I => \N__1790\
        );

    \I__419\ : InMux
    port map (
            O => \N__1805\,
            I => \N__1785\
        );

    \I__418\ : InMux
    port map (
            O => \N__1804\,
            I => \N__1785\
        );

    \I__417\ : SRMux
    port map (
            O => \N__1803\,
            I => \N__1782\
        );

    \I__416\ : LocalMux
    port map (
            O => \N__1800\,
            I => \N__1779\
        );

    \I__415\ : LocalMux
    port map (
            O => \N__1795\,
            I => \N__1776\
        );

    \I__414\ : LocalMux
    port map (
            O => \N__1790\,
            I => \N__1773\
        );

    \I__413\ : LocalMux
    port map (
            O => \N__1785\,
            I => \N__1768\
        );

    \I__412\ : LocalMux
    port map (
            O => \N__1782\,
            I => \N__1768\
        );

    \I__411\ : Span4Mux_v
    port map (
            O => \N__1779\,
            I => \N__1765\
        );

    \I__410\ : Span4Mux_v
    port map (
            O => \N__1776\,
            I => \N__1760\
        );

    \I__409\ : Span4Mux_v
    port map (
            O => \N__1773\,
            I => \N__1760\
        );

    \I__408\ : Span4Mux_v
    port map (
            O => \N__1768\,
            I => \N__1757\
        );

    \I__407\ : Span4Mux_v
    port map (
            O => \N__1765\,
            I => \N__1754\
        );

    \I__406\ : Span4Mux_v
    port map (
            O => \N__1760\,
            I => \N__1751\
        );

    \I__405\ : Span4Mux_v
    port map (
            O => \N__1757\,
            I => \N__1748\
        );

    \I__404\ : Sp12to4
    port map (
            O => \N__1754\,
            I => \N__1745\
        );

    \I__403\ : Span4Mux_h
    port map (
            O => \N__1751\,
            I => \N__1742\
        );

    \I__402\ : Span4Mux_h
    port map (
            O => \N__1748\,
            I => \N__1739\
        );

    \I__401\ : Odrv12
    port map (
            O => \N__1745\,
            I => \RST\
        );

    \I__400\ : Odrv4
    port map (
            O => \N__1742\,
            I => \RST\
        );

    \I__399\ : Odrv4
    port map (
            O => \N__1739\,
            I => \RST\
        );

    \I__398\ : CascadeMux
    port map (
            O => \N__1732\,
            I => \N__1728\
        );

    \I__397\ : InMux
    port map (
            O => \N__1731\,
            I => \N__1723\
        );

    \I__396\ : InMux
    port map (
            O => \N__1728\,
            I => \N__1720\
        );

    \I__395\ : InMux
    port map (
            O => \N__1727\,
            I => \N__1717\
        );

    \I__394\ : InMux
    port map (
            O => \N__1726\,
            I => \N__1714\
        );

    \I__393\ : LocalMux
    port map (
            O => \N__1723\,
            I => n217
        );

    \I__392\ : LocalMux
    port map (
            O => \N__1720\,
            I => n217
        );

    \I__391\ : LocalMux
    port map (
            O => \N__1717\,
            I => n217
        );

    \I__390\ : LocalMux
    port map (
            O => \N__1714\,
            I => n217
        );

    \I__389\ : CascadeMux
    port map (
            O => \N__1705\,
            I => \N__1701\
        );

    \I__388\ : InMux
    port map (
            O => \N__1704\,
            I => \N__1695\
        );

    \I__387\ : InMux
    port map (
            O => \N__1701\,
            I => \N__1690\
        );

    \I__386\ : InMux
    port map (
            O => \N__1700\,
            I => \N__1690\
        );

    \I__385\ : InMux
    port map (
            O => \N__1699\,
            I => \N__1685\
        );

    \I__384\ : InMux
    port map (
            O => \N__1698\,
            I => \N__1685\
        );

    \I__383\ : LocalMux
    port map (
            O => \N__1695\,
            I => n216
        );

    \I__382\ : LocalMux
    port map (
            O => \N__1690\,
            I => n216
        );

    \I__381\ : LocalMux
    port map (
            O => \N__1685\,
            I => n216
        );

    \I__380\ : CascadeMux
    port map (
            O => \N__1678\,
            I => \bit_cnt_rst_cascade_\
        );

    \I__379\ : CascadeMux
    port map (
            O => \N__1675\,
            I => \N__1672\
        );

    \I__378\ : InMux
    port map (
            O => \N__1672\,
            I => \N__1666\
        );

    \I__377\ : InMux
    port map (
            O => \N__1671\,
            I => \N__1666\
        );

    \I__376\ : LocalMux
    port map (
            O => \N__1666\,
            I => \N__1661\
        );

    \I__375\ : CascadeMux
    port map (
            O => \N__1665\,
            I => \N__1658\
        );

    \I__374\ : InMux
    port map (
            O => \N__1664\,
            I => \N__1654\
        );

    \I__373\ : Span4Mux_h
    port map (
            O => \N__1661\,
            I => \N__1651\
        );

    \I__372\ : InMux
    port map (
            O => \N__1658\,
            I => \N__1648\
        );

    \I__371\ : InMux
    port map (
            O => \N__1657\,
            I => \N__1645\
        );

    \I__370\ : LocalMux
    port map (
            O => \N__1654\,
            I => sys_clk_cnt_0
        );

    \I__369\ : Odrv4
    port map (
            O => \N__1651\,
            I => sys_clk_cnt_0
        );

    \I__368\ : LocalMux
    port map (
            O => \N__1648\,
            I => sys_clk_cnt_0
        );

    \I__367\ : LocalMux
    port map (
            O => \N__1645\,
            I => sys_clk_cnt_0
        );

    \I__366\ : SRMux
    port map (
            O => \N__1636\,
            I => \N__1633\
        );

    \I__365\ : LocalMux
    port map (
            O => \N__1633\,
            I => \N__1629\
        );

    \I__364\ : SRMux
    port map (
            O => \N__1632\,
            I => \N__1626\
        );

    \I__363\ : Span4Mux_h
    port map (
            O => \N__1629\,
            I => \N__1623\
        );

    \I__362\ : LocalMux
    port map (
            O => \N__1626\,
            I => \N__1620\
        );

    \I__361\ : Odrv4
    port map (
            O => \N__1623\,
            I => sys_clk_cnt_rst
        );

    \I__360\ : Odrv4
    port map (
            O => \N__1620\,
            I => sys_clk_cnt_rst
        );

    \I__359\ : InMux
    port map (
            O => \N__1615\,
            I => \N__1604\
        );

    \I__358\ : InMux
    port map (
            O => \N__1614\,
            I => \N__1604\
        );

    \I__357\ : InMux
    port map (
            O => \N__1613\,
            I => \N__1604\
        );

    \I__356\ : InMux
    port map (
            O => \N__1612\,
            I => \N__1596\
        );

    \I__355\ : InMux
    port map (
            O => \N__1611\,
            I => \N__1593\
        );

    \I__354\ : LocalMux
    port map (
            O => \N__1604\,
            I => \N__1590\
        );

    \I__353\ : InMux
    port map (
            O => \N__1603\,
            I => \N__1581\
        );

    \I__352\ : InMux
    port map (
            O => \N__1602\,
            I => \N__1581\
        );

    \I__351\ : InMux
    port map (
            O => \N__1601\,
            I => \N__1581\
        );

    \I__350\ : InMux
    port map (
            O => \N__1600\,
            I => \N__1581\
        );

    \I__349\ : InMux
    port map (
            O => \N__1599\,
            I => \N__1578\
        );

    \I__348\ : LocalMux
    port map (
            O => \N__1596\,
            I => \next_state_2_N_33_0\
        );

    \I__347\ : LocalMux
    port map (
            O => \N__1593\,
            I => \next_state_2_N_33_0\
        );

    \I__346\ : Odrv4
    port map (
            O => \N__1590\,
            I => \next_state_2_N_33_0\
        );

    \I__345\ : LocalMux
    port map (
            O => \N__1581\,
            I => \next_state_2_N_33_0\
        );

    \I__344\ : LocalMux
    port map (
            O => \N__1578\,
            I => \next_state_2_N_33_0\
        );

    \I__343\ : IoInMux
    port map (
            O => \N__1567\,
            I => \N__1564\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__1564\,
            I => \N__1561\
        );

    \I__341\ : Span4Mux_s2_h
    port map (
            O => \N__1561\,
            I => \N__1558\
        );

    \I__340\ : Span4Mux_h
    port map (
            O => \N__1558\,
            I => \N__1554\
        );

    \I__339\ : InMux
    port map (
            O => \N__1557\,
            I => \N__1551\
        );

    \I__338\ : Odrv4
    port map (
            O => \N__1554\,
            I => \SCLK\
        );

    \I__337\ : LocalMux
    port map (
            O => \N__1551\,
            I => \SCLK\
        );

    \I__336\ : CEMux
    port map (
            O => \N__1546\,
            I => \N__1543\
        );

    \I__335\ : LocalMux
    port map (
            O => \N__1543\,
            I => \N__1540\
        );

    \I__334\ : Span4Mux_h
    port map (
            O => \N__1540\,
            I => \N__1536\
        );

    \I__333\ : InMux
    port map (
            O => \N__1539\,
            I => \N__1533\
        );

    \I__332\ : Odrv4
    port map (
            O => \N__1536\,
            I => n321
        );

    \I__331\ : LocalMux
    port map (
            O => \N__1533\,
            I => n321
        );

    \I__330\ : CascadeMux
    port map (
            O => \N__1528\,
            I => \N__1525\
        );

    \I__329\ : InMux
    port map (
            O => \N__1525\,
            I => \N__1519\
        );

    \I__328\ : InMux
    port map (
            O => \N__1524\,
            I => \N__1519\
        );

    \I__327\ : LocalMux
    port map (
            O => \N__1519\,
            I => \N__1514\
        );

    \I__326\ : InMux
    port map (
            O => \N__1518\,
            I => \N__1511\
        );

    \I__325\ : InMux
    port map (
            O => \N__1517\,
            I => \N__1508\
        );

    \I__324\ : Odrv4
    port map (
            O => \N__1514\,
            I => bit_cnt_0
        );

    \I__323\ : LocalMux
    port map (
            O => \N__1511\,
            I => bit_cnt_0
        );

    \I__322\ : LocalMux
    port map (
            O => \N__1508\,
            I => bit_cnt_0
        );

    \I__321\ : ClkMux
    port map (
            O => \N__1501\,
            I => \N__1492\
        );

    \I__320\ : ClkMux
    port map (
            O => \N__1500\,
            I => \N__1487\
        );

    \I__319\ : ClkMux
    port map (
            O => \N__1499\,
            I => \N__1484\
        );

    \I__318\ : ClkMux
    port map (
            O => \N__1498\,
            I => \N__1481\
        );

    \I__317\ : ClkMux
    port map (
            O => \N__1497\,
            I => \N__1478\
        );

    \I__316\ : ClkMux
    port map (
            O => \N__1496\,
            I => \N__1475\
        );

    \I__315\ : ClkMux
    port map (
            O => \N__1495\,
            I => \N__1472\
        );

    \I__314\ : LocalMux
    port map (
            O => \N__1492\,
            I => \N__1469\
        );

    \I__313\ : ClkMux
    port map (
            O => \N__1491\,
            I => \N__1466\
        );

    \I__312\ : ClkMux
    port map (
            O => \N__1490\,
            I => \N__1463\
        );

    \I__311\ : LocalMux
    port map (
            O => \N__1487\,
            I => \N__1458\
        );

    \I__310\ : LocalMux
    port map (
            O => \N__1484\,
            I => \N__1458\
        );

    \I__309\ : LocalMux
    port map (
            O => \N__1481\,
            I => \N__1451\
        );

    \I__308\ : LocalMux
    port map (
            O => \N__1478\,
            I => \N__1451\
        );

    \I__307\ : LocalMux
    port map (
            O => \N__1475\,
            I => \N__1451\
        );

    \I__306\ : LocalMux
    port map (
            O => \N__1472\,
            I => \N__1448\
        );

    \I__305\ : Span4Mux_v
    port map (
            O => \N__1469\,
            I => \N__1441\
        );

    \I__304\ : LocalMux
    port map (
            O => \N__1466\,
            I => \N__1441\
        );

    \I__303\ : LocalMux
    port map (
            O => \N__1463\,
            I => \N__1441\
        );

    \I__302\ : Span4Mux_v
    port map (
            O => \N__1458\,
            I => \N__1438\
        );

    \I__301\ : Span4Mux_v
    port map (
            O => \N__1451\,
            I => \N__1435\
        );

    \I__300\ : Span4Mux_v
    port map (
            O => \N__1448\,
            I => \N__1430\
        );

    \I__299\ : Span4Mux_v
    port map (
            O => \N__1441\,
            I => \N__1430\
        );

    \I__298\ : Span4Mux_v
    port map (
            O => \N__1438\,
            I => \N__1425\
        );

    \I__297\ : Span4Mux_v
    port map (
            O => \N__1435\,
            I => \N__1425\
        );

    \I__296\ : Span4Mux_v
    port map (
            O => \N__1430\,
            I => \N__1422\
        );

    \I__295\ : Span4Mux_v
    port map (
            O => \N__1425\,
            I => \N__1419\
        );

    \I__294\ : Span4Mux_v
    port map (
            O => \N__1422\,
            I => \N__1416\
        );

    \I__293\ : Sp12to4
    port map (
            O => \N__1419\,
            I => \N__1411\
        );

    \I__292\ : Sp12to4
    port map (
            O => \N__1416\,
            I => \N__1411\
        );

    \I__291\ : Odrv12
    port map (
            O => \N__1411\,
            I => \CLK\
        );

    \I__290\ : SRMux
    port map (
            O => \N__1408\,
            I => \N__1405\
        );

    \I__289\ : LocalMux
    port map (
            O => \N__1405\,
            I => \N__1401\
        );

    \I__288\ : SRMux
    port map (
            O => \N__1404\,
            I => \N__1398\
        );

    \I__287\ : Span4Mux_h
    port map (
            O => \N__1401\,
            I => \N__1395\
        );

    \I__286\ : LocalMux
    port map (
            O => \N__1398\,
            I => \N__1392\
        );

    \I__285\ : Odrv4
    port map (
            O => \N__1395\,
            I => bit_cnt_rst
        );

    \I__284\ : Odrv12
    port map (
            O => \N__1392\,
            I => bit_cnt_rst
        );

    \I__283\ : InMux
    port map (
            O => \N__1387\,
            I => \N__1383\
        );

    \I__282\ : InMux
    port map (
            O => \N__1386\,
            I => \N__1380\
        );

    \I__281\ : LocalMux
    port map (
            O => \N__1383\,
            I => \N__1377\
        );

    \I__280\ : LocalMux
    port map (
            O => \N__1380\,
            I => bit_cnt_2
        );

    \I__279\ : Odrv4
    port map (
            O => \N__1377\,
            I => bit_cnt_2
        );

    \I__278\ : InMux
    port map (
            O => \N__1372\,
            I => \N__1365\
        );

    \I__277\ : InMux
    port map (
            O => \N__1371\,
            I => \N__1365\
        );

    \I__276\ : InMux
    port map (
            O => \N__1370\,
            I => \N__1362\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1365\,
            I => bit_cnt_1
        );

    \I__274\ : LocalMux
    port map (
            O => \N__1362\,
            I => bit_cnt_1
        );

    \I__273\ : InMux
    port map (
            O => \N__1357\,
            I => \N__1349\
        );

    \I__272\ : InMux
    port map (
            O => \N__1356\,
            I => \N__1349\
        );

    \I__271\ : InMux
    port map (
            O => \N__1355\,
            I => \N__1344\
        );

    \I__270\ : InMux
    port map (
            O => \N__1354\,
            I => \N__1344\
        );

    \I__269\ : LocalMux
    port map (
            O => \N__1349\,
            I => sys_clk_cnt_1
        );

    \I__268\ : LocalMux
    port map (
            O => \N__1344\,
            I => sys_clk_cnt_1
        );

    \I__267\ : InMux
    port map (
            O => \N__1339\,
            I => \N__1332\
        );

    \I__266\ : InMux
    port map (
            O => \N__1338\,
            I => \N__1332\
        );

    \I__265\ : InMux
    port map (
            O => \N__1337\,
            I => \N__1329\
        );

    \I__264\ : LocalMux
    port map (
            O => \N__1332\,
            I => n214
        );

    \I__263\ : LocalMux
    port map (
            O => \N__1329\,
            I => n214
        );

    \I__262\ : InMux
    port map (
            O => \N__1324\,
            I => \N__1319\
        );

    \I__261\ : InMux
    port map (
            O => \N__1323\,
            I => \N__1316\
        );

    \I__260\ : InMux
    port map (
            O => \N__1322\,
            I => \N__1313\
        );

    \I__259\ : LocalMux
    port map (
            O => \N__1319\,
            I => sys_clk_cnt_2
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1316\,
            I => sys_clk_cnt_2
        );

    \I__257\ : LocalMux
    port map (
            O => \N__1313\,
            I => sys_clk_cnt_2
        );

    \I__256\ : InMux
    port map (
            O => \N__1306\,
            I => \N__1303\
        );

    \I__255\ : LocalMux
    port map (
            O => \N__1303\,
            I => n378
        );

    \I__254\ : CascadeMux
    port map (
            O => \N__1300\,
            I => \N__1297\
        );

    \I__253\ : InMux
    port map (
            O => \N__1297\,
            I => \N__1291\
        );

    \I__252\ : InMux
    port map (
            O => \N__1296\,
            I => \N__1291\
        );

    \I__251\ : LocalMux
    port map (
            O => \N__1291\,
            I => n481
        );

    \I__250\ : InMux
    port map (
            O => \N__1288\,
            I => \N__1282\
        );

    \I__249\ : InMux
    port map (
            O => \N__1287\,
            I => \N__1282\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1282\,
            I => second_edge_en
        );

    \I__247\ : CascadeMux
    port map (
            O => \N__1279\,
            I => \N__1275\
        );

    \I__246\ : CascadeMux
    port map (
            O => \N__1278\,
            I => \N__1272\
        );

    \I__245\ : InMux
    port map (
            O => \N__1275\,
            I => \N__1268\
        );

    \I__244\ : InMux
    port map (
            O => \N__1272\,
            I => \N__1263\
        );

    \I__243\ : InMux
    port map (
            O => \N__1271\,
            I => \N__1263\
        );

    \I__242\ : LocalMux
    port map (
            O => \N__1268\,
            I => n215
        );

    \I__241\ : LocalMux
    port map (
            O => \N__1263\,
            I => n215
        );

    \I__240\ : InMux
    port map (
            O => \N__1258\,
            I => \N__1255\
        );

    \I__239\ : LocalMux
    port map (
            O => \N__1255\,
            I => n546
        );

    \I__238\ : CascadeMux
    port map (
            O => \N__1252\,
            I => \N__1249\
        );

    \I__237\ : InMux
    port map (
            O => \N__1249\,
            I => \N__1246\
        );

    \I__236\ : LocalMux
    port map (
            O => \N__1246\,
            I => \N__1241\
        );

    \I__235\ : InMux
    port map (
            O => \N__1245\,
            I => \N__1238\
        );

    \I__234\ : InMux
    port map (
            O => \N__1244\,
            I => \N__1235\
        );

    \I__233\ : Span4Mux_v
    port map (
            O => \N__1241\,
            I => \N__1232\
        );

    \I__232\ : LocalMux
    port map (
            O => \N__1238\,
            I => \N__1227\
        );

    \I__231\ : LocalMux
    port map (
            O => \N__1235\,
            I => \N__1227\
        );

    \I__230\ : Span4Mux_v
    port map (
            O => \N__1232\,
            I => \N__1224\
        );

    \I__229\ : Span4Mux_h
    port map (
            O => \N__1227\,
            I => \N__1221\
        );

    \I__228\ : Span4Mux_h
    port map (
            O => \N__1224\,
            I => \N__1218\
        );

    \I__227\ : Span4Mux_v
    port map (
            O => \N__1221\,
            I => \N__1215\
        );

    \I__226\ : Odrv4
    port map (
            O => \N__1218\,
            I => \DIN_VLD\
        );

    \I__225\ : Odrv4
    port map (
            O => \N__1215\,
            I => \DIN_VLD\
        );

    \I__224\ : IoInMux
    port map (
            O => \N__1210\,
            I => \N__1207\
        );

    \I__223\ : LocalMux
    port map (
            O => \N__1207\,
            I => \N__1204\
        );

    \I__222\ : IoSpan4Mux
    port map (
            O => \N__1204\,
            I => \N__1201\
        );

    \I__221\ : Span4Mux_s1_h
    port map (
            O => \N__1201\,
            I => \N__1198\
        );

    \I__220\ : Span4Mux_h
    port map (
            O => \N__1198\,
            I => \N__1191\
        );

    \I__219\ : InMux
    port map (
            O => \N__1197\,
            I => \N__1186\
        );

    \I__218\ : InMux
    port map (
            O => \N__1196\,
            I => \N__1186\
        );

    \I__217\ : InMux
    port map (
            O => \N__1195\,
            I => \N__1181\
        );

    \I__216\ : InMux
    port map (
            O => \N__1194\,
            I => \N__1181\
        );

    \I__215\ : Odrv4
    port map (
            O => \N__1191\,
            I => \READY\
        );

    \I__214\ : LocalMux
    port map (
            O => \N__1186\,
            I => \READY\
        );

    \I__213\ : LocalMux
    port map (
            O => \N__1181\,
            I => \READY\
        );

    \I__212\ : InMux
    port map (
            O => \N__1174\,
            I => \N__1149\
        );

    \I__211\ : InMux
    port map (
            O => \N__1173\,
            I => \N__1149\
        );

    \I__210\ : InMux
    port map (
            O => \N__1172\,
            I => \N__1149\
        );

    \I__209\ : InMux
    port map (
            O => \N__1171\,
            I => \N__1149\
        );

    \I__208\ : InMux
    port map (
            O => \N__1170\,
            I => \N__1149\
        );

    \I__207\ : InMux
    port map (
            O => \N__1169\,
            I => \N__1149\
        );

    \I__206\ : InMux
    port map (
            O => \N__1168\,
            I => \N__1149\
        );

    \I__205\ : InMux
    port map (
            O => \N__1167\,
            I => \N__1149\
        );

    \I__204\ : InMux
    port map (
            O => \N__1166\,
            I => \N__1146\
        );

    \I__203\ : LocalMux
    port map (
            O => \N__1149\,
            I => load_data
        );

    \I__202\ : LocalMux
    port map (
            O => \N__1146\,
            I => load_data
        );

    \I__201\ : IoInMux
    port map (
            O => \N__1141\,
            I => \N__1138\
        );

    \I__200\ : LocalMux
    port map (
            O => \N__1138\,
            I => \N__1135\
        );

    \I__199\ : Span4Mux_s3_h
    port map (
            O => \N__1135\,
            I => \N__1132\
        );

    \I__198\ : Span4Mux_v
    port map (
            O => \N__1132\,
            I => \N__1128\
        );

    \I__197\ : InMux
    port map (
            O => \N__1131\,
            I => \N__1125\
        );

    \I__196\ : Odrv4
    port map (
            O => \N__1128\,
            I => \DOUT_3_\
        );

    \I__195\ : LocalMux
    port map (
            O => \N__1125\,
            I => \DOUT_3_\
        );

    \I__194\ : InMux
    port map (
            O => \N__1120\,
            I => \N__1117\
        );

    \I__193\ : LocalMux
    port map (
            O => \N__1117\,
            I => \N__1114\
        );

    \I__192\ : Sp12to4
    port map (
            O => \N__1114\,
            I => \N__1111\
        );

    \I__191\ : Span12Mux_v
    port map (
            O => \N__1111\,
            I => \N__1108\
        );

    \I__190\ : Odrv12
    port map (
            O => \N__1108\,
            I => \DIN_5_\
        );

    \I__189\ : IoInMux
    port map (
            O => \N__1105\,
            I => \N__1102\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1102\,
            I => \N__1099\
        );

    \I__187\ : Span4Mux_s2_h
    port map (
            O => \N__1099\,
            I => \N__1096\
        );

    \I__186\ : Span4Mux_v
    port map (
            O => \N__1096\,
            I => \N__1092\
        );

    \I__185\ : InMux
    port map (
            O => \N__1095\,
            I => \N__1089\
        );

    \I__184\ : Odrv4
    port map (
            O => \N__1092\,
            I => \DOUT_4_\
        );

    \I__183\ : LocalMux
    port map (
            O => \N__1089\,
            I => \DOUT_4_\
        );

    \I__182\ : InMux
    port map (
            O => \N__1084\,
            I => \N__1081\
        );

    \I__181\ : LocalMux
    port map (
            O => \N__1081\,
            I => \N__1078\
        );

    \I__180\ : Span4Mux_v
    port map (
            O => \N__1078\,
            I => \N__1075\
        );

    \I__179\ : Span4Mux_v
    port map (
            O => \N__1075\,
            I => \N__1072\
        );

    \I__178\ : Span4Mux_v
    port map (
            O => \N__1072\,
            I => \N__1069\
        );

    \I__177\ : Span4Mux_h
    port map (
            O => \N__1069\,
            I => \N__1066\
        );

    \I__176\ : Odrv4
    port map (
            O => \N__1066\,
            I => \DIN_6_\
        );

    \I__175\ : IoInMux
    port map (
            O => \N__1063\,
            I => \N__1060\
        );

    \I__174\ : LocalMux
    port map (
            O => \N__1060\,
            I => \N__1057\
        );

    \I__173\ : Span4Mux_s0_h
    port map (
            O => \N__1057\,
            I => \N__1054\
        );

    \I__172\ : Span4Mux_v
    port map (
            O => \N__1054\,
            I => \N__1051\
        );

    \I__171\ : Span4Mux_h
    port map (
            O => \N__1051\,
            I => \N__1047\
        );

    \I__170\ : InMux
    port map (
            O => \N__1050\,
            I => \N__1044\
        );

    \I__169\ : Odrv4
    port map (
            O => \N__1047\,
            I => \DOUT_5_\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__1044\,
            I => \DOUT_5_\
        );

    \I__167\ : InMux
    port map (
            O => \N__1039\,
            I => \N__1036\
        );

    \I__166\ : LocalMux
    port map (
            O => \N__1036\,
            I => \N__1033\
        );

    \I__165\ : Span4Mux_v
    port map (
            O => \N__1033\,
            I => \N__1030\
        );

    \I__164\ : Span4Mux_v
    port map (
            O => \N__1030\,
            I => \N__1027\
        );

    \I__163\ : Sp12to4
    port map (
            O => \N__1027\,
            I => \N__1024\
        );

    \I__162\ : Odrv12
    port map (
            O => \N__1024\,
            I => \DIN_7_\
        );

    \I__161\ : IoInMux
    port map (
            O => \N__1021\,
            I => \N__1018\
        );

    \I__160\ : LocalMux
    port map (
            O => \N__1018\,
            I => \N__1015\
        );

    \I__159\ : IoSpan4Mux
    port map (
            O => \N__1015\,
            I => \N__1012\
        );

    \I__158\ : Span4Mux_s3_h
    port map (
            O => \N__1012\,
            I => \N__1009\
        );

    \I__157\ : Span4Mux_v
    port map (
            O => \N__1009\,
            I => \N__1005\
        );

    \I__156\ : InMux
    port map (
            O => \N__1008\,
            I => \N__1002\
        );

    \I__155\ : Odrv4
    port map (
            O => \N__1005\,
            I => \DOUT_6_\
        );

    \I__154\ : LocalMux
    port map (
            O => \N__1002\,
            I => \DOUT_6_\
        );

    \I__153\ : IoInMux
    port map (
            O => \N__997\,
            I => \N__993\
        );

    \I__152\ : IoInMux
    port map (
            O => \N__996\,
            I => \N__990\
        );

    \I__151\ : LocalMux
    port map (
            O => \N__993\,
            I => \N__985\
        );

    \I__150\ : LocalMux
    port map (
            O => \N__990\,
            I => \N__985\
        );

    \I__149\ : IoSpan4Mux
    port map (
            O => \N__985\,
            I => \N__982\
        );

    \I__148\ : IoSpan4Mux
    port map (
            O => \N__982\,
            I => \N__979\
        );

    \I__147\ : IoSpan4Mux
    port map (
            O => \N__979\,
            I => \N__976\
        );

    \I__146\ : Span4Mux_s2_h
    port map (
            O => \N__976\,
            I => \N__973\
        );

    \I__145\ : Odrv4
    port map (
            O => \N__973\,
            I => \DOUT_7_\
        );

    \I__144\ : CEMux
    port map (
            O => \N__970\,
            I => \N__967\
        );

    \I__143\ : LocalMux
    port map (
            O => \N__967\,
            I => \N__964\
        );

    \I__142\ : Span4Mux_h
    port map (
            O => \N__964\,
            I => \N__961\
        );

    \I__141\ : Odrv4
    port map (
            O => \N__961\,
            I => n435
        );

    \I__140\ : InMux
    port map (
            O => \N__958\,
            I => \N__955\
        );

    \I__139\ : LocalMux
    port map (
            O => \N__955\,
            I => \N__952\
        );

    \I__138\ : Span4Mux_v
    port map (
            O => \N__952\,
            I => \N__949\
        );

    \I__137\ : Span4Mux_h
    port map (
            O => \N__949\,
            I => \N__946\
        );

    \I__136\ : Odrv4
    port map (
            O => \N__946\,
            I => \DIN_LAST\
        );

    \I__135\ : InMux
    port map (
            O => \N__943\,
            I => \N__940\
        );

    \I__134\ : LocalMux
    port map (
            O => \N__940\,
            I => \N__937\
        );

    \I__133\ : Odrv12
    port map (
            O => \N__937\,
            I => din_last_reg_n
        );

    \I__132\ : CascadeMux
    port map (
            O => \N__934\,
            I => \next_state_2_N_33_0_cascade_\
        );

    \I__131\ : InMux
    port map (
            O => \N__931\,
            I => \N__928\
        );

    \I__130\ : LocalMux
    port map (
            O => \N__928\,
            I => \N__925\
        );

    \I__129\ : Sp12to4
    port map (
            O => \N__925\,
            I => \N__922\
        );

    \I__128\ : Span12Mux_v
    port map (
            O => \N__922\,
            I => \N__919\
        );

    \I__127\ : Odrv12
    port map (
            O => \N__919\,
            I => \MISO\
        );

    \I__126\ : IoInMux
    port map (
            O => \N__916\,
            I => \N__913\
        );

    \I__125\ : LocalMux
    port map (
            O => \N__913\,
            I => \N__910\
        );

    \I__124\ : Span4Mux_s0_h
    port map (
            O => \N__910\,
            I => \N__907\
        );

    \I__123\ : Span4Mux_v
    port map (
            O => \N__907\,
            I => \N__904\
        );

    \I__122\ : Span4Mux_v
    port map (
            O => \N__904\,
            I => \N__901\
        );

    \I__121\ : Span4Mux_h
    port map (
            O => \N__901\,
            I => \N__898\
        );

    \I__120\ : Odrv4
    port map (
            O => \N__898\,
            I => \CS_N_0_\
        );

    \I__119\ : IoInMux
    port map (
            O => \N__895\,
            I => \N__892\
        );

    \I__118\ : LocalMux
    port map (
            O => \N__892\,
            I => \N__889\
        );

    \I__117\ : Span4Mux_s2_h
    port map (
            O => \N__889\,
            I => \N__886\
        );

    \I__116\ : Sp12to4
    port map (
            O => \N__886\,
            I => \N__883\
        );

    \I__115\ : Span12Mux_v
    port map (
            O => \N__883\,
            I => \N__880\
        );

    \I__114\ : Odrv12
    port map (
            O => \N__880\,
            I => \DOUT_VLD\
        );

    \I__113\ : InMux
    port map (
            O => \N__877\,
            I => \N__874\
        );

    \I__112\ : LocalMux
    port map (
            O => \N__874\,
            I => \N__871\
        );

    \I__111\ : Span4Mux_h
    port map (
            O => \N__871\,
            I => \N__868\
        );

    \I__110\ : Sp12to4
    port map (
            O => \N__868\,
            I => \N__865\
        );

    \I__109\ : Span12Mux_v
    port map (
            O => \N__865\,
            I => \N__862\
        );

    \I__108\ : Odrv12
    port map (
            O => \N__862\,
            I => \DIN_0_\
        );

    \I__107\ : InMux
    port map (
            O => \N__859\,
            I => \N__855\
        );

    \I__106\ : InMux
    port map (
            O => \N__858\,
            I => \N__852\
        );

    \I__105\ : LocalMux
    port map (
            O => \N__855\,
            I => miso_reg
        );

    \I__104\ : LocalMux
    port map (
            O => \N__852\,
            I => miso_reg
        );

    \I__103\ : InMux
    port map (
            O => \N__847\,
            I => \N__844\
        );

    \I__102\ : LocalMux
    port map (
            O => \N__844\,
            I => \N__841\
        );

    \I__101\ : Sp12to4
    port map (
            O => \N__841\,
            I => \N__838\
        );

    \I__100\ : Span12Mux_v
    port map (
            O => \N__838\,
            I => \N__835\
        );

    \I__99\ : Odrv12
    port map (
            O => \N__835\,
            I => \DIN_1_\
        );

    \I__98\ : IoInMux
    port map (
            O => \N__832\,
            I => \N__829\
        );

    \I__97\ : LocalMux
    port map (
            O => \N__829\,
            I => \N__826\
        );

    \I__96\ : IoSpan4Mux
    port map (
            O => \N__826\,
            I => \N__823\
        );

    \I__95\ : Span4Mux_s3_h
    port map (
            O => \N__823\,
            I => \N__819\
        );

    \I__94\ : InMux
    port map (
            O => \N__822\,
            I => \N__816\
        );

    \I__93\ : Odrv4
    port map (
            O => \N__819\,
            I => \DOUT_0_\
        );

    \I__92\ : LocalMux
    port map (
            O => \N__816\,
            I => \DOUT_0_\
        );

    \I__91\ : InMux
    port map (
            O => \N__811\,
            I => \N__808\
        );

    \I__90\ : LocalMux
    port map (
            O => \N__808\,
            I => \N__805\
        );

    \I__89\ : Span4Mux_h
    port map (
            O => \N__805\,
            I => \N__802\
        );

    \I__88\ : Sp12to4
    port map (
            O => \N__802\,
            I => \N__799\
        );

    \I__87\ : Span12Mux_v
    port map (
            O => \N__799\,
            I => \N__796\
        );

    \I__86\ : Odrv12
    port map (
            O => \N__796\,
            I => \DIN_2_\
        );

    \I__85\ : IoInMux
    port map (
            O => \N__793\,
            I => \N__790\
        );

    \I__84\ : LocalMux
    port map (
            O => \N__790\,
            I => \N__786\
        );

    \I__83\ : InMux
    port map (
            O => \N__789\,
            I => \N__783\
        );

    \I__82\ : Odrv12
    port map (
            O => \N__786\,
            I => \DOUT_1_\
        );

    \I__81\ : LocalMux
    port map (
            O => \N__783\,
            I => \DOUT_1_\
        );

    \I__80\ : InMux
    port map (
            O => \N__778\,
            I => \N__775\
        );

    \I__79\ : LocalMux
    port map (
            O => \N__775\,
            I => \N__772\
        );

    \I__78\ : Sp12to4
    port map (
            O => \N__772\,
            I => \N__769\
        );

    \I__77\ : Span12Mux_v
    port map (
            O => \N__769\,
            I => \N__766\
        );

    \I__76\ : Odrv12
    port map (
            O => \N__766\,
            I => \DIN_3_\
        );

    \I__75\ : IoInMux
    port map (
            O => \N__763\,
            I => \N__760\
        );

    \I__74\ : LocalMux
    port map (
            O => \N__760\,
            I => \N__756\
        );

    \I__73\ : InMux
    port map (
            O => \N__759\,
            I => \N__753\
        );

    \I__72\ : Odrv12
    port map (
            O => \N__756\,
            I => \DOUT_2_\
        );

    \I__71\ : LocalMux
    port map (
            O => \N__753\,
            I => \DOUT_2_\
        );

    \I__70\ : InMux
    port map (
            O => \N__748\,
            I => \N__745\
        );

    \I__69\ : LocalMux
    port map (
            O => \N__745\,
            I => \N__742\
        );

    \I__68\ : Span4Mux_v
    port map (
            O => \N__742\,
            I => \N__739\
        );

    \I__67\ : Span4Mux_v
    port map (
            O => \N__739\,
            I => \N__736\
        );

    \I__66\ : Span4Mux_v
    port map (
            O => \N__736\,
            I => \N__733\
        );

    \I__65\ : Sp12to4
    port map (
            O => \N__733\,
            I => \N__730\
        );

    \I__64\ : Odrv12
    port map (
            O => \N__730\,
            I => \DIN_4_\
        );

    \GND\ : GND
    port map (
            Y => \GNDG0\
        );

    \VCC\ : VCC
    port map (
            Y => \VCCG0\
        );

    \GND_Inst\ : GND
    port map (
            Y => \_gnd_net_\
        );

    \sys_clk_cnt_212__i2_LC_1_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101111110100000"
        )
    port map (
            in0 => \N__1357\,
            in1 => \_gnd_net_\,
            in2 => \N__1675\,
            in3 => \N__1324\,
            lcout => sys_clk_cnt_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1490\,
            ce => 'H',
            sr => \N__1636\
        );

    \sys_clk_cnt_212__i1_LC_1_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1671\,
            in2 => \_gnd_net_\,
            in3 => \N__1356\,
            lcout => sys_clk_cnt_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1490\,
            ce => 'H',
            sr => \N__1636\
        );

    \i1_2_lut_4_lut_LC_1_9_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010000011101100"
        )
    port map (
            in0 => \N__1196\,
            in1 => \N__1704\,
            in2 => \N__1252\,
            in3 => \N__1600\,
            lcout => n435,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \present_state_FSM_i5_LC_1_9_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001000010000"
        )
    port map (
            in0 => \N__1601\,
            in1 => \N__1805\,
            in2 => \N__1278\,
            in3 => \N__1338\,
            lcout => n214,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1495\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \miso_reg_82_LC_1_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101011001010"
        )
    port map (
            in0 => \N__858\,
            in1 => \N__931\,
            in2 => \N__1732\,
            in3 => \N__1603\,
            lcout => miso_reg,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1495\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i378_3_lut_LC_1_9_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0101010101000100"
        )
    port map (
            in0 => \N__943\,
            in1 => \N__1339\,
            in2 => \_gnd_net_\,
            in3 => \N__1197\,
            lcout => \CS_N_0_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \DOUT_VLD_84_LC_1_9_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000001000100"
        )
    port map (
            in0 => \N__1804\,
            in1 => \N__1271\,
            in2 => \_gnd_net_\,
            in3 => \N__1602\,
            lcout => \DOUT_VLD\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1495\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \shreg_i0_LC_1_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__877\,
            in1 => \N__859\,
            in2 => \_gnd_net_\,
            in3 => \N__1167\,
            lcout => \DOUT_0_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i1_LC_1_10_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1168\,
            in1 => \N__847\,
            in2 => \_gnd_net_\,
            in3 => \N__822\,
            lcout => \DOUT_1_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i2_LC_1_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__811\,
            in1 => \N__789\,
            in2 => \_gnd_net_\,
            in3 => \N__1169\,
            lcout => \DOUT_2_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i3_LC_1_10_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1170\,
            in1 => \N__778\,
            in2 => \_gnd_net_\,
            in3 => \N__759\,
            lcout => \DOUT_3_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i4_LC_1_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__748\,
            in1 => \N__1131\,
            in2 => \_gnd_net_\,
            in3 => \N__1171\,
            lcout => \DOUT_4_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i5_LC_1_10_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1172\,
            in1 => \N__1120\,
            in2 => \_gnd_net_\,
            in3 => \N__1095\,
            lcout => \DOUT_5_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i6_LC_1_10_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__1084\,
            in1 => \N__1050\,
            in2 => \_gnd_net_\,
            in3 => \N__1173\,
            lcout => \DOUT_6_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \shreg_i7_LC_1_10_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__1174\,
            in1 => \N__1039\,
            in2 => \_gnd_net_\,
            in3 => \N__1008\,
            lcout => \DOUT_7_\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1491\,
            ce => \N__970\,
            sr => \_gnd_net_\
        );

    \din_last_reg_n_81_LC_1_11_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101010101010101"
        )
    port map (
            in0 => \N__958\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => din_last_reg_n,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1501\,
            ce => \N__1819\,
            sr => \N__1803\
        );

    \bit_cnt__i2_LC_2_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101111110100000"
        )
    port map (
            in0 => \N__1372\,
            in1 => \_gnd_net_\,
            in2 => \N__1528\,
            in3 => \N__1386\,
            lcout => bit_cnt_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1496\,
            ce => \N__1546\,
            sr => \N__1408\
        );

    \bit_cnt__i1_LC_2_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1524\,
            in2 => \_gnd_net_\,
            in3 => \N__1371\,
            lcout => bit_cnt_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1496\,
            ce => \N__1546\,
            sr => \N__1408\
        );

    \i2_3_lut_adj_4_LC_2_9_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110111011"
        )
    port map (
            in0 => \N__1657\,
            in1 => \N__1322\,
            in2 => \_gnd_net_\,
            in3 => \N__1354\,
            lcout => \next_state_2_N_33_0\,
            ltout => \next_state_2_N_33_0_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \RST_I_0_98_2_lut_LC_2_9_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100001111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \N__934\,
            in3 => \N__1808\,
            lcout => sys_clk_cnt_rst,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i2_3_lut_adj_3_LC_2_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000100000000000"
        )
    port map (
            in0 => \N__1517\,
            in1 => \N__1387\,
            in2 => \_gnd_net_\,
            in3 => \N__1370\,
            lcout => n481,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i3_4_lut_LC_2_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000010000000000"
        )
    port map (
            in0 => \N__1355\,
            in1 => \N__1337\,
            in2 => \N__1665\,
            in3 => \N__1323\,
            lcout => n546,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_2_lut_adj_1_LC_2_9_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0000000011001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1700\,
            in2 => \_gnd_net_\,
            in3 => \N__1613\,
            lcout => second_edge_en,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \present_state_FSM_i3_LC_2_9_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000100100000"
        )
    port map (
            in0 => \N__1615\,
            in1 => \N__1809\,
            in2 => \N__1705\,
            in3 => \N__1731\,
            lcout => n216,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1499\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i271_2_lut_LC_2_9_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1727\,
            in2 => \_gnd_net_\,
            in3 => \N__1614\,
            lcout => n378,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \present_state_FSM_i2_LC_2_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111111110101110"
        )
    port map (
            in0 => \N__1166\,
            in1 => \N__1287\,
            in2 => \N__1300\,
            in3 => \N__1306\,
            lcout => n217,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1497\,
            ce => 'H',
            sr => \N__1806\
        );

    \present_state_FSM_i4_LC_2_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110101011000000"
        )
    port map (
            in0 => \N__1296\,
            in1 => \N__1611\,
            in2 => \N__1279\,
            in3 => \N__1288\,
            lcout => n215,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1497\,
            ce => 'H',
            sr => \N__1806\
        );

    \present_state_FSM_i1_LC_2_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1001",
            LUT_INIT => "1111111100100010"
        )
    port map (
            in0 => \N__1195\,
            in1 => \N__1245\,
            in2 => \_gnd_net_\,
            in3 => \N__1258\,
            lcout => \READY\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1497\,
            ce => 'H',
            sr => \N__1806\
        );

    \READY_I_0_2_lut_LC_2_10_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1244\,
            in2 => \_gnd_net_\,
            in3 => \N__1194\,
            lcout => load_data,
            ltout => \load_data_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_2_lut_adj_2_LC_2_10_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111101011111010"
        )
    port map (
            in0 => \N__1807\,
            in1 => \_gnd_net_\,
            in2 => \N__1822\,
            in3 => \_gnd_net_\,
            lcout => n429,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \RST_I_0_3_lut_LC_3_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010111011"
        )
    port map (
            in0 => \N__1810\,
            in1 => \N__1698\,
            in2 => \_gnd_net_\,
            in3 => \N__1726\,
            lcout => bit_cnt_rst,
            ltout => \bit_cnt_rst_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i216_2_lut_3_lut_LC_3_9_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111001011110010"
        )
    port map (
            in0 => \N__1699\,
            in1 => \N__1599\,
            in2 => \N__1678\,
            in3 => \_gnd_net_\,
            lcout => n321,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \sys_clk_cnt_212__i0_LC_3_9_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011111111"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \_gnd_net_\,
            in2 => \_gnd_net_\,
            in3 => \N__1664\,
            lcout => sys_clk_cnt_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1500\,
            ce => 'H',
            sr => \N__1632\
        );

    \spi_clk_79_LC_3_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110000110011"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1557\,
            in2 => \_gnd_net_\,
            in3 => \N__1612\,
            lcout => \SCLK\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1498\,
            ce => 'H',
            sr => \N__1404\
        );

    \bit_cnt__i0_LC_3_10_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1518\,
            in2 => \_gnd_net_\,
            in3 => \N__1539\,
            lcout => bit_cnt_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__1498\,
            ce => 'H',
            sr => \N__1404\
        );
end \INTERFACE\;
