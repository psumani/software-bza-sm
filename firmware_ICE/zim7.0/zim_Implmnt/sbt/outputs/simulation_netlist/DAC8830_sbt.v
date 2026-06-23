// ******************************************************************************

// iCEcube Netlister

// Version:            2017.08.27940

// Build Date:         Sep 11 2017 17:30:03

// File Generated:     Sep 5 2018 18:11:17

// Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

// Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

// ******************************************************************************

// Verilog file for cell "DAC8830" view "INTERFACE"

module DAC8830 (
    DATA,
    CS,
    SCLK,
    MOSI,
    CLK);

    input [15:0] DATA;
    output CS;
    output SCLK;
    output MOSI;
    input CLK;

    wire N__3105;
    wire N__3104;
    wire N__3103;
    wire N__3096;
    wire N__3095;
    wire N__3094;
    wire N__3087;
    wire N__3086;
    wire N__3085;
    wire N__3078;
    wire N__3077;
    wire N__3076;
    wire N__3069;
    wire N__3068;
    wire N__3067;
    wire N__3060;
    wire N__3059;
    wire N__3058;
    wire N__3051;
    wire N__3050;
    wire N__3049;
    wire N__3042;
    wire N__3041;
    wire N__3040;
    wire N__3033;
    wire N__3032;
    wire N__3031;
    wire N__3024;
    wire N__3023;
    wire N__3022;
    wire N__3015;
    wire N__3014;
    wire N__3013;
    wire N__3006;
    wire N__3005;
    wire N__3004;
    wire N__2997;
    wire N__2996;
    wire N__2995;
    wire N__2988;
    wire N__2987;
    wire N__2986;
    wire N__2979;
    wire N__2978;
    wire N__2977;
    wire N__2970;
    wire N__2969;
    wire N__2968;
    wire N__2961;
    wire N__2960;
    wire N__2959;
    wire N__2952;
    wire N__2951;
    wire N__2950;
    wire N__2943;
    wire N__2942;
    wire N__2941;
    wire N__2934;
    wire N__2933;
    wire N__2932;
    wire N__2915;
    wire N__2912;
    wire N__2909;
    wire N__2906;
    wire N__2903;
    wire N__2900;
    wire N__2897;
    wire N__2896;
    wire N__2893;
    wire N__2892;
    wire N__2889;
    wire N__2886;
    wire N__2883;
    wire N__2876;
    wire N__2873;
    wire N__2872;
    wire N__2869;
    wire N__2868;
    wire N__2867;
    wire N__2864;
    wire N__2861;
    wire N__2856;
    wire N__2853;
    wire N__2846;
    wire N__2843;
    wire N__2842;
    wire N__2841;
    wire N__2840;
    wire N__2839;
    wire N__2836;
    wire N__2829;
    wire N__2826;
    wire N__2819;
    wire N__2816;
    wire N__2813;
    wire N__2810;
    wire N__2807;
    wire N__2804;
    wire N__2801;
    wire N__2798;
    wire N__2795;
    wire N__2794;
    wire N__2793;
    wire N__2792;
    wire N__2791;
    wire N__2788;
    wire N__2787;
    wire N__2786;
    wire N__2785;
    wire N__2782;
    wire N__2779;
    wire N__2778;
    wire N__2775;
    wire N__2772;
    wire N__2769;
    wire N__2764;
    wire N__2761;
    wire N__2760;
    wire N__2757;
    wire N__2754;
    wire N__2753;
    wire N__2752;
    wire N__2749;
    wire N__2748;
    wire N__2747;
    wire N__2744;
    wire N__2735;
    wire N__2732;
    wire N__2727;
    wire N__2720;
    wire N__2715;
    wire N__2702;
    wire N__2701;
    wire N__2700;
    wire N__2699;
    wire N__2698;
    wire N__2697;
    wire N__2696;
    wire N__2695;
    wire N__2694;
    wire N__2693;
    wire N__2692;
    wire N__2691;
    wire N__2690;
    wire N__2689;
    wire N__2688;
    wire N__2687;
    wire N__2686;
    wire N__2685;
    wire N__2684;
    wire N__2667;
    wire N__2660;
    wire N__2649;
    wire N__2646;
    wire N__2645;
    wire N__2644;
    wire N__2643;
    wire N__2642;
    wire N__2641;
    wire N__2640;
    wire N__2639;
    wire N__2636;
    wire N__2633;
    wire N__2632;
    wire N__2625;
    wire N__2622;
    wire N__2621;
    wire N__2614;
    wire N__2611;
    wire N__2604;
    wire N__2599;
    wire N__2598;
    wire N__2595;
    wire N__2590;
    wire N__2587;
    wire N__2584;
    wire N__2579;
    wire N__2576;
    wire N__2573;
    wire N__2558;
    wire N__2557;
    wire N__2554;
    wire N__2553;
    wire N__2552;
    wire N__2551;
    wire N__2550;
    wire N__2549;
    wire N__2546;
    wire N__2545;
    wire N__2544;
    wire N__2543;
    wire N__2542;
    wire N__2539;
    wire N__2536;
    wire N__2531;
    wire N__2530;
    wire N__2529;
    wire N__2528;
    wire N__2523;
    wire N__2520;
    wire N__2519;
    wire N__2518;
    wire N__2515;
    wire N__2512;
    wire N__2509;
    wire N__2506;
    wire N__2499;
    wire N__2494;
    wire N__2491;
    wire N__2486;
    wire N__2481;
    wire N__2462;
    wire N__2461;
    wire N__2460;
    wire N__2459;
    wire N__2456;
    wire N__2453;
    wire N__2450;
    wire N__2449;
    wire N__2448;
    wire N__2445;
    wire N__2442;
    wire N__2435;
    wire N__2432;
    wire N__2429;
    wire N__2420;
    wire N__2419;
    wire N__2418;
    wire N__2417;
    wire N__2416;
    wire N__2415;
    wire N__2412;
    wire N__2409;
    wire N__2406;
    wire N__2403;
    wire N__2400;
    wire N__2399;
    wire N__2396;
    wire N__2395;
    wire N__2394;
    wire N__2393;
    wire N__2392;
    wire N__2389;
    wire N__2380;
    wire N__2377;
    wire N__2376;
    wire N__2375;
    wire N__2372;
    wire N__2369;
    wire N__2366;
    wire N__2363;
    wire N__2360;
    wire N__2355;
    wire N__2352;
    wire N__2349;
    wire N__2348;
    wire N__2345;
    wire N__2334;
    wire N__2327;
    wire N__2324;
    wire N__2321;
    wire N__2314;
    wire N__2311;
    wire N__2308;
    wire N__2305;
    wire N__2302;
    wire N__2299;
    wire N__2296;
    wire N__2291;
    wire N__2288;
    wire N__2285;
    wire N__2284;
    wire N__2281;
    wire N__2278;
    wire N__2275;
    wire N__2272;
    wire N__2267;
    wire N__2264;
    wire N__2263;
    wire N__2262;
    wire N__2257;
    wire N__2254;
    wire N__2249;
    wire N__2246;
    wire N__2243;
    wire N__2240;
    wire N__2237;
    wire N__2234;
    wire N__2233;
    wire N__2230;
    wire N__2227;
    wire N__2224;
    wire N__2221;
    wire N__2220;
    wire N__2215;
    wire N__2212;
    wire N__2209;
    wire N__2206;
    wire N__2203;
    wire N__2200;
    wire N__2197;
    wire N__2194;
    wire N__2189;
    wire N__2186;
    wire N__2183;
    wire N__2180;
    wire N__2179;
    wire N__2174;
    wire N__2173;
    wire N__2170;
    wire N__2167;
    wire N__2164;
    wire N__2161;
    wire N__2158;
    wire N__2155;
    wire N__2150;
    wire N__2147;
    wire N__2144;
    wire N__2141;
    wire N__2138;
    wire N__2135;
    wire N__2132;
    wire N__2131;
    wire N__2130;
    wire N__2127;
    wire N__2124;
    wire N__2121;
    wire N__2120;
    wire N__2117;
    wire N__2114;
    wire N__2111;
    wire N__2108;
    wire N__2099;
    wire N__2098;
    wire N__2097;
    wire N__2094;
    wire N__2091;
    wire N__2088;
    wire N__2081;
    wire N__2078;
    wire N__2075;
    wire N__2074;
    wire N__2071;
    wire N__2068;
    wire N__2067;
    wire N__2062;
    wire N__2059;
    wire N__2054;
    wire N__2053;
    wire N__2048;
    wire N__2045;
    wire N__2044;
    wire N__2041;
    wire N__2038;
    wire N__2035;
    wire N__2032;
    wire N__2027;
    wire N__2026;
    wire N__2021;
    wire N__2018;
    wire N__2015;
    wire N__2014;
    wire N__2009;
    wire N__2006;
    wire N__2003;
    wire N__2002;
    wire N__1999;
    wire N__1996;
    wire N__1991;
    wire N__1988;
    wire N__1987;
    wire N__1986;
    wire N__1983;
    wire N__1980;
    wire N__1977;
    wire N__1970;
    wire N__1967;
    wire N__1964;
    wire N__1961;
    wire N__1958;
    wire N__1955;
    wire N__1952;
    wire N__1951;
    wire N__1950;
    wire N__1949;
    wire N__1946;
    wire N__1943;
    wire N__1938;
    wire N__1931;
    wire N__1928;
    wire N__1925;
    wire N__1922;
    wire N__1919;
    wire N__1916;
    wire N__1913;
    wire N__1912;
    wire N__1909;
    wire N__1906;
    wire N__1901;
    wire N__1898;
    wire N__1897;
    wire N__1896;
    wire N__1891;
    wire N__1888;
    wire N__1885;
    wire N__1882;
    wire N__1879;
    wire N__1876;
    wire N__1873;
    wire N__1870;
    wire N__1865;
    wire N__1864;
    wire N__1859;
    wire N__1856;
    wire N__1853;
    wire N__1850;
    wire N__1849;
    wire N__1846;
    wire N__1845;
    wire N__1844;
    wire N__1843;
    wire N__1842;
    wire N__1841;
    wire N__1840;
    wire N__1839;
    wire N__1838;
    wire N__1837;
    wire N__1830;
    wire N__1825;
    wire N__1822;
    wire N__1821;
    wire N__1820;
    wire N__1819;
    wire N__1818;
    wire N__1817;
    wire N__1814;
    wire N__1813;
    wire N__1808;
    wire N__1803;
    wire N__1796;
    wire N__1793;
    wire N__1786;
    wire N__1779;
    wire N__1766;
    wire N__1765;
    wire N__1762;
    wire N__1757;
    wire N__1756;
    wire N__1753;
    wire N__1750;
    wire N__1745;
    wire N__1742;
    wire N__1739;
    wire N__1736;
    wire N__1733;
    wire N__1732;
    wire N__1731;
    wire N__1730;
    wire N__1729;
    wire N__1728;
    wire N__1727;
    wire N__1726;
    wire N__1725;
    wire N__1724;
    wire N__1723;
    wire N__1722;
    wire N__1721;
    wire N__1720;
    wire N__1719;
    wire N__1712;
    wire N__1705;
    wire N__1698;
    wire N__1689;
    wire N__1684;
    wire N__1673;
    wire N__1672;
    wire N__1667;
    wire N__1664;
    wire N__1661;
    wire N__1658;
    wire N__1655;
    wire N__1652;
    wire N__1649;
    wire N__1646;
    wire N__1645;
    wire N__1642;
    wire N__1639;
    wire N__1638;
    wire N__1635;
    wire N__1630;
    wire N__1625;
    wire N__1622;
    wire N__1619;
    wire N__1616;
    wire N__1613;
    wire N__1612;
    wire N__1607;
    wire N__1604;
    wire N__1603;
    wire N__1602;
    wire N__1599;
    wire N__1596;
    wire N__1593;
    wire N__1590;
    wire N__1587;
    wire N__1584;
    wire N__1579;
    wire N__1576;
    wire N__1573;
    wire N__1568;
    wire N__1565;
    wire N__1564;
    wire N__1561;
    wire N__1556;
    wire N__1555;
    wire N__1552;
    wire N__1549;
    wire N__1544;
    wire N__1541;
    wire N__1538;
    wire N__1535;
    wire N__1532;
    wire N__1529;
    wire N__1526;
    wire N__1523;
    wire N__1520;
    wire N__1517;
    wire N__1516;
    wire N__1513;
    wire N__1508;
    wire N__1507;
    wire N__1504;
    wire N__1501;
    wire N__1496;
    wire N__1493;
    wire N__1490;
    wire N__1487;
    wire N__1484;
    wire N__1481;
    wire N__1478;
    wire N__1477;
    wire N__1474;
    wire N__1471;
    wire N__1470;
    wire N__1467;
    wire N__1464;
    wire N__1461;
    wire N__1454;
    wire N__1451;
    wire N__1448;
    wire N__1445;
    wire N__1442;
    wire N__1439;
    wire N__1438;
    wire N__1435;
    wire N__1432;
    wire N__1429;
    wire N__1426;
    wire N__1425;
    wire N__1422;
    wire N__1419;
    wire N__1416;
    wire N__1411;
    wire N__1408;
    wire N__1403;
    wire N__1400;
    wire N__1397;
    wire N__1396;
    wire N__1393;
    wire N__1390;
    wire N__1385;
    wire N__1382;
    wire N__1379;
    wire N__1376;
    wire N__1373;
    wire N__1370;
    wire N__1367;
    wire N__1364;
    wire N__1361;
    wire N__1360;
    wire N__1355;
    wire N__1352;
    wire N__1351;
    wire N__1348;
    wire N__1345;
    wire N__1340;
    wire N__1337;
    wire N__1334;
    wire N__1331;
    wire N__1328;
    wire N__1325;
    wire N__1322;
    wire N__1319;
    wire N__1316;
    wire N__1313;
    wire N__1310;
    wire N__1307;
    wire N__1306;
    wire N__1303;
    wire N__1302;
    wire N__1299;
    wire N__1296;
    wire N__1293;
    wire N__1290;
    wire N__1283;
    wire N__1280;
    wire N__1277;
    wire N__1274;
    wire N__1271;
    wire N__1268;
    wire N__1267;
    wire N__1264;
    wire N__1261;
    wire N__1260;
    wire N__1257;
    wire N__1254;
    wire N__1251;
    wire N__1246;
    wire N__1243;
    wire N__1240;
    wire N__1237;
    wire N__1234;
    wire N__1231;
    wire N__1226;
    wire N__1223;
    wire N__1220;
    wire N__1217;
    wire N__1214;
    wire N__1211;
    wire N__1210;
    wire N__1209;
    wire N__1206;
    wire N__1203;
    wire N__1200;
    wire N__1195;
    wire N__1190;
    wire N__1187;
    wire N__1184;
    wire N__1181;
    wire N__1178;
    wire N__1175;
    wire N__1174;
    wire N__1169;
    wire N__1166;
    wire N__1165;
    wire N__1160;
    wire N__1157;
    wire N__1154;
    wire N__1151;
    wire N__1148;
    wire N__1145;
    wire N__1142;
    wire N__1141;
    wire N__1138;
    wire N__1135;
    wire N__1130;
    wire N__1129;
    wire N__1126;
    wire N__1123;
    wire N__1118;
    wire N__1117;
    wire N__1114;
    wire N__1111;
    wire N__1106;
    wire N__1105;
    wire N__1100;
    wire N__1097;
    wire N__1096;
    wire N__1091;
    wire N__1088;
    wire N__1085;
    wire N__1082;
    wire N__1079;
    wire N__1076;
    wire N__1073;
    wire N__1070;
    wire N__1069;
    wire N__1064;
    wire N__1061;
    wire N__1060;
    wire N__1057;
    wire N__1054;
    wire GNDG0;
    wire VCCG0;
    wire CS;
    wire dac_data_2;
    wire dac_data_6;
    wire dac_data_7;
    wire dac_data_0;
    wire MOSI;
    wire dac_data_14;
    wire dac_data_11;
    wire dac_data_1;
    wire dac_data_4;
    wire dac_data_15;
    wire dac_data_9;
    wire n22;
    wire n24_cascade_;
    wire n23;
    wire n18;
    wire n17;
    wire n30_cascade_;
    wire SCLK_N_84_cascade_;
    wire DATA_11_;
    wire dac_buf_11;
    wire DATA_14_;
    wire dac_buf_12;
    wire dac_buf_13;
    wire DATA_15_;
    wire dac_buf_14;
    wire DATA_9_;
    wire DATA_4_;
    wire dac_buf_8;
    wire dac_buf_9;
    wire dac_buf_10;
    wire DATA_7_;
    wire dac_buf_7;
    wire DATA_6_;
    wire dac_buf_6;
    wire DATA_0_;
    wire dac_buf_15;
    wire dac_buf_4;
    wire dac_buf_5;
    wire n473;
    wire n21;
    wire n520_cascade_;
    wire n360_cascade_;
    wire n498_cascade_;
    wire DATA_12_;
    wire dac_data_12;
    wire DATA_10_;
    wire dac_data_10;
    wire dac_data_3;
    wire dac_data_8;
    wire DATA_8_;
    wire n20_cascade_;
    wire n26;
    wire SCLK_N_84;
    wire n477_cascade_;
    wire SCLK;
    wire DATA_13_;
    wire dac_data_13;
    wire n14;
    wire n268;
    wire DATA_5_;
    wire n498;
    wire dac_data_5;
    wire DATA_3_;
    wire dac_buf_3;
    wire DATA_2_;
    wire dac_buf_2;
    wire DATA_1_;
    wire dac_buf_0;
    wire dac_buf_1;
    wire n554;
    wire n693;
    wire n520;
    wire n688;
    wire n946;
    wire bit_cnt_3;
    wire bit_cnt_2;
    wire bit_cnt_1;
    wire dac_state_2_N_72_2;
    wire n534;
    wire dac_state_2;
    wire dac_state_1;
    wire dac_state_0;
    wire bit_cnt_0;
    wire _gnd_net_;
    wire CLK;
    wire n481;
    wire n691;

    IO_PAD ipInertedIOPad_DATA_3_iopad (
            .OE(N__3105),
            .DIN(N__3104),
            .DOUT(N__3103),
            .PACKAGEPIN(DATA[3]));
    defparam ipInertedIOPad_DATA_3_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_3_preio (
            .PADOEN(N__3105),
            .PADOUT(N__3104),
            .PADIN(N__3103),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_3_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_8_iopad (
            .OE(N__3096),
            .DIN(N__3095),
            .DOUT(N__3094),
            .PACKAGEPIN(DATA[8]));
    defparam ipInertedIOPad_DATA_8_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_8_preio (
            .PADOEN(N__3096),
            .PADOUT(N__3095),
            .PADIN(N__3094),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_8_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_4_iopad (
            .OE(N__3087),
            .DIN(N__3086),
            .DOUT(N__3085),
            .PACKAGEPIN(DATA[4]));
    defparam ipInertedIOPad_DATA_4_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_4_preio (
            .PADOEN(N__3087),
            .PADOUT(N__3086),
            .PADIN(N__3085),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_4_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_15_iopad (
            .OE(N__3078),
            .DIN(N__3077),
            .DOUT(N__3076),
            .PACKAGEPIN(DATA[15]));
    defparam ipInertedIOPad_DATA_15_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_15_preio (
            .PADOEN(N__3078),
            .PADOUT(N__3077),
            .PADIN(N__3076),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_15_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_11_iopad (
            .OE(N__3069),
            .DIN(N__3068),
            .DOUT(N__3067),
            .PACKAGEPIN(DATA[11]));
    defparam ipInertedIOPad_DATA_11_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_11_preio (
            .PADOEN(N__3069),
            .PADOUT(N__3068),
            .PADIN(N__3067),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_11_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_0_iopad (
            .OE(N__3060),
            .DIN(N__3059),
            .DOUT(N__3058),
            .PACKAGEPIN(DATA[0]));
    defparam ipInertedIOPad_DATA_0_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_0_preio (
            .PADOEN(N__3060),
            .PADOUT(N__3059),
            .PADIN(N__3058),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_0_),
            .DIN1());
    IO_PAD ipInertedIOPad_CS_iopad (
            .OE(N__3051),
            .DIN(N__3050),
            .DOUT(N__3049),
            .PACKAGEPIN(CS));
    defparam ipInertedIOPad_CS_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_CS_preio (
            .PADOEN(N__3051),
            .PADOUT(N__3050),
            .PADIN(N__3049),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1088),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_9_iopad (
            .OE(N__3042),
            .DIN(N__3041),
            .DOUT(N__3040),
            .PACKAGEPIN(DATA[9]));
    defparam ipInertedIOPad_DATA_9_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_9_preio (
            .PADOEN(N__3042),
            .PADOUT(N__3041),
            .PADIN(N__3040),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_9_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_5_iopad (
            .OE(N__3033),
            .DIN(N__3032),
            .DOUT(N__3031),
            .PACKAGEPIN(DATA[5]));
    defparam ipInertedIOPad_DATA_5_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_5_preio (
            .PADOEN(N__3033),
            .PADOUT(N__3032),
            .PADIN(N__3031),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_5_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_14_iopad (
            .OE(N__3024),
            .DIN(N__3023),
            .DOUT(N__3022),
            .PACKAGEPIN(DATA[14]));
    defparam ipInertedIOPad_DATA_14_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_14_preio (
            .PADOEN(N__3024),
            .PADOUT(N__3023),
            .PADIN(N__3022),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_14_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_10_iopad (
            .OE(N__3015),
            .DIN(N__3014),
            .DOUT(N__3013),
            .PACKAGEPIN(DATA[10]));
    defparam ipInertedIOPad_DATA_10_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_10_preio (
            .PADOEN(N__3015),
            .PADOUT(N__3014),
            .PADIN(N__3013),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_10_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_1_iopad (
            .OE(N__3006),
            .DIN(N__3005),
            .DOUT(N__3004),
            .PACKAGEPIN(DATA[1]));
    defparam ipInertedIOPad_DATA_1_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_1_preio (
            .PADOEN(N__3006),
            .PADOUT(N__3005),
            .PADIN(N__3004),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_1_),
            .DIN1());
    IO_PAD ipInertedIOPad_SCLK_iopad (
            .OE(N__2997),
            .DIN(N__2996),
            .DOUT(N__2995),
            .PACKAGEPIN(SCLK));
    defparam ipInertedIOPad_SCLK_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_SCLK_preio (
            .PADOEN(N__2997),
            .PADOUT(N__2996),
            .PADIN(N__2995),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1928),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_MOSI_iopad (
            .OE(N__2988),
            .DIN(N__2987),
            .DOUT(N__2986),
            .PACKAGEPIN(MOSI));
    defparam ipInertedIOPad_MOSI_preio.PIN_TYPE=6'b011001;
    PRE_IO ipInertedIOPad_MOSI_preio (
            .PADOEN(N__2988),
            .PADOUT(N__2987),
            .PADIN(N__2986),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(N__1157),
            .DOUT1(),
            .DIN0(),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_6_iopad (
            .OE(N__2979),
            .DIN(N__2978),
            .DOUT(N__2977),
            .PACKAGEPIN(DATA[6]));
    defparam ipInertedIOPad_DATA_6_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_6_preio (
            .PADOEN(N__2979),
            .PADOUT(N__2978),
            .PADIN(N__2977),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_6_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_2_iopad (
            .OE(N__2970),
            .DIN(N__2969),
            .DOUT(N__2968),
            .PACKAGEPIN(DATA[2]));
    defparam ipInertedIOPad_DATA_2_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_2_preio (
            .PADOEN(N__2970),
            .PADOUT(N__2969),
            .PADIN(N__2968),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_2_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_13_iopad (
            .OE(N__2961),
            .DIN(N__2960),
            .DOUT(N__2959),
            .PACKAGEPIN(DATA[13]));
    defparam ipInertedIOPad_DATA_13_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_13_preio (
            .PADOEN(N__2961),
            .PADOUT(N__2960),
            .PADIN(N__2959),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_13_),
            .DIN1());
    IO_PAD ipInertedIOPad_CLK_iopad (
            .OE(N__2952),
            .DIN(N__2951),
            .DOUT(N__2950),
            .PACKAGEPIN(CLK));
    defparam ipInertedIOPad_CLK_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_CLK_preio (
            .PADOEN(N__2952),
            .PADOUT(N__2951),
            .PADIN(N__2950),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(CLK),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_7_iopad (
            .OE(N__2943),
            .DIN(N__2942),
            .DOUT(N__2941),
            .PACKAGEPIN(DATA[7]));
    defparam ipInertedIOPad_DATA_7_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_7_preio (
            .PADOEN(N__2943),
            .PADOUT(N__2942),
            .PADIN(N__2941),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_7_),
            .DIN1());
    IO_PAD ipInertedIOPad_DATA_12_iopad (
            .OE(N__2934),
            .DIN(N__2933),
            .DOUT(N__2932),
            .PACKAGEPIN(DATA[12]));
    defparam ipInertedIOPad_DATA_12_preio.PIN_TYPE=6'b000001;
    PRE_IO ipInertedIOPad_DATA_12_preio (
            .PADOEN(N__2934),
            .PADOUT(N__2933),
            .PADIN(N__2932),
            .LATCHINPUTVALUE(),
            .CLOCKENABLE(),
            .INPUTCLK(),
            .OUTPUTCLK(),
            .OUTPUTENABLE(),
            .DOUT0(),
            .DOUT1(),
            .DIN0(DATA_12_),
            .DIN1());
    SRMux I__711 (
            .O(N__2915),
            .I(N__2912));
    LocalMux I__710 (
            .O(N__2912),
            .I(N__2909));
    Odrv4 I__709 (
            .O(N__2909),
            .I(n688));
    InMux I__708 (
            .O(N__2906),
            .I(N__2903));
    LocalMux I__707 (
            .O(N__2903),
            .I(N__2900));
    Odrv12 I__706 (
            .O(N__2900),
            .I(n946));
    InMux I__705 (
            .O(N__2897),
            .I(N__2893));
    InMux I__704 (
            .O(N__2896),
            .I(N__2889));
    LocalMux I__703 (
            .O(N__2893),
            .I(N__2886));
    InMux I__702 (
            .O(N__2892),
            .I(N__2883));
    LocalMux I__701 (
            .O(N__2889),
            .I(bit_cnt_3));
    Odrv4 I__700 (
            .O(N__2886),
            .I(bit_cnt_3));
    LocalMux I__699 (
            .O(N__2883),
            .I(bit_cnt_3));
    CascadeMux I__698 (
            .O(N__2876),
            .I(N__2873));
    InMux I__697 (
            .O(N__2873),
            .I(N__2869));
    CascadeMux I__696 (
            .O(N__2872),
            .I(N__2864));
    LocalMux I__695 (
            .O(N__2869),
            .I(N__2861));
    InMux I__694 (
            .O(N__2868),
            .I(N__2856));
    InMux I__693 (
            .O(N__2867),
            .I(N__2856));
    InMux I__692 (
            .O(N__2864),
            .I(N__2853));
    Odrv4 I__691 (
            .O(N__2861),
            .I(bit_cnt_2));
    LocalMux I__690 (
            .O(N__2856),
            .I(bit_cnt_2));
    LocalMux I__689 (
            .O(N__2853),
            .I(bit_cnt_2));
    InMux I__688 (
            .O(N__2846),
            .I(N__2843));
    LocalMux I__687 (
            .O(N__2843),
            .I(N__2836));
    InMux I__686 (
            .O(N__2842),
            .I(N__2829));
    InMux I__685 (
            .O(N__2841),
            .I(N__2829));
    InMux I__684 (
            .O(N__2840),
            .I(N__2829));
    InMux I__683 (
            .O(N__2839),
            .I(N__2826));
    Odrv4 I__682 (
            .O(N__2836),
            .I(bit_cnt_1));
    LocalMux I__681 (
            .O(N__2829),
            .I(bit_cnt_1));
    LocalMux I__680 (
            .O(N__2826),
            .I(bit_cnt_1));
    InMux I__679 (
            .O(N__2819),
            .I(N__2816));
    LocalMux I__678 (
            .O(N__2816),
            .I(N__2813));
    Odrv4 I__677 (
            .O(N__2813),
            .I(dac_state_2_N_72_2));
    CEMux I__676 (
            .O(N__2810),
            .I(N__2807));
    LocalMux I__675 (
            .O(N__2807),
            .I(N__2804));
    Span4Mux_v I__674 (
            .O(N__2804),
            .I(N__2801));
    Odrv4 I__673 (
            .O(N__2801),
            .I(n534));
    CascadeMux I__672 (
            .O(N__2798),
            .I(N__2795));
    InMux I__671 (
            .O(N__2795),
            .I(N__2788));
    CascadeMux I__670 (
            .O(N__2794),
            .I(N__2782));
    InMux I__669 (
            .O(N__2793),
            .I(N__2779));
    InMux I__668 (
            .O(N__2792),
            .I(N__2775));
    SRMux I__667 (
            .O(N__2791),
            .I(N__2772));
    LocalMux I__666 (
            .O(N__2788),
            .I(N__2769));
    InMux I__665 (
            .O(N__2787),
            .I(N__2764));
    InMux I__664 (
            .O(N__2786),
            .I(N__2764));
    InMux I__663 (
            .O(N__2785),
            .I(N__2761));
    InMux I__662 (
            .O(N__2782),
            .I(N__2757));
    LocalMux I__661 (
            .O(N__2779),
            .I(N__2754));
    CascadeMux I__660 (
            .O(N__2778),
            .I(N__2749));
    LocalMux I__659 (
            .O(N__2775),
            .I(N__2744));
    LocalMux I__658 (
            .O(N__2772),
            .I(N__2735));
    Span4Mux_h I__657 (
            .O(N__2769),
            .I(N__2735));
    LocalMux I__656 (
            .O(N__2764),
            .I(N__2735));
    LocalMux I__655 (
            .O(N__2761),
            .I(N__2735));
    InMux I__654 (
            .O(N__2760),
            .I(N__2732));
    LocalMux I__653 (
            .O(N__2757),
            .I(N__2727));
    Span4Mux_h I__652 (
            .O(N__2754),
            .I(N__2727));
    InMux I__651 (
            .O(N__2753),
            .I(N__2720));
    InMux I__650 (
            .O(N__2752),
            .I(N__2720));
    InMux I__649 (
            .O(N__2749),
            .I(N__2720));
    InMux I__648 (
            .O(N__2748),
            .I(N__2715));
    InMux I__647 (
            .O(N__2747),
            .I(N__2715));
    Odrv4 I__646 (
            .O(N__2744),
            .I(dac_state_2));
    Odrv4 I__645 (
            .O(N__2735),
            .I(dac_state_2));
    LocalMux I__644 (
            .O(N__2732),
            .I(dac_state_2));
    Odrv4 I__643 (
            .O(N__2727),
            .I(dac_state_2));
    LocalMux I__642 (
            .O(N__2720),
            .I(dac_state_2));
    LocalMux I__641 (
            .O(N__2715),
            .I(dac_state_2));
    InMux I__640 (
            .O(N__2702),
            .I(N__2667));
    InMux I__639 (
            .O(N__2701),
            .I(N__2667));
    InMux I__638 (
            .O(N__2700),
            .I(N__2667));
    InMux I__637 (
            .O(N__2699),
            .I(N__2667));
    InMux I__636 (
            .O(N__2698),
            .I(N__2667));
    InMux I__635 (
            .O(N__2697),
            .I(N__2667));
    InMux I__634 (
            .O(N__2696),
            .I(N__2667));
    InMux I__633 (
            .O(N__2695),
            .I(N__2667));
    InMux I__632 (
            .O(N__2694),
            .I(N__2660));
    InMux I__631 (
            .O(N__2693),
            .I(N__2660));
    InMux I__630 (
            .O(N__2692),
            .I(N__2660));
    InMux I__629 (
            .O(N__2691),
            .I(N__2649));
    InMux I__628 (
            .O(N__2690),
            .I(N__2649));
    InMux I__627 (
            .O(N__2689),
            .I(N__2649));
    InMux I__626 (
            .O(N__2688),
            .I(N__2649));
    InMux I__625 (
            .O(N__2687),
            .I(N__2649));
    InMux I__624 (
            .O(N__2686),
            .I(N__2646));
    InMux I__623 (
            .O(N__2685),
            .I(N__2636));
    InMux I__622 (
            .O(N__2684),
            .I(N__2633));
    LocalMux I__621 (
            .O(N__2667),
            .I(N__2625));
    LocalMux I__620 (
            .O(N__2660),
            .I(N__2625));
    LocalMux I__619 (
            .O(N__2649),
            .I(N__2625));
    LocalMux I__618 (
            .O(N__2646),
            .I(N__2622));
    InMux I__617 (
            .O(N__2645),
            .I(N__2614));
    InMux I__616 (
            .O(N__2644),
            .I(N__2614));
    InMux I__615 (
            .O(N__2643),
            .I(N__2614));
    InMux I__614 (
            .O(N__2642),
            .I(N__2611));
    InMux I__613 (
            .O(N__2641),
            .I(N__2604));
    InMux I__612 (
            .O(N__2640),
            .I(N__2604));
    InMux I__611 (
            .O(N__2639),
            .I(N__2604));
    LocalMux I__610 (
            .O(N__2636),
            .I(N__2599));
    LocalMux I__609 (
            .O(N__2633),
            .I(N__2599));
    InMux I__608 (
            .O(N__2632),
            .I(N__2595));
    Span4Mux_v I__607 (
            .O(N__2625),
            .I(N__2590));
    Span4Mux_v I__606 (
            .O(N__2622),
            .I(N__2590));
    InMux I__605 (
            .O(N__2621),
            .I(N__2587));
    LocalMux I__604 (
            .O(N__2614),
            .I(N__2584));
    LocalMux I__603 (
            .O(N__2611),
            .I(N__2579));
    LocalMux I__602 (
            .O(N__2604),
            .I(N__2579));
    Span4Mux_h I__601 (
            .O(N__2599),
            .I(N__2576));
    InMux I__600 (
            .O(N__2598),
            .I(N__2573));
    LocalMux I__599 (
            .O(N__2595),
            .I(dac_state_1));
    Odrv4 I__598 (
            .O(N__2590),
            .I(dac_state_1));
    LocalMux I__597 (
            .O(N__2587),
            .I(dac_state_1));
    Odrv12 I__596 (
            .O(N__2584),
            .I(dac_state_1));
    Odrv4 I__595 (
            .O(N__2579),
            .I(dac_state_1));
    Odrv4 I__594 (
            .O(N__2576),
            .I(dac_state_1));
    LocalMux I__593 (
            .O(N__2573),
            .I(dac_state_1));
    InMux I__592 (
            .O(N__2558),
            .I(N__2554));
    InMux I__591 (
            .O(N__2557),
            .I(N__2546));
    LocalMux I__590 (
            .O(N__2554),
            .I(N__2539));
    InMux I__589 (
            .O(N__2553),
            .I(N__2536));
    InMux I__588 (
            .O(N__2552),
            .I(N__2531));
    InMux I__587 (
            .O(N__2551),
            .I(N__2531));
    InMux I__586 (
            .O(N__2550),
            .I(N__2523));
    InMux I__585 (
            .O(N__2549),
            .I(N__2523));
    LocalMux I__584 (
            .O(N__2546),
            .I(N__2520));
    InMux I__583 (
            .O(N__2545),
            .I(N__2515));
    InMux I__582 (
            .O(N__2544),
            .I(N__2512));
    InMux I__581 (
            .O(N__2543),
            .I(N__2509));
    InMux I__580 (
            .O(N__2542),
            .I(N__2506));
    Span4Mux_v I__579 (
            .O(N__2539),
            .I(N__2499));
    LocalMux I__578 (
            .O(N__2536),
            .I(N__2499));
    LocalMux I__577 (
            .O(N__2531),
            .I(N__2499));
    InMux I__576 (
            .O(N__2530),
            .I(N__2494));
    InMux I__575 (
            .O(N__2529),
            .I(N__2494));
    InMux I__574 (
            .O(N__2528),
            .I(N__2491));
    LocalMux I__573 (
            .O(N__2523),
            .I(N__2486));
    Span4Mux_h I__572 (
            .O(N__2520),
            .I(N__2486));
    InMux I__571 (
            .O(N__2519),
            .I(N__2481));
    InMux I__570 (
            .O(N__2518),
            .I(N__2481));
    LocalMux I__569 (
            .O(N__2515),
            .I(dac_state_0));
    LocalMux I__568 (
            .O(N__2512),
            .I(dac_state_0));
    LocalMux I__567 (
            .O(N__2509),
            .I(dac_state_0));
    LocalMux I__566 (
            .O(N__2506),
            .I(dac_state_0));
    Odrv4 I__565 (
            .O(N__2499),
            .I(dac_state_0));
    LocalMux I__564 (
            .O(N__2494),
            .I(dac_state_0));
    LocalMux I__563 (
            .O(N__2491),
            .I(dac_state_0));
    Odrv4 I__562 (
            .O(N__2486),
            .I(dac_state_0));
    LocalMux I__561 (
            .O(N__2481),
            .I(dac_state_0));
    InMux I__560 (
            .O(N__2462),
            .I(N__2456));
    CascadeMux I__559 (
            .O(N__2461),
            .I(N__2453));
    CascadeMux I__558 (
            .O(N__2460),
            .I(N__2450));
    InMux I__557 (
            .O(N__2459),
            .I(N__2445));
    LocalMux I__556 (
            .O(N__2456),
            .I(N__2442));
    InMux I__555 (
            .O(N__2453),
            .I(N__2435));
    InMux I__554 (
            .O(N__2450),
            .I(N__2435));
    InMux I__553 (
            .O(N__2449),
            .I(N__2435));
    InMux I__552 (
            .O(N__2448),
            .I(N__2432));
    LocalMux I__551 (
            .O(N__2445),
            .I(N__2429));
    Odrv4 I__550 (
            .O(N__2442),
            .I(bit_cnt_0));
    LocalMux I__549 (
            .O(N__2435),
            .I(bit_cnt_0));
    LocalMux I__548 (
            .O(N__2432),
            .I(bit_cnt_0));
    Odrv4 I__547 (
            .O(N__2429),
            .I(bit_cnt_0));
    ClkMux I__546 (
            .O(N__2420),
            .I(N__2412));
    ClkMux I__545 (
            .O(N__2419),
            .I(N__2409));
    ClkMux I__544 (
            .O(N__2418),
            .I(N__2406));
    ClkMux I__543 (
            .O(N__2417),
            .I(N__2403));
    ClkMux I__542 (
            .O(N__2416),
            .I(N__2400));
    ClkMux I__541 (
            .O(N__2415),
            .I(N__2396));
    LocalMux I__540 (
            .O(N__2412),
            .I(N__2389));
    LocalMux I__539 (
            .O(N__2409),
            .I(N__2380));
    LocalMux I__538 (
            .O(N__2406),
            .I(N__2380));
    LocalMux I__537 (
            .O(N__2403),
            .I(N__2380));
    LocalMux I__536 (
            .O(N__2400),
            .I(N__2380));
    ClkMux I__535 (
            .O(N__2399),
            .I(N__2377));
    LocalMux I__534 (
            .O(N__2396),
            .I(N__2372));
    ClkMux I__533 (
            .O(N__2395),
            .I(N__2369));
    ClkMux I__532 (
            .O(N__2394),
            .I(N__2366));
    ClkMux I__531 (
            .O(N__2393),
            .I(N__2363));
    ClkMux I__530 (
            .O(N__2392),
            .I(N__2360));
    Span4Mux_h I__529 (
            .O(N__2389),
            .I(N__2355));
    Span4Mux_v I__528 (
            .O(N__2380),
            .I(N__2355));
    LocalMux I__527 (
            .O(N__2377),
            .I(N__2352));
    ClkMux I__526 (
            .O(N__2376),
            .I(N__2349));
    ClkMux I__525 (
            .O(N__2375),
            .I(N__2345));
    Span4Mux_h I__524 (
            .O(N__2372),
            .I(N__2334));
    LocalMux I__523 (
            .O(N__2369),
            .I(N__2334));
    LocalMux I__522 (
            .O(N__2366),
            .I(N__2334));
    LocalMux I__521 (
            .O(N__2363),
            .I(N__2334));
    LocalMux I__520 (
            .O(N__2360),
            .I(N__2334));
    Span4Mux_v I__519 (
            .O(N__2355),
            .I(N__2327));
    Span4Mux_h I__518 (
            .O(N__2352),
            .I(N__2327));
    LocalMux I__517 (
            .O(N__2349),
            .I(N__2327));
    ClkMux I__516 (
            .O(N__2348),
            .I(N__2324));
    LocalMux I__515 (
            .O(N__2345),
            .I(N__2321));
    Span4Mux_v I__514 (
            .O(N__2334),
            .I(N__2314));
    Span4Mux_h I__513 (
            .O(N__2327),
            .I(N__2314));
    LocalMux I__512 (
            .O(N__2324),
            .I(N__2314));
    Span4Mux_v I__511 (
            .O(N__2321),
            .I(N__2311));
    Span4Mux_v I__510 (
            .O(N__2314),
            .I(N__2308));
    Sp12to4 I__509 (
            .O(N__2311),
            .I(N__2305));
    Span4Mux_h I__508 (
            .O(N__2308),
            .I(N__2302));
    Span12Mux_v I__507 (
            .O(N__2305),
            .I(N__2299));
    Span4Mux_v I__506 (
            .O(N__2302),
            .I(N__2296));
    Odrv12 I__505 (
            .O(N__2299),
            .I(CLK));
    Odrv4 I__504 (
            .O(N__2296),
            .I(CLK));
    CEMux I__503 (
            .O(N__2291),
            .I(N__2288));
    LocalMux I__502 (
            .O(N__2288),
            .I(n481));
    SRMux I__501 (
            .O(N__2285),
            .I(N__2281));
    SRMux I__500 (
            .O(N__2284),
            .I(N__2278));
    LocalMux I__499 (
            .O(N__2281),
            .I(N__2275));
    LocalMux I__498 (
            .O(N__2278),
            .I(N__2272));
    Odrv12 I__497 (
            .O(N__2275),
            .I(n691));
    Odrv12 I__496 (
            .O(N__2272),
            .I(n691));
    CascadeMux I__495 (
            .O(N__2267),
            .I(N__2264));
    InMux I__494 (
            .O(N__2264),
            .I(N__2257));
    InMux I__493 (
            .O(N__2263),
            .I(N__2257));
    InMux I__492 (
            .O(N__2262),
            .I(N__2254));
    LocalMux I__491 (
            .O(N__2257),
            .I(N__2249));
    LocalMux I__490 (
            .O(N__2254),
            .I(N__2249));
    Span12Mux_v I__489 (
            .O(N__2249),
            .I(N__2246));
    Odrv12 I__488 (
            .O(N__2246),
            .I(DATA_3_));
    CascadeMux I__487 (
            .O(N__2243),
            .I(N__2240));
    InMux I__486 (
            .O(N__2240),
            .I(N__2237));
    LocalMux I__485 (
            .O(N__2237),
            .I(dac_buf_3));
    CascadeMux I__484 (
            .O(N__2234),
            .I(N__2230));
    CascadeMux I__483 (
            .O(N__2233),
            .I(N__2227));
    InMux I__482 (
            .O(N__2230),
            .I(N__2224));
    InMux I__481 (
            .O(N__2227),
            .I(N__2221));
    LocalMux I__480 (
            .O(N__2224),
            .I(N__2215));
    LocalMux I__479 (
            .O(N__2221),
            .I(N__2215));
    InMux I__478 (
            .O(N__2220),
            .I(N__2212));
    Span4Mux_v I__477 (
            .O(N__2215),
            .I(N__2209));
    LocalMux I__476 (
            .O(N__2212),
            .I(N__2206));
    Span4Mux_v I__475 (
            .O(N__2209),
            .I(N__2203));
    Span4Mux_h I__474 (
            .O(N__2206),
            .I(N__2200));
    Sp12to4 I__473 (
            .O(N__2203),
            .I(N__2197));
    Span4Mux_v I__472 (
            .O(N__2200),
            .I(N__2194));
    Odrv12 I__471 (
            .O(N__2197),
            .I(DATA_2_));
    Odrv4 I__470 (
            .O(N__2194),
            .I(DATA_2_));
    InMux I__469 (
            .O(N__2189),
            .I(N__2186));
    LocalMux I__468 (
            .O(N__2186),
            .I(dac_buf_2));
    CascadeMux I__467 (
            .O(N__2183),
            .I(N__2180));
    InMux I__466 (
            .O(N__2180),
            .I(N__2174));
    InMux I__465 (
            .O(N__2179),
            .I(N__2174));
    LocalMux I__464 (
            .O(N__2174),
            .I(N__2170));
    InMux I__463 (
            .O(N__2173),
            .I(N__2167));
    Span4Mux_v I__462 (
            .O(N__2170),
            .I(N__2164));
    LocalMux I__461 (
            .O(N__2167),
            .I(N__2161));
    Span4Mux_h I__460 (
            .O(N__2164),
            .I(N__2158));
    Span4Mux_v I__459 (
            .O(N__2161),
            .I(N__2155));
    Span4Mux_v I__458 (
            .O(N__2158),
            .I(N__2150));
    Span4Mux_h I__457 (
            .O(N__2155),
            .I(N__2150));
    Odrv4 I__456 (
            .O(N__2150),
            .I(DATA_1_));
    InMux I__455 (
            .O(N__2147),
            .I(N__2144));
    LocalMux I__454 (
            .O(N__2144),
            .I(dac_buf_0));
    InMux I__453 (
            .O(N__2141),
            .I(N__2138));
    LocalMux I__452 (
            .O(N__2138),
            .I(dac_buf_1));
    CEMux I__451 (
            .O(N__2135),
            .I(N__2132));
    LocalMux I__450 (
            .O(N__2132),
            .I(N__2127));
    CEMux I__449 (
            .O(N__2131),
            .I(N__2124));
    CEMux I__448 (
            .O(N__2130),
            .I(N__2121));
    Span4Mux_h I__447 (
            .O(N__2127),
            .I(N__2117));
    LocalMux I__446 (
            .O(N__2124),
            .I(N__2114));
    LocalMux I__445 (
            .O(N__2121),
            .I(N__2111));
    InMux I__444 (
            .O(N__2120),
            .I(N__2108));
    Odrv4 I__443 (
            .O(N__2117),
            .I(n554));
    Odrv12 I__442 (
            .O(N__2114),
            .I(n554));
    Odrv4 I__441 (
            .O(N__2111),
            .I(n554));
    LocalMux I__440 (
            .O(N__2108),
            .I(n554));
    SRMux I__439 (
            .O(N__2099),
            .I(N__2094));
    SRMux I__438 (
            .O(N__2098),
            .I(N__2091));
    SRMux I__437 (
            .O(N__2097),
            .I(N__2088));
    LocalMux I__436 (
            .O(N__2094),
            .I(n693));
    LocalMux I__435 (
            .O(N__2091),
            .I(n693));
    LocalMux I__434 (
            .O(N__2088),
            .I(n693));
    CEMux I__433 (
            .O(N__2081),
            .I(N__2078));
    LocalMux I__432 (
            .O(N__2078),
            .I(N__2075));
    Span4Mux_v I__431 (
            .O(N__2075),
            .I(N__2071));
    CEMux I__430 (
            .O(N__2074),
            .I(N__2068));
    Span4Mux_v I__429 (
            .O(N__2071),
            .I(N__2062));
    LocalMux I__428 (
            .O(N__2068),
            .I(N__2062));
    InMux I__427 (
            .O(N__2067),
            .I(N__2059));
    Odrv4 I__426 (
            .O(N__2062),
            .I(n520));
    LocalMux I__425 (
            .O(N__2059),
            .I(n520));
    InMux I__424 (
            .O(N__2054),
            .I(N__2048));
    InMux I__423 (
            .O(N__2053),
            .I(N__2048));
    LocalMux I__422 (
            .O(N__2048),
            .I(N__2045));
    Span4Mux_v I__421 (
            .O(N__2045),
            .I(N__2041));
    InMux I__420 (
            .O(N__2044),
            .I(N__2038));
    Span4Mux_h I__419 (
            .O(N__2041),
            .I(N__2035));
    LocalMux I__418 (
            .O(N__2038),
            .I(N__2032));
    Odrv4 I__417 (
            .O(N__2035),
            .I(DATA_10_));
    Odrv12 I__416 (
            .O(N__2032),
            .I(DATA_10_));
    InMux I__415 (
            .O(N__2027),
            .I(N__2021));
    InMux I__414 (
            .O(N__2026),
            .I(N__2021));
    LocalMux I__413 (
            .O(N__2021),
            .I(dac_data_10));
    CascadeMux I__412 (
            .O(N__2018),
            .I(N__2015));
    InMux I__411 (
            .O(N__2015),
            .I(N__2009));
    InMux I__410 (
            .O(N__2014),
            .I(N__2009));
    LocalMux I__409 (
            .O(N__2009),
            .I(dac_data_3));
    CascadeMux I__408 (
            .O(N__2006),
            .I(N__2003));
    InMux I__407 (
            .O(N__2003),
            .I(N__1999));
    InMux I__406 (
            .O(N__2002),
            .I(N__1996));
    LocalMux I__405 (
            .O(N__1999),
            .I(dac_data_8));
    LocalMux I__404 (
            .O(N__1996),
            .I(dac_data_8));
    InMux I__403 (
            .O(N__1991),
            .I(N__1988));
    LocalMux I__402 (
            .O(N__1988),
            .I(N__1983));
    InMux I__401 (
            .O(N__1987),
            .I(N__1980));
    InMux I__400 (
            .O(N__1986),
            .I(N__1977));
    Sp12to4 I__399 (
            .O(N__1983),
            .I(N__1970));
    LocalMux I__398 (
            .O(N__1980),
            .I(N__1970));
    LocalMux I__397 (
            .O(N__1977),
            .I(N__1970));
    Span12Mux_v I__396 (
            .O(N__1970),
            .I(N__1967));
    Odrv12 I__395 (
            .O(N__1967),
            .I(DATA_8_));
    CascadeMux I__394 (
            .O(N__1964),
            .I(n20_cascade_));
    InMux I__393 (
            .O(N__1961),
            .I(N__1958));
    LocalMux I__392 (
            .O(N__1958),
            .I(n26));
    InMux I__391 (
            .O(N__1955),
            .I(N__1952));
    LocalMux I__390 (
            .O(N__1952),
            .I(N__1946));
    InMux I__389 (
            .O(N__1951),
            .I(N__1943));
    InMux I__388 (
            .O(N__1950),
            .I(N__1938));
    InMux I__387 (
            .O(N__1949),
            .I(N__1938));
    Odrv12 I__386 (
            .O(N__1946),
            .I(SCLK_N_84));
    LocalMux I__385 (
            .O(N__1943),
            .I(SCLK_N_84));
    LocalMux I__384 (
            .O(N__1938),
            .I(SCLK_N_84));
    CascadeMux I__383 (
            .O(N__1931),
            .I(n477_cascade_));
    IoInMux I__382 (
            .O(N__1928),
            .I(N__1925));
    LocalMux I__381 (
            .O(N__1925),
            .I(N__1922));
    Span4Mux_s0_h I__380 (
            .O(N__1922),
            .I(N__1919));
    Span4Mux_h I__379 (
            .O(N__1919),
            .I(N__1916));
    Sp12to4 I__378 (
            .O(N__1916),
            .I(N__1913));
    Span12Mux_v I__377 (
            .O(N__1913),
            .I(N__1909));
    InMux I__376 (
            .O(N__1912),
            .I(N__1906));
    Odrv12 I__375 (
            .O(N__1909),
            .I(SCLK));
    LocalMux I__374 (
            .O(N__1906),
            .I(SCLK));
    CascadeMux I__373 (
            .O(N__1901),
            .I(N__1898));
    InMux I__372 (
            .O(N__1898),
            .I(N__1891));
    InMux I__371 (
            .O(N__1897),
            .I(N__1891));
    InMux I__370 (
            .O(N__1896),
            .I(N__1888));
    LocalMux I__369 (
            .O(N__1891),
            .I(N__1885));
    LocalMux I__368 (
            .O(N__1888),
            .I(N__1882));
    Span4Mux_v I__367 (
            .O(N__1885),
            .I(N__1879));
    Span4Mux_v I__366 (
            .O(N__1882),
            .I(N__1876));
    Span4Mux_h I__365 (
            .O(N__1879),
            .I(N__1873));
    Span4Mux_h I__364 (
            .O(N__1876),
            .I(N__1870));
    Odrv4 I__363 (
            .O(N__1873),
            .I(DATA_13_));
    Odrv4 I__362 (
            .O(N__1870),
            .I(DATA_13_));
    InMux I__361 (
            .O(N__1865),
            .I(N__1859));
    InMux I__360 (
            .O(N__1864),
            .I(N__1859));
    LocalMux I__359 (
            .O(N__1859),
            .I(dac_data_13));
    InMux I__358 (
            .O(N__1856),
            .I(N__1853));
    LocalMux I__357 (
            .O(N__1853),
            .I(n14));
    CascadeMux I__356 (
            .O(N__1850),
            .I(N__1846));
    InMux I__355 (
            .O(N__1849),
            .I(N__1830));
    InMux I__354 (
            .O(N__1846),
            .I(N__1830));
    InMux I__353 (
            .O(N__1845),
            .I(N__1830));
    InMux I__352 (
            .O(N__1844),
            .I(N__1825));
    InMux I__351 (
            .O(N__1843),
            .I(N__1825));
    InMux I__350 (
            .O(N__1842),
            .I(N__1822));
    CascadeMux I__349 (
            .O(N__1841),
            .I(N__1814));
    InMux I__348 (
            .O(N__1840),
            .I(N__1808));
    InMux I__347 (
            .O(N__1839),
            .I(N__1808));
    InMux I__346 (
            .O(N__1838),
            .I(N__1803));
    InMux I__345 (
            .O(N__1837),
            .I(N__1803));
    LocalMux I__344 (
            .O(N__1830),
            .I(N__1796));
    LocalMux I__343 (
            .O(N__1825),
            .I(N__1796));
    LocalMux I__342 (
            .O(N__1822),
            .I(N__1796));
    InMux I__341 (
            .O(N__1821),
            .I(N__1793));
    InMux I__340 (
            .O(N__1820),
            .I(N__1786));
    InMux I__339 (
            .O(N__1819),
            .I(N__1786));
    InMux I__338 (
            .O(N__1818),
            .I(N__1786));
    InMux I__337 (
            .O(N__1817),
            .I(N__1779));
    InMux I__336 (
            .O(N__1814),
            .I(N__1779));
    InMux I__335 (
            .O(N__1813),
            .I(N__1779));
    LocalMux I__334 (
            .O(N__1808),
            .I(n268));
    LocalMux I__333 (
            .O(N__1803),
            .I(n268));
    Odrv4 I__332 (
            .O(N__1796),
            .I(n268));
    LocalMux I__331 (
            .O(N__1793),
            .I(n268));
    LocalMux I__330 (
            .O(N__1786),
            .I(n268));
    LocalMux I__329 (
            .O(N__1779),
            .I(n268));
    CascadeMux I__328 (
            .O(N__1766),
            .I(N__1762));
    InMux I__327 (
            .O(N__1765),
            .I(N__1757));
    InMux I__326 (
            .O(N__1762),
            .I(N__1757));
    LocalMux I__325 (
            .O(N__1757),
            .I(N__1753));
    InMux I__324 (
            .O(N__1756),
            .I(N__1750));
    Span4Mux_h I__323 (
            .O(N__1753),
            .I(N__1745));
    LocalMux I__322 (
            .O(N__1750),
            .I(N__1745));
    Span4Mux_v I__321 (
            .O(N__1745),
            .I(N__1742));
    Span4Mux_v I__320 (
            .O(N__1742),
            .I(N__1739));
    Span4Mux_h I__319 (
            .O(N__1739),
            .I(N__1736));
    Odrv4 I__318 (
            .O(N__1736),
            .I(DATA_5_));
    InMux I__317 (
            .O(N__1733),
            .I(N__1712));
    InMux I__316 (
            .O(N__1732),
            .I(N__1712));
    InMux I__315 (
            .O(N__1731),
            .I(N__1712));
    InMux I__314 (
            .O(N__1730),
            .I(N__1705));
    InMux I__313 (
            .O(N__1729),
            .I(N__1705));
    InMux I__312 (
            .O(N__1728),
            .I(N__1705));
    InMux I__311 (
            .O(N__1727),
            .I(N__1698));
    InMux I__310 (
            .O(N__1726),
            .I(N__1698));
    InMux I__309 (
            .O(N__1725),
            .I(N__1698));
    InMux I__308 (
            .O(N__1724),
            .I(N__1689));
    InMux I__307 (
            .O(N__1723),
            .I(N__1689));
    InMux I__306 (
            .O(N__1722),
            .I(N__1689));
    InMux I__305 (
            .O(N__1721),
            .I(N__1689));
    InMux I__304 (
            .O(N__1720),
            .I(N__1684));
    InMux I__303 (
            .O(N__1719),
            .I(N__1684));
    LocalMux I__302 (
            .O(N__1712),
            .I(n498));
    LocalMux I__301 (
            .O(N__1705),
            .I(n498));
    LocalMux I__300 (
            .O(N__1698),
            .I(n498));
    LocalMux I__299 (
            .O(N__1689),
            .I(n498));
    LocalMux I__298 (
            .O(N__1684),
            .I(n498));
    InMux I__297 (
            .O(N__1673),
            .I(N__1667));
    InMux I__296 (
            .O(N__1672),
            .I(N__1667));
    LocalMux I__295 (
            .O(N__1667),
            .I(dac_data_5));
    InMux I__294 (
            .O(N__1664),
            .I(N__1661));
    LocalMux I__293 (
            .O(N__1661),
            .I(n21));
    CascadeMux I__292 (
            .O(N__1658),
            .I(n520_cascade_));
    CascadeMux I__291 (
            .O(N__1655),
            .I(n360_cascade_));
    CascadeMux I__290 (
            .O(N__1652),
            .I(n498_cascade_));
    InMux I__289 (
            .O(N__1649),
            .I(N__1646));
    LocalMux I__288 (
            .O(N__1646),
            .I(N__1642));
    CascadeMux I__287 (
            .O(N__1645),
            .I(N__1639));
    Span4Mux_v I__286 (
            .O(N__1642),
            .I(N__1635));
    InMux I__285 (
            .O(N__1639),
            .I(N__1630));
    InMux I__284 (
            .O(N__1638),
            .I(N__1630));
    Span4Mux_h I__283 (
            .O(N__1635),
            .I(N__1625));
    LocalMux I__282 (
            .O(N__1630),
            .I(N__1625));
    Span4Mux_v I__281 (
            .O(N__1625),
            .I(N__1622));
    Span4Mux_h I__280 (
            .O(N__1622),
            .I(N__1619));
    Span4Mux_v I__279 (
            .O(N__1619),
            .I(N__1616));
    Odrv4 I__278 (
            .O(N__1616),
            .I(DATA_12_));
    InMux I__277 (
            .O(N__1613),
            .I(N__1607));
    InMux I__276 (
            .O(N__1612),
            .I(N__1607));
    LocalMux I__275 (
            .O(N__1607),
            .I(dac_data_12));
    InMux I__274 (
            .O(N__1604),
            .I(N__1599));
    CascadeMux I__273 (
            .O(N__1603),
            .I(N__1596));
    InMux I__272 (
            .O(N__1602),
            .I(N__1593));
    LocalMux I__271 (
            .O(N__1599),
            .I(N__1590));
    InMux I__270 (
            .O(N__1596),
            .I(N__1587));
    LocalMux I__269 (
            .O(N__1593),
            .I(N__1584));
    Span4Mux_h I__268 (
            .O(N__1590),
            .I(N__1579));
    LocalMux I__267 (
            .O(N__1587),
            .I(N__1579));
    Span4Mux_v I__266 (
            .O(N__1584),
            .I(N__1576));
    Span4Mux_v I__265 (
            .O(N__1579),
            .I(N__1573));
    Span4Mux_h I__264 (
            .O(N__1576),
            .I(N__1568));
    Span4Mux_h I__263 (
            .O(N__1573),
            .I(N__1568));
    Odrv4 I__262 (
            .O(N__1568),
            .I(DATA_9_));
    CascadeMux I__261 (
            .O(N__1565),
            .I(N__1561));
    InMux I__260 (
            .O(N__1564),
            .I(N__1556));
    InMux I__259 (
            .O(N__1561),
            .I(N__1556));
    LocalMux I__258 (
            .O(N__1556),
            .I(N__1552));
    InMux I__257 (
            .O(N__1555),
            .I(N__1549));
    Span4Mux_h I__256 (
            .O(N__1552),
            .I(N__1544));
    LocalMux I__255 (
            .O(N__1549),
            .I(N__1544));
    Span4Mux_v I__254 (
            .O(N__1544),
            .I(N__1541));
    Sp12to4 I__253 (
            .O(N__1541),
            .I(N__1538));
    Odrv12 I__252 (
            .O(N__1538),
            .I(DATA_4_));
    InMux I__251 (
            .O(N__1535),
            .I(N__1532));
    LocalMux I__250 (
            .O(N__1532),
            .I(dac_buf_8));
    InMux I__249 (
            .O(N__1529),
            .I(N__1526));
    LocalMux I__248 (
            .O(N__1526),
            .I(dac_buf_9));
    InMux I__247 (
            .O(N__1523),
            .I(N__1520));
    LocalMux I__246 (
            .O(N__1520),
            .I(dac_buf_10));
    CascadeMux I__245 (
            .O(N__1517),
            .I(N__1513));
    InMux I__244 (
            .O(N__1516),
            .I(N__1508));
    InMux I__243 (
            .O(N__1513),
            .I(N__1508));
    LocalMux I__242 (
            .O(N__1508),
            .I(N__1504));
    InMux I__241 (
            .O(N__1507),
            .I(N__1501));
    Span4Mux_v I__240 (
            .O(N__1504),
            .I(N__1496));
    LocalMux I__239 (
            .O(N__1501),
            .I(N__1496));
    Span4Mux_v I__238 (
            .O(N__1496),
            .I(N__1493));
    Span4Mux_h I__237 (
            .O(N__1493),
            .I(N__1490));
    Odrv4 I__236 (
            .O(N__1490),
            .I(DATA_7_));
    InMux I__235 (
            .O(N__1487),
            .I(N__1484));
    LocalMux I__234 (
            .O(N__1484),
            .I(dac_buf_7));
    CascadeMux I__233 (
            .O(N__1481),
            .I(N__1478));
    InMux I__232 (
            .O(N__1478),
            .I(N__1474));
    InMux I__231 (
            .O(N__1477),
            .I(N__1471));
    LocalMux I__230 (
            .O(N__1474),
            .I(N__1467));
    LocalMux I__229 (
            .O(N__1471),
            .I(N__1464));
    InMux I__228 (
            .O(N__1470),
            .I(N__1461));
    Span4Mux_v I__227 (
            .O(N__1467),
            .I(N__1454));
    Span4Mux_h I__226 (
            .O(N__1464),
            .I(N__1454));
    LocalMux I__225 (
            .O(N__1461),
            .I(N__1454));
    Span4Mux_v I__224 (
            .O(N__1454),
            .I(N__1451));
    Span4Mux_h I__223 (
            .O(N__1451),
            .I(N__1448));
    Odrv4 I__222 (
            .O(N__1448),
            .I(DATA_6_));
    InMux I__221 (
            .O(N__1445),
            .I(N__1442));
    LocalMux I__220 (
            .O(N__1442),
            .I(dac_buf_6));
    CascadeMux I__219 (
            .O(N__1439),
            .I(N__1435));
    CascadeMux I__218 (
            .O(N__1438),
            .I(N__1432));
    InMux I__217 (
            .O(N__1435),
            .I(N__1429));
    InMux I__216 (
            .O(N__1432),
            .I(N__1426));
    LocalMux I__215 (
            .O(N__1429),
            .I(N__1422));
    LocalMux I__214 (
            .O(N__1426),
            .I(N__1419));
    InMux I__213 (
            .O(N__1425),
            .I(N__1416));
    Span4Mux_v I__212 (
            .O(N__1422),
            .I(N__1411));
    Span4Mux_v I__211 (
            .O(N__1419),
            .I(N__1411));
    LocalMux I__210 (
            .O(N__1416),
            .I(N__1408));
    Sp12to4 I__209 (
            .O(N__1411),
            .I(N__1403));
    Sp12to4 I__208 (
            .O(N__1408),
            .I(N__1403));
    Odrv12 I__207 (
            .O(N__1403),
            .I(DATA_0_));
    InMux I__206 (
            .O(N__1400),
            .I(N__1397));
    LocalMux I__205 (
            .O(N__1397),
            .I(N__1393));
    InMux I__204 (
            .O(N__1396),
            .I(N__1390));
    Odrv4 I__203 (
            .O(N__1393),
            .I(dac_buf_15));
    LocalMux I__202 (
            .O(N__1390),
            .I(dac_buf_15));
    InMux I__201 (
            .O(N__1385),
            .I(N__1382));
    LocalMux I__200 (
            .O(N__1382),
            .I(dac_buf_4));
    InMux I__199 (
            .O(N__1379),
            .I(N__1376));
    LocalMux I__198 (
            .O(N__1376),
            .I(dac_buf_5));
    CEMux I__197 (
            .O(N__1373),
            .I(N__1370));
    LocalMux I__196 (
            .O(N__1370),
            .I(N__1367));
    Span4Mux_v I__195 (
            .O(N__1367),
            .I(N__1364));
    Odrv4 I__194 (
            .O(N__1364),
            .I(n473));
    InMux I__193 (
            .O(N__1361),
            .I(N__1355));
    InMux I__192 (
            .O(N__1360),
            .I(N__1355));
    LocalMux I__191 (
            .O(N__1355),
            .I(dac_data_15));
    InMux I__190 (
            .O(N__1352),
            .I(N__1348));
    InMux I__189 (
            .O(N__1351),
            .I(N__1345));
    LocalMux I__188 (
            .O(N__1348),
            .I(dac_data_9));
    LocalMux I__187 (
            .O(N__1345),
            .I(dac_data_9));
    InMux I__186 (
            .O(N__1340),
            .I(N__1337));
    LocalMux I__185 (
            .O(N__1337),
            .I(n22));
    CascadeMux I__184 (
            .O(N__1334),
            .I(n24_cascade_));
    InMux I__183 (
            .O(N__1331),
            .I(N__1328));
    LocalMux I__182 (
            .O(N__1328),
            .I(n23));
    InMux I__181 (
            .O(N__1325),
            .I(N__1322));
    LocalMux I__180 (
            .O(N__1322),
            .I(n18));
    InMux I__179 (
            .O(N__1319),
            .I(N__1316));
    LocalMux I__178 (
            .O(N__1316),
            .I(n17));
    CascadeMux I__177 (
            .O(N__1313),
            .I(n30_cascade_));
    CascadeMux I__176 (
            .O(N__1310),
            .I(SCLK_N_84_cascade_));
    InMux I__175 (
            .O(N__1307),
            .I(N__1303));
    CascadeMux I__174 (
            .O(N__1306),
            .I(N__1299));
    LocalMux I__173 (
            .O(N__1303),
            .I(N__1296));
    InMux I__172 (
            .O(N__1302),
            .I(N__1293));
    InMux I__171 (
            .O(N__1299),
            .I(N__1290));
    Span4Mux_h I__170 (
            .O(N__1296),
            .I(N__1283));
    LocalMux I__169 (
            .O(N__1293),
            .I(N__1283));
    LocalMux I__168 (
            .O(N__1290),
            .I(N__1283));
    Sp12to4 I__167 (
            .O(N__1283),
            .I(N__1280));
    Span12Mux_v I__166 (
            .O(N__1280),
            .I(N__1277));
    Odrv12 I__165 (
            .O(N__1277),
            .I(DATA_11_));
    InMux I__164 (
            .O(N__1274),
            .I(N__1271));
    LocalMux I__163 (
            .O(N__1271),
            .I(dac_buf_11));
    InMux I__162 (
            .O(N__1268),
            .I(N__1264));
    CascadeMux I__161 (
            .O(N__1267),
            .I(N__1261));
    LocalMux I__160 (
            .O(N__1264),
            .I(N__1257));
    InMux I__159 (
            .O(N__1261),
            .I(N__1254));
    CascadeMux I__158 (
            .O(N__1260),
            .I(N__1251));
    Span4Mux_v I__157 (
            .O(N__1257),
            .I(N__1246));
    LocalMux I__156 (
            .O(N__1254),
            .I(N__1246));
    InMux I__155 (
            .O(N__1251),
            .I(N__1243));
    Span4Mux_v I__154 (
            .O(N__1246),
            .I(N__1240));
    LocalMux I__153 (
            .O(N__1243),
            .I(N__1237));
    Span4Mux_v I__152 (
            .O(N__1240),
            .I(N__1234));
    Sp12to4 I__151 (
            .O(N__1237),
            .I(N__1231));
    Sp12to4 I__150 (
            .O(N__1234),
            .I(N__1226));
    Span12Mux_v I__149 (
            .O(N__1231),
            .I(N__1226));
    Odrv12 I__148 (
            .O(N__1226),
            .I(DATA_14_));
    InMux I__147 (
            .O(N__1223),
            .I(N__1220));
    LocalMux I__146 (
            .O(N__1220),
            .I(dac_buf_12));
    InMux I__145 (
            .O(N__1217),
            .I(N__1214));
    LocalMux I__144 (
            .O(N__1214),
            .I(dac_buf_13));
    CascadeMux I__143 (
            .O(N__1211),
            .I(N__1206));
    CascadeMux I__142 (
            .O(N__1210),
            .I(N__1203));
    InMux I__141 (
            .O(N__1209),
            .I(N__1200));
    InMux I__140 (
            .O(N__1206),
            .I(N__1195));
    InMux I__139 (
            .O(N__1203),
            .I(N__1195));
    LocalMux I__138 (
            .O(N__1200),
            .I(N__1190));
    LocalMux I__137 (
            .O(N__1195),
            .I(N__1190));
    Span4Mux_v I__136 (
            .O(N__1190),
            .I(N__1187));
    Span4Mux_h I__135 (
            .O(N__1187),
            .I(N__1184));
    Odrv4 I__134 (
            .O(N__1184),
            .I(DATA_15_));
    InMux I__133 (
            .O(N__1181),
            .I(N__1178));
    LocalMux I__132 (
            .O(N__1178),
            .I(dac_buf_14));
    InMux I__131 (
            .O(N__1175),
            .I(N__1169));
    InMux I__130 (
            .O(N__1174),
            .I(N__1169));
    LocalMux I__129 (
            .O(N__1169),
            .I(dac_data_7));
    InMux I__128 (
            .O(N__1166),
            .I(N__1160));
    InMux I__127 (
            .O(N__1165),
            .I(N__1160));
    LocalMux I__126 (
            .O(N__1160),
            .I(dac_data_0));
    IoInMux I__125 (
            .O(N__1157),
            .I(N__1154));
    LocalMux I__124 (
            .O(N__1154),
            .I(N__1151));
    IoSpan4Mux I__123 (
            .O(N__1151),
            .I(N__1148));
    Span4Mux_s3_h I__122 (
            .O(N__1148),
            .I(N__1145));
    Span4Mux_v I__121 (
            .O(N__1145),
            .I(N__1142));
    Span4Mux_v I__120 (
            .O(N__1142),
            .I(N__1138));
    InMux I__119 (
            .O(N__1141),
            .I(N__1135));
    Odrv4 I__118 (
            .O(N__1138),
            .I(MOSI));
    LocalMux I__117 (
            .O(N__1135),
            .I(MOSI));
    InMux I__116 (
            .O(N__1130),
            .I(N__1126));
    InMux I__115 (
            .O(N__1129),
            .I(N__1123));
    LocalMux I__114 (
            .O(N__1126),
            .I(dac_data_14));
    LocalMux I__113 (
            .O(N__1123),
            .I(dac_data_14));
    InMux I__112 (
            .O(N__1118),
            .I(N__1114));
    InMux I__111 (
            .O(N__1117),
            .I(N__1111));
    LocalMux I__110 (
            .O(N__1114),
            .I(dac_data_11));
    LocalMux I__109 (
            .O(N__1111),
            .I(dac_data_11));
    InMux I__108 (
            .O(N__1106),
            .I(N__1100));
    InMux I__107 (
            .O(N__1105),
            .I(N__1100));
    LocalMux I__106 (
            .O(N__1100),
            .I(dac_data_1));
    InMux I__105 (
            .O(N__1097),
            .I(N__1091));
    InMux I__104 (
            .O(N__1096),
            .I(N__1091));
    LocalMux I__103 (
            .O(N__1091),
            .I(dac_data_4));
    IoInMux I__102 (
            .O(N__1088),
            .I(N__1085));
    LocalMux I__101 (
            .O(N__1085),
            .I(N__1082));
    IoSpan4Mux I__100 (
            .O(N__1082),
            .I(N__1079));
    IoSpan4Mux I__99 (
            .O(N__1079),
            .I(N__1076));
    Span4Mux_s1_h I__98 (
            .O(N__1076),
            .I(N__1073));
    Odrv4 I__97 (
            .O(N__1073),
            .I(CS));
    InMux I__96 (
            .O(N__1070),
            .I(N__1064));
    InMux I__95 (
            .O(N__1069),
            .I(N__1064));
    LocalMux I__94 (
            .O(N__1064),
            .I(dac_data_2));
    InMux I__93 (
            .O(N__1061),
            .I(N__1057));
    InMux I__92 (
            .O(N__1060),
            .I(N__1054));
    LocalMux I__91 (
            .O(N__1057),
            .I(dac_data_6));
    LocalMux I__90 (
            .O(N__1054),
            .I(dac_data_6));
    GND GND (
            .Y(GNDG0));
    VCC VCC (
            .Y(VCCG0));
    GND GND_Inst (
            .Y(_gnd_net_));
    defparam CS_32_LC_1_5_2.C_ON=1'b0;
    defparam CS_32_LC_1_5_2.SEQ_MODE=4'b1000;
    defparam CS_32_LC_1_5_2.LUT_INIT=16'b0001000000011111;
    LogicCell40 CS_32_LC_1_5_2 (
            .in0(N__2544),
            .in1(N__2686),
            .in2(N__2798),
            .in3(N__1955),
            .lcout(CS),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2348),
            .ce(N__1373),
            .sr(_gnd_net_));
    defparam dac_data_i6_LC_1_6_5.C_ON=1'b0;
    defparam dac_data_i6_LC_1_6_5.SEQ_MODE=4'b1000;
    defparam dac_data_i6_LC_1_6_5.LUT_INIT=16'b0101000001000100;
    LogicCell40 dac_data_i6_LC_1_6_5 (
            .in0(N__1820),
            .in1(N__1061),
            .in2(N__1481),
            .in3(N__1730),
            .lcout(dac_data_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2376),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i14_LC_1_6_6.C_ON=1'b0;
    defparam dac_data_i14_LC_1_6_6.SEQ_MODE=4'b1000;
    defparam dac_data_i14_LC_1_6_6.LUT_INIT=16'b0011000100100000;
    LogicCell40 dac_data_i14_LC_1_6_6 (
            .in0(N__1729),
            .in1(N__1819),
            .in2(N__1260),
            .in3(N__1130),
            .lcout(dac_data_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2376),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i11_LC_1_6_7.C_ON=1'b0;
    defparam dac_data_i11_LC_1_6_7.SEQ_MODE=4'b1000;
    defparam dac_data_i11_LC_1_6_7.LUT_INIT=16'b0101000101000000;
    LogicCell40 dac_data_i11_LC_1_6_7 (
            .in0(N__1818),
            .in1(N__1728),
            .in2(N__1306),
            .in3(N__1118),
            .lcout(dac_data_11),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2376),
            .ce(),
            .sr(_gnd_net_));
    defparam i6_4_lut_LC_1_7_0.C_ON=1'b0;
    defparam i6_4_lut_LC_1_7_0.SEQ_MODE=4'b0000;
    defparam i6_4_lut_LC_1_7_0.LUT_INIT=16'b0110111111110110;
    LogicCell40 i6_4_lut_LC_1_7_0 (
            .in0(N__1516),
            .in1(N__1174),
            .in2(N__2234),
            .in3(N__1069),
            .lcout(n22),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i2_LC_1_7_1.C_ON=1'b0;
    defparam dac_data_i2_LC_1_7_1.SEQ_MODE=4'b1000;
    defparam dac_data_i2_LC_1_7_1.LUT_INIT=16'b0011000000100010;
    LogicCell40 dac_data_i2_LC_1_7_1 (
            .in0(N__1070),
            .in1(N__1838),
            .in2(N__2233),
            .in3(N__1722),
            .lcout(dac_data_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2392),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_4_lut_LC_1_7_2.C_ON=1'b0;
    defparam i1_4_lut_LC_1_7_2.SEQ_MODE=4'b0000;
    defparam i1_4_lut_LC_1_7_2.LUT_INIT=16'b0110111111110110;
    LogicCell40 i1_4_lut_LC_1_7_2 (
            .in0(N__1477),
            .in1(N__1060),
            .in2(N__1439),
            .in3(N__1165),
            .lcout(n17),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i9_LC_1_7_3.C_ON=1'b0;
    defparam dac_data_i9_LC_1_7_3.SEQ_MODE=4'b1000;
    defparam dac_data_i9_LC_1_7_3.LUT_INIT=16'b0101000001000100;
    LogicCell40 dac_data_i9_LC_1_7_3 (
            .in0(N__1840),
            .in1(N__1352),
            .in2(N__1603),
            .in3(N__1724),
            .lcout(dac_data_9),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2392),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i7_LC_1_7_4.C_ON=1'b0;
    defparam dac_data_i7_LC_1_7_4.SEQ_MODE=4'b1000;
    defparam dac_data_i7_LC_1_7_4.LUT_INIT=16'b0011000100100000;
    LogicCell40 dac_data_i7_LC_1_7_4 (
            .in0(N__1723),
            .in1(N__1839),
            .in2(N__1517),
            .in3(N__1175),
            .lcout(dac_data_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2392),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i0_LC_1_7_5.C_ON=1'b0;
    defparam dac_data_i0_LC_1_7_5.SEQ_MODE=4'b1000;
    defparam dac_data_i0_LC_1_7_5.LUT_INIT=16'b0011000000100010;
    LogicCell40 dac_data_i0_LC_1_7_5 (
            .in0(N__1166),
            .in1(N__1837),
            .in2(N__1438),
            .in3(N__1721),
            .lcout(dac_data_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2392),
            .ce(),
            .sr(_gnd_net_));
    defparam MOSI_35_LC_1_7_6.C_ON=1'b0;
    defparam MOSI_35_LC_1_7_6.SEQ_MODE=4'b1000;
    defparam MOSI_35_LC_1_7_6.LUT_INIT=16'b1101110110001000;
    LogicCell40 MOSI_35_LC_1_7_6 (
            .in0(N__2545),
            .in1(N__1400),
            .in2(_gnd_net_),
            .in3(N__1141),
            .lcout(MOSI),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2392),
            .ce(),
            .sr(_gnd_net_));
    defparam i7_4_lut_LC_1_7_7.C_ON=1'b0;
    defparam i7_4_lut_LC_1_7_7.SEQ_MODE=4'b0000;
    defparam i7_4_lut_LC_1_7_7.LUT_INIT=16'b0111110110111110;
    LogicCell40 i7_4_lut_LC_1_7_7 (
            .in0(N__1302),
            .in1(N__1129),
            .in2(N__1267),
            .in3(N__1117),
            .lcout(n23),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i15_LC_1_8_0.C_ON=1'b0;
    defparam dac_data_i15_LC_1_8_0.SEQ_MODE=4'b1000;
    defparam dac_data_i15_LC_1_8_0.LUT_INIT=16'b0101000001000100;
    LogicCell40 dac_data_i15_LC_1_8_0 (
            .in0(N__1845),
            .in1(N__1361),
            .in2(N__1210),
            .in3(N__1731),
            .lcout(dac_data_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2416),
            .ce(),
            .sr(_gnd_net_));
    defparam i2_4_lut_LC_1_8_1.C_ON=1'b0;
    defparam i2_4_lut_LC_1_8_1.SEQ_MODE=4'b0000;
    defparam i2_4_lut_LC_1_8_1.LUT_INIT=16'b0110111111110110;
    LogicCell40 i2_4_lut_LC_1_8_1 (
            .in0(N__1564),
            .in1(N__1096),
            .in2(N__2183),
            .in3(N__1105),
            .lcout(n18),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i1_LC_1_8_2.C_ON=1'b0;
    defparam dac_data_i1_LC_1_8_2.SEQ_MODE=4'b1000;
    defparam dac_data_i1_LC_1_8_2.LUT_INIT=16'b0000110000001010;
    LogicCell40 dac_data_i1_LC_1_8_2 (
            .in0(N__1106),
            .in1(N__2179),
            .in2(N__1850),
            .in3(N__1732),
            .lcout(dac_data_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2416),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i4_LC_1_8_3.C_ON=1'b0;
    defparam dac_data_i4_LC_1_8_3.SEQ_MODE=4'b1000;
    defparam dac_data_i4_LC_1_8_3.LUT_INIT=16'b0011000100100000;
    LogicCell40 dac_data_i4_LC_1_8_3 (
            .in0(N__1733),
            .in1(N__1849),
            .in2(N__1565),
            .in3(N__1097),
            .lcout(dac_data_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2416),
            .ce(),
            .sr(_gnd_net_));
    defparam i8_4_lut_LC_1_8_4.C_ON=1'b0;
    defparam i8_4_lut_LC_1_8_4.SEQ_MODE=4'b0000;
    defparam i8_4_lut_LC_1_8_4.LUT_INIT=16'b0111110110111110;
    LogicCell40 i8_4_lut_LC_1_8_4 (
            .in0(N__1602),
            .in1(N__1360),
            .in2(N__1211),
            .in3(N__1351),
            .lcout(),
            .ltout(n24_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i14_4_lut_LC_1_8_5.C_ON=1'b0;
    defparam i14_4_lut_LC_1_8_5.SEQ_MODE=4'b0000;
    defparam i14_4_lut_LC_1_8_5.LUT_INIT=16'b1111111111111110;
    LogicCell40 i14_4_lut_LC_1_8_5 (
            .in0(N__1340),
            .in1(N__1664),
            .in2(N__1334),
            .in3(N__1331),
            .lcout(),
            .ltout(n30_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i15_4_lut_LC_1_8_6.C_ON=1'b0;
    defparam i15_4_lut_LC_1_8_6.SEQ_MODE=4'b0000;
    defparam i15_4_lut_LC_1_8_6.LUT_INIT=16'b1111111111111110;
    LogicCell40 i15_4_lut_LC_1_8_6 (
            .in0(N__1325),
            .in1(N__1319),
            .in2(N__1313),
            .in3(N__1961),
            .lcout(SCLK_N_84),
            .ltout(SCLK_N_84_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_4_lut_4_lut_4_lut_4_lut_LC_1_8_7.C_ON=1'b0;
    defparam i1_4_lut_4_lut_4_lut_4_lut_LC_1_8_7.SEQ_MODE=4'b0000;
    defparam i1_4_lut_4_lut_4_lut_4_lut_LC_1_8_7.LUT_INIT=16'b1011101110011000;
    LogicCell40 i1_4_lut_4_lut_4_lut_4_lut_LC_1_8_7 (
            .in0(N__2793),
            .in1(N__2557),
            .in2(N__1310),
            .in3(N__2684),
            .lcout(n554),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_buf_i12_LC_1_9_0.C_ON=1'b0;
    defparam dac_buf_i12_LC_1_9_0.SEQ_MODE=4'b1000;
    defparam dac_buf_i12_LC_1_9_0.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i12_LC_1_9_0 (
            .in0(N__1649),
            .in1(N__1274),
            .in2(_gnd_net_),
            .in3(N__2688),
            .lcout(dac_buf_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2394),
            .ce(N__2130),
            .sr(N__2097));
    defparam dac_buf_i11_LC_1_9_2.C_ON=1'b0;
    defparam dac_buf_i11_LC_1_9_2.SEQ_MODE=4'b1000;
    defparam dac_buf_i11_LC_1_9_2.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i11_LC_1_9_2 (
            .in0(N__1307),
            .in1(N__1523),
            .in2(_gnd_net_),
            .in3(N__2687),
            .lcout(dac_buf_11),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2394),
            .ce(N__2130),
            .sr(N__2097));
    defparam dac_buf_i14_LC_1_9_3.C_ON=1'b0;
    defparam dac_buf_i14_LC_1_9_3.SEQ_MODE=4'b1000;
    defparam dac_buf_i14_LC_1_9_3.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i14_LC_1_9_3 (
            .in0(N__2690),
            .in1(N__1268),
            .in2(_gnd_net_),
            .in3(N__1217),
            .lcout(dac_buf_14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2394),
            .ce(N__2130),
            .sr(N__2097));
    defparam dac_buf_i13_LC_1_9_6.C_ON=1'b0;
    defparam dac_buf_i13_LC_1_9_6.SEQ_MODE=4'b1000;
    defparam dac_buf_i13_LC_1_9_6.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i13_LC_1_9_6 (
            .in0(N__1896),
            .in1(N__1223),
            .in2(_gnd_net_),
            .in3(N__2689),
            .lcout(dac_buf_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2394),
            .ce(N__2130),
            .sr(N__2097));
    defparam dac_buf_i15_LC_1_9_7.C_ON=1'b0;
    defparam dac_buf_i15_LC_1_9_7.SEQ_MODE=4'b1000;
    defparam dac_buf_i15_LC_1_9_7.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i15_LC_1_9_7 (
            .in0(N__2691),
            .in1(N__1209),
            .in2(_gnd_net_),
            .in3(N__1181),
            .lcout(dac_buf_15),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2394),
            .ce(N__2130),
            .sr(N__2097));
    defparam dac_buf_i9_LC_1_10_0.C_ON=1'b0;
    defparam dac_buf_i9_LC_1_10_0.SEQ_MODE=4'b1000;
    defparam dac_buf_i9_LC_1_10_0.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i9_LC_1_10_0 (
            .in0(N__1604),
            .in1(N__1535),
            .in2(_gnd_net_),
            .in3(N__2702),
            .lcout(dac_buf_9),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i4_LC_1_10_1.C_ON=1'b0;
    defparam dac_buf_i4_LC_1_10_1.SEQ_MODE=4'b1000;
    defparam dac_buf_i4_LC_1_10_1.LUT_INIT=16'b1111010110100000;
    LogicCell40 dac_buf_i4_LC_1_10_1 (
            .in0(N__2697),
            .in1(_gnd_net_),
            .in2(N__2243),
            .in3(N__1555),
            .lcout(dac_buf_4),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i8_LC_1_10_2.C_ON=1'b0;
    defparam dac_buf_i8_LC_1_10_2.SEQ_MODE=4'b1000;
    defparam dac_buf_i8_LC_1_10_2.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i8_LC_1_10_2 (
            .in0(N__1991),
            .in1(N__1487),
            .in2(_gnd_net_),
            .in3(N__2701),
            .lcout(dac_buf_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i10_LC_1_10_3.C_ON=1'b0;
    defparam dac_buf_i10_LC_1_10_3.SEQ_MODE=4'b1000;
    defparam dac_buf_i10_LC_1_10_3.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i10_LC_1_10_3 (
            .in0(N__2696),
            .in1(N__2044),
            .in2(_gnd_net_),
            .in3(N__1529),
            .lcout(dac_buf_10),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i7_LC_1_10_4.C_ON=1'b0;
    defparam dac_buf_i7_LC_1_10_4.SEQ_MODE=4'b1000;
    defparam dac_buf_i7_LC_1_10_4.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i7_LC_1_10_4 (
            .in0(N__1507),
            .in1(N__1445),
            .in2(_gnd_net_),
            .in3(N__2700),
            .lcout(dac_buf_7),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i6_LC_1_10_5.C_ON=1'b0;
    defparam dac_buf_i6_LC_1_10_5.SEQ_MODE=4'b1000;
    defparam dac_buf_i6_LC_1_10_5.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i6_LC_1_10_5 (
            .in0(N__2699),
            .in1(N__1470),
            .in2(_gnd_net_),
            .in3(N__1379),
            .lcout(dac_buf_6),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i0_LC_1_10_6.C_ON=1'b0;
    defparam dac_buf_i0_LC_1_10_6.SEQ_MODE=4'b1000;
    defparam dac_buf_i0_LC_1_10_6.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i0_LC_1_10_6 (
            .in0(N__1425),
            .in1(N__1396),
            .in2(_gnd_net_),
            .in3(N__2695),
            .lcout(dac_buf_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam dac_buf_i5_LC_1_10_7.C_ON=1'b0;
    defparam dac_buf_i5_LC_1_10_7.SEQ_MODE=4'b1000;
    defparam dac_buf_i5_LC_1_10_7.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i5_LC_1_10_7 (
            .in0(N__2698),
            .in1(N__1756),
            .in2(_gnd_net_),
            .in3(N__1385),
            .lcout(dac_buf_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2418),
            .ce(N__2131),
            .sr(N__2099));
    defparam i1_2_lut_3_lut_LC_2_5_0.C_ON=1'b0;
    defparam i1_2_lut_3_lut_LC_2_5_0.SEQ_MODE=4'b0000;
    defparam i1_2_lut_3_lut_LC_2_5_0.LUT_INIT=16'b1010101010111011;
    LogicCell40 i1_2_lut_3_lut_LC_2_5_0 (
            .in0(N__2792),
            .in1(N__2542),
            .in2(_gnd_net_),
            .in3(N__2621),
            .lcout(n473),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i93_2_lut_3_lut_LC_2_6_0.C_ON=1'b0;
    defparam i93_2_lut_3_lut_LC_2_6_0.SEQ_MODE=4'b0000;
    defparam i93_2_lut_3_lut_LC_2_6_0.LUT_INIT=16'b1010101010001000;
    LogicCell40 i93_2_lut_3_lut_LC_2_6_0 (
            .in0(N__2747),
            .in1(N__2518),
            .in2(_gnd_net_),
            .in3(N__2598),
            .lcout(n268),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_state_i0_LC_2_6_5.C_ON=1'b0;
    defparam dac_state_i0_LC_2_6_5.SEQ_MODE=4'b1000;
    defparam dac_state_i0_LC_2_6_5.LUT_INIT=16'b0001000100100010;
    LogicCell40 dac_state_i0_LC_2_6_5 (
            .in0(N__2519),
            .in1(N__2748),
            .in2(_gnd_net_),
            .in3(N__2067),
            .lcout(dac_state_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2399),
            .ce(),
            .sr(_gnd_net_));
    defparam i5_4_lut_LC_2_7_0.C_ON=1'b0;
    defparam i5_4_lut_LC_2_7_0.SEQ_MODE=4'b0000;
    defparam i5_4_lut_LC_2_7_0.LUT_INIT=16'b0111110110111110;
    LogicCell40 i5_4_lut_LC_2_7_0 (
            .in0(N__2054),
            .in1(N__1612),
            .in2(N__1645),
            .in3(N__2026),
            .lcout(n21),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_4_lut_LC_2_7_1.C_ON=1'b0;
    defparam i1_2_lut_4_lut_LC_2_7_1.SEQ_MODE=4'b0000;
    defparam i1_2_lut_4_lut_LC_2_7_1.LUT_INIT=16'b1111111111111110;
    LogicCell40 i1_2_lut_4_lut_LC_2_7_1 (
            .in0(N__2529),
            .in1(N__2639),
            .in2(N__2778),
            .in3(N__1949),
            .lcout(n520),
            .ltout(n520_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i489_4_lut_LC_2_7_2.C_ON=1'b0;
    defparam i489_4_lut_LC_2_7_2.SEQ_MODE=4'b0000;
    defparam i489_4_lut_LC_2_7_2.LUT_INIT=16'b1101000011110000;
    LogicCell40 i489_4_lut_LC_2_7_2 (
            .in0(N__2641),
            .in1(N__2753),
            .in2(N__1658),
            .in3(N__2530),
            .lcout(n688),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i159_2_lut_LC_2_7_3.C_ON=1'b0;
    defparam i159_2_lut_LC_2_7_3.SEQ_MODE=4'b0000;
    defparam i159_2_lut_LC_2_7_3.LUT_INIT=16'b0011001100000000;
    LogicCell40 i159_2_lut_LC_2_7_3 (
            .in0(_gnd_net_),
            .in1(N__2528),
            .in2(_gnd_net_),
            .in3(N__1950),
            .lcout(),
            .ltout(n360_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_4_lut_adj_1_LC_2_7_4.C_ON=1'b0;
    defparam i1_4_lut_adj_1_LC_2_7_4.SEQ_MODE=4'b0000;
    defparam i1_4_lut_adj_1_LC_2_7_4.LUT_INIT=16'b1111111100010000;
    LogicCell40 i1_4_lut_adj_1_LC_2_7_4 (
            .in0(N__2640),
            .in1(N__2752),
            .in2(N__1655),
            .in3(N__1813),
            .lcout(n498),
            .ltout(n498_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i12_LC_2_7_5.C_ON=1'b0;
    defparam dac_data_i12_LC_2_7_5.SEQ_MODE=4'b1000;
    defparam dac_data_i12_LC_2_7_5.LUT_INIT=16'b0011001000000010;
    LogicCell40 dac_data_i12_LC_2_7_5 (
            .in0(N__1613),
            .in1(N__1821),
            .in2(N__1652),
            .in3(N__1638),
            .lcout(dac_data_12),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2393),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i8_LC_2_7_6.C_ON=1'b0;
    defparam dac_data_i8_LC_2_7_6.SEQ_MODE=4'b1000;
    defparam dac_data_i8_LC_2_7_6.LUT_INIT=16'b0011001000010000;
    LogicCell40 dac_data_i8_LC_2_7_6 (
            .in0(N__1720),
            .in1(N__1817),
            .in2(N__2006),
            .in3(N__1986),
            .lcout(dac_data_8),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2393),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i10_LC_2_7_7.C_ON=1'b0;
    defparam dac_data_i10_LC_2_7_7.SEQ_MODE=4'b1000;
    defparam dac_data_i10_LC_2_7_7.LUT_INIT=16'b0000110000001010;
    LogicCell40 dac_data_i10_LC_2_7_7 (
            .in0(N__2027),
            .in1(N__2053),
            .in2(N__1841),
            .in3(N__1719),
            .lcout(dac_data_10),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2393),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i3_LC_2_8_0.C_ON=1'b0;
    defparam dac_data_i3_LC_2_8_0.SEQ_MODE=4'b1000;
    defparam dac_data_i3_LC_2_8_0.LUT_INIT=16'b0000000011011000;
    LogicCell40 dac_data_i3_LC_2_8_0 (
            .in0(N__1726),
            .in1(N__2263),
            .in2(N__2018),
            .in3(N__1843),
            .lcout(dac_data_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2417),
            .ce(),
            .sr(_gnd_net_));
    defparam i4_4_lut_LC_2_8_1.C_ON=1'b0;
    defparam i4_4_lut_LC_2_8_1.SEQ_MODE=4'b0000;
    defparam i4_4_lut_LC_2_8_1.LUT_INIT=16'b0110111111110110;
    LogicCell40 i4_4_lut_LC_2_8_1 (
            .in0(N__1765),
            .in1(N__1672),
            .in2(N__2267),
            .in3(N__2014),
            .lcout(),
            .ltout(n20_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i10_4_lut_LC_2_8_2.C_ON=1'b0;
    defparam i10_4_lut_LC_2_8_2.SEQ_MODE=4'b0000;
    defparam i10_4_lut_LC_2_8_2.LUT_INIT=16'b1111111111110110;
    LogicCell40 i10_4_lut_LC_2_8_2 (
            .in0(N__2002),
            .in1(N__1987),
            .in2(N__1964),
            .in3(N__1856),
            .lcout(n26),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i13_LC_2_8_3.C_ON=1'b0;
    defparam dac_data_i13_LC_2_8_3.SEQ_MODE=4'b1000;
    defparam dac_data_i13_LC_2_8_3.LUT_INIT=16'b0011000000100010;
    LogicCell40 dac_data_i13_LC_2_8_3 (
            .in0(N__1865),
            .in1(N__1842),
            .in2(N__1901),
            .in3(N__1725),
            .lcout(dac_data_13),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2417),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut_LC_2_8_4.C_ON=1'b0;
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut_LC_2_8_4.SEQ_MODE=4'b0000;
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut_LC_2_8_4.LUT_INIT=16'b1110110111101100;
    LogicCell40 i1_3_lut_4_lut_4_lut_4_lut_4_lut_LC_2_8_4 (
            .in0(N__2549),
            .in1(N__2685),
            .in2(N__2794),
            .in3(N__1951),
            .lcout(),
            .ltout(n477_cascade_),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam SCLK_33_LC_2_8_5.C_ON=1'b0;
    defparam SCLK_33_LC_2_8_5.SEQ_MODE=4'b1000;
    defparam SCLK_33_LC_2_8_5.LUT_INIT=16'b0000101011001010;
    LogicCell40 SCLK_33_LC_2_8_5 (
            .in0(N__1912),
            .in1(N__2906),
            .in2(N__1931),
            .in3(N__2550),
            .lcout(SCLK),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2417),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_15__I_0_i14_2_lut_LC_2_8_6.C_ON=1'b0;
    defparam dac_data_15__I_0_i14_2_lut_LC_2_8_6.SEQ_MODE=4'b0000;
    defparam dac_data_15__I_0_i14_2_lut_LC_2_8_6.LUT_INIT=16'b0011001111001100;
    LogicCell40 dac_data_15__I_0_i14_2_lut_LC_2_8_6 (
            .in0(_gnd_net_),
            .in1(N__1897),
            .in2(_gnd_net_),
            .in3(N__1864),
            .lcout(n14),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_data_i5_LC_2_8_7.C_ON=1'b0;
    defparam dac_data_i5_LC_2_8_7.SEQ_MODE=4'b1000;
    defparam dac_data_i5_LC_2_8_7.LUT_INIT=16'b0101000001000100;
    LogicCell40 dac_data_i5_LC_2_8_7 (
            .in0(N__1844),
            .in1(N__1673),
            .in2(N__1766),
            .in3(N__1727),
            .lcout(dac_data_5),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2417),
            .ce(),
            .sr(_gnd_net_));
    defparam bit_cnt_i3_LC_2_9_1.C_ON=1'b0;
    defparam bit_cnt_i3_LC_2_9_1.SEQ_MODE=4'b1000;
    defparam bit_cnt_i3_LC_2_9_1.LUT_INIT=16'b0111111110000000;
    LogicCell40 bit_cnt_i3_LC_2_9_1 (
            .in0(N__2842),
            .in1(N__2868),
            .in2(N__2461),
            .in3(N__2896),
            .lcout(bit_cnt_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2395),
            .ce(N__2810),
            .sr(N__2284));
    defparam bit_cnt_i1_LC_2_9_2.C_ON=1'b0;
    defparam bit_cnt_i1_LC_2_9_2.SEQ_MODE=4'b1000;
    defparam bit_cnt_i1_LC_2_9_2.LUT_INIT=16'b0011001111001100;
    LogicCell40 bit_cnt_i1_LC_2_9_2 (
            .in0(_gnd_net_),
            .in1(N__2449),
            .in2(_gnd_net_),
            .in3(N__2840),
            .lcout(bit_cnt_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2395),
            .ce(N__2810),
            .sr(N__2284));
    defparam bit_cnt_i2_LC_2_9_3.C_ON=1'b0;
    defparam bit_cnt_i2_LC_2_9_3.SEQ_MODE=4'b1000;
    defparam bit_cnt_i2_LC_2_9_3.LUT_INIT=16'b0101111110100000;
    LogicCell40 bit_cnt_i2_LC_2_9_3 (
            .in0(N__2841),
            .in1(_gnd_net_),
            .in2(N__2460),
            .in3(N__2867),
            .lcout(bit_cnt_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2395),
            .ce(N__2810),
            .sr(N__2284));
    defparam i507_2_lut_LC_2_9_5.C_ON=1'b0;
    defparam i507_2_lut_LC_2_9_5.SEQ_MODE=4'b0000;
    defparam i507_2_lut_LC_2_9_5.LUT_INIT=16'b1100110000000000;
    LogicCell40 i507_2_lut_LC_2_9_5 (
            .in0(_gnd_net_),
            .in1(N__2785),
            .in2(_gnd_net_),
            .in3(N__2120),
            .lcout(n693),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam dac_buf_i3_LC_2_10_0.C_ON=1'b0;
    defparam dac_buf_i3_LC_2_10_0.SEQ_MODE=4'b1000;
    defparam dac_buf_i3_LC_2_10_0.LUT_INIT=16'b1100110010101010;
    LogicCell40 dac_buf_i3_LC_2_10_0 (
            .in0(N__2262),
            .in1(N__2189),
            .in2(_gnd_net_),
            .in3(N__2694),
            .lcout(dac_buf_3),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2419),
            .ce(N__2135),
            .sr(N__2098));
    defparam dac_buf_i2_LC_2_10_3.C_ON=1'b0;
    defparam dac_buf_i2_LC_2_10_3.SEQ_MODE=4'b1000;
    defparam dac_buf_i2_LC_2_10_3.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i2_LC_2_10_3 (
            .in0(N__2693),
            .in1(N__2220),
            .in2(_gnd_net_),
            .in3(N__2141),
            .lcout(dac_buf_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2419),
            .ce(N__2135),
            .sr(N__2098));
    defparam dac_buf_i1_LC_2_10_7.C_ON=1'b0;
    defparam dac_buf_i1_LC_2_10_7.SEQ_MODE=4'b1000;
    defparam dac_buf_i1_LC_2_10_7.LUT_INIT=16'b1110111001000100;
    LogicCell40 dac_buf_i1_LC_2_10_7 (
            .in0(N__2692),
            .in1(N__2173),
            .in2(_gnd_net_),
            .in3(N__2147),
            .lcout(dac_buf_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2419),
            .ce(N__2135),
            .sr(N__2098));
    defparam dac_state_i1_LC_3_6_0.C_ON=1'b0;
    defparam dac_state_i1_LC_3_6_0.SEQ_MODE=4'b1000;
    defparam dac_state_i1_LC_3_6_0.LUT_INIT=16'b0111011111001100;
    LogicCell40 dac_state_i1_LC_3_6_0 (
            .in0(N__2819),
            .in1(N__2543),
            .in2(_gnd_net_),
            .in3(N__2632),
            .lcout(dac_state_1),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2420),
            .ce(N__2081),
            .sr(N__2791));
    defparam dac_state_i2_LC_3_7_0.C_ON=1'b0;
    defparam dac_state_i2_LC_3_7_0.SEQ_MODE=4'b1000;
    defparam dac_state_i2_LC_3_7_0.LUT_INIT=16'b1000000000000000;
    LogicCell40 dac_state_i2_LC_3_7_0 (
            .in0(N__2462),
            .in1(N__2897),
            .in2(N__2876),
            .in3(N__2846),
            .lcout(dac_state_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2375),
            .ce(N__2074),
            .sr(N__2915));
    defparam i750_2_lut_LC_3_8_1.C_ON=1'b0;
    defparam i750_2_lut_LC_3_8_1.SEQ_MODE=4'b0000;
    defparam i750_2_lut_LC_3_8_1.LUT_INIT=16'b0100010001000100;
    LogicCell40 i750_2_lut_LC_3_8_1 (
            .in0(N__2760),
            .in1(N__2642),
            .in2(_gnd_net_),
            .in3(_gnd_net_),
            .lcout(n946),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i3_3_lut_4_lut_LC_3_8_3.C_ON=1'b0;
    defparam i3_3_lut_4_lut_LC_3_8_3.SEQ_MODE=4'b0000;
    defparam i3_3_lut_4_lut_LC_3_8_3.LUT_INIT=16'b1000000000000000;
    LogicCell40 i3_3_lut_4_lut_LC_3_8_3 (
            .in0(N__2892),
            .in1(N__2459),
            .in2(N__2872),
            .in3(N__2839),
            .lcout(dac_state_2_N_72_2),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_3_lut_3_lut_3_lut_LC_3_9_0.C_ON=1'b0;
    defparam i1_3_lut_3_lut_3_lut_LC_3_9_0.SEQ_MODE=4'b0000;
    defparam i1_3_lut_3_lut_3_lut_LC_3_9_0.LUT_INIT=16'b1111111110001000;
    LogicCell40 i1_3_lut_3_lut_3_lut_LC_3_9_0 (
            .in0(N__2645),
            .in1(N__2787),
            .in2(_gnd_net_),
            .in3(N__2553),
            .lcout(n534),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_2_lut_3_lut_4_lut_3_lut_LC_3_9_3.C_ON=1'b0;
    defparam i1_2_lut_3_lut_4_lut_3_lut_LC_3_9_3.SEQ_MODE=4'b0000;
    defparam i1_2_lut_3_lut_4_lut_3_lut_LC_3_9_3.LUT_INIT=16'b1111111111001100;
    LogicCell40 i1_2_lut_3_lut_4_lut_3_lut_LC_3_9_3 (
            .in0(_gnd_net_),
            .in1(N__2552),
            .in2(_gnd_net_),
            .in3(N__2644),
            .lcout(n481),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam i1_4_lut_4_lut_3_lut_LC_3_9_7.C_ON=1'b0;
    defparam i1_4_lut_4_lut_3_lut_LC_3_9_7.SEQ_MODE=4'b0000;
    defparam i1_4_lut_4_lut_3_lut_LC_3_9_7.LUT_INIT=16'b1010101011001100;
    LogicCell40 i1_4_lut_4_lut_3_lut_LC_3_9_7 (
            .in0(N__2786),
            .in1(N__2551),
            .in2(_gnd_net_),
            .in3(N__2643),
            .lcout(n691),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(_gnd_net_),
            .ce(),
            .sr(_gnd_net_));
    defparam bit_cnt_i0_LC_3_10_0.C_ON=1'b0;
    defparam bit_cnt_i0_LC_3_10_0.SEQ_MODE=4'b1000;
    defparam bit_cnt_i0_LC_3_10_0.LUT_INIT=16'b0011001111001100;
    LogicCell40 bit_cnt_i0_LC_3_10_0 (
            .in0(_gnd_net_),
            .in1(N__2448),
            .in2(_gnd_net_),
            .in3(N__2558),
            .lcout(bit_cnt_0),
            .ltout(),
            .carryin(_gnd_net_),
            .carryout(),
            .clk(N__2415),
            .ce(N__2291),
            .sr(N__2285));
endmodule // DAC8830
