// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Jul 07 18:30:45 2026
//
// Verilog Description of module zim
//

module zim (ICE_SYSCLK, EIS_SYNCCLK, TEST_LED, DDS_MCLK1, DDS_CS1, 
            DDS_MOSI1, DDS_SCK1, ICE_SPI_SCLK, ICE_SPI_MOSI, ICE_SPI_MISO, 
            ICE_SPI_CE0, DDS_MCLK, DDS_CS, DDS_SCK, DDS_MOSI, DDS_RNG_0, 
            VAC_OSR0, VAC_OSR1, VAC_FLT0, VAC_FLT1, VAC_CLK, VAC_CS, 
            VAC_SCLK, VAC_MOSI, VAC_MISO, VAC_DRDY, VDC_SDO, VDC_SCLK, 
            VDC_CLK, VDC_RNG0, CONT_SD, SELIRNG0, SELIRNG1, IAC_OSR0, 
            IAC_OSR1, IAC_FLT0, IAC_FLT1, IAC_CLK, IAC_CS, IAC_SCLK, 
            IAC_MOSI, IAC_MISO, IAC_DRDY, RTD_DRDY, RTD_SDI, RTD_SCLK, 
            RTD_CS, RTD_SDO, AC_ADC_SYNC, AMPV_POW, STAT_COMM, THERMOSTAT, 
            START_SYNC, START_MAIN, ICE_GPMO_1, ICE_GPMO_2, ICE_GPMI_0);   // zim_main.vhd(7[8:11])
    input ICE_SYSCLK;   // zim_main.vhd(9[3:13])
    input EIS_SYNCCLK;   // zim_main.vhd(10[3:14])
    output TEST_LED;   // zim_main.vhd(11[3:11])
    output DDS_MCLK1;   // zim_main.vhd(13[3:12])
    output DDS_CS1;   // zim_main.vhd(14[3:10])
    output DDS_MOSI1;   // zim_main.vhd(15[3:12])
    output DDS_SCK1;   // zim_main.vhd(16[3:11])
    input ICE_SPI_SCLK;   // zim_main.vhd(25[3:15])
    input ICE_SPI_MOSI;   // zim_main.vhd(26[3:15])
    output ICE_SPI_MISO;   // zim_main.vhd(27[3:15])
    input ICE_SPI_CE0;   // zim_main.vhd(28[3:14])
    output DDS_MCLK;   // zim_main.vhd(31[3:11])
    output DDS_CS;   // zim_main.vhd(32[3:9])
    output DDS_SCK;   // zim_main.vhd(33[3:10])
    output DDS_MOSI;   // zim_main.vhd(34[3:11])
    output DDS_RNG_0;   // zim_main.vhd(36[3:12])
    output VAC_OSR0;   // zim_main.vhd(38[3:11])
    output VAC_OSR1;   // zim_main.vhd(39[3:11])
    output VAC_FLT0;   // zim_main.vhd(40[3:11])
    output VAC_FLT1;   // zim_main.vhd(41[3:11])
    output VAC_CLK;   // zim_main.vhd(43[3:10])
    output VAC_CS;   // zim_main.vhd(44[3:9])
    output VAC_SCLK;   // zim_main.vhd(45[3:11])
    output VAC_MOSI;   // zim_main.vhd(46[3:11])
    input VAC_MISO;   // zim_main.vhd(47[3:11])
    input VAC_DRDY;   // zim_main.vhd(48[3:11])
    input VDC_SDO;   // zim_main.vhd(50[3:10])
    output VDC_SCLK;   // zim_main.vhd(51[3:11])
    output VDC_CLK;   // zim_main.vhd(52[3:10])
    output VDC_RNG0;   // zim_main.vhd(53[3:11])
    output CONT_SD;   // zim_main.vhd(55[3:10])
    output SELIRNG0;   // zim_main.vhd(56[3:11])
    output SELIRNG1;   // zim_main.vhd(57[3:11])
    output IAC_OSR0;   // zim_main.vhd(58[3:11])
    output IAC_OSR1;   // zim_main.vhd(59[3:11])
    output IAC_FLT0;   // zim_main.vhd(60[3:11])
    output IAC_FLT1;   // zim_main.vhd(61[3:11])
    output IAC_CLK;   // zim_main.vhd(62[3:10])
    output IAC_CS;   // zim_main.vhd(63[3:9])
    output IAC_SCLK;   // zim_main.vhd(64[3:11])
    output IAC_MOSI;   // zim_main.vhd(65[3:11])
    input IAC_MISO;   // zim_main.vhd(66[3:11])
    input IAC_DRDY;   // zim_main.vhd(67[3:11])
    input RTD_DRDY;   // zim_main.vhd(69[3:11])
    output RTD_SDI;   // zim_main.vhd(70[3:10])
    output RTD_SCLK;   // zim_main.vhd(71[3:11])
    output RTD_CS;   // zim_main.vhd(72[3:9])
    input RTD_SDO;   // zim_main.vhd(73[3:10])
    output AC_ADC_SYNC;   // zim_main.vhd(75[3:14])
    output AMPV_POW;   // zim_main.vhd(76[3:11])
    output STAT_COMM;   // zim_main.vhd(78[3:12])
    input THERMOSTAT;   // zim_main.vhd(79[3:13])
    input START_SYNC;   // zim_main.vhd(81[3:13])
    output START_MAIN;   // zim_main.vhd(82[3:13])
    output ICE_GPMO_1;   // zim_main.vhd(84[3:13])
    input ICE_GPMO_2;   // zim_main.vhd(85[3:13])
    output ICE_GPMI_0;   // zim_main.vhd(86[3:13])
    
    wire DDS_MCLK1 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(52[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(220[9:18])
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(267[9:16])
    
    wire VCC_net, cs_sync1, cs_sync2, cs_falling_pend;
    wire [1:0]cs_mask_cnt;   // zim_main.vhd(237[9:20])
    
    wire reset_int;
    wire [7:0]comm_tx_buf;   // zim_main.vhd(240[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zim_main.vhd(242[9:20])
    wire [3:0]comm_state;   // zim_main.vhd(245[9:19])
    wire [7:0]comm_cmd;   // zim_main.vhd(247[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[1] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[2] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[3] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[4] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[5] ;   // zim_main.vhd(250[9:17])
    wire [7:0]\comm_buf[6] ;   // zim_main.vhd(250[9:17])
    wire [2:0]comm_index;   // zim_main.vhd(251[9:19])
    wire [2:0]comm_length;   // zim_main.vhd(252[9:20])
    wire [7:0]dds0_mclkcnt;   // zim_main.vhd(255[9:21])
    
    wire dds0_mclk;
    wire [15:0]buf_dds0;   // zim_main.vhd(258[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(263[9:17])
    
    wire trig_dds1;
    wire [3:0]clk_cnt;   // zim_main.vhd(268[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(269[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(270[9:20])
    
    wire acadc_dtrig_i, acadc_dtrig_v, eis_adc_trig;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(280[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(281[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(288[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(289[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(292[9:18])
    
    wire tacadc_rst, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(301[9:21])
    wire [47:0]buf_data_vac;
    wire [8:0]data_count;   // zim_main.vhd(306[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(307[9:20])
    wire [8:0]data_index;   // zim_main.vhd(308[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(309[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(317[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(320[9:20])
    
    wire wdtick_flag, flagcntwd;
    wire [27:0]wdtick_cnt;   // zim_main.vhd(324[9:19])
    wire [7:0]synccnt;   // zim_main.vhd(340[9:16])
    
    wire START_SYNC_N_283, synccnt_7__N_292, n13351, n19745, n21211, 
        clk_RTD_N_727, n19699, wdtick_flag_N_329, n28, n15050, n11, 
        dds0_mclk_N_720, n20342, iac_raw_buf_N_748, iac_raw_buf_N_746, 
        n400, n401, n402, n403, n404, n405, n406, n407, n408, 
        n411, n412, n413, n414, n415, n416, n417, n418, n419, 
        n420, n421, n422, n423, n424, n425, n426, n5971, n461, 
        n462, n463, n464, n465, n466, n467, n468, n469, n470, 
        n471, n472, n473, n474, n475, n476, n21321, n18695, 
        n18696, n20532, n20536, n20538, eis_end_N_736;
    wire [2:0]eis_state_2__N_169;
    
    wire n20338, n21660, cs_mask_cnt_1__N_397, cs_falling_pend_N_714, 
        THERMOSTAT_N_472;
    wire [3:0]comm_state_3__N_441;
    
    wire n21658, n12, n20296, n30, n21158, n26, n19, n16, n21320;
    wire [2:0]comm_index_2__N_449;
    
    wire n21650, n18698, n7;
    wire [3:0]comm_state_3__N_418;
    
    wire n18713;
    wire [3:0]comm_state_3__N_11;
    
    wire n20996, n20062, n20064, n8, n20066, n20068, n20070, n20024, 
        n7_adj_1457;
    wire [8:0]data_index_8__N_213;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n20598, n22072, n20334, n42, n20918, n21643, n20330, 
        n20326, n19744, n19743;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, drdy_falling, n19711, n21638, n19742, 
        DTRIG_N_869, n20352, n20630, n20362;
    wire [2:0]adc_state_adj_1717;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1718;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1492, drdy_prev_adj_1493, drdy_falling_adj_1494, 
        n14655, DTRIG_N_869_adj_1495, n20354, n20356, n20358, n13285, 
        n19710, n19698, n15029, n26_adj_1496;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1739;   // dds_ad9837.vhd(25[9:16])
    
    wire n17, n20941;
    wire [2:0]dds_state_adj_1741;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1742;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1743;   // dds_ad9837.vhd(25[9:16])
    
    wire n20364, sclk_sync1, sclk_sync2, n20322, n20292, n20366, 
        n86, n15, n5, n20368, n6231;
    wire [3:0]adc_state_adj_1760;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n17_adj_1503, n19694, n6199, n20370, n20372, n20374, n20376, 
        n20378, n20380, n20106, n20176, n20178, n20180, n20182, 
        n20034, n20184, n20186, n20188, n20056, n20190;
    wire [3:0]adc_state_adj_1763;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1764;   // adc_ads1252u.vhd(32[8:20])
    
    wire n20300;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n12485, n19741, n20192, n20194, n20196, n20198, n20200, 
        n20202, n20204, n20206, n20208, n20210, n20212, n21316, 
        n20214, n20216, n20382, n20384, n20406, n20408, n20410, 
        n20412, n20414, n20416, n20418, n7_adj_1529, n4, n10, 
        n12_adj_1530, n21282, n20420, n20422, n20424, n20426, n20428, 
        n80, n17_adj_1531, n21197, n21430, n13, n20318, n23, n6649, 
        n21, n20, n20430, n15_adj_1532, n17_adj_1533, n20432, n19740, 
        n30_adj_1534, n20434, n20436, n20438, n18734, n45, n44, 
        n43, n42_adj_1535, n41, n40, n39, n38, n20944, n10_adj_1536, 
        n20530, n19709, n30_adj_1537, n20_adj_1538, n21209, n26_adj_1539, 
        n20_adj_1540, n23_adj_1541, n19_adj_1542, n16_adj_1543, n19_adj_1544, 
        n13209, n20312, n20951, n20524, n12460, n17_adj_1545, n30_adj_1546, 
        n16_adj_1547, n15015, n13_adj_1548, n21314, n45_adj_1549, 
        n44_adj_1550, n43_adj_1551, n42_adj_1552, n41_adj_1553, n40_adj_1554, 
        n39_adj_1555, n38_adj_1556, n16_adj_1557, n23_adj_1558, n17_adj_1559, 
        n19_adj_1560, n20_adj_1561, n30_adj_1562, n17881, n15_adj_1563, 
        n14, n21011, n30_adj_1564, n145, n144, n143, n142, n7_adj_1565, 
        n11_adj_1566, n15140, n141, n140, n139, n138, n137, n136, 
        n135, n134, n133, n132, n131, n130, n129, n128, n21199, 
        n45_adj_1567, n127, n126, n125, n124, n123, n122, n121, 
        n120, n119, n118, n19708, n20026, n21099, n19_adj_1568, 
        n20_adj_1569, n23_adj_1570, n20238, n19693, n19707, n19739, 
        n20090, n26_adj_1571, n21188, n20600, n16_adj_1572, n16108, 
        n22, n16104, n30_adj_1573, n19_adj_1574, n19738, n19737, 
        n21040, n19736, n20472, n5991, n5993, n5994, n17_adj_1575, 
        n6005, n20308, n1, n2, n4_adj_1576, n30_adj_1577, n20440, 
        n20474, n30_adj_1578, n6974, n13821, n13825, n13829, n13833, 
        n13837, n13841, n7_adj_1579, n8_adj_1580, n14_adj_1581, n19735, 
        n20442, n84, n19734, n19706, n11_adj_1582, n21196, n19733, 
        n13919, n15498, n13923, n15451, n15450, n15449, n15448, 
        n15447, n15446, n15445, n21313, n24, n22_adj_1583, n21311, 
        n21289, n14225, n21142, n22549, n22546, n22543, n22540, 
        n22537, n22534, n22531, n12419, n22528, n22525, n22522, 
        n22519, n22516, n22510, n22504, n15444, n15443, n15442, 
        n15441, n15440, n15439, n15438, n15437, n15436, n15435, 
        n15434, n15433, n15432, n15431, n15430, n15429, n15428, 
        n15427, n15426, n15425, n15424, n15423, n15422, n15421, 
        n15420, n15419, n15418, n15417, n15416, n15415, n15414, 
        n22501, n23_adj_1584, n15413, n15412, n15411, n15410, n15409, 
        n15408, n15407, n15406, n15405, n15404, n15403, n15402, 
        n15401, n15400, n15399, n15398, n15397, n15396, n15395, 
        n15394, n15393, n15392, n15391, n15390, n15389, n15388, 
        n15387, n15386, n15384, n15383, n14_adj_1585, n14_adj_1586, 
        n14_adj_1587, n14_adj_1588, n14_adj_1589, n14_adj_1590, n14_adj_1591, 
        n20981, n19705, n20502, n22_adj_1592, n20304, n22498, n22495, 
        n19294, n17082, n19732, n7_adj_1593, n8_adj_1594, n7_adj_1595, 
        n8_adj_1596, n22492, n7_adj_1597, n8_adj_1598, n7_adj_1599, 
        n8_adj_1600, n7_adj_1601, n8_adj_1602, n7_adj_1603, n8_adj_1604, 
        n22486, n7_adj_1605, n8_adj_1606, n22483, n14229, n14233, 
        n14237, n14241, n17505, n14245, n14249, n17506, n14253, 
        n14257, n14261, n14265, n17508, n14269, n14273, n14277, 
        n14281, n22480, n14285, n14289, n14293, n11_adj_1607, n14297, 
        n4_adj_1608, n14301, n14305, n14309, n14313, n14317, n14321, 
        n14325, n14329, n14333, n14337, n14341, n14345, n14349, 
        n15382, n14353, n14357, n14361, n14365, n14369, n20908, 
        n14373, n14377, n14381, n14_adj_1609, n14_adj_1610, n14_adj_1611, 
        n15381, n14_adj_1612, n14_adj_1613, n14780, n21145, n20926, 
        n22471, n19891, n6, n7_adj_1614, n22468, n14453, n14_adj_1615, 
        n24_adj_1616, n19731, n14_adj_1617, n14_adj_1618, n19730, 
        n15380, n19704, n4_adj_1619, n1_adj_1620, n2_adj_1621, n4_adj_1622, 
        n22462, n22459, n1_adj_1623, n2_adj_1624, n4_adj_1625, n21191, 
        n4_adj_1626, n22456, n4_adj_1627, n22453, n4_adj_1628, n4_adj_1629, 
        n22450, n21_adj_1630, n22447, n19889, n19888, n15379, n19_adj_1631, 
        n1_adj_1632, n19315, n18, n41_adj_1633, n20925, n34, n23_adj_1634, 
        n21310, n15378, n19887, n21395, n21192, n14947, n15008, 
        n21189, n22444, n22441, n19886, n21308, n20028, n12559, 
        n12557, n17513, n16065, n10518, n22438, n21187, n19729, 
        n16060, n22435, n19703, n20042, n19885, n19728, n20044, 
        n21283, n12377, n19884, n20046, n19883, n19882, n19727, 
        n19881, n20048, n19880, n19879, n22432, n20050, n21280, 
        n19726, n16893, n21390, n22429, n19878, n20052, n22426, 
        n22423, n21144, n54, n21388, n15376, n17515, n20086, n12156, 
        n20130, n19877, n16036, n20742, n20910, n20058, n20060, 
        n19876, n22420, n22417, n19725, n19875, n19874, n30_adj_1635, 
        n48, n20262, n20264, n15022, n22414, n22411, n20923, n21541, 
        n20266, n13075, n12517, n20268, n44_adj_1636, n22408, n20270, 
        n21382, n20983, n46, n22405, n20272, n20488, n20174, n20092, 
        n15375, n20094, n22402, n1_adj_1637, n15135, n22399, n20096, 
        n22396, n20732, n20098, n22393, n20704, n20088, n22390, 
        n22387, n20632, n22384, n21304, n20634, n20636, n20638, 
        n22381, n15001, n21295, n19873, n20640, n19872, n14_adj_1638, 
        n19871, n20642, n22378, n19870, n19869, n12892, n22375, 
        n19868, n19867, n12335, n19724, n26_adj_1639, n22372, n20644, 
        n19702, n19723, n22369, n12_adj_1640, n19866, n19722, n49, 
        n19865, n19864, n19863, n19862, n19721, n47, n19861, n22366, 
        n19860, n21_adj_1641, n19859, n22363, n20_adj_1642, n15374, 
        n19720, n9453, n11918, n17533, n12461, n22360, n19858, 
        n19857, n19856, n22357, n9, n14957, n22354, n20646, n22351, 
        n18_adj_1643, n19855, n19854, n20648, n19853, n17_adj_1644, 
        n22348, n22345, n20650, n19691, n19719, n9299, n19852, 
        n19851, n22342, n19850, n20652, n22339, n11932, n9_adj_1645, 
        n22336, n22333, n20654, n30_adj_1646, n22330, n20658, n19849, 
        n19848, n20660, n21520, n21303, n21519, n20662, n15_adj_1647, 
        n19718, n20664, n20074, n20666, n22327, n19717, n12796, 
        n20668, n22324, n20670, n22321, n29, n21156, n21516, n21515, 
        n59, n12143, n12160, n22318, n27, n20672, n22315, n21514, 
        n21513, n20674, n22312, n20676, n21510, n17014, n12202, 
        n20678, n22309, n20680, n19700, n21181, n22306, n20682, 
        n22303, n16887, n20470, n20684, n21506, n22300, n19_adj_1648, 
        n22_adj_1649, n30_adj_1650, n20686, n20688, n14989, n12101, 
        n22297, n20690, n21502, n12094, n22294, n22291, n20692, 
        n19_adj_1651, n22_adj_1652, n30_adj_1653, n22288, n22285, 
        n20928, n20694, n22282, n20696, n20260, n12071, n22279, 
        n19_adj_1654, n22_adj_1655, n20706, n30_adj_1656, n21044, 
        n20708, n20710, n11945, n16881, n20712, n19_adj_1657, n22_adj_1658, 
        n12_adj_1659, n30_adj_1660, n21038, n22276, n12692, n20714, 
        n20040, n20350, n15_adj_1661, n20716, n19_adj_1662, n22_adj_1663, 
        n30_adj_1664, n20718, n20508, n20506, n21487, n20720, n20504, 
        n15367, n15366, n20722, n20248, n15365, n19_adj_1665, n22_adj_1666, 
        n20724, n30_adj_1667, n19701, n12_adj_1668, n50, n17605, 
        n11_adj_1669, n15364, n20954, n12666, n11_adj_1670, n23_adj_1671, 
        n19_adj_1672, n15_adj_1673, n22_adj_1674, n30_adj_1675, n15036, 
        n11999, n20734, n21069, n21178, n16_adj_1676, n19_adj_1677, 
        n21126, n26_adj_1678, n30_adj_1679, n21294, n20_adj_1680, 
        n21279, n19697, n19692, n19695, n19716, n21_adj_1681, n12636, 
        n15363, n19696, n11845, n19715, n19690, n16_adj_1682, n19_adj_1683, 
        n20450, n26_adj_1684, n30_adj_1685, n4_adj_1686, n20736, n20754, 
        n16880, n19714, n21176, n12622, n16_adj_1687, n19_adj_1688, 
        n26_adj_1689, n19713, n11792, n19750, n20744, n19749, n21299, 
        n12608, n20967, n16_adj_1690, n19_adj_1691, n26_adj_1692, 
        n30_adj_1693, n20746, n21155, n19748, n19747, n21169, n21168, 
        n15362, n20748, n15361, n11954, n16_adj_1694, n19_adj_1695, 
        n6_adj_1696, n26_adj_1697, n21325, n21159, n21324, n21288, 
        n41_adj_1698, n20750, n1_adj_1699, n19712, n16_adj_1700, n19_adj_1701, 
        n26_adj_1702, n30_adj_1703, n20756, n20346, n15360, n15359, 
        n10950, n20758, n12058, n12091, n20760, n16_adj_1704, n19_adj_1705, 
        n26_adj_1706, n30_adj_1707, n10783, n20404, n19746, n20762, 
        n22071, n12199, n19945, n16_adj_1708, n17_adj_1709, n19_adj_1710, 
        n20_adj_1711, n23_adj_1712, n26_adj_1713, n30_adj_1714, n20764, 
        n10789, n12272, n15343, n20766, n2_adj_1715;
    
    assign VAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(46[3:11])
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(62[3:10])
    assign IAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(65[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(85[3:13])
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), .I2(n12796), 
            .I3(adc_state[0]), .O(n20678));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFR wdtick_flag_327 (.Q(wdtick_flag), .C(clk_16MHz), .D(wdtick_flag_N_329), 
            .R(flagcntwd));   // zim_main.vhd(429[3] 440[10])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11792), 
            .D(eis_state_2__N_169[0]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20676));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_DFFN dds0_mclk_332 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_720));   // zim_main.vhd(468[3] 474[10])
    SB_LUT4 wdtick_cnt_3928_add_4_29_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[27]), .I3(n19888), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR reset_int_340 (.Q(reset_int), .C(clk_32MHz), .D(n6649), .R(cs_mask_cnt_1__N_397));   // zim_main.vhd(584[3] 590[10])
    SB_LUT4 wdtick_cnt_3928_add_4_28_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[26]), .I3(n19887), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(n12559), .I1(comm_data_vld), .I2(comm_state[0]), 
            .I3(comm_state_3__N_441[1]), .O(n20996));
    defparam i2_4_lut.LUT_INIT = 16'hbfaf;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n18696), .I2(n6974), 
            .I3(comm_state[2]), .O(n22432));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY wdtick_cnt_3928_add_4_28 (.CI(n19887), .I0(ICE_GPMO_1), .I1(wdtick_cnt[26]), 
            .CO(n19888));
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n18696), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n17_adj_1531));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20674));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_DFF cs_sync1_341 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_53 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20672));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_53.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut (.I0(comm_state[0]), .I1(n18695), .I2(comm_state[3]), 
            .I3(comm_cmd[2]), .O(n20923));   // zim_main.vhd(247[9:17])
    defparam i3_4_lut.LUT_INIT = 16'h0010;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[23], buf_adcdata_vac[23], 
            buf_adcdata_iac[22], buf_adcdata_vac[22], buf_adcdata_iac[21], 
            buf_adcdata_vac[21], buf_adcdata_iac[20], buf_adcdata_vac[20]}));
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged0.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_DFF cs_sync2_342 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zim_main.vhd(595[3] 900[10])
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[23:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[11], buf_adcdata_vac[11], 
            buf_adcdata_iac[10], buf_adcdata_vac[10], buf_adcdata_iac[9], 
            buf_adcdata_vac[9], buf_adcdata_iac[8], buf_adcdata_vac[8]}));
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged3.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_DFF cs_prev_343 (.Q(comm_state_3__N_441[1]), .C(clk_32MHz), .D(cs_sync2));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20670));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i18483_2_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21126));
    defparam i18483_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_4_lut_adj_55 (.I0(n5971), .I1(n20996), .I2(n4_adj_1608), 
            .I3(n21040), .O(n20926));
    defparam i2_4_lut_adj_55.LUT_INIT = 16'hc800;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19764 (.I0(comm_cmd[1]), .I1(n19_adj_1568), 
            .I2(n20_adj_1569), .I3(comm_cmd[2]), .O(n22426));
    defparam comm_cmd_1__bdd_4_lut_19764.LUT_INIT = 16'he4aa;
    SB_LUT4 i3_4_lut_adj_56 (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(n20923), 
            .I3(n9299), .O(n20925));
    defparam i3_4_lut_adj_56.LUT_INIT = 16'h0010;
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n12559));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n19945));
    defparam i1_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i12223_2_lut (.I0(comm_state[1]), .I1(n5991), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14655));   // zim_main.vhd(612[4] 899[13])
    defparam i12223_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_3_lut (.I0(n20925), .I1(n5991), .I2(comm_cmd[0]), .I3(ICE_GPMO_1), 
            .O(n9_adj_1645));   // zim_main.vhd(612[4] 899[13])
    defparam i2_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 n22426_bdd_4_lut (.I0(n22426), .I1(n17_adj_1575), .I2(n16_adj_1572), 
            .I3(comm_cmd[2]), .O(n22429));
    defparam n22426_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut (.I0(n6005), .I1(n9_adj_1645), .I2(trig_dds0), .I3(n14655), 
            .O(n20130));   // zim_main.vhd(612[4] 899[13])
    defparam i1_4_lut.LUT_INIT = 16'h5444;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n21044), .I1(n20926), .I2(comm_data_vld), 
            .I3(n6974), .O(n20928));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hcc8c;
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(cs_falling_pend_N_714));   // zim_main.vhd(632[20:61])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20928), 
            .D(comm_state_3__N_11[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_213[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFR AC_ADC_SYNC_322 (.Q(AC_ADC_SYNC), .C(clk_32MHz), .D(synccnt_7__N_292), 
            .R(START_SYNC_N_283));   // zim_main.vhd(385[3] 398[10])
    SB_LUT4 wdtick_cnt_3928_add_4_27_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[25]), .I3(n19886), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19428_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(ICE_GPMO_1), .O(n22072));
    defparam i19428_3_lut.LUT_INIT = 16'ha8a8;
    SB_CARRY wdtick_cnt_3928_add_4_27 (.CI(n19886), .I0(ICE_GPMO_1), .I1(wdtick_cnt[25]), 
            .CO(n19887));
    SB_LUT4 wdtick_cnt_3928_add_4_26_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[24]), .I3(n19885), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n7), .O(n12143));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hada8;
    SB_LUT4 n22288_bdd_4_lut (.I0(n22288), .I1(n2_adj_1624), .I2(n1_adj_1623), 
            .I3(comm_index[2]), .O(n22291));
    defparam n22288_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY wdtick_cnt_3928_add_4_26 (.CI(n19885), .I0(ICE_GPMO_1), .I1(wdtick_cnt[24]), 
            .CO(n19886));
    SB_LUT4 wdtick_cnt_3928_add_4_25_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[23]), .I3(n19884), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18533_3_lut (.I0(comm_state[0]), .I1(comm_state_3__N_441[1]), 
            .I2(comm_state[1]), .I3(ICE_GPMO_1), .O(n21176));
    defparam i18533_3_lut.LUT_INIT = 16'he5e5;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[39:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[19], buf_adcdata_vac[19], 
            buf_adcdata_iac[18], buf_adcdata_vac[18], buf_adcdata_iac[17], 
            buf_adcdata_vac[17], buf_adcdata_iac[16], buf_adcdata_vac[16]}));
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged1.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_736), .C(clk_32MHz), .E(n11792), 
            .D(eis_state_2__N_169[2]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_CARRY wdtick_cnt_3928_add_4_25 (.CI(n19884), .I0(ICE_GPMO_1), .I1(wdtick_cnt[23]), 
            .CO(n19885));
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11792), 
            .D(eis_state_2__N_169[1]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15204_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(n5991), .I3(ICE_GPMO_1), .O(n5993));   // zim_main.vhd(612[4] 899[13])
    defparam i15204_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 wdtick_cnt_3928_add_4_24_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[22]), .I3(n19883), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_clear_346__i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n11845), 
            .D(n10518));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i18535_4_lut (.I0(n21176), .I1(n22072), .I2(comm_state[2]), 
            .I3(n6974), .O(n21178));
    defparam i18535_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1718[29]), .I1(cmd_rdadctmp_adj_1718[28]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20524));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[31:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[15], buf_adcdata_vac[15], 
            buf_adcdata_iac[14], buf_adcdata_vac[14], buf_adcdata_iac[13], 
            buf_adcdata_vac[13], buf_adcdata_iac[12], buf_adcdata_vac[12]}));
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged2.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_CARRY wdtick_cnt_3928_add_4_24 (.CI(n19883), .I0(ICE_GPMO_1), .I1(wdtick_cnt[22]), 
            .CO(n19884));
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[3], buf_adcdata_vac[3], 
            buf_adcdata_iac[2], buf_adcdata_vac[2], buf_adcdata_iac[1], 
            buf_adcdata_vac[1], buf_adcdata_iac[0], buf_adcdata_vac[0]}));
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged5.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i1_2_lut_3_lut_adj_59 (.I0(cs_sync1), .I1(cs_sync2), .I2(n10518), 
            .I3(ICE_GPMO_1), .O(n11845));   // zim_main.vhd(603[8:37])
    defparam i1_2_lut_3_lut_adj_59.LUT_INIT = 16'h4f4f;
    SB_LUT4 i12_4_lut_adj_60 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20442));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'h0aca;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged4 (.RDATA({buf_data_vac[15:8]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_746), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[7], buf_adcdata_vac[7], 
            buf_adcdata_iac[6], buf_adcdata_vac[6], buf_adcdata_iac[5], 
            buf_adcdata_vac[5], buf_adcdata_iac[4], buf_adcdata_vac[4]}));
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged4.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i12_4_lut_adj_61 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20440));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_387_Mux_0_i15_3_lut (.I0(n21178), .I1(n9299), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(comm_state_3__N_11[0]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_CARRY add_155_11 (.CI(n19744), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19745));
    SB_LUT4 i1_4_lut_adj_62 (.I0(n20918), .I1(n21643), .I2(n27), .I3(comm_cmd[2]), 
            .O(comm_state_3__N_418[3]));   // zim_main.vhd(829[5] 884[14])
    defparam i1_4_lut_adj_62.LUT_INIT = 16'ha088;
    SB_LUT4 add_72_7_lut (.I0(ICE_GPMO_1), .I1(data_count[5]), .I2(ICE_GPMO_1), 
            .I3(n19694), .O(n403)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i28_4_lut (.I0(n21541), .I1(n11_adj_1566), .I2(eis_end_N_736), 
            .I3(eis_state[0]), .O(eis_state_2__N_169[1]));   // zim_main.vhd(292[9:18])
    defparam i28_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 equal_65_i11_2_lut (.I0(acadc_skipCount[10]), .I1(acadc_skipcnt[10]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n11));   // zim_main.vhd(505[10:41])
    defparam equal_65_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_155_10_lut (.I0(n14_adj_1591), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19743), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_index_0__bdd_4_lut_19827 (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n22282));
    defparam comm_index_0__bdd_4_lut_19827.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_157_Mux_3_i16_3_lut (.I0(buf_dds0[11]), .I1(buf_dds1[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1572));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[11]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[11]), .O(n20_adj_1642));
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_157_Mux_3_i17_3_lut (.I0(IAC_FLT1), .I1(buf_adcdata_iac[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1575));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[5]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[5]), .I3(acadc_skipcnt[14]), .O(n24));
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i58_3_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n59));
    defparam i58_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_72_8_lut (.I0(ICE_GPMO_1), .I1(data_count[6]), .I2(ICE_GPMO_1), 
            .I3(n19695), .O(n402)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_63 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20438));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_3_i20_3_lut (.I0(buf_cfgRTD[3]), .I1(buf_readRTD[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1569));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19055_3_lut (.I0(comm_data_vld), .I1(comm_state[0]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n21321));
    defparam i19055_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_64 (.I0(comm_state_3__N_441[1]), .I1(n21321), .I2(n59), 
            .I3(comm_state[1]), .O(n20954));
    defparam i1_4_lut_adj_64.LUT_INIT = 16'h0544;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20668));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 n22282_bdd_4_lut (.I0(n22282), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n22285));
    defparam n22282_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFN dds0_mclkcnt_i7_3936__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(470[4] 473[11])
    SB_DFFR synccnt_3925__i0 (.Q(synccnt[0]), .C(clk_32MHz), .D(n45_adj_1549), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 mux_157_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[19]), .I1(buf_adcdata_vdc[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1568));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[6]), .I1(acadc_skipCount[9]), 
            .I2(acadc_skipcnt[6]), .I3(acadc_skipcnt[9]), .O(n22_adj_1583));
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[15]), .I1(acadc_skipCount[3]), 
            .I2(acadc_skipcnt[15]), .I3(acadc_skipcnt[3]), .O(n23_adj_1671));
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_adj_66 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n84));
    defparam i1_2_lut_adj_66.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_67 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20436));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'h0aca;
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[12]), .I1(acadc_skipCount[2]), 
            .I2(acadc_skipcnt[12]), .I3(acadc_skipcnt[2]), .O(n21_adj_1641));
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_68 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20434));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'h0aca;
    SB_LUT4 i19059_2_lut (.I0(comm_state_3__N_441[1]), .I1(comm_data_vld), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21320));
    defparam i19059_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_2_lut_3_lut_adj_69 (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(n18734), 
            .I3(ICE_GPMO_1), .O(n2_adj_1715));
    defparam i1_2_lut_3_lut_adj_69.LUT_INIT = 16'h4040;
    SB_LUT4 i2_4_lut_adj_70 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1643));
    defparam i2_4_lut_adj_70.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_71 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20432));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'h0aca;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20_adj_1642), .I2(n11), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1639));
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i15120_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9299));
    defparam i15120_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19652 (.I0(comm_cmd[1]), .I1(n19_adj_1544), 
            .I2(n20_adj_1538), .I3(comm_cmd[2]), .O(n22276));
    defparam comm_cmd_1__bdd_4_lut_19652.LUT_INIT = 16'he4aa;
    SB_LUT4 i19427_4_lut (.I0(n9299), .I1(n42), .I2(n21320), .I3(comm_state[3]), 
            .O(n22071));
    defparam i19427_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i12_4_lut_adj_72 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20430));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20666));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_74 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20428));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_75 (.I0(iac_raw_buf_N_748), .I1(tacadc_rst), .I2(eis_state[0]), 
            .I3(n20981), .O(iac_raw_buf_N_746));
    defparam i3_4_lut_adj_75.LUT_INIT = 16'h2000;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20664));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(n20923), 
            .I3(comm_cmd[0]), .O(n10783));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12_4_lut_adj_77 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20426));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'h0aca;
    SB_LUT4 n22276_bdd_4_lut (.I0(n22276), .I1(n17_adj_1545), .I2(n16_adj_1547), 
            .I3(comm_cmd[2]), .O(n22279));
    defparam n22276_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14_4_lut (.I0(n21_adj_1641), .I1(n23_adj_1671), .I2(n22_adj_1583), 
            .I3(n24), .O(n30_adj_1635));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 wdtick_cnt_3928_add_4_23_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[21]), .I3(n19882), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_78 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20424));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_78.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_79 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20662));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20660));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i12911_2_lut (.I0(n11954), .I1(eis_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15343));   // zim_main.vhd(479[3] 557[10])
    defparam i12911_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15368_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1585));   // zim_main.vhd(612[4] 899[13])
    defparam i15368_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_81 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[13]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[13]), .O(n17_adj_1644));
    defparam i1_4_lut_adj_81.LUT_INIT = 16'h7bde;
    SB_LUT4 i19472_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(n20954), 
            .I3(n22071), .O(n28));
    defparam i19472_4_lut.LUT_INIT = 16'h23af;
    SB_LUT4 i15_4_lut (.I0(n17_adj_1644), .I1(n30_adj_1635), .I2(n26_adj_1639), 
            .I3(n18_adj_1643), .O(n7_adj_1565));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_state_3__I_0_399_Mux_8_i15_4_lut (.I0(n7_adj_1593), .I1(n8_adj_1594), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[8]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_82 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20422));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'h0aca;
    SB_LUT4 i15358_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1609));   // zim_main.vhd(612[4] 899[13])
    defparam i15358_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_399_Mux_7_i15_4_lut (.I0(n7_adj_1595), .I1(n8_adj_1596), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[7]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3928_add_4_23 (.CI(n19882), .I0(ICE_GPMO_1), .I1(wdtick_cnt[21]), 
            .CO(n19883));
    SB_LUT4 i12_4_lut_adj_83 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20420));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'h0aca;
    SB_LUT4 i8_4_lut_adj_84 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1616));   // zim_main.vhd(540[9:35])
    defparam i8_4_lut_adj_84.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_state_3__I_0_399_Mux_6_i15_4_lut (.I0(n7_adj_1597), .I1(n8_adj_1598), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[6]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_387_Mux_1_i15_4_lut (.I0(n22435), .I1(comm_state_3__N_418[3]), 
            .I2(comm_state[3]), .I3(n14453), .O(comm_state_3__N_11[1]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_1_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12_4_lut_adj_85 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20658));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_4_lut_adj_86 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1592));   // zim_main.vhd(540[9:35])
    defparam i6_4_lut_adj_86.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_87 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20418));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_156_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1578));   // zim_main.vhd(668[5] 772[14])
    defparam mux_156_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 i12_4_lut_adj_88 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20416));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_89 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20654));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SB_LUT4 i15096_4_lut (.I0(n17513), .I1(n17515), .I2(comm_state[3]), 
            .I3(n9299), .O(data_index_8__N_213[5]));   // zim_main.vhd(245[9:19])
    defparam i15096_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_90 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20414));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_91 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20652));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_92 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20412));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'h0aca;
    SB_LUT4 i7_4_lut_adj_93 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1584));   // zim_main.vhd(540[9:35])
    defparam i7_4_lut_adj_93.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_166_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1620));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_94 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20650));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_95 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20648));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_DFFR wdtick_cnt_3928__i0 (.Q(wdtick_cnt[0]), .C(clk_16MHz), .D(n145), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY add_72_8 (.CI(n19695), .I0(data_count[6]), .I1(ICE_GPMO_1), 
            .CO(n19696));
    SB_LUT4 mux_166_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1621));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_96 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20646));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_LUT4 i19282_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21295));
    defparam i19282_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_166_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1622));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19262_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21299));
    defparam i19262_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_158_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1702));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_97 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20410));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20408));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19755 (.I0(comm_cmd[1]), .I1(n19), .I2(buf_readRTD[0]), 
            .I3(comm_cmd[2]), .O(n22420));
    defparam comm_cmd_1__bdd_4_lut_19755.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_99 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(n12101), .I3(ICE_GPMO_1), .O(n14989));   // zim_main.vhd(245[9:19])
    defparam i1_2_lut_3_lut_adj_99.LUT_INIT = 16'hb0b0;
    SB_LUT4 i12_4_lut_adj_100 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20406));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_158_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1704));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_155_10 (.CI(n19743), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19744));
    SB_LUT4 mux_158_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1705));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22420_bdd_4_lut (.I0(n22420), .I1(buf_adcdata_iac[8]), .I2(n16), 
            .I3(comm_cmd[2]), .O(n22423));
    defparam n22420_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_155_9_lut (.I0(n14_adj_1586), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19742), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_157_Mux_2_i16_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1543));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20644));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp_adj_1718[13]), .I1(cmd_rdadctmp_adj_1718[12]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20724));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20642));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_4_lut_adj_104 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1681));   // zim_main.vhd(540[9:35])
    defparam i5_4_lut_adj_104.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20640));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19750 (.I0(comm_cmd[1]), .I1(n19_adj_1560), 
            .I2(n20_adj_1561), .I3(comm_cmd[2]), .O(n22414));
    defparam comm_cmd_1__bdd_4_lut_19750.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_157_Mux_2_i17_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1533));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_2_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22414_bdd_4_lut (.I0(n22414), .I1(n17_adj_1559), .I2(n16_adj_1557), 
            .I3(comm_cmd[2]), .O(n22417));
    defparam n22414_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_157_Mux_2_i20_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1540));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_2_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1542));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20638));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i4_4_lut_adj_107 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1680));   // zim_main.vhd(540[9:35])
    defparam i4_4_lut_adj_107.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20404));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19774 (.I0(comm_cmd[2]), .I1(n21181), 
            .I2(n21199), .I3(comm_cmd[3]), .O(n22408));
    defparam comm_cmd_2__bdd_4_lut_19774.LUT_INIT = 16'he4aa;
    SB_LUT4 add_72_2_lut (.I0(ICE_GPMO_1), .I1(data_count[0]), .I2(iac_raw_buf_N_748), 
            .I3(ICE_GPMO_1), .O(n408)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22408_bdd_4_lut (.I0(n22408), .I1(n21196), .I2(n22375), .I3(comm_cmd[3]), 
            .O(n22411));
    defparam n22408_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20636));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_110 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18));   // zim_main.vhd(540[9:35])
    defparam i2_4_lut_adj_110.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20384));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19740 (.I0(comm_cmd[2]), .I1(n22363), 
            .I2(n21211), .I3(comm_cmd[3]), .O(n22402));
    defparam comm_cmd_2__bdd_4_lut_19740.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_112 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n20910));
    defparam i1_2_lut_3_lut_adj_112.LUT_INIT = 16'h0202;
    SB_LUT4 i15084_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[4] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17505));   // zim_main.vhd(251[9:19])
    defparam i15084_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12933_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n10783), 
            .I3(ICE_GPMO_1), .O(n15365));   // zim_main.vhd(595[3] 900[10])
    defparam i12933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22402_bdd_4_lut (.I0(n22402), .I1(n21142), .I2(n22387), .I3(comm_cmd[3]), 
            .O(n22405));
    defparam n22402_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15085_3_lut (.I0(\comm_buf[2] [5]), .I1(\comm_buf[6] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17506));   // zim_main.vhd(251[9:19])
    defparam i15085_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20634));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_114 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20632));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20382));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut (.I0(adress[5]), .I1(adress[4]), .I2(n13075), .I3(n21099), 
            .O(n20068));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_116 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1631));   // zim_main.vhd(540[9:35])
    defparam i3_4_lut_adj_116.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_117 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20630));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_118 (.I0(cmd_rdadctmp_adj_1718[14]), .I1(cmd_rdadctmp_adj_1718[13]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20732));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_119 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(ICE_GPMO_1), .O(n14_adj_1615));   // zim_main.vhd(612[4] 899[13])
    defparam i1_2_lut_3_lut_adj_119.LUT_INIT = 16'h1010;
    SB_LUT4 comm_state_3__I_0_399_Mux_4_i15_4_lut (.I0(n7_adj_1599), .I1(n8_adj_1600), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[4]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19058_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21324));
    defparam i19058_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13_4_lut_adj_120 (.I0(adress[4]), .I1(adress[3]), .I2(n13075), 
            .I3(n21099), .O(n20066));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_120.LUT_INIT = 16'h0aca;
    SB_LUT4 i19042_2_lut (.I0(\comm_buf[3] [5]), .I1(comm_index[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21303));
    defparam i19042_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19769 (.I0(comm_cmd[0]), .I1(req_data_cnt[10]), 
            .I2(tacadc_rst), .I3(comm_cmd[1]), .O(n22396));
    defparam comm_cmd_0__bdd_4_lut_19769.LUT_INIT = 16'he4aa;
    SB_LUT4 n22396_bdd_4_lut (.I0(n22396), .I1(acadc_skipCount[10]), .I2(SELIRNG0), 
            .I3(comm_cmd[1]), .O(n22399));
    defparam n22396_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15087_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17508));   // zim_main.vhd(251[9:19])
    defparam i15087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_121 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1503));   // zim_main.vhd(540[9:35])
    defparam i1_4_lut_adj_121.LUT_INIT = 16'h7bde;
    SB_CARRY add_155_9 (.CI(n19742), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19743));
    SB_LUT4 i12_4_lut_adj_122 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20380));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut_adj_123 (.I0(adress[3]), .I1(adress[2]), .I2(n13075), 
            .I3(n21099), .O(n20064));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_123.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19745 (.I0(comm_cmd[1]), .I1(n21324), 
            .I2(n21325), .I3(comm_cmd[2]), .O(n22390));
    defparam comm_cmd_1__bdd_4_lut_19745.LUT_INIT = 16'he4aa;
    SB_LUT4 add_73_17_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[15]), .I2(ICE_GPMO_1), 
            .I3(n19712), .O(n411)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_16_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[14]), .I2(ICE_GPMO_1), 
            .I3(n19711), .O(n412)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_4_lut_adj_124 (.I0(adress[2]), .I1(adress[1]), .I2(n13075), 
            .I3(n21099), .O(n20062));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_124.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20098));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp_adj_1764[22]), .I1(cmd_rdadctmp_adj_1764[21]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20216));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_127 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20074));   // zim_main.vhd(245[9:19])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 n22390_bdd_4_lut (.I0(n22390), .I1(n21513), .I2(n23_adj_1558), 
            .I3(comm_cmd[2]), .O(n22393));
    defparam n22390_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14_4_lut_adj_128 (.I0(n21_adj_1681), .I1(n23_adj_1584), .I2(n22_adj_1592), 
            .I3(n24_adj_1616), .O(n30_adj_1646));   // zim_main.vhd(540[9:35])
    defparam i14_4_lut_adj_128.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_129 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20096));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_130 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20094));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut_adj_131 (.I0(n17_adj_1503), .I1(n19_adj_1631), .I2(n18), 
            .I3(n20_adj_1680), .O(n29));   // zim_main.vhd(540[9:35])
    defparam i13_4_lut_adj_131.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_132 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20092));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd_rdadctmp_adj_1764[21]), .I1(cmd_rdadctmp_adj_1764[20]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20214));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 i19380_2_lut_3_lut_3_lut (.I0(comm_cmd[3]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21643));   // zim_main.vhd(595[3] 900[10])
    defparam i19380_2_lut_3_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i39_4_lut_3_lut_3_lut (.I0(comm_cmd[3]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n27));   // zim_main.vhd(595[3] 900[10])
    defparam i39_4_lut_3_lut_3_lut.LUT_INIT = 16'h1818;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19730 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22384));
    defparam comm_cmd_0__bdd_4_lut_19730.LUT_INIT = 16'he4aa;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(ICE_GPMO_1), .O(DDS_MCLK));   // zim_main.vhd(349[16:66])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22384_bdd_4_lut (.I0(n22384), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22387));
    defparam n22384_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp_adj_1764[20]), .I1(cmd_rdadctmp_adj_1764[19]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20212));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_135 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20090));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp_adj_1718[15]), .I1(cmd_rdadctmp_adj_1718[14]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20734));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1764[19]), .I1(cmd_rdadctmp_adj_1764[18]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20210));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_399_Mux_3_i15_4_lut (.I0(n7_adj_1601), .I1(n8_adj_1602), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[3]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19199_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21304));
    defparam i19199_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_155_8_lut (.I0(n14_adj_1587), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19741), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1718[16]), .I1(cmd_rdadctmp_adj_1718[15]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20736));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_158_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1692));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1764[18]), .I1(cmd_rdadctmp_adj_1764[17]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20208));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1764[17]), .I1(cmd_rdadctmp_adj_1764[16]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20206));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1718[17]), .I1(cmd_rdadctmp_adj_1718[16]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20742));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_142 (.I0(comm_cmd[7]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[7]), .O(n20272));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(eis_stop), .I1(n29), .I2(n30_adj_1646), .I3(ICE_GPMO_1), 
            .O(n16880));   // zim_main.vhd(595[3] 900[10])
    defparam i1_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19735 (.I0(comm_cmd[2]), .I1(n21158), 
            .I2(n21159), .I3(comm_cmd[3]), .O(n22378));
    defparam comm_cmd_2__bdd_4_lut_19735.LUT_INIT = 16'he4aa;
    SB_LUT4 i18457_2_lut (.I0(adc_state_adj_1760[3]), .I1(adc_state_adj_1760[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21099));
    defparam i18457_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 n22378_bdd_4_lut (.I0(n22378), .I1(n21156), .I2(n21155), .I3(comm_cmd[3]), 
            .O(n22381));
    defparam n22378_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp_adj_1764[16]), .I1(cmd_rdadctmp_adj_1764[15]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20204));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp_adj_1764[15]), .I1(cmd_rdadctmp_adj_1764[14]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20202));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_145 (.I0(comm_cmd[6]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[6]), .O(n20270));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 i15359_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1610));   // zim_main.vhd(612[4] 899[13])
    defparam i15359_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19720 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22372));
    defparam comm_cmd_0__bdd_4_lut_19720.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_146 (.I0(comm_cmd[5]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[5]), .O(n20268));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'hca0a;
    SB_LUT4 i13_4_lut_adj_147 (.I0(adress[1]), .I1(adress[0]), .I2(n13075), 
            .I3(n21099), .O(n20060));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_147.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n14780), .I2(n12143), .I3(comm_rx_buf[4]), 
            .O(n20266));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 n22372_bdd_4_lut (.I0(n22372), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n22375));
    defparam n22372_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd_rdadctmp_adj_1764[14]), .I1(cmd_rdadctmp_adj_1764[13]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20200));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_149 (.I0(comm_cmd[3]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[3]), .O(n20264));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_149.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd_rdadctmp_adj_1764[13]), .I1(cmd_rdadctmp_adj_1764[12]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20198));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_151 (.I0(comm_cmd[2]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[2]), .O(n20262));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_152 (.I0(comm_cmd[1]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[1]), .O(n20260));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp_adj_1764[12]), .I1(cmd_rdadctmp_adj_1764[11]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20196));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_158_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1694));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_155_8 (.CI(n19741), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19742));
    SB_LUT4 i18512_3_lut (.I0(n16_adj_1694), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21155));
    defparam i18512_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_16 (.CI(n19711), .I0(data_cntvec[14]), .I1(ICE_GPMO_1), 
            .CO(n19712));
    SB_LUT4 add_155_7_lut (.I0(n14_adj_1617), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19740), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_158_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1695));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18513_3_lut (.I0(n19_adj_1695), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21156));
    defparam i18513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1764[11]), .I1(cmd_rdadctmp_adj_1764[10]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20194));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3928_add_4_22_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[20]), .I3(n19881), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15360_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1611));   // zim_main.vhd(612[4] 899[13])
    defparam i15360_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_158_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1697));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18516_4_lut (.I0(n26_adj_1697), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21159));
    defparam i18516_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i15361_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1612));   // zim_main.vhd(612[4] 899[13])
    defparam i15361_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_155 (.I0(comm_state[0]), .I1(n20918), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10789));
    defparam i1_2_lut_adj_155.LUT_INIT = 16'h4444;
    SB_LUT4 comm_state_3__I_0_399_Mux_2_i15_4_lut (.I0(n7_adj_1603), .I1(n8_adj_1604), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[2]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut_adj_156 (.I0(adress[6]), .I1(adress[5]), .I2(n13075), 
            .I3(n21099), .O(n20070));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_156.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp_adj_1764[10]), .I1(cmd_rdadctmp_adj_1764[9]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20192));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(cmd_rdadctmp_adj_1764[9]), .I1(cmd_rdadctmp_adj_1764[8]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20190));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_399_Mux_1_i15_4_lut (.I0(n7_adj_1605), .I1(n8_adj_1606), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[1]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1764[8]), .I1(cmd_rdadctmp_adj_1764[7]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20188));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3928_add_4_22 (.CI(n19881), .I0(ICE_GPMO_1), .I1(wdtick_cnt[20]), 
            .CO(n19882));
    SB_LUT4 i1_4_lut_adj_160 (.I0(n12559), .I1(n12094), .I2(n9453), .I3(n12460), 
            .O(n12101));
    defparam i1_4_lut_adj_160.LUT_INIT = 16'h8880;
    SB_LUT4 wdtick_cnt_3928_add_4_21_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[19]), .I3(n19880), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n28), 
            .D(comm_state_3__N_11[1]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19210_4_lut (.I0(n17), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(comm_cmd[3]), .O(n21430));   // zim_main.vhd(245[9:19])
    defparam i19210_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i12_3_lut (.I0(comm_length[2]), .I1(n21430), .I2(n12101), 
            .I3(ICE_GPMO_1), .O(n20106));   // zim_main.vhd(245[9:19])
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_161 (.I0(cmd_rdadctmp_adj_1764[7]), .I1(cmd_rdadctmp_adj_1764[6]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20186));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'h0aca;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n20944), 
            .D(comm_state_3__N_11[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_213[1]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1718[18]), .I1(cmd_rdadctmp_adj_1718[17]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20744));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 i17_3_lut (.I0(n16893), .I1(n16887), .I2(eis_state[0]), .I3(ICE_GPMO_1), 
            .O(n13_adj_1548));   // zim_main.vhd(292[9:18])
    defparam i17_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12_4_lut_adj_163 (.I0(buf_dds1[14]), .I1(\comm_buf[0] [6]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20056));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i13604_4_lut (.I0(n21126), .I1(buf_dds1[13]), .I2(n14_adj_1615), 
            .I3(n12058), .O(n16036));   // zim_main.vhd(595[3] 900[10])
    defparam i13604_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1764[6]), .I1(cmd_rdadctmp_adj_1764[5]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20184));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp_adj_1764[5]), .I1(cmd_rdadctmp_adj_1764[4]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20182));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_166 (.I0(cmd_rdadctmp_adj_1764[4]), .I1(cmd_rdadctmp_adj_1764[3]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20180));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_167 (.I0(cmd_rdadctmp_adj_1764[3]), .I1(cmd_rdadctmp_adj_1764[2]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20178));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_168 (.I0(buf_dds1[12]), .I1(\comm_buf[0] [4]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20052));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_213[2]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_213[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_213[4]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_213[5]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_213[6]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_213[7]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_213[8]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12517), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i18_3_lut (.I0(eis_end_N_736), .I1(n13_adj_1548), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(eis_state_2__N_169[2]));   // zim_main.vhd(292[9:18])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_169 (.I0(cmd_rdadctmp_adj_1764[2]), .I1(cmd_rdadctmp_adj_1764[1]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20176));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_170 (.I0(cmd_rdadctmp_adj_1718[19]), .I1(cmd_rdadctmp_adj_1718[18]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20746));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3928_add_4_21 (.CI(n19880), .I0(ICE_GPMO_1), .I1(wdtick_cnt[19]), 
            .CO(n19881));
    SB_LUT4 wdtick_cnt_3928_add_4_20_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[18]), .I3(n19879), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_171 (.I0(buf_dds1[11]), .I1(\comm_buf[0] [3]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20050));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_172 (.I0(buf_dds1[10]), .I1(\comm_buf[0] [2]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20048));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3928_add_4_20 (.CI(n19879), .I0(ICE_GPMO_1), .I1(wdtick_cnt[18]), 
            .CO(n19880));
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18695), .I3(comm_cmd[1]), .O(n13));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i12_4_lut_adj_173 (.I0(buf_dds1[9]), .I1(\comm_buf[0] [1]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20046));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_173.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3928_add_4_19_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[17]), .I3(n19878), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_399_Mux_0_i15_4_lut (.I0(n7_adj_1579), .I1(n8_adj_1580), 
            .I2(comm_state[3]), .I3(n9299), .O(data_index_8__N_213[0]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_399_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_174 (.I0(buf_dds1[6]), .I1(\comm_buf[1] [6]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20040));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_174.LUT_INIT = 16'hca0a;
    SB_LUT4 i13628_4_lut (.I0(n21126), .I1(buf_dds1[5]), .I2(n14_adj_1617), 
            .I3(n12058), .O(n16060));   // zim_main.vhd(595[3] 900[10])
    defparam i13628_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i15362_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1613));   // zim_main.vhd(612[4] 899[13])
    defparam i15362_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_175 (.I0(cmd_rdadctmp_adj_1764[1]), .I1(cmd_rdadctmp_adj_1764[0]), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20174));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_176 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20378));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'h0aca;
    SB_LUT4 i18515_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21158));
    defparam i18515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i28_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n20450));   // zim_main.vhd(247[9:17])
    defparam i28_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 i14449_4_lut (.I0(AC_ADC_SYNC), .I1(n16880), .I2(eis_end_N_736), 
            .I3(n7_adj_1565), .O(n16881));   // zim_main.vhd(300[9:16])
    defparam i14449_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19725 (.I0(comm_cmd[1]), .I1(n19_adj_1677), 
            .I2(buf_readRTD[7]), .I3(comm_cmd[2]), .O(n22366));
    defparam comm_cmd_1__bdd_4_lut_19725.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_177 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20376));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'h0aca;
    SB_LUT4 n22366_bdd_4_lut (.I0(n22366), .I1(buf_adcdata_iac[15]), .I2(n16_adj_1676), 
            .I3(comm_cmd[2]), .O(n22369));
    defparam n22366_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_178 (.I0(buf_dds1[4]), .I1(\comm_buf[1] [4]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20034));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 i13633_4_lut (.I0(n21126), .I1(buf_dds1[3]), .I2(n14_adj_1618), 
            .I3(n12058), .O(n16065));   // zim_main.vhd(595[3] 900[10])
    defparam i13633_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_179 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20374));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_180 (.I0(buf_dds1[2]), .I1(\comm_buf[1] [2]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20028));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_181 (.I0(buf_dds1[1]), .I1(\comm_buf[1] [1]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20026));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1558));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19214_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21513));
    defparam i19214_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_182 (.I0(cmd_rdadctmp_adj_1718[20]), .I1(cmd_rdadctmp_adj_1718[19]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20748));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i19066_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21325));
    defparam i19066_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18566_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21209));
    defparam i18566_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1718[21]), .I1(cmd_rdadctmp_adj_1718[20]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20750));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_184 (.I0(cmd_rdadctmp_adj_1718[22]), .I1(cmd_rdadctmp_adj_1718[21]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20754));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_185 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20372));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_186 (.I0(eis_state[1]), .I1(eis_end_N_736), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20981));   // zim_main.vhd(479[3] 557[10])
    defparam i1_2_lut_adj_186.LUT_INIT = 16'h2222;
    SB_LUT4 i18568_4_lut (.I0(n21209), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21211));
    defparam i18568_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18554_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21197));
    defparam i18554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_187 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20370));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'h0aca;
    SB_LUT4 i18_3_lut_adj_188 (.I0(eis_state[0]), .I1(eis_end_N_736), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n12));
    defparam i18_3_lut_adj_188.LUT_INIT = 16'hacac;
    SB_LUT4 i18556_4_lut (.I0(n21197), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21199));
    defparam i18556_4_lut.LUT_INIT = 16'hfaca;
    SB_CARRY wdtick_cnt_3928_add_4_19 (.CI(n19878), .I0(ICE_GPMO_1), .I1(wdtick_cnt[17]), 
            .CO(n19879));
    SB_LUT4 i12_4_lut_adj_189 (.I0(n20981), .I1(eis_adc_trig), .I2(tacadc_rst), 
            .I3(n12), .O(n20488));   // zim_main.vhd(479[3] 557[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n13285), .I3(adc_state_adj_1760[2]), .O(n20368));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19711 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22360));
    defparam comm_cmd_0__bdd_4_lut_19711.LUT_INIT = 16'he4aa;
    SB_LUT4 i4049_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(comm_state_3__N_441[1]), 
            .I3(ICE_GPMO_1), .O(comm_index_2__N_449[0]));   // zim_main.vhd(794[5] 804[12])
    defparam i4049_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1718[23]), .I1(cmd_rdadctmp_adj_1718[22]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20756));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1557));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1559));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1561));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1560));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3928_add_4_18_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[16]), .I3(n19877), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15205_3_lut (.I0(comm_state[0]), .I1(n5991), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5994));   // zim_main.vhd(612[4] 899[13])
    defparam i15205_3_lut.LUT_INIT = 16'hdcdc;
    SPI_SLAVE comm_spi (.n6231(n6231), .clk_32MHz(clk_32MHz), .comm_data_vld(comm_data_vld), 
            .reset_int(reset_int), .comm_tx_buf({comm_tx_buf}), .GND_net(ICE_GPMO_1), 
            .comm_rx_buf({comm_rx_buf}), .VCC_net(VCC_net), .\comm_buf[6][7] (\comm_buf[6] [7]), 
            .n12485(n12485), .\comm_state[3] (comm_state[3]), .n20086(n20086), 
            .sclk_sync1(sclk_sync1), .sclk_sync2(sclk_sync2), .ICE_SPI_MISO(ICE_SPI_MISO), 
            .n15381(n15381), .n15380(n15380), .n15376(n15376), .\comm_state_3__N_441[1] (comm_state_3__N_441[1]), 
            .\comm_state[2] (comm_state[2]), .n4(n4_adj_1686), .\comm_cmd[7] (comm_cmd[7]), 
            .n19294(n19294), .n1(n1_adj_1632));   // zim_main.vhd(962[13:22])
    SB_LUT4 mux_158_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR comm_clear_346__i4 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(n5994), 
            .R(n6005));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i12_4_lut_adj_192 (.I0(cmd_rdadctmp_adj_1718[24]), .I1(cmd_rdadctmp_adj_1718[23]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20758));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'hca0a;
    SB_LUT4 add_72_4_lut (.I0(ICE_GPMO_1), .I1(data_count[2]), .I2(ICE_GPMO_1), 
            .I3(n19691), .O(n406)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_193 (.I0(dds_state_adj_1741[2]), .I1(dds_state_adj_1741[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20538));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_193.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_194 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20366));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_6_i16_3_lut (.I0(buf_dds0[14]), .I1(buf_dds1[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1547));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_155_7 (.CI(n19740), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19741));
    SB_CARRY wdtick_cnt_3928_add_4_18 (.CI(n19877), .I0(ICE_GPMO_1), .I1(wdtick_cnt[16]), 
            .CO(n19878));
    SB_LUT4 i12_4_lut_adj_195 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20338));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3928_add_4_17_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[15]), .I3(n19876), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15185_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17605));
    defparam i15185_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_157_Mux_6_i17_3_lut (.I0(VAC_FLT0), .I1(buf_adcdata_iac[22]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1545));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_6_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3928_add_4_17 (.CI(n19876), .I0(ICE_GPMO_1), .I1(wdtick_cnt[15]), 
            .CO(n19877));
    SB_LUT4 i17245_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17245_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_196 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20536));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_196.LUT_INIT = 16'h4444;
    SB_LUT4 i12934_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10783), 
            .I3(ICE_GPMO_1), .O(n15366));   // zim_main.vhd(595[3] 900[10])
    defparam i12934_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_197 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n11918), .I3(adc_state_adj_1763[2]), .O(n20474));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_198 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20364));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_199 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20362));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_200 (.I0(cmd_rdadctmp_adj_1764[0]), .I1(VDC_SDO), 
            .I2(n13351), .I3(adc_state_adj_1763[3]), .O(n20248));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_6_i20_3_lut (.I0(buf_cfgRTD[6]), .I1(buf_readRTD[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1538));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_6_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20472));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'h0aca;
    SB_LUT4 i15366_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1589));   // zim_main.vhd(612[4] 899[13])
    defparam i15366_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_202 (.I0(cmd_rdadctmp_adj_1718[25]), .I1(cmd_rdadctmp_adj_1718[24]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20760));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_203 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20470));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_204 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(ICE_GPMO_1), .O(clk_RTD_N_727));
    defparam i1_2_lut_3_lut_adj_204.LUT_INIT = 16'h6a6a;
    SB_LUT4 mux_157_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[22]), .I1(buf_adcdata_vdc[22]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1544));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15367_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1590));   // zim_main.vhd(612[4] 899[13])
    defparam i15367_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i13004_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9299), .I3(n12666), .O(n15436));   // zim_main.vhd(595[3] 900[10])
    defparam i13004_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_205 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20358));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1718[31]), .I1(cmd_rdadctmp_adj_1718[30]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20532));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 add_155_6_lut (.I0(n14_adj_1588), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19739), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_207 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20356));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp_adj_1718[30]), .I1(cmd_rdadctmp_adj_1718[29]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20530));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(n18696), 
            .I3(comm_cmd[1]), .O(n21));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_209 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20354));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'h0aca;
    SB_LUT4 i13672_3_lut (.I0(n15140), .I1(bit_cnt_adj_1743[0]), .I2(dds_state_adj_1741[1]), 
            .I3(ICE_GPMO_1), .O(n16104));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13672_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 n22360_bdd_4_lut (.I0(n22360), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22363));
    defparam n22360_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_210 (.I0(cmd_rdadctmp_adj_1718[26]), .I1(cmd_rdadctmp_adj_1718[25]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20762));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_211 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20352));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19706 (.I0(comm_cmd[1]), .I1(n19_adj_1710), 
            .I2(n20_adj_1711), .I3(comm_cmd[2]), .O(n22354));
    defparam comm_cmd_1__bdd_4_lut_19706.LUT_INIT = 16'he4aa;
    SB_LUT4 i13676_3_lut (.I0(n15135), .I1(bit_cnt_adj_1739[0]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n16108));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13676_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 mux_166_Mux_0_i1_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19393_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21658));
    defparam i19393_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_166_Mux_0_i2_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22354_bdd_4_lut (.I0(n22354), .I1(n17_adj_1709), .I2(n16_adj_1708), 
            .I3(comm_cmd[2]), .O(n22357));
    defparam n22354_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19045_2_lut (.I0(\comm_buf[6] [0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21308));
    defparam i19045_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_158_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1684));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_166_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1576));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1690));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19697 (.I0(comm_cmd[1]), .I1(n21313), 
            .I2(n21314), .I3(comm_cmd[2]), .O(n22348));
    defparam comm_cmd_1__bdd_4_lut_19697.LUT_INIT = 16'he4aa;
    SB_LUT4 n22348_bdd_4_lut (.I0(n22348), .I1(n21514), .I2(n23_adj_1541), 
            .I3(comm_cmd[2]), .O(n22351));
    defparam n22348_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19692 (.I0(comm_cmd[1]), .I1(n26_adj_1571), 
            .I2(n21311), .I3(comm_cmd[2]), .O(n22342));
    defparam comm_cmd_1__bdd_4_lut_19692.LUT_INIT = 16'he4aa;
    SB_LUT4 n22342_bdd_4_lut (.I0(n22342), .I1(n21515), .I2(n23_adj_1570), 
            .I3(comm_cmd[2]), .O(n22345));
    defparam n22342_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19687 (.I0(comm_cmd[1]), .I1(n26_adj_1713), 
            .I2(n21310), .I3(comm_cmd[2]), .O(n22336));
    defparam comm_cmd_1__bdd_4_lut_19687.LUT_INIT = 16'he4aa;
    SB_LUT4 n22336_bdd_4_lut (.I0(n22336), .I1(n21516), .I2(n23_adj_1712), 
            .I3(comm_cmd[2]), .O(n22339));
    defparam n22336_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1576), 
            .I2(n21308), .I3(comm_index[2]), .O(n22330));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22330_bdd_4_lut (.I0(n22330), .I1(n2), .I2(n1), .I3(comm_index[2]), 
            .O(n22333));
    defparam n22330_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_158_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1691));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_212 (.I0(VAC_CS), .I1(adc_state_adj_1717[1]), .I2(adc_state_adj_1717[0]), 
            .I3(DTRIG_N_869_adj_1495), .O(n15_adj_1661));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_212.LUT_INIT = 16'h4554;
    SB_LUT4 mux_157_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1712));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19512_4_lut (.I0(n20983), .I1(n15_adj_1661), .I2(drdy_falling_adj_1494), 
            .I3(adc_state_adj_1717[0]), .O(n12_adj_1659));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19512_4_lut.LUT_INIT = 16'h3313;
    SB_LUT4 i19061_2_lut (.I0(req_data_cnt[15]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21516));
    defparam i19061_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19069_2_lut (.I0(buf_data_vac[47]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21310));
    defparam i19069_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_213 (.I0(cmd_rdadctmp_adj_1718[0]), .I1(VAC_MISO), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20600));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1713));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19052_2_lut (.I0(buf_data_vac[31]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21660));
    defparam i19052_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_157_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1570));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19054_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21515));
    defparam i19054_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 wdtick_cnt_3928_add_4_16_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[14]), .I3(n19875), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_DFFN dds0_mclkcnt_i7_3936__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(470[4] 473[11])
    SB_LUT4 i13003_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9299), .I3(n12666), .O(n15435));   // zim_main.vhd(595[3] 900[10])
    defparam i13003_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19420_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21311));
    defparam i19420_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_158_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1678));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1571));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_15_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[13]), .I2(ICE_GPMO_1), 
            .I3(n19710), .O(n413)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_6 (.CI(n19739), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19740));
    SB_DFFN dds0_mclkcnt_i7_3936__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3936__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42_adj_1535));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3936__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3936__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3936__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3936__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(470[4] 473[11])
    SB_DFFR synccnt_3925__i1 (.Q(synccnt[1]), .C(clk_32MHz), .D(n44_adj_1550), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3925__i2 (.Q(synccnt[2]), .C(clk_32MHz), .D(n43_adj_1551), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 i1_4_lut_adj_214 (.I0(IAC_CS), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(DTRIG_N_869), .O(n15_adj_1673));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_214.LUT_INIT = 16'h4554;
    SB_DFFR synccnt_3925__i3 (.Q(synccnt[3]), .C(clk_32MHz), .D(n42_adj_1552), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3925__i4 (.Q(synccnt[4]), .C(clk_32MHz), .D(n41_adj_1553), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3925__i5 (.Q(synccnt[5]), .C(clk_32MHz), .D(n40_adj_1554), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3925__i6 (.Q(synccnt[6]), .C(clk_32MHz), .D(n39_adj_1555), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3925__i7 (.Q(synccnt[7]), .C(clk_32MHz), .D(n38_adj_1556), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFSR clk_cnt_3926_3927__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14), 
            .R(n17605));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY wdtick_cnt_3928_add_4_16 (.CI(n19875), .I0(ICE_GPMO_1), .I1(wdtick_cnt[14]), 
            .CO(n19876));
    SB_LUT4 mux_157_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1541));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19515_4_lut (.I0(n20951), .I1(n15_adj_1673), .I2(drdy_falling), 
            .I3(adc_state[0]), .O(n12_adj_1668));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19515_4_lut.LUT_INIT = 16'h3313;
    SB_LUT4 wdtick_cnt_3928_add_4_15_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[13]), .I3(n19874), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13002_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9299), .I2(\comm_buf[0] [5]), 
            .I3(n12666), .O(n15434));   // zim_main.vhd(595[3] 900[10])
    defparam i13002_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i19067_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21514));
    defparam i19067_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR wdtick_cnt_3928__i1 (.Q(wdtick_cnt[1]), .C(clk_16MHz), .D(n144), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i6635_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[2]), 
            .I3(\comm_buf[1] [2]), .O(n8_adj_1604));
    defparam i6635_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i13001_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9299), .I3(n12666), .O(n15433));   // zim_main.vhd(595[3] 900[10])
    defparam i13001_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19053_2_lut (.I0(buf_data_vac[43]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21314));
    defparam i19053_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19047_2_lut (.I0(data_idxvec[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21313));
    defparam i19047_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_157_Mux_7_i16_3_lut (.I0(buf_dds0[15]), .I1(buf_dds1[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1708));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_215 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12796), 
            .I3(adc_state[0]), .O(n20598));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_7_i17_3_lut (.I0(VAC_FLT1), .I1(buf_adcdata_iac[23]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1709));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_7_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17252_2_lut (.I0(comm_index[0]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n19891));
    defparam i17252_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n13285), 
            .I3(adc_state_adj_1760[2]), .O(n20350));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'h0aca;
    SB_LUT4 i13000_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9299), .I3(n12666), .O(n15432));   // zim_main.vhd(595[3] 900[10])
    defparam i13000_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_3_lut (.I0(comm_state[2]), .I1(comm_index[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n8));   // zim_main.vhd(595[3] 900[10])
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_3_lut_adj_217 (.I0(comm_cmd[6]), .I1(comm_cmd[4]), .I2(comm_cmd[5]), 
            .I3(ICE_GPMO_1), .O(n18695));   // zim_main.vhd(595[3] 900[10])
    defparam i2_3_lut_adj_217.LUT_INIT = 16'hfbfb;
    SB_LUT4 mux_157_Mux_7_i20_3_lut (.I0(buf_cfgRTD[7]), .I1(buf_readRTD[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1711));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_7_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12999_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9299), .I3(n12666), .O(n15431));   // zim_main.vhd(595[3] 900[10])
    defparam i12999_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12998_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9299), .I3(n12666), .O(n15430));   // zim_main.vhd(595[3] 900[10])
    defparam i12998_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19682 (.I0(comm_cmd[1]), .I1(n26_adj_1692), 
            .I2(n21304), .I3(comm_cmd[2]), .O(n22324));
    defparam comm_cmd_1__bdd_4_lut_19682.LUT_INIT = 16'he4aa;
    SB_LUT4 n22324_bdd_4_lut (.I0(n22324), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22327));
    defparam n22324_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_218 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12485), .I3(comm_state[3]), .O(n20088));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_2_lut (.I0(comm_state[0]), .I1(comm_state_3__N_441[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6974));   // zim_main.vhd(612[4] 899[13])
    defparam i2_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i12991_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9299), .I3(n12666), .O(n15423));   // zim_main.vhd(595[3] 900[10])
    defparam i12991_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_155_5_lut (.I0(n14_adj_1618), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19738), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3928_add_4_15 (.CI(n19874), .I0(ICE_GPMO_1), .I1(wdtick_cnt[13]), 
            .CO(n19875));
    SB_LUT4 i22_4_lut (.I0(comm_state_3__N_441[1]), .I1(comm_state[0]), 
            .I2(comm_data_vld), .I3(comm_state[1]), .O(n7));
    defparam i22_4_lut.LUT_INIT = 16'h10cc;
    SB_LUT4 i12990_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9299), .I3(n12666), .O(n15422));   // zim_main.vhd(595[3] 900[10])
    defparam i12990_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_1__bdd_4_lut_19677 (.I0(comm_index[1]), .I1(n17508), 
            .I2(n21303), .I3(comm_index[0]), .O(n22318));
    defparam comm_index_1__bdd_4_lut_19677.LUT_INIT = 16'he4aa;
    SB_LUT4 n22318_bdd_4_lut (.I0(n22318), .I1(n17506), .I2(n17505), .I3(comm_index[0]), 
            .O(n22321));
    defparam n22318_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3928_add_4_14_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[12]), .I3(n19873), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_5 (.CI(n19738), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19739));
    SB_CARRY wdtick_cnt_3928_add_4_14 (.CI(n19873), .I0(ICE_GPMO_1), .I1(wdtick_cnt[12]), 
            .CO(n19874));
    SB_LUT4 wdtick_cnt_3928_add_4_13_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[11]), .I3(n19872), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3928_add_4_13 (.CI(n19872), .I0(ICE_GPMO_1), .I1(wdtick_cnt[11]), 
            .CO(n19873));
    SB_LUT4 wdtick_cnt_3928_add_4_12_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[10]), .I3(n19871), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_166_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1623));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12358_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14780));   // zim_main.vhd(612[4] 899[13])
    defparam i12358_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19672 (.I0(comm_cmd[1]), .I1(n19_adj_1542), 
            .I2(n20_adj_1540), .I3(comm_cmd[2]), .O(n22312));
    defparam comm_cmd_1__bdd_4_lut_19672.LUT_INIT = 16'he4aa;
    SB_LUT4 n22312_bdd_4_lut (.I0(n22312), .I1(n17_adj_1533), .I2(n16_adj_1543), 
            .I3(comm_cmd[2]), .O(n22315));
    defparam n22312_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_166_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1624));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19662 (.I0(comm_cmd[1]), .I1(n19_adj_1705), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22306));
    defparam comm_cmd_1__bdd_4_lut_19662.LUT_INIT = 16'he4aa;
    SB_LUT4 n22306_bdd_4_lut (.I0(n22306), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1704), 
            .I3(comm_cmd[2]), .O(n22309));
    defparam n22306_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_15 (.CI(n19710), .I0(data_cntvec[13]), .I1(ICE_GPMO_1), 
            .CO(n19711));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19657 (.I0(comm_cmd[1]), .I1(n26_adj_1702), 
            .I2(n21299), .I3(comm_cmd[2]), .O(n22300));
    defparam comm_cmd_1__bdd_4_lut_19657.LUT_INIT = 16'he4aa;
    SB_LUT4 n22300_bdd_4_lut (.I0(n22300), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22303));
    defparam n22300_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_19667 (.I0(comm_index[1]), .I1(n4_adj_1622), 
            .I2(n21295), .I3(comm_index[2]), .O(n22294));
    defparam comm_index_1__bdd_4_lut_19667.LUT_INIT = 16'he4aa;
    SB_LUT4 n22294_bdd_4_lut (.I0(n22294), .I1(n2_adj_1621), .I2(n1_adj_1620), 
            .I3(comm_index[2]), .O(n22297));
    defparam n22294_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12989_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0] [7]), 
            .I2(n9299), .I3(n12636), .O(n15421));   // zim_main.vhd(595[3] 900[10])
    defparam i12989_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_219 (.I0(comm_state[0]), .I1(n18695), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n18696));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_219.LUT_INIT = 16'heeee;
    SB_CARRY wdtick_cnt_3928_add_4_12 (.CI(n19871), .I0(ICE_GPMO_1), .I1(wdtick_cnt[10]), 
            .CO(n19872));
    SB_LUT4 i11_4_lut_adj_220 (.I0(comm_cmd[0]), .I1(n14780), .I2(n12143), 
            .I3(comm_rx_buf[0]), .O(n20238));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_DFFR wdtick_cnt_3928__i2 (.Q(wdtick_cnt[2]), .C(clk_16MHz), .D(n143), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i3 (.Q(wdtick_cnt[3]), .C(clk_16MHz), .D(n142), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i4 (.Q(wdtick_cnt[4]), .C(clk_16MHz), .D(n141), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i5 (.Q(wdtick_cnt[5]), .C(clk_16MHz), .D(n140), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i6 (.Q(wdtick_cnt[6]), .C(clk_16MHz), .D(n139), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i7 (.Q(wdtick_cnt[7]), .C(clk_16MHz), .D(n138), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i8 (.Q(wdtick_cnt[8]), .C(clk_16MHz), .D(n137), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i9 (.Q(wdtick_cnt[9]), .C(clk_16MHz), .D(n136), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i10 (.Q(wdtick_cnt[10]), .C(clk_16MHz), .D(n135), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i11 (.Q(wdtick_cnt[11]), .C(clk_16MHz), .D(n134), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i12 (.Q(wdtick_cnt[12]), .C(clk_16MHz), .D(n133), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i13 (.Q(wdtick_cnt[13]), .C(clk_16MHz), .D(n132), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i14 (.Q(wdtick_cnt[14]), .C(clk_16MHz), .D(n131), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i15 (.Q(wdtick_cnt[15]), .C(clk_16MHz), .D(n130), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i16 (.Q(wdtick_cnt[16]), .C(clk_16MHz), .D(n129), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i17 (.Q(wdtick_cnt[17]), .C(clk_16MHz), .D(n128), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i18 (.Q(wdtick_cnt[18]), .C(clk_16MHz), .D(n127), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i19 (.Q(wdtick_cnt[19]), .C(clk_16MHz), .D(n126), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i20 (.Q(wdtick_cnt[20]), .C(clk_16MHz), .D(n125), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i21 (.Q(wdtick_cnt[21]), .C(clk_16MHz), .D(n124), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i22 (.Q(wdtick_cnt[22]), .C(clk_16MHz), .D(n123), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i23 (.Q(wdtick_cnt[23]), .C(clk_16MHz), .D(n122), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i24 (.Q(wdtick_cnt[24]), .C(clk_16MHz), .D(n121), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i25 (.Q(wdtick_cnt[25]), .C(clk_16MHz), .D(n120), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i26 (.Q(wdtick_cnt[26]), .C(clk_16MHz), .D(n119), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3928__i27 (.Q(wdtick_cnt[27]), .C(clk_16MHz), .D(n118), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFF comm_clear_346__i2 (.Q(trig_dds0), .C(clk_32MHz), .D(n20130));   // zim_main.vhd(612[4] 899[13])
    SB_DFF comm_clear_346__i1 (.Q(trig_dds1), .C(clk_32MHz), .D(n15498));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i12_4_lut_adj_221 (.I0(cmd_rdadctmp_adj_1718[27]), .I1(cmd_rdadctmp_adj_1718[26]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20764));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_LUT4 i12988_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9299), .I3(n12636), .O(n15420));   // zim_main.vhd(595[3] 900[10])
    defparam i12988_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12987_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9299), .I2(\comm_buf[0] [5]), 
            .I3(n12636), .O(n15419));   // zim_main.vhd(595[3] 900[10])
    defparam i12987_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i19112_2_lut (.I0(n17_adj_1531), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21382));
    defparam i19112_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i20_4_lut (.I0(n21069), .I1(n21382), .I2(comm_state[3]), .I3(n9299), 
            .O(n12058));
    defparam i20_4_lut.LUT_INIT = 16'hf5c5;
    SB_LUT4 i12986_3_lut_4_lut (.I0(buf_cfgRTD[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9299), .I3(n12636), .O(n15418));   // zim_main.vhd(595[3] 900[10])
    defparam i12986_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i11_4_lut_adj_222 (.I0(buf_dds1[0]), .I1(\comm_buf[1] [0]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20024));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 n22432_bdd_4_lut_4_lut (.I0(comm_state_3__N_441[1]), .I1(comm_state[0]), 
            .I2(comm_state[2]), .I3(n22432), .O(n22435));
    defparam n22432_bdd_4_lut_4_lut.LUT_INIT = 16'hf20c;
    SB_LUT4 i12_4_lut_adj_223 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20346));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_LUT4 i12985_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9299), .I3(n12636), .O(n15417));   // zim_main.vhd(595[3] 900[10])
    defparam i12985_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22510_bdd_4_lut_4_lut (.I0(eis_end_N_736), .I1(eis_state[0]), 
            .I2(n16881), .I3(n22510), .O(eis_state_2__N_169[0]));   // zim_main.vhd(479[3] 557[10])
    defparam n22510_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 comm_index_1__bdd_4_lut_19647 (.I0(comm_index[1]), .I1(n4_adj_1625), 
            .I2(n21294), .I3(comm_index[2]), .O(n22288));
    defparam comm_index_1__bdd_4_lut_19647.LUT_INIT = 16'he4aa;
    SB_LUT4 i12984_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9299), .I3(n12636), .O(n15416));   // zim_main.vhd(595[3] 900[10])
    defparam i12984_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15451));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15450));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15449));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15448));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15447));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15446));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15445));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15444));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15443));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15442));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15441));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15440));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15439));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15438));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15437));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12983_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9299), .I3(n12636), .O(n15415));   // zim_main.vhd(595[3] 900[10])
    defparam i12983_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15436));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15435));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15434));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15433));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15432));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15431));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15430));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15429));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15428));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15427));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15426));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15425));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12935_3_lut (.I0(START_MAIN), .I1(\comm_buf[0] [0]), .I2(n10783), 
            .I3(ICE_GPMO_1), .O(n15367));   // zim_main.vhd(595[3] 900[10])
    defparam i12935_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15424));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15423));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15422));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15421));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15420));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 wdtick_cnt_3928_add_4_11_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[9]), .I3(n19870), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15419));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15418));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15417));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15416));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15415));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15414));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15413));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15412));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15411));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15410));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15409));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15408));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15407));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15406));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15405));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15404));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15403));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15402));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15401));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15400));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15399));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15398));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15397));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15396));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15395));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15394));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15393));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15392));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15391));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15390));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15389));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15388));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15387));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i15283_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20908), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10_adj_1536));   // zim_main.vhd(470[4] 473[11])
    defparam i15283_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12982_3_lut_4_lut (.I0(VAC_FLT1), .I1(\comm_buf[0] [7]), .I2(n9299), 
            .I3(n12622), .O(n15414));   // zim_main.vhd(595[3] 900[10])
    defparam i12982_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i4136_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(cs_mask_cnt_1__N_397));
    defparam i4136_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_441[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6649));   // zim_main.vhd(585[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_DFFN eis_end_337 (.Q(eis_end), .C(clk_32MHz), .D(n15383));   // zim_main.vhd(479[3] 557[10])
    SB_DFFN dummy_339 (.Q(TEST_LED), .C(clk_32MHz), .D(n15382));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i5_4_lut_adj_224 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1640));   // zim_main.vhd(470[7:27])
    defparam i5_4_lut_adj_224.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_225 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1640), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20908));   // zim_main.vhd(470[7:27])
    defparam i6_4_lut_adj_225.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_226 (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20908), 
            .I3(ICE_GPMO_1), .O(dds0_mclk_N_720));
    defparam i1_3_lut_adj_226.LUT_INIT = 16'ha6a6;
    SB_LUT4 i24_4_lut (.I0(n17533), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(AC_ADC_SYNC), .O(n11_adj_1607));
    defparam i24_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i19479_3_lut (.I0(eis_end_N_736), .I1(eis_state[1]), .I2(n11_adj_1607), 
            .I3(ICE_GPMO_1), .O(n11792));
    defparam i19479_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i2_2_lut_adj_227 (.I0(wdtick_cnt[0]), .I1(wdtick_cnt[13]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n30_adj_1577));
    defparam i2_2_lut_adj_227.LUT_INIT = 16'h8888;
    SB_LUT4 i16_4_lut (.I0(wdtick_cnt[20]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[18]), 
            .I3(wdtick_cnt[5]), .O(n44_adj_1636));
    defparam i16_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i20_4_lut_adj_228 (.I0(wdtick_cnt[21]), .I1(wdtick_cnt[26]), 
            .I2(wdtick_cnt[3]), .I3(wdtick_cnt[6]), .O(n48));
    defparam i20_4_lut_adj_228.LUT_INIT = 16'h8000;
    SB_LUT4 i18_4_lut (.I0(wdtick_cnt[27]), .I1(wdtick_cnt[12]), .I2(wdtick_cnt[9]), 
            .I3(wdtick_cnt[16]), .O(n46));
    defparam i18_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19_4_lut (.I0(wdtick_cnt[22]), .I1(wdtick_cnt[4]), .I2(wdtick_cnt[24]), 
            .I3(wdtick_cnt[17]), .O(n47));
    defparam i19_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i17_4_lut (.I0(wdtick_cnt[8]), .I1(wdtick_cnt[7]), .I2(wdtick_cnt[1]), 
            .I3(wdtick_cnt[14]), .O(n45_adj_1567));
    defparam i17_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i22_4_lut_adj_229 (.I0(wdtick_cnt[23]), .I1(n44_adj_1636), .I2(n30_adj_1577), 
            .I3(wdtick_cnt[10]), .O(n50));
    defparam i22_4_lut_adj_229.LUT_INIT = 16'h8000;
    SB_LUT4 add_155_4_lut (.I0(n14_adj_1589), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19737), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3928_add_4_11 (.CI(n19870), .I0(ICE_GPMO_1), .I1(wdtick_cnt[9]), 
            .CO(n19871));
    SB_LUT4 wdtick_cnt_3928_add_4_10_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[8]), .I3(n19869), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12981_3_lut_4_lut (.I0(VAC_FLT0), .I1(\comm_buf[0] [6]), .I2(n9299), 
            .I3(n12622), .O(n15413));   // zim_main.vhd(595[3] 900[10])
    defparam i12981_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY wdtick_cnt_3928_add_4_10 (.CI(n19869), .I0(ICE_GPMO_1), .I1(wdtick_cnt[8]), 
            .CO(n19870));
    SB_LUT4 wdtick_cnt_3928_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[7]), .I3(n19868), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_4 (.CI(n19737), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19738));
    SB_CARRY wdtick_cnt_3928_add_4_9 (.CI(n19868), .I0(ICE_GPMO_1), .I1(wdtick_cnt[7]), 
            .CO(n19869));
    SB_LUT4 i1_4_lut_adj_230 (.I0(adc_state_adj_1717[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_869_adj_1495), .I3(adc_state_adj_1717[0]), .O(n20508));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_230.LUT_INIT = 16'hcce8;
    SB_LUT4 i12_4_lut_adj_231 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20342));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_LUT4 i19240_2_lut_3_lut (.I0(AC_ADC_SYNC), .I1(n7_adj_1565), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n21541));   // zim_main.vhd(385[3] 398[10])
    defparam i19240_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i12_4_lut_adj_232 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20334));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_232.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_233 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20330));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3928_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[6]), .I3(n19867), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_234 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20326));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_235 (.I0(adc_state_adj_1717[1]), .I1(DTRIG_N_869_adj_1495), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20983));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_2_lut_adj_235.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_236 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20322));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_LUT4 i26_4_lut (.I0(n45_adj_1567), .I1(n47), .I2(n46), .I3(n48), 
            .O(n54));
    defparam i26_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12_4_lut_adj_237 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20318));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3928_add_4_8 (.CI(n19867), .I0(ICE_GPMO_1), .I1(wdtick_cnt[6]), 
            .CO(n19868));
    SB_LUT4 add_155_3_lut (.I0(n14_adj_1590), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19736), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3928_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[5]), .I3(n19866), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3928_add_4_7 (.CI(n19866), .I0(ICE_GPMO_1), .I1(wdtick_cnt[5]), 
            .CO(n19867));
    SB_LUT4 i12_4_lut_adj_238 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20312));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3928_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[4]), .I3(n19865), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3928_add_4_6 (.CI(n19865), .I0(ICE_GPMO_1), .I1(wdtick_cnt[4]), 
            .CO(n19866));
    SB_LUT4 i12944_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n6231), 
            .I3(ICE_GPMO_1), .O(n15376));   // spi_slave.vhd(47[3] 84[10])
    defparam i12944_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12946_2_lut (.I0(drdy_sync2_adj_1492), .I1(drdy_prev_adj_1493), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n15378));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12946_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i7018_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9453));   // zim_main.vhd(612[4] 899[13])
    defparam i7018_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12947_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1742[15]), .I2(dds_state_adj_1741[1]), 
            .I3(ICE_GPMO_1), .O(n15379));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3928_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[3]), .I3(n19864), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12948_3_lut (.I0(sclk_sync1), .I1(ICE_SPI_SCLK), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15380));   // spi_slave.vhd(47[3] 84[10])
    defparam i12948_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12949_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15381));   // spi_slave.vhd(47[3] 84[10])
    defparam i12949_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12980_3_lut_4_lut (.I0(VAC_OSR1), .I1(n9299), .I2(\comm_buf[0] [5]), 
            .I3(n12622), .O(n15412));   // zim_main.vhd(595[3] 900[10])
    defparam i12980_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i15115_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(CONT_SD));   // zim_main.vhd(568[13:59])
    defparam i15115_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY wdtick_cnt_3928_add_4_5 (.CI(n19864), .I0(ICE_GPMO_1), .I1(wdtick_cnt[3]), 
            .CO(n19865));
    SB_LUT4 wdtick_cnt_3928_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[2]), .I3(n19863), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3923_1_lut (.I0(wdtick_flag), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6199));   // zim_main.vhd(429[3] 440[10])
    defparam i3923_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY wdtick_cnt_3928_add_4_4 (.CI(n19863), .I0(ICE_GPMO_1), .I1(wdtick_cnt[2]), 
            .CO(n19864));
    SB_LUT4 i1_2_lut_adj_239 (.I0(eis_end_N_736), .I1(tacadc_rst), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n41_adj_1698));
    defparam i1_2_lut_adj_239.LUT_INIT = 16'heeee;
    SB_LUT4 wdtick_cnt_3928_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[1]), .I3(n19862), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3928_add_4_3 (.CI(n19862), .I0(ICE_GPMO_1), .I1(wdtick_cnt[1]), 
            .CO(n19863));
    SB_CARRY add_155_3 (.CI(n19736), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19737));
    SB_LUT4 wdtick_cnt_3928_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n6199), .I2(wdtick_cnt[0]), 
            .I3(ICE_GPMO_1), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3928_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3928_add_4_2 (.CI(ICE_GPMO_1), .I0(n6199), .I1(wdtick_cnt[0]), 
            .CO(n19862));
    SB_LUT4 synccnt_3925_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[7]), .I3(n19861), .O(n38_adj_1556)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 synccnt_3925_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[6]), .I3(n19860), .O(n39_adj_1555)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3925_add_4_8 (.CI(n19860), .I0(ICE_GPMO_1), .I1(synccnt[6]), 
            .CO(n19861));
    SB_LUT4 synccnt_3925_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[5]), .I3(n19859), .O(n40_adj_1554)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_240 (.I0(n41_adj_1698), .I1(AC_ADC_SYNC), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(n11945));   // zim_main.vhd(479[3] 557[10])
    defparam i2_4_lut_adj_240.LUT_INIT = 16'h5040;
    SB_LUT4 i14495_3_lut (.I0(n11945), .I1(eis_state[0]), .I2(TEST_LED), 
            .I3(ICE_GPMO_1), .O(n15382));   // zim_main.vhd(292[9:18])
    defparam i14495_3_lut.LUT_INIT = 16'h7272;
    SB_LUT4 i15113_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17533));
    defparam i15113_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12979_3_lut_4_lut (.I0(VAC_OSR0), .I1(\comm_buf[0] [4]), .I2(n9299), 
            .I3(n12622), .O(n15411));   // zim_main.vhd(595[3] 900[10])
    defparam i12979_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_241 (.I0(eis_state[0]), .I1(eis_end_N_736), .I2(n6_adj_1696), 
            .I3(eis_state[1]), .O(n20941));
    defparam i1_4_lut_adj_241.LUT_INIT = 16'h5133;
    SB_LUT4 i12951_4_lut (.I0(eis_end), .I1(eis_end_N_736), .I2(tacadc_rst), 
            .I3(n20941), .O(n15383));   // zim_main.vhd(479[3] 557[10])
    defparam i12951_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i14461_3_lut_4_lut (.I0(AC_ADC_SYNC), .I1(n7_adj_1565), .I2(eis_end_N_736), 
            .I3(n16880), .O(n16893));   // zim_main.vhd(385[3] 398[10])
    defparam i14461_3_lut_4_lut.LUT_INIT = 16'hfd0d;
    SB_LUT4 i19509_4_lut (.I0(n5991), .I1(n6005), .I2(n9453), .I3(cs_falling_pend_N_714), 
            .O(n10518));   // zim_main.vhd(612[4] 899[13])
    defparam i19509_4_lut.LUT_INIT = 16'h2333;
    SB_LUT4 i12978_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9299), 
            .I3(n12622), .O(n15410));   // zim_main.vhd(595[3] 900[10])
    defparam i12978_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12977_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9299), 
            .I3(n12622), .O(n15409));   // zim_main.vhd(595[3] 900[10])
    defparam i12977_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_155_2_lut (.I0(n14_adj_1581), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_3925_add_4_7 (.CI(n19859), .I0(ICE_GPMO_1), .I1(synccnt[5]), 
            .CO(n19860));
    SB_LUT4 add_73_14_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[12]), .I2(ICE_GPMO_1), 
            .I3(n19709), .O(n414)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12952_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n15384));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12952_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12954_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15386));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12954_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 synccnt_3925_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[4]), .I3(n19858), .O(n41_adj_1553)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3925_add_4_6 (.CI(n19858), .I0(ICE_GPMO_1), .I1(synccnt[4]), 
            .CO(n19859));
    SB_CARRY add_155_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19736));
    SB_LUT4 add_154_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10950), 
            .I3(n19735), .O(n7_adj_1593)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 synccnt_3925_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[3]), .I3(n19857), .O(n42_adj_1552)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_154_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10950), 
            .I3(n19734), .O(n7_adj_1595)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_3925_add_4_5 (.CI(n19857), .I0(ICE_GPMO_1), .I1(synccnt[3]), 
            .CO(n19858));
    SB_CARRY add_73_14 (.CI(n19709), .I0(data_cntvec[12]), .I1(ICE_GPMO_1), 
            .CO(n19710));
    SB_CARRY add_72_4 (.CI(n19691), .I0(data_count[2]), .I1(ICE_GPMO_1), 
            .CO(n19692));
    SB_CARRY add_154_9 (.CI(n19734), .I0(data_index[7]), .I1(n10950), 
            .CO(n19735));
    SB_LUT4 synccnt_3925_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[2]), .I3(n19856), .O(n43_adj_1551)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3925_add_4_4 (.CI(n19856), .I0(ICE_GPMO_1), .I1(synccnt[2]), 
            .CO(n19857));
    SB_LUT4 synccnt_3925_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[1]), .I3(n19855), .O(n44_adj_1550)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3925_add_4_3 (.CI(n19855), .I0(ICE_GPMO_1), .I1(synccnt[1]), 
            .CO(n19856));
    SB_LUT4 synccnt_3925_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n15), .I2(synccnt[0]), 
            .I3(ICE_GPMO_1), .O(n45_adj_1549)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3925_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3925_add_4_2 (.CI(ICE_GPMO_1), .I0(n15), .I1(synccnt[0]), 
            .CO(n19855));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[7]), .I3(n19854), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(n10_adj_1536), .I3(n19853), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_8 (.CI(n19853), .I0(ICE_GPMO_1), 
            .I1(n10_adj_1536), .CO(n19854));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[5]), .I3(n19852), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_154_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10950), 
            .I3(n19733), .O(n7_adj_1597)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_8_lut.LUT_INIT = 16'hA3AC;
    SB_DFF eis_start_cmd_374 (.Q(START_MAIN), .C(clk_32MHz), .D(n15367));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_7 (.CI(n19852), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[5]), .CO(n19853));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[4]), .I3(n19851), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i21_4_lut (.I0(wdtick_cnt[11]), .I1(wdtick_cnt[15]), .I2(wdtick_cnt[19]), 
            .I3(wdtick_cnt[25]), .O(n49));
    defparam i21_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_6 (.CI(n19851), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[4]), .CO(n19852));
    SB_LUT4 add_73_13_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[11]), .I2(ICE_GPMO_1), 
            .I3(n19708), .O(n415)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[3]), .I3(n19850), .O(n42_adj_1535)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_154_8 (.CI(n19733), .I0(data_index[6]), .I1(n10950), 
            .CO(n19734));
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_5 (.CI(n19850), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[3]), .CO(n19851));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[2]), .I3(n19849), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_154_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10950), 
            .I3(n19732), .O(n17513)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_4 (.CI(n19849), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[2]), .CO(n19850));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[1]), .I3(n19848), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_3 (.CI(n19848), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[1]), .CO(n19849));
    SB_LUT4 dds0_mclkcnt_i7_3936_add_4_2_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3936_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3936_add_4_2 (.CI(VCC_net), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[0]), .CO(n19848));
    SB_LUT4 i1_4_lut_adj_242 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9299), 
            .I3(n21), .O(n12156));
    defparam i1_4_lut_adj_242.LUT_INIT = 16'hc0c4;
    SB_CARRY add_73_13 (.CI(n19708), .I0(data_cntvec[11]), .I1(ICE_GPMO_1), 
            .CO(n19709));
    SB_CARRY add_72_7 (.CI(n19694), .I0(data_count[5]), .I1(ICE_GPMO_1), 
            .CO(n19695));
    SB_CARRY add_154_7 (.CI(n19732), .I0(data_index[5]), .I1(n10950), 
            .CO(n19733));
    SB_CARRY add_72_5 (.CI(n19692), .I0(data_count[3]), .I1(ICE_GPMO_1), 
            .CO(n19693));
    SB_LUT4 add_154_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10950), 
            .I3(n19731), .O(n7_adj_1599)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_154_6 (.CI(n19731), .I0(data_index[4]), .I1(n10950), 
            .CO(n19732));
    SB_LUT4 add_73_12_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[10]), .I2(ICE_GPMO_1), 
            .I3(n19707), .O(n416)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_12 (.CI(n19707), .I0(data_cntvec[10]), .I1(ICE_GPMO_1), 
            .CO(n19708));
    SB_LUT4 add_154_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10950), 
            .I3(n19730), .O(n7_adj_1601)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12963_3_lut (.I0(buf_dds0[3]), .I1(n14_adj_1618), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15395));   // zim_main.vhd(595[3] 900[10])
    defparam i12963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12964_3_lut (.I0(buf_dds0[4]), .I1(n14_adj_1588), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15396));   // zim_main.vhd(595[3] 900[10])
    defparam i12964_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12965_3_lut (.I0(buf_dds0[5]), .I1(n14_adj_1617), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15397));   // zim_main.vhd(595[3] 900[10])
    defparam i12965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12966_3_lut (.I0(buf_dds0[6]), .I1(n14_adj_1587), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15398));   // zim_main.vhd(595[3] 900[10])
    defparam i12966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12967_3_lut (.I0(buf_dds0[7]), .I1(n14_adj_1586), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15399));   // zim_main.vhd(595[3] 900[10])
    defparam i12967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12968_3_lut (.I0(buf_dds0[8]), .I1(n14_adj_1591), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15400));   // zim_main.vhd(595[3] 900[10])
    defparam i12968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_243 (.I0(cmd_rdadctmp_adj_1718[28]), .I1(cmd_rdadctmp_adj_1718[27]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20766));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'hca0a;
    SB_CARRY add_154_5 (.CI(n19730), .I0(data_index[3]), .I1(n10950), 
            .CO(n19731));
    SB_LUT4 add_73_11_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[9]), .I2(ICE_GPMO_1), 
            .I3(n19706), .O(n417)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15112_4_lut (.I0(wdtick_flag), .I1(n49), .I2(n54), .I3(n50), 
            .O(wdtick_flag_N_329));   // zim_main.vhd(435[5] 438[12])
    defparam i15112_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i12976_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9299), 
            .I3(n12622), .O(n15408));   // zim_main.vhd(595[3] 900[10])
    defparam i12976_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_244 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9299), 
            .I3(n17_adj_1531), .O(n12608));
    defparam i1_4_lut_adj_244.LUT_INIT = 16'hc0c4;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20024));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12975_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9299), .I3(n12608), .O(n15407));   // zim_main.vhd(595[3] 900[10])
    defparam i12975_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20238));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20088));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12974_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9299), .I3(n12608), .O(n15406));   // zim_main.vhd(595[3] 900[10])
    defparam i12974_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n22546));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_245 (.I0(n18713), .I1(comm_state[3]), .I2(n9299), 
            .I3(n86), .O(n12622));
    defparam i1_4_lut_adj_245.LUT_INIT = 16'hc0c8;
    SB_LUT4 n22546_bdd_4_lut (.I0(n22546), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n22549));
    defparam n22546_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_11 (.CI(n19706), .I0(data_cntvec[9]), .I1(ICE_GPMO_1), 
            .CO(n19707));
    SB_LUT4 add_73_10_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[8]), .I2(ICE_GPMO_1), 
            .I3(n19705), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1678), 
            .I2(n21660), .I3(comm_cmd[2]), .O(n22540));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY add_73_10 (.CI(n19705), .I0(data_cntvec[8]), .I1(ICE_GPMO_1), 
            .CO(n19706));
    SB_LUT4 add_154_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10950), 
            .I3(n19729), .O(n7_adj_1603)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_154_4 (.CI(n19729), .I0(data_index[2]), .I1(n10950), 
            .CO(n19730));
    SB_LUT4 add_154_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10950), 
            .I3(n19728), .O(n7_adj_1605)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_73_9_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[7]), .I2(ICE_GPMO_1), 
            .I3(n19704), .O(n419)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_154_3 (.CI(n19728), .I0(data_index[1]), .I1(n10950), 
            .CO(n19729));
    SB_CARRY add_73_9 (.CI(n19704), .I0(data_cntvec[7]), .I1(ICE_GPMO_1), 
            .CO(n19705));
    SB_LUT4 add_154_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10950), 
            .I3(VCC_net), .O(n7_adj_1579)) /* synthesis syn_instantiated=1 */ ;
    defparam add_154_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_154_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10950), 
            .CO(n19728));
    SB_LUT4 add_78_17_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[15]), .I2(ICE_GPMO_1), 
            .I3(n19727), .O(n461)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_78_16_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[14]), .I2(ICE_GPMO_1), 
            .I3(n19726), .O(n462)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_8_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[6]), .I2(ICE_GPMO_1), 
            .I3(n19703), .O(n420)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22540_bdd_4_lut (.I0(n22540), .I1(req_data_cnt[7]), .I2(acadc_skipCount[7]), 
            .I3(comm_cmd[2]), .O(n22543));
    defparam n22540_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_78_16 (.CI(n19726), .I0(acadc_skipcnt[14]), .I1(ICE_GPMO_1), 
            .CO(n19727));
    SB_LUT4 add_78_15_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[13]), .I2(ICE_GPMO_1), 
            .I3(n19725), .O(n463)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_8 (.CI(n19703), .I0(data_cntvec[6]), .I1(ICE_GPMO_1), 
            .CO(n19704));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19847 (.I0(comm_cmd[1]), .I1(n19_adj_1691), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22534));
    defparam comm_cmd_1__bdd_4_lut_19847.LUT_INIT = 16'he4aa;
    SB_LUT4 n22534_bdd_4_lut (.I0(n22534), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1690), 
            .I3(comm_cmd[2]), .O(n22537));
    defparam n22534_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_246 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20308));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_247 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20304));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19842 (.I0(comm_cmd[1]), .I1(n26_adj_1684), 
            .I2(n21658), .I3(comm_cmd[2]), .O(n22528));
    defparam comm_cmd_1__bdd_4_lut_19842.LUT_INIT = 16'he4aa;
    SB_LUT4 n22528_bdd_4_lut (.I0(n22528), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22531));
    defparam n22528_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6_4_lut_adj_248 (.I0(synccnt[1]), .I1(synccnt[4]), .I2(synccnt[5]), 
            .I3(synccnt[7]), .O(n14_adj_1638));   // zim_main.vhd(390[7:22])
    defparam i6_4_lut_adj_248.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_249 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20300));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_249.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_19852 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22522));
    defparam comm_index_0__bdd_4_lut_19852.LUT_INIT = 16'he4aa;
    SB_CARRY add_78_15 (.CI(n19725), .I0(acadc_skipcnt[13]), .I1(ICE_GPMO_1), 
            .CO(n19726));
    SB_LUT4 add_78_14_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[12]), .I2(ICE_GPMO_1), 
            .I3(n19724), .O(n464)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_7_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[5]), .I2(ICE_GPMO_1), 
            .I3(n19702), .O(n421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_14 (.CI(n19724), .I0(acadc_skipcnt[12]), .I1(ICE_GPMO_1), 
            .CO(n19725));
    SB_LUT4 add_78_13_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[11]), .I2(ICE_GPMO_1), 
            .I3(n19723), .O(n465)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_13 (.CI(n19723), .I0(acadc_skipcnt[11]), .I1(ICE_GPMO_1), 
            .CO(n19724));
    SB_CARRY add_73_7 (.CI(n19702), .I0(data_cntvec[5]), .I1(ICE_GPMO_1), 
            .CO(n19703));
    SB_LUT4 add_78_12_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[10]), .I2(ICE_GPMO_1), 
            .I3(n19722), .O(n466)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_12 (.CI(n19722), .I0(acadc_skipcnt[10]), .I1(ICE_GPMO_1), 
            .CO(n19723));
    SB_LUT4 add_78_11_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[9]), .I2(ICE_GPMO_1), 
            .I3(n19721), .O(n467)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_6_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[4]), .I2(ICE_GPMO_1), 
            .I3(n19701), .O(n422)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_11 (.CI(n19721), .I0(acadc_skipcnt[9]), .I1(ICE_GPMO_1), 
            .CO(n19722));
    SB_LUT4 add_78_10_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[8]), .I2(ICE_GPMO_1), 
            .I3(n19720), .O(n468)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_10 (.CI(n19720), .I0(acadc_skipcnt[8]), .I1(ICE_GPMO_1), 
            .CO(n19721));
    SB_LUT4 i12973_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9299), .I2(\comm_buf[0] [5]), 
            .I3(n12608), .O(n15405));   // zim_main.vhd(595[3] 900[10])
    defparam i12973_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 add_78_9_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[7]), .I2(ICE_GPMO_1), 
            .I3(n19719), .O(n469)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_6 (.CI(n19701), .I0(data_cntvec[4]), .I1(ICE_GPMO_1), 
            .CO(n19702));
    SB_LUT4 n22522_bdd_4_lut (.I0(n22522), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22525));
    defparam n22522_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_250 (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n80));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_250.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_adj_251 (.I0(synccnt[0]), .I1(synccnt[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9));   // zim_main.vhd(390[7:22])
    defparam i1_2_lut_adj_251.LUT_INIT = 16'heeee;
    SB_LUT4 i12972_3_lut_4_lut (.I0(buf_dds0[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9299), .I3(n12608), .O(n15404));   // zim_main.vhd(595[3] 900[10])
    defparam i12972_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_252 (.I0(n18713), .I1(comm_state[3]), .I2(n9299), 
            .I3(n80), .O(n12636));
    defparam i1_4_lut_adj_252.LUT_INIT = 16'hc8c0;
    SB_LUT4 comm_index_0__bdd_4_lut_19832 (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n22516));
    defparam comm_index_0__bdd_4_lut_19832.LUT_INIT = 16'he4aa;
    SB_LUT4 n22516_bdd_4_lut (.I0(n22516), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n22519));
    defparam n22516_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_73_5_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[3]), .I2(ICE_GPMO_1), 
            .I3(n19700), .O(n423)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_9 (.CI(n19719), .I0(acadc_skipcnt[7]), .I1(ICE_GPMO_1), 
            .CO(n19720));
    SB_LUT4 i19043_2_lut_3_lut (.I0(n5), .I1(comm_state[0]), .I2(comm_state_3__N_441[1]), 
            .I3(ICE_GPMO_1), .O(n21506));   // zim_main.vhd(612[4] 899[13])
    defparam i19043_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 add_78_8_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[6]), .I2(ICE_GPMO_1), 
            .I3(n19718), .O(n470)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF eis_stop_373 (.Q(eis_stop), .C(clk_32MHz), .D(n15366));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i4057_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_441[1]), .I3(comm_index[1]), .O(comm_index_2__N_449[1]));   // zim_main.vhd(794[5] 804[12])
    defparam i4057_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i12992_3_lut (.I0(acadc_skipCount[3]), .I1(n14_adj_1618), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15424));   // zim_main.vhd(595[3] 900[10])
    defparam i12992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12993_3_lut (.I0(acadc_skipCount[4]), .I1(n14_adj_1588), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15425));   // zim_main.vhd(595[3] 900[10])
    defparam i12993_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE eis_adc_trig_338 (.Q(eis_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20488));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i7_4_lut_adj_253 (.I0(n9), .I1(n14_adj_1638), .I2(synccnt[2]), 
            .I3(synccnt[6]), .O(n15));   // zim_main.vhd(390[7:22])
    defparam i7_4_lut_adj_253.LUT_INIT = 16'hfeff;
    SB_LUT4 i12994_3_lut (.I0(acadc_skipCount[5]), .I1(n14_adj_1617), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15426));   // zim_main.vhd(595[3] 900[10])
    defparam i12994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12995_3_lut (.I0(acadc_skipCount[6]), .I1(n14_adj_1587), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15427));   // zim_main.vhd(595[3] 900[10])
    defparam i12995_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_254 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18695), .I3(comm_cmd[2]), .O(n18698));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_254.LUT_INIT = 16'hfdff;
    SB_LUT4 i12996_3_lut (.I0(acadc_skipCount[7]), .I1(n14_adj_1586), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15428));   // zim_main.vhd(595[3] 900[10])
    defparam i12996_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12997_3_lut (.I0(acadc_skipCount[8]), .I1(n14_adj_1591), .I2(n12666), 
            .I3(ICE_GPMO_1), .O(n15429));   // zim_main.vhd(595[3] 900[10])
    defparam i12997_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(n21650), .I2(n16887), 
            .I3(eis_state[0]), .O(n22510));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 START_SYNC_I_0_1_lut (.I0(START_SYNC), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(START_SYNC_N_283));   // zim_main.vhd(385[6:22])
    defparam START_SYNC_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_255 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9299), 
            .I3(n21), .O(n12666));
    defparam i1_4_lut_adj_255.LUT_INIT = 16'hc0c8;
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20026));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 synccnt_7__I_0_i16_1_lut (.I0(n15), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(synccnt_7__N_292));   // zim_main.vhd(390[7:22])
    defparam synccnt_7__I_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20028));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_158_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1682));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1683));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16065));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13005_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1590), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15437));   // zim_main.vhd(595[3] 900[10])
    defparam i13005_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20034));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13006_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1589), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15438));   // zim_main.vhd(595[3] 900[10])
    defparam i13006_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12971_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9299), .I3(n12608), .O(n15403));   // zim_main.vhd(595[3] 900[10])
    defparam i12971_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_256 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17082));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_256.LUT_INIT = 16'hbbbb;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16060));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13007_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1618), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15439));   // zim_main.vhd(595[3] 900[10])
    defparam i13007_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13008_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1588), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15440));   // zim_main.vhd(595[3] 900[10])
    defparam i13008_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20040));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13009_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1617), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15441));   // zim_main.vhd(595[3] 900[10])
    defparam i13009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11391_3_lut (.I0(n22411), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13821));   // zim_main.vhd(612[4] 899[13])
    defparam i11391_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13010_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1587), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15442));   // zim_main.vhd(595[3] 900[10])
    defparam i13010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1560965_i1_3_lut (.I0(n22423), .I1(n22483), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30));
    defparam i1560965_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11395_3_lut (.I0(n30), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13825));   // zim_main.vhd(612[4] 899[13])
    defparam i11395_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1574));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1574), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13011_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1586), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15443));   // zim_main.vhd(595[3] 900[10])
    defparam i13011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_0_i30_3_lut (.I0(n22), .I1(buf_data_vac[1]), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1564));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13012_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1591), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15444));   // zim_main.vhd(595[3] 900[10])
    defparam i13012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11399_3_lut (.I0(n30_adj_1564), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13829));   // zim_main.vhd(612[4] 899[13])
    defparam i11399_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_257 (.I0(buf_dds1[8]), .I1(\comm_buf[0] [0]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20044));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_258 (.I0(buf_dds1[7]), .I1(\comm_buf[1] [7]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20042));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_LUT4 i13013_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1613), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15445));   // zim_main.vhd(595[3] 900[10])
    defparam i13013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11403_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13833));   // zim_main.vhd(612[4] 899[13])
    defparam i11403_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11407_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13837));   // zim_main.vhd(612[4] 899[13])
    defparam i11407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11411_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13841));   // zim_main.vhd(612[4] 899[13])
    defparam i11411_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20042));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20044));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20046));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20048));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20052));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22504));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20056));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_259 (.I0(buf_dds1[15]), .I1(\comm_buf[0] [7]), 
            .I2(n12058), .I3(n1_adj_1637), .O(n20058));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20058));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20106));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20260));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_72_6 (.CI(n19693), .I0(data_count[4]), .I1(ICE_GPMO_1), 
            .CO(n19694));
    SB_LUT4 i13014_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1612), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15446));   // zim_main.vhd(595[3] 900[10])
    defparam i13014_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20262));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_8 (.CI(n19718), .I0(acadc_skipcnt[6]), .I1(ICE_GPMO_1), 
            .CO(n19719));
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20264));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_7_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[5]), .I2(ICE_GPMO_1), 
            .I3(n19717), .O(n471)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12970_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9299), .I3(n12608), .O(n15402));   // zim_main.vhd(595[3] 900[10])
    defparam i12970_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_78_7 (.CI(n19717), .I0(acadc_skipcnt[5]), .I1(ICE_GPMO_1), 
            .CO(n19718));
    SB_LUT4 mux_158_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1687));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18545_3_lut (.I0(n16_adj_1687), .I1(buf_adcdata_iac[13]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21188));
    defparam i18545_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20266));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_6_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[4]), .I2(ICE_GPMO_1), 
            .I3(n19716), .O(n472)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_6 (.CI(n19716), .I0(acadc_skipcnt[4]), .I1(ICE_GPMO_1), 
            .CO(n19717));
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20268));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_158_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1688));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20270));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_5_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[3]), .I2(ICE_GPMO_1), 
            .I3(n19715), .O(n473)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_5 (.CI(n19700), .I0(data_cntvec[3]), .I1(ICE_GPMO_1), 
            .CO(n19701));
    SB_LUT4 add_73_4_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[2]), .I2(ICE_GPMO_1), 
            .I3(n19699), .O(n424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_4 (.CI(n19699), .I0(data_cntvec[2]), .I1(ICE_GPMO_1), 
            .CO(n19700));
    SB_LUT4 add_73_3_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[1]), .I2(ICE_GPMO_1), 
            .I3(n19698), .O(n425)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20272));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_5 (.CI(n19715), .I0(acadc_skipcnt[3]), .I1(ICE_GPMO_1), 
            .CO(n19716));
    SB_LUT4 add_155_17_lut (.I0(n14_adj_1585), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19750), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_155_16_lut (.I0(n14_adj_1609), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19749), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_78_4_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[2]), .I2(ICE_GPMO_1), 
            .I3(n19714), .O(n474)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20090));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_155_16 (.CI(n19749), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19750));
    SB_LUT4 add_155_15_lut (.I0(n14_adj_1615), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19748), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_15_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20092));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_4 (.CI(n19714), .I0(acadc_skipcnt[2]), .I1(ICE_GPMO_1), 
            .CO(n19715));
    SB_LUT4 i13015_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1611), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15447));   // zim_main.vhd(595[3] 900[10])
    defparam i13015_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_3 (.CI(n19698), .I0(data_cntvec[1]), .I1(ICE_GPMO_1), 
            .CO(n19699));
    SB_LUT4 add_72_5_lut (.I0(ICE_GPMO_1), .I1(data_count[3]), .I2(ICE_GPMO_1), 
            .I3(n19692), .O(n405)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18546_3_lut (.I0(n19_adj_1688), .I1(buf_readRTD[5]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21189));
    defparam i18546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_2_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_748), 
            .I3(ICE_GPMO_1), .O(n426)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_15 (.CI(n19748), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19749));
    SB_CARRY add_73_2 (.CI(ICE_GPMO_1), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_748), 
            .CO(n19698));
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20094));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20096));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_158_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1689));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20074));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20098));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i18549_4_lut (.I0(n26_adj_1689), .I1(buf_data_vac[27]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21192));
    defparam i18549_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18548_3_lut (.I0(acadc_skipCount[5]), .I1(req_data_cnt[5]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21191));
    defparam i18548_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20086));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(VAC_CLK));   // zim_main.vhd(353[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFF tacadc_rst_372 (.Q(tacadc_rst), .C(clk_32MHz), .D(n15365));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12969_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9299), .I3(n12608), .O(n15401));   // zim_main.vhd(595[3] 900[10])
    defparam i12969_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19206_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21502));
    defparam i19206_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n11954), 
            .D(n400), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n11954), 
            .D(n401), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n11954), 
            .D(n402), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n11954), 
            .D(n403), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n11954), 
            .D(n404), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n11954), 
            .D(n405), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n11954), 
            .D(n406), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n11954), 
            .D(n407), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n11954), 
            .D(n411), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n11954), 
            .D(n412), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n11954), 
            .D(n413), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i4624_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[0]), 
            .I3(\comm_buf[1] [0]), .O(n8_adj_1580));
    defparam i4624_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n11954), 
            .D(n414), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n11954), 
            .D(n415), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n11954), 
            .D(n416), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n11954), 
            .D(n417), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i6615_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[4]), 
            .I3(\comm_buf[1] [4]), .O(n8_adj_1600));
    defparam i6615_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n11954), 
            .D(n418), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n11954), 
            .D(n419), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n11954), 
            .D(n420), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n11954), 
            .D(n421), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n11954), 
            .D(n422), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n11954), 
            .D(n423), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n11954), 
            .D(n424), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n11954), 
            .D(n425), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i13016_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1610), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15448));   // zim_main.vhd(595[3] 900[10])
    defparam i13016_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESS cs_mask_cnt_3930__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n11932), 
            .D(n19945), .S(n14947));   // zim_main.vhd(609[20:31])
    SB_LUT4 mux_158_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15364));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15363));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19494_2_lut (.I0(n11999), .I1(eis_end_N_736), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14957));
    defparam i19494_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19505_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), .I2(eis_end_N_736), 
            .I3(tacadc_rst), .O(n11999));
    defparam i19505_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 i12927_3_lut (.I0(buf_control[0]), .I1(n14_adj_1591), .I2(n12156), 
            .I3(ICE_GPMO_1), .O(n15359));   // zim_main.vhd(595[3] 900[10])
    defparam i12927_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19476_4_lut (.I0(comm_state[3]), .I1(n20954), .I2(n42), .I3(n20910), 
            .O(n23_adj_1634));
    defparam i19476_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i12_4_lut_adj_260 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20296));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 i19288_2_lut (.I0(n5), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21510));   // zim_main.vhd(612[4] 899[13])
    defparam i19288_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 comm_state_3__I_0_387_Mux_2_i4_3_lut (.I0(n18695), .I1(comm_state_3__N_441[1]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n19889));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_387_Mux_2_i6_4_lut (.I0(n19889), .I1(n21510), 
            .I2(comm_state[1]), .I3(comm_state_3__N_441[1]), .O(n6));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_2_i6_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 comm_state_3__I_0_387_Mux_2_i7_3_lut (.I0(n21038), .I1(n6), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n7_adj_1614));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_2_i7_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i12962_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9299), .I3(n12608), .O(n15394));   // zim_main.vhd(595[3] 900[10])
    defparam i12962_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13017_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1615), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15449));   // zim_main.vhd(595[3] 900[10])
    defparam i13017_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15362));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12961_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9299), .I3(n12608), .O(n15393));   // zim_main.vhd(595[3] 900[10])
    defparam i12961_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_157_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19048_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21316));
    defparam i19048_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19060_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21520));
    defparam i19060_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19217_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21519));
    defparam i19217_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(THERMOSTAT_N_472));   // zim_main.vhd(641[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11949_3_lut (.I0(n22405), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14381));   // zim_main.vhd(612[4] 899[13])
    defparam i11949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1700));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_2_i26_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1539));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_155_14_lut (.I0(n14_adj_1610), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19747), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_14_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i3_4_lut_adj_261 (.I0(n17082), .I1(comm_state[2]), .I2(n18698), 
            .I3(comm_state[1]), .O(n10950));   // zim_main.vhd(612[4] 899[13])
    defparam i3_4_lut_adj_261.LUT_INIT = 16'hfffb;
    SB_LUT4 i18525_4_lut (.I0(n26_adj_1539), .I1(buf_data_vac[37]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21168));
    defparam i18525_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18526_3_lut (.I0(n22399), .I1(n21168), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21169));
    defparam i18526_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1563377_i1_3_lut (.I0(n22315), .I1(n21169), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1534));
    defparam i1563377_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11945_3_lut (.I0(n30_adj_1534), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14377));   // zim_main.vhd(612[4] 899[13])
    defparam i11945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1562171_i1_3_lut (.I0(n22429), .I1(n22345), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1573));
    defparam i1562171_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11941_3_lut (.I0(n30_adj_1573), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14373));   // zim_main.vhd(612[4] 899[13])
    defparam i11941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1561568_i1_3_lut (.I0(n22417), .I1(n22393), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1562));
    defparam i1561568_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13018_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1609), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15450));   // zim_main.vhd(595[3] 900[10])
    defparam i13018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i106_2_lut (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n86));
    defparam i106_2_lut.LUT_INIT = 16'heeee;
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15361));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i11937_3_lut (.I0(n30_adj_1562), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14369));   // zim_main.vhd(612[4] 899[13])
    defparam i11937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12960_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9299), .I3(n12156), .O(n15392));   // zim_main.vhd(595[3] 900[10])
    defparam i12960_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18544_3_lut (.I0(n22447), .I1(n22471), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21187));
    defparam i18544_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1563980_i1_3_lut (.I0(n21187), .I1(n22351), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1537));
    defparam i1563980_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11933_3_lut (.I0(n30_adj_1537), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14365));   // zim_main.vhd(612[4] 899[13])
    defparam i11933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1562774_i1_3_lut (.I0(n22279), .I1(n22495), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1546));
    defparam i1562774_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11929_3_lut (.I0(n30_adj_1546), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14361));   // zim_main.vhd(612[4] 899[13])
    defparam i11929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12574_2_lut (.I0(n12202), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15001));   // zim_main.vhd(595[3] 900[10])
    defparam i12574_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_262 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18695), .I3(comm_cmd[1]), .O(n18734));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_262.LUT_INIT = 16'h0200;
    SB_LUT4 i2_4_lut_adj_263 (.I0(n21011), .I1(comm_index[0]), .I2(comm_state[1]), 
            .I3(n34), .O(n12199));
    defparam i2_4_lut_adj_263.LUT_INIT = 16'hbfaf;
    SB_LUT4 i1_4_lut_adj_264 (.I0(n12199), .I1(n20967), .I2(n10789), .I3(n21044), 
            .O(n12202));
    defparam i1_4_lut_adj_264.LUT_INIT = 16'h8880;
    SB_LUT4 add_78_3_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[1]), .I2(ICE_GPMO_1), 
            .I3(n19713), .O(n475)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1556141_i1_3_lut (.I0(n22357), .I1(n22339), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1714));
    defparam i1556141_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_265 (.I0(n18734), .I1(comm_state[3]), .I2(n9299), 
            .I3(n86), .O(n12692));
    defparam i1_4_lut_adj_265.LUT_INIT = 16'hc0c8;
    SB_LUT4 i6645_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[1]), 
            .I3(\comm_buf[1] [1]), .O(n8_adj_1606));
    defparam i6645_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i11925_3_lut (.I0(n30_adj_1714), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14357));   // zim_main.vhd(612[4] 899[13])
    defparam i11925_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1556744_i1_3_lut (.I0(n22309), .I1(n22459), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1707));
    defparam i1556744_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11921_3_lut (.I0(n30_adj_1707), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14353));   // zim_main.vhd(612[4] 899[13])
    defparam i11921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1557347_i1_3_lut (.I0(n22501), .I1(n22303), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1703));
    defparam i1557347_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11917_3_lut (.I0(n30_adj_1703), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14349));   // zim_main.vhd(612[4] 899[13])
    defparam i11917_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11913_3_lut (.I0(n22381), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14345));   // zim_main.vhd(612[4] 899[13])
    defparam i11913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1558553_i1_3_lut (.I0(n22537), .I1(n22327), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1693));
    defparam i1558553_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11909_3_lut (.I0(n30_adj_1693), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14341));   // zim_main.vhd(612[4] 899[13])
    defparam i11909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11905_3_lut (.I0(n22453), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14337));   // zim_main.vhd(612[4] 899[13])
    defparam i11905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1559759_i1_3_lut (.I0(n22441), .I1(n22531), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1685));
    defparam i1559759_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11901_3_lut (.I0(n30_adj_1685), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14333));   // zim_main.vhd(612[4] 899[13])
    defparam i11901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12581_2_lut (.I0(n12272), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15008));   // zim_main.vhd(595[3] 900[10])
    defparam i12581_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19397_4_lut (.I0(comm_index[1]), .I1(comm_index[2]), .I2(comm_index[0]), 
            .I3(n19294), .O(n21388));
    defparam i19397_4_lut.LUT_INIT = 16'h1000;
    SB_CARRY add_78_3 (.CI(n19713), .I0(acadc_skipcnt[1]), .I1(ICE_GPMO_1), 
            .CO(n19714));
    SB_LUT4 n22504_bdd_4_lut (.I0(n22504), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n21142));
    defparam n22504_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12959_3_lut_4_lut (.I0(AMPV_POW), .I1(n9299), .I2(\comm_buf[0] [5]), 
            .I3(n12156), .O(n15391));   // zim_main.vhd(595[3] 900[10])
    defparam i12959_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i45_4_lut (.I0(n21390), .I1(n21388), .I2(comm_state[1]), .I3(n20918), 
            .O(n20));
    defparam i45_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_266 (.I0(comm_state[0]), .I1(n20967), .I2(n21011), 
            .I3(n20), .O(n12272));
    defparam i1_4_lut_adj_266.LUT_INIT = 16'hc4c0;
    SB_LUT4 i6585_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[7]), 
            .I3(\comm_buf[1] [7]), .O(n8_adj_1596));
    defparam i6585_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i15094_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[5]), 
            .I3(\comm_buf[1] [5]), .O(n17515));
    defparam i15094_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i1560362_i1_3_lut (.I0(n22369), .I1(n22543), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1679));
    defparam i1560362_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11491_3_lut (.I0(n30_adj_1679), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13923));   // zim_main.vhd(612[4] 899[13])
    defparam i11491_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1672));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1672), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1674));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_1_i30_3_lut (.I0(n22_adj_1674), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1675));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11487_3_lut (.I0(n30_adj_1675), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13919));   // zim_main.vhd(612[4] 899[13])
    defparam i11487_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1665));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1665), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1666));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_2_i30_3_lut (.I0(n22_adj_1666), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1667));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11897_3_lut (.I0(n30_adj_1667), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14329));   // zim_main.vhd(612[4] 899[13])
    defparam i11897_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1701));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1662));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1662), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1663));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_3_i30_3_lut (.I0(n22_adj_1663), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1664));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11893_3_lut (.I0(n30_adj_1664), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14325));   // zim_main.vhd(612[4] 899[13])
    defparam i11893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1657));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1657), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1658));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_4_i30_3_lut (.I0(n22_adj_1658), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1660));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11889_3_lut (.I0(n30_adj_1660), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14321));   // zim_main.vhd(612[4] 899[13])
    defparam i11889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1654));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1654), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1655));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_5_i30_3_lut (.I0(n22_adj_1655), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1656));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11885_3_lut (.I0(n30_adj_1656), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14317));   // zim_main.vhd(612[4] 899[13])
    defparam i11885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1651));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1651), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1652));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_6_i30_3_lut (.I0(n22_adj_1652), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1653));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15360));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i11881_3_lut (.I0(n30_adj_1653), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14313));   // zim_main.vhd(612[4] 899[13])
    defparam i11881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12588_2_lut (.I0(n12335), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15015));   // zim_main.vhd(595[3] 900[10])
    defparam i12588_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i46_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n26_adj_1496));
    defparam i46_3_lut.LUT_INIT = 16'h6262;
    SB_CARRY add_155_14 (.CI(n19747), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19748));
    SB_LUT4 i19121_4_lut (.I0(n26_adj_1496), .I1(n20918), .I2(n17), .I3(comm_cmd[3]), 
            .O(n21395));
    defparam i19121_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i47_4_lut (.I0(n21395), .I1(n4_adj_1629), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n21_adj_1630));
    defparam i47_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13019_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1585), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15451));   // zim_main.vhd(595[3] 900[10])
    defparam i13019_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_clear_346__i5 (.Q(comm_clear), .C(clk_32MHz), .E(n10), 
            .D(n5993), .R(n6005));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i1_4_lut_adj_267 (.I0(comm_state[0]), .I1(n20967), .I2(n21011), 
            .I3(n21_adj_1630), .O(n12335));
    defparam i1_4_lut_adj_267.LUT_INIT = 16'hc4c0;
    SB_LUT4 i6595_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[6]), 
            .I3(\comm_buf[1] [6]), .O(n8_adj_1598));
    defparam i6595_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFESR comm_clear_346__i3 (.Q(flagcntwd), .C(clk_32MHz), .E(n7_adj_1529), 
            .D(n5971), .R(n6005));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 mux_159_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1648));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1648), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1649));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_7_i30_3_lut (.I0(n22_adj_1649), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1650));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11877_3_lut (.I0(n30_adj_1650), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14309));   // zim_main.vhd(612[4] 899[13])
    defparam i11877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11873_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14305));   // zim_main.vhd(612[4] 899[13])
    defparam i11873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11869_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14301));   // zim_main.vhd(612[4] 899[13])
    defparam i11869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11865_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14297));   // zim_main.vhd(612[4] 899[13])
    defparam i11865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11861_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14293));   // zim_main.vhd(612[4] 899[13])
    defparam i11861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11857_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14289));   // zim_main.vhd(612[4] 899[13])
    defparam i11857_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11853_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14285));   // zim_main.vhd(612[4] 899[13])
    defparam i11853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12958_3_lut_4_lut (.I0(VDC_RNG0), .I1(\comm_buf[0] [4]), .I2(n9299), 
            .I3(n12156), .O(n15390));   // zim_main.vhd(595[3] 900[10])
    defparam i12958_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12595_2_lut (.I0(n12377), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15022));   // zim_main.vhd(595[3] 900[10])
    defparam i12595_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_268 (.I0(n2_adj_1715), .I1(n4_adj_1629), .I2(comm_state[1]), 
            .I3(n41_adj_1633), .O(n11_adj_1670));
    defparam i18_4_lut_adj_268.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_adj_269 (.I0(n11_adj_1670), .I1(n20967), .I2(n21011), 
            .I3(ICE_GPMO_1), .O(n12377));
    defparam i1_3_lut_adj_269.LUT_INIT = 16'hc8c8;
    SB_LUT4 i6575_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[8]), 
            .I3(\comm_buf[0] [0]), .O(n8_adj_1594));
    defparam i6575_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i11849_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14281));   // zim_main.vhd(612[4] 899[13])
    defparam i11849_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11845_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14277));   // zim_main.vhd(612[4] 899[13])
    defparam i11845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11841_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14273));   // zim_main.vhd(612[4] 899[13])
    defparam i11841_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11837_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14269));   // zim_main.vhd(612[4] 899[13])
    defparam i11837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11833_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14265));   // zim_main.vhd(612[4] 899[13])
    defparam i11833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11829_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14261));   // zim_main.vhd(612[4] 899[13])
    defparam i11829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11825_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14257));   // zim_main.vhd(612[4] 899[13])
    defparam i11825_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12602_2_lut (.I0(n12419), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15029));   // zim_main.vhd(595[3] 900[10])
    defparam i12602_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_270 (.I0(n2_adj_1715), .I1(n19315), .I2(comm_state[1]), 
            .I3(n19891), .O(n11_adj_1669));
    defparam i18_4_lut_adj_270.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_271 (.I0(n11_adj_1669), .I1(n20967), .I2(n21011), 
            .I3(ICE_GPMO_1), .O(n12419));
    defparam i1_3_lut_adj_271.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11821_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14253));   // zim_main.vhd(612[4] 899[13])
    defparam i11821_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11817_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14249));   // zim_main.vhd(612[4] 899[13])
    defparam i11817_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11813_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14245));   // zim_main.vhd(612[4] 899[13])
    defparam i11813_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11809_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14241));   // zim_main.vhd(612[4] 899[13])
    defparam i11809_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11805_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14237));   // zim_main.vhd(612[4] 899[13])
    defparam i11805_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11801_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14233));   // zim_main.vhd(612[4] 899[13])
    defparam i11801_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11797_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14229));   // zim_main.vhd(612[4] 899[13])
    defparam i11797_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12957_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9299), 
            .I3(n12156), .O(n15389));   // zim_main.vhd(595[3] 900[10])
    defparam i12957_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12956_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9299), 
            .I3(n12156), .O(n15388));   // zim_main.vhd(595[3] 900[10])
    defparam i12956_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_272 (.I0(comm_state[0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n41_adj_1633));   // zim_main.vhd(612[4] 899[13])
    defparam i1_2_lut_adj_272.LUT_INIT = 16'h4444;
    SB_LUT4 i12955_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9299), 
            .I3(n12156), .O(n15387));   // zim_main.vhd(595[3] 900[10])
    defparam i12955_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12609_2_lut (.I0(n12461), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15036));   // zim_main.vhd(595[3] 900[10])
    defparam i12609_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_273 (.I0(n2_adj_1715), .I1(n19315), .I2(comm_state[1]), 
            .I3(n41_adj_1633), .O(n11_adj_1582));
    defparam i18_4_lut_adj_273.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_adj_274 (.I0(n11_adj_1582), .I1(n20967), .I2(n21011), 
            .I3(ICE_GPMO_1), .O(n12461));
    defparam i1_3_lut_adj_274.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11793_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14225));   // zim_main.vhd(612[4] 899[13])
    defparam i11793_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_166_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1628));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18501_4_lut (.I0(n4_adj_1628), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21144));
    defparam i18501_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18502_3_lut (.I0(n22285), .I1(n21144), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21145));
    defparam i18502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_166_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1627));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18645_4_lut (.I0(n4_adj_1627), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21288));
    defparam i18645_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18646_3_lut (.I0(n22549), .I1(n21288), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21289));
    defparam i18646_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_166_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1626));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18636_4_lut (.I0(n4_adj_1626), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21279));
    defparam i18636_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18637_3_lut (.I0(n22519), .I1(n21279), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21280));
    defparam i18637_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12623_3_lut (.I0(n12557), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n15050));   // zim_main.vhd(595[3] 900[10])
    defparam i12623_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 mux_166_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1619));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18639_4_lut (.I0(n4_adj_1619), .I1(\comm_buf[6] [7]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21282));
    defparam i18639_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18640_3_lut (.I0(n22525), .I1(n21282), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21283));
    defparam i18640_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12557), 
            .D(n21283), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12557), 
            .D(n22297), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12557), 
            .D(n22321), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12557), 
            .D(n22291), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12557), 
            .D(n21280), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12557), 
            .D(n21289), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12557), 
            .D(n21145), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12461), 
            .D(n14225), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i2_2_lut_3_lut (.I0(n16880), .I1(acadc_dtrig_i), .I2(acadc_dtrig_v), 
            .I3(ICE_GPMO_1), .O(n6_adj_1696));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_275 (.I0(cmd_rdadctmp_adj_1718[11]), .I1(cmd_rdadctmp_adj_1718[10]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20720));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_275.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12461), 
            .D(n14229), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12461), 
            .D(n14233), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19408_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21294));
    defparam i19408_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12461), 
            .D(n14237), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12461), 
            .D(n14241), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12461), 
            .D(n14245), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12461), 
            .D(n14249), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12419), 
            .D(n14253), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12419), 
            .D(n14257), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12419), 
            .D(n14261), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12419), 
            .D(n14265), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12419), 
            .D(n14269), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12419), 
            .D(n14273), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_166_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1625));   // zim_main.vhd(778[30:40])
    defparam mux_166_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12419), 
            .D(n14277), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12377), 
            .D(n14281), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12377), 
            .D(n14285), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12377), 
            .D(n14289), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12377), 
            .D(n14293), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12377), 
            .D(n14297), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_155_13_lut (.I0(n14_adj_1611), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19746), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_13_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12377), 
            .D(n14301), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12377), 
            .D(n14305), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[1]), .I1(IAC_SCLK), .I2(DTRIG_N_869), 
            .I3(adc_state[0]), .O(n20502));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc4d8;
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12335), 
            .D(n14309), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12335), 
            .D(n14313), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i3802_3_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n5991));   // zim_main.vhd(245[9:19])
    defparam i3802_3_lut_3_lut.LUT_INIT = 16'h1a1a;
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12335), 
            .D(n14317), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i3801_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n6005));   // zim_main.vhd(595[3] 900[10])
    defparam i3801_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12335), 
            .D(n14321), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12335), 
            .D(n14325), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19837 (.I0(comm_cmd[1]), .I1(n19_adj_1701), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22498));
    defparam comm_cmd_1__bdd_4_lut_19837.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12335), 
            .D(n14329), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12335), 
            .D(n13919), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12272), 
            .D(n13923), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12272), 
            .D(n14333), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12272), 
            .D(n14337), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12272), 
            .D(n14341), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12272), 
            .D(n14345), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12943_3_lut_4_lut (.I0(dds_state_adj_1741[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1741[1]), .I3(dds_state_adj_1741[0]), .O(n15375));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12943_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12272), 
            .D(n14349), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12272), 
            .D(n14353), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12202), 
            .D(n14357), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12202), 
            .D(n14361), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12202), 
            .D(n14365), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12202), 
            .D(n14369), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12202), 
            .D(n14373), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12202), 
            .D(n14377), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 n22498_bdd_4_lut (.I0(n22498), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1700), 
            .I3(comm_cmd[2]), .O(n22501));
    defparam n22498_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12202), 
            .D(n14381), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12160), 
            .D(THERMOSTAT_N_472), .R(n6005));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12101), 
            .D(n30_adj_1578), .R(n14989));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19171_3_lut (.I0(n13), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21487));
    defparam i19171_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19813 (.I0(comm_cmd[1]), .I1(n21519), 
            .I2(n21520), .I3(comm_cmd[2]), .O(n22492));
    defparam comm_cmd_1__bdd_4_lut_19813.LUT_INIT = 16'he4aa;
    SB_LUT4 i12942_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15374));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12942_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 n22492_bdd_4_lut (.I0(n22492), .I1(n21316), .I2(n23), .I3(comm_cmd[2]), 
            .O(n22495));
    defparam n22492_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_adj_276 (.I0(adc_state_adj_1717[0]), .I1(VAC_SCLK), 
            .I2(DTRIG_N_869_adj_1495), .I3(adc_state_adj_1717[1]), .O(n20506));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_276.LUT_INIT = 16'hc4d8;
    SB_LUT4 i19_4_lut_adj_277 (.I0(n10950), .I1(n21487), .I2(comm_state[3]), 
            .I3(n9299), .O(n12517));
    defparam i19_4_lut_adj_277.LUT_INIT = 16'hf5c5;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12091), 
            .D(comm_index_2__N_449[2]), .R(n17014));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12091), 
            .D(comm_index_2__N_449[1]), .R(n17014));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i1_4_lut_4_lut_adj_278 (.I0(adc_state[1]), .I1(acadc_dtrig_i), 
            .I2(DTRIG_N_869), .I3(adc_state[0]), .O(n20504));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_278.LUT_INIT = 16'hcce8;
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n23_adj_1634), 
            .D(n7_adj_1614), .R(comm_state[3]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i15408_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1581));   // zim_main.vhd(612[4] 899[13])
    defparam i15408_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15359));   // zim_main.vhd(595[3] 900[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11999), .D(n461), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i12_4_lut_adj_279 (.I0(cmd_rdadctmp_adj_1718[10]), .I1(cmd_rdadctmp_adj_1718[9]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20718));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i19486_4_lut (.I0(n6005), .I1(n5991), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n7_adj_1529));
    defparam i19486_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i1_3_lut_adj_280 (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n12_adj_1530));
    defparam i1_3_lut_adj_280.LUT_INIT = 16'hbfbf;
    SB_LUT4 i19489_4_lut (.I0(comm_state[0]), .I1(n6005), .I2(n5991), 
            .I3(n12_adj_1530), .O(n10));
    defparam i19489_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i6625_3_lut_4_lut (.I0(n18698), .I1(n84), .I2(data_index[3]), 
            .I3(\comm_buf[1] [3]), .O(n8_adj_1602));
    defparam i6625_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i12_4_lut_adj_281 (.I0(cmd_rdadctmp_adj_1718[9]), .I1(cmd_rdadctmp_adj_1718[8]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20716));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_281.LUT_INIT = 16'hca0a;
    SB_LUT4 i12928_3_lut (.I0(buf_dds0[0]), .I1(n14_adj_1581), .I2(n12608), 
            .I3(ICE_GPMO_1), .O(n15360));   // zim_main.vhd(595[3] 900[10])
    defparam i12928_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_282 (.I0(cmd_rdadctmp_adj_1718[8]), .I1(cmd_rdadctmp_adj_1718[7]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20714));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_282.LUT_INIT = 16'hca0a;
    SB_LUT4 i12379_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(n1_adj_1637));   // zim_main.vhd(612[4] 899[13])
    defparam i12379_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i12_4_lut_adj_283 (.I0(cmd_rdadctmp_adj_1718[7]), .I1(cmd_rdadctmp_adj_1718[6]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20712));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_283.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19818 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(START_MAIN), .I3(comm_cmd[1]), .O(n22486));
    defparam comm_cmd_0__bdd_4_lut_19818.LUT_INIT = 16'he4aa;
    SB_LUT4 i18427_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n21069));
    defparam i18427_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i15365_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1588));   // zim_main.vhd(612[4] 899[13])
    defparam i15365_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n22486_bdd_4_lut (.I0(n22486), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n21181));
    defparam n22486_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_284 (.I0(comm_length[2]), .I1(comm_index[0]), .I2(comm_index[2]), 
            .I3(comm_length[0]), .O(n4));   // zim_main.vhd(813[9:33])
    defparam i1_4_lut_adj_284.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_4_lut_adj_285 (.I0(comm_state[3]), .I1(n9299), .I2(n7_adj_1457), 
            .I3(n8), .O(n12485));
    defparam i1_4_lut_4_lut_adj_285.LUT_INIT = 16'hd888;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19808 (.I0(comm_cmd[1]), .I1(n26), .I2(n21502), 
            .I3(comm_cmd[2]), .O(n22480));
    defparam comm_cmd_1__bdd_4_lut_19808.LUT_INIT = 16'he4aa;
    SB_LUT4 n22480_bdd_4_lut (.I0(n22480), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22483));
    defparam n22480_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_3_lut_adj_286 (.I0(comm_index[1]), .I1(n4), .I2(comm_length[1]), 
            .I3(ICE_GPMO_1), .O(n5));   // zim_main.vhd(813[9:33])
    defparam i2_3_lut_adj_286.LUT_INIT = 16'hdede;
    SB_LUT4 i15369_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1591));   // zim_main.vhd(612[4] 899[13])
    defparam i15369_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(comm_index[1]), .I1(comm_cmd[7]), 
            .I2(n1_adj_1632), .I3(n19891), .O(n7_adj_1457));   // zim_main.vhd(595[3] 900[10])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i1_2_lut_adj_287 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12460));
    defparam i1_2_lut_adj_287.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_288 (.I0(cmd_rdadctmp_adj_1718[6]), .I1(cmd_rdadctmp_adj_1718[5]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20710));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_288.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_289 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13209), 
            .I3(n1_adj_1699), .O(n20292));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_289.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_290 (.I0(cmd_rdadctmp_adj_1718[5]), .I1(cmd_rdadctmp_adj_1718[4]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20708));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_290.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_291 (.I0(comm_index[1]), .I1(comm_cmd[7]), 
            .I2(n1_adj_1632), .I3(comm_index[2]), .O(n4_adj_1629));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_291.LUT_INIT = 16'h0020;
    SB_LUT4 i12_4_lut_adj_292 (.I0(cmd_rdadctmp_adj_1718[4]), .I1(cmd_rdadctmp_adj_1718[3]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20706));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_292.LUT_INIT = 16'hca0a;
    SB_CARRY add_155_13 (.CI(n19746), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19747));
    SB_LUT4 add_72_10_lut (.I0(ICE_GPMO_1), .I1(data_count[8]), .I2(ICE_GPMO_1), 
            .I3(n19697), .O(n400)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15363_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1586));   // zim_main.vhd(612[4] 899[13])
    defparam i15363_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_72_3_lut (.I0(ICE_GPMO_1), .I1(data_count[1]), .I2(ICE_GPMO_1), 
            .I3(n19690), .O(n407)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11999), .D(n462), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i19389_2_lut_3_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), 
            .I2(eis_end_N_736), .I3(ICE_GPMO_1), .O(n21650));
    defparam i19389_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 mux_158_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1676));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1677));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11999), .D(n463), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15364_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1587));   // zim_main.vhd(612[4] 899[13])
    defparam i15364_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_72_6_lut (.I0(ICE_GPMO_1), .I1(data_count[4]), .I2(ICE_GPMO_1), 
            .I3(n19693), .O(n404)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_78_2_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_748), 
            .I3(ICE_GPMO_1), .O(n476)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n10789), .O(n12094));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hdfcf;
    SB_LUT4 i1_2_lut_3_lut_adj_293 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n17));
    defparam i1_2_lut_3_lut_adj_293.LUT_INIT = 16'h2020;
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11999), .D(n464), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i17170_1_lut (.I0(cs_mask_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1532));   // zim_main.vhd(609[20:31])
    defparam i17170_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19803 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22468));
    defparam comm_cmd_0__bdd_4_lut_19803.LUT_INIT = 16'he4aa;
    SB_LUT4 i19377_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21638));
    defparam i19377_2_lut.LUT_INIT = 16'heeee;
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11999), .D(n465), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 n22468_bdd_4_lut (.I0(n22468), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n22471));
    defparam n22468_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_158_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1706));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11999), .D(n466), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11999), .D(n467), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15351_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1617));   // zim_main.vhd(612[4] 899[13])
    defparam i15351_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11999), .D(n468), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n17014));   // zim_main.vhd(245[9:19])
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'ha9a8;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11999), .D(n469), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11999), .D(n470), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11999), .D(n471), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11999), .D(n472), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11999), .D(n473), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11999), .D(n474), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11999), .D(n475), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n11954), 
            .D(n408), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i17243_1_lut (.I0(clk_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1563));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17243_1_lut.LUT_INIT = 16'h5555;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n11954), 
            .D(n426), .R(n15343));   // zim_main.vhd(479[3] 557[10])
    SB_DFFSR clk_cnt_3926_3927__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15_adj_1563), 
            .R(n17605));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i15285_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n5971));   // zim_main.vhd(612[4] 899[13])
    defparam i15285_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19789 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22462));
    defparam comm_cmd_0__bdd_4_lut_19789.LUT_INIT = 16'he4aa;
    SB_LUT4 n22462_bdd_4_lut (.I0(n22462), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n21196));
    defparam n22462_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19798 (.I0(comm_cmd[1]), .I1(n26_adj_1706), 
            .I2(n21638), .I3(comm_cmd[2]), .O(n22456));
    defparam comm_cmd_1__bdd_4_lut_19798.LUT_INIT = 16'he4aa;
    SB_DFFESS cs_mask_cnt_3930__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n11932), 
            .D(n15_adj_1532), .S(n14947));   // zim_main.vhd(609[20:31])
    SB_LUT4 i15350_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1618));   // zim_main.vhd(612[4] 899[13])
    defparam i15350_2_lut_3_lut.LUT_INIT = 16'h0202;
    GND i1 (.Y(ICE_GPMO_1));
    SB_LUT4 i1_2_lut_3_lut_adj_294 (.I0(eis_end_N_736), .I1(acadc_dtrig_v), 
            .I2(acadc_dtrig_i), .I3(ICE_GPMO_1), .O(n16887));   // zim_main.vhd(479[3] 557[10])
    defparam i1_2_lut_3_lut_adj_294.LUT_INIT = 16'hbfbf;
    SB_LUT4 n22456_bdd_4_lut (.I0(n22456), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22459));
    defparam n22456_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_4_lut_adj_295 (.I0(eis_state[0]), .I1(eis_end_N_736), 
            .I2(tacadc_rst), .I3(eis_state[1]), .O(n11954));
    defparam i1_3_lut_4_lut_adj_295.LUT_INIT = 16'h0203;
    SB_LUT4 i1_2_lut_adj_296 (.I0(comm_state[1]), .I1(comm_state_3__N_441[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21038));
    defparam i1_2_lut_adj_296.LUT_INIT = 16'hdddd;
    SB_LUT4 i19120_3_lut_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[2]), .O(n21390));
    defparam i19120_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd79;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_297 (.I0(cs_sync1), .I1(cs_sync2), 
            .I2(cs_mask_cnt[0]), .I3(cs_mask_cnt[1]), .O(n11932));   // zim_main.vhd(603[8:37])
    defparam i1_2_lut_3_lut_4_lut_adj_297.LUT_INIT = 16'hfff4;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n21191), .I2(n21192), 
            .I3(comm_cmd[3]), .O(n22450));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_298 (.I0(cmd_rdadctmp_adj_1718[3]), .I1(cmd_rdadctmp_adj_1718[2]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20704));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_298.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_299 (.I0(cmd_rdadctmp_adj_1718[2]), .I1(cmd_rdadctmp_adj_1718[1]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20696));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_299.LUT_INIT = 16'hca0a;
    SB_LUT4 add_155_12_lut (.I0(n14_adj_1612), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19745), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_12_lut.LUT_INIT = 16'hA3AC;
    ADC_ADS1252 ADC_VDC (.GND_net(ICE_GPMO_1), .adc_state({adc_state_adj_1763[3], 
            Open_0, Open_1, Open_2}), .\adc_state_3__N_1288[0] (VDC_SDO), 
            .\adc_state[2] (adc_state_adj_1763[2]), .VDC_SCLK(VDC_SCLK), 
            .VDC_CLK(VDC_CLK), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), .VCC_net(VCC_net), 
            .n20174(n20174), .cmd_rdadctmp({Open_3, cmd_rdadctmp_adj_1764[22:1], 
            Open_4}), .n20176(n20176), .n20178(n20178), .n20180(n20180), 
            .n20182(n20182), .n20184(n20184), .n20186(n20186), .n20188(n20188), 
            .n20190(n20190), .n20192(n20192), .n20194(n20194), .n20196(n20196), 
            .n20198(n20198), .n20200(n20200), .n20202(n20202), .n20204(n20204), 
            .n20206(n20206), .\buf_adcdata_vac[23] (buf_adcdata_vac[23]), 
            .buf_adcdata_vdc({buf_adcdata_vdc}), .\comm_cmd[0] (comm_cmd[0]), 
            .n19(n19_adj_1710), .n20208(n20208), .n20210(n20210), .n20212(n20212), 
            .n20214(n20214), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), .n20216(n20216), 
            .n20380(n20380), .n20382(n20382), .n20384(n20384), .n20404(n20404), 
            .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), .n20406(n20406), .n20408(n20408), 
            .n20410(n20410), .n20412(n20412), .n20414(n20414), .n20416(n20416), 
            .n20418(n20418), .n20420(n20420), .n20422(n20422), .n20424(n20424), 
            .n20426(n20426), .n20428(n20428), .n20430(n20430), .n20432(n20432), 
            .n20434(n20434), .n20436(n20436), .n20438(n20438), .n20440(n20440), 
            .n20442(n20442), .n13351(n13351), .n11918(n11918), .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), 
            .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), 
            .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), 
            .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), 
            .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), 
            .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1764[0]), .n20248(n20248), 
            .n20474(n20474), .clk_16MHz(clk_16MHz));   // zim_main.vhd(989[12:23])
    SB_LUT4 n22450_bdd_4_lut (.I0(n22450), .I1(n21189), .I2(n21188), .I3(comm_cmd[3]), 
            .O(n22453));
    defparam n22450_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_300 (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(n42));
    defparam i1_2_lut_3_lut_adj_300.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_3_lut_3_lut_4_lut_adj_301 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12091));
    defparam i1_3_lut_3_lut_4_lut_adj_301.LUT_INIT = 16'ha9e8;
    SB_LUT4 i29_3_lut_4_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n11_adj_1566));   // zim_main.vhd(292[9:18])
    defparam i29_3_lut_4_lut.LUT_INIT = 16'h0f88;
    SB_LUT4 i12515_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n14947));   // zim_main.vhd(603[8:37])
    defparam i12515_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_CARRY add_72_3 (.CI(n19690), .I0(data_count[1]), .I1(ICE_GPMO_1), 
            .CO(n19691));
    SB_CARRY add_72_2 (.CI(ICE_GPMO_1), .I0(data_count[0]), .I1(iac_raw_buf_N_748), 
            .CO(n19690));
    SB_LUT4 i2_4_lut_adj_302 (.I0(n21038), .I1(comm_state[0]), .I2(n12460), 
            .I3(comm_data_vld), .O(n12071));
    defparam i2_4_lut_adj_302.LUT_INIT = 16'hfbfa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19784 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22444));
    defparam comm_cmd_0__bdd_4_lut_19784.LUT_INIT = 16'he4aa;
    SB_CARRY add_155_12 (.CI(n19745), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19746));
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_303 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12160));
    defparam i1_4_lut_4_lut_4_lut_adj_303.LUT_INIT = 16'ha8ac;
    ADC_MAX31865 RTD (.GND_net(ICE_GPMO_1), .adc_state({adc_state_adj_1760[3], 
            Open_5, adc_state_adj_1760[1], Open_6}), .\adc_state[2] (adc_state_adj_1760[2]), 
            .n13209(n13209), .RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .buf_cfgRTD({buf_cfgRTD}), .n20060(n20060), .VCC_net(VCC_net), 
            .adress({Open_7, adress[6:1], Open_8}), .n20062(n20062), 
            .n20064(n20064), .n20066(n20066), .n20068(n20068), .n20070(n20070), 
            .n20292(n20292), .read_buf({read_buf}), .n20296(n20296), .n20300(n20300), 
            .n20304(n20304), .n20308(n20308), .n20312(n20312), .n20318(n20318), 
            .n20322(n20322), .n20326(n20326), .n20330(n20330), .n20334(n20334), 
            .buf_readRTD({buf_readRTD}), .n13285(n13285), .RTD_DRDY(RTD_DRDY), 
            .n20338(n20338), .n20342(n20342), .n20346(n20346), .n20350(n20350), 
            .n20352(n20352), .n20354(n20354), .n20356(n20356), .n20358(n20358), 
            .n20362(n20362), .n20364(n20364), .n20366(n20366), .n20368(n20368), 
            .n20370(n20370), .n20372(n20372), .n20374(n20374), .n20376(n20376), 
            .n20378(n20378), .n1(n1_adj_1699), .n20470(n20470), .n20472(n20472), 
            .n13075(n13075), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(975[8:20])
    SB_LUT4 i1_2_lut_3_lut_adj_304 (.I0(comm_index[1]), .I1(n19294), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n19315));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_adj_304.LUT_INIT = 16'h4040;
    SB_LUT4 i12_4_lut_adj_305 (.I0(cmd_rdadctmp_adj_1718[1]), .I1(cmd_rdadctmp_adj_1718[0]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20694));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_305.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_3_lut_4_lut_adj_306 (.I0(comm_index[1]), .I1(n19294), .I2(comm_index[2]), 
            .I3(comm_state[0]), .O(n34));   // zim_main.vhd(595[3] 900[10])
    defparam i2_3_lut_4_lut_adj_306.LUT_INIT = 16'h0004;
    SB_LUT4 i12_4_lut_adj_307 (.I0(cmd_rdadctmp_adj_1718[12]), .I1(cmd_rdadctmp_adj_1718[11]), 
            .I2(n12892), .I3(adc_state_adj_1717[0]), .O(n20722));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_307.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n20967));
    defparam i1_2_lut_3_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i12929_3_lut (.I0(IAC_OSR0), .I1(n14_adj_1591), .I2(n12622), 
            .I3(ICE_GPMO_1), .O(n15361));   // zim_main.vhd(595[3] 900[10])
    defparam i12929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_308 (.I0(n20926), .I1(n5971), .I2(n12071), .I3(n4_adj_1686), 
            .O(n20944));
    defparam i1_4_lut_adj_308.LUT_INIT = 16'ha080;
    SB_LUT4 n22444_bdd_4_lut (.I0(n22444), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22447));
    defparam n22444_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_309 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20692));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_309.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_310 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20690));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_310.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12557), 
            .D(n22333), .R(n15050));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12461), 
            .D(n13841), .R(n15036));   // zim_main.vhd(595[3] 900[10])
    DDS_AD9837_U0 CLK_DDS (.dds_state({dds_state_adj_1741}), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .trig_dds1(trig_dds1), .n20538(n20538), 
            .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf_adj_1742[15]), .n15140(n15140), 
            .GND_net(ICE_GPMO_1), .n15379(n15379), .DDS_MOSI1(DDS_MOSI1), 
            .n15375(n15375), .DDS_SCK1(DDS_SCK1), .buf_dds1({buf_dds1}), 
            .bit_cnt({Open_9, Open_10, Open_11, bit_cnt_adj_1743[0]}), 
            .n16104(n16104));   // zim_main.vhd(952[12:22])
    SB_LUT4 i4064_3_lut_4_lut (.I0(comm_index[0]), .I1(n1_adj_1632), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_449[2]));   // zim_main.vhd(794[5] 804[12])
    defparam i4064_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12419), 
            .D(n13837), .R(n15029));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_155_11_lut (.I0(n14_adj_1613), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19744), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_11_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12377), 
            .D(n13833), .R(n15022));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_72_9_lut (.I0(ICE_GPMO_1), .I1(data_count[7]), .I2(ICE_GPMO_1), 
            .I3(n19696), .O(n401)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_9_lut.LUT_INIT = 16'hC33C;
    ADC_ADS127 ADC_VAC (.drdy_sync2(drdy_sync2_adj_1492), .clk_32MHz(clk_32MHz), 
            .drdy_prev(drdy_prev_adj_1493), .\adc_state[0] (adc_state_adj_1717[0]), 
            .VAC_DRDY(VAC_DRDY), .n20524(n20524), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1718}), 
            .n20530(n20530), .n20532(n20532), .acadc_dtrig_v(acadc_dtrig_v), 
            .acadc_dtrig_i(acadc_dtrig_i), .iac_raw_buf_N_748(iac_raw_buf_N_748), 
            .GND_net(ICE_GPMO_1), .eis_adc_trig(eis_adc_trig), .DTRIG_N_869(DTRIG_N_869_adj_1495), 
            .drdy_falling(drdy_falling_adj_1494), .\adc_state[1] (adc_state_adj_1717[1]), 
            .buf_adcdata_vac({buf_adcdata_vac}), .n15378(n15378), .n20508(n20508), 
            .n20506(n20506), .VAC_SCLK(VAC_SCLK), .n20766(n20766), .n20764(n20764), 
            .n20600(n20600), .n12(n12_adj_1659), .VAC_CS(VAC_CS), .n20762(n20762), 
            .n20760(n20760), .n20758(n20758), .n20756(n20756), .n20754(n20754), 
            .n20750(n20750), .n20748(n20748), .n20746(n20746), .n20744(n20744), 
            .n20742(n20742), .n20736(n20736), .n20734(n20734), .n20732(n20732), 
            .n20724(n20724), .n20722(n20722), .n20694(n20694), .n20696(n20696), 
            .n20704(n20704), .n20706(n20706), .n20708(n20708), .n20710(n20710), 
            .n20712(n20712), .n20714(n20714), .n20716(n20716), .n20718(n20718), 
            .n20720(n20720), .n12892(n12892));   // zim_main.vhd(928[12:22])
    SB_LUT4 i12021_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14453));   // zim_main.vhd(612[4] 899[13])
    defparam i12021_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_311 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20688));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_311.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_387_Mux_3_i7_4_lut (.I0(comm_state[0]), .I1(n21506), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n17881));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_3_i7_4_lut.LUT_INIT = 16'hcffa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_312 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18695), .I3(comm_cmd[1]), .O(n18713));
    defparam i1_2_lut_3_lut_4_lut_adj_312.LUT_INIT = 16'h0100;
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12335), 
            .D(n13829), .R(n15015));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i1_2_lut_3_lut_adj_313 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n21044));
    defparam i1_2_lut_3_lut_adj_313.LUT_INIT = 16'hefef;
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12272), 
            .D(n13825), .R(n15008));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_314 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20686));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_314.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12202), 
            .D(n13821), .R(n15001));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12101), 
            .D(n20450), .R(n14989));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_state_3__I_0_387_Mux_3_i15_4_lut (.I0(n17881), .I1(n14453), 
            .I2(comm_state[3]), .I3(comm_state_3__N_418[3]), .O(comm_state_3__N_11[3]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_387_Mux_3_i15_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 i1_3_lut_adj_315 (.I0(comm_cmd[4]), .I1(comm_cmd[5]), .I2(comm_cmd[6]), 
            .I3(ICE_GPMO_1), .O(n20918));
    defparam i1_3_lut_adj_315.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_316 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21011));   // zim_main.vhd(245[9:19])
    defparam i1_2_lut_adj_316.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12_4_lut_adj_317 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20684));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_317.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12091), 
            .D(comm_index_2__N_449[0]), .R(n17014));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_318 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20682));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_318.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11999), .D(n476), .R(n14957));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i12932_3_lut_4_lut (.I0(req_data_cnt[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9299), .I3(n12692), .O(n15364));   // zim_main.vhd(595[3] 900[10])
    defparam i12932_3_lut_4_lut.LUT_INIT = 16'h0caa;
    ADC_ADS127_U1 ADC_IAC (.\adc_state[1] (adc_state[1]), .\adc_state[0] (adc_state[0]), 
            .DTRIG_N_869(DTRIG_N_869), .GND_net(ICE_GPMO_1), .drdy_sync2(drdy_sync2), 
            .clk_32MHz(clk_32MHz), .drdy_prev(drdy_prev), .IAC_DRDY(IAC_DRDY), 
            .n20951(n20951), .eis_adc_trig(eis_adc_trig), .drdy_falling(drdy_falling), 
            .buf_adcdata_iac({buf_adcdata_iac}), .n15386(n15386), .n20504(n20504), 
            .acadc_dtrig_i(acadc_dtrig_i), .n20502(n20502), .IAC_SCLK(IAC_SCLK), 
            .n20598(n20598), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), 
            .n12(n12_adj_1668), .IAC_CS(IAC_CS), .n20630(n20630), .n20632(n20632), 
            .n20634(n20634), .n20636(n20636), .n20638(n20638), .n20640(n20640), 
            .n20642(n20642), .n20644(n20644), .n20646(n20646), .n20648(n20648), 
            .n20650(n20650), .n20652(n20652), .n20654(n20654), .n20658(n20658), 
            .n20660(n20660), .n20662(n20662), .n20664(n20664), .n20666(n20666), 
            .n20668(n20668), .n20670(n20670), .n20672(n20672), .n20674(n20674), 
            .n20676(n20676), .n20678(n20678), .n20680(n20680), .n20682(n20682), 
            .n20684(n20684), .n20686(n20686), .n20688(n20688), .n20690(n20690), 
            .n20692(n20692), .n12796(n12796));   // zim_main.vhd(914[12:22])
    SB_LUT4 i1_2_lut_4_lut_adj_319 (.I0(cs_falling_pend), .I1(cs_mask_cnt_1__N_397), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(n4_adj_1608));
    defparam i1_2_lut_4_lut_adj_319.LUT_INIT = 16'hfff2;
    SB_LUT4 i12931_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9299), .I3(n12666), .O(n15363));   // zim_main.vhd(595[3] 900[10])
    defparam i12931_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i21_4_lut_adj_320 (.I0(comm_state[1]), .I1(n20925), .I2(n5991), 
            .I3(comm_cmd[0]), .O(n15_adj_1647));
    defparam i21_4_lut_adj_320.LUT_INIT = 16'hc505;
    zim_pll pll_main (.GND_net(ICE_GPMO_1), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_694(DDS_MCLK1));   // zim_main.vhd(903[13:20])
    SB_CARRY add_78_2 (.CI(ICE_GPMO_1), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_748), 
            .CO(n19713));
    DDS_AD9837 SIG_DDS (.trig_dds0(trig_dds0), .dds_state({dds_state}), 
            .GND_net(ICE_GPMO_1), .bit_cnt({Open_12, Open_13, Open_14, 
            bit_cnt_adj_1739[0]}), .clk_32MHz(clk_32MHz), .DDS_CS(DDS_CS), 
            .n20536(n20536), .VCC_net(VCC_net), .buf_dds0({buf_dds0}), 
            .\tmp_buf[15] (tmp_buf[15]), .n15135(n15135), .n15384(n15384), 
            .DDS_MOSI(DDS_MOSI), .n15374(n15374), .DDS_SCK(DDS_SCK), .n16108(n16108));   // zim_main.vhd(942[12:22])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19779 (.I0(comm_cmd[1]), .I1(n19_adj_1683), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n22438));
    defparam comm_cmd_1__bdd_4_lut_19779.LUT_INIT = 16'he4aa;
    SB_DFF clk_RTD_325 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_727));   // zim_main.vhd(417[3] 424[10])
    SB_CARRY add_72_9 (.CI(n19696), .I0(data_count[7]), .I1(ICE_GPMO_1), 
            .CO(n19697));
    SB_LUT4 n22438_bdd_4_lut (.I0(n22438), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1682), 
            .I3(comm_cmd[2]), .O(n22441));
    defparam n22438_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_321 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12557));
    defparam i1_4_lut_4_lut_4_lut_adj_321.LUT_INIT = 16'hb8a8;
    SB_LUT4 i13066_4_lut (.I0(trig_dds1), .I1(n6005), .I2(n15_adj_1647), 
            .I3(n5991), .O(n15498));   // zim_main.vhd(612[4] 899[13])
    defparam i13066_4_lut.LUT_INIT = 16'h3202;
    SB_LUT4 i12930_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1591), .I2(n12636), 
            .I3(ICE_GPMO_1), .O(n15362));   // zim_main.vhd(595[3] 900[10])
    defparam i12930_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_322 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12796), .I3(adc_state[0]), .O(n20680));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_322.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_323 (.I0(comm_data_vld), .I1(n21011), .I2(comm_state[0]), 
            .I3(n21038), .O(n21040));
    defparam i3_4_lut_adj_323.LUT_INIT = 16'hfffe;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (n6231, clk_32MHz, comm_data_vld, reset_int, comm_tx_buf, 
            GND_net, comm_rx_buf, VCC_net, \comm_buf[6][7] , n12485, 
            \comm_state[3] , n20086, sclk_sync1, sclk_sync2, ICE_SPI_MISO, 
            n15381, n15380, n15376, \comm_state_3__N_441[1] , \comm_state[2] , 
            n4, \comm_cmd[7] , n19294, n1);
    output n6231;
    input clk_32MHz;
    output comm_data_vld;
    input reset_int;
    input [7:0]comm_tx_buf;
    input GND_net;
    output [7:0]comm_rx_buf;
    input VCC_net;
    input \comm_buf[6][7] ;
    input n12485;
    input \comm_state[3] ;
    output n20086;
    output sclk_sync1;
    output sclk_sync2;
    output ICE_SPI_MISO;
    input n15381;
    input n15380;
    input n15376;
    input \comm_state_3__N_441[1] ;
    input \comm_state[2] ;
    output n4;
    input \comm_cmd[7] ;
    output n19294;
    output n1;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire n21106, sclk_rising_pend, DATA_VLD_N_1004, n22933, n14869, 
        n14868, n14867;
    wire [7:0]n18;
    wire [3:0]n27;
    
    wire n11934;
    wire [3:0]bit_cnt;   // spi_slave.vhd(27[8:15])
    
    wire n22930, data_tx_7__N_983, n17174, n15769, n15784, n15772, 
        n15775, n15778, n15781, n14896, n14895;
    wire [7:0]data_tx;   // spi_slave.vhd(29[8:15])
    
    wire data_tx_7__N_965, sclk_falling_pend_N_1016, n11939, sclk_falling_pend, 
        n22927, n14900, n14899, n22921, n14876, n14875, n14871, 
        data_tx_7__N_954, n15766, data_tx_7__N_961, n14880, data_tx_7__N_980, 
        n14879, data_tx_7__N_960, data_tx_7__N_962, n6574, n14873, 
        n14884, n14883, data_tx_7__N_959, n14872, n19629, data_tx_7__N_974, 
        data_tx_7__N_958, n22936, n14888, n14887, n22939, n14892, 
        n14891, data_tx_7__N_955, data_tx_7__N_977, data_tx_7__N_968, 
        data_tx_7__N_956, data_tx_7__N_971, data_tx_7__N_957;
    
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n21106), 
            .D(n6231));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_1004), 
            .R(reset_int));   // spi_slave.vhd(91[3] 100[10])
    SB_LUT4 i19560_4_lut_3_lut (.I0(n22933), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22933));   // spi_slave.vhd(47[3] 84[10])
    defparam i19560_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i15181_2_lut_4_lut (.I0(n14869), .I1(n14868), .I2(n14867), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i15181_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_DFFER bit_cnt_3931__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11934), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i19545_4_lut_3_lut (.I0(n22930), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22930));   // spi_slave.vhd(47[3] 84[10])
    defparam i19545_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_983));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i14755_4_lut (.I0(comm_rx_buf[6]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[5]), .O(n15769));
    defparam i14755_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14757_4_lut (.I0(comm_rx_buf[1]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[0]), .O(n15784));
    defparam i14757_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15784));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i14747_4_lut (.I0(comm_rx_buf[5]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[4]), .O(n15772));
    defparam i14747_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14749_4_lut (.I0(comm_rx_buf[4]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[3]), .O(n15775));
    defparam i14749_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14753_4_lut (.I0(comm_rx_buf[3]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[2]), .O(n15778));
    defparam i14753_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14759_4_lut (.I0(comm_rx_buf[2]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[1]), .O(n15781));
    defparam i14759_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15781));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15778));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15775));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15772));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15769));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12465_3_lut (.I0(n14896), .I1(n14895), .I2(n22933), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12465_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n11939), .D(sclk_falling_pend_N_1016));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12_4_lut (.I0(\comm_buf[6][7] ), .I1(comm_rx_buf[7]), .I2(n12485), 
            .I3(\comm_state[3] ), .O(n20086));
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19570_4_lut_3_lut (.I0(n22927), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22927));   // spi_slave.vhd(47[3] 84[10])
    defparam i19570_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19540_4_lut_3_lut (.I0(n14867), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n14867));   // spi_slave.vhd(47[3] 84[10])
    defparam i19540_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12469_3_lut (.I0(n14900), .I1(n14899), .I2(n22921), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12469_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12445_3_lut (.I0(n14876), .I1(n14875), .I2(n14871), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12445_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_954));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i7_12443_12444_set (.Q(n14875), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_954));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15766));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i19565_4_lut_3_lut (.I0(n22921), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22921));   // spi_slave.vhd(47[3] 84[10])
    defparam i19565_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19535_4_lut_3_lut (.I0(n14871), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14871));   // spi_slave.vhd(47[3] 84[10])
    defparam i19535_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i14751_4_lut (.I0(comm_rx_buf[7]), .I1(n17174), .I2(n6231), 
            .I3(comm_rx_buf[6]), .O(n15766));
    defparam i14751_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_1016), 
            .I3(sclk_sync2), .O(n11939));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_DFFS data_tx_i0_i0_12436_12437_set (.Q(n14868), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_961));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i19469_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_1016));   // spi_slave.vhd(67[4] 83[11])
    defparam i19469_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFR data_tx_i0_i1_12447_12448_reset (.Q(n14880), .C(clk_32MHz), 
            .D(n18[1]), .R(data_tx_7__N_980));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i1_12447_12448_set (.Q(n14879), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_960));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i7_12443_12444_reset (.Q(n14876), .C(clk_32MHz), 
            .D(n18[7]), .R(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR MISO_92_12440_12441_reset (.Q(n14873), .C(clk_32MHz), .D(n6574), 
            .R(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12453_3_lut (.I0(n14884), .I1(n14883), .I2(n22930), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12453_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i2_12451_12452_set (.Q(n14883), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS MISO_92_12440_12441_set (.Q(n14872), .C(clk_32MHz), .D(n6574), 
            .S(data_tx_7__N_954));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i15259_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n19629), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15259_4_lut.LUT_INIT = 16'h1222;
    SB_LUT4 i15258_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n19629), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15258_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i15131_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15131_3_lut.LUT_INIT = 16'h1212;
    SB_DFFER bit_cnt_3931__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11934), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3931__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11934), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3931__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11934), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i17190_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n19629));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17190_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFFR data_tx_i0_i0_12436_12437_reset (.Q(n14869), .C(clk_32MHz), 
            .D(n18[0]), .R(data_tx_7__N_983));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i15257_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15257_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_974));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12442_3_lut (.I0(n14873), .I1(n14872), .I2(n14871), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(47[3] 84[10])
    defparam i12442_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n15381));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n15380));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n15376));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17174));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17174), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_1004));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_958));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18463_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n21106));
    defparam i18463_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 i19461_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n6231));   // spi_slave.vhd(47[3] 84[10])
    defparam i19461_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19555_4_lut_3_lut (.I0(n22936), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22936));   // spi_slave.vhd(47[3] 84[10])
    defparam i19555_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_data_vld), .I1(\comm_state_3__N_441[1] ), 
            .I2(\comm_state[3] ), .I3(\comm_state[2] ), .O(n4));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12457_3_lut (.I0(n14888), .I1(n14887), .I2(n22939), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12457_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12461_3_lut (.I0(n14892), .I1(n14891), .I2(n22936), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12461_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i0_i6_12467_12468_reset (.Q(n14900), .C(clk_32MHz), 
            .D(n18[6]), .R(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_955));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4220_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_1016), 
            .I3(GND_net), .O(n6574));   // spi_slave.vhd(47[3] 84[10])
    defparam i4220_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i19550_4_lut_3_lut (.I0(n22939), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22939));   // spi_slave.vhd(47[3] 84[10])
    defparam i19550_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_960));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12449_3_lut (.I0(n14880), .I1(n14879), .I2(n22927), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12449_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_980));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_977));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12438_3_lut (.I0(n14869), .I1(n14868), .I2(n14867), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12438_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_961));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_968));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut (.I0(\comm_cmd[7] ), .I1(comm_data_vld), .I2(\comm_state_3__N_441[1] ), 
            .I3(GND_net), .O(n19294));   // spi_slave.vhd(91[3] 100[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1_2_lut_3_lut_adj_49 (.I0(bit_cnt[3]), .I1(n17174), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n11934));
    defparam i1_2_lut_3_lut_adj_49.LUT_INIT = 16'h2f2f;
    SB_LUT4 i1_2_lut_adj_50 (.I0(comm_data_vld), .I1(\comm_state_3__N_441[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n1));   // spi_slave.vhd(91[3] 100[10])
    defparam i1_2_lut_adj_50.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_971));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_957));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS data_tx_i0_i6_12467_12468_set (.Q(n14899), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_955));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i0_i5_12463_12464_reset (.Q(n14896), .C(clk_32MHz), 
            .D(n18[5]), .R(data_tx_7__N_968));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i5_12463_12464_set (.Q(n14895), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i4_12459_12460_reset (.Q(n14892), .C(clk_32MHz), 
            .D(n18[4]), .R(data_tx_7__N_971));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i4_12459_12460_set (.Q(n14891), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_957));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i3_12455_12456_reset (.Q(n14888), .C(clk_32MHz), 
            .D(n18[3]), .R(data_tx_7__N_974));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i3_12455_12456_set (.Q(n14887), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_958));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i2_12451_12452_reset (.Q(n14884), .C(clk_32MHz), 
            .D(n18[2]), .R(data_tx_7__N_977));   // spi_slave.vhd(47[3] 84[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (GND_net, adc_state, \adc_state_3__N_1288[0] , \adc_state[2] , 
            VDC_SCLK, VDC_CLK, \cmd_rdadcbuf[34] , VCC_net, n20174, 
            cmd_rdadctmp, n20176, n20178, n20180, n20182, n20184, 
            n20186, n20188, n20190, n20192, n20194, n20196, n20198, 
            n20200, n20202, n20204, n20206, \buf_adcdata_vac[23] , 
            buf_adcdata_vdc, \comm_cmd[0] , n19, n20208, n20210, n20212, 
            n20214, \cmd_rdadcbuf[33] , n20216, n20380, n20382, n20384, 
            n20404, \cmd_rdadcbuf[32] , n20406, n20408, n20410, n20412, 
            n20414, n20416, n20418, n20420, n20422, n20424, n20426, 
            n20428, n20430, n20432, n20434, n20436, n20438, n20440, 
            n20442, n13351, n11918, \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , 
            \cmd_rdadcbuf[29] , \cmd_rdadcbuf[28] , \cmd_rdadcbuf[27] , 
            \cmd_rdadcbuf[26] , \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , 
            \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , 
            \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , 
            \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , 
            \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , \cmd_rdadcbuf[12] , 
            \cmd_rdadcbuf[11] , \cmd_rdadctmp[0] , n20248, n20474, clk_16MHz);
    input GND_net;
    output [3:0]adc_state;
    input \adc_state_3__N_1288[0] ;
    output \adc_state[2] ;
    output VDC_SCLK;
    output VDC_CLK;
    output \cmd_rdadcbuf[34] ;
    input VCC_net;
    input n20174;
    output [23:0]cmd_rdadctmp;
    input n20176;
    input n20178;
    input n20180;
    input n20182;
    input n20184;
    input n20186;
    input n20188;
    input n20190;
    input n20192;
    input n20194;
    input n20196;
    input n20198;
    input n20200;
    input n20202;
    input n20204;
    input n20206;
    input \buf_adcdata_vac[23] ;
    output [23:0]buf_adcdata_vdc;
    input \comm_cmd[0] ;
    output n19;
    input n20208;
    input n20210;
    input n20212;
    input n20214;
    output \cmd_rdadcbuf[33] ;
    input n20216;
    input n20380;
    input n20382;
    input n20384;
    input n20404;
    output \cmd_rdadcbuf[32] ;
    input n20406;
    input n20408;
    input n20410;
    input n20412;
    input n20414;
    input n20416;
    input n20418;
    input n20420;
    input n20422;
    input n20424;
    input n20426;
    input n20428;
    input n20430;
    input n20432;
    input n20434;
    input n20436;
    input n20438;
    input n20440;
    input n20442;
    output n13351;
    output n11918;
    output \cmd_rdadcbuf[31] ;
    output \cmd_rdadcbuf[30] ;
    output \cmd_rdadcbuf[29] ;
    output \cmd_rdadcbuf[28] ;
    output \cmd_rdadcbuf[27] ;
    output \cmd_rdadcbuf[26] ;
    output \cmd_rdadcbuf[25] ;
    output \cmd_rdadcbuf[24] ;
    output \cmd_rdadcbuf[23] ;
    output \cmd_rdadcbuf[22] ;
    output \cmd_rdadcbuf[21] ;
    output \cmd_rdadcbuf[20] ;
    output \cmd_rdadcbuf[19] ;
    output \cmd_rdadcbuf[18] ;
    output \cmd_rdadcbuf[17] ;
    output \cmd_rdadcbuf[16] ;
    output \cmd_rdadcbuf[15] ;
    output \cmd_rdadcbuf[14] ;
    output \cmd_rdadcbuf[13] ;
    output \cmd_rdadcbuf[12] ;
    output \cmd_rdadcbuf[11] ;
    output \cmd_rdadctmp[0] ;
    input n20248;
    input n20474;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(52[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(220[9:18])
    wire [11:0]avg_cnt_11__N_1332;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19810, n19809, n19808;
    wire [3:0]adc_state_c;   // adc_ads1252u.vhd(31[8:17])
    
    wire n21026, n62, n21123, n11, n18570, n11937, n15, n19_c, 
        n10462, n19807, n19806, n19805, n22086, n11922, n16082, 
        n19804, n19803, n19802;
    wire [3:0]adc_state_3__N_1164;
    
    wire n20930, n13303;
    wire [35:0]cmd_rdadcbuf_35__N_1212;
    
    wire n13530, n19801, n19800;
    wire [35:0]cmd_rdadcbuf_35__N_1296;
    
    wire n19798, n19797, n18583, n21427, n19796;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n6, n11537, n7, n12, n20899, n20, n19_adj_1451, n21, 
        n8, n21309, n21060, n27, n18586, n22477, n19795, n19794, 
        n19793, n19792, n19791, n19790, n19789, n19788;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n19787, n19786, n19785, n19784, n19783, n19782, n19781, 
        n19780;
    wire [7:0]n37;
    
    wire n19847, n19779, n19846, n19778, n19777, n19845, n19776, 
        n19775;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19774, n19844, n19773, n19772, n19843, n19771, n19770, 
        n19769, n19842, n19841, n19768, n19767, n19766, n19765, 
        n13490, n7_adj_1452, n12_adj_1453, n39_adj_1454, n21091, n47, 
        n21354, n21351, n15227, n6_adj_1455, n13395, n20792, n17, 
        n4, n6_adj_1456, n10798, n22474;
    
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19810), .O(avg_cnt_11__N_1332[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19809), .O(avg_cnt_11__N_1332[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19809), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19810));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19808), .O(avg_cnt_11__N_1332[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(adc_state[3]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21026));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_35 (.I0(adc_state_c[0]), .I1(\adc_state_3__N_1288[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n62));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_2_lut_adj_35.LUT_INIT = 16'heeee;
    SB_LUT4 i18480_2_lut (.I0(\adc_state[2] ), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21123));
    defparam i18480_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i24_4_lut (.I0(n62), .I1(n21026), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n11));   // adc_ads1252u.vhd(31[8:17])
    defparam i24_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut (.I0(adc_state[3]), .I1(n11), .I2(adc_state_c[0]), 
            .I3(n21123), .O(n18570));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 i16156_4_lut (.I0(n62), .I1(\adc_state[2] ), .I2(adc_state[3]), 
            .I3(adc_state_c[1]), .O(n11937));   // adc_ads1252u.vhd(31[8:17])
    defparam i16156_4_lut.LUT_INIT = 16'hc2ce;
    SB_LUT4 i40_3_lut_4_lut (.I0(\adc_state_3__N_1288[0] ), .I1(n15), .I2(adc_state_c[1]), 
            .I3(adc_state_c[0]), .O(n19_c));
    defparam i40_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_CARRY add_24_11 (.CI(n19808), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19809));
    SB_LUT4 i8033_3_lut_4_lut (.I0(\adc_state_3__N_1288[0] ), .I1(n15), 
            .I2(adc_state_c[1]), .I3(adc_state_c[0]), .O(n10462));
    defparam i8033_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19807), .O(avg_cnt_11__N_1332[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19807), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19808));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19806), .O(avg_cnt_11__N_1332[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n19806), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19807));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19805), .O(avg_cnt_11__N_1332[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19442_2_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n22086));   // adc_ads1252u.vhd(31[8:17])
    defparam i19442_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16163_4_lut (.I0(n11922), .I1(adc_state_c[1]), .I2(VDC_SCLK), 
            .I3(n22086), .O(n16082));   // adc_ads1252u.vhd(31[8:17])
    defparam i16163_4_lut.LUT_INIT = 16'h7250;
    SB_CARRY add_24_8 (.CI(n19805), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19806));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19804), .O(avg_cnt_11__N_1332[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19804), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19805));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19803), .O(avg_cnt_11__N_1332[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19803), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19804));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19802), .O(avg_cnt_11__N_1332[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19802), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19803));
    SB_DFFE adc_state_i1 (.Q(adc_state_c[1]), .C(VDC_CLK), .E(n20930), 
            .D(adc_state_3__N_1164[1]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(VDC_CLK), .E(n13303), .D(adc_state_3__N_1164[3]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13530), 
            .D(cmd_rdadcbuf_35__N_1212[34]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19801), .O(avg_cnt_11__N_1332[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19801), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19802));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19800), .O(avg_cnt_11__N_1332[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19800), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19801));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1332[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19800));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20174));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20176));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19798), .O(cmd_rdadcbuf_35__N_1296[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20178));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20180));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20182));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20184));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20186));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20188));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20190));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20192));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20194));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20196));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20198));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20200));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20202));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20204));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20206));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i16189_3_lut (.I0(\buf_adcdata_vac[23] ), .I1(buf_adcdata_vdc[23]), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n19));   // zim_main.vhd(247[9:17])
    defparam i16189_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20208));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20210));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20212));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20214));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19797), .O(cmd_rdadcbuf_35__N_1296[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19279_3_lut (.I0(n18583), .I1(\adc_state[2] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n21427));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i19279_3_lut.LUT_INIT = 16'h2121;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20216));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1296[34]), 
            .I1(n21427), .I2(adc_state[3]), .I3(adc_state_c[1]), .O(cmd_rdadcbuf_35__N_1212[34]));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20380));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20382));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20384));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20404));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_23_35 (.CI(n19797), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19798));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19796), .O(cmd_rdadcbuf_35__N_1296[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20406));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20408));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20410));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_36 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_ads1252u.vhd(80[8:24])
    defparam i1_2_lut_adj_36.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut (.I0(n11537), .I1(bit_cnt[4]), .I2(bit_cnt[0]), .I3(n6), 
            .O(n15));   // adc_ads1252u.vhd(80[8:24])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20412));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_23_34 (.CI(n19796), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19797));
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20414));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i15287_2_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i15287_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20416));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20418));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20420));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20422));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20424));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20426));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20428));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20430));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20432));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20434));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20436));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20438));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20440));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20442));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_37 (.I0(\adc_state_3__N_1288[0] ), .I1(n7), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i1_2_lut_adj_37.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20899));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[7]), .I2(avg_cnt[4]), 
            .I3(avg_cnt[3]), .O(n20));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n13351));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf200;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[0]), .I2(avg_cnt[9]), 
            .I3(avg_cnt[8]), .O(n19_adj_1451));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[6]), .I1(avg_cnt[2]), .I2(avg_cnt[11]), 
            .I3(avg_cnt[1]), .O(n21));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i9_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19_adj_1451), .I2(n20), .I3(GND_net), 
            .O(n18583));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[4]), .I2(n11537), .I3(bit_cnt[0]), 
            .O(n8));
    defparam i3_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i1_3_lut_4_lut_adj_38 (.I0(adc_state_c[0]), .I1(adc_state_c[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[3]), .O(n11918));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_3_lut_4_lut_adj_38.LUT_INIT = 16'hf200;
    SB_LUT4 i19281_3_lut (.I0(bit_cnt[3]), .I1(n8), .I2(adc_state[3]), 
            .I3(GND_net), .O(n21309));
    defparam i19281_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i18418_2_lut (.I0(\adc_state_3__N_1288[0] ), .I1(adc_state_c[1]), 
            .I2(GND_net), .I3(GND_net), .O(n21060));
    defparam i18418_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i33_4_lut (.I0(\adc_state_3__N_1288[0] ), .I1(adc_state_c[0]), 
            .I2(n21309), .I3(adc_state_c[1]), .O(n27));
    defparam i33_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 i1_4_lut_adj_39 (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(n27), 
            .I3(n21060), .O(n20930));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'hfafe;
    SB_LUT4 i16134_3_lut (.I0(n18583), .I1(adc_state_c[0]), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n18586));   // adc_ads1252u.vhd(31[8:17])
    defparam i16134_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i16136_4_lut (.I0(n22477), .I1(n18586), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1164[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16136_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19795), .O(cmd_rdadcbuf_35__N_1296[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19795), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19796));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19794), .O(cmd_rdadcbuf_35__N_1296[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19794), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19795));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19793), .O(cmd_rdadcbuf_35__N_1296[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19793), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19794));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19792), .O(cmd_rdadcbuf_35__N_1296[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n19792), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19793));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19791), .O(cmd_rdadcbuf_35__N_1296[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19791), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19792));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19790), .O(cmd_rdadcbuf_35__N_1296[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19790), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19791));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19789), .O(cmd_rdadcbuf_35__N_1296[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n19789), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19790));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19788), .O(cmd_rdadcbuf_35__N_1296[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19788), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19789));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19787), .O(cmd_rdadcbuf_35__N_1296[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19787), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19788));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19786), .O(cmd_rdadcbuf_35__N_1296[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19786), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19787));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19785), .O(cmd_rdadcbuf_35__N_1296[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19785), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19786));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19784), .O(cmd_rdadcbuf_35__N_1296[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19784), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19785));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19783), .O(cmd_rdadcbuf_35__N_1296[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19783), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19784));
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19782), .O(cmd_rdadcbuf_35__N_1296[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_20 (.CI(n19782), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19783));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19781), .O(cmd_rdadcbuf_35__N_1296[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19781), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19782));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19780), .O(cmd_rdadcbuf_35__N_1296[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19780), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19781));
    SB_LUT4 bit_cnt_3935_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19847), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19779), .O(cmd_rdadcbuf_35__N_1296[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3935_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19846), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19779), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19780));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19778), .O(cmd_rdadcbuf_35__N_1296[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n19778), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19779));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19777), .O(cmd_rdadcbuf_35__N_1296[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3935_add_4_8 (.CI(n19846), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19847));
    SB_LUT4 bit_cnt_3935_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19845), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19777), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19778));
    SB_CARRY bit_cnt_3935_add_4_7 (.CI(n19845), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19846));
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19776), .O(cmd_rdadcbuf_35__N_1296[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n19776), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19777));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19775), .O(cmd_rdadcbuf_35__N_1296[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19775), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19776));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19774), .O(cmd_rdadcbuf_35__N_1296[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3935_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19844), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19774), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19775));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19773), .O(cmd_rdadcbuf_35__N_1296[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3935_add_4_6 (.CI(n19844), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19845));
    SB_CARRY add_23_11 (.CI(n19773), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19774));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19772), .O(cmd_rdadcbuf_35__N_1296[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_10 (.CI(n19772), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19773));
    SB_LUT4 bit_cnt_3935_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19843), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19771), .O(cmd_rdadcbuf_35__N_1296[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19771), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19772));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19770), .O(cmd_rdadcbuf_35__N_1296[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3935_add_4_5 (.CI(n19843), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19844));
    SB_CARRY add_23_8 (.CI(n19770), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19771));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19769), .O(cmd_rdadcbuf_35__N_1296[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3935_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19842), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19769), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19770));
    SB_CARRY bit_cnt_3935_add_4_4 (.CI(n19842), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19843));
    SB_LUT4 bit_cnt_3935_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19841), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19768), .O(cmd_rdadcbuf_35__N_1296[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3935_add_4_3 (.CI(n19841), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19842));
    SB_LUT4 bit_cnt_3935_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3935_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19768), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19769));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19767), .O(cmd_rdadcbuf_35__N_1296[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3935_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19841));
    SB_CARRY add_23_5 (.CI(n19767), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19768));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19766), .O(cmd_rdadcbuf_35__N_1296[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19766), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19767));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19765), .O(cmd_rdadcbuf_35__N_1296[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19765), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19766));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1296[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n19765));
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[2] ), .I2(adc_state_c[1]), 
            .I3(adc_state[3]), .O(n13490));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdc80;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20248));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20474));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n16082));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i12244_2_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), 
            .I2(\adc_state[2] ), .I3(GND_net), .O(n7_adj_1452));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i12244_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i16147_3_lut (.I0(\adc_state_3__N_1288[0] ), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(GND_net), .O(n12_adj_1453));   // adc_ads1252u.vhd(31[8:17])
    defparam i16147_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i16152_3_lut (.I0(n12_adj_1453), .I1(n12), .I2(adc_state[3]), 
            .I3(GND_net), .O(n39_adj_1454));   // adc_ads1252u.vhd(31[8:17])
    defparam i16152_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i18449_2_lut (.I0(n15), .I1(adc_state_c[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21091));
    defparam i18449_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_40 (.I0(n21091), .I1(\adc_state[2] ), .I2(n21026), 
            .I3(n39_adj_1454), .O(n47));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_40.LUT_INIT = 16'hfdcc;
    SB_LUT4 i19249_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21354));
    defparam i19249_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i19094_4_lut (.I0(n21354), .I1(adc_state_c[0]), .I2(n20899), 
            .I3(bit_cnt[4]), .O(n21351));
    defparam i19094_4_lut.LUT_INIT = 16'hc8c0;
    SB_DFFESR bit_cnt_3935__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11937), 
            .D(n37[7]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11937), 
            .D(n37[6]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11937), 
            .D(n37[5]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11937), 
            .D(n37[4]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11937), 
            .D(n37[3]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11937), 
            .D(n37[2]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3935__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11937), 
            .D(n37[1]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[11]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[10]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[9]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[8]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[7]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[6]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[5]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[4]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[3]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[2]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[1]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[33]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[32]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[31]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[30]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[29]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[28]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[27]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[26]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[25]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[24]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[23]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[22]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[21]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[20]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[19]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[18]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[17]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[16]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[15]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[14]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[13]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[12]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[11]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[10]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[9]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[8]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[7]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[6]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[5]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[4]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[3]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[2]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[1]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13395), 
            .D(n6_adj_1455), .R(n20792));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n17), 
            .D(n7_adj_1452), .R(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[6]), .I2(bit_cnt[7]), 
            .I3(bit_cnt[5]), .O(n11537));   // adc_ads1252u.vhd(65[9:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_4_lut_adj_41 (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adc_state[3]), .O(adc_state_3__N_1164[3]));
    defparam i1_4_lut_4_lut_adj_41.LUT_INIT = 16'h1580;
    SB_LUT4 i1_4_lut_4_lut_adj_42 (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(n10462), .I3(n12), .O(n13303));
    defparam i1_4_lut_4_lut_adj_42.LUT_INIT = 16'hdcfe;
    SB_LUT4 i1_3_lut_4_lut_adj_43 (.I0(adc_state_c[0]), .I1(\adc_state[2] ), 
            .I2(adc_state_c[1]), .I3(adc_state[3]), .O(n13530));
    defparam i1_3_lut_4_lut_adj_43.LUT_INIT = 16'hdd80;
    SB_LUT4 i19432_4_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), 
            .I2(adc_state_c[0]), .I3(adc_state_c[1]), .O(n11922));
    defparam i19432_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 i19521_4_lut (.I0(adc_state[3]), .I1(\adc_state_3__N_1288[0] ), 
            .I2(n7), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i19521_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 i19491_4_lut (.I0(\adc_state[2] ), .I1(n19_c), .I2(n12), .I3(adc_state[3]), 
            .O(n17));
    defparam i19491_4_lut.LUT_INIT = 16'hafbb;
    SB_DFFESR bit_cnt_3935__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11937), 
            .D(n37[0]), .R(n18570));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13490), .D(avg_cnt_11__N_1332[0]), 
            .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_44 (.I0(bit_cnt[0]), .I1(n11537), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1456));
    defparam i1_2_lut_adj_44.LUT_INIT = 16'heeee;
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13490), 
            .D(cmd_rdadcbuf_35__N_1296[0]), .R(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(VDC_CLK), .E(n47), .D(adc_state_3__N_1164[0]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i4_4_lut_adj_45 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6_adj_1456), .O(n10798));
    defparam i4_4_lut_adj_45.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_adj_46 (.I0(adc_state[3]), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n20792));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_2_lut_adj_46.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_47 (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(adc_state_c[1]), 
            .I3(adc_state_c[0]), .O(n13395));
    defparam i1_4_lut_adj_47.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state_c[1]), .I3(n10798), .O(n6_adj_1455));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10798), .I1(adc_state_c[0]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[1]), .O(n22474));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 i1_4_lut_4_lut_adj_48 (.I0(adc_state_c[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1288[0] ), .O(adc_state_3__N_1164[0]));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i1_4_lut_4_lut_adj_48.LUT_INIT = 16'h1514;
    SB_LUT4 n22474_bdd_4_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[2] ), 
            .I2(n21351), .I3(n22474), .O(n22477));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam n22474_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i12839_2_lut (.I0(n13490), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15227));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12839_2_lut.LUT_INIT = 16'h8888;
    vdc_gen_clk genclk (.GND_net(GND_net), .VCC_net(VCC_net), .clk_16MHz(clk_16MHz), 
            .VDC_CLK(VDC_CLK));   // adc_ads1252u.vhd(43[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (GND_net, VCC_net, clk_16MHz, VDC_CLK);
    input GND_net;
    input VCC_net;
    input clk_16MHz;
    output VDC_CLK;
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(220[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(52[3:10])
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire n14945, n11927;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n19811, n2, div_state_1__N_1432;
    wire [1:0]div_state_1__N_1345;
    
    wire n28, n26, n21329, n21330, n6, n27, n21332;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1447, n26_adj_1448, n27_adj_1449, n21335;
    wire [16:0]t0on_15__N_1379;
    
    wire n19840, n19839, n19838, n19837, n19836, n19835, n19834, 
        n19833, n19832, n19831, n19830, n19829, n19828, n19827, 
        n19826;
    wire [16:0]t0off_15__N_1395;
    
    wire n19825, n19824, n19823, n19822, n19821, n19820, n19819, 
        n19818, n19817, n19816, n19815, n19814, n19813, n19812;
    
    SB_LUT4 i19464_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n14945));
    defparam i19464_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i19446_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11927));
    defparam i19446_2_lut.LUT_INIT = 16'h9999;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19811));
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1432));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i12243_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1345[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12243_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1432));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19482_2_lut_4_lut (.I0(n21329), .I1(n21330), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));
    defparam i19482_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1345[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19373_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21332));
    defparam i19373_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_32 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1447));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_32.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_33 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1448));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_33.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_34 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1449));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_LUT4 i19087_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21335));
    defparam i19087_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19085_4_lut (.I0(n21332), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21330));
    defparam i19085_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19293_4_lut (.I0(n21335), .I1(n27_adj_1449), .I2(n26_adj_1448), 
            .I3(n28_adj_1447), .O(n21329));
    defparam i19293_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19474_2_lut_4_lut (.I0(n21329), .I1(n21330), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));
    defparam i19474_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19840), .O(t0on_15__N_1379[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19839), .O(t0on_15__N_1379[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19839), .I0(t0on[14]), .I1(VCC_net), .CO(n19840));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19838), .O(t0on_15__N_1379[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19838), .I0(t0on[13]), .I1(VCC_net), .CO(n19839));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19837), .O(t0on_15__N_1379[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19837), .I0(t0on[12]), .I1(VCC_net), .CO(n19838));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19836), .O(t0on_15__N_1379[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19836), .I0(t0on[11]), .I1(VCC_net), .CO(n19837));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19835), .O(t0on_15__N_1379[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19835), .I0(t0on[10]), .I1(VCC_net), .CO(n19836));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19834), 
            .O(t0on_15__N_1379[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19834), .I0(t0on[9]), .I1(VCC_net), .CO(n19835));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19833), 
            .O(t0on_15__N_1379[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19833), .I0(t0on[8]), .I1(VCC_net), .CO(n19834));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19832), 
            .O(t0on_15__N_1379[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19832), .I0(t0on[7]), .I1(VCC_net), .CO(n19833));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19831), 
            .O(t0on_15__N_1379[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19831), .I0(t0on[6]), .I1(VCC_net), .CO(n19832));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19830), 
            .O(t0on_15__N_1379[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19830), .I0(t0on[5]), .I1(VCC_net), .CO(n19831));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19829), 
            .O(t0on_15__N_1379[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19829), .I0(t0on[4]), .I1(VCC_net), .CO(n19830));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19828), 
            .O(t0on_15__N_1379[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19828), .I0(t0on[3]), .I1(VCC_net), .CO(n19829));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19827), 
            .O(t0on_15__N_1379[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19827), .I0(t0on[2]), .I1(VCC_net), .CO(n19828));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19826), 
            .O(t0on_15__N_1379[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19826), .I0(t0on[1]), .I1(VCC_net), .CO(n19827));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1379[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19826));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19825), .O(t0off_15__N_1395[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19824), .O(t0off_15__N_1395[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19824), .I0(t0off[14]), .I1(VCC_net), .CO(n19825));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19823), .O(t0off_15__N_1395[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19823), .I0(t0off[13]), .I1(VCC_net), .CO(n19824));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19822), .O(t0off_15__N_1395[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19822), .I0(t0off[12]), .I1(VCC_net), .CO(n19823));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19821), .O(t0off_15__N_1395[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19821), .I0(t0off[11]), .I1(VCC_net), .CO(n19822));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19820), .O(t0off_15__N_1395[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19820), .I0(t0off[10]), .I1(VCC_net), .CO(n19821));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19819), .O(t0off_15__N_1395[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19819), .I0(t0off[9]), .I1(VCC_net), .CO(n19820));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19818), .O(t0off_15__N_1395[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19818), .I0(t0off[8]), .I1(VCC_net), .CO(n19819));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[15]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[14]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[13]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[12]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[11]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[10]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[9]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[8]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[7]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[6]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[5]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[4]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[3]), 
            .S(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[2]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[1]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[15]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[14]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[13]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[12]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[11]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[10]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[9]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[8]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[7]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[6]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[5]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[4]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[3]), .S(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[2]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[1]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19817), 
            .O(t0off_15__N_1395[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19817), .I0(t0off[7]), .I1(VCC_net), .CO(n19818));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19816), 
            .O(t0off_15__N_1395[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19816), .I0(t0off[6]), .I1(VCC_net), .CO(n19817));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19815), 
            .O(t0off_15__N_1395[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19815), .I0(t0off[5]), .I1(VCC_net), .CO(n19816));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19814), 
            .O(t0off_15__N_1395[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19814), .I0(t0off[4]), .I1(VCC_net), .CO(n19815));
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11927), .D(t0off_15__N_1395[0]), 
            .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[0]), .R(n14945));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19813), 
            .O(t0off_15__N_1395[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19813), .I0(t0off[3]), .I1(VCC_net), .CO(n19814));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19812), 
            .O(t0off_15__N_1395[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19812), .I0(t0off[2]), .I1(VCC_net), .CO(n19813));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19811), 
            .O(t0off_15__N_1395[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19811), .I0(t0off[1]), .I1(VCC_net), .CO(n19812));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1395[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (GND_net, adc_state, \adc_state[2] , n13209, RTD_CS, 
            clk_RTD, RTD_SCLK, buf_cfgRTD, n20060, VCC_net, adress, 
            n20062, n20064, n20066, n20068, n20070, n20292, read_buf, 
            n20296, n20300, n20304, n20308, n20312, n20318, n20322, 
            n20326, n20330, n20334, buf_readRTD, n13285, RTD_DRDY, 
            n20338, n20342, n20346, n20350, n20352, n20354, n20356, 
            n20358, n20362, n20364, n20366, n20368, n20370, n20372, 
            n20374, n20376, n20378, n1, n20470, n20472, n13075, 
            RTD_SDI, \adress[0] );
    input GND_net;
    output [3:0]adc_state;
    output \adc_state[2] ;
    output n13209;
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    input [7:0]buf_cfgRTD;
    input n20060;
    input VCC_net;
    output [7:0]adress;
    input n20062;
    input n20064;
    input n20066;
    input n20068;
    input n20070;
    input n20292;
    output [15:0]read_buf;
    input n20296;
    input n20300;
    input n20304;
    input n20308;
    input n20312;
    input n20318;
    input n20322;
    input n20326;
    input n20330;
    input n20334;
    output [15:0]buf_readRTD;
    output n13285;
    input RTD_DRDY;
    input n20338;
    input n20342;
    input n20346;
    input n20350;
    input n20352;
    input n20354;
    input n20356;
    input n20358;
    input n20362;
    input n20364;
    input n20366;
    input n20368;
    input n20370;
    input n20372;
    input n20374;
    input n20376;
    input n20378;
    output n1;
    input n20470;
    input n20472;
    output n13075;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(267[9:16])
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    wire [3:0]n21;
    wire [3:0]adc_state_c;   // adc_max31865.vhd(24[8:17])
    
    wire CS_N_1131, n11856, SCLK_N_1130, n8;
    wire [3:0]adc_state_3__N_1038;
    
    wire n11895;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n20974, n13117, n20250, n15745, n11887, n15742;
    wire [7:0]adress_7__N_1086;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n3;
    wire [3:0]adc_state_3__N_1114;
    
    wire mode, n21601, n15736, n20254, n15730, n15727, n21376, 
        n21375, n20454, n20456, n8047, n21569, n12, n20252, n18925, 
        n6, n21594, n8077, n7, n17847, n16961, n21379, n26, 
        n22643, n12_adj_1437, n10, n11, n9, n19, n20959, n16098, 
        n13;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7_adj_1438, n16987, n20276, n11936, n15326, n7_adj_1439, 
        n13134, n15167, n7_adj_1440, n7_adj_1441, n7_adj_1442, n7_adj_1443, 
        n7_adj_1444, n7_adj_1445, n3_adj_1446;
    
    SB_LUT4 i17216_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17216_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n13209));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc845;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11856), .D(CS_N_1131));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1130));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(clk_RTD), .E(n11895), 
            .D(adc_state_3__N_1038[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n11895), .D(adc_state_3__N_1038[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11895), 
            .D(adc_state_3__N_1038[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n11895), .D(adc_state_3__N_1038[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i11_4_lut (.I0(cfg_buf[3]), .I1(n20974), .I2(n13117), .I3(buf_cfgRTD[3]), 
            .O(n20250));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut (.I0(adc_state_c[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20974));   // adc_max31865.vhd(24[8:17])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n20060));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n20062));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n20064));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n20066));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n20068));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n20070));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15745));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n11887));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'heb04;
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15742));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20250));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_13 (.I0(adress_7__N_1086[7]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(adress_c[7]), .O(n3));
    defparam i1_4_lut_4_lut_adj_13.LUT_INIT = 16'hf707;
    SB_LUT4 i19338_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1114[1]), 
            .I2(adc_state_c[0]), .I3(mode), .O(n21601));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19338_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15736));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20254));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15730));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15727));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n20292));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20296));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20300));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19108_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1114[1]), 
            .I2(adc_state_c[0]), .I3(n21376), .O(n21375));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19108_3_lut_4_lut.LUT_INIT = 16'hff0d;
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n20304));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20308));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20312));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20318));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20322));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20454));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20326));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20330));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20334));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n13285), 
            .I3(\adc_state[2] ), .O(n20456));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19285_3_lut (.I0(RTD_DRDY), .I1(n8047), .I2(adc_state_c[0]), 
            .I3(GND_net), .O(n21569));   // adc_max31865.vhd(24[8:17])
    defparam i19285_3_lut.LUT_INIT = 16'hecec;
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20338));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20342));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20346));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut (.I0(mode), .I1(n21569), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n12));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_14 (.I0(n20974), .I1(n12), .I2(adress_7__N_1086[7]), 
            .I3(n8047), .O(n20252));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'hccec;
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20350));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20352));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20354));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20356));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20358));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20362));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20364));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20456));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20366));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20368));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20370));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20372));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20374));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20376));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20378));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n21601), .I1(adc_state[3]), 
            .I2(n18925), .I3(\adc_state[2] ), .O(adc_state_3__N_1038[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h03dd;
    SB_LUT4 i19327_4_lut (.I0(adc_state_3__N_1114[1]), .I1(n6), .I2(adc_state[3]), 
            .I3(mode), .O(n21594));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19327_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i19_4_lut (.I0(n21594), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(n8077), .O(adc_state_3__N_1038[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut (.I0(adc_state[1]), .I1(n18925), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut.LUT_INIT = 16'hc5ca;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7), .I1(n8047), .I2(adc_state[3]), 
            .I3(adc_state_c[0]), .O(adc_state_3__N_1038[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17847));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_15 (.I0(bit_cnt[3]), .I1(n17847), .I2(GND_net), 
            .I3(GND_net), .O(adc_state_3__N_1114[1]));   // adc_max31865.vhd(104[8:23])
    defparam i1_2_lut_adj_15.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), .I2(n8047), 
            .I3(n16961), .O(n11895));
    defparam i3_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19201_2_lut (.I0(bit_cnt[3]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21379));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19201_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19111_4_lut (.I0(adc_state[1]), .I1(mode), .I2(\adc_state[2] ), 
            .I3(adc_state_3__N_1114[1]), .O(n21376));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19111_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i45_4_lut (.I0(n21379), .I1(n8077), .I2(\adc_state[2] ), .I3(n17847), 
            .O(n26));   // adc_max31865.vhd(39[4] 147[13])
    defparam i45_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i18461_rep_56_2_lut (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(GND_net), .I3(GND_net), .O(n22643));
    defparam i18461_rep_56_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_16 (.I0(n22643), .I1(n21375), .I2(n26), .I3(adc_state[3]), 
            .O(adc_state_3__N_1038[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hf5dd;
    SB_LUT4 i1_2_lut_adj_17 (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_adj_17.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state_c[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(SCLK_N_1130));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12_adj_1437));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut_adj_18 (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut_adj_18.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_19 (.I0(cfg_buf[0]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut_adj_19.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11), .I2(n10), .I3(n12_adj_1437), 
            .O(adress_7__N_1086[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_20 (.I0(adress_7__N_1086[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16961));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_20.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_21 (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n8077));
    defparam i1_2_lut_adj_21.LUT_INIT = 16'heeee;
    SB_LUT4 i5618_2_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n8047));   // adc_max31865.vhd(39[4] 147[13])
    defparam i5618_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_22 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13209), 
            .I3(n1), .O(n20454));
    defparam i12_4_lut_adj_22.LUT_INIT = 16'hca0a;
    SB_LUT4 i34_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1086[7]), 
            .I2(adc_state[1]), .I3(RTD_DRDY), .O(n19));
    defparam i34_4_lut_4_lut.LUT_INIT = 16'hadaf;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1086[7]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n20959));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i22_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n8077), .I2(adc_state[3]), 
            .I3(n20959), .O(n13117));   // adc_max31865.vhd(38[3] 148[10])
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n20252));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16098));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20470));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i30_3_lut_4_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(GND_net), .O(n13));   // adc_max31865.vhd(39[4] 147[13])
    defparam i30_3_lut_4_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20472));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i35_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n8077), .I2(adc_state[3]), 
            .I3(n19), .O(n13075));   // adc_max31865.vhd(38[3] 148[10])
    defparam i35_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i13666_4_lut_4_lut (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16098));   // adc_max31865.vhd(24[8:17])
    defparam i13666_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[7]), 
            .I3(cfg_buf[7]), .O(n15727));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_24 (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15730));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_24.LUT_INIT = 16'hb380;
    SB_LUT4 i14542_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state_c[0]), .O(n7_adj_1438));   // adc_max31865.vhd(24[8:17])
    defparam i14542_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15353_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n16987));
    defparam i15353_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1_4_lut_4_lut_adj_25 (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15736));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_25.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_26 (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n15742));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_26.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_27 (.I0(n20974), .I1(n13117), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15745));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_27.LUT_INIT = 16'hb380;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(adc_state[3]), .O(n20276));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_DFFESR bit_cnt_3933__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11936), 
            .D(n21[3]), .R(n15326));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3933__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11936), 
            .D(n21[2]), .R(n15326));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3933__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11936), 
            .D(n21[1]), .R(n15326));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13134), .D(n7_adj_1439), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13134), .D(n7_adj_1440), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13134), .D(n7_adj_1441), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13134), .D(n7_adj_1442), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13134), .D(n7_adj_1443), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13134), .D(n7_adj_1444), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13134), .D(n7_adj_1445), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13075), .D(n3_adj_1446), 
            .R(n20276));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19519_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(n16961), .O(CS_N_1131));
    defparam i19519_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i19433_3_lut_3_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(GND_net), .O(n11856));
    defparam i19433_3_lut_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i19497_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n8));
    defparam i19497_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1086[7]), 
            .I1(adress[6]), .I2(adc_state[1]), .I3(adc_state_c[0]), .O(n3_adj_1446));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1445));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1444));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1443));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1442));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1441));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1440));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i2_3_lut_adj_28 (.I0(\adc_state[2] ), .I1(adc_state_c[0]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut_adj_28.LUT_INIT = 16'h4040;
    SB_LUT4 i12740_2_lut (.I0(n13134), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15167));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12740_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_4_lut (.I0(bit_cnt[3]), .I1(n17847), .I2(adc_state_c[0]), 
            .I3(adc_state[1]), .O(n18925));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_4_lut_4_lut_adj_29 (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n13285));
    defparam i1_4_lut_4_lut_adj_29.LUT_INIT = 16'ha880;
    SB_LUT4 i29_4_lut (.I0(n20959), .I1(n13), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n13134));
    defparam i29_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1439));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i17214_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17214_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_cnt_3933__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11936), 
            .D(n21[0]), .R(n15326));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i19524_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n11936));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19524_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11887), .D(n16987), 
            .R(n20276));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13134), .D(n7_adj_1438), 
            .R(n15167));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i11_4_lut_adj_30 (.I0(cfg_buf[5]), .I1(n20974), .I2(n13117), 
            .I3(buf_cfgRTD[5]), .O(n20254));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_LUT4 i17223_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17223_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13075), .D(n3), 
            .R(n20276));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_3_lut_4_lut_adj_31 (.I0(adc_state[1]), .I1(adc_state_c[0]), 
            .I2(adc_state[3]), .I3(\adc_state[2] ), .O(n15326));
    defparam i1_3_lut_4_lut_adj_31.LUT_INIT = 16'he412;
    SB_LUT4 i17230_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17230_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (dds_state, clk_32MHz, DDS_CS1, trig_dds1, n20538, 
            VCC_net, \tmp_buf[15] , n15140, GND_net, n15379, DDS_MOSI1, 
            n15375, DDS_SCK1, buf_dds1, bit_cnt, n16104);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input trig_dds1;
    input n20538;
    input VCC_net;
    output \tmp_buf[15] ;
    output n15140;
    input GND_net;
    input n15379;
    output DDS_MOSI1;
    input n15375;
    output DDS_SCK1;
    input [15:0]buf_dds1;
    output [3:0]bit_cnt;
    input n16104;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire [2:0]dds_state_2__N_876;
    
    wire n9, CS_N_929, n9_adj_1436;
    wire [15:0]tmp_buf_15__N_879;
    
    wire n12991;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21679;
    wire [3:0]bit_cnt_3__N_924;
    
    wire n8117;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_876[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1436), .D(CS_N_929));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19430_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds1), .O(n12991));
    defparam i19430_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20538));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12991), .D(tmp_buf_15__N_879[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12991), 
            .D(tmp_buf_15__N_879[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12709_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15140));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12709_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15379));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15375));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1436));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_929));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19533_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19533_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i19295_2_lut (.I0(bit_cnt_c[2]), .I1(bit_cnt_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21679));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19295_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12427_4_lut (.I0(dds_state[0]), .I1(n21679), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_876[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12427_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16104));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[3]), .R(n15140));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[2]), .R(n15140));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[1]), .R(n15140));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8117), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12404_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8117));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12404_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4029_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_924[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4029_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4036_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_924[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4036_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4043_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_924[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4043_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (drdy_sync2, clk_32MHz, drdy_prev, \adc_state[0] , 
            VAC_DRDY, n20524, VCC_net, cmd_rdadctmp, n20530, n20532, 
            acadc_dtrig_v, acadc_dtrig_i, iac_raw_buf_N_748, GND_net, 
            eis_adc_trig, DTRIG_N_869, drdy_falling, \adc_state[1] , 
            buf_adcdata_vac, n15378, n20508, n20506, VAC_SCLK, n20766, 
            n20764, n20600, n12, VAC_CS, n20762, n20760, n20758, 
            n20756, n20754, n20750, n20748, n20746, n20744, n20742, 
            n20736, n20734, n20732, n20724, n20722, n20694, n20696, 
            n20704, n20706, n20708, n20710, n20712, n20714, n20716, 
            n20718, n20720, n12892);
    output drdy_sync2;
    input clk_32MHz;
    output drdy_prev;
    output \adc_state[0] ;
    input VAC_DRDY;
    input n20524;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n20530;
    input n20532;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_748;
    input GND_net;
    input eis_adc_trig;
    output DTRIG_N_869;
    output drdy_falling;
    output \adc_state[1] ;
    output [23:0]buf_adcdata_vac;
    input n15378;
    input n20508;
    input n20506;
    output VAC_SCLK;
    input n20766;
    input n20764;
    input n20600;
    input n12;
    output VAC_CS;
    input n20762;
    input n20760;
    input n20758;
    input n20756;
    input n20754;
    input n20750;
    input n20748;
    input n20746;
    input n20744;
    input n20742;
    input n20736;
    input n20734;
    input n20732;
    input n20724;
    input n20722;
    input n20694;
    input n20696;
    input n20704;
    input n20706;
    input n20708;
    input n20710;
    input n20712;
    input n20714;
    input n20716;
    input n20718;
    input n20720;
    output n12892;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire drdy_sync1;
    wire [2:0]adc_state_2__N_774;
    
    wire n21053, n21052, n12_c;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n21128, n21138, n21384, n15497, n15496, n15495, n15494, 
        n15493, n15492, n15491, n15490, n15489, n15488, n15487, 
        n15486, n15485, n15484, n15483, n15482, n15481, n15480, 
        n15479, n15478, n15477, n15476, n15475, n15372;
    wire [7:0]n71;
    
    wire n19764, n19763, n19762, n19761, n19760, n19759, n19758, 
        n20956, n12809, n15095, n17;
    
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21053), 
            .D(adc_state_2__N_774[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(VAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20524));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20530));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20532));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_748));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_869), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21052));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_10 (.I0(\adc_state[1] ), .I1(n21052), .I2(GND_net), 
            .I3(GND_net), .O(n21053));
    defparam i1_2_lut_adj_10.LUT_INIT = 16'hdddd;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_774[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_869), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_774[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i18485_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21128));
    defparam i18485_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18495_4_lut (.I0(bit_cnt[7]), .I1(n21128), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21138));
    defparam i18495_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19391_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21138), .O(n21384));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19391_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21384), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_869), .I3(\adc_state[1] ), .O(adc_state_2__N_774[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15497));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15496));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15495));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15494));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15493));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15492));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15491));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15490));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15489));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15488));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15487));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15486));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15485));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15484));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15483));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15482));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15481));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15480));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15479));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15478));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15477));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15476));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15475));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15378));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20508));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15372));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20506));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n20766));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n20764));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20600));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .D(n20762));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19764), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19763), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19763), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19764));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19762), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19762), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19763));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19761), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_6 (.CI(n19761), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19762));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19760), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19760), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19761));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19759), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19759), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19760));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19758), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .D(n20760));   // adc_ads127.vhd(45[3] 100[10])
    SB_CARRY add_22_3 (.CI(n19758), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19759));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19758));
    SB_DFF cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .D(n20758));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .D(n20756));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20754));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13065_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15497));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13065_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13058_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15490));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13058_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13049_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15481));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13049_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20750));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20748));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13061_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15493));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13061_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13046_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15478));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13046_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13055_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15487));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13055_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13052_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15484));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13052_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13064_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15496));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13064_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13043_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15475));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13043_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13057_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15489));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13057_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13050_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15482));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13050_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13062_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15494));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13062_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13045_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15477));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13045_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13056_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15488));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13056_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13051_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15483));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13051_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13063_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15495));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13063_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20746));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13044_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15476));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13044_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20744));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13059_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15491));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13059_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20742));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20736));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20734));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13048_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15480));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13048_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20732));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13060_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15492));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13060_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20724));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13047_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15479));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13047_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13054_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15486));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13054_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13053_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15485));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13053_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12940_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20956), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15372));   // adc_ads127.vhd(55[4] 99[13])
    defparam i12940_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20722));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20694));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20696));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20704));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20706));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20708));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20710));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20712));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20714));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20716));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20718));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20720));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12809), .D(n71[7]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12809), .D(n71[6]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12809), .D(n71[5]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12809), .D(n71[4]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12809), .D(n71[3]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12809), .D(n71[2]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12809), .D(n71[1]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i12668_2_lut (.I0(n12809), .I1(DTRIG_N_869), .I2(GND_net), 
            .I3(GND_net), .O(n15095));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12668_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_11 (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_869), 
            .I3(\adc_state[1] ), .O(n12809));
    defparam i1_4_lut_adj_11.LUT_INIT = 16'h0450;
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_869), 
            .I3(\adc_state[0] ), .O(n12892));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_869), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_774[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_869), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19530_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19530_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15324_3_lut (.I0(DTRIG_N_869), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_774[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15324_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12809), .D(n71[0]), 
            .R(n15095));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut_adj_12 (.I0(DTRIG_N_869), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n20956));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_2_lut_adj_12.LUT_INIT = 16'h2222;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[1] , \adc_state[0] , DTRIG_N_869, GND_net, 
            drdy_sync2, clk_32MHz, drdy_prev, IAC_DRDY, n20951, eis_adc_trig, 
            drdy_falling, buf_adcdata_iac, n15386, n20504, acadc_dtrig_i, 
            n20502, IAC_SCLK, n20598, VCC_net, cmd_rdadctmp, n12, 
            IAC_CS, n20630, n20632, n20634, n20636, n20638, n20640, 
            n20642, n20644, n20646, n20648, n20650, n20652, n20654, 
            n20658, n20660, n20662, n20664, n20666, n20668, n20670, 
            n20672, n20674, n20676, n20678, n20680, n20682, n20684, 
            n20686, n20688, n20690, n20692, n12796);
    output \adc_state[1] ;
    output \adc_state[0] ;
    output DTRIG_N_869;
    input GND_net;
    output drdy_sync2;
    input clk_32MHz;
    output drdy_prev;
    input IAC_DRDY;
    output n20951;
    input eis_adc_trig;
    output drdy_falling;
    output [23:0]buf_adcdata_iac;
    input n15386;
    input n20504;
    output acadc_dtrig_i;
    input n20502;
    output IAC_SCLK;
    input n20598;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n12;
    output IAC_CS;
    input n20630;
    input n20632;
    input n20634;
    input n20636;
    input n20638;
    input n20640;
    input n20642;
    input n20644;
    input n20646;
    input n20648;
    input n20650;
    input n20652;
    input n20654;
    input n20658;
    input n20660;
    input n20662;
    input n20664;
    input n20666;
    input n20668;
    input n20670;
    input n20672;
    input n20674;
    input n20676;
    input n20678;
    input n20680;
    input n20682;
    input n20684;
    input n20686;
    input n20688;
    input n20690;
    input n20692;
    output n12796;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire [2:0]adc_state_2__N_774;
    
    wire drdy_sync1, n21055, n12_c, n21054, n15474, n15473, n15472, 
        n15471, n15470, n15469, n15468, n15467, n15466, n15465, 
        n15464, n15463, n15462, n15461, n15460, n15459, n15458, 
        n15457, n15456, n15455, n15454, n15453, n15452;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n16, n21371, n21370, n15369;
    wire [7:0]n71;
    
    wire n19757, n19756, n19755, n19754, n19753, n19752, n19751, 
        n6, n12709, n15057, n17;
    
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut (.I0(\adc_state[1] ), 
            .I1(\adc_state[0] ), .I2(DTRIG_N_869), .I3(GND_net), .O(adc_state_2__N_774[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut.LUT_INIT = 16'h4a4a;
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21055), 
            .D(adc_state_2__N_774[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(IAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_774[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_869), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_774[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_869), .I2(GND_net), 
            .I3(GND_net), .O(n20951));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_869), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21054));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_8 (.I0(\adc_state[1] ), .I1(n21054), .I2(GND_net), 
            .I3(GND_net), .O(n21055));
    defparam i1_2_lut_adj_8.LUT_INIT = 16'hdddd;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15474));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15473));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15472));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15471));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15470));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15469));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15468));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15467));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15466));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15465));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15464));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15463));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15462));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15461));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15460));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15459));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15458));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15457));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15456));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15455));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15454));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15453));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15452));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15386));   // adc_ads127.vhd(35[3] 40[10])
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i19321_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n21371));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19321_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i19417_4_lut (.I0(n21371), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n21370));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19417_4_lut.LUT_INIT = 16'h0020;
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20504));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21370), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_869), .I3(\adc_state[1] ), .O(adc_state_2__N_774[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15369));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20502));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20598));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19757), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19756), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19756), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19757));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19755), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19755), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19756));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19754), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_6 (.CI(n19754), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19755));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19753), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19753), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19754));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19752), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19752), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19753));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19751), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_3 (.CI(n19751), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19752));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19751));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20630));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20632));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20634));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20636));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20638));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20640));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20642));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20644));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20646));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20648));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20650));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20652));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20654));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20658));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20660));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20662));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20664));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20666));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20668));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20670));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20672));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20674));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20676));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20678));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20680));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20682));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20684));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20686));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20688));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13042_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15474));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13042_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20690));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20692));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13035_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15467));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13035_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13026_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15458));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13026_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13038_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15470));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13038_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13023_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15455));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13023_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13032_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15464));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13032_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12709), .D(n71[7]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13029_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15461));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13029_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13041_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15473));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13041_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13020_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15452));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13020_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13034_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15466));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13034_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13027_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15459));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13027_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13039_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15471));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13039_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12630_2_lut (.I0(n12709), .I1(DTRIG_N_869), .I2(GND_net), 
            .I3(GND_net), .O(n15057));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12630_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12709), .D(n71[6]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12709), .D(n71[5]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12709), .D(n71[4]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12709), .D(n71[3]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12709), .D(n71[2]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12709), .D(n71[1]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_4_lut_adj_9 (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_869), 
            .I3(\adc_state[1] ), .O(n12709));
    defparam i1_4_lut_adj_9.LUT_INIT = 16'h0450;
    SB_LUT4 i13022_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15454));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13022_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13033_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15465));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13033_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13028_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15460));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13028_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13040_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15472));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13040_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_869), 
            .I3(\adc_state[0] ), .O(n12796));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_LUT4 i13021_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15453));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13021_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13036_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15468));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13036_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i15325_2_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15325_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_869), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i13025_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15457));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13025_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13037_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15469));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13037_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13024_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15456));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13024_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13031_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15463));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13031_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13030_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15462));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13030_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12937_3_lut_4_lut (.I0(DTRIG_N_869), .I1(n6), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15369));   // adc_ads127.vhd(55[4] 99[13])
    defparam i12937_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i19532_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19532_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15327_3_lut (.I0(DTRIG_N_869), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_774[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15327_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12709), .D(n71[0]), 
            .R(n15057));   // adc_ads127.vhd(45[3] 100[10])
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_694);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_694;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(220[9:18])
    wire clk_16MHz_N_694 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=903, LSE_RLINE=903 */ ;   // zim_main.vhd(903[13:20])
    defparam zim_pll_inst.FEEDBACK_PATH = "SIMPLE";
    defparam zim_pll_inst.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam zim_pll_inst.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam zim_pll_inst.SHIFTREG_DIV_MODE = 00;
    defparam zim_pll_inst.FDA_FEEDBACK = 0000;
    defparam zim_pll_inst.FDA_RELATIVE = 0000;
    defparam zim_pll_inst.PLLOUT_SELECT_PORTA = "GENCLK";
    defparam zim_pll_inst.PLLOUT_SELECT_PORTB = "GENCLK_HALF";
    defparam zim_pll_inst.DIVR = 0000;
    defparam zim_pll_inst.DIVF = 0011111;
    defparam zim_pll_inst.DIVQ = 101;
    defparam zim_pll_inst.FILTER_RANGE = 011;
    defparam zim_pll_inst.ENABLE_ICEGATE_PORTA = '0';
    defparam zim_pll_inst.ENABLE_ICEGATE_PORTB = '0';
    defparam zim_pll_inst.TEST_MODE = '0';
    defparam zim_pll_inst.EXTERNAL_DIVIDE_FACTOR = 1;
    SB_LUT4 i19915_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_694));   // zim_main.vhd(903[13:20])
    defparam i19915_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (trig_dds0, dds_state, GND_net, bit_cnt, clk_32MHz, 
            DDS_CS, n20536, VCC_net, buf_dds0, \tmp_buf[15] , n15135, 
            n15384, DDS_MOSI, n15374, DDS_SCK, n16108);
    input trig_dds0;
    output [2:0]dds_state;
    input GND_net;
    output [3:0]bit_cnt;
    input clk_32MHz;
    output DDS_CS;
    input n20536;
    input VCC_net;
    input [15:0]buf_dds0;
    output \tmp_buf[15] ;
    output n15135;
    input n15384;
    output DDS_MOSI;
    input n15374;
    output DDS_SCK;
    input n16108;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire n9, CS_N_929, n9_adj_1433;
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21681, n12905;
    wire [2:0]dds_state_2__N_876;
    wire [15:0]tmp_buf_15__N_879;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_3__N_924;
    
    wire n8155;
    
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_929));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19528_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9_adj_1433));
    defparam i19528_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[1]), .I2(dds_state[0]), 
            .I3(bit_cnt_c[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19065_2_lut (.I0(bit_cnt_c[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21681));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19065_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19431_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds0), .O(n12905));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19431_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 i12425_4_lut (.I0(dds_state[0]), .I1(n21681), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_876[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12425_4_lut.LUT_INIT = 16'hc505;
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9_adj_1433), 
            .D(dds_state_2__N_876[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9), .D(CS_N_929));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20536));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12905), .D(tmp_buf_15__N_879[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12905), 
            .D(tmp_buf_15__N_879[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12704_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15135));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12704_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15384));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15374));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16108));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[3]), .R(n15135));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[2]), .R(n15135));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_924[1]), .R(n15135));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9_adj_1433), 
            .D(n8155), .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12403_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8155));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12403_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4000_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_924[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4000_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_879[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4007_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_924[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4007_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4014_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_924[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4014_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
