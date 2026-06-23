-- ******************************************************************************

-- iCEcube Netlister

-- Version:            2017.08.27940

-- Build Date:         Sep 11 2017 17:29:57

-- File Generated:     Sep 5 2018 18:11:18

-- Purpose:            Post-Route Verilog/VHDL netlist for timing simulation

-- Copyright (C) 2006-2010 by Lattice Semiconductor Corp. All rights reserved.

-- ******************************************************************************

-- VHDL file for cell "DAC8830" view "INTERFACE"

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library ice;
use ice.vcomponent_vital.all;

-- Entity of DAC8830
entity DAC8830 is
port (
    DATA : in std_logic_vector(15 downto 0);
    CS : out std_logic;
    SCLK : out std_logic;
    MOSI : out std_logic;
    CLK : in std_logic);
end DAC8830;

-- Architecture of DAC8830
-- View name is \INTERFACE\
architecture \INTERFACE\ of DAC8830 is

signal \N__3105\ : std_logic;
signal \N__3104\ : std_logic;
signal \N__3103\ : std_logic;
signal \N__3096\ : std_logic;
signal \N__3095\ : std_logic;
signal \N__3094\ : std_logic;
signal \N__3087\ : std_logic;
signal \N__3086\ : std_logic;
signal \N__3085\ : std_logic;
signal \N__3078\ : std_logic;
signal \N__3077\ : std_logic;
signal \N__3076\ : std_logic;
signal \N__3069\ : std_logic;
signal \N__3068\ : std_logic;
signal \N__3067\ : std_logic;
signal \N__3060\ : std_logic;
signal \N__3059\ : std_logic;
signal \N__3058\ : std_logic;
signal \N__3051\ : std_logic;
signal \N__3050\ : std_logic;
signal \N__3049\ : std_logic;
signal \N__3042\ : std_logic;
signal \N__3041\ : std_logic;
signal \N__3040\ : std_logic;
signal \N__3033\ : std_logic;
signal \N__3032\ : std_logic;
signal \N__3031\ : std_logic;
signal \N__3024\ : std_logic;
signal \N__3023\ : std_logic;
signal \N__3022\ : std_logic;
signal \N__3015\ : std_logic;
signal \N__3014\ : std_logic;
signal \N__3013\ : std_logic;
signal \N__3006\ : std_logic;
signal \N__3005\ : std_logic;
signal \N__3004\ : std_logic;
signal \N__2997\ : std_logic;
signal \N__2996\ : std_logic;
signal \N__2995\ : std_logic;
signal \N__2988\ : std_logic;
signal \N__2987\ : std_logic;
signal \N__2986\ : std_logic;
signal \N__2979\ : std_logic;
signal \N__2978\ : std_logic;
signal \N__2977\ : std_logic;
signal \N__2970\ : std_logic;
signal \N__2969\ : std_logic;
signal \N__2968\ : std_logic;
signal \N__2961\ : std_logic;
signal \N__2960\ : std_logic;
signal \N__2959\ : std_logic;
signal \N__2952\ : std_logic;
signal \N__2951\ : std_logic;
signal \N__2950\ : std_logic;
signal \N__2943\ : std_logic;
signal \N__2942\ : std_logic;
signal \N__2941\ : std_logic;
signal \N__2934\ : std_logic;
signal \N__2933\ : std_logic;
signal \N__2932\ : std_logic;
signal \N__2915\ : std_logic;
signal \N__2912\ : std_logic;
signal \N__2909\ : std_logic;
signal \N__2906\ : std_logic;
signal \N__2903\ : std_logic;
signal \N__2900\ : std_logic;
signal \N__2897\ : std_logic;
signal \N__2896\ : std_logic;
signal \N__2893\ : std_logic;
signal \N__2892\ : std_logic;
signal \N__2889\ : std_logic;
signal \N__2886\ : std_logic;
signal \N__2883\ : std_logic;
signal \N__2876\ : std_logic;
signal \N__2873\ : std_logic;
signal \N__2872\ : std_logic;
signal \N__2869\ : std_logic;
signal \N__2868\ : std_logic;
signal \N__2867\ : std_logic;
signal \N__2864\ : std_logic;
signal \N__2861\ : std_logic;
signal \N__2856\ : std_logic;
signal \N__2853\ : std_logic;
signal \N__2846\ : std_logic;
signal \N__2843\ : std_logic;
signal \N__2842\ : std_logic;
signal \N__2841\ : std_logic;
signal \N__2840\ : std_logic;
signal \N__2839\ : std_logic;
signal \N__2836\ : std_logic;
signal \N__2829\ : std_logic;
signal \N__2826\ : std_logic;
signal \N__2819\ : std_logic;
signal \N__2816\ : std_logic;
signal \N__2813\ : std_logic;
signal \N__2810\ : std_logic;
signal \N__2807\ : std_logic;
signal \N__2804\ : std_logic;
signal \N__2801\ : std_logic;
signal \N__2798\ : std_logic;
signal \N__2795\ : std_logic;
signal \N__2794\ : std_logic;
signal \N__2793\ : std_logic;
signal \N__2792\ : std_logic;
signal \N__2791\ : std_logic;
signal \N__2788\ : std_logic;
signal \N__2787\ : std_logic;
signal \N__2786\ : std_logic;
signal \N__2785\ : std_logic;
signal \N__2782\ : std_logic;
signal \N__2779\ : std_logic;
signal \N__2778\ : std_logic;
signal \N__2775\ : std_logic;
signal \N__2772\ : std_logic;
signal \N__2769\ : std_logic;
signal \N__2764\ : std_logic;
signal \N__2761\ : std_logic;
signal \N__2760\ : std_logic;
signal \N__2757\ : std_logic;
signal \N__2754\ : std_logic;
signal \N__2753\ : std_logic;
signal \N__2752\ : std_logic;
signal \N__2749\ : std_logic;
signal \N__2748\ : std_logic;
signal \N__2747\ : std_logic;
signal \N__2744\ : std_logic;
signal \N__2735\ : std_logic;
signal \N__2732\ : std_logic;
signal \N__2727\ : std_logic;
signal \N__2720\ : std_logic;
signal \N__2715\ : std_logic;
signal \N__2702\ : std_logic;
signal \N__2701\ : std_logic;
signal \N__2700\ : std_logic;
signal \N__2699\ : std_logic;
signal \N__2698\ : std_logic;
signal \N__2697\ : std_logic;
signal \N__2696\ : std_logic;
signal \N__2695\ : std_logic;
signal \N__2694\ : std_logic;
signal \N__2693\ : std_logic;
signal \N__2692\ : std_logic;
signal \N__2691\ : std_logic;
signal \N__2690\ : std_logic;
signal \N__2689\ : std_logic;
signal \N__2688\ : std_logic;
signal \N__2687\ : std_logic;
signal \N__2686\ : std_logic;
signal \N__2685\ : std_logic;
signal \N__2684\ : std_logic;
signal \N__2667\ : std_logic;
signal \N__2660\ : std_logic;
signal \N__2649\ : std_logic;
signal \N__2646\ : std_logic;
signal \N__2645\ : std_logic;
signal \N__2644\ : std_logic;
signal \N__2643\ : std_logic;
signal \N__2642\ : std_logic;
signal \N__2641\ : std_logic;
signal \N__2640\ : std_logic;
signal \N__2639\ : std_logic;
signal \N__2636\ : std_logic;
signal \N__2633\ : std_logic;
signal \N__2632\ : std_logic;
signal \N__2625\ : std_logic;
signal \N__2622\ : std_logic;
signal \N__2621\ : std_logic;
signal \N__2614\ : std_logic;
signal \N__2611\ : std_logic;
signal \N__2604\ : std_logic;
signal \N__2599\ : std_logic;
signal \N__2598\ : std_logic;
signal \N__2595\ : std_logic;
signal \N__2590\ : std_logic;
signal \N__2587\ : std_logic;
signal \N__2584\ : std_logic;
signal \N__2579\ : std_logic;
signal \N__2576\ : std_logic;
signal \N__2573\ : std_logic;
signal \N__2558\ : std_logic;
signal \N__2557\ : std_logic;
signal \N__2554\ : std_logic;
signal \N__2553\ : std_logic;
signal \N__2552\ : std_logic;
signal \N__2551\ : std_logic;
signal \N__2550\ : std_logic;
signal \N__2549\ : std_logic;
signal \N__2546\ : std_logic;
signal \N__2545\ : std_logic;
signal \N__2544\ : std_logic;
signal \N__2543\ : std_logic;
signal \N__2542\ : std_logic;
signal \N__2539\ : std_logic;
signal \N__2536\ : std_logic;
signal \N__2531\ : std_logic;
signal \N__2530\ : std_logic;
signal \N__2529\ : std_logic;
signal \N__2528\ : std_logic;
signal \N__2523\ : std_logic;
signal \N__2520\ : std_logic;
signal \N__2519\ : std_logic;
signal \N__2518\ : std_logic;
signal \N__2515\ : std_logic;
signal \N__2512\ : std_logic;
signal \N__2509\ : std_logic;
signal \N__2506\ : std_logic;
signal \N__2499\ : std_logic;
signal \N__2494\ : std_logic;
signal \N__2491\ : std_logic;
signal \N__2486\ : std_logic;
signal \N__2481\ : std_logic;
signal \N__2462\ : std_logic;
signal \N__2461\ : std_logic;
signal \N__2460\ : std_logic;
signal \N__2459\ : std_logic;
signal \N__2456\ : std_logic;
signal \N__2453\ : std_logic;
signal \N__2450\ : std_logic;
signal \N__2449\ : std_logic;
signal \N__2448\ : std_logic;
signal \N__2445\ : std_logic;
signal \N__2442\ : std_logic;
signal \N__2435\ : std_logic;
signal \N__2432\ : std_logic;
signal \N__2429\ : std_logic;
signal \N__2420\ : std_logic;
signal \N__2419\ : std_logic;
signal \N__2418\ : std_logic;
signal \N__2417\ : std_logic;
signal \N__2416\ : std_logic;
signal \N__2415\ : std_logic;
signal \N__2412\ : std_logic;
signal \N__2409\ : std_logic;
signal \N__2406\ : std_logic;
signal \N__2403\ : std_logic;
signal \N__2400\ : std_logic;
signal \N__2399\ : std_logic;
signal \N__2396\ : std_logic;
signal \N__2395\ : std_logic;
signal \N__2394\ : std_logic;
signal \N__2393\ : std_logic;
signal \N__2392\ : std_logic;
signal \N__2389\ : std_logic;
signal \N__2380\ : std_logic;
signal \N__2377\ : std_logic;
signal \N__2376\ : std_logic;
signal \N__2375\ : std_logic;
signal \N__2372\ : std_logic;
signal \N__2369\ : std_logic;
signal \N__2366\ : std_logic;
signal \N__2363\ : std_logic;
signal \N__2360\ : std_logic;
signal \N__2355\ : std_logic;
signal \N__2352\ : std_logic;
signal \N__2349\ : std_logic;
signal \N__2348\ : std_logic;
signal \N__2345\ : std_logic;
signal \N__2334\ : std_logic;
signal \N__2327\ : std_logic;
signal \N__2324\ : std_logic;
signal \N__2321\ : std_logic;
signal \N__2314\ : std_logic;
signal \N__2311\ : std_logic;
signal \N__2308\ : std_logic;
signal \N__2305\ : std_logic;
signal \N__2302\ : std_logic;
signal \N__2299\ : std_logic;
signal \N__2296\ : std_logic;
signal \N__2291\ : std_logic;
signal \N__2288\ : std_logic;
signal \N__2285\ : std_logic;
signal \N__2284\ : std_logic;
signal \N__2281\ : std_logic;
signal \N__2278\ : std_logic;
signal \N__2275\ : std_logic;
signal \N__2272\ : std_logic;
signal \N__2267\ : std_logic;
signal \N__2264\ : std_logic;
signal \N__2263\ : std_logic;
signal \N__2262\ : std_logic;
signal \N__2257\ : std_logic;
signal \N__2254\ : std_logic;
signal \N__2249\ : std_logic;
signal \N__2246\ : std_logic;
signal \N__2243\ : std_logic;
signal \N__2240\ : std_logic;
signal \N__2237\ : std_logic;
signal \N__2234\ : std_logic;
signal \N__2233\ : std_logic;
signal \N__2230\ : std_logic;
signal \N__2227\ : std_logic;
signal \N__2224\ : std_logic;
signal \N__2221\ : std_logic;
signal \N__2220\ : std_logic;
signal \N__2215\ : std_logic;
signal \N__2212\ : std_logic;
signal \N__2209\ : std_logic;
signal \N__2206\ : std_logic;
signal \N__2203\ : std_logic;
signal \N__2200\ : std_logic;
signal \N__2197\ : std_logic;
signal \N__2194\ : std_logic;
signal \N__2189\ : std_logic;
signal \N__2186\ : std_logic;
signal \N__2183\ : std_logic;
signal \N__2180\ : std_logic;
signal \N__2179\ : std_logic;
signal \N__2174\ : std_logic;
signal \N__2173\ : std_logic;
signal \N__2170\ : std_logic;
signal \N__2167\ : std_logic;
signal \N__2164\ : std_logic;
signal \N__2161\ : std_logic;
signal \N__2158\ : std_logic;
signal \N__2155\ : std_logic;
signal \N__2150\ : std_logic;
signal \N__2147\ : std_logic;
signal \N__2144\ : std_logic;
signal \N__2141\ : std_logic;
signal \N__2138\ : std_logic;
signal \N__2135\ : std_logic;
signal \N__2132\ : std_logic;
signal \N__2131\ : std_logic;
signal \N__2130\ : std_logic;
signal \N__2127\ : std_logic;
signal \N__2124\ : std_logic;
signal \N__2121\ : std_logic;
signal \N__2120\ : std_logic;
signal \N__2117\ : std_logic;
signal \N__2114\ : std_logic;
signal \N__2111\ : std_logic;
signal \N__2108\ : std_logic;
signal \N__2099\ : std_logic;
signal \N__2098\ : std_logic;
signal \N__2097\ : std_logic;
signal \N__2094\ : std_logic;
signal \N__2091\ : std_logic;
signal \N__2088\ : std_logic;
signal \N__2081\ : std_logic;
signal \N__2078\ : std_logic;
signal \N__2075\ : std_logic;
signal \N__2074\ : std_logic;
signal \N__2071\ : std_logic;
signal \N__2068\ : std_logic;
signal \N__2067\ : std_logic;
signal \N__2062\ : std_logic;
signal \N__2059\ : std_logic;
signal \N__2054\ : std_logic;
signal \N__2053\ : std_logic;
signal \N__2048\ : std_logic;
signal \N__2045\ : std_logic;
signal \N__2044\ : std_logic;
signal \N__2041\ : std_logic;
signal \N__2038\ : std_logic;
signal \N__2035\ : std_logic;
signal \N__2032\ : std_logic;
signal \N__2027\ : std_logic;
signal \N__2026\ : std_logic;
signal \N__2021\ : std_logic;
signal \N__2018\ : std_logic;
signal \N__2015\ : std_logic;
signal \N__2014\ : std_logic;
signal \N__2009\ : std_logic;
signal \N__2006\ : std_logic;
signal \N__2003\ : std_logic;
signal \N__2002\ : std_logic;
signal \N__1999\ : std_logic;
signal \N__1996\ : std_logic;
signal \N__1991\ : std_logic;
signal \N__1988\ : std_logic;
signal \N__1987\ : std_logic;
signal \N__1986\ : std_logic;
signal \N__1983\ : std_logic;
signal \N__1980\ : std_logic;
signal \N__1977\ : std_logic;
signal \N__1970\ : std_logic;
signal \N__1967\ : std_logic;
signal \N__1964\ : std_logic;
signal \N__1961\ : std_logic;
signal \N__1958\ : std_logic;
signal \N__1955\ : std_logic;
signal \N__1952\ : std_logic;
signal \N__1951\ : std_logic;
signal \N__1950\ : std_logic;
signal \N__1949\ : std_logic;
signal \N__1946\ : std_logic;
signal \N__1943\ : std_logic;
signal \N__1938\ : std_logic;
signal \N__1931\ : std_logic;
signal \N__1928\ : std_logic;
signal \N__1925\ : std_logic;
signal \N__1922\ : std_logic;
signal \N__1919\ : std_logic;
signal \N__1916\ : std_logic;
signal \N__1913\ : std_logic;
signal \N__1912\ : std_logic;
signal \N__1909\ : std_logic;
signal \N__1906\ : std_logic;
signal \N__1901\ : std_logic;
signal \N__1898\ : std_logic;
signal \N__1897\ : std_logic;
signal \N__1896\ : std_logic;
signal \N__1891\ : std_logic;
signal \N__1888\ : std_logic;
signal \N__1885\ : std_logic;
signal \N__1882\ : std_logic;
signal \N__1879\ : std_logic;
signal \N__1876\ : std_logic;
signal \N__1873\ : std_logic;
signal \N__1870\ : std_logic;
signal \N__1865\ : std_logic;
signal \N__1864\ : std_logic;
signal \N__1859\ : std_logic;
signal \N__1856\ : std_logic;
signal \N__1853\ : std_logic;
signal \N__1850\ : std_logic;
signal \N__1849\ : std_logic;
signal \N__1846\ : std_logic;
signal \N__1845\ : std_logic;
signal \N__1844\ : std_logic;
signal \N__1843\ : std_logic;
signal \N__1842\ : std_logic;
signal \N__1841\ : std_logic;
signal \N__1840\ : std_logic;
signal \N__1839\ : std_logic;
signal \N__1838\ : std_logic;
signal \N__1837\ : std_logic;
signal \N__1830\ : std_logic;
signal \N__1825\ : std_logic;
signal \N__1822\ : std_logic;
signal \N__1821\ : std_logic;
signal \N__1820\ : std_logic;
signal \N__1819\ : std_logic;
signal \N__1818\ : std_logic;
signal \N__1817\ : std_logic;
signal \N__1814\ : std_logic;
signal \N__1813\ : std_logic;
signal \N__1808\ : std_logic;
signal \N__1803\ : std_logic;
signal \N__1796\ : std_logic;
signal \N__1793\ : std_logic;
signal \N__1786\ : std_logic;
signal \N__1779\ : std_logic;
signal \N__1766\ : std_logic;
signal \N__1765\ : std_logic;
signal \N__1762\ : std_logic;
signal \N__1757\ : std_logic;
signal \N__1756\ : std_logic;
signal \N__1753\ : std_logic;
signal \N__1750\ : std_logic;
signal \N__1745\ : std_logic;
signal \N__1742\ : std_logic;
signal \N__1739\ : std_logic;
signal \N__1736\ : std_logic;
signal \N__1733\ : std_logic;
signal \N__1732\ : std_logic;
signal \N__1731\ : std_logic;
signal \N__1730\ : std_logic;
signal \N__1729\ : std_logic;
signal \N__1728\ : std_logic;
signal \N__1727\ : std_logic;
signal \N__1726\ : std_logic;
signal \N__1725\ : std_logic;
signal \N__1724\ : std_logic;
signal \N__1723\ : std_logic;
signal \N__1722\ : std_logic;
signal \N__1721\ : std_logic;
signal \N__1720\ : std_logic;
signal \N__1719\ : std_logic;
signal \N__1712\ : std_logic;
signal \N__1705\ : std_logic;
signal \N__1698\ : std_logic;
signal \N__1689\ : std_logic;
signal \N__1684\ : std_logic;
signal \N__1673\ : std_logic;
signal \N__1672\ : std_logic;
signal \N__1667\ : std_logic;
signal \N__1664\ : std_logic;
signal \N__1661\ : std_logic;
signal \N__1658\ : std_logic;
signal \N__1655\ : std_logic;
signal \N__1652\ : std_logic;
signal \N__1649\ : std_logic;
signal \N__1646\ : std_logic;
signal \N__1645\ : std_logic;
signal \N__1642\ : std_logic;
signal \N__1639\ : std_logic;
signal \N__1638\ : std_logic;
signal \N__1635\ : std_logic;
signal \N__1630\ : std_logic;
signal \N__1625\ : std_logic;
signal \N__1622\ : std_logic;
signal \N__1619\ : std_logic;
signal \N__1616\ : std_logic;
signal \N__1613\ : std_logic;
signal \N__1612\ : std_logic;
signal \N__1607\ : std_logic;
signal \N__1604\ : std_logic;
signal \N__1603\ : std_logic;
signal \N__1602\ : std_logic;
signal \N__1599\ : std_logic;
signal \N__1596\ : std_logic;
signal \N__1593\ : std_logic;
signal \N__1590\ : std_logic;
signal \N__1587\ : std_logic;
signal \N__1584\ : std_logic;
signal \N__1579\ : std_logic;
signal \N__1576\ : std_logic;
signal \N__1573\ : std_logic;
signal \N__1568\ : std_logic;
signal \N__1565\ : std_logic;
signal \N__1564\ : std_logic;
signal \N__1561\ : std_logic;
signal \N__1556\ : std_logic;
signal \N__1555\ : std_logic;
signal \N__1552\ : std_logic;
signal \N__1549\ : std_logic;
signal \N__1544\ : std_logic;
signal \N__1541\ : std_logic;
signal \N__1538\ : std_logic;
signal \N__1535\ : std_logic;
signal \N__1532\ : std_logic;
signal \N__1529\ : std_logic;
signal \N__1526\ : std_logic;
signal \N__1523\ : std_logic;
signal \N__1520\ : std_logic;
signal \N__1517\ : std_logic;
signal \N__1516\ : std_logic;
signal \N__1513\ : std_logic;
signal \N__1508\ : std_logic;
signal \N__1507\ : std_logic;
signal \N__1504\ : std_logic;
signal \N__1501\ : std_logic;
signal \N__1496\ : std_logic;
signal \N__1493\ : std_logic;
signal \N__1490\ : std_logic;
signal \N__1487\ : std_logic;
signal \N__1484\ : std_logic;
signal \N__1481\ : std_logic;
signal \N__1478\ : std_logic;
signal \N__1477\ : std_logic;
signal \N__1474\ : std_logic;
signal \N__1471\ : std_logic;
signal \N__1470\ : std_logic;
signal \N__1467\ : std_logic;
signal \N__1464\ : std_logic;
signal \N__1461\ : std_logic;
signal \N__1454\ : std_logic;
signal \N__1451\ : std_logic;
signal \N__1448\ : std_logic;
signal \N__1445\ : std_logic;
signal \N__1442\ : std_logic;
signal \N__1439\ : std_logic;
signal \N__1438\ : std_logic;
signal \N__1435\ : std_logic;
signal \N__1432\ : std_logic;
signal \N__1429\ : std_logic;
signal \N__1426\ : std_logic;
signal \N__1425\ : std_logic;
signal \N__1422\ : std_logic;
signal \N__1419\ : std_logic;
signal \N__1416\ : std_logic;
signal \N__1411\ : std_logic;
signal \N__1408\ : std_logic;
signal \N__1403\ : std_logic;
signal \N__1400\ : std_logic;
signal \N__1397\ : std_logic;
signal \N__1396\ : std_logic;
signal \N__1393\ : std_logic;
signal \N__1390\ : std_logic;
signal \N__1385\ : std_logic;
signal \N__1382\ : std_logic;
signal \N__1379\ : std_logic;
signal \N__1376\ : std_logic;
signal \N__1373\ : std_logic;
signal \N__1370\ : std_logic;
signal \N__1367\ : std_logic;
signal \N__1364\ : std_logic;
signal \N__1361\ : std_logic;
signal \N__1360\ : std_logic;
signal \N__1355\ : std_logic;
signal \N__1352\ : std_logic;
signal \N__1351\ : std_logic;
signal \N__1348\ : std_logic;
signal \N__1345\ : std_logic;
signal \N__1340\ : std_logic;
signal \N__1337\ : std_logic;
signal \N__1334\ : std_logic;
signal \N__1331\ : std_logic;
signal \N__1328\ : std_logic;
signal \N__1325\ : std_logic;
signal \N__1322\ : std_logic;
signal \N__1319\ : std_logic;
signal \N__1316\ : std_logic;
signal \N__1313\ : std_logic;
signal \N__1310\ : std_logic;
signal \N__1307\ : std_logic;
signal \N__1306\ : std_logic;
signal \N__1303\ : std_logic;
signal \N__1302\ : std_logic;
signal \N__1299\ : std_logic;
signal \N__1296\ : std_logic;
signal \N__1293\ : std_logic;
signal \N__1290\ : std_logic;
signal \N__1283\ : std_logic;
signal \N__1280\ : std_logic;
signal \N__1277\ : std_logic;
signal \N__1274\ : std_logic;
signal \N__1271\ : std_logic;
signal \N__1268\ : std_logic;
signal \N__1267\ : std_logic;
signal \N__1264\ : std_logic;
signal \N__1261\ : std_logic;
signal \N__1260\ : std_logic;
signal \N__1257\ : std_logic;
signal \N__1254\ : std_logic;
signal \N__1251\ : std_logic;
signal \N__1246\ : std_logic;
signal \N__1243\ : std_logic;
signal \N__1240\ : std_logic;
signal \N__1237\ : std_logic;
signal \N__1234\ : std_logic;
signal \N__1231\ : std_logic;
signal \N__1226\ : std_logic;
signal \N__1223\ : std_logic;
signal \N__1220\ : std_logic;
signal \N__1217\ : std_logic;
signal \N__1214\ : std_logic;
signal \N__1211\ : std_logic;
signal \N__1210\ : std_logic;
signal \N__1209\ : std_logic;
signal \N__1206\ : std_logic;
signal \N__1203\ : std_logic;
signal \N__1200\ : std_logic;
signal \N__1195\ : std_logic;
signal \N__1190\ : std_logic;
signal \N__1187\ : std_logic;
signal \N__1184\ : std_logic;
signal \N__1181\ : std_logic;
signal \N__1178\ : std_logic;
signal \N__1175\ : std_logic;
signal \N__1174\ : std_logic;
signal \N__1169\ : std_logic;
signal \N__1166\ : std_logic;
signal \N__1165\ : std_logic;
signal \N__1160\ : std_logic;
signal \N__1157\ : std_logic;
signal \N__1154\ : std_logic;
signal \N__1151\ : std_logic;
signal \N__1148\ : std_logic;
signal \N__1145\ : std_logic;
signal \N__1142\ : std_logic;
signal \N__1141\ : std_logic;
signal \N__1138\ : std_logic;
signal \N__1135\ : std_logic;
signal \N__1130\ : std_logic;
signal \N__1129\ : std_logic;
signal \N__1126\ : std_logic;
signal \N__1123\ : std_logic;
signal \N__1118\ : std_logic;
signal \N__1117\ : std_logic;
signal \N__1114\ : std_logic;
signal \N__1111\ : std_logic;
signal \N__1106\ : std_logic;
signal \N__1105\ : std_logic;
signal \N__1100\ : std_logic;
signal \N__1097\ : std_logic;
signal \N__1096\ : std_logic;
signal \N__1091\ : std_logic;
signal \N__1088\ : std_logic;
signal \N__1085\ : std_logic;
signal \N__1082\ : std_logic;
signal \N__1079\ : std_logic;
signal \N__1076\ : std_logic;
signal \N__1073\ : std_logic;
signal \N__1070\ : std_logic;
signal \N__1069\ : std_logic;
signal \N__1064\ : std_logic;
signal \N__1061\ : std_logic;
signal \N__1060\ : std_logic;
signal \N__1057\ : std_logic;
signal \N__1054\ : std_logic;
signal \GNDG0\ : std_logic;
signal \VCCG0\ : std_logic;
signal \CS\ : std_logic;
signal dac_data_2 : std_logic;
signal dac_data_6 : std_logic;
signal dac_data_7 : std_logic;
signal dac_data_0 : std_logic;
signal \MOSI\ : std_logic;
signal dac_data_14 : std_logic;
signal dac_data_11 : std_logic;
signal dac_data_1 : std_logic;
signal dac_data_4 : std_logic;
signal dac_data_15 : std_logic;
signal dac_data_9 : std_logic;
signal n22 : std_logic;
signal \n24_cascade_\ : std_logic;
signal n23 : std_logic;
signal n18 : std_logic;
signal n17 : std_logic;
signal \n30_cascade_\ : std_logic;
signal \SCLK_N_84_cascade_\ : std_logic;
signal \DATA_11_\ : std_logic;
signal dac_buf_11 : std_logic;
signal \DATA_14_\ : std_logic;
signal dac_buf_12 : std_logic;
signal dac_buf_13 : std_logic;
signal \DATA_15_\ : std_logic;
signal dac_buf_14 : std_logic;
signal \DATA_9_\ : std_logic;
signal \DATA_4_\ : std_logic;
signal dac_buf_8 : std_logic;
signal dac_buf_9 : std_logic;
signal dac_buf_10 : std_logic;
signal \DATA_7_\ : std_logic;
signal dac_buf_7 : std_logic;
signal \DATA_6_\ : std_logic;
signal dac_buf_6 : std_logic;
signal \DATA_0_\ : std_logic;
signal dac_buf_15 : std_logic;
signal dac_buf_4 : std_logic;
signal dac_buf_5 : std_logic;
signal n473 : std_logic;
signal n21 : std_logic;
signal \n520_cascade_\ : std_logic;
signal \n360_cascade_\ : std_logic;
signal \n498_cascade_\ : std_logic;
signal \DATA_12_\ : std_logic;
signal dac_data_12 : std_logic;
signal \DATA_10_\ : std_logic;
signal dac_data_10 : std_logic;
signal dac_data_3 : std_logic;
signal dac_data_8 : std_logic;
signal \DATA_8_\ : std_logic;
signal \n20_cascade_\ : std_logic;
signal n26 : std_logic;
signal \SCLK_N_84\ : std_logic;
signal \n477_cascade_\ : std_logic;
signal \SCLK\ : std_logic;
signal \DATA_13_\ : std_logic;
signal dac_data_13 : std_logic;
signal n14 : std_logic;
signal n268 : std_logic;
signal \DATA_5_\ : std_logic;
signal n498 : std_logic;
signal dac_data_5 : std_logic;
signal \DATA_3_\ : std_logic;
signal dac_buf_3 : std_logic;
signal \DATA_2_\ : std_logic;
signal dac_buf_2 : std_logic;
signal \DATA_1_\ : std_logic;
signal dac_buf_0 : std_logic;
signal dac_buf_1 : std_logic;
signal n554 : std_logic;
signal n693 : std_logic;
signal n520 : std_logic;
signal n688 : std_logic;
signal n946 : std_logic;
signal bit_cnt_3 : std_logic;
signal bit_cnt_2 : std_logic;
signal bit_cnt_1 : std_logic;
signal \dac_state_2_N_72_2\ : std_logic;
signal n534 : std_logic;
signal dac_state_2 : std_logic;
signal dac_state_1 : std_logic;
signal dac_state_0 : std_logic;
signal bit_cnt_0 : std_logic;
signal \_gnd_net_\ : std_logic;
signal \CLK\ : std_logic;
signal n481 : std_logic;
signal n691 : std_logic;

signal \DATA_wire\ : std_logic_vector(15 downto 0);
signal \CS_wire\ : std_logic;
signal \SCLK_wire\ : std_logic;
signal \MOSI_wire\ : std_logic;
signal \CLK_wire\ : std_logic;

begin
    \DATA_wire\ <= DATA;
    CS <= \CS_wire\;
    SCLK <= \SCLK_wire\;
    MOSI <= \MOSI_wire\;
    \CLK_wire\ <= CLK;

    \ipInertedIOPad_DATA_3_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3105\,
            DIN => \N__3104\,
            DOUT => \N__3103\,
            PACKAGEPIN => \DATA_wire\(3)
        );

    \ipInertedIOPad_DATA_3_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3105\,
            PADOUT => \N__3104\,
            PADIN => \N__3103\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_3_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_8_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3096\,
            DIN => \N__3095\,
            DOUT => \N__3094\,
            PACKAGEPIN => \DATA_wire\(8)
        );

    \ipInertedIOPad_DATA_8_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3096\,
            PADOUT => \N__3095\,
            PADIN => \N__3094\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_8_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_4_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3087\,
            DIN => \N__3086\,
            DOUT => \N__3085\,
            PACKAGEPIN => \DATA_wire\(4)
        );

    \ipInertedIOPad_DATA_4_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3087\,
            PADOUT => \N__3086\,
            PADIN => \N__3085\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_4_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_15_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3078\,
            DIN => \N__3077\,
            DOUT => \N__3076\,
            PACKAGEPIN => \DATA_wire\(15)
        );

    \ipInertedIOPad_DATA_15_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3078\,
            PADOUT => \N__3077\,
            PADIN => \N__3076\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_15_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_11_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3069\,
            DIN => \N__3068\,
            DOUT => \N__3067\,
            PACKAGEPIN => \DATA_wire\(11)
        );

    \ipInertedIOPad_DATA_11_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3069\,
            PADOUT => \N__3068\,
            PADIN => \N__3067\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_11_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_0_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3060\,
            DIN => \N__3059\,
            DOUT => \N__3058\,
            PACKAGEPIN => \DATA_wire\(0)
        );

    \ipInertedIOPad_DATA_0_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3060\,
            PADOUT => \N__3059\,
            PADIN => \N__3058\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_0_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_CS_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3051\,
            DIN => \N__3050\,
            DOUT => \N__3049\,
            PACKAGEPIN => \CS_wire\
        );

    \ipInertedIOPad_CS_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3051\,
            PADOUT => \N__3050\,
            PADIN => \N__3049\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1088\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_9_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3042\,
            DIN => \N__3041\,
            DOUT => \N__3040\,
            PACKAGEPIN => \DATA_wire\(9)
        );

    \ipInertedIOPad_DATA_9_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3042\,
            PADOUT => \N__3041\,
            PADIN => \N__3040\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_9_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_5_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3033\,
            DIN => \N__3032\,
            DOUT => \N__3031\,
            PACKAGEPIN => \DATA_wire\(5)
        );

    \ipInertedIOPad_DATA_5_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3033\,
            PADOUT => \N__3032\,
            PADIN => \N__3031\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_5_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_14_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3024\,
            DIN => \N__3023\,
            DOUT => \N__3022\,
            PACKAGEPIN => \DATA_wire\(14)
        );

    \ipInertedIOPad_DATA_14_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3024\,
            PADOUT => \N__3023\,
            PADIN => \N__3022\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_14_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_10_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3015\,
            DIN => \N__3014\,
            DOUT => \N__3013\,
            PACKAGEPIN => \DATA_wire\(10)
        );

    \ipInertedIOPad_DATA_10_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3015\,
            PADOUT => \N__3014\,
            PADIN => \N__3013\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_10_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_1_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__3006\,
            DIN => \N__3005\,
            DOUT => \N__3004\,
            PACKAGEPIN => \DATA_wire\(1)
        );

    \ipInertedIOPad_DATA_1_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__3006\,
            PADOUT => \N__3005\,
            PADIN => \N__3004\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_1_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_SCLK_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2997\,
            DIN => \N__2996\,
            DOUT => \N__2995\,
            PACKAGEPIN => \SCLK_wire\
        );

    \ipInertedIOPad_SCLK_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2997\,
            PADOUT => \N__2996\,
            PADIN => \N__2995\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1928\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_MOSI_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2988\,
            DIN => \N__2987\,
            DOUT => \N__2986\,
            PACKAGEPIN => \MOSI_wire\
        );

    \ipInertedIOPad_MOSI_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "011001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2988\,
            PADOUT => \N__2987\,
            PADIN => \N__2986\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => \N__1157\,
            DOUT1 => '0',
            DIN0 => OPEN,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_6_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2979\,
            DIN => \N__2978\,
            DOUT => \N__2977\,
            PACKAGEPIN => \DATA_wire\(6)
        );

    \ipInertedIOPad_DATA_6_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2979\,
            PADOUT => \N__2978\,
            PADIN => \N__2977\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_6_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_2_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2970\,
            DIN => \N__2969\,
            DOUT => \N__2968\,
            PACKAGEPIN => \DATA_wire\(2)
        );

    \ipInertedIOPad_DATA_2_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2970\,
            PADOUT => \N__2969\,
            PADIN => \N__2968\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_2_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_13_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2961\,
            DIN => \N__2960\,
            DOUT => \N__2959\,
            PACKAGEPIN => \DATA_wire\(13)
        );

    \ipInertedIOPad_DATA_13_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2961\,
            PADOUT => \N__2960\,
            PADIN => \N__2959\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_13_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_CLK_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2952\,
            DIN => \N__2951\,
            DOUT => \N__2950\,
            PACKAGEPIN => \CLK_wire\
        );

    \ipInertedIOPad_CLK_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2952\,
            PADOUT => \N__2951\,
            PADIN => \N__2950\,
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

    \ipInertedIOPad_DATA_7_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2943\,
            DIN => \N__2942\,
            DOUT => \N__2941\,
            PACKAGEPIN => \DATA_wire\(7)
        );

    \ipInertedIOPad_DATA_7_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2943\,
            PADOUT => \N__2942\,
            PADIN => \N__2941\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_7_\,
            DIN1 => OPEN
        );

    \ipInertedIOPad_DATA_12_iopad\ : IO_PAD
    generic map (
            IO_STANDARD => "SB_LVCMOS",
            PULLUP => '0'
        )
    port map (
            OE => \N__2934\,
            DIN => \N__2933\,
            DOUT => \N__2932\,
            PACKAGEPIN => \DATA_wire\(12)
        );

    \ipInertedIOPad_DATA_12_preio\ : PRE_IO
    generic map (
            PIN_TYPE => "000001",
            NEG_TRIGGER => '0'
        )
    port map (
            PADOEN => \N__2934\,
            PADOUT => \N__2933\,
            PADIN => \N__2932\,
            LATCHINPUTVALUE => '0',
            CLOCKENABLE => 'H',
            INPUTCLK => '0',
            OUTPUTCLK => '0',
            OUTPUTENABLE => '0',
            DOUT0 => '0',
            DOUT1 => '0',
            DIN0 => \DATA_12_\,
            DIN1 => OPEN
        );

    \I__711\ : SRMux
    port map (
            O => \N__2915\,
            I => \N__2912\
        );

    \I__710\ : LocalMux
    port map (
            O => \N__2912\,
            I => \N__2909\
        );

    \I__709\ : Odrv4
    port map (
            O => \N__2909\,
            I => n688
        );

    \I__708\ : InMux
    port map (
            O => \N__2906\,
            I => \N__2903\
        );

    \I__707\ : LocalMux
    port map (
            O => \N__2903\,
            I => \N__2900\
        );

    \I__706\ : Odrv12
    port map (
            O => \N__2900\,
            I => n946
        );

    \I__705\ : InMux
    port map (
            O => \N__2897\,
            I => \N__2893\
        );

    \I__704\ : InMux
    port map (
            O => \N__2896\,
            I => \N__2889\
        );

    \I__703\ : LocalMux
    port map (
            O => \N__2893\,
            I => \N__2886\
        );

    \I__702\ : InMux
    port map (
            O => \N__2892\,
            I => \N__2883\
        );

    \I__701\ : LocalMux
    port map (
            O => \N__2889\,
            I => bit_cnt_3
        );

    \I__700\ : Odrv4
    port map (
            O => \N__2886\,
            I => bit_cnt_3
        );

    \I__699\ : LocalMux
    port map (
            O => \N__2883\,
            I => bit_cnt_3
        );

    \I__698\ : CascadeMux
    port map (
            O => \N__2876\,
            I => \N__2873\
        );

    \I__697\ : InMux
    port map (
            O => \N__2873\,
            I => \N__2869\
        );

    \I__696\ : CascadeMux
    port map (
            O => \N__2872\,
            I => \N__2864\
        );

    \I__695\ : LocalMux
    port map (
            O => \N__2869\,
            I => \N__2861\
        );

    \I__694\ : InMux
    port map (
            O => \N__2868\,
            I => \N__2856\
        );

    \I__693\ : InMux
    port map (
            O => \N__2867\,
            I => \N__2856\
        );

    \I__692\ : InMux
    port map (
            O => \N__2864\,
            I => \N__2853\
        );

    \I__691\ : Odrv4
    port map (
            O => \N__2861\,
            I => bit_cnt_2
        );

    \I__690\ : LocalMux
    port map (
            O => \N__2856\,
            I => bit_cnt_2
        );

    \I__689\ : LocalMux
    port map (
            O => \N__2853\,
            I => bit_cnt_2
        );

    \I__688\ : InMux
    port map (
            O => \N__2846\,
            I => \N__2843\
        );

    \I__687\ : LocalMux
    port map (
            O => \N__2843\,
            I => \N__2836\
        );

    \I__686\ : InMux
    port map (
            O => \N__2842\,
            I => \N__2829\
        );

    \I__685\ : InMux
    port map (
            O => \N__2841\,
            I => \N__2829\
        );

    \I__684\ : InMux
    port map (
            O => \N__2840\,
            I => \N__2829\
        );

    \I__683\ : InMux
    port map (
            O => \N__2839\,
            I => \N__2826\
        );

    \I__682\ : Odrv4
    port map (
            O => \N__2836\,
            I => bit_cnt_1
        );

    \I__681\ : LocalMux
    port map (
            O => \N__2829\,
            I => bit_cnt_1
        );

    \I__680\ : LocalMux
    port map (
            O => \N__2826\,
            I => bit_cnt_1
        );

    \I__679\ : InMux
    port map (
            O => \N__2819\,
            I => \N__2816\
        );

    \I__678\ : LocalMux
    port map (
            O => \N__2816\,
            I => \N__2813\
        );

    \I__677\ : Odrv4
    port map (
            O => \N__2813\,
            I => \dac_state_2_N_72_2\
        );

    \I__676\ : CEMux
    port map (
            O => \N__2810\,
            I => \N__2807\
        );

    \I__675\ : LocalMux
    port map (
            O => \N__2807\,
            I => \N__2804\
        );

    \I__674\ : Span4Mux_v
    port map (
            O => \N__2804\,
            I => \N__2801\
        );

    \I__673\ : Odrv4
    port map (
            O => \N__2801\,
            I => n534
        );

    \I__672\ : CascadeMux
    port map (
            O => \N__2798\,
            I => \N__2795\
        );

    \I__671\ : InMux
    port map (
            O => \N__2795\,
            I => \N__2788\
        );

    \I__670\ : CascadeMux
    port map (
            O => \N__2794\,
            I => \N__2782\
        );

    \I__669\ : InMux
    port map (
            O => \N__2793\,
            I => \N__2779\
        );

    \I__668\ : InMux
    port map (
            O => \N__2792\,
            I => \N__2775\
        );

    \I__667\ : SRMux
    port map (
            O => \N__2791\,
            I => \N__2772\
        );

    \I__666\ : LocalMux
    port map (
            O => \N__2788\,
            I => \N__2769\
        );

    \I__665\ : InMux
    port map (
            O => \N__2787\,
            I => \N__2764\
        );

    \I__664\ : InMux
    port map (
            O => \N__2786\,
            I => \N__2764\
        );

    \I__663\ : InMux
    port map (
            O => \N__2785\,
            I => \N__2761\
        );

    \I__662\ : InMux
    port map (
            O => \N__2782\,
            I => \N__2757\
        );

    \I__661\ : LocalMux
    port map (
            O => \N__2779\,
            I => \N__2754\
        );

    \I__660\ : CascadeMux
    port map (
            O => \N__2778\,
            I => \N__2749\
        );

    \I__659\ : LocalMux
    port map (
            O => \N__2775\,
            I => \N__2744\
        );

    \I__658\ : LocalMux
    port map (
            O => \N__2772\,
            I => \N__2735\
        );

    \I__657\ : Span4Mux_h
    port map (
            O => \N__2769\,
            I => \N__2735\
        );

    \I__656\ : LocalMux
    port map (
            O => \N__2764\,
            I => \N__2735\
        );

    \I__655\ : LocalMux
    port map (
            O => \N__2761\,
            I => \N__2735\
        );

    \I__654\ : InMux
    port map (
            O => \N__2760\,
            I => \N__2732\
        );

    \I__653\ : LocalMux
    port map (
            O => \N__2757\,
            I => \N__2727\
        );

    \I__652\ : Span4Mux_h
    port map (
            O => \N__2754\,
            I => \N__2727\
        );

    \I__651\ : InMux
    port map (
            O => \N__2753\,
            I => \N__2720\
        );

    \I__650\ : InMux
    port map (
            O => \N__2752\,
            I => \N__2720\
        );

    \I__649\ : InMux
    port map (
            O => \N__2749\,
            I => \N__2720\
        );

    \I__648\ : InMux
    port map (
            O => \N__2748\,
            I => \N__2715\
        );

    \I__647\ : InMux
    port map (
            O => \N__2747\,
            I => \N__2715\
        );

    \I__646\ : Odrv4
    port map (
            O => \N__2744\,
            I => dac_state_2
        );

    \I__645\ : Odrv4
    port map (
            O => \N__2735\,
            I => dac_state_2
        );

    \I__644\ : LocalMux
    port map (
            O => \N__2732\,
            I => dac_state_2
        );

    \I__643\ : Odrv4
    port map (
            O => \N__2727\,
            I => dac_state_2
        );

    \I__642\ : LocalMux
    port map (
            O => \N__2720\,
            I => dac_state_2
        );

    \I__641\ : LocalMux
    port map (
            O => \N__2715\,
            I => dac_state_2
        );

    \I__640\ : InMux
    port map (
            O => \N__2702\,
            I => \N__2667\
        );

    \I__639\ : InMux
    port map (
            O => \N__2701\,
            I => \N__2667\
        );

    \I__638\ : InMux
    port map (
            O => \N__2700\,
            I => \N__2667\
        );

    \I__637\ : InMux
    port map (
            O => \N__2699\,
            I => \N__2667\
        );

    \I__636\ : InMux
    port map (
            O => \N__2698\,
            I => \N__2667\
        );

    \I__635\ : InMux
    port map (
            O => \N__2697\,
            I => \N__2667\
        );

    \I__634\ : InMux
    port map (
            O => \N__2696\,
            I => \N__2667\
        );

    \I__633\ : InMux
    port map (
            O => \N__2695\,
            I => \N__2667\
        );

    \I__632\ : InMux
    port map (
            O => \N__2694\,
            I => \N__2660\
        );

    \I__631\ : InMux
    port map (
            O => \N__2693\,
            I => \N__2660\
        );

    \I__630\ : InMux
    port map (
            O => \N__2692\,
            I => \N__2660\
        );

    \I__629\ : InMux
    port map (
            O => \N__2691\,
            I => \N__2649\
        );

    \I__628\ : InMux
    port map (
            O => \N__2690\,
            I => \N__2649\
        );

    \I__627\ : InMux
    port map (
            O => \N__2689\,
            I => \N__2649\
        );

    \I__626\ : InMux
    port map (
            O => \N__2688\,
            I => \N__2649\
        );

    \I__625\ : InMux
    port map (
            O => \N__2687\,
            I => \N__2649\
        );

    \I__624\ : InMux
    port map (
            O => \N__2686\,
            I => \N__2646\
        );

    \I__623\ : InMux
    port map (
            O => \N__2685\,
            I => \N__2636\
        );

    \I__622\ : InMux
    port map (
            O => \N__2684\,
            I => \N__2633\
        );

    \I__621\ : LocalMux
    port map (
            O => \N__2667\,
            I => \N__2625\
        );

    \I__620\ : LocalMux
    port map (
            O => \N__2660\,
            I => \N__2625\
        );

    \I__619\ : LocalMux
    port map (
            O => \N__2649\,
            I => \N__2625\
        );

    \I__618\ : LocalMux
    port map (
            O => \N__2646\,
            I => \N__2622\
        );

    \I__617\ : InMux
    port map (
            O => \N__2645\,
            I => \N__2614\
        );

    \I__616\ : InMux
    port map (
            O => \N__2644\,
            I => \N__2614\
        );

    \I__615\ : InMux
    port map (
            O => \N__2643\,
            I => \N__2614\
        );

    \I__614\ : InMux
    port map (
            O => \N__2642\,
            I => \N__2611\
        );

    \I__613\ : InMux
    port map (
            O => \N__2641\,
            I => \N__2604\
        );

    \I__612\ : InMux
    port map (
            O => \N__2640\,
            I => \N__2604\
        );

    \I__611\ : InMux
    port map (
            O => \N__2639\,
            I => \N__2604\
        );

    \I__610\ : LocalMux
    port map (
            O => \N__2636\,
            I => \N__2599\
        );

    \I__609\ : LocalMux
    port map (
            O => \N__2633\,
            I => \N__2599\
        );

    \I__608\ : InMux
    port map (
            O => \N__2632\,
            I => \N__2595\
        );

    \I__607\ : Span4Mux_v
    port map (
            O => \N__2625\,
            I => \N__2590\
        );

    \I__606\ : Span4Mux_v
    port map (
            O => \N__2622\,
            I => \N__2590\
        );

    \I__605\ : InMux
    port map (
            O => \N__2621\,
            I => \N__2587\
        );

    \I__604\ : LocalMux
    port map (
            O => \N__2614\,
            I => \N__2584\
        );

    \I__603\ : LocalMux
    port map (
            O => \N__2611\,
            I => \N__2579\
        );

    \I__602\ : LocalMux
    port map (
            O => \N__2604\,
            I => \N__2579\
        );

    \I__601\ : Span4Mux_h
    port map (
            O => \N__2599\,
            I => \N__2576\
        );

    \I__600\ : InMux
    port map (
            O => \N__2598\,
            I => \N__2573\
        );

    \I__599\ : LocalMux
    port map (
            O => \N__2595\,
            I => dac_state_1
        );

    \I__598\ : Odrv4
    port map (
            O => \N__2590\,
            I => dac_state_1
        );

    \I__597\ : LocalMux
    port map (
            O => \N__2587\,
            I => dac_state_1
        );

    \I__596\ : Odrv12
    port map (
            O => \N__2584\,
            I => dac_state_1
        );

    \I__595\ : Odrv4
    port map (
            O => \N__2579\,
            I => dac_state_1
        );

    \I__594\ : Odrv4
    port map (
            O => \N__2576\,
            I => dac_state_1
        );

    \I__593\ : LocalMux
    port map (
            O => \N__2573\,
            I => dac_state_1
        );

    \I__592\ : InMux
    port map (
            O => \N__2558\,
            I => \N__2554\
        );

    \I__591\ : InMux
    port map (
            O => \N__2557\,
            I => \N__2546\
        );

    \I__590\ : LocalMux
    port map (
            O => \N__2554\,
            I => \N__2539\
        );

    \I__589\ : InMux
    port map (
            O => \N__2553\,
            I => \N__2536\
        );

    \I__588\ : InMux
    port map (
            O => \N__2552\,
            I => \N__2531\
        );

    \I__587\ : InMux
    port map (
            O => \N__2551\,
            I => \N__2531\
        );

    \I__586\ : InMux
    port map (
            O => \N__2550\,
            I => \N__2523\
        );

    \I__585\ : InMux
    port map (
            O => \N__2549\,
            I => \N__2523\
        );

    \I__584\ : LocalMux
    port map (
            O => \N__2546\,
            I => \N__2520\
        );

    \I__583\ : InMux
    port map (
            O => \N__2545\,
            I => \N__2515\
        );

    \I__582\ : InMux
    port map (
            O => \N__2544\,
            I => \N__2512\
        );

    \I__581\ : InMux
    port map (
            O => \N__2543\,
            I => \N__2509\
        );

    \I__580\ : InMux
    port map (
            O => \N__2542\,
            I => \N__2506\
        );

    \I__579\ : Span4Mux_v
    port map (
            O => \N__2539\,
            I => \N__2499\
        );

    \I__578\ : LocalMux
    port map (
            O => \N__2536\,
            I => \N__2499\
        );

    \I__577\ : LocalMux
    port map (
            O => \N__2531\,
            I => \N__2499\
        );

    \I__576\ : InMux
    port map (
            O => \N__2530\,
            I => \N__2494\
        );

    \I__575\ : InMux
    port map (
            O => \N__2529\,
            I => \N__2494\
        );

    \I__574\ : InMux
    port map (
            O => \N__2528\,
            I => \N__2491\
        );

    \I__573\ : LocalMux
    port map (
            O => \N__2523\,
            I => \N__2486\
        );

    \I__572\ : Span4Mux_h
    port map (
            O => \N__2520\,
            I => \N__2486\
        );

    \I__571\ : InMux
    port map (
            O => \N__2519\,
            I => \N__2481\
        );

    \I__570\ : InMux
    port map (
            O => \N__2518\,
            I => \N__2481\
        );

    \I__569\ : LocalMux
    port map (
            O => \N__2515\,
            I => dac_state_0
        );

    \I__568\ : LocalMux
    port map (
            O => \N__2512\,
            I => dac_state_0
        );

    \I__567\ : LocalMux
    port map (
            O => \N__2509\,
            I => dac_state_0
        );

    \I__566\ : LocalMux
    port map (
            O => \N__2506\,
            I => dac_state_0
        );

    \I__565\ : Odrv4
    port map (
            O => \N__2499\,
            I => dac_state_0
        );

    \I__564\ : LocalMux
    port map (
            O => \N__2494\,
            I => dac_state_0
        );

    \I__563\ : LocalMux
    port map (
            O => \N__2491\,
            I => dac_state_0
        );

    \I__562\ : Odrv4
    port map (
            O => \N__2486\,
            I => dac_state_0
        );

    \I__561\ : LocalMux
    port map (
            O => \N__2481\,
            I => dac_state_0
        );

    \I__560\ : InMux
    port map (
            O => \N__2462\,
            I => \N__2456\
        );

    \I__559\ : CascadeMux
    port map (
            O => \N__2461\,
            I => \N__2453\
        );

    \I__558\ : CascadeMux
    port map (
            O => \N__2460\,
            I => \N__2450\
        );

    \I__557\ : InMux
    port map (
            O => \N__2459\,
            I => \N__2445\
        );

    \I__556\ : LocalMux
    port map (
            O => \N__2456\,
            I => \N__2442\
        );

    \I__555\ : InMux
    port map (
            O => \N__2453\,
            I => \N__2435\
        );

    \I__554\ : InMux
    port map (
            O => \N__2450\,
            I => \N__2435\
        );

    \I__553\ : InMux
    port map (
            O => \N__2449\,
            I => \N__2435\
        );

    \I__552\ : InMux
    port map (
            O => \N__2448\,
            I => \N__2432\
        );

    \I__551\ : LocalMux
    port map (
            O => \N__2445\,
            I => \N__2429\
        );

    \I__550\ : Odrv4
    port map (
            O => \N__2442\,
            I => bit_cnt_0
        );

    \I__549\ : LocalMux
    port map (
            O => \N__2435\,
            I => bit_cnt_0
        );

    \I__548\ : LocalMux
    port map (
            O => \N__2432\,
            I => bit_cnt_0
        );

    \I__547\ : Odrv4
    port map (
            O => \N__2429\,
            I => bit_cnt_0
        );

    \I__546\ : ClkMux
    port map (
            O => \N__2420\,
            I => \N__2412\
        );

    \I__545\ : ClkMux
    port map (
            O => \N__2419\,
            I => \N__2409\
        );

    \I__544\ : ClkMux
    port map (
            O => \N__2418\,
            I => \N__2406\
        );

    \I__543\ : ClkMux
    port map (
            O => \N__2417\,
            I => \N__2403\
        );

    \I__542\ : ClkMux
    port map (
            O => \N__2416\,
            I => \N__2400\
        );

    \I__541\ : ClkMux
    port map (
            O => \N__2415\,
            I => \N__2396\
        );

    \I__540\ : LocalMux
    port map (
            O => \N__2412\,
            I => \N__2389\
        );

    \I__539\ : LocalMux
    port map (
            O => \N__2409\,
            I => \N__2380\
        );

    \I__538\ : LocalMux
    port map (
            O => \N__2406\,
            I => \N__2380\
        );

    \I__537\ : LocalMux
    port map (
            O => \N__2403\,
            I => \N__2380\
        );

    \I__536\ : LocalMux
    port map (
            O => \N__2400\,
            I => \N__2380\
        );

    \I__535\ : ClkMux
    port map (
            O => \N__2399\,
            I => \N__2377\
        );

    \I__534\ : LocalMux
    port map (
            O => \N__2396\,
            I => \N__2372\
        );

    \I__533\ : ClkMux
    port map (
            O => \N__2395\,
            I => \N__2369\
        );

    \I__532\ : ClkMux
    port map (
            O => \N__2394\,
            I => \N__2366\
        );

    \I__531\ : ClkMux
    port map (
            O => \N__2393\,
            I => \N__2363\
        );

    \I__530\ : ClkMux
    port map (
            O => \N__2392\,
            I => \N__2360\
        );

    \I__529\ : Span4Mux_h
    port map (
            O => \N__2389\,
            I => \N__2355\
        );

    \I__528\ : Span4Mux_v
    port map (
            O => \N__2380\,
            I => \N__2355\
        );

    \I__527\ : LocalMux
    port map (
            O => \N__2377\,
            I => \N__2352\
        );

    \I__526\ : ClkMux
    port map (
            O => \N__2376\,
            I => \N__2349\
        );

    \I__525\ : ClkMux
    port map (
            O => \N__2375\,
            I => \N__2345\
        );

    \I__524\ : Span4Mux_h
    port map (
            O => \N__2372\,
            I => \N__2334\
        );

    \I__523\ : LocalMux
    port map (
            O => \N__2369\,
            I => \N__2334\
        );

    \I__522\ : LocalMux
    port map (
            O => \N__2366\,
            I => \N__2334\
        );

    \I__521\ : LocalMux
    port map (
            O => \N__2363\,
            I => \N__2334\
        );

    \I__520\ : LocalMux
    port map (
            O => \N__2360\,
            I => \N__2334\
        );

    \I__519\ : Span4Mux_v
    port map (
            O => \N__2355\,
            I => \N__2327\
        );

    \I__518\ : Span4Mux_h
    port map (
            O => \N__2352\,
            I => \N__2327\
        );

    \I__517\ : LocalMux
    port map (
            O => \N__2349\,
            I => \N__2327\
        );

    \I__516\ : ClkMux
    port map (
            O => \N__2348\,
            I => \N__2324\
        );

    \I__515\ : LocalMux
    port map (
            O => \N__2345\,
            I => \N__2321\
        );

    \I__514\ : Span4Mux_v
    port map (
            O => \N__2334\,
            I => \N__2314\
        );

    \I__513\ : Span4Mux_h
    port map (
            O => \N__2327\,
            I => \N__2314\
        );

    \I__512\ : LocalMux
    port map (
            O => \N__2324\,
            I => \N__2314\
        );

    \I__511\ : Span4Mux_v
    port map (
            O => \N__2321\,
            I => \N__2311\
        );

    \I__510\ : Span4Mux_v
    port map (
            O => \N__2314\,
            I => \N__2308\
        );

    \I__509\ : Sp12to4
    port map (
            O => \N__2311\,
            I => \N__2305\
        );

    \I__508\ : Span4Mux_h
    port map (
            O => \N__2308\,
            I => \N__2302\
        );

    \I__507\ : Span12Mux_v
    port map (
            O => \N__2305\,
            I => \N__2299\
        );

    \I__506\ : Span4Mux_v
    port map (
            O => \N__2302\,
            I => \N__2296\
        );

    \I__505\ : Odrv12
    port map (
            O => \N__2299\,
            I => \CLK\
        );

    \I__504\ : Odrv4
    port map (
            O => \N__2296\,
            I => \CLK\
        );

    \I__503\ : CEMux
    port map (
            O => \N__2291\,
            I => \N__2288\
        );

    \I__502\ : LocalMux
    port map (
            O => \N__2288\,
            I => n481
        );

    \I__501\ : SRMux
    port map (
            O => \N__2285\,
            I => \N__2281\
        );

    \I__500\ : SRMux
    port map (
            O => \N__2284\,
            I => \N__2278\
        );

    \I__499\ : LocalMux
    port map (
            O => \N__2281\,
            I => \N__2275\
        );

    \I__498\ : LocalMux
    port map (
            O => \N__2278\,
            I => \N__2272\
        );

    \I__497\ : Odrv12
    port map (
            O => \N__2275\,
            I => n691
        );

    \I__496\ : Odrv12
    port map (
            O => \N__2272\,
            I => n691
        );

    \I__495\ : CascadeMux
    port map (
            O => \N__2267\,
            I => \N__2264\
        );

    \I__494\ : InMux
    port map (
            O => \N__2264\,
            I => \N__2257\
        );

    \I__493\ : InMux
    port map (
            O => \N__2263\,
            I => \N__2257\
        );

    \I__492\ : InMux
    port map (
            O => \N__2262\,
            I => \N__2254\
        );

    \I__491\ : LocalMux
    port map (
            O => \N__2257\,
            I => \N__2249\
        );

    \I__490\ : LocalMux
    port map (
            O => \N__2254\,
            I => \N__2249\
        );

    \I__489\ : Span12Mux_v
    port map (
            O => \N__2249\,
            I => \N__2246\
        );

    \I__488\ : Odrv12
    port map (
            O => \N__2246\,
            I => \DATA_3_\
        );

    \I__487\ : CascadeMux
    port map (
            O => \N__2243\,
            I => \N__2240\
        );

    \I__486\ : InMux
    port map (
            O => \N__2240\,
            I => \N__2237\
        );

    \I__485\ : LocalMux
    port map (
            O => \N__2237\,
            I => dac_buf_3
        );

    \I__484\ : CascadeMux
    port map (
            O => \N__2234\,
            I => \N__2230\
        );

    \I__483\ : CascadeMux
    port map (
            O => \N__2233\,
            I => \N__2227\
        );

    \I__482\ : InMux
    port map (
            O => \N__2230\,
            I => \N__2224\
        );

    \I__481\ : InMux
    port map (
            O => \N__2227\,
            I => \N__2221\
        );

    \I__480\ : LocalMux
    port map (
            O => \N__2224\,
            I => \N__2215\
        );

    \I__479\ : LocalMux
    port map (
            O => \N__2221\,
            I => \N__2215\
        );

    \I__478\ : InMux
    port map (
            O => \N__2220\,
            I => \N__2212\
        );

    \I__477\ : Span4Mux_v
    port map (
            O => \N__2215\,
            I => \N__2209\
        );

    \I__476\ : LocalMux
    port map (
            O => \N__2212\,
            I => \N__2206\
        );

    \I__475\ : Span4Mux_v
    port map (
            O => \N__2209\,
            I => \N__2203\
        );

    \I__474\ : Span4Mux_h
    port map (
            O => \N__2206\,
            I => \N__2200\
        );

    \I__473\ : Sp12to4
    port map (
            O => \N__2203\,
            I => \N__2197\
        );

    \I__472\ : Span4Mux_v
    port map (
            O => \N__2200\,
            I => \N__2194\
        );

    \I__471\ : Odrv12
    port map (
            O => \N__2197\,
            I => \DATA_2_\
        );

    \I__470\ : Odrv4
    port map (
            O => \N__2194\,
            I => \DATA_2_\
        );

    \I__469\ : InMux
    port map (
            O => \N__2189\,
            I => \N__2186\
        );

    \I__468\ : LocalMux
    port map (
            O => \N__2186\,
            I => dac_buf_2
        );

    \I__467\ : CascadeMux
    port map (
            O => \N__2183\,
            I => \N__2180\
        );

    \I__466\ : InMux
    port map (
            O => \N__2180\,
            I => \N__2174\
        );

    \I__465\ : InMux
    port map (
            O => \N__2179\,
            I => \N__2174\
        );

    \I__464\ : LocalMux
    port map (
            O => \N__2174\,
            I => \N__2170\
        );

    \I__463\ : InMux
    port map (
            O => \N__2173\,
            I => \N__2167\
        );

    \I__462\ : Span4Mux_v
    port map (
            O => \N__2170\,
            I => \N__2164\
        );

    \I__461\ : LocalMux
    port map (
            O => \N__2167\,
            I => \N__2161\
        );

    \I__460\ : Span4Mux_h
    port map (
            O => \N__2164\,
            I => \N__2158\
        );

    \I__459\ : Span4Mux_v
    port map (
            O => \N__2161\,
            I => \N__2155\
        );

    \I__458\ : Span4Mux_v
    port map (
            O => \N__2158\,
            I => \N__2150\
        );

    \I__457\ : Span4Mux_h
    port map (
            O => \N__2155\,
            I => \N__2150\
        );

    \I__456\ : Odrv4
    port map (
            O => \N__2150\,
            I => \DATA_1_\
        );

    \I__455\ : InMux
    port map (
            O => \N__2147\,
            I => \N__2144\
        );

    \I__454\ : LocalMux
    port map (
            O => \N__2144\,
            I => dac_buf_0
        );

    \I__453\ : InMux
    port map (
            O => \N__2141\,
            I => \N__2138\
        );

    \I__452\ : LocalMux
    port map (
            O => \N__2138\,
            I => dac_buf_1
        );

    \I__451\ : CEMux
    port map (
            O => \N__2135\,
            I => \N__2132\
        );

    \I__450\ : LocalMux
    port map (
            O => \N__2132\,
            I => \N__2127\
        );

    \I__449\ : CEMux
    port map (
            O => \N__2131\,
            I => \N__2124\
        );

    \I__448\ : CEMux
    port map (
            O => \N__2130\,
            I => \N__2121\
        );

    \I__447\ : Span4Mux_h
    port map (
            O => \N__2127\,
            I => \N__2117\
        );

    \I__446\ : LocalMux
    port map (
            O => \N__2124\,
            I => \N__2114\
        );

    \I__445\ : LocalMux
    port map (
            O => \N__2121\,
            I => \N__2111\
        );

    \I__444\ : InMux
    port map (
            O => \N__2120\,
            I => \N__2108\
        );

    \I__443\ : Odrv4
    port map (
            O => \N__2117\,
            I => n554
        );

    \I__442\ : Odrv12
    port map (
            O => \N__2114\,
            I => n554
        );

    \I__441\ : Odrv4
    port map (
            O => \N__2111\,
            I => n554
        );

    \I__440\ : LocalMux
    port map (
            O => \N__2108\,
            I => n554
        );

    \I__439\ : SRMux
    port map (
            O => \N__2099\,
            I => \N__2094\
        );

    \I__438\ : SRMux
    port map (
            O => \N__2098\,
            I => \N__2091\
        );

    \I__437\ : SRMux
    port map (
            O => \N__2097\,
            I => \N__2088\
        );

    \I__436\ : LocalMux
    port map (
            O => \N__2094\,
            I => n693
        );

    \I__435\ : LocalMux
    port map (
            O => \N__2091\,
            I => n693
        );

    \I__434\ : LocalMux
    port map (
            O => \N__2088\,
            I => n693
        );

    \I__433\ : CEMux
    port map (
            O => \N__2081\,
            I => \N__2078\
        );

    \I__432\ : LocalMux
    port map (
            O => \N__2078\,
            I => \N__2075\
        );

    \I__431\ : Span4Mux_v
    port map (
            O => \N__2075\,
            I => \N__2071\
        );

    \I__430\ : CEMux
    port map (
            O => \N__2074\,
            I => \N__2068\
        );

    \I__429\ : Span4Mux_v
    port map (
            O => \N__2071\,
            I => \N__2062\
        );

    \I__428\ : LocalMux
    port map (
            O => \N__2068\,
            I => \N__2062\
        );

    \I__427\ : InMux
    port map (
            O => \N__2067\,
            I => \N__2059\
        );

    \I__426\ : Odrv4
    port map (
            O => \N__2062\,
            I => n520
        );

    \I__425\ : LocalMux
    port map (
            O => \N__2059\,
            I => n520
        );

    \I__424\ : InMux
    port map (
            O => \N__2054\,
            I => \N__2048\
        );

    \I__423\ : InMux
    port map (
            O => \N__2053\,
            I => \N__2048\
        );

    \I__422\ : LocalMux
    port map (
            O => \N__2048\,
            I => \N__2045\
        );

    \I__421\ : Span4Mux_v
    port map (
            O => \N__2045\,
            I => \N__2041\
        );

    \I__420\ : InMux
    port map (
            O => \N__2044\,
            I => \N__2038\
        );

    \I__419\ : Span4Mux_h
    port map (
            O => \N__2041\,
            I => \N__2035\
        );

    \I__418\ : LocalMux
    port map (
            O => \N__2038\,
            I => \N__2032\
        );

    \I__417\ : Odrv4
    port map (
            O => \N__2035\,
            I => \DATA_10_\
        );

    \I__416\ : Odrv12
    port map (
            O => \N__2032\,
            I => \DATA_10_\
        );

    \I__415\ : InMux
    port map (
            O => \N__2027\,
            I => \N__2021\
        );

    \I__414\ : InMux
    port map (
            O => \N__2026\,
            I => \N__2021\
        );

    \I__413\ : LocalMux
    port map (
            O => \N__2021\,
            I => dac_data_10
        );

    \I__412\ : CascadeMux
    port map (
            O => \N__2018\,
            I => \N__2015\
        );

    \I__411\ : InMux
    port map (
            O => \N__2015\,
            I => \N__2009\
        );

    \I__410\ : InMux
    port map (
            O => \N__2014\,
            I => \N__2009\
        );

    \I__409\ : LocalMux
    port map (
            O => \N__2009\,
            I => dac_data_3
        );

    \I__408\ : CascadeMux
    port map (
            O => \N__2006\,
            I => \N__2003\
        );

    \I__407\ : InMux
    port map (
            O => \N__2003\,
            I => \N__1999\
        );

    \I__406\ : InMux
    port map (
            O => \N__2002\,
            I => \N__1996\
        );

    \I__405\ : LocalMux
    port map (
            O => \N__1999\,
            I => dac_data_8
        );

    \I__404\ : LocalMux
    port map (
            O => \N__1996\,
            I => dac_data_8
        );

    \I__403\ : InMux
    port map (
            O => \N__1991\,
            I => \N__1988\
        );

    \I__402\ : LocalMux
    port map (
            O => \N__1988\,
            I => \N__1983\
        );

    \I__401\ : InMux
    port map (
            O => \N__1987\,
            I => \N__1980\
        );

    \I__400\ : InMux
    port map (
            O => \N__1986\,
            I => \N__1977\
        );

    \I__399\ : Sp12to4
    port map (
            O => \N__1983\,
            I => \N__1970\
        );

    \I__398\ : LocalMux
    port map (
            O => \N__1980\,
            I => \N__1970\
        );

    \I__397\ : LocalMux
    port map (
            O => \N__1977\,
            I => \N__1970\
        );

    \I__396\ : Span12Mux_v
    port map (
            O => \N__1970\,
            I => \N__1967\
        );

    \I__395\ : Odrv12
    port map (
            O => \N__1967\,
            I => \DATA_8_\
        );

    \I__394\ : CascadeMux
    port map (
            O => \N__1964\,
            I => \n20_cascade_\
        );

    \I__393\ : InMux
    port map (
            O => \N__1961\,
            I => \N__1958\
        );

    \I__392\ : LocalMux
    port map (
            O => \N__1958\,
            I => n26
        );

    \I__391\ : InMux
    port map (
            O => \N__1955\,
            I => \N__1952\
        );

    \I__390\ : LocalMux
    port map (
            O => \N__1952\,
            I => \N__1946\
        );

    \I__389\ : InMux
    port map (
            O => \N__1951\,
            I => \N__1943\
        );

    \I__388\ : InMux
    port map (
            O => \N__1950\,
            I => \N__1938\
        );

    \I__387\ : InMux
    port map (
            O => \N__1949\,
            I => \N__1938\
        );

    \I__386\ : Odrv12
    port map (
            O => \N__1946\,
            I => \SCLK_N_84\
        );

    \I__385\ : LocalMux
    port map (
            O => \N__1943\,
            I => \SCLK_N_84\
        );

    \I__384\ : LocalMux
    port map (
            O => \N__1938\,
            I => \SCLK_N_84\
        );

    \I__383\ : CascadeMux
    port map (
            O => \N__1931\,
            I => \n477_cascade_\
        );

    \I__382\ : IoInMux
    port map (
            O => \N__1928\,
            I => \N__1925\
        );

    \I__381\ : LocalMux
    port map (
            O => \N__1925\,
            I => \N__1922\
        );

    \I__380\ : Span4Mux_s0_h
    port map (
            O => \N__1922\,
            I => \N__1919\
        );

    \I__379\ : Span4Mux_h
    port map (
            O => \N__1919\,
            I => \N__1916\
        );

    \I__378\ : Sp12to4
    port map (
            O => \N__1916\,
            I => \N__1913\
        );

    \I__377\ : Span12Mux_v
    port map (
            O => \N__1913\,
            I => \N__1909\
        );

    \I__376\ : InMux
    port map (
            O => \N__1912\,
            I => \N__1906\
        );

    \I__375\ : Odrv12
    port map (
            O => \N__1909\,
            I => \SCLK\
        );

    \I__374\ : LocalMux
    port map (
            O => \N__1906\,
            I => \SCLK\
        );

    \I__373\ : CascadeMux
    port map (
            O => \N__1901\,
            I => \N__1898\
        );

    \I__372\ : InMux
    port map (
            O => \N__1898\,
            I => \N__1891\
        );

    \I__371\ : InMux
    port map (
            O => \N__1897\,
            I => \N__1891\
        );

    \I__370\ : InMux
    port map (
            O => \N__1896\,
            I => \N__1888\
        );

    \I__369\ : LocalMux
    port map (
            O => \N__1891\,
            I => \N__1885\
        );

    \I__368\ : LocalMux
    port map (
            O => \N__1888\,
            I => \N__1882\
        );

    \I__367\ : Span4Mux_v
    port map (
            O => \N__1885\,
            I => \N__1879\
        );

    \I__366\ : Span4Mux_v
    port map (
            O => \N__1882\,
            I => \N__1876\
        );

    \I__365\ : Span4Mux_h
    port map (
            O => \N__1879\,
            I => \N__1873\
        );

    \I__364\ : Span4Mux_h
    port map (
            O => \N__1876\,
            I => \N__1870\
        );

    \I__363\ : Odrv4
    port map (
            O => \N__1873\,
            I => \DATA_13_\
        );

    \I__362\ : Odrv4
    port map (
            O => \N__1870\,
            I => \DATA_13_\
        );

    \I__361\ : InMux
    port map (
            O => \N__1865\,
            I => \N__1859\
        );

    \I__360\ : InMux
    port map (
            O => \N__1864\,
            I => \N__1859\
        );

    \I__359\ : LocalMux
    port map (
            O => \N__1859\,
            I => dac_data_13
        );

    \I__358\ : InMux
    port map (
            O => \N__1856\,
            I => \N__1853\
        );

    \I__357\ : LocalMux
    port map (
            O => \N__1853\,
            I => n14
        );

    \I__356\ : CascadeMux
    port map (
            O => \N__1850\,
            I => \N__1846\
        );

    \I__355\ : InMux
    port map (
            O => \N__1849\,
            I => \N__1830\
        );

    \I__354\ : InMux
    port map (
            O => \N__1846\,
            I => \N__1830\
        );

    \I__353\ : InMux
    port map (
            O => \N__1845\,
            I => \N__1830\
        );

    \I__352\ : InMux
    port map (
            O => \N__1844\,
            I => \N__1825\
        );

    \I__351\ : InMux
    port map (
            O => \N__1843\,
            I => \N__1825\
        );

    \I__350\ : InMux
    port map (
            O => \N__1842\,
            I => \N__1822\
        );

    \I__349\ : CascadeMux
    port map (
            O => \N__1841\,
            I => \N__1814\
        );

    \I__348\ : InMux
    port map (
            O => \N__1840\,
            I => \N__1808\
        );

    \I__347\ : InMux
    port map (
            O => \N__1839\,
            I => \N__1808\
        );

    \I__346\ : InMux
    port map (
            O => \N__1838\,
            I => \N__1803\
        );

    \I__345\ : InMux
    port map (
            O => \N__1837\,
            I => \N__1803\
        );

    \I__344\ : LocalMux
    port map (
            O => \N__1830\,
            I => \N__1796\
        );

    \I__343\ : LocalMux
    port map (
            O => \N__1825\,
            I => \N__1796\
        );

    \I__342\ : LocalMux
    port map (
            O => \N__1822\,
            I => \N__1796\
        );

    \I__341\ : InMux
    port map (
            O => \N__1821\,
            I => \N__1793\
        );

    \I__340\ : InMux
    port map (
            O => \N__1820\,
            I => \N__1786\
        );

    \I__339\ : InMux
    port map (
            O => \N__1819\,
            I => \N__1786\
        );

    \I__338\ : InMux
    port map (
            O => \N__1818\,
            I => \N__1786\
        );

    \I__337\ : InMux
    port map (
            O => \N__1817\,
            I => \N__1779\
        );

    \I__336\ : InMux
    port map (
            O => \N__1814\,
            I => \N__1779\
        );

    \I__335\ : InMux
    port map (
            O => \N__1813\,
            I => \N__1779\
        );

    \I__334\ : LocalMux
    port map (
            O => \N__1808\,
            I => n268
        );

    \I__333\ : LocalMux
    port map (
            O => \N__1803\,
            I => n268
        );

    \I__332\ : Odrv4
    port map (
            O => \N__1796\,
            I => n268
        );

    \I__331\ : LocalMux
    port map (
            O => \N__1793\,
            I => n268
        );

    \I__330\ : LocalMux
    port map (
            O => \N__1786\,
            I => n268
        );

    \I__329\ : LocalMux
    port map (
            O => \N__1779\,
            I => n268
        );

    \I__328\ : CascadeMux
    port map (
            O => \N__1766\,
            I => \N__1762\
        );

    \I__327\ : InMux
    port map (
            O => \N__1765\,
            I => \N__1757\
        );

    \I__326\ : InMux
    port map (
            O => \N__1762\,
            I => \N__1757\
        );

    \I__325\ : LocalMux
    port map (
            O => \N__1757\,
            I => \N__1753\
        );

    \I__324\ : InMux
    port map (
            O => \N__1756\,
            I => \N__1750\
        );

    \I__323\ : Span4Mux_h
    port map (
            O => \N__1753\,
            I => \N__1745\
        );

    \I__322\ : LocalMux
    port map (
            O => \N__1750\,
            I => \N__1745\
        );

    \I__321\ : Span4Mux_v
    port map (
            O => \N__1745\,
            I => \N__1742\
        );

    \I__320\ : Span4Mux_v
    port map (
            O => \N__1742\,
            I => \N__1739\
        );

    \I__319\ : Span4Mux_h
    port map (
            O => \N__1739\,
            I => \N__1736\
        );

    \I__318\ : Odrv4
    port map (
            O => \N__1736\,
            I => \DATA_5_\
        );

    \I__317\ : InMux
    port map (
            O => \N__1733\,
            I => \N__1712\
        );

    \I__316\ : InMux
    port map (
            O => \N__1732\,
            I => \N__1712\
        );

    \I__315\ : InMux
    port map (
            O => \N__1731\,
            I => \N__1712\
        );

    \I__314\ : InMux
    port map (
            O => \N__1730\,
            I => \N__1705\
        );

    \I__313\ : InMux
    port map (
            O => \N__1729\,
            I => \N__1705\
        );

    \I__312\ : InMux
    port map (
            O => \N__1728\,
            I => \N__1705\
        );

    \I__311\ : InMux
    port map (
            O => \N__1727\,
            I => \N__1698\
        );

    \I__310\ : InMux
    port map (
            O => \N__1726\,
            I => \N__1698\
        );

    \I__309\ : InMux
    port map (
            O => \N__1725\,
            I => \N__1698\
        );

    \I__308\ : InMux
    port map (
            O => \N__1724\,
            I => \N__1689\
        );

    \I__307\ : InMux
    port map (
            O => \N__1723\,
            I => \N__1689\
        );

    \I__306\ : InMux
    port map (
            O => \N__1722\,
            I => \N__1689\
        );

    \I__305\ : InMux
    port map (
            O => \N__1721\,
            I => \N__1689\
        );

    \I__304\ : InMux
    port map (
            O => \N__1720\,
            I => \N__1684\
        );

    \I__303\ : InMux
    port map (
            O => \N__1719\,
            I => \N__1684\
        );

    \I__302\ : LocalMux
    port map (
            O => \N__1712\,
            I => n498
        );

    \I__301\ : LocalMux
    port map (
            O => \N__1705\,
            I => n498
        );

    \I__300\ : LocalMux
    port map (
            O => \N__1698\,
            I => n498
        );

    \I__299\ : LocalMux
    port map (
            O => \N__1689\,
            I => n498
        );

    \I__298\ : LocalMux
    port map (
            O => \N__1684\,
            I => n498
        );

    \I__297\ : InMux
    port map (
            O => \N__1673\,
            I => \N__1667\
        );

    \I__296\ : InMux
    port map (
            O => \N__1672\,
            I => \N__1667\
        );

    \I__295\ : LocalMux
    port map (
            O => \N__1667\,
            I => dac_data_5
        );

    \I__294\ : InMux
    port map (
            O => \N__1664\,
            I => \N__1661\
        );

    \I__293\ : LocalMux
    port map (
            O => \N__1661\,
            I => n21
        );

    \I__292\ : CascadeMux
    port map (
            O => \N__1658\,
            I => \n520_cascade_\
        );

    \I__291\ : CascadeMux
    port map (
            O => \N__1655\,
            I => \n360_cascade_\
        );

    \I__290\ : CascadeMux
    port map (
            O => \N__1652\,
            I => \n498_cascade_\
        );

    \I__289\ : InMux
    port map (
            O => \N__1649\,
            I => \N__1646\
        );

    \I__288\ : LocalMux
    port map (
            O => \N__1646\,
            I => \N__1642\
        );

    \I__287\ : CascadeMux
    port map (
            O => \N__1645\,
            I => \N__1639\
        );

    \I__286\ : Span4Mux_v
    port map (
            O => \N__1642\,
            I => \N__1635\
        );

    \I__285\ : InMux
    port map (
            O => \N__1639\,
            I => \N__1630\
        );

    \I__284\ : InMux
    port map (
            O => \N__1638\,
            I => \N__1630\
        );

    \I__283\ : Span4Mux_h
    port map (
            O => \N__1635\,
            I => \N__1625\
        );

    \I__282\ : LocalMux
    port map (
            O => \N__1630\,
            I => \N__1625\
        );

    \I__281\ : Span4Mux_v
    port map (
            O => \N__1625\,
            I => \N__1622\
        );

    \I__280\ : Span4Mux_h
    port map (
            O => \N__1622\,
            I => \N__1619\
        );

    \I__279\ : Span4Mux_v
    port map (
            O => \N__1619\,
            I => \N__1616\
        );

    \I__278\ : Odrv4
    port map (
            O => \N__1616\,
            I => \DATA_12_\
        );

    \I__277\ : InMux
    port map (
            O => \N__1613\,
            I => \N__1607\
        );

    \I__276\ : InMux
    port map (
            O => \N__1612\,
            I => \N__1607\
        );

    \I__275\ : LocalMux
    port map (
            O => \N__1607\,
            I => dac_data_12
        );

    \I__274\ : InMux
    port map (
            O => \N__1604\,
            I => \N__1599\
        );

    \I__273\ : CascadeMux
    port map (
            O => \N__1603\,
            I => \N__1596\
        );

    \I__272\ : InMux
    port map (
            O => \N__1602\,
            I => \N__1593\
        );

    \I__271\ : LocalMux
    port map (
            O => \N__1599\,
            I => \N__1590\
        );

    \I__270\ : InMux
    port map (
            O => \N__1596\,
            I => \N__1587\
        );

    \I__269\ : LocalMux
    port map (
            O => \N__1593\,
            I => \N__1584\
        );

    \I__268\ : Span4Mux_h
    port map (
            O => \N__1590\,
            I => \N__1579\
        );

    \I__267\ : LocalMux
    port map (
            O => \N__1587\,
            I => \N__1579\
        );

    \I__266\ : Span4Mux_v
    port map (
            O => \N__1584\,
            I => \N__1576\
        );

    \I__265\ : Span4Mux_v
    port map (
            O => \N__1579\,
            I => \N__1573\
        );

    \I__264\ : Span4Mux_h
    port map (
            O => \N__1576\,
            I => \N__1568\
        );

    \I__263\ : Span4Mux_h
    port map (
            O => \N__1573\,
            I => \N__1568\
        );

    \I__262\ : Odrv4
    port map (
            O => \N__1568\,
            I => \DATA_9_\
        );

    \I__261\ : CascadeMux
    port map (
            O => \N__1565\,
            I => \N__1561\
        );

    \I__260\ : InMux
    port map (
            O => \N__1564\,
            I => \N__1556\
        );

    \I__259\ : InMux
    port map (
            O => \N__1561\,
            I => \N__1556\
        );

    \I__258\ : LocalMux
    port map (
            O => \N__1556\,
            I => \N__1552\
        );

    \I__257\ : InMux
    port map (
            O => \N__1555\,
            I => \N__1549\
        );

    \I__256\ : Span4Mux_h
    port map (
            O => \N__1552\,
            I => \N__1544\
        );

    \I__255\ : LocalMux
    port map (
            O => \N__1549\,
            I => \N__1544\
        );

    \I__254\ : Span4Mux_v
    port map (
            O => \N__1544\,
            I => \N__1541\
        );

    \I__253\ : Sp12to4
    port map (
            O => \N__1541\,
            I => \N__1538\
        );

    \I__252\ : Odrv12
    port map (
            O => \N__1538\,
            I => \DATA_4_\
        );

    \I__251\ : InMux
    port map (
            O => \N__1535\,
            I => \N__1532\
        );

    \I__250\ : LocalMux
    port map (
            O => \N__1532\,
            I => dac_buf_8
        );

    \I__249\ : InMux
    port map (
            O => \N__1529\,
            I => \N__1526\
        );

    \I__248\ : LocalMux
    port map (
            O => \N__1526\,
            I => dac_buf_9
        );

    \I__247\ : InMux
    port map (
            O => \N__1523\,
            I => \N__1520\
        );

    \I__246\ : LocalMux
    port map (
            O => \N__1520\,
            I => dac_buf_10
        );

    \I__245\ : CascadeMux
    port map (
            O => \N__1517\,
            I => \N__1513\
        );

    \I__244\ : InMux
    port map (
            O => \N__1516\,
            I => \N__1508\
        );

    \I__243\ : InMux
    port map (
            O => \N__1513\,
            I => \N__1508\
        );

    \I__242\ : LocalMux
    port map (
            O => \N__1508\,
            I => \N__1504\
        );

    \I__241\ : InMux
    port map (
            O => \N__1507\,
            I => \N__1501\
        );

    \I__240\ : Span4Mux_v
    port map (
            O => \N__1504\,
            I => \N__1496\
        );

    \I__239\ : LocalMux
    port map (
            O => \N__1501\,
            I => \N__1496\
        );

    \I__238\ : Span4Mux_v
    port map (
            O => \N__1496\,
            I => \N__1493\
        );

    \I__237\ : Span4Mux_h
    port map (
            O => \N__1493\,
            I => \N__1490\
        );

    \I__236\ : Odrv4
    port map (
            O => \N__1490\,
            I => \DATA_7_\
        );

    \I__235\ : InMux
    port map (
            O => \N__1487\,
            I => \N__1484\
        );

    \I__234\ : LocalMux
    port map (
            O => \N__1484\,
            I => dac_buf_7
        );

    \I__233\ : CascadeMux
    port map (
            O => \N__1481\,
            I => \N__1478\
        );

    \I__232\ : InMux
    port map (
            O => \N__1478\,
            I => \N__1474\
        );

    \I__231\ : InMux
    port map (
            O => \N__1477\,
            I => \N__1471\
        );

    \I__230\ : LocalMux
    port map (
            O => \N__1474\,
            I => \N__1467\
        );

    \I__229\ : LocalMux
    port map (
            O => \N__1471\,
            I => \N__1464\
        );

    \I__228\ : InMux
    port map (
            O => \N__1470\,
            I => \N__1461\
        );

    \I__227\ : Span4Mux_v
    port map (
            O => \N__1467\,
            I => \N__1454\
        );

    \I__226\ : Span4Mux_h
    port map (
            O => \N__1464\,
            I => \N__1454\
        );

    \I__225\ : LocalMux
    port map (
            O => \N__1461\,
            I => \N__1454\
        );

    \I__224\ : Span4Mux_v
    port map (
            O => \N__1454\,
            I => \N__1451\
        );

    \I__223\ : Span4Mux_h
    port map (
            O => \N__1451\,
            I => \N__1448\
        );

    \I__222\ : Odrv4
    port map (
            O => \N__1448\,
            I => \DATA_6_\
        );

    \I__221\ : InMux
    port map (
            O => \N__1445\,
            I => \N__1442\
        );

    \I__220\ : LocalMux
    port map (
            O => \N__1442\,
            I => dac_buf_6
        );

    \I__219\ : CascadeMux
    port map (
            O => \N__1439\,
            I => \N__1435\
        );

    \I__218\ : CascadeMux
    port map (
            O => \N__1438\,
            I => \N__1432\
        );

    \I__217\ : InMux
    port map (
            O => \N__1435\,
            I => \N__1429\
        );

    \I__216\ : InMux
    port map (
            O => \N__1432\,
            I => \N__1426\
        );

    \I__215\ : LocalMux
    port map (
            O => \N__1429\,
            I => \N__1422\
        );

    \I__214\ : LocalMux
    port map (
            O => \N__1426\,
            I => \N__1419\
        );

    \I__213\ : InMux
    port map (
            O => \N__1425\,
            I => \N__1416\
        );

    \I__212\ : Span4Mux_v
    port map (
            O => \N__1422\,
            I => \N__1411\
        );

    \I__211\ : Span4Mux_v
    port map (
            O => \N__1419\,
            I => \N__1411\
        );

    \I__210\ : LocalMux
    port map (
            O => \N__1416\,
            I => \N__1408\
        );

    \I__209\ : Sp12to4
    port map (
            O => \N__1411\,
            I => \N__1403\
        );

    \I__208\ : Sp12to4
    port map (
            O => \N__1408\,
            I => \N__1403\
        );

    \I__207\ : Odrv12
    port map (
            O => \N__1403\,
            I => \DATA_0_\
        );

    \I__206\ : InMux
    port map (
            O => \N__1400\,
            I => \N__1397\
        );

    \I__205\ : LocalMux
    port map (
            O => \N__1397\,
            I => \N__1393\
        );

    \I__204\ : InMux
    port map (
            O => \N__1396\,
            I => \N__1390\
        );

    \I__203\ : Odrv4
    port map (
            O => \N__1393\,
            I => dac_buf_15
        );

    \I__202\ : LocalMux
    port map (
            O => \N__1390\,
            I => dac_buf_15
        );

    \I__201\ : InMux
    port map (
            O => \N__1385\,
            I => \N__1382\
        );

    \I__200\ : LocalMux
    port map (
            O => \N__1382\,
            I => dac_buf_4
        );

    \I__199\ : InMux
    port map (
            O => \N__1379\,
            I => \N__1376\
        );

    \I__198\ : LocalMux
    port map (
            O => \N__1376\,
            I => dac_buf_5
        );

    \I__197\ : CEMux
    port map (
            O => \N__1373\,
            I => \N__1370\
        );

    \I__196\ : LocalMux
    port map (
            O => \N__1370\,
            I => \N__1367\
        );

    \I__195\ : Span4Mux_v
    port map (
            O => \N__1367\,
            I => \N__1364\
        );

    \I__194\ : Odrv4
    port map (
            O => \N__1364\,
            I => n473
        );

    \I__193\ : InMux
    port map (
            O => \N__1361\,
            I => \N__1355\
        );

    \I__192\ : InMux
    port map (
            O => \N__1360\,
            I => \N__1355\
        );

    \I__191\ : LocalMux
    port map (
            O => \N__1355\,
            I => dac_data_15
        );

    \I__190\ : InMux
    port map (
            O => \N__1352\,
            I => \N__1348\
        );

    \I__189\ : InMux
    port map (
            O => \N__1351\,
            I => \N__1345\
        );

    \I__188\ : LocalMux
    port map (
            O => \N__1348\,
            I => dac_data_9
        );

    \I__187\ : LocalMux
    port map (
            O => \N__1345\,
            I => dac_data_9
        );

    \I__186\ : InMux
    port map (
            O => \N__1340\,
            I => \N__1337\
        );

    \I__185\ : LocalMux
    port map (
            O => \N__1337\,
            I => n22
        );

    \I__184\ : CascadeMux
    port map (
            O => \N__1334\,
            I => \n24_cascade_\
        );

    \I__183\ : InMux
    port map (
            O => \N__1331\,
            I => \N__1328\
        );

    \I__182\ : LocalMux
    port map (
            O => \N__1328\,
            I => n23
        );

    \I__181\ : InMux
    port map (
            O => \N__1325\,
            I => \N__1322\
        );

    \I__180\ : LocalMux
    port map (
            O => \N__1322\,
            I => n18
        );

    \I__179\ : InMux
    port map (
            O => \N__1319\,
            I => \N__1316\
        );

    \I__178\ : LocalMux
    port map (
            O => \N__1316\,
            I => n17
        );

    \I__177\ : CascadeMux
    port map (
            O => \N__1313\,
            I => \n30_cascade_\
        );

    \I__176\ : CascadeMux
    port map (
            O => \N__1310\,
            I => \SCLK_N_84_cascade_\
        );

    \I__175\ : InMux
    port map (
            O => \N__1307\,
            I => \N__1303\
        );

    \I__174\ : CascadeMux
    port map (
            O => \N__1306\,
            I => \N__1299\
        );

    \I__173\ : LocalMux
    port map (
            O => \N__1303\,
            I => \N__1296\
        );

    \I__172\ : InMux
    port map (
            O => \N__1302\,
            I => \N__1293\
        );

    \I__171\ : InMux
    port map (
            O => \N__1299\,
            I => \N__1290\
        );

    \I__170\ : Span4Mux_h
    port map (
            O => \N__1296\,
            I => \N__1283\
        );

    \I__169\ : LocalMux
    port map (
            O => \N__1293\,
            I => \N__1283\
        );

    \I__168\ : LocalMux
    port map (
            O => \N__1290\,
            I => \N__1283\
        );

    \I__167\ : Sp12to4
    port map (
            O => \N__1283\,
            I => \N__1280\
        );

    \I__166\ : Span12Mux_v
    port map (
            O => \N__1280\,
            I => \N__1277\
        );

    \I__165\ : Odrv12
    port map (
            O => \N__1277\,
            I => \DATA_11_\
        );

    \I__164\ : InMux
    port map (
            O => \N__1274\,
            I => \N__1271\
        );

    \I__163\ : LocalMux
    port map (
            O => \N__1271\,
            I => dac_buf_11
        );

    \I__162\ : InMux
    port map (
            O => \N__1268\,
            I => \N__1264\
        );

    \I__161\ : CascadeMux
    port map (
            O => \N__1267\,
            I => \N__1261\
        );

    \I__160\ : LocalMux
    port map (
            O => \N__1264\,
            I => \N__1257\
        );

    \I__159\ : InMux
    port map (
            O => \N__1261\,
            I => \N__1254\
        );

    \I__158\ : CascadeMux
    port map (
            O => \N__1260\,
            I => \N__1251\
        );

    \I__157\ : Span4Mux_v
    port map (
            O => \N__1257\,
            I => \N__1246\
        );

    \I__156\ : LocalMux
    port map (
            O => \N__1254\,
            I => \N__1246\
        );

    \I__155\ : InMux
    port map (
            O => \N__1251\,
            I => \N__1243\
        );

    \I__154\ : Span4Mux_v
    port map (
            O => \N__1246\,
            I => \N__1240\
        );

    \I__153\ : LocalMux
    port map (
            O => \N__1243\,
            I => \N__1237\
        );

    \I__152\ : Span4Mux_v
    port map (
            O => \N__1240\,
            I => \N__1234\
        );

    \I__151\ : Sp12to4
    port map (
            O => \N__1237\,
            I => \N__1231\
        );

    \I__150\ : Sp12to4
    port map (
            O => \N__1234\,
            I => \N__1226\
        );

    \I__149\ : Span12Mux_v
    port map (
            O => \N__1231\,
            I => \N__1226\
        );

    \I__148\ : Odrv12
    port map (
            O => \N__1226\,
            I => \DATA_14_\
        );

    \I__147\ : InMux
    port map (
            O => \N__1223\,
            I => \N__1220\
        );

    \I__146\ : LocalMux
    port map (
            O => \N__1220\,
            I => dac_buf_12
        );

    \I__145\ : InMux
    port map (
            O => \N__1217\,
            I => \N__1214\
        );

    \I__144\ : LocalMux
    port map (
            O => \N__1214\,
            I => dac_buf_13
        );

    \I__143\ : CascadeMux
    port map (
            O => \N__1211\,
            I => \N__1206\
        );

    \I__142\ : CascadeMux
    port map (
            O => \N__1210\,
            I => \N__1203\
        );

    \I__141\ : InMux
    port map (
            O => \N__1209\,
            I => \N__1200\
        );

    \I__140\ : InMux
    port map (
            O => \N__1206\,
            I => \N__1195\
        );

    \I__139\ : InMux
    port map (
            O => \N__1203\,
            I => \N__1195\
        );

    \I__138\ : LocalMux
    port map (
            O => \N__1200\,
            I => \N__1190\
        );

    \I__137\ : LocalMux
    port map (
            O => \N__1195\,
            I => \N__1190\
        );

    \I__136\ : Span4Mux_v
    port map (
            O => \N__1190\,
            I => \N__1187\
        );

    \I__135\ : Span4Mux_h
    port map (
            O => \N__1187\,
            I => \N__1184\
        );

    \I__134\ : Odrv4
    port map (
            O => \N__1184\,
            I => \DATA_15_\
        );

    \I__133\ : InMux
    port map (
            O => \N__1181\,
            I => \N__1178\
        );

    \I__132\ : LocalMux
    port map (
            O => \N__1178\,
            I => dac_buf_14
        );

    \I__131\ : InMux
    port map (
            O => \N__1175\,
            I => \N__1169\
        );

    \I__130\ : InMux
    port map (
            O => \N__1174\,
            I => \N__1169\
        );

    \I__129\ : LocalMux
    port map (
            O => \N__1169\,
            I => dac_data_7
        );

    \I__128\ : InMux
    port map (
            O => \N__1166\,
            I => \N__1160\
        );

    \I__127\ : InMux
    port map (
            O => \N__1165\,
            I => \N__1160\
        );

    \I__126\ : LocalMux
    port map (
            O => \N__1160\,
            I => dac_data_0
        );

    \I__125\ : IoInMux
    port map (
            O => \N__1157\,
            I => \N__1154\
        );

    \I__124\ : LocalMux
    port map (
            O => \N__1154\,
            I => \N__1151\
        );

    \I__123\ : IoSpan4Mux
    port map (
            O => \N__1151\,
            I => \N__1148\
        );

    \I__122\ : Span4Mux_s3_h
    port map (
            O => \N__1148\,
            I => \N__1145\
        );

    \I__121\ : Span4Mux_v
    port map (
            O => \N__1145\,
            I => \N__1142\
        );

    \I__120\ : Span4Mux_v
    port map (
            O => \N__1142\,
            I => \N__1138\
        );

    \I__119\ : InMux
    port map (
            O => \N__1141\,
            I => \N__1135\
        );

    \I__118\ : Odrv4
    port map (
            O => \N__1138\,
            I => \MOSI\
        );

    \I__117\ : LocalMux
    port map (
            O => \N__1135\,
            I => \MOSI\
        );

    \I__116\ : InMux
    port map (
            O => \N__1130\,
            I => \N__1126\
        );

    \I__115\ : InMux
    port map (
            O => \N__1129\,
            I => \N__1123\
        );

    \I__114\ : LocalMux
    port map (
            O => \N__1126\,
            I => dac_data_14
        );

    \I__113\ : LocalMux
    port map (
            O => \N__1123\,
            I => dac_data_14
        );

    \I__112\ : InMux
    port map (
            O => \N__1118\,
            I => \N__1114\
        );

    \I__111\ : InMux
    port map (
            O => \N__1117\,
            I => \N__1111\
        );

    \I__110\ : LocalMux
    port map (
            O => \N__1114\,
            I => dac_data_11
        );

    \I__109\ : LocalMux
    port map (
            O => \N__1111\,
            I => dac_data_11
        );

    \I__108\ : InMux
    port map (
            O => \N__1106\,
            I => \N__1100\
        );

    \I__107\ : InMux
    port map (
            O => \N__1105\,
            I => \N__1100\
        );

    \I__106\ : LocalMux
    port map (
            O => \N__1100\,
            I => dac_data_1
        );

    \I__105\ : InMux
    port map (
            O => \N__1097\,
            I => \N__1091\
        );

    \I__104\ : InMux
    port map (
            O => \N__1096\,
            I => \N__1091\
        );

    \I__103\ : LocalMux
    port map (
            O => \N__1091\,
            I => dac_data_4
        );

    \I__102\ : IoInMux
    port map (
            O => \N__1088\,
            I => \N__1085\
        );

    \I__101\ : LocalMux
    port map (
            O => \N__1085\,
            I => \N__1082\
        );

    \I__100\ : IoSpan4Mux
    port map (
            O => \N__1082\,
            I => \N__1079\
        );

    \I__99\ : IoSpan4Mux
    port map (
            O => \N__1079\,
            I => \N__1076\
        );

    \I__98\ : Span4Mux_s1_h
    port map (
            O => \N__1076\,
            I => \N__1073\
        );

    \I__97\ : Odrv4
    port map (
            O => \N__1073\,
            I => \CS\
        );

    \I__96\ : InMux
    port map (
            O => \N__1070\,
            I => \N__1064\
        );

    \I__95\ : InMux
    port map (
            O => \N__1069\,
            I => \N__1064\
        );

    \I__94\ : LocalMux
    port map (
            O => \N__1064\,
            I => dac_data_2
        );

    \I__93\ : InMux
    port map (
            O => \N__1061\,
            I => \N__1057\
        );

    \I__92\ : InMux
    port map (
            O => \N__1060\,
            I => \N__1054\
        );

    \I__91\ : LocalMux
    port map (
            O => \N__1057\,
            I => dac_data_6
        );

    \I__90\ : LocalMux
    port map (
            O => \N__1054\,
            I => dac_data_6
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

    \CS_32_LC_1_5_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0001000000011111"
        )
    port map (
            in0 => \N__2544\,
            in1 => \N__2686\,
            in2 => \N__2798\,
            in3 => \N__1955\,
            lcout => \CS\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2348\,
            ce => \N__1373\,
            sr => \_gnd_net_\
        );

    \dac_data_i6_LC_1_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000001000100"
        )
    port map (
            in0 => \N__1820\,
            in1 => \N__1061\,
            in2 => \N__1481\,
            in3 => \N__1730\,
            lcout => dac_data_6,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i14_LC_1_6_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000100100000"
        )
    port map (
            in0 => \N__1729\,
            in1 => \N__1819\,
            in2 => \N__1260\,
            in3 => \N__1130\,
            lcout => dac_data_14,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i11_LC_1_6_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000101000000"
        )
    port map (
            in0 => \N__1818\,
            in1 => \N__1728\,
            in2 => \N__1306\,
            in3 => \N__1118\,
            lcout => dac_data_11,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2376\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i6_4_lut_LC_1_7_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__1516\,
            in1 => \N__1174\,
            in2 => \N__2234\,
            in3 => \N__1069\,
            lcout => n22,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i2_LC_1_7_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000000100010"
        )
    port map (
            in0 => \N__1070\,
            in1 => \N__1838\,
            in2 => \N__2233\,
            in3 => \N__1722\,
            lcout => dac_data_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2392\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_4_lut_LC_1_7_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__1477\,
            in1 => \N__1060\,
            in2 => \N__1439\,
            in3 => \N__1165\,
            lcout => n17,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i9_LC_1_7_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000001000100"
        )
    port map (
            in0 => \N__1840\,
            in1 => \N__1352\,
            in2 => \N__1603\,
            in3 => \N__1724\,
            lcout => dac_data_9,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2392\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i7_LC_1_7_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000100100000"
        )
    port map (
            in0 => \N__1723\,
            in1 => \N__1839\,
            in2 => \N__1517\,
            in3 => \N__1175\,
            lcout => dac_data_7,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2392\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i0_LC_1_7_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000000100010"
        )
    port map (
            in0 => \N__1166\,
            in1 => \N__1837\,
            in2 => \N__1438\,
            in3 => \N__1721\,
            lcout => dac_data_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2392\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \MOSI_35_LC_1_7_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1101110110001000"
        )
    port map (
            in0 => \N__2545\,
            in1 => \N__1400\,
            in2 => \_gnd_net_\,
            in3 => \N__1141\,
            lcout => \MOSI\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2392\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i7_4_lut_LC_1_7_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__1302\,
            in1 => \N__1129\,
            in2 => \N__1267\,
            in3 => \N__1117\,
            lcout => n23,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i15_LC_1_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000001000100"
        )
    port map (
            in0 => \N__1845\,
            in1 => \N__1361\,
            in2 => \N__1210\,
            in3 => \N__1731\,
            lcout => dac_data_15,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2416\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i2_4_lut_LC_1_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__1564\,
            in1 => \N__1096\,
            in2 => \N__2183\,
            in3 => \N__1105\,
            lcout => n18,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i1_LC_1_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110000001010"
        )
    port map (
            in0 => \N__1106\,
            in1 => \N__2179\,
            in2 => \N__1850\,
            in3 => \N__1732\,
            lcout => dac_data_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2416\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i4_LC_1_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000100100000"
        )
    port map (
            in0 => \N__1733\,
            in1 => \N__1849\,
            in2 => \N__1565\,
            in3 => \N__1097\,
            lcout => dac_data_4,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2416\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i8_4_lut_LC_1_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__1602\,
            in1 => \N__1360\,
            in2 => \N__1211\,
            in3 => \N__1351\,
            lcout => OPEN,
            ltout => \n24_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i14_4_lut_LC_1_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1340\,
            in1 => \N__1664\,
            in2 => \N__1334\,
            in3 => \N__1331\,
            lcout => OPEN,
            ltout => \n30_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i15_4_lut_LC_1_8_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__1325\,
            in1 => \N__1319\,
            in2 => \N__1313\,
            in3 => \N__1961\,
            lcout => \SCLK_N_84\,
            ltout => \SCLK_N_84_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_4_lut_4_lut_4_lut_4_lut_LC_1_8_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1011101110011000"
        )
    port map (
            in0 => \N__2793\,
            in1 => \N__2557\,
            in2 => \N__1310\,
            in3 => \N__2684\,
            lcout => n554,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_buf_i12_LC_1_9_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1649\,
            in1 => \N__1274\,
            in2 => \_gnd_net_\,
            in3 => \N__2688\,
            lcout => dac_buf_12,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2394\,
            ce => \N__2130\,
            sr => \N__2097\
        );

    \dac_buf_i11_LC_1_9_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1307\,
            in1 => \N__1523\,
            in2 => \_gnd_net_\,
            in3 => \N__2687\,
            lcout => dac_buf_11,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2394\,
            ce => \N__2130\,
            sr => \N__2097\
        );

    \dac_buf_i14_LC_1_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2690\,
            in1 => \N__1268\,
            in2 => \_gnd_net_\,
            in3 => \N__1217\,
            lcout => dac_buf_14,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2394\,
            ce => \N__2130\,
            sr => \N__2097\
        );

    \dac_buf_i13_LC_1_9_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1896\,
            in1 => \N__1223\,
            in2 => \_gnd_net_\,
            in3 => \N__2689\,
            lcout => dac_buf_13,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2394\,
            ce => \N__2130\,
            sr => \N__2097\
        );

    \dac_buf_i15_LC_1_9_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2691\,
            in1 => \N__1209\,
            in2 => \_gnd_net_\,
            in3 => \N__1181\,
            lcout => dac_buf_15,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2394\,
            ce => \N__2130\,
            sr => \N__2097\
        );

    \dac_buf_i9_LC_1_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1604\,
            in1 => \N__1535\,
            in2 => \_gnd_net_\,
            in3 => \N__2702\,
            lcout => dac_buf_9,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i4_LC_1_10_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1111010110100000"
        )
    port map (
            in0 => \N__2697\,
            in1 => \_gnd_net_\,
            in2 => \N__2243\,
            in3 => \N__1555\,
            lcout => dac_buf_4,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i8_LC_1_10_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1991\,
            in1 => \N__1487\,
            in2 => \_gnd_net_\,
            in3 => \N__2701\,
            lcout => dac_buf_8,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i10_LC_1_10_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2696\,
            in1 => \N__2044\,
            in2 => \_gnd_net_\,
            in3 => \N__1529\,
            lcout => dac_buf_10,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i7_LC_1_10_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1507\,
            in1 => \N__1445\,
            in2 => \_gnd_net_\,
            in3 => \N__2700\,
            lcout => dac_buf_7,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i6_LC_1_10_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2699\,
            in1 => \N__1470\,
            in2 => \_gnd_net_\,
            in3 => \N__1379\,
            lcout => dac_buf_6,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i0_LC_1_10_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__1425\,
            in1 => \N__1396\,
            in2 => \_gnd_net_\,
            in3 => \N__2695\,
            lcout => dac_buf_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \dac_buf_i5_LC_1_10_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2698\,
            in1 => \N__1756\,
            in2 => \_gnd_net_\,
            in3 => \N__1385\,
            lcout => dac_buf_5,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2418\,
            ce => \N__2131\,
            sr => \N__2099\
        );

    \i1_2_lut_3_lut_LC_2_5_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010111011"
        )
    port map (
            in0 => \N__2792\,
            in1 => \N__2542\,
            in2 => \_gnd_net_\,
            in3 => \N__2621\,
            lcout => n473,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i93_2_lut_3_lut_LC_2_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101010001000"
        )
    port map (
            in0 => \N__2747\,
            in1 => \N__2518\,
            in2 => \_gnd_net_\,
            in3 => \N__2598\,
            lcout => n268,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_state_i0_LC_2_6_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0001000100100010"
        )
    port map (
            in0 => \N__2519\,
            in1 => \N__2748\,
            in2 => \_gnd_net_\,
            in3 => \N__2067\,
            lcout => dac_state_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2399\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i5_4_lut_LC_2_7_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0111110110111110"
        )
    port map (
            in0 => \N__2054\,
            in1 => \N__1612\,
            in2 => \N__1645\,
            in3 => \N__2026\,
            lcout => n21,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_2_lut_4_lut_LC_2_7_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111111110"
        )
    port map (
            in0 => \N__2529\,
            in1 => \N__2639\,
            in2 => \N__2778\,
            in3 => \N__1949\,
            lcout => n520,
            ltout => \n520_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i489_4_lut_LC_2_7_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1101000011110000"
        )
    port map (
            in0 => \N__2641\,
            in1 => \N__2753\,
            in2 => \N__1658\,
            in3 => \N__2530\,
            lcout => n688,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i159_2_lut_LC_2_7_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001100000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2528\,
            in2 => \_gnd_net_\,
            in3 => \N__1950\,
            lcout => OPEN,
            ltout => \n360_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_4_lut_adj_1_LC_2_7_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111100010000"
        )
    port map (
            in0 => \N__2640\,
            in1 => \N__2752\,
            in2 => \N__1655\,
            in3 => \N__1813\,
            lcout => n498,
            ltout => \n498_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i12_LC_2_7_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001000000010"
        )
    port map (
            in0 => \N__1613\,
            in1 => \N__1821\,
            in2 => \N__1652\,
            in3 => \N__1638\,
            lcout => dac_data_12,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2393\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i8_LC_2_7_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001000010000"
        )
    port map (
            in0 => \N__1720\,
            in1 => \N__1817\,
            in2 => \N__2006\,
            in3 => \N__1986\,
            lcout => dac_data_8,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2393\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i10_LC_2_7_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000110000001010"
        )
    port map (
            in0 => \N__2027\,
            in1 => \N__2053\,
            in2 => \N__1841\,
            in3 => \N__1719\,
            lcout => dac_data_10,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2393\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i3_LC_2_8_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000000011011000"
        )
    port map (
            in0 => \N__1726\,
            in1 => \N__2263\,
            in2 => \N__2018\,
            in3 => \N__1843\,
            lcout => dac_data_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2417\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i4_4_lut_LC_2_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0110111111110110"
        )
    port map (
            in0 => \N__1765\,
            in1 => \N__1672\,
            in2 => \N__2267\,
            in3 => \N__2014\,
            lcout => OPEN,
            ltout => \n20_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i10_4_lut_LC_2_8_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111110110"
        )
    port map (
            in0 => \N__2002\,
            in1 => \N__1987\,
            in2 => \N__1964\,
            in3 => \N__1856\,
            lcout => n26,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i13_LC_2_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011000000100010"
        )
    port map (
            in0 => \N__1865\,
            in1 => \N__1842\,
            in2 => \N__1901\,
            in3 => \N__1725\,
            lcout => dac_data_13,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2417\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_3_lut_4_lut_4_lut_4_lut_4_lut_LC_2_8_4\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1110110111101100"
        )
    port map (
            in0 => \N__2549\,
            in1 => \N__2685\,
            in2 => \N__2794\,
            in3 => \N__1951\,
            lcout => OPEN,
            ltout => \n477_cascade_\,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \SCLK_33_LC_2_8_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0000101011001010"
        )
    port map (
            in0 => \N__1912\,
            in1 => \N__2906\,
            in2 => \N__1931\,
            in3 => \N__2550\,
            lcout => \SCLK\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2417\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_15__I_0_i14_2_lut_LC_2_8_6\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__1897\,
            in2 => \_gnd_net_\,
            in3 => \N__1864\,
            lcout => n14,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_data_i5_LC_2_8_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101000001000100"
        )
    port map (
            in0 => \N__1844\,
            in1 => \N__1673\,
            in2 => \N__1766\,
            in3 => \N__1727\,
            lcout => dac_data_5,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2417\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \bit_cnt_i3_LC_2_9_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0111111110000000"
        )
    port map (
            in0 => \N__2842\,
            in1 => \N__2868\,
            in2 => \N__2461\,
            in3 => \N__2896\,
            lcout => bit_cnt_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2395\,
            ce => \N__2810\,
            sr => \N__2284\
        );

    \bit_cnt_i1_LC_2_9_2\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2449\,
            in2 => \_gnd_net_\,
            in3 => \N__2840\,
            lcout => bit_cnt_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2395\,
            ce => \N__2810\,
            sr => \N__2284\
        );

    \bit_cnt_i2_LC_2_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0101111110100000"
        )
    port map (
            in0 => \N__2841\,
            in1 => \_gnd_net_\,
            in2 => \N__2460\,
            in3 => \N__2867\,
            lcout => bit_cnt_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2395\,
            ce => \N__2810\,
            sr => \N__2284\
        );

    \i507_2_lut_LC_2_9_5\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1100110000000000"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2785\,
            in2 => \_gnd_net_\,
            in3 => \N__2120\,
            lcout => n693,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \dac_buf_i3_LC_2_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1100110010101010"
        )
    port map (
            in0 => \N__2262\,
            in1 => \N__2189\,
            in2 => \_gnd_net_\,
            in3 => \N__2694\,
            lcout => dac_buf_3,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2419\,
            ce => \N__2135\,
            sr => \N__2098\
        );

    \dac_buf_i2_LC_2_10_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2693\,
            in1 => \N__2220\,
            in2 => \_gnd_net_\,
            in3 => \N__2141\,
            lcout => dac_buf_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2419\,
            ce => \N__2135\,
            sr => \N__2098\
        );

    \dac_buf_i1_LC_2_10_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1110111001000100"
        )
    port map (
            in0 => \N__2692\,
            in1 => \N__2173\,
            in2 => \_gnd_net_\,
            in3 => \N__2147\,
            lcout => dac_buf_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2419\,
            ce => \N__2135\,
            sr => \N__2098\
        );

    \dac_state_i1_LC_3_6_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0111011111001100"
        )
    port map (
            in0 => \N__2819\,
            in1 => \N__2543\,
            in2 => \_gnd_net_\,
            in3 => \N__2632\,
            lcout => dac_state_1,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2420\,
            ce => \N__2081\,
            sr => \N__2791\
        );

    \dac_state_i2_LC_3_7_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__2462\,
            in1 => \N__2897\,
            in2 => \N__2876\,
            in3 => \N__2846\,
            lcout => dac_state_2,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2375\,
            ce => \N__2074\,
            sr => \N__2915\
        );

    \i750_2_lut_LC_3_8_1\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "0100010001000100"
        )
    port map (
            in0 => \N__2760\,
            in1 => \N__2642\,
            in2 => \_gnd_net_\,
            in3 => \_gnd_net_\,
            lcout => n946,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i3_3_lut_4_lut_LC_3_8_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1000000000000000"
        )
    port map (
            in0 => \N__2892\,
            in1 => \N__2459\,
            in2 => \N__2872\,
            in3 => \N__2839\,
            lcout => \dac_state_2_N_72_2\,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_3_lut_3_lut_3_lut_LC_3_9_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111110001000"
        )
    port map (
            in0 => \N__2645\,
            in1 => \N__2787\,
            in2 => \_gnd_net_\,
            in3 => \N__2553\,
            lcout => n534,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_2_lut_3_lut_4_lut_3_lut_LC_3_9_3\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1111111111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2552\,
            in2 => \_gnd_net_\,
            in3 => \N__2644\,
            lcout => n481,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \i1_4_lut_4_lut_3_lut_LC_3_9_7\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "0000",
            LUT_INIT => "1010101011001100"
        )
    port map (
            in0 => \N__2786\,
            in1 => \N__2551\,
            in2 => \_gnd_net_\,
            in3 => \N__2643\,
            lcout => n691,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \_gnd_net_\,
            ce => 'H',
            sr => \_gnd_net_\
        );

    \bit_cnt_i0_LC_3_10_0\ : LogicCell40
    generic map (
            C_ON => '0',
            SEQ_MODE => "1000",
            LUT_INIT => "0011001111001100"
        )
    port map (
            in0 => \_gnd_net_\,
            in1 => \N__2448\,
            in2 => \_gnd_net_\,
            in3 => \N__2558\,
            lcout => bit_cnt_0,
            ltout => OPEN,
            carryin => \_gnd_net_\,
            carryout => OPEN,
            clk => \N__2415\,
            ce => \N__2291\,
            sr => \N__2285\
        );
end \INTERFACE\;
