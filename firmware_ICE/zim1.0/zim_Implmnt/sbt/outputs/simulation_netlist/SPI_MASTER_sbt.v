// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Jun 25 2018 11:12:57

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "SPI_MASTER" view "INTERFACE"

module SPI_MASTER (
    CS_N,
    DOUT,
    DIN,
    DOUT_VLD,
    DIN_LAST,
    SCLK,
    RST,
    MOSI,
    READY,
    MISO,
    DIN_VLD,
    CLK);

    output [0:0] CS_N;
    output [7:0] DOUT;
    input [7:0] DIN;
    output DOUT_VLD;
    input DIN_LAST;
    output SCLK;
    input RST;
    output MOSI;
    output READY;
    input MISO;
    input DIN_VLD;
    input CLK;

    wire N__2066;
    wire N__2065;
    wire N__2064;
    wire N__2057;
    wire N__2056;
    wire N__2055;
    wire N__2048;
    wire N__2047;
    wire N__2046;
    wire N__2039;
    wire N__2038;
    wire N__2037;
    wire N__2030;
    wire N__2029;
    wire N__2028;
    wire N__2021;
    wire N__2020;
    wire N__2019;
    wire N__2012;
    wire N__2011;
    wire N__2010;
    wire N__2003;
    wire N__2002;
    wire N__2001;
    wire N__1994;
    wire N__1993;
    wire N__1992;
    wire N__1985;
    wire N__1984;
    wire N__1983;
    wire N__1976;
    wire N__1975;
    wire N__1974;
    wire N__1967;
    wire N__1966;
    wire N__1965;
    wire N__1958;
    wire N__1957;
    wire N__1956;
    wire N__1949;
    wire N__1948;
    wire N__1947;
    wire N__1940;
    wire N__1939;
    wire N__1938;
    wire N__1931;
    wire N__1930;
    wire N__1929;
    wire N__1922;
    wire N__1921;
    wire N__1920;
    wire N__1913;
    wire N__1912;
    wire N__1911;
    wire N__1904;
    wire N__1903;
    wire N__1902;
    wire N__1895;
    wire N__1894;
    wire N__1893;
    wire N__1886;
    wire N__1885;
    wire N__1884;
    wire N__1877;
    wire N__1876;
    wire N__1875;
    wire N__1868;
    wire N__1867;
    wire N__1866;
    wire N__1859;
    wire N__1858;
    wire N__1857;
    wire N__1850;
    wire N__1849;
    wire N__1848;
    wire N__1841;
    wire N__1840;
    wire N__1839;
    wire N__1822;
    wire N__1819;
    wire N__1816;
    wire N__1813;
    wire N__1810;
    wire N__1809;
    wire N__1808;
    wire N__1807;
    wire N__1806;
    wire N__1805;
    wire N__1804;
    wire N__1803;
    wire N__1800;
    wire N__1795;
    wire N__1790;
    wire N__1785;
    wire N__1782;
    wire N__1779;
    wire N__1776;
    wire N__1773;
    wire N__1768;
    wire N__1765;
    wire N__1760;
    wire N__1757;
    wire N__1754;
    wire N__1751;
    wire N__1748;
    wire N__1745;
    wire N__1742;
    wire N__1739;
    wire N__1732;
    wire N__1731;
    wire N__1728;
    wire N__1727;
    wire N__1726;
    wire N__1723;
    wire N__1720;
    wire N__1717;
    wire N__1714;
    wire N__1705;
    wire N__1704;
    wire N__1701;
    wire N__1700;
    wire N__1699;
    wire N__1698;
    wire N__1695;
    wire N__1690;
    wire N__1685;
    wire N__1678;
    wire N__1675;
    wire N__1672;
    wire N__1671;
    wire N__1666;
    wire N__1665;
    wire N__1664;
    wire N__1661;
    wire N__1658;
    wire N__1657;
    wire N__1654;
    wire N__1651;
    wire N__1648;
    wire N__1645;
    wire N__1636;
    wire N__1633;
    wire N__1632;
    wire N__1629;
    wire N__1626;
    wire N__1623;
    wire N__1620;
    wire N__1615;
    wire N__1614;
    wire N__1613;
    wire N__1612;
    wire N__1611;
    wire N__1604;
    wire N__1603;
    wire N__1602;
    wire N__1601;
    wire N__1600;
    wire N__1599;
    wire N__1596;
    wire N__1593;
    wire N__1590;
    wire N__1581;
    wire N__1578;
    wire N__1567;
    wire N__1564;
    wire N__1561;
    wire N__1558;
    wire N__1557;
    wire N__1554;
    wire N__1551;
    wire N__1546;
    wire N__1543;
    wire N__1540;
    wire N__1539;
    wire N__1536;
    wire N__1533;
    wire N__1528;
    wire N__1525;
    wire N__1524;
    wire N__1519;
    wire N__1518;
    wire N__1517;
    wire N__1514;
    wire N__1511;
    wire N__1508;
    wire N__1501;
    wire N__1500;
    wire N__1499;
    wire N__1498;
    wire N__1497;
    wire N__1496;
    wire N__1495;
    wire N__1492;
    wire N__1491;
    wire N__1490;
    wire N__1487;
    wire N__1484;
    wire N__1481;
    wire N__1478;
    wire N__1475;
    wire N__1472;
    wire N__1469;
    wire N__1466;
    wire N__1463;
    wire N__1458;
    wire N__1451;
    wire N__1448;
    wire N__1441;
    wire N__1438;
    wire N__1435;
    wire N__1430;
    wire N__1425;
    wire N__1422;
    wire N__1419;
    wire N__1416;
    wire N__1411;
    wire N__1408;
    wire N__1405;
    wire N__1404;
    wire N__1401;
    wire N__1398;
    wire N__1395;
    wire N__1392;
    wire N__1387;
    wire N__1386;
    wire N__1383;
    wire N__1380;
    wire N__1377;
    wire N__1372;
    wire N__1371;
    wire N__1370;
    wire N__1365;
    wire N__1362;
    wire N__1357;
    wire N__1356;
    wire N__1355;
    wire N__1354;
    wire N__1349;
    wire N__1344;
    wire N__1339;
    wire N__1338;
    wire N__1337;
    wire N__1332;
    wire N__1329;
    wire N__1324;
    wire N__1323;
    wire N__1322;
    wire N__1319;
    wire N__1316;
    wire N__1313;
    wire N__1306;
    wire N__1303;
    wire N__1300;
    wire N__1297;
    wire N__1296;
    wire N__1291;
    wire N__1288;
    wire N__1287;
    wire N__1282;
    wire N__1279;
    wire N__1278;
    wire N__1275;
    wire N__1272;
    wire N__1271;
    wire N__1268;
    wire N__1263;
    wire N__1258;
    wire N__1255;
    wire N__1252;
    wire N__1249;
    wire N__1246;
    wire N__1245;
    wire N__1244;
    wire N__1241;
    wire N__1238;
    wire N__1235;
    wire N__1232;
    wire N__1227;
    wire N__1224;
    wire N__1221;
    wire N__1218;
    wire N__1215;
    wire N__1210;
    wire N__1207;
    wire N__1204;
    wire N__1201;
    wire N__1198;
    wire N__1197;
    wire N__1196;
    wire N__1195;
    wire N__1194;
    wire N__1191;
    wire N__1186;
    wire N__1181;
    wire N__1174;
    wire N__1173;
    wire N__1172;
    wire N__1171;
    wire N__1170;
    wire N__1169;
    wire N__1168;
    wire N__1167;
    wire N__1166;
    wire N__1149;
    wire N__1146;
    wire N__1141;
    wire N__1138;
    wire N__1135;
    wire N__1132;
    wire N__1131;
    wire N__1128;
    wire N__1125;
    wire N__1120;
    wire N__1117;
    wire N__1114;
    wire N__1111;
    wire N__1108;
    wire N__1105;
    wire N__1102;
    wire N__1099;
    wire N__1096;
    wire N__1095;
    wire N__1092;
    wire N__1089;
    wire N__1084;
    wire N__1081;
    wire N__1078;
    wire N__1075;
    wire N__1072;
    wire N__1069;
    wire N__1066;
    wire N__1063;
    wire N__1060;
    wire N__1057;
    wire N__1054;
    wire N__1051;
    wire N__1050;
    wire N__1047;
    wire N__1044;
    wire N__1039;
    wire N__1036;
    wire N__1033;
    wire N__1030;
    wire N__1027;
    wire N__1024;
    wire N__1021;
    wire N__1018;
    wire N__1015;
    wire N__1012;
    wire N__1009;
    wire N__1008;
    wire N__1005;
    wire N__1002;
    wire N__997;
    wire N__996;
    wire N__993;
    wire N__990;
    wire N__985;
    wire N__982;
    wire N__979;
    wire N__976;
    wire N__973;
    wire N__970;
    wire N__967;
    wire N__964;
    wire N__961;
    wire N__958;
    wire N__955;
    wire N__952;
    wire N__949;
    wire N__946;
    wire N__943;
    wire N__940;
    wire N__937;
    wire N__934;
    wire N__931;
    wire N__928;
    wire N__925;
    wire N__922;
    wire N__919;
    wire N__916;
    wire N__913;
    wire N__910;
    wire N__907;
    wire N__904;
    wire N__901;
    wire N__898;
    wire N__895;
    wire N__892;
    wire N__889;
    wire N__886;
    wire N__883;
    wire N__880;
    wire N__877;
    wire N__874;
    wire N__871;
    wire N__868;
    wire N__865;
    wire N__862;
    wire N__859;
    wire N__858;
    wire N__855;
    wire N__852;
    wire N__847;
    wire N__844;
    wire N__841;
    wire N__838;
    wire N__835;
    wire N__832;
    wire N__829;
    wire N__826;
    wire N__823;
    wire N__822;
    wire N__819;
    wire N__816;
    wire N__811;
    wire N__808;
    wire N__805;
    wire N__802;
    wire N__799;
    wire N__796;
    wire N__793;
    wire N__790;
    wire N__789;
    wire N__786;
    wire N__783;
    wire N__778;
    wire N__775;
    wire N__772;
    wire N__769;
    wire N__766;
    wire N__763;
    wire N__760;
    wire N__759;
    wire N__756;
    wire N__753;
    wire N__748;
    wire N__745;
    wire N__742;
    wire N__739;
    wire N__736;
    wire N__733;
    wire N__730;
    wire GNDG0;
    wire VCCG0;
    wire MISO;
    wire CS_N_0_;
    wire DOUT_VLD;
    wire DIN_0_;
    wire miso_reg;
    wire DIN_1_;
    wire DOUT_0_;
    wire DIN_2_;
    wire DOUT_1_;
    wire DIN_3_;
    wire DOUT_2_;
    wire DIN_4_;
    wire DOUT_3_;
    wire DIN_5_;
    wire DOUT_4_;
    wire DIN_6_;
    wire DOUT_5_;
    wire DIN_7_;
    wire DOUT_6_;
    wire DOUT_7_;
    wire n435;
    wire DIN_LAST;
    wire din_last_reg_n;
    wire next_state_2_N_33_0_cascade_;
    wire bit_cnt_2;
    wire bit_cnt_1;
    wire sys_clk_cnt_1;
    wire n214;
    wire sys_clk_cnt_2;
    wire n378;
    wire n481;
    wire second_edge_en;
    wire n215;
    wire n546;
    wire DIN_VLD;
    wire READY;
    wire load_data;
    wire load_data_cascade_;
    wire n429;
    wire RST;
    wire n217;
    wire n216;
    wire bit_cnt_rst_cascade_;
    wire sys_clk_cnt_0;
    wire sys_clk_cnt_rst;
    wire next_state_2_N_33_0;
    wire SCLK;
    wire n321;
    wire bit_cnt_0;
    wire _gnd_net_;
    wire CLK;
    wire bit_cnt_rst;

    IO_PAD ipInertedIOPad_DOUT_VLD_iopad (
            .OE(N__2066),
            .DIN(N__2065),
            .DOUT(N__2064),
            .PACKAGEPIN(DOUT_VLD));
    defparam ipInertedIOPad_DOUT_VLD_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_VLD_preio (
            .PADOEN(N__2066),
            .PADOUT(N__2065),
            .PADIN(N__2064),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__895),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_5_iopad (
            .OE(N__2057),
            .DIN(N__2056),
            .DOUT(N__2055),
            .PACKAGEPIN(DOUT[5]));
    defparam ipInertedIOPad_DOUT_5_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_5_preio (
            .PADOEN(N__2057),
            .PADOUT(N__2056),
            .PADIN(N__2055),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1063),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_LAST_iopad (
            .OE(N__2048),
            .DIN(N__2047),
            .DOUT(N__2046),
            .PACKAGEPIN(DIN_LAST));
    defparam ipInertedIOPad_DIN_LAST_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_LAST_preio (
            .PADOEN(N__2048),
            .PADOUT(N__2047),
            .PADIN(N__2046),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_LAST),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_6_iopad (
            .OE(N__2039),
            .DIN(N__2038),
            .DOUT(N__2037),
            .PACKAGEPIN(DIN[6]));
    defparam ipInertedIOPad_DIN_6_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_6_preio (
            .PADOEN(N__2039),
            .PADOUT(N__2038),
            .PADIN(N__2037),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_6_),
            .DIN1());
    IO_PAD ipInertedIOPad_SCLK_iopad (
            .OE(N__2030),
            .DIN(N__2029),
            .DOUT(N__2028),
            .PACKAGEPIN(SCLK));
    defparam ipInertedIOPad_SCLK_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_SCLK_preio (
            .PADOEN(N__2030),
            .PADOUT(N__2029),
            .PADIN(N__2028),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1567),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_RST_iopad (
            .OE(N__2021),
            .DIN(N__2020),
            .DOUT(N__2019),
            .PACKAGEPIN(RST));
    defparam ipInertedIOPad_RST_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_RST_preio (
            .PADOEN(N__2021),
            .PADOUT(N__2020),
            .PADIN(N__2019),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(RST),
            .DIN1());
    IO_PAD ipInertedIOPad_MOSI_iopad (
            .OE(N__2012),
            .DIN(N__2011),
            .DOUT(N__2010),
            .PACKAGEPIN(MOSI));
    defparam ipInertedIOPad_MOSI_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_MOSI_preio (
            .PADOEN(N__2012),
            .PADOUT(N__2011),
            .PADIN(N__2010),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__996),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_6_iopad (
            .OE(N__2003),
            .DIN(N__2002),
            .DOUT(N__2001),
            .PACKAGEPIN(DOUT[6]));
    defparam ipInertedIOPad_DOUT_6_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_6_preio (
            .PADOEN(N__2003),
            .PADOUT(N__2002),
            .PADIN(N__2001),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1021),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_5_iopad (
            .OE(N__1994),
            .DIN(N__1993),
            .DOUT(N__1992),
            .PACKAGEPIN(DIN[5]));
    defparam ipInertedIOPad_DIN_5_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_5_preio (
            .PADOEN(N__1994),
            .PADOUT(N__1993),
            .PADIN(N__1992),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_5_),
            .DIN1());
    IO_PAD ipInertedIOPad_READY_iopad (
            .OE(N__1985),
            .DIN(N__1984),
            .DOUT(N__1983),
            .PACKAGEPIN(READY));
    defparam ipInertedIOPad_READY_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_READY_preio (
            .PADOEN(N__1985),
            .PADOUT(N__1984),
            .PADIN(N__1983),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1210),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_7_iopad (
            .OE(N__1976),
            .DIN(N__1975),
            .DOUT(N__1974),
            .PACKAGEPIN(DOUT[7]));
    defparam ipInertedIOPad_DOUT_7_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_7_preio (
            .PADOEN(N__1976),
            .PADOUT(N__1975),
            .PADIN(N__1974),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__997),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_4_iopad (
            .OE(N__1967),
            .DIN(N__1966),
            .DOUT(N__1965),
            .PACKAGEPIN(DIN[4]));
    defparam ipInertedIOPad_DIN_4_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_4_preio (
            .PADOEN(N__1967),
            .PADOUT(N__1966),
            .PADIN(N__1965),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_4_),
            .DIN1());
    IO_PAD ipInertedIOPad_MISO_iopad (
            .OE(N__1958),
            .DIN(N__1957),
            .DOUT(N__1956),
            .PACKAGEPIN(MISO));
    defparam ipInertedIOPad_MISO_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_MISO_preio (
            .PADOEN(N__1958),
            .PADOUT(N__1957),
            .PADIN(N__1956),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(MISO),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_4_iopad (
            .OE(N__1949),
            .DIN(N__1948),
            .DOUT(N__1947),
            .PACKAGEPIN(DOUT[4]));
    defparam ipInertedIOPad_DOUT_4_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_4_preio (
            .PADOEN(N__1949),
            .PADOUT(N__1948),
            .PADIN(N__1947),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1105),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_0_iopad (
            .OE(N__1940),
            .DIN(N__1939),
            .DOUT(N__1938),
            .PACKAGEPIN(DOUT[0]));
    defparam ipInertedIOPad_DOUT_0_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_0_preio (
            .PADOEN(N__1940),
            .PADOUT(N__1939),
            .PADIN(N__1938),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__832),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_VLD_iopad (
            .OE(N__1931),
            .DIN(N__1930),
            .DOUT(N__1929),
            .PACKAGEPIN(DIN_VLD));
    defparam ipInertedIOPad_DIN_VLD_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_VLD_preio (
            .PADOEN(N__1931),
            .PADOUT(N__1930),
            .PADIN(N__1929),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_VLD),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_7_iopad (
            .OE(N__1922),
            .DIN(N__1921),
            .DOUT(N__1920),
            .PACKAGEPIN(DIN[7]));
    defparam ipInertedIOPad_DIN_7_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_7_preio (
            .PADOEN(N__1922),
            .PADOUT(N__1921),
            .PADIN(N__1920),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_7_),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_3_iopad (
            .OE(N__1913),
            .DIN(N__1912),
            .DOUT(N__1911),
            .PACKAGEPIN(DIN[3]));
    defparam ipInertedIOPad_DIN_3_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_3_preio (
            .PADOEN(N__1913),
            .PADOUT(N__1912),
            .PADIN(N__1911),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_3_),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_1_iopad (
            .OE(N__1904),
            .DIN(N__1903),
            .DOUT(N__1902),
            .PACKAGEPIN(DOUT[1]));
    defparam ipInertedIOPad_DOUT_1_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_1_preio (
            .PADOEN(N__1904),
            .PADOUT(N__1903),
            .PADIN(N__1902),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__793),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_2_iopad (
            .OE(N__1895),
            .DIN(N__1894),
            .DOUT(N__1893),
            .PACKAGEPIN(DIN[2]));
    defparam ipInertedIOPad_DIN_2_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_2_preio (
            .PADOEN(N__1895),
            .PADOUT(N__1894),
            .PADIN(N__1893),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_2_),
            .DIN1());
    IO_PAD ipInertedIOPad_CS_N_0_iopad (
            .OE(N__1886),
            .DIN(N__1885),
            .DOUT(N__1884),
            .PACKAGEPIN(CS_N[0]));
    defparam ipInertedIOPad_CS_N_0_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_CS_N_0_preio (
            .PADOEN(N__1886),
            .PADOUT(N__1885),
            .PADIN(N__1884),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__916),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_2_iopad (
            .OE(N__1877),
            .DIN(N__1876),
            .DOUT(N__1875),
            .PACKAGEPIN(DOUT[2]));
    defparam ipInertedIOPad_DOUT_2_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_2_preio (
            .PADOEN(N__1877),
            .PADOUT(N__1876),
            .PADIN(N__1875),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__763),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_1_iopad (
            .OE(N__1868),
            .DIN(N__1867),
            .DOUT(N__1866),
            .PACKAGEPIN(DIN[1]));
    defparam ipInertedIOPad_DIN_1_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_1_preio (
            .PADOEN(N__1868),
            .PADOUT(N__1867),
            .PADIN(N__1866),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_1_),
            .DIN1());
    IO_PAD ipInertedIOPad_CLK_iopad (
            .OE(N__1859),
            .DIN(N__1858),
            .DOUT(N__1857),
            .PACKAGEPIN(CLK));
    defparam ipInertedIOPad_CLK_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_CLK_preio (
            .PADOEN(N__1859),
            .PADOUT(N__1858),
            .PADIN(N__1857),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(CLK),
            .DIN1());
    IO_PAD ipInertedIOPad_DOUT_3_iopad (
            .OE(N__1850),
            .DIN(N__1849),
            .DOUT(N__1848),
            .PACKAGEPIN(DOUT[3]));
    defparam ipInertedIOPad_DOUT_3_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_DOUT_3_preio (
            .PADOEN(N__1850),
            .PADOUT(N__1849),
            .PADIN(N__1848),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1141),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DIN_0_iopad (
            .OE(N__1841),
            .DIN(N__1840),
            .DOUT(N__1839),
            .PACKAGEPIN(DIN[0]));
    defparam ipInertedIOPad_DIN_0_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DIN_0_preio (
            .PADOEN(N__1841),
            .PADOUT(N__1840),
            .PADIN(N__1839),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DIN_0_),
            .DIN1());
    CascadeMux I__428 (
            .O(N__1822),
            .I(load_data_cascade_));
    CEMux I__427 (
            .O(N__1819),
            .I(N__1816));
    LocalMux I__426 (
            .O(N__1816),
            .I(N__1813));
    Odrv4 I__425 (
            .O(N__1813),
            .I(n429));
    InMux I__424 (
            .O(N__1810),
            .I(N__1800));
    InMux I__423 (
            .O(N__1809),
            .I(N__1795));
    InMux I__422 (
            .O(N__1808),
            .I(N__1795));
    InMux I__421 (
            .O(N__1807),
            .I(N__1790));
    SRMux I__420 (
            .O(N__1806),
            .I(N__1790));
    InMux I__419 (
            .O(N__1805),
            .I(N__1785));
    InMux I__418 (
            .O(N__1804),
            .I(N__1785));
    SRMux I__417 (
            .O(N__1803),
            .I(N__1782));
    LocalMux I__416 (
            .O(N__1800),
            .I(N__1779));
    LocalMux I__415 (
            .O(N__1795),
            .I(N__1776));
    LocalMux I__414 (
            .O(N__1790),
            .I(N__1773));
    LocalMux I__413 (
            .O(N__1785),
            .I(N__1768));
    LocalMux I__412 (
            .O(N__1782),
            .I(N__1768));
    Span4Mux_v I__411 (
            .O(N__1779),
            .I(N__1765));
    Span4Mux_v I__410 (
            .O(N__1776),
            .I(N__1760));
    Span4Mux_v I__409 (
            .O(N__1773),
            .I(N__1760));
    Span4Mux_v I__408 (
            .O(N__1768),
            .I(N__1757));
    Span4Mux_v I__407 (
            .O(N__1765),
            .I(N__1754));
    Span4Mux_v I__406 (
            .O(N__1760),
            .I(N__1751));
    Span4Mux_v I__405 (
            .O(N__1757),
            .I(N__1748));
    Sp12to4 I__404 (
            .O(N__1754),
            .I(N__1745));
    Span4Mux_h I__403 (
            .O(N__1751),
            .I(N__1742));
    Span4Mux_h I__402 (
            .O(N__1748),
            .I(N__1739));
    Odrv12 I__401 (
            .O(N__1745),
            .I(RST));
    Odrv4 I__400 (
            .O(N__1742),
            .I(RST));
    Odrv4 I__399 (
            .O(N__1739),
            .I(RST));
    CascadeMux I__398 (
            .O(N__1732),
            .I(N__1728));
    InMux I__397 (
            .O(N__1731),
            .I(N__1723));
    InMux I__396 (
            .O(N__1728),
            .I(N__1720));
    InMux I__395 (
            .O(N__1727),
            .I(N__1717));
    InMux I__394 (
            .O(N__1726),
            .I(N__1714));
    LocalMux I__393 (
            .O(N__1723),
            .I(n217));
    LocalMux I__392 (
            .O(N__1720),
            .I(n217));
    LocalMux I__391 (
            .O(N__1717),
            .I(n217));
    LocalMux I__390 (
            .O(N__1714),
            .I(n217));
    CascadeMux I__389 (
            .O(N__1705),
            .I(N__1701));
    InMux I__388 (
            .O(N__1704),
            .I(N__1695));
    InMux I__387 (
            .O(N__1701),
            .I(N__1690));
    InMux I__386 (
            .O(N__1700),
            .I(N__1690));
    InMux I__385 (
            .O(N__1699),
            .I(N__1685));
    InMux I__384 (
            .O(N__1698),
            .I(N__1685));
    LocalMux I__383 (
            .O(N__1695),
            .I(n216));
    LocalMux I__382 (
            .O(N__1690),
            .I(n216));
    LocalMux I__381 (
            .O(N__1685),
            .I(n216));
    CascadeMux I__380 (
            .O(N__1678),
            .I(bit_cnt_rst_cascade_));
    CascadeMux I__379 (
            .O(N__1675),
            .I(N__1672));
    InMux I__378 (
            .O(N__1672),
            .I(N__1666));
    InMux I__377 (
            .O(N__1671),
            .I(N__1666));
    LocalMux I__376 (
            .O(N__1666),
            .I(N__1661));
    CascadeMux I__375 (
            .O(N__1665),
            .I(N__1658));
    InMux I__374 (
            .O(N__1664),
            .I(N__1654));
    Span4Mux_h I__373 (
            .O(N__1661),
            .I(N__1651));
    InMux I__372 (
            .O(N__1658),
            .I(N__1648));
    InMux I__371 (
            .O(N__1657),
            .I(N__1645));
    LocalMux I__370 (
            .O(N__1654),
            .I(sys_clk_cnt_0));
    Odrv4 I__369 (
            .O(N__1651),
            .I(sys_clk_cnt_0));
    LocalMux I__368 (
            .O(N__1648),
            .I(sys_clk_cnt_0));
    LocalMux I__367 (
            .O(N__1645),
            .I(sys_clk_cnt_0));
    SRMux I__366 (
            .O(N__1636),
            .I(N__1633));
    LocalMux I__365 (
            .O(N__1633),
            .I(N__1629));
    SRMux I__364 (
            .O(N__1632),
            .I(N__1626));
    Span4Mux_h I__363 (
            .O(N__1629),
            .I(N__1623));
    LocalMux I__362 (
            .O(N__1626),
            .I(N__1620));
    Odrv4 I__361 (
            .O(N__1623),
            .I(sys_clk_cnt_rst));
    Odrv4 I__360 (
            .O(N__1620),
            .I(sys_clk_cnt_rst));
    InMux I__359 (
            .O(N__1615),
            .I(N__1604));
    InMux I__358 (
            .O(N__1614),
            .I(N__1604));
    InMux I__357 (
            .O(N__1613),
            .I(N__1604));
    InMux I__356 (
            .O(N__1612),
            .I(N__1596));
    InMux I__355 (
            .O(N__1611),
            .I(N__1593));
    LocalMux I__354 (
            .O(N__1604),
            .I(N__1590));
    InMux I__353 (
            .O(N__1603),
            .I(N__1581));
    InMux I__352 (
            .O(N__1602),
            .I(N__1581));
    InMux I__351 (
            .O(N__1601),
            .I(N__1581));
    InMux I__350 (
            .O(N__1600),
            .I(N__1581));
    InMux I__349 (
            .O(N__1599),
            .I(N__1578));
    LocalMux I__348 (
            .O(N__1596),
            .I(next_state_2_N_33_0));
    LocalMux I__347 (
            .O(N__1593),
            .I(next_state_2_N_33_0));
    Odrv4 I__346 (
            .O(N__1590),
            .I(next_state_2_N_33_0));
    LocalMux I__345 (
            .O(N__1581),
            .I(next_state_2_N_33_0));
    LocalMux I__344 (
            .O(N__1578),
            .I(next_state_2_N_33_0));
    IoInMux I__343 (
            .O(N__1567),
            .I(N__1564));
    LocalMux I__342 (
            .O(N__1564),
            .I(N__1561));
    Span4Mux_s2_h I__341 (
            .O(N__1561),
            .I(N__1558));
    Span4Mux_h I__340 (
            .O(N__1558),
            .I(N__1554));
    InMux I__339 (
            .O(N__1557),
            .I(N__1551));
    Odrv4 I__338 (
            .O(N__1554),
            .I(SCLK));
    LocalMux I__337 (
            .O(N__1551),
            .I(SCLK));
    CEMux I__336 (
            .O(N__1546),
            .I(N__1543));
    LocalMux I__335 (
            .O(N__1543),
            .I(N__1540));
    Span4Mux_h I__334 (
            .O(N__1540),
            .I(N__1536));
    InMux I__333 (
            .O(N__1539),
            .I(N__1533));
    Odrv4 I__332 (
            .O(N__1536),
            .I(n321));
    LocalMux I__331 (
            .O(N__1533),
            .I(n321));
    CascadeMux I__330 (
            .O(N__1528),
            .I(N__1525));
    InMux I__329 (
            .O(N__1525),
            .I(N__1519));
    InMux I__328 (
            .O(N__1524),
            .I(N__1519));
    LocalMux I__327 (
            .O(N__1519),
            .I(N__1514));
    InMux I__326 (
            .O(N__1518),
            .I(N__1511));
    InMux I__325 (
            .O(N__1517),
            .I(N__1508));
    Odrv4 I__324 (
            .O(N__1514),
            .I(bit_cnt_0));
    LocalMux I__323 (
            .O(N__1511),
            .I(bit_cnt_0));
    LocalMux I__322 (
            .O(N__1508),
            .I(bit_cnt_0));
    ClkMux I__321 (
            .O(N__1501),
            .I(N__1492));
    ClkMux I__320 (
            .O(N__1500),
            .I(N__1487));
    ClkMux I__319 (
            .O(N__1499),
            .I(N__1484));
    ClkMux I__318 (
            .O(N__1498),
            .I(N__1481));
    ClkMux I__317 (
            .O(N__1497),
            .I(N__1478));
    ClkMux I__316 (
            .O(N__1496),
            .I(N__1475));
    ClkMux I__315 (
            .O(N__1495),
            .I(N__1472));
    LocalMux I__314 (
            .O(N__1492),
            .I(N__1469));
    ClkMux I__313 (
            .O(N__1491),
            .I(N__1466));
    ClkMux I__312 (
            .O(N__1490),
            .I(N__1463));
    LocalMux I__311 (
            .O(N__1487),
            .I(N__1458));
    LocalMux I__310 (
            .O(N__1484),
            .I(N__1458));
    LocalMux I__309 (
            .O(N__1481),
            .I(N__1451));
    LocalMux I__308 (
            .O(N__1478),
            .I(N__1451));
    LocalMux I__307 (
            .O(N__1475),
            .I(N__1451));
    LocalMux I__306 (
            .O(N__1472),
            .I(N__1448));
    Span4Mux_v I__305 (
            .O(N__1469),
            .I(N__1441));
    LocalMux I__304 (
            .O(N__1466),
            .I(N__1441));
    LocalMux I__303 (
            .O(N__1463),
            .I(N__1441));
    Span4Mux_v I__302 (
            .O(N__1458),
            .I(N__1438));
    Span4Mux_v I__301 (
            .O(N__1451),
            .I(N__1435));
    Span4Mux_v I__300 (
            .O(N__1448),
            .I(N__1430));
    Span4Mux_v I__299 (
            .O(N__1441),
            .I(N__1430));
    Span4Mux_v I__298 (
            .O(N__1438),
            .I(N__1425));
    Span4Mux_v I__297 (
            .O(N__1435),
            .I(N__1425));
    Span4Mux_v I__296 (
            .O(N__1430),
            .I(N__1422));
    Span4Mux_v I__295 (
            .O(N__1425),
            .I(N__1419));
    Span4Mux_v I__294 (
            .O(N__1422),
            .I(N__1416));
    Sp12to4 I__293 (
            .O(N__1419),
            .I(N__1411));
    Sp12to4 I__292 (
            .O(N__1416),
            .I(N__1411));
    Odrv12 I__291 (
            .O(N__1411),
            .I(CLK));
    SRMux I__290 (
            .O(N__1408),
            .I(N__1405));
    LocalMux I__289 (
            .O(N__1405),
            .I(N__1401));
    SRMux I__288 (
            .O(N__1404),
            .I(N__1398));
    Span4Mux_h I__287 (
            .O(N__1401),
            .I(N__1395));
    LocalMux I__286 (
            .O(N__1398),
            .I(N__1392));
    Odrv4 I__285 (
            .O(N__1395),
            .I(bit_cnt_rst));
    Odrv12 I__284 (
            .O(N__1392),
            .I(bit_cnt_rst));
    InMux I__283 (
            .O(N__1387),
            .I(N__1383));
    InMux I__282 (
            .O(N__1386),
            .I(N__1380));
    LocalMux I__281 (
            .O(N__1383),
            .I(N__1377));
    LocalMux I__280 (
            .O(N__1380),
            .I(bit_cnt_2));
    Odrv4 I__279 (
            .O(N__1377),
            .I(bit_cnt_2));
    InMux I__278 (
            .O(N__1372),
            .I(N__1365));
    InMux I__277 (
            .O(N__1371),
            .I(N__1365));
    InMux I__276 (
            .O(N__1370),
            .I(N__1362));
    LocalMux I__275 (
            .O(N__1365),
            .I(bit_cnt_1));
    LocalMux I__274 (
            .O(N__1362),
            .I(bit_cnt_1));
    InMux I__273 (
            .O(N__1357),
            .I(N__1349));
    InMux I__272 (
            .O(N__1356),
            .I(N__1349));
    InMux I__271 (
            .O(N__1355),
            .I(N__1344));
    InMux I__270 (
            .O(N__1354),
            .I(N__1344));
    LocalMux I__269 (
            .O(N__1349),
            .I(sys_clk_cnt_1));
    LocalMux I__268 (
            .O(N__1344),
            .I(sys_clk_cnt_1));
    InMux I__267 (
            .O(N__1339),
            .I(N__1332));
    InMux I__266 (
            .O(N__1338),
            .I(N__1332));
    InMux I__265 (
            .O(N__1337),
            .I(N__1329));
    LocalMux I__264 (
            .O(N__1332),
            .I(n214));
    LocalMux I__263 (
            .O(N__1329),
            .I(n214));
    InMux I__262 (
            .O(N__1324),
            .I(N__1319));
    InMux I__261 (
            .O(N__1323),
            .I(N__1316));
    InMux I__260 (
            .O(N__1322),
            .I(N__1313));
    LocalMux I__259 (
            .O(N__1319),
            .I(sys_clk_cnt_2));
    LocalMux I__258 (
            .O(N__1316),
            .I(sys_clk_cnt_2));
    LocalMux I__257 (
            .O(N__1313),
            .I(sys_clk_cnt_2));
    InMux I__256 (
            .O(N__1306),
            .I(N__1303));
    LocalMux I__255 (
            .O(N__1303),
            .I(n378));
    CascadeMux I__254 (
            .O(N__1300),
            .I(N__1297));
    InMux I__253 (
            .O(N__1297),
            .I(N__1291));
    InMux I__252 (
            .O(N__1296),
            .I(N__1291));
    LocalMux I__251 (
            .O(N__1291),
            .I(n481));
    InMux I__250 (
            .O(N__1288),
            .I(N__1282));
    InMux I__249 (
            .O(N__1287),
            .I(N__1282));
    LocalMux I__248 (
            .O(N__1282),
            .I(second_edge_en));
    CascadeMux I__247 (
            .O(N__1279),
            .I(N__1275));
    CascadeMux I__246 (
            .O(N__1278),
            .I(N__1272));
    InMux I__245 (
            .O(N__1275),
            .I(N__1268));
    InMux I__244 (
            .O(N__1272),
            .I(N__1263));
    InMux I__243 (
            .O(N__1271),
            .I(N__1263));
    LocalMux I__242 (
            .O(N__1268),
            .I(n215));
    LocalMux I__241 (
            .O(N__1263),
            .I(n215));
    InMux I__240 (
            .O(N__1258),
            .I(N__1255));
    LocalMux I__239 (
            .O(N__1255),
            .I(n546));
    CascadeMux I__238 (
            .O(N__1252),
            .I(N__1249));
    InMux I__237 (
            .O(N__1249),
            .I(N__1246));
    LocalMux I__236 (
            .O(N__1246),
            .I(N__1241));
    InMux I__235 (
            .O(N__1245),
            .I(N__1238));
    InMux I__234 (
            .O(N__1244),
            .I(N__1235));
    Span4Mux_v I__233 (
            .O(N__1241),
            .I(N__1232));
    LocalMux I__232 (
            .O(N__1238),
            .I(N__1227));
    LocalMux I__231 (
            .O(N__1235),
            .I(N__1227));
    Span4Mux_v I__230 (
            .O(N__1232),
            .I(N__1224));
    Span4Mux_h I__229 (
            .O(N__1227),
            .I(N__1221));
    Span4Mux_h I__228 (
            .O(N__1224),
            .I(N__1218));
    Span4Mux_v I__227 (
            .O(N__1221),
            .I(N__1215));
    Odrv4 I__226 (
            .O(N__1218),
            .I(DIN_VLD));
    Odrv4 I__225 (
            .O(N__1215),
            .I(DIN_VLD));
    IoInMux I__224 (
            .O(N__1210),
            .I(N__1207));
    LocalMux I__223 (
            .O(N__1207),
            .I(N__1204));
    IoSpan4Mux I__222 (
            .O(N__1204),
            .I(N__1201));
    Span4Mux_s1_h I__221 (
            .O(N__1201),
            .I(N__1198));
    Span4Mux_h I__220 (
            .O(N__1198),
            .I(N__1191));
    InMux I__219 (
            .O(N__1197),
            .I(N__1186));
    InMux I__218 (
            .O(N__1196),
            .I(N__1186));
    InMux I__217 (
            .O(N__1195),
            .I(N__1181));
    InMux I__216 (
            .O(N__1194),
            .I(N__1181));
    Odrv4 I__215 (
            .O(N__1191),
            .I(READY));
    LocalMux I__214 (
            .O(N__1186),
            .I(READY));
    LocalMux I__213 (
            .O(N__1181),
            .I(READY));
    InMux I__212 (
            .O(N__1174),
            .I(N__1149));
    InMux I__211 (
            .O(N__1173),
            .I(N__1149));
    InMux I__210 (
            .O(N__1172),
            .I(N__1149));
    InMux I__209 (
            .O(N__1171),
            .I(N__1149));
    InMux I__208 (
            .O(N__1170),
            .I(N__1149));
    InMux I__207 (
            .O(N__1169),
            .I(N__1149));
    InMux I__206 (
            .O(N__1168),
            .I(N__1149));
    InMux I__205 (
            .O(N__1167),
            .I(N__1149));
    InMux I__204 (
            .O(N__1166),
            .I(N__1146));
    LocalMux I__203 (
            .O(N__1149),
            .I(load_data));
    LocalMux I__202 (
            .O(N__1146),
            .I(load_data));
    IoInMux I__201 (
            .O(N__1141),
            .I(N__1138));
    LocalMux I__200 (
            .O(N__1138),
            .I(N__1135));
    Span4Mux_s3_h I__199 (
            .O(N__1135),
            .I(N__1132));
    Span4Mux_v I__198 (
            .O(N__1132),
            .I(N__1128));
    InMux I__197 (
            .O(N__1131),
            .I(N__1125));
    Odrv4 I__196 (
            .O(N__1128),
            .I(DOUT_3_));
    LocalMux I__195 (
            .O(N__1125),
            .I(DOUT_3_));
    InMux I__194 (
            .O(N__1120),
            .I(N__1117));
    LocalMux I__193 (
            .O(N__1117),
            .I(N__1114));
    Sp12to4 I__192 (
            .O(N__1114),
            .I(N__1111));
    Span12Mux_v I__191 (
            .O(N__1111),
            .I(N__1108));
    Odrv12 I__190 (
            .O(N__1108),
            .I(DIN_5_));
    IoInMux I__189 (
            .O(N__1105),
            .I(N__1102));
    LocalMux I__188 (
            .O(N__1102),
            .I(N__1099));
    Span4Mux_s2_h I__187 (
            .O(N__1099),
            .I(N__1096));
    Span4Mux_v I__186 (
            .O(N__1096),
            .I(N__1092));
    InMux I__185 (
            .O(N__1095),
            .I(N__1089));
    Odrv4 I__184 (
            .O(N__1092),
            .I(DOUT_4_));
    LocalMux I__183 (
            .O(N__1089),
            .I(DOUT_4_));
    InMux I__182 (
            .O(N__1084),
            .I(N__1081));
    LocalMux I__181 (
            .O(N__1081),
            .I(N__1078));
    Span4Mux_v I__180 (
            .O(N__1078),
            .I(N__1075));
    Span4Mux_v I__179 (
            .O(N__1075),
            .I(N__1072));
    Span4Mux_v I__178 (
            .O(N__1072),
            .I(N__1069));
    Span4Mux_h I__177 (
            .O(N__1069),
            .I(N__1066));
    Odrv4 I__176 (
            .O(N__1066),
            .I(DIN_6_));
    IoInMux I__175 (
            .O(N__1063),
            .I(N__1060));
    LocalMux I__174 (
            .O(N__1060),
            .I(N__1057));
    Span4Mux_s0_h I__173 (
            .O(N__1057),
            .I(N__1054));
    Span4Mux_v I__172 (
            .O(N__1054),
            .I(N__1051));
    Span4Mux_h I__171 (
            .O(N__1051),
            .I(N__1047));
    InMux I__170 (
            .O(N__1050),
            .I(N__1044));
    Odrv4 I__169 (
            .O(N__1047),
            .I(DOUT_5_));
    LocalMux I__168 (
            .O(N__1044),
            .I(DOUT_5_));
    InMux I__167 (
            .O(N__1039),
            .I(N__1036));
    LocalMux I__166 (
            .O(N__1036),
            .I(N__1033));
    Span4Mux_v I__165 (
            .O(N__1033),
            .I(N__1030));
    Span4Mux_v I__164 (
            .O(N__1030),
            .I(N__1027));
    Sp12to4 I__163 (
            .O(N__1027),
            .I(N__1024));
    Odrv12 I__162 (
            .O(N__1024),
            .I(DIN_7_));
    IoInMux I__161 (
            .O(N__1021),
            .I(N__1018));
    LocalMux I__160 (
            .O(N__1018),
            .I(N__1015));
    IoSpan4Mux I__159 (
            .O(N__1015),
            .I(N__1012));
    Span4Mux_s3_h I__158 (
            .O(N__1012),
            .I(N__1009));
    Span4Mux_v I__157 (
            .O(N__1009),
            .I(N__1005));
    InMux I__156 (
            .O(N__1008),
            .I(N__1002));
    Odrv4 I__155 (
            .O(N__1005),
            .I(DOUT_6_));
    LocalMux I__154 (
            .O(N__1002),
            .I(DOUT_6_));
    IoInMux I__153 (
            .O(N__997),
            .I(N__993));
    IoInMux I__152 (
            .O(N__996),
            .I(N__990));
    LocalMux I__151 (
            .O(N__993),
            .I(N__985));
    LocalMux I__150 (
            .O(N__990),
            .I(N__985));
    IoSpan4Mux I__149 (
            .O(N__985),
            .I(N__982));
    IoSpan4Mux I__148 (
            .O(N__982),
            .I(N__979));
    IoSpan4Mux I__147 (
            .O(N__979),
            .I(N__976));
    Span4Mux_s2_h I__146 (
            .O(N__976),
            .I(N__973));
    Odrv4 I__145 (
            .O(N__973),
            .I(DOUT_7_));
    CEMux I__144 (
            .O(N__970),
            .I(N__967));
    LocalMux I__143 (
            .O(N__967),
            .I(N__964));
    Span4Mux_h I__142 (
            .O(N__964),
            .I(N__961));
    Odrv4 I__141 (
            .O(N__961),
            .I(n435));
    InMux I__140 (
            .O(N__958),
            .I(N__955));
    LocalMux I__139 (
            .O(N__955),
            .I(N__952));
    Span4Mux_v I__138 (
            .O(N__952),
            .I(N__949));
    Span4Mux_h I__137 (
            .O(N__949),
            .I(N__946));
    Odrv4 I__136 (
            .O(N__946),
            .I(DIN_LAST));
    InMux I__135 (
            .O(N__943),
            .I(N__940));
    LocalMux I__134 (
            .O(N__940),
            .I(N__937));
    Odrv12 I__133 (
            .O(N__937),
            .I(din_last_reg_n));
    CascadeMux I__132 (
            .O(N__934),
            .I(next_state_2_N_33_0_cascade_));
    InMux I__131 (
            .O(N__931),
            .I(N__928));
    LocalMux I__130 (
            .O(N__928),
            .I(N__925));
    Sp12to4 I__129 (
            .O(N__925),
            .I(N__922));
    Span12Mux_v I__128 (
            .O(N__922),
            .I(N__919));
    Odrv12 I__127 (
            .O(N__919),
            .I(MISO));
    IoInMux I__126 (
            .O(N__916),
            .I(N__913));
    LocalMux I__125 (
            .O(N__913),
            .I(N__910));
    Span4Mux_s0_h I__124 (
            .O(N__910),
            .I(N__907));
    Span4Mux_v I__123 (
            .O(N__907),
            .I(N__904));
    Span4Mux_v I__122 (
            .O(N__904),
            .I(N__901));
    Span4Mux_h I__121 (
            .O(N__901),
            .I(N__898));
    Odrv4 I__120 (
            .O(N__898),
            .I(CS_N_0_));
    IoInMux I__119 (
            .O(N__895),
            .I(N__892));
    LocalMux I__118 (
            .O(N__892),
            .I(N__889));
    Span4Mux_s2_h I__117 (
            .O(N__889),
            .I(N__886));
    Sp12to4 I__116 (
            .O(N__886),
            .I(N__883));
    Span12Mux_v I__115 (
            .O(N__883),
            .I(N__880));
    Odrv12 I__114 (
            .O(N__880),
            .I(DOUT_VLD));
    InMux I__113 (
            .O(N__877),
            .I(N__874));
    LocalMux I__112 (
            .O(N__874),
            .I(N__871));
    Span4Mux_h I__111 (
            .O(N__871),
            .I(N__868));
    Sp12to4 I__110 (
            .O(N__868),
            .I(N__865));
    Span12Mux_v I__109 (
            .O(N__865),
            .I(N__862));
    Odrv12 I__108 (
            .O(N__862),
            .I(DIN_0_));
    InMux I__107 (
            .O(N__859),
            .I(N__855));
    InMux I__106 (
            .O(N__858),
            .I(N__852));
    LocalMux I__105 (
            .O(N__855),
            .I(miso_reg));
    LocalMux I__104 (
            .O(N__852),
            .I(miso_reg));
    InMux I__103 (
            .O(N__847),
            .I(N__844));
    LocalMux I__102 (
            .O(N__844),
            .I(N__841));
    Sp12to4 I__101 (
            .O(N__841),
            .I(N__838));
    Span12Mux_v I__100 (
            .O(N__838),
            .I(N__835));
    Odrv12 I__99 (
            .O(N__835),
            .I(DIN_1_));
    IoInMux I__98 (
            .O(N__832),
            .I(N__829));
    LocalMux I__97 (
            .O(N__829),
            .I(N__826));
    IoSpan4Mux I__96 (
            .O(N__826),
            .I(N__823));
    Span4Mux_s3_h I__95 (
            .O(N__823),
            .I(N__819));
    InMux I__94 (
            .O(N__822),
            .I(N__816));
    Odrv4 I__93 (
            .O(N__819),
            .I(DOUT_0_));
    LocalMux I__92 (
            .O(N__816),
            .I(DOUT_0_));
    InMux I__91 (
            .O(N__811),
            .I(N__808));
    LocalMux I__90 (
            .O(N__808),
            .I(N__805));
    Span4Mux_h I__89 (
            .O(N__805),
            .I(N__802));
    Sp12to4 I__88 (
            .O(N__802),
            .I(N__799));
    Span12Mux_v I__87 (
            .O(N__799),
            .I(N__796));
    Odrv12 I__86 (
            .O(N__796),
            .I(DIN_2_));
    IoInMux I__85 (
            .O(N__793),
            .I(N__790));
    LocalMux I__84 (
            .O(N__790),
            .I(N__786));
    InMux I__83 (
            .O(N__789),
            .I(N__783));
    Odrv12 I__82 (
            .O(N__786),
            .I(DOUT_1_));
    LocalMux I__81 (
            .O(N__783),
            .I(DOUT_1_));
    InMux I__80 (
            .O(N__778),
            .I(N__775));
    LocalMux I__79 (
            .O(N__775),
            .I(N__772));
    Sp12to4 I__78 (
            .O(N__772),
            .I(N__769));
    Span12Mux_v I__77 (
            .O(N__769),
            .I(N__766));
    Odrv12 I__76 (
            .O(N__766),
            .I(DIN_3_));
    IoInMux I__75 (
            .O(N__763),
            .I(N__760));
    LocalMux I__74 (
            .O(N__760),
            .I(N__756));
    InMux I__73 (
            .O(N__759),
            .I(N__753));
    Odrv12 I__72 (
            .O(N__756),
            .I(DOUT_2_));
    LocalMux I__71 (
            .O(N__753),
            .I(DOUT_2_));
    InMux I__70 (
            .O(N__748),
            .I(N__745));
    LocalMux I__69 (
            .O(N__745),
            .I(N__742));
    Span4Mux_v I__68 (
            .O(N__742),
            .I(N__739));
    Span4Mux_v I__67 (
            .O(N__739),
            .I(N__736));
    Span4Mux_v I__66 (
            .O(N__736),
            .I(N__733));
    Sp12to4 I__65 (
            .O(N__733),
            .I(N__730));
    Odrv12 I__64 (
            .O(N__730),
            .I(DIN_4_));
    GND GND (
            .Y(GNDG0));
    VCC VCC (
            .Y(VCCG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam sys_clk_cnt_212__i2_LC_1_8_0.C_ON=1'b0;
    defparam sys_clk_cnt_212__i2_LC_1_8_0.SEQ_MODE=4'b1000;
    defparam sys_clk_cnt_212__i2_LC_1_8_0.LUT_INIT=16'b0101111110100000;
    LogicCell40 sys_clk_cnt_212__i2_LC_1_8_0 (
            .in0(N__1357),
            .in1(_gnd_net_),
            .in2(N__1675),
            .in3(N__1324),
            .lcout(sys_clk_cnt_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1490),
            .ce(),
            .sr(N__1636));
    defparam sys_clk_cnt_212__i1_LC_1_8_3.C_ON=1'b0;
    defparam sys_clk_cnt_212__i1_LC_1_8_3.SEQ_MODE=4'b1000;
    defparam sys_clk_cnt_212__i1_LC_1_8_3.LUT_INIT=16'b0011001111001100;
    LogicCell40 sys_clk_cnt_212__i1_LC_1_8_3 (
            .in0(_gnd_net_),
            .in1(N__1671),
            .in2(_gnd_net_),
            .in3(N__1356),
            .lcout(sys_clk_cnt_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1490),
            .ce(),
            .sr(N__1636));
    defparam i1_2_lut_4_lut_LC_1_9_0.C_ON=1'b0;
    defparam i1_2_lut_4_lut_LC_1_9_0.SEQ_MODE=4'b0000;
    defparam i1_2_lut_4_lut_LC_1_9_0.LUT_INIT=16'b1010000011101100;
    LogicCell40 i1_2_lut_4_lut_LC_1_9_0 (
            .in0(N__1196),
            .in1(N__1704),
            .in2(N__1252),
            .in3(N__1600),
            .lcout(n435),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam present_state_FSM_i5_LC_1_9_1.C_ON=1'b0;
    defparam present_state_FSM_i5_LC_1_9_1.SEQ_MODE=4'b1000;
    defparam present_state_FSM_i5_LC_1_9_1.LUT_INIT=16'b0011001000010000;
    LogicCell40 present_state_FSM_i5_LC_1_9_1 (
            .in0(N__1601),
            .in1(N__1805),
            .in2(N__1278),
            .in3(N__1338),
            .lcout(n214),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1495),
            .ce(),
            .sr(_gnd_net_));
    defparam miso_reg_82_LC_1_9_4.C_ON=1'b0;
    defparam miso_reg_82_LC_1_9_4.SEQ_MODE=4'b1000;
    defparam miso_reg_82_LC_1_9_4.LUT_INIT=16'b1010101011001010;
    LogicCell40 miso_reg_82_LC_1_9_4 (
            .in0(N__858),
            .in1(N__931),
            .in2(N__1732),
            .in3(N__1603),
            .lcout(miso_reg),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1495),
            .ce(),
            .sr(_gnd_net_));
    defparam i378_3_lut_LC_1_9_5.C_ON=1'b0;
    defparam i378_3_lut_LC_1_9_5.SEQ_MODE=4'b0000;
    defparam i378_3_lut_LC_1_9_5.LUT_INIT=16'b0101010101000100;
    LogicCell40 i378_3_lut_LC_1_9_5 (
            .in0(N__943),
            .in1(N__1339),
            .in2(_gnd_net_),
            .in3(N__1197),
            .lcout(CS_N_0_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam DOUT_VLD_84_LC_1_9_6.C_ON=1'b0;
    defparam DOUT_VLD_84_LC_1_9_6.SEQ_MODE=4'b1000;
    defparam DOUT_VLD_84_LC_1_9_6.LUT_INIT=16'b0000000001000100;
    LogicCell40 DOUT_VLD_84_LC_1_9_6 (
            .in0(N__1804),
            .in1(N__1271),
            .in2(_gnd_net_),
            .in3(N__1602),
            .lcout(DOUT_VLD),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1495),
            .ce(),
            .sr(_gnd_net_));
    defparam shreg_i0_LC_1_10_0.C_ON=1'b0;
    defparam shreg_i0_LC_1_10_0.SEQ_MODE=4'b1000;
    defparam shreg_i0_LC_1_10_0.LUT_INIT=16'b1010101011001100;
    LogicCell40 shreg_i0_LC_1_10_0 (
            .in0(N__877),
            .in1(N__859),
            .in2(_gnd_net_),
            .in3(N__1167),
            .lcout(DOUT_0_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i1_LC_1_10_1.C_ON=1'b0;
    defparam shreg_i1_LC_1_10_1.SEQ_MODE=4'b1000;
    defparam shreg_i1_LC_1_10_1.LUT_INIT=16'b1101110110001000;
    LogicCell40 shreg_i1_LC_1_10_1 (
            .in0(N__1168),
            .in1(N__847),
            .in2(_gnd_net_),
            .in3(N__822),
            .lcout(DOUT_1_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i2_LC_1_10_2.C_ON=1'b0;
    defparam shreg_i2_LC_1_10_2.SEQ_MODE=4'b1000;
    defparam shreg_i2_LC_1_10_2.LUT_INIT=16'b1010101011001100;
    LogicCell40 shreg_i2_LC_1_10_2 (
            .in0(N__811),
            .in1(N__789),
            .in2(_gnd_net_),
            .in3(N__1169),
            .lcout(DOUT_2_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i3_LC_1_10_3.C_ON=1'b0;
    defparam shreg_i3_LC_1_10_3.SEQ_MODE=4'b1000;
    defparam shreg_i3_LC_1_10_3.LUT_INIT=16'b1101110110001000;
    LogicCell40 shreg_i3_LC_1_10_3 (
            .in0(N__1170),
            .in1(N__778),
            .in2(_gnd_net_),
            .in3(N__759),
            .lcout(DOUT_3_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i4_LC_1_10_4.C_ON=1'b0;
    defparam shreg_i4_LC_1_10_4.SEQ_MODE=4'b1000;
    defparam shreg_i4_LC_1_10_4.LUT_INIT=16'b1010101011001100;
    LogicCell40 shreg_i4_LC_1_10_4 (
            .in0(N__748),
            .in1(N__1131),
            .in2(_gnd_net_),
            .in3(N__1171),
            .lcout(DOUT_4_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i5_LC_1_10_5.C_ON=1'b0;
    defparam shreg_i5_LC_1_10_5.SEQ_MODE=4'b1000;
    defparam shreg_i5_LC_1_10_5.LUT_INIT=16'b1101110110001000;
    LogicCell40 shreg_i5_LC_1_10_5 (
            .in0(N__1172),
            .in1(N__1120),
            .in2(_gnd_net_),
            .in3(N__1095),
            .lcout(DOUT_5_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i6_LC_1_10_6.C_ON=1'b0;
    defparam shreg_i6_LC_1_10_6.SEQ_MODE=4'b1000;
    defparam shreg_i6_LC_1_10_6.LUT_INIT=16'b1010101011001100;
    LogicCell40 shreg_i6_LC_1_10_6 (
            .in0(N__1084),
            .in1(N__1050),
            .in2(_gnd_net_),
            .in3(N__1173),
            .lcout(DOUT_6_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam shreg_i7_LC_1_10_7.C_ON=1'b0;
    defparam shreg_i7_LC_1_10_7.SEQ_MODE=4'b1000;
    defparam shreg_i7_LC_1_10_7.LUT_INIT=16'b1101110110001000;
    LogicCell40 shreg_i7_LC_1_10_7 (
            .in0(N__1174),
            .in1(N__1039),
            .in2(_gnd_net_),
            .in3(N__1008),
            .lcout(DOUT_7_),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1491),
            .ce(N__970),
            .sr(_gnd_net_));
    defparam din_last_reg_n_81_LC_1_11_0.C_ON=1'b0;
    defparam din_last_reg_n_81_LC_1_11_0.SEQ_MODE=4'b1000;
    defparam din_last_reg_n_81_LC_1_11_0.LUT_INIT=16'b0101010101010101;
    LogicCell40 din_last_reg_n_81_LC_1_11_0 (
            .in0(N__958),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(din_last_reg_n),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1501),
            .ce(N__1819),
            .sr(N__1803));
    defparam bit_cnt__i2_LC_2_8_0.C_ON=1'b0;
    defparam bit_cnt__i2_LC_2_8_0.SEQ_MODE=4'b1000;
    defparam bit_cnt__i2_LC_2_8_0.LUT_INIT=16'b0101111110100000;
    LogicCell40 bit_cnt__i2_LC_2_8_0 (
            .in0(N__1372),
            .in1(_gnd_net_),
            .in2(N__1528),
            .in3(N__1386),
            .lcout(bit_cnt_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1496),
            .ce(N__1546),
            .sr(N__1408));
    defparam bit_cnt__i1_LC_2_8_1.C_ON=1'b0;
    defparam bit_cnt__i1_LC_2_8_1.SEQ_MODE=4'b1000;
    defparam bit_cnt__i1_LC_2_8_1.LUT_INIT=16'b0011001111001100;
    LogicCell40 bit_cnt__i1_LC_2_8_1 (
            .in0(_gnd_net_),
            .in1(N__1524),
            .in2(_gnd_net_),
            .in3(N__1371),
            .lcout(bit_cnt_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1496),
            .ce(N__1546),
            .sr(N__1408));
    defparam i2_3_lut_adj_4_LC_2_9_1.C_ON=1'b0;
    defparam i2_3_lut_adj_4_LC_2_9_1.SEQ_MODE=4'b0000;
    defparam i2_3_lut_adj_4_LC_2_9_1.LUT_INIT=16'b1111111110111011;
    LogicCell40 i2_3_lut_adj_4_LC_2_9_1 (
            .in0(N__1657),
            .in1(N__1322),
            .in2(_gnd_net_),
            .in3(N__1354),
            .lcout(next_state_2_N_33_0),
            .ltout(next_state_2_N_33_0_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam RST_I_0_98_2_lut_LC_2_9_2.C_ON=1'b0;
    defparam RST_I_0_98_2_lut_LC_2_9_2.SEQ_MODE=4'b0000;
    defparam RST_I_0_98_2_lut_LC_2_9_2.LUT_INIT=16'b1111111100001111;
    LogicCell40 RST_I_0_98_2_lut_LC_2_9_2 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(N__934),
            .in3(N__1808),
            .lcout(sys_clk_cnt_rst),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i2_3_lut_adj_3_LC_2_9_3.C_ON=1'b0;
    defparam i2_3_lut_adj_3_LC_2_9_3.SEQ_MODE=4'b0000;
    defparam i2_3_lut_adj_3_LC_2_9_3.LUT_INIT=16'b1000100000000000;
    LogicCell40 i2_3_lut_adj_3_LC_2_9_3 (
            .in0(N__1517),
            .in1(N__1387),
            .in2(_gnd_net_),
            .in3(N__1370),
            .lcout(n481),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_4_lut_LC_2_9_4.C_ON=1'b0;
    defparam i3_4_lut_LC_2_9_4.SEQ_MODE=4'b0000;
    defparam i3_4_lut_LC_2_9_4.LUT_INIT=16'b0000010000000000;
    LogicCell40 i3_4_lut_LC_2_9_4 (
            .in0(N__1355),
            .in1(N__1337),
            .in2(N__1665),
            .in3(N__1323),
            .lcout(n546),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_adj_1_LC_2_9_5.C_ON=1'b0;
    defparam i1_2_lut_adj_1_LC_2_9_5.SEQ_MODE=4'b0000;
    defparam i1_2_lut_adj_1_LC_2_9_5.LUT_INIT=16'b0000000011001100;
    LogicCell40 i1_2_lut_adj_1_LC_2_9_5 (
            .in0(_gnd_net_),
            .in1(N__1700),
            .in2(_gnd_net_),
            .in3(N__1613),
            .lcout(second_edge_en),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam present_state_FSM_i3_LC_2_9_6.C_ON=1'b0;
    defparam present_state_FSM_i3_LC_2_9_6.SEQ_MODE=4'b1000;
    defparam present_state_FSM_i3_LC_2_9_6.LUT_INIT=16'b0011000100100000;
    LogicCell40 present_state_FSM_i3_LC_2_9_6 (
            .in0(N__1615),
            .in1(N__1809),
            .in2(N__1705),
            .in3(N__1731),
            .lcout(n216),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1499),
            .ce(),
            .sr(_gnd_net_));
    defparam i271_2_lut_LC_2_9_7.C_ON=1'b0;
    defparam i271_2_lut_LC_2_9_7.SEQ_MODE=4'b0000;
    defparam i271_2_lut_LC_2_9_7.LUT_INIT=16'b1100110000000000;
    LogicCell40 i271_2_lut_LC_2_9_7 (
            .in0(_gnd_net_),
            .in1(N__1727),
            .in2(_gnd_net_),
            .in3(N__1614),
            .lcout(n378),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam present_state_FSM_i2_LC_2_10_0.C_ON=1'b0;
    defparam present_state_FSM_i2_LC_2_10_0.SEQ_MODE=4'b1000;
    defparam present_state_FSM_i2_LC_2_10_0.LUT_INIT=16'b1111111110101110;
    LogicCell40 present_state_FSM_i2_LC_2_10_0 (
            .in0(N__1166),
            .in1(N__1287),
            .in2(N__1300),
            .in3(N__1306),
            .lcout(n217),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1497),
            .ce(),
            .sr(N__1806));
    defparam present_state_FSM_i4_LC_2_10_2.C_ON=1'b0;
    defparam present_state_FSM_i4_LC_2_10_2.SEQ_MODE=4'b1000;
    defparam present_state_FSM_i4_LC_2_10_2.LUT_INIT=16'b1110101011000000;
    LogicCell40 present_state_FSM_i4_LC_2_10_2 (
            .in0(N__1296),
            .in1(N__1611),
            .in2(N__1279),
            .in3(N__1288),
            .lcout(n215),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1497),
            .ce(),
            .sr(N__1806));
    defparam present_state_FSM_i1_LC_2_10_4.C_ON=1'b0;
    defparam present_state_FSM_i1_LC_2_10_4.SEQ_MODE=4'b1001;
    defparam present_state_FSM_i1_LC_2_10_4.LUT_INIT=16'b1111111100100010;
    LogicCell40 present_state_FSM_i1_LC_2_10_4 (
            .in0(N__1195),
            .in1(N__1245),
            .in2(_gnd_net_),
            .in3(N__1258),
            .lcout(READY),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1497),
            .ce(),
            .sr(N__1806));
    defparam READY_I_0_2_lut_LC_2_10_5.C_ON=1'b0;
    defparam READY_I_0_2_lut_LC_2_10_5.SEQ_MODE=4'b0000;
    defparam READY_I_0_2_lut_LC_2_10_5.LUT_INIT=16'b1100110000000000;
    LogicCell40 READY_I_0_2_lut_LC_2_10_5 (
            .in0(_gnd_net_),
            .in1(N__1244),
            .in2(_gnd_net_),
            .in3(N__1194),
            .lcout(load_data),
            .ltout(load_data_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_adj_2_LC_2_10_6.C_ON=1'b0;
    defparam i1_2_lut_adj_2_LC_2_10_6.SEQ_MODE=4'b0000;
    defparam i1_2_lut_adj_2_LC_2_10_6.LUT_INIT=16'b1111101011111010;
    LogicCell40 i1_2_lut_adj_2_LC_2_10_6 (
            .in0(N__1807),
            .in1(_gnd_net_),
            .in2(N__1822),
            .in3(_gnd_net_),
            .lcout(n429),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam RST_I_0_3_lut_LC_3_9_3.C_ON=1'b0;
    defparam RST_I_0_3_lut_LC_3_9_3.SEQ_MODE=4'b0000;
    defparam RST_I_0_3_lut_LC_3_9_3.LUT_INIT=16'b1010101010111011;
    LogicCell40 RST_I_0_3_lut_LC_3_9_3 (
            .in0(N__1810),
            .in1(N__1698),
            .in2(_gnd_net_),
            .in3(N__1726),
            .lcout(bit_cnt_rst),
            .ltout(bit_cnt_rst_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i216_2_lut_3_lut_LC_3_9_4.C_ON=1'b0;
    defparam i216_2_lut_3_lut_LC_3_9_4.SEQ_MODE=4'b0000;
    defparam i216_2_lut_3_lut_LC_3_9_4.LUT_INIT=16'b1111001011110010;
    LogicCell40 i216_2_lut_3_lut_LC_3_9_4 (
            .in0(N__1699),
            .in1(N__1599),
            .in2(N__1678),
            .in3(_gnd_net_),
            .lcout(n321),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam sys_clk_cnt_212__i0_LC_3_9_5.C_ON=1'b0;
    defparam sys_clk_cnt_212__i0_LC_3_9_5.SEQ_MODE=4'b1000;
    defparam sys_clk_cnt_212__i0_LC_3_9_5.LUT_INIT=16'b0000000011111111;
    LogicCell40 sys_clk_cnt_212__i0_LC_3_9_5 (
            .in0(_gnd_net_),
            .in1(_gnd_net_),
            .in2(_gnd_net_),
            .in3(N__1664),
            .lcout(sys_clk_cnt_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1500),
            .ce(),
            .sr(N__1632));
    defparam spi_clk_79_LC_3_10_0.C_ON=1'b0;
    defparam spi_clk_79_LC_3_10_0.SEQ_MODE=4'b1000;
    defparam spi_clk_79_LC_3_10_0.LUT_INIT=16'b1100110000110011;
    LogicCell40 spi_clk_79_LC_3_10_0 (
            .in0(_gnd_net_),
            .in1(N__1557),
            .in2(_gnd_net_),
            .in3(N__1612),
            .lcout(SCLK),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1498),
            .ce(),
            .sr(N__1404));
    defparam bit_cnt__i0_LC_3_10_1.C_ON=1'b0;
    defparam bit_cnt__i0_LC_3_10_1.SEQ_MODE=4'b1000;
    defparam bit_cnt__i0_LC_3_10_1.LUT_INIT=16'b0011001111001100;
    LogicCell40 bit_cnt__i0_LC_3_10_1 (
            .in0(_gnd_net_),
            .in1(N__1518),
            .in2(_gnd_net_),
            .in3(N__1539),
            .lcout(bit_cnt_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__1498),
            .ce(),
            .sr(N__1404));
endmodule // SPI_MASTER
