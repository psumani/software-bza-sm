// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Jun 01 16:30:58 2026
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
    
    wire START_SYNC_N_283, synccnt_7__N_292, n13352, n19746, n21212, 
        clk_RTD_N_728, n19700, wdtick_flag_N_329, n28, n15051, n11, 
        dds0_mclk_N_721, n20343, iac_raw_buf_N_749, iac_raw_buf_N_747, 
        n400, n401, n402, n403, n404, n405, n406, n407, n408, 
        n411, n412, n413, n414, n415, n416, n417, n418, n419, 
        n420, n421, n422, n423, n424, n425, n426, n5972, n461, 
        n462, n463, n464, n465, n466, n467, n468, n469, n470, 
        n471, n472, n473, n474, n475, n476, n21322, n18696, 
        n18697, n20533, n20537, n20539, eis_end_N_737;
    wire [2:0]eis_state_2__N_169;
    
    wire n21661, cs_mask_cnt_1__N_397, n20339, cs_falling_pend_N_715, 
        THERMOSTAT_N_472;
    wire [3:0]comm_state_3__N_441;
    
    wire n21659, n12, n20297, n30, n21159, n26, n19, n16, n21321;
    wire [2:0]comm_index_2__N_449;
    
    wire n21651, n18699, n7;
    wire [3:0]comm_state_3__N_418;
    
    wire n18714;
    wire [3:0]comm_state_3__N_11;
    
    wire n20997, n20063, n20065, n8, n20067, n20069, n20071, n20025, 
        n7_adj_1458;
    wire [8:0]data_index_8__N_213;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n20599, n22073, n20335, n42, n20919, n21644, n20331, 
        n20327, n19745, n19744;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, drdy_falling, n19712, n21639, n19743, 
        DTRIG_N_870, n20353, n20631, n20363;
    wire [2:0]adc_state_adj_1718;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1719;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1493, drdy_prev_adj_1494, drdy_falling_adj_1495, 
        n14656, DTRIG_N_870_adj_1496, n20355, n20357, n20359, n13286, 
        n19711, n19699, n15030, n26_adj_1497;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1740;   // dds_ad9837.vhd(25[9:16])
    
    wire n17, n20942;
    wire [2:0]dds_state_adj_1742;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1743;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1744;   // dds_ad9837.vhd(25[9:16])
    
    wire n20365, sclk_sync1, sclk_sync2, n20323, n20293, n20367, 
        n86, n15, n5, n20369, n6232;
    wire [3:0]adc_state_adj_1761;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n17_adj_1504, n19695, n6200, n20371, n20373, n20375, n20377, 
        n20379, n20381, n20107, n20177, n20179, n20181, n20183, 
        n20035, n20185, n20187, n20189, n20057, n20191;
    wire [3:0]adc_state_adj_1764;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1765;   // adc_ads1252u.vhd(32[8:20])
    
    wire n20301;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n12486, n19742, n20193, n20195, n20197, n20199, n20201, 
        n20203, n20205, n20207, n20209, n20211, n20213, n21317, 
        n20215, n20217, n20383, n20385, n20407, n20409, n20411, 
        n20413, n20415, n20417, n20419, n7_adj_1530, n4, n10, 
        n12_adj_1531, n21283, n20421, n20423, n20425, n20427, n20429, 
        n80, n17_adj_1532, n21198, n21431, n13, n20319, n23, n6650, 
        n21, n20, n20431, n15_adj_1533, n17_adj_1534, n20433, n19741, 
        n30_adj_1535, n20435, n20437, n20439, n18735, n45, n44, 
        n43, n42_adj_1536, n41, n40, n39, n38, n20945, n10_adj_1537, 
        n20531, n19710, n30_adj_1538, n20_adj_1539, n21210, n26_adj_1540, 
        n20_adj_1541, n23_adj_1542, n19_adj_1543, n16_adj_1544, n19_adj_1545, 
        n13210, n20313, n20952, n20525, n12461, n17_adj_1546, n30_adj_1547, 
        n16_adj_1548, n15016, n13_adj_1549, n21315, n45_adj_1550, 
        n44_adj_1551, n43_adj_1552, n42_adj_1553, n41_adj_1554, n40_adj_1555, 
        n39_adj_1556, n38_adj_1557, n16_adj_1558, n23_adj_1559, n17_adj_1560, 
        n19_adj_1561, n20_adj_1562, n30_adj_1563, n17882, n15_adj_1564, 
        n14, n21012, n30_adj_1565, n145, n144, n143, n142, n7_adj_1566, 
        n11_adj_1567, n15141, n141, n140, n139, n138, n137, n136, 
        n135, n134, n133, n132, n131, n130, n129, n128, n21200, 
        n45_adj_1568, n127, n126, n125, n124, n123, n122, n121, 
        n120, n119, n118, n19709, n20027, n21100, n19_adj_1569, 
        n20_adj_1570, n23_adj_1571, n20239, n19694, n19708, n19740, 
        n20091, n26_adj_1572, n21189, n20601, n16_adj_1573, n16109, 
        n22, n16105, n30_adj_1574, n19_adj_1575, n19739, n19738, 
        n21041, n19737, n20473, n5992, n5994, n5995, n17_adj_1576, 
        n6006, n20309, n1, n2, n4_adj_1577, n30_adj_1578, n20441, 
        n20475, n30_adj_1579, n6975, n13822, n13826, n13830, n13834, 
        n13838, n13842, n7_adj_1580, n8_adj_1581, n14_adj_1582, n19736, 
        n20443, n84, n19735, n19707, n11_adj_1583, n21197, n19734, 
        n13920, n15499, n13924, n15452, n15451, n15450, n15449, 
        n15448, n15447, n15446, n21314, n24, n22_adj_1584, n21312, 
        n21290, n14226, n21143, n22550, n22547, n22544, n22541, 
        n22538, n22535, n22532, n12420, n22529, n22526, n22523, 
        n22520, n22517, n22511, n22505, n15445, n15444, n15443, 
        n15442, n15441, n15440, n15439, n15438, n15437, n15436, 
        n15435, n15434, n15433, n15432, n15431, n15430, n15429, 
        n15428, n15427, n15426, n15425, n15424, n15423, n15422, 
        n15421, n15420, n15419, n15418, n15417, n15416, n15415, 
        n22502, n23_adj_1585, n15414, n15413, n15412, n15411, n15410, 
        n15409, n15408, n15407, n15406, n15405, n15404, n15403, 
        n15402, n15401, n15400, n15399, n15398, n15397, n15396, 
        n15395, n15394, n15393, n15392, n15391, n15390, n15389, 
        n15388, n15387, n15385, n15384, n14_adj_1586, n14_adj_1587, 
        n14_adj_1588, n14_adj_1589, n14_adj_1590, n14_adj_1591, n14_adj_1592, 
        n20982, n19706, n20503, n22_adj_1593, n20305, n22499, n22496, 
        n19295, n17083, n19733, n7_adj_1594, n8_adj_1595, n7_adj_1596, 
        n8_adj_1597, n22493, n7_adj_1598, n8_adj_1599, n7_adj_1600, 
        n8_adj_1601, n7_adj_1602, n8_adj_1603, n7_adj_1604, n8_adj_1605, 
        n22487, n7_adj_1606, n8_adj_1607, n22484, n14230, n14234, 
        n14238, n14242, n17506, n14246, n14250, n17507, n14254, 
        n14258, n14262, n14266, n17509, n14270, n14274, n14278, 
        n14282, n22481, n14286, n14290, n14294, n11_adj_1608, n14298, 
        n4_adj_1609, n14302, n14306, n14310, n14314, n14318, n14322, 
        n14326, n14330, n14334, n14338, n14342, n14346, n14350, 
        n15383, n14354, n14358, n14362, n14366, n14370, n20909, 
        n14374, n14378, n14382, n14_adj_1610, n14_adj_1611, n14_adj_1612, 
        n15382, n14_adj_1613, n14_adj_1614, n14781, n21146, n20927, 
        n22472, n19892, n6, n7_adj_1615, n22469, n14454, n14_adj_1616, 
        n24_adj_1617, n19732, n14_adj_1618, n14_adj_1619, n19731, 
        n15381, n19705, n4_adj_1620, n1_adj_1621, n2_adj_1622, n4_adj_1623, 
        n22463, n22460, n1_adj_1624, n2_adj_1625, n4_adj_1626, n21192, 
        n4_adj_1627, n22457, n4_adj_1628, n22454, n4_adj_1629, n4_adj_1630, 
        n22451, n21_adj_1631, n22448, n19890, n19889, n15380, n19_adj_1632, 
        n1_adj_1633, n19316, n18, n41_adj_1634, n20926, n34, n23_adj_1635, 
        n21311, n15379, n19888, n21396, n21193, n14948, n15009, 
        n21190, n22445, n22442, n19887, n21309, n20029, n12560, 
        n12558, n17514, n16066, n10519, n22439, n21188, n19730, 
        n16061, n22436, n19704, n20043, n19886, n19729, n20045, 
        n21284, n12378, n19885, n20047, n19884, n19883, n19728, 
        n19882, n20049, n19881, n19880, n22433, n20051, n21281, 
        n19727, n16894, n21391, n22430, n19879, n20053, n22427, 
        n22424, n21145, n54, n21389, n15377, n17516, n20087, n12157, 
        n20131, n19878, n16037, n20743, n20911, n20059, n20061, 
        n19877, n22421, n22418, n19726, n19876, n19875, n30_adj_1636, 
        n48, n20263, n20265, n15023, n22415, n22412, n20924, n21542, 
        n20267, n13076, n12518, n20269, n44_adj_1637, n22409, n20271, 
        n21383, n20984, n46, n22406, n20273, n20489, n20175, n20093, 
        n15376, n20095, n22403, n1_adj_1638, n15136, n22400, n20097, 
        n22397, n20733, n20099, n22394, n20705, n20089, n22391, 
        n22388, n20633, n22385, n21305, n20635, n20637, n20639, 
        n22382, n15002, n21296, n19874, n20641, n19873, n14_adj_1639, 
        n19872, n20643, n22379, n19871, n19870, n12893, n22376, 
        n19869, n19868, n12336, n19725, n26_adj_1640, n22373, n20645, 
        n19703, n19724, n22370, n12_adj_1641, n19867, n19723, n49, 
        n19866, n19865, n19864, n19863, n19722, n47, n19862, n22367, 
        n19861, n21_adj_1642, n19860, n22364, n20_adj_1643, n15375, 
        n19721, n9454, n11919, n17534, n12462, n22361, n19859, 
        n19858, n19857, n22358, n9, n14958, n22355, n20647, n22352, 
        n18_adj_1644, n19856, n19855, n20649, n19854, n17_adj_1645, 
        n22349, n22346, n20651, n19692, n19720, n9300, n19853, 
        n19852, n22343, n19851, n20653, n22340, n11933, n9_adj_1646, 
        n22337, n22334, n20655, n30_adj_1647, n22331, n20659, n19850, 
        n19849, n20661, n21521, n21304, n21520, n20663, n15_adj_1648, 
        n19719, n20665, n20075, n20667, n22328, n19718, n12797, 
        n20669, n22325, n20671, n22322, n29, n21157, n21517, n21516, 
        n59, n12144, n12161, n22319, n27, n20673, n22316, n21515, 
        n21514, n20675, n22313, n20677, n21511, n17015, n12203, 
        n20679, n22310, n20681, n19701, n21182, n22307, n20683, 
        n22304, n16888, n20471, n20685, n21507, n22301, n19_adj_1649, 
        n22_adj_1650, n30_adj_1651, n20687, n20689, n14990, n12102, 
        n22298, n20691, n21503, n12095, n22295, n22292, n20693, 
        n19_adj_1652, n22_adj_1653, n30_adj_1654, n22289, n22286, 
        n20929, n20695, n22283, n20697, n20261, n12072, n22280, 
        n19_adj_1655, n22_adj_1656, n20707, n30_adj_1657, n21045, 
        n20709, n20711, n11946, n16882, n20713, n19_adj_1658, n22_adj_1659, 
        n12_adj_1660, n30_adj_1661, n21039, n22277, n12693, n20715, 
        n20041, n20351, n15_adj_1662, n20717, n19_adj_1663, n22_adj_1664, 
        n30_adj_1665, n20719, n20509, n20507, n21488, n20721, n20505, 
        n15368, n15367, n20723, n20249, n15366, n19_adj_1666, n22_adj_1667, 
        n20725, n30_adj_1668, n19702, n12_adj_1669, n50, n17606, 
        n11_adj_1670, n15365, n20955, n12667, n11_adj_1671, n23_adj_1672, 
        n19_adj_1673, n15_adj_1674, n22_adj_1675, n30_adj_1676, n15037, 
        n12000, n20735, n21070, n21179, n16_adj_1677, n19_adj_1678, 
        n21127, n26_adj_1679, n30_adj_1680, n21295, n20_adj_1681, 
        n21280, n19698, n19693, n19696, n19717, n21_adj_1682, n12637, 
        n15364, n19697, n11846, n19716, n19691, n16_adj_1683, n19_adj_1684, 
        n20451, n26_adj_1685, n30_adj_1686, n4_adj_1687, n20737, n20755, 
        n16881, n19715, n21177, n12623, n16_adj_1688, n19_adj_1689, 
        n26_adj_1690, n19714, n11793, n19751, n20745, n19750, n21300, 
        n12609, n20968, n16_adj_1691, n19_adj_1692, n26_adj_1693, 
        n30_adj_1694, n20747, n21156, n19749, n19748, n21170, n21169, 
        n15363, n20749, n15362, n11955, n16_adj_1695, n19_adj_1696, 
        n6_adj_1697, n26_adj_1698, n21326, n21160, n21325, n21289, 
        n41_adj_1699, n20751, n1_adj_1700, n19713, n16_adj_1701, n19_adj_1702, 
        n26_adj_1703, n30_adj_1704, n20757, n20347, n15361, n15360, 
        n10951, n20759, n12059, n12092, n20761, n16_adj_1705, n19_adj_1706, 
        n26_adj_1707, n30_adj_1708, n10784, n20405, n19747, n20763, 
        n22072, n12200, n19946, n16_adj_1709, n17_adj_1710, n19_adj_1711, 
        n20_adj_1712, n23_adj_1713, n26_adj_1714, n30_adj_1715, n20765, 
        n10790, n12273, n15344, n20767, n2_adj_1716;
    
    assign VAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(46[3:11])
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(62[3:10])
    assign IAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(65[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(85[3:13])
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), .I2(n12797), 
            .I3(adc_state[0]), .O(n20677));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFR wdtick_flag_328 (.Q(wdtick_flag), .C(clk_16MHz), .D(wdtick_flag_N_329), 
            .R(flagcntwd));   // zim_main.vhd(429[3] 440[10])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11793), 
            .D(eis_state_2__N_169[0]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_DFFN dds0_mclk_333 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_721));   // zim_main.vhd(468[3] 474[10])
    SB_LUT4 wdtick_cnt_3930_add_4_29_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[27]), .I3(n19889), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR reset_int_341 (.Q(reset_int), .C(clk_32MHz), .D(n6650), .R(cs_mask_cnt_1__N_397));   // zim_main.vhd(584[3] 590[10])
    SB_LUT4 wdtick_cnt_3930_add_4_28_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[26]), .I3(n19888), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(n12560), .I1(comm_data_vld), .I2(comm_state[0]), 
            .I3(comm_state_3__N_441[1]), .O(n20997));
    defparam i2_4_lut.LUT_INIT = 16'hbfaf;
    SB_LUT4 i3_4_lut (.I0(comm_state[0]), .I1(n18696), .I2(comm_state[3]), 
            .I3(comm_cmd[2]), .O(n20924));   // zim_main.vhd(247[9:17])
    defparam i3_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n18697), .I2(n6975), 
            .I3(comm_state[2]), .O(n22433));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18696), .I3(comm_cmd[2]), .O(n18699));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20675));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20673));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3930_add_4_28 (.CI(n19888), .I0(ICE_GPMO_1), .I1(wdtick_cnt[26]), 
            .CO(n19889));
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n18697), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n17_adj_1532));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF cs_sync1_342 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i3_4_lut_adj_53 (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(n20924), 
            .I3(n9300), .O(n20926));
    defparam i3_4_lut_adj_53.LUT_INIT = 16'h0010;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_DFF cs_sync2_343 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zim_main.vhd(595[3] 900[10])
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[23:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20671));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_DFF cs_prev_344 (.Q(comm_state_3__N_441[1]), .C(clk_32MHz), .D(cs_sync2));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i18485_2_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21127));
    defparam i18485_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n19946));
    defparam i1_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i2_4_lut_adj_55 (.I0(n5972), .I1(n20997), .I2(n4_adj_1609), 
            .I3(n21041), .O(n20927));
    defparam i2_4_lut_adj_55.LUT_INIT = 16'hc800;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19766 (.I0(comm_cmd[1]), .I1(n19_adj_1569), 
            .I2(n20_adj_1570), .I3(comm_cmd[2]), .O(n22427));
    defparam comm_cmd_1__bdd_4_lut_19766.LUT_INIT = 16'he4aa;
    SB_LUT4 i12225_2_lut (.I0(comm_state[1]), .I1(n5992), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14656));   // zim_main.vhd(612[4] 899[13])
    defparam i12225_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n12560));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i2_3_lut (.I0(n20926), .I1(n5992), .I2(comm_cmd[0]), .I3(ICE_GPMO_1), 
            .O(n9_adj_1646));   // zim_main.vhd(612[4] 899[13])
    defparam i2_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i1_4_lut (.I0(n6006), .I1(n9_adj_1646), .I2(trig_dds0), .I3(n14656), 
            .O(n20131));   // zim_main.vhd(612[4] 899[13])
    defparam i1_4_lut.LUT_INIT = 16'h5444;
    SB_LUT4 n22427_bdd_4_lut (.I0(n22427), .I1(n17_adj_1576), .I2(n16_adj_1573), 
            .I3(comm_cmd[2]), .O(n22430));
    defparam n22427_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_56 (.I0(n21045), .I1(n20927), .I2(comm_data_vld), 
            .I3(n6975), .O(n20929));
    defparam i1_4_lut_adj_56.LUT_INIT = 16'hcc8c;
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(cs_falling_pend_N_715));   // zim_main.vhd(632[20:61])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20929), 
            .D(comm_state_3__N_11[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_213[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFR AC_ADC_SYNC_323 (.Q(AC_ADC_SYNC), .C(clk_32MHz), .D(synccnt_7__N_292), 
            .R(START_SYNC_N_283));   // zim_main.vhd(385[3] 398[10])
    SB_LUT4 wdtick_cnt_3930_add_4_27_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[25]), .I3(n19887), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19430_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(ICE_GPMO_1), .O(n22073));
    defparam i19430_3_lut.LUT_INIT = 16'ha8a8;
    SB_CARRY wdtick_cnt_3930_add_4_27 (.CI(n19887), .I0(ICE_GPMO_1), .I1(wdtick_cnt[25]), 
            .CO(n19888));
    SB_LUT4 wdtick_cnt_3930_add_4_26_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[24]), .I3(n19886), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22289_bdd_4_lut (.I0(n22289), .I1(n2_adj_1625), .I2(n1_adj_1624), 
            .I3(comm_index[2]), .O(n22292));
    defparam n22289_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY wdtick_cnt_3930_add_4_26 (.CI(n19886), .I0(ICE_GPMO_1), .I1(wdtick_cnt[24]), 
            .CO(n19887));
    SB_LUT4 wdtick_cnt_3930_add_4_25_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[23]), .I3(n19885), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18535_3_lut (.I0(comm_state[0]), .I1(comm_state_3__N_441[1]), 
            .I2(comm_state[1]), .I3(ICE_GPMO_1), .O(n21177));
    defparam i18535_3_lut.LUT_INIT = 16'he5e5;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[39:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_737), .C(clk_32MHz), .E(n11793), 
            .D(eis_state_2__N_169[2]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_CARRY wdtick_cnt_3930_add_4_25 (.CI(n19885), .I0(ICE_GPMO_1), .I1(wdtick_cnt[23]), 
            .CO(n19886));
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11793), 
            .D(eis_state_2__N_169[1]), .R(tacadc_rst));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n7), .O(n12144));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hada8;
    SB_LUT4 wdtick_cnt_3930_add_4_24_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[22]), .I3(n19884), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_clear_347__i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n11846), 
            .D(n10519));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i18537_4_lut (.I0(n21177), .I1(n22073), .I2(comm_state[2]), 
            .I3(n6975), .O(n21179));
    defparam i18537_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_57 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20443));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1719[29]), .I1(cmd_rdadctmp_adj_1719[28]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20525));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[31:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_CARRY wdtick_cnt_3930_add_4_24 (.CI(n19884), .I0(ICE_GPMO_1), .I1(wdtick_cnt[22]), 
            .CO(n19885));
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_LUT4 i1_2_lut_3_lut_adj_59 (.I0(cs_sync1), .I1(cs_sync2), .I2(n10519), 
            .I3(ICE_GPMO_1), .O(n11846));   // zim_main.vhd(603[8:37])
    defparam i1_2_lut_3_lut_adj_59.LUT_INIT = 16'h4f4f;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged4 (.RDATA({buf_data_vac[15:8]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_747), 
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
    SB_LUT4 i15206_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(n5992), .I3(ICE_GPMO_1), .O(n5994));   // zim_main.vhd(612[4] 899[13])
    defparam i15206_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i12_4_lut_adj_60 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20441));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_388_Mux_0_i15_3_lut (.I0(n21179), .I1(n9300), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(comm_state_3__N_11[0]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_CARRY add_156_11 (.CI(n19745), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19746));
    SB_LUT4 i1_4_lut_adj_61 (.I0(n20919), .I1(n21644), .I2(n27), .I3(comm_cmd[2]), 
            .O(comm_state_3__N_418[3]));   // zim_main.vhd(829[5] 884[14])
    defparam i1_4_lut_adj_61.LUT_INIT = 16'ha088;
    SB_LUT4 add_72_7_lut (.I0(ICE_GPMO_1), .I1(data_count[5]), .I2(ICE_GPMO_1), 
            .I3(n19695), .O(n403)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i28_4_lut (.I0(n21542), .I1(n11_adj_1567), .I2(eis_end_N_737), 
            .I3(eis_state[0]), .O(eis_state_2__N_169[1]));   // zim_main.vhd(292[9:18])
    defparam i28_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i12_4_lut_adj_62 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20439));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_65_i11_2_lut (.I0(acadc_skipCount[10]), .I1(acadc_skipcnt[10]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n11));   // zim_main.vhd(505[10:41])
    defparam equal_65_i11_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_156_10_lut (.I0(n14_adj_1592), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19744), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_index_0__bdd_4_lut_19829 (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n22283));
    defparam comm_index_0__bdd_4_lut_19829.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_158_Mux_3_i16_3_lut (.I0(buf_dds0[11]), .I1(buf_dds1[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1573));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[11]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[11]), .O(n20_adj_1643));
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_158_Mux_3_i17_3_lut (.I0(IAC_FLT1), .I1(buf_adcdata_iac[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1576));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[5]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[5]), .I3(acadc_skipcnt[14]), .O(n24));
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i58_3_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n59));
    defparam i58_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_72_8_lut (.I0(ICE_GPMO_1), .I1(data_count[6]), .I2(ICE_GPMO_1), 
            .I3(n19696), .O(n402)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20669));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_64 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20437));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_158_Mux_3_i20_3_lut (.I0(buf_cfgRTD[3]), .I1(buf_readRTD[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1570));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19057_3_lut (.I0(comm_data_vld), .I1(comm_state[0]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n21322));
    defparam i19057_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_65 (.I0(comm_state_3__N_441[1]), .I1(n21322), .I2(n59), 
            .I3(comm_state[1]), .O(n20955));
    defparam i1_4_lut_adj_65.LUT_INIT = 16'h0544;
    SB_LUT4 n22283_bdd_4_lut (.I0(n22283), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n22286));
    defparam n22283_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFN dds0_mclkcnt_i7_3938__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(470[4] 473[11])
    SB_DFFR synccnt_3927__i0 (.Q(synccnt[0]), .C(clk_32MHz), .D(n45_adj_1550), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 mux_158_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[19]), .I1(buf_adcdata_vdc[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1569));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[6]), .I1(acadc_skipCount[9]), 
            .I2(acadc_skipcnt[6]), .I3(acadc_skipcnt[9]), .O(n22_adj_1584));
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[15]), .I1(acadc_skipCount[3]), 
            .I2(acadc_skipcnt[15]), .I3(acadc_skipcnt[3]), .O(n23_adj_1672));
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_adj_66 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n84));
    defparam i1_2_lut_adj_66.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_67 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20435));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'h0aca;
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[12]), .I1(acadc_skipCount[2]), 
            .I2(acadc_skipcnt[12]), .I3(acadc_skipcnt[2]), .O(n21_adj_1642));
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i19061_2_lut (.I0(comm_state_3__N_441[1]), .I1(comm_data_vld), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21321));
    defparam i19061_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20667));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_69 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20433));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_4_lut_adj_70 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1644));
    defparam i2_4_lut_adj_70.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_71 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20431));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'h0aca;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20_adj_1643), .I2(n11), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1640));
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i15122_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9300));
    defparam i15122_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19654 (.I0(comm_cmd[1]), .I1(n19_adj_1545), 
            .I2(n20_adj_1539), .I3(comm_cmd[2]), .O(n22277));
    defparam comm_cmd_1__bdd_4_lut_19654.LUT_INIT = 16'he4aa;
    SB_LUT4 i19429_4_lut (.I0(n9300), .I1(n42), .I2(n21321), .I3(comm_state[3]), 
            .O(n22072));
    defparam i19429_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i12_4_lut_adj_72 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20665));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_73 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20429));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_74 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20663));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_75 (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(n18735), 
            .I3(ICE_GPMO_1), .O(n2_adj_1716));
    defparam i1_2_lut_3_lut_adj_75.LUT_INIT = 16'h4040;
    SB_LUT4 i12_4_lut_adj_76 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20427));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_77 (.I0(iac_raw_buf_N_749), .I1(tacadc_rst), .I2(eis_state[0]), 
            .I3(n20982), .O(iac_raw_buf_N_747));
    defparam i3_4_lut_adj_77.LUT_INIT = 16'h2000;
    SB_LUT4 i12_4_lut_adj_78 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20661));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_78.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(n20924), 
            .I3(comm_cmd[0]), .O(n10784));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 n22277_bdd_4_lut (.I0(n22277), .I1(n17_adj_1546), .I2(n16_adj_1548), 
            .I3(comm_cmd[2]), .O(n22280));
    defparam n22277_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14_4_lut (.I0(n21_adj_1642), .I1(n23_adj_1672), .I2(n22_adj_1584), 
            .I3(n24), .O(n30_adj_1636));
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 wdtick_cnt_3930_add_4_23_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[21]), .I3(n19883), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_79 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20425));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'h0aca;
    SB_LUT4 i12913_2_lut (.I0(n11955), .I1(eis_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15344));   // zim_main.vhd(479[3] 557[10])
    defparam i12913_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_80 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[13]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[13]), .O(n17_adj_1645));
    defparam i1_4_lut_adj_80.LUT_INIT = 16'h7bde;
    SB_LUT4 i19474_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(n20955), 
            .I3(n22072), .O(n28));
    defparam i19474_4_lut.LUT_INIT = 16'h23af;
    SB_LUT4 i15_4_lut (.I0(n17_adj_1645), .I1(n30_adj_1636), .I2(n26_adj_1640), 
            .I3(n18_adj_1644), .O(n7_adj_1566));
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20659));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_400_Mux_8_i15_4_lut (.I0(n7_adj_1594), .I1(n8_adj_1595), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[8]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20655));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_83 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20423));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'h0aca;
    SB_LUT4 i15370_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1586));   // zim_main.vhd(612[4] 899[13])
    defparam i15370_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_400_Mux_7_i15_4_lut (.I0(n7_adj_1596), .I1(n8_adj_1597), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[7]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3930_add_4_23 (.CI(n19883), .I0(ICE_GPMO_1), .I1(wdtick_cnt[21]), 
            .CO(n19884));
    SB_LUT4 i12_4_lut_adj_84 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20421));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_84.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20419));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 i8_4_lut_adj_86 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1617));   // zim_main.vhd(540[9:35])
    defparam i8_4_lut_adj_86.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_state_3__I_0_400_Mux_6_i15_4_lut (.I0(n7_adj_1598), .I1(n8_adj_1599), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[6]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_388_Mux_1_i15_4_lut (.I0(n22436), .I1(comm_state_3__N_418[3]), 
            .I2(comm_state[3]), .I3(n14454), .O(comm_state_3__N_11[1]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_1_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12_4_lut_adj_87 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20653));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_4_lut_adj_88 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1593));   // zim_main.vhd(540[9:35])
    defparam i6_4_lut_adj_88.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20417));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1579));   // zim_main.vhd(668[5] 772[14])
    defparam mux_157_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 i12_4_lut_adj_90 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20651));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 i15098_4_lut (.I0(n17514), .I1(n17516), .I2(comm_state[3]), 
            .I3(n9300), .O(data_index_8__N_213[5]));   // zim_main.vhd(245[9:19])
    defparam i15098_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20415));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_92 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20649));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_93 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20413));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'h0aca;
    SB_LUT4 i7_4_lut_adj_94 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1585));   // zim_main.vhd(540[9:35])
    defparam i7_4_lut_adj_94.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_167_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1621));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1622));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_95 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20647));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_DFFR wdtick_cnt_3930__i0 (.Q(wdtick_cnt[0]), .C(clk_16MHz), .D(n145), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY add_72_8 (.CI(n19696), .I0(data_count[6]), .I1(ICE_GPMO_1), 
            .CO(n19697));
    SB_LUT4 i19284_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21296));
    defparam i19284_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_167_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1623));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19264_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21300));
    defparam i19264_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_159_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1703));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20411));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_97 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20645));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_98 (.I0(cmd_rdadctmp_adj_1719[13]), .I1(cmd_rdadctmp_adj_1719[12]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20725));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20409));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19757 (.I0(comm_cmd[1]), .I1(n19), .I2(buf_readRTD[0]), 
            .I3(comm_cmd[2]), .O(n22421));
    defparam comm_cmd_1__bdd_4_lut_19757.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_100 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(n12102), .I3(ICE_GPMO_1), .O(n14990));   // zim_main.vhd(245[9:19])
    defparam i1_2_lut_3_lut_adj_100.LUT_INIT = 16'hb0b0;
    SB_LUT4 i12_4_lut_adj_101 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20407));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_159_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1705));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_156_10 (.CI(n19744), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19745));
    SB_LUT4 mux_159_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1706));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22421_bdd_4_lut (.I0(n22421), .I1(buf_adcdata_iac[8]), .I2(n16), 
            .I3(comm_cmd[2]), .O(n22424));
    defparam n22421_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_156_9_lut (.I0(n14_adj_1587), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19743), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_158_Mux_2_i16_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1544));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20643));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20641));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_104 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20639));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_4_lut_adj_105 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1682));   // zim_main.vhd(540[9:35])
    defparam i5_4_lut_adj_105.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20637));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19752 (.I0(comm_cmd[1]), .I1(n19_adj_1561), 
            .I2(n20_adj_1562), .I3(comm_cmd[2]), .O(n22415));
    defparam comm_cmd_1__bdd_4_lut_19752.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_158_Mux_2_i17_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1534));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22415_bdd_4_lut (.I0(n22415), .I1(n17_adj_1560), .I2(n16_adj_1558), 
            .I3(comm_cmd[2]), .O(n22418));
    defparam n22415_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_158_Mux_2_i20_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1541));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1543));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12935_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n10784), 
            .I3(ICE_GPMO_1), .O(n15366));   // zim_main.vhd(595[3] 900[10])
    defparam i12935_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_107 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1681));   // zim_main.vhd(540[9:35])
    defparam i4_4_lut_adj_107.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20405));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19776 (.I0(comm_cmd[2]), .I1(n21182), 
            .I2(n21200), .I3(comm_cmd[3]), .O(n22409));
    defparam comm_cmd_2__bdd_4_lut_19776.LUT_INIT = 16'he4aa;
    SB_LUT4 add_72_2_lut (.I0(ICE_GPMO_1), .I1(data_count[0]), .I2(iac_raw_buf_N_749), 
            .I3(ICE_GPMO_1), .O(n408)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22409_bdd_4_lut (.I0(n22409), .I1(n21197), .I2(n22376), .I3(comm_cmd[3]), 
            .O(n22412));
    defparam n22409_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20635));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_110 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18));   // zim_main.vhd(540[9:35])
    defparam i2_4_lut_adj_110.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20385));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19742 (.I0(comm_cmd[2]), .I1(n22364), 
            .I2(n21212), .I3(comm_cmd[3]), .O(n22403));
    defparam comm_cmd_2__bdd_4_lut_19742.LUT_INIT = 16'he4aa;
    SB_LUT4 i15360_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1610));   // zim_main.vhd(612[4] 899[13])
    defparam i15360_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15086_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[4] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17506));   // zim_main.vhd(251[9:19])
    defparam i15086_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20633));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 n22403_bdd_4_lut (.I0(n22403), .I1(n21143), .I2(n22388), .I3(comm_cmd[3]), 
            .O(n22406));
    defparam n22403_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15087_3_lut (.I0(\comm_buf[2] [5]), .I1(\comm_buf[6] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17507));   // zim_main.vhd(251[9:19])
    defparam i15087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20631));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_114 (.I0(cmd_rdadctmp_adj_1719[14]), .I1(cmd_rdadctmp_adj_1719[13]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20733));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20383));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut (.I0(adress[5]), .I1(adress[4]), .I2(n13076), .I3(n21100), 
            .O(n20069));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_116 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1632));   // zim_main.vhd(540[9:35])
    defparam i3_4_lut_adj_116.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut_3_lut_adj_117 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n20911));
    defparam i1_2_lut_3_lut_adj_117.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_400_Mux_4_i15_4_lut (.I0(n7_adj_1600), .I1(n8_adj_1601), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[4]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19060_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21325));
    defparam i19060_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13_4_lut_adj_118 (.I0(adress[4]), .I1(adress[3]), .I2(n13076), 
            .I3(n21100), .O(n20067));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_118.LUT_INIT = 16'h0aca;
    SB_LUT4 i19044_2_lut (.I0(\comm_buf[3] [5]), .I1(comm_index[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21304));
    defparam i19044_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_119 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20099));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19771 (.I0(comm_cmd[0]), .I1(req_data_cnt[10]), 
            .I2(tacadc_rst), .I3(comm_cmd[1]), .O(n22397));
    defparam comm_cmd_0__bdd_4_lut_19771.LUT_INIT = 16'he4aa;
    SB_LUT4 n22397_bdd_4_lut (.I0(n22397), .I1(acadc_skipCount[10]), .I2(SELIRNG0), 
            .I3(comm_cmd[1]), .O(n22400));
    defparam n22397_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15089_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17509));   // zim_main.vhd(251[9:19])
    defparam i15089_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_120 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1504));   // zim_main.vhd(540[9:35])
    defparam i1_4_lut_adj_120.LUT_INIT = 16'h7bde;
    SB_CARRY add_156_9 (.CI(n19743), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19744));
    SB_LUT4 i12_4_lut_adj_121 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20381));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_122 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(ICE_GPMO_1), .O(n14_adj_1616));   // zim_main.vhd(612[4] 899[13])
    defparam i1_2_lut_3_lut_adj_122.LUT_INIT = 16'h1010;
    SB_LUT4 i13_4_lut_adj_123 (.I0(adress[3]), .I1(adress[2]), .I2(n13076), 
            .I3(n21100), .O(n20065));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_123.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19747 (.I0(comm_cmd[1]), .I1(n21325), 
            .I2(n21326), .I3(comm_cmd[2]), .O(n22391));
    defparam comm_cmd_1__bdd_4_lut_19747.LUT_INIT = 16'he4aa;
    SB_LUT4 add_73_17_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[15]), .I2(ICE_GPMO_1), 
            .I3(n19713), .O(n411)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_16_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[14]), .I2(ICE_GPMO_1), 
            .I3(n19712), .O(n412)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_4_lut_adj_124 (.I0(adress[2]), .I1(adress[1]), .I2(n13076), 
            .I3(n21100), .O(n20063));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_124.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20075));   // zim_main.vhd(245[9:19])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp_adj_1765[22]), .I1(cmd_rdadctmp_adj_1765[21]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20217));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_127 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20097));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 n22391_bdd_4_lut (.I0(n22391), .I1(n21514), .I2(n23_adj_1559), 
            .I3(comm_cmd[2]), .O(n22394));
    defparam n22391_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14_4_lut_adj_128 (.I0(n21_adj_1682), .I1(n23_adj_1585), .I2(n22_adj_1593), 
            .I3(n24_adj_1617), .O(n30_adj_1647));   // zim_main.vhd(540[9:35])
    defparam i14_4_lut_adj_128.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp_adj_1765[21]), .I1(cmd_rdadctmp_adj_1765[20]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20215));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_130 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20095));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_131 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20093));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut_adj_132 (.I0(n17_adj_1504), .I1(n19_adj_1632), .I2(n18), 
            .I3(n20_adj_1681), .O(n29));   // zim_main.vhd(540[9:35])
    defparam i13_4_lut_adj_132.LUT_INIT = 16'hfffe;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(ICE_GPMO_1), .O(DDS_MCLK));   // zim_main.vhd(349[16:66])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20091));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp_adj_1765[20]), .I1(cmd_rdadctmp_adj_1765[19]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20213));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'h0aca;
    SB_LUT4 i19382_2_lut_3_lut_3_lut (.I0(comm_cmd[3]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21644));   // zim_main.vhd(595[3] 900[10])
    defparam i19382_2_lut_3_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19732 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22385));
    defparam comm_cmd_0__bdd_4_lut_19732.LUT_INIT = 16'he4aa;
    SB_LUT4 n22385_bdd_4_lut (.I0(n22385), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22388));
    defparam n22385_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_135 (.I0(cmd_rdadctmp_adj_1765[19]), .I1(cmd_rdadctmp_adj_1765[18]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20211));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp_adj_1719[15]), .I1(cmd_rdadctmp_adj_1719[14]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20735));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1719[16]), .I1(cmd_rdadctmp_adj_1719[15]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20737));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1719[17]), .I1(cmd_rdadctmp_adj_1719[16]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20743));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 i19201_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21305));
    defparam i19201_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_state_3__I_0_400_Mux_3_i15_4_lut (.I0(n7_adj_1602), .I1(n8_adj_1603), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[3]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_159_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1693));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1765[18]), .I1(cmd_rdadctmp_adj_1765[17]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20209));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'h0aca;
    SB_LUT4 add_156_8_lut (.I0(n14_adj_1588), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19742), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_140 (.I0(comm_cmd[7]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[7]), .O(n20273));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1765[17]), .I1(cmd_rdadctmp_adj_1765[16]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20207));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1765[16]), .I1(cmd_rdadctmp_adj_1765[15]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20205));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_143 (.I0(comm_cmd[6]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[6]), .O(n20271));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_144 (.I0(comm_cmd[5]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[5]), .O(n20269));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(eis_stop), .I1(n29), .I2(n30_adj_1647), .I3(ICE_GPMO_1), 
            .O(n16881));   // zim_main.vhd(595[3] 900[10])
    defparam i1_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19737 (.I0(comm_cmd[2]), .I1(n21159), 
            .I2(n21160), .I3(comm_cmd[3]), .O(n22379));
    defparam comm_cmd_2__bdd_4_lut_19737.LUT_INIT = 16'he4aa;
    SB_LUT4 i18459_2_lut (.I0(adc_state_adj_1761[3]), .I1(adc_state_adj_1761[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21100));
    defparam i18459_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 n22379_bdd_4_lut (.I0(n22379), .I1(n21157), .I2(n21156), .I3(comm_cmd[3]), 
            .O(n22382));
    defparam n22379_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp_adj_1765[15]), .I1(cmd_rdadctmp_adj_1765[14]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20203));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'h0aca;
    SB_LUT4 i39_4_lut_3_lut_3_lut (.I0(comm_cmd[3]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n27));   // zim_main.vhd(595[3] 900[10])
    defparam i39_4_lut_3_lut_3_lut.LUT_INIT = 16'h1818;
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd_rdadctmp_adj_1765[14]), .I1(cmd_rdadctmp_adj_1765[13]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20201));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n14781), .I2(n12144), .I3(comm_rx_buf[4]), 
            .O(n20267));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19722 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22373));
    defparam comm_cmd_0__bdd_4_lut_19722.LUT_INIT = 16'he4aa;
    SB_LUT4 i11_4_lut_adj_147 (.I0(comm_cmd[3]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[3]), .O(n20265));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 i13_4_lut_adj_148 (.I0(adress[1]), .I1(adress[0]), .I2(n13076), 
            .I3(n21100), .O(n20061));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_148.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_149 (.I0(comm_cmd[2]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[2]), .O(n20263));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_149.LUT_INIT = 16'hca0a;
    SB_LUT4 n22373_bdd_4_lut (.I0(n22373), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n22376));
    defparam n22373_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd_rdadctmp_adj_1765[13]), .I1(cmd_rdadctmp_adj_1765[12]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20199));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_151 (.I0(comm_cmd[1]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[1]), .O(n20261));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp_adj_1765[12]), .I1(cmd_rdadctmp_adj_1765[11]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20197));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_153 (.I0(comm_state[0]), .I1(n20919), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10790));
    defparam i1_2_lut_adj_153.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1765[11]), .I1(cmd_rdadctmp_adj_1765[10]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20195));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_159_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1695));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_156_8 (.CI(n19742), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19743));
    SB_LUT4 i18514_3_lut (.I0(n16_adj_1695), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21156));
    defparam i18514_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_16 (.CI(n19712), .I0(data_cntvec[14]), .I1(ICE_GPMO_1), 
            .CO(n19713));
    SB_LUT4 add_156_7_lut (.I0(n14_adj_1618), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19741), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_159_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1696));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18515_3_lut (.I0(n19_adj_1696), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21157));
    defparam i18515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_155 (.I0(cmd_rdadctmp_adj_1765[10]), .I1(cmd_rdadctmp_adj_1765[9]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20193));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3930_add_4_22_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[20]), .I3(n19882), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15361_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1611));   // zim_main.vhd(612[4] 899[13])
    defparam i15361_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_159_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1698));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18518_4_lut (.I0(n26_adj_1698), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21160));
    defparam i18518_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i15362_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1612));   // zim_main.vhd(612[4] 899[13])
    defparam i15362_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_400_Mux_2_i15_4_lut (.I0(n7_adj_1604), .I1(n8_adj_1605), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[2]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_156 (.I0(n12560), .I1(n12095), .I2(n9454), .I3(n12461), 
            .O(n12102));
    defparam i1_4_lut_adj_156.LUT_INIT = 16'h8880;
    SB_LUT4 i13_4_lut_adj_157 (.I0(adress[6]), .I1(adress[5]), .I2(n13076), 
            .I3(n21100), .O(n20071));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(cmd_rdadctmp_adj_1765[9]), .I1(cmd_rdadctmp_adj_1765[8]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20191));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1765[8]), .I1(cmd_rdadctmp_adj_1765[7]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20189));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_400_Mux_1_i15_4_lut (.I0(n7_adj_1606), .I1(n8_adj_1607), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[1]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp_adj_1765[7]), .I1(cmd_rdadctmp_adj_1765[6]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20187));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3930_add_4_22 (.CI(n19882), .I0(ICE_GPMO_1), .I1(wdtick_cnt[20]), 
            .CO(n19883));
    SB_LUT4 i19212_4_lut (.I0(n17), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(comm_cmd[3]), .O(n21431));   // zim_main.vhd(245[9:19])
    defparam i19212_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i12_3_lut (.I0(comm_length[2]), .I1(n21431), .I2(n12102), 
            .I3(ICE_GPMO_1), .O(n20107));   // zim_main.vhd(245[9:19])
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3930_add_4_21_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[19]), .I3(n19881), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n28), 
            .D(comm_state_3__N_11[1]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_161 (.I0(cmd_rdadctmp_adj_1719[18]), .I1(cmd_rdadctmp_adj_1719[17]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20745));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1765[6]), .I1(cmd_rdadctmp_adj_1765[5]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20185));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_163 (.I0(buf_dds1[14]), .I1(\comm_buf[0] [6]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20057));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n20945), 
            .D(comm_state_3__N_11[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_213[1]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13606_4_lut (.I0(n21127), .I1(buf_dds1[13]), .I2(n14_adj_1616), 
            .I3(n12059), .O(n16037));   // zim_main.vhd(595[3] 900[10])
    defparam i13606_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i17_3_lut (.I0(n16894), .I1(n16888), .I2(eis_state[0]), .I3(ICE_GPMO_1), 
            .O(n13_adj_1549));   // zim_main.vhd(292[9:18])
    defparam i17_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12_4_lut_adj_164 (.I0(buf_dds1[12]), .I1(\comm_buf[0] [4]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20053));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp_adj_1719[19]), .I1(cmd_rdadctmp_adj_1719[18]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20747));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_166 (.I0(cmd_rdadctmp_adj_1765[5]), .I1(cmd_rdadctmp_adj_1765[4]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20183));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_167 (.I0(cmd_rdadctmp_adj_1765[4]), .I1(cmd_rdadctmp_adj_1765[3]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20181));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_168 (.I0(cmd_rdadctmp_adj_1765[3]), .I1(cmd_rdadctmp_adj_1765[2]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20179));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_169 (.I0(cmd_rdadctmp_adj_1765[2]), .I1(cmd_rdadctmp_adj_1765[1]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20177));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_170 (.I0(buf_dds1[11]), .I1(\comm_buf[0] [3]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20051));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_213[2]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_213[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_213[4]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_213[5]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_213[6]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_213[7]));   // zim_main.vhd(595[3] 900[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_213[8]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12518), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i18_3_lut (.I0(eis_end_N_737), .I1(n13_adj_1549), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(eis_state_2__N_169[2]));   // zim_main.vhd(292[9:18])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15363_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1613));   // zim_main.vhd(612[4] 899[13])
    defparam i15363_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_171 (.I0(buf_dds1[10]), .I1(\comm_buf[0] [2]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20049));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3930_add_4_21 (.CI(n19881), .I0(ICE_GPMO_1), .I1(wdtick_cnt[19]), 
            .CO(n19882));
    SB_LUT4 wdtick_cnt_3930_add_4_20_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[18]), .I3(n19880), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_172 (.I0(buf_dds1[9]), .I1(\comm_buf[0] [1]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20047));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_173 (.I0(buf_dds1[6]), .I1(\comm_buf[1] [6]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20041));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_173.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3930_add_4_20 (.CI(n19880), .I0(ICE_GPMO_1), .I1(wdtick_cnt[18]), 
            .CO(n19881));
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_174 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18696), .I3(comm_cmd[1]), .O(n13));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_174.LUT_INIT = 16'hfffd;
    SB_LUT4 i13630_4_lut (.I0(n21127), .I1(buf_dds1[5]), .I2(n14_adj_1618), 
            .I3(n12059), .O(n16061));   // zim_main.vhd(595[3] 900[10])
    defparam i13630_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_175 (.I0(cmd_rdadctmp_adj_1765[1]), .I1(cmd_rdadctmp_adj_1765[0]), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20175));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3930_add_4_19_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[17]), .I3(n19879), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_400_Mux_0_i15_4_lut (.I0(n7_adj_1580), .I1(n8_adj_1581), 
            .I2(comm_state[3]), .I3(n9300), .O(data_index_8__N_213[0]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_400_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15364_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1614));   // zim_main.vhd(612[4] 899[13])
    defparam i15364_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i14451_4_lut (.I0(AC_ADC_SYNC), .I1(n16881), .I2(eis_end_N_737), 
            .I3(n7_adj_1566), .O(n16882));   // zim_main.vhd(300[9:16])
    defparam i14451_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i12_4_lut_adj_176 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20379));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_177 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20377));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'h0aca;
    SB_LUT4 i18517_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21159));
    defparam i18517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_178 (.I0(buf_dds1[4]), .I1(\comm_buf[1] [4]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20035));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19727 (.I0(comm_cmd[1]), .I1(n19_adj_1678), 
            .I2(buf_readRTD[7]), .I3(comm_cmd[2]), .O(n22367));
    defparam comm_cmd_1__bdd_4_lut_19727.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_179 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20375));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 n22367_bdd_4_lut (.I0(n22367), .I1(buf_adcdata_iac[15]), .I2(n16_adj_1677), 
            .I3(comm_cmd[2]), .O(n22370));
    defparam n22367_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13635_4_lut (.I0(n21127), .I1(buf_dds1[3]), .I2(n14_adj_1619), 
            .I3(n12059), .O(n16066));   // zim_main.vhd(595[3] 900[10])
    defparam i13635_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i11_4_lut_adj_180 (.I0(buf_dds1[2]), .I1(\comm_buf[1] [2]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20029));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_181 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20373));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_182 (.I0(buf_dds1[1]), .I1(\comm_buf[1] [1]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20027));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1719[20]), .I1(cmd_rdadctmp_adj_1719[19]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20749));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_184 (.I0(cmd_rdadctmp_adj_1719[21]), .I1(cmd_rdadctmp_adj_1719[20]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20751));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_158_Mux_4_i23_3_lut (.I0(buf_control[4]), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1559));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19216_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21514));
    defparam i19216_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19068_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21326));
    defparam i19068_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18568_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21210));
    defparam i18568_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_185 (.I0(cmd_rdadctmp_adj_1719[22]), .I1(cmd_rdadctmp_adj_1719[21]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20755));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_186 (.I0(eis_state[1]), .I1(eis_end_N_737), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20982));   // zim_main.vhd(479[3] 557[10])
    defparam i1_2_lut_adj_186.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_187 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20371));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'h0aca;
    SB_LUT4 i18_3_lut_adj_188 (.I0(eis_state[0]), .I1(eis_end_N_737), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n12));
    defparam i18_3_lut_adj_188.LUT_INIT = 16'hacac;
    SB_LUT4 i18570_4_lut (.I0(n21210), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21212));
    defparam i18570_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18556_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21198));
    defparam i18556_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_189 (.I0(n20982), .I1(eis_adc_trig), .I2(tacadc_rst), 
            .I3(n12), .O(n20489));   // zim_main.vhd(479[3] 557[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n13286), .I3(adc_state_adj_1761[2]), .O(n20369));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'h0aca;
    SB_LUT4 i18558_4_lut (.I0(n21198), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21200));
    defparam i18558_4_lut.LUT_INIT = 16'hfaca;
    SB_CARRY wdtick_cnt_3930_add_4_19 (.CI(n19879), .I0(ICE_GPMO_1), .I1(wdtick_cnt[17]), 
            .CO(n19880));
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1719[23]), .I1(cmd_rdadctmp_adj_1719[22]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20757));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_192 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20367));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_193 (.I0(cmd_rdadctmp_adj_1719[24]), .I1(cmd_rdadctmp_adj_1719[23]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20759));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19713 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22361));
    defparam comm_cmd_0__bdd_4_lut_19713.LUT_INIT = 16'he4aa;
    SB_LUT4 i28_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n20451));   // zim_main.vhd(247[9:17])
    defparam i28_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 mux_158_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1558));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1560));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1562));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1561));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3930_add_4_18_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[16]), .I3(n19878), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15207_3_lut (.I0(comm_state[0]), .I1(n5992), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5995));   // zim_main.vhd(612[4] 899[13])
    defparam i15207_3_lut.LUT_INIT = 16'hdcdc;
    SPI_SLAVE comm_spi (.n6232(n6232), .clk_32MHz(clk_32MHz), .comm_data_vld(comm_data_vld), 
            .reset_int(reset_int), .comm_tx_buf({comm_tx_buf}), .GND_net(ICE_GPMO_1), 
            .comm_rx_buf({comm_rx_buf}), .VCC_net(VCC_net), .\comm_buf[6][7] (\comm_buf[6] [7]), 
            .n12486(n12486), .\comm_state[3] (comm_state[3]), .n20087(n20087), 
            .sclk_sync1(sclk_sync1), .sclk_sync2(sclk_sync2), .ICE_SPI_MISO(ICE_SPI_MISO), 
            .n15382(n15382), .n15381(n15381), .n15377(n15377), .\comm_state_3__N_441[1] (comm_state_3__N_441[1]), 
            .\comm_state[2] (comm_state[2]), .n4(n4_adj_1687), .\comm_cmd[7] (comm_cmd[7]), 
            .n19295(n19295), .n1(n1_adj_1633));   // zim_main.vhd(962[13:22])
    SB_LUT4 mux_159_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR comm_clear_347__i4 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(n5995), 
            .R(n6006));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 add_72_4_lut (.I0(ICE_GPMO_1), .I1(data_count[2]), .I2(ICE_GPMO_1), 
            .I3(n19692), .O(n406)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_194 (.I0(dds_state_adj_1742[2]), .I1(dds_state_adj_1742[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20539));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_194.LUT_INIT = 16'h4444;
    SB_LUT4 i15187_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17606));
    defparam i15187_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_158_Mux_6_i16_3_lut (.I0(buf_dds0[14]), .I1(buf_dds1[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1548));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_156_7 (.CI(n19741), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19742));
    SB_LUT4 i17247_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17247_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_195 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20339));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3930_add_4_18 (.CI(n19878), .I0(ICE_GPMO_1), .I1(wdtick_cnt[16]), 
            .CO(n19879));
    SB_LUT4 mux_158_Mux_6_i17_3_lut (.I0(VAC_FLT0), .I1(buf_adcdata_iac[22]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1546));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12936_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10784), 
            .I3(ICE_GPMO_1), .O(n15367));   // zim_main.vhd(595[3] 900[10])
    defparam i12936_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3930_add_4_17_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[15]), .I3(n19877), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_196 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n11919), .I3(adc_state_adj_1764[2]), .O(n20475));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_196.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_197 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20537));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_197.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_198 (.I0(cmd_rdadctmp_adj_1765[0]), .I1(VDC_SDO), 
            .I2(n13352), .I3(adc_state_adj_1764[3]), .O(n20249));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_199 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20365));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_200 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20363));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20473));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_158_Mux_6_i20_3_lut (.I0(buf_cfgRTD[6]), .I1(buf_readRTD[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1539));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_202 (.I0(cmd_rdadctmp_adj_1719[25]), .I1(cmd_rdadctmp_adj_1719[24]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20761));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_203 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20471));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 i4051_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(comm_state_3__N_441[1]), 
            .I3(ICE_GPMO_1), .O(comm_index_2__N_449[0]));   // zim_main.vhd(794[5] 804[12])
    defparam i4051_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i15368_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1590));   // zim_main.vhd(612[4] 899[13])
    defparam i15368_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_158_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[22]), .I1(buf_adcdata_vdc[22]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1545));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_204 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(ICE_GPMO_1), .O(clk_RTD_N_728));
    defparam i1_2_lut_3_lut_adj_204.LUT_INIT = 16'h6a6a;
    SB_LUT4 i15369_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1591));   // zim_main.vhd(612[4] 899[13])
    defparam i15369_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_205 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20359));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1719[31]), .I1(cmd_rdadctmp_adj_1719[30]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20533));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 add_156_6_lut (.I0(n14_adj_1589), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19740), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_207 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20357));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp_adj_1719[30]), .I1(cmd_rdadctmp_adj_1719[29]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20531));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i13006_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9300), .I3(n12667), .O(n15437));   // zim_main.vhd(595[3] 900[10])
    defparam i13006_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13674_3_lut (.I0(n15141), .I1(bit_cnt_adj_1744[0]), .I2(dds_state_adj_1742[1]), 
            .I3(ICE_GPMO_1), .O(n16105));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13674_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i12_4_lut_adj_209 (.I0(cmd_rdadctmp_adj_1719[26]), .I1(cmd_rdadctmp_adj_1719[25]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20763));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_210 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20355));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'h0aca;
    SB_LUT4 n22361_bdd_4_lut (.I0(n22361), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22364));
    defparam n22361_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13678_3_lut (.I0(n15136), .I1(bit_cnt_adj_1740[0]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n16109));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13678_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i12_4_lut_adj_211 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20353));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'h0aca;
    SB_LUT4 i19395_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21659));
    defparam i19395_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19708 (.I0(comm_cmd[1]), .I1(n19_adj_1711), 
            .I2(n20_adj_1712), .I3(comm_cmd[2]), .O(n22355));
    defparam comm_cmd_1__bdd_4_lut_19708.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_159_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1685));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_0_i1_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1691));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_0_i2_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22355_bdd_4_lut (.I0(n22355), .I1(n17_adj_1710), .I2(n16_adj_1709), 
            .I3(comm_cmd[2]), .O(n22358));
    defparam n22355_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19047_2_lut (.I0(\comm_buf[6] [0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21309));
    defparam i19047_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_159_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1692));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1577));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_212 (.I0(VAC_CS), .I1(adc_state_adj_1718[1]), .I2(adc_state_adj_1718[0]), 
            .I3(DTRIG_N_870_adj_1496), .O(n15_adj_1662));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_212.LUT_INIT = 16'h4554;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19699 (.I0(comm_cmd[1]), .I1(n21314), 
            .I2(n21315), .I3(comm_cmd[2]), .O(n22349));
    defparam comm_cmd_1__bdd_4_lut_19699.LUT_INIT = 16'he4aa;
    SB_LUT4 n22349_bdd_4_lut (.I0(n22349), .I1(n21515), .I2(n23_adj_1542), 
            .I3(comm_cmd[2]), .O(n22352));
    defparam n22349_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19694 (.I0(comm_cmd[1]), .I1(n26_adj_1572), 
            .I2(n21312), .I3(comm_cmd[2]), .O(n22343));
    defparam comm_cmd_1__bdd_4_lut_19694.LUT_INIT = 16'he4aa;
    SB_LUT4 n22343_bdd_4_lut (.I0(n22343), .I1(n21516), .I2(n23_adj_1571), 
            .I3(comm_cmd[2]), .O(n22346));
    defparam n22343_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19689 (.I0(comm_cmd[1]), .I1(n26_adj_1714), 
            .I2(n21311), .I3(comm_cmd[2]), .O(n22337));
    defparam comm_cmd_1__bdd_4_lut_19689.LUT_INIT = 16'he4aa;
    SB_LUT4 n22337_bdd_4_lut (.I0(n22337), .I1(n21517), .I2(n23_adj_1713), 
            .I3(comm_cmd[2]), .O(n22340));
    defparam n22337_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1577), 
            .I2(n21309), .I3(comm_index[2]), .O(n22331));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22331_bdd_4_lut (.I0(n22331), .I1(n2), .I2(n1), .I3(comm_index[2]), 
            .O(n22334));
    defparam n22331_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19514_4_lut (.I0(n20984), .I1(n15_adj_1662), .I2(drdy_falling_adj_1495), 
            .I3(adc_state_adj_1718[0]), .O(n12_adj_1660));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19514_4_lut.LUT_INIT = 16'h3313;
    SB_LUT4 mux_158_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1713));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(cmd_rdadctmp_adj_1719[0]), .I1(VAC_MISO), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20601));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 i19054_2_lut (.I0(buf_data_vac[31]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21661));
    defparam i19054_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19063_2_lut (.I0(req_data_cnt[15]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21517));
    defparam i19063_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19071_2_lut (.I0(buf_data_vac[47]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21311));
    defparam i19071_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_158_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1714));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1679));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1571));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_214 (.I0(IAC_CS), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(DTRIG_N_870), .O(n15_adj_1674));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_214.LUT_INIT = 16'h4554;
    SB_LUT4 i19056_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21516));
    defparam i19056_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY wdtick_cnt_3930_add_4_17 (.CI(n19877), .I0(ICE_GPMO_1), .I1(wdtick_cnt[15]), 
            .CO(n19878));
    SB_CARRY add_156_6 (.CI(n19740), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19741));
    SB_LUT4 wdtick_cnt_3930_add_4_16_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[14]), .I3(n19876), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_DFFN dds0_mclkcnt_i7_3938__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(470[4] 473[11])
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(n18697), 
            .I3(comm_cmd[1]), .O(n21));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19422_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21312));
    defparam i19422_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY wdtick_cnt_3930_add_4_16 (.CI(n19876), .I0(ICE_GPMO_1), .I1(wdtick_cnt[14]), 
            .CO(n19877));
    SB_LUT4 i19517_4_lut (.I0(n20952), .I1(n15_adj_1674), .I2(drdy_falling), 
            .I3(adc_state[0]), .O(n12_adj_1669));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19517_4_lut.LUT_INIT = 16'h3313;
    SB_LUT4 mux_158_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1572));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_15_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[13]), .I2(ICE_GPMO_1), 
            .I3(n19711), .O(n413)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_156_5_lut (.I0(n14_adj_1619), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19739), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_5_lut.LUT_INIT = 16'hA3AC;
    SB_DFFN dds0_mclkcnt_i7_3938__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3938__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42_adj_1536));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3938__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3938__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3938__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(470[4] 473[11])
    SB_DFFN dds0_mclkcnt_i7_3938__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(470[4] 473[11])
    SB_DFFR synccnt_3927__i1 (.Q(synccnt[1]), .C(clk_32MHz), .D(n44_adj_1551), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3927__i2 (.Q(synccnt[2]), .C(clk_32MHz), .D(n43_adj_1552), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 i6637_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[2]), 
            .I3(\comm_buf[1] [2]), .O(n8_adj_1605));
    defparam i6637_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFR synccnt_3927__i3 (.Q(synccnt[3]), .C(clk_32MHz), .D(n42_adj_1553), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3927__i4 (.Q(synccnt[4]), .C(clk_32MHz), .D(n41_adj_1554), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3927__i5 (.Q(synccnt[5]), .C(clk_32MHz), .D(n40_adj_1555), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3927__i6 (.Q(synccnt[6]), .C(clk_32MHz), .D(n39_adj_1556), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_3927__i7 (.Q(synccnt[7]), .C(clk_32MHz), .D(n38_adj_1557), 
            .R(START_SYNC_N_283));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFSR clk_cnt_3928_3929__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14), 
            .R(n17606));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 wdtick_cnt_3930_add_4_15_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[13]), .I3(n19875), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_158_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1542));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13005_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9300), .I3(n12667), .O(n15436));   // zim_main.vhd(595[3] 900[10])
    defparam i13005_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19069_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21515));
    defparam i19069_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR wdtick_cnt_3930__i1 (.Q(wdtick_cnt[1]), .C(clk_16MHz), .D(n144), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i13004_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9300), .I2(\comm_buf[0] [5]), 
            .I3(n12667), .O(n15435));   // zim_main.vhd(595[3] 900[10])
    defparam i13004_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i19055_2_lut (.I0(buf_data_vac[43]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21315));
    defparam i19055_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_215 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12797), 
            .I3(adc_state[0]), .O(n20599));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 i19049_2_lut (.I0(data_idxvec[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21314));
    defparam i19049_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_158_Mux_7_i16_3_lut (.I0(buf_dds0[15]), .I1(buf_dds1[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1709));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17254_2_lut (.I0(comm_index[0]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n19892));
    defparam i17254_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_158_Mux_7_i17_3_lut (.I0(VAC_FLT1), .I1(buf_adcdata_iac[23]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1710));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13003_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9300), .I3(n12667), .O(n15434));   // zim_main.vhd(595[3] 900[10])
    defparam i13003_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_3_lut (.I0(comm_state[2]), .I1(comm_index[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n8));   // zim_main.vhd(595[3] 900[10])
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n13286), 
            .I3(adc_state_adj_1761[2]), .O(n20351));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'h0aca;
    SB_LUT4 i13002_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9300), .I3(n12667), .O(n15433));   // zim_main.vhd(595[3] 900[10])
    defparam i13002_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2_3_lut_adj_217 (.I0(comm_cmd[6]), .I1(comm_cmd[4]), .I2(comm_cmd[5]), 
            .I3(ICE_GPMO_1), .O(n18696));   // zim_main.vhd(595[3] 900[10])
    defparam i2_3_lut_adj_217.LUT_INIT = 16'hfbfb;
    SB_LUT4 mux_158_Mux_7_i20_3_lut (.I0(buf_cfgRTD[7]), .I1(buf_readRTD[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1712));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_7_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13001_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9300), .I3(n12667), .O(n15432));   // zim_main.vhd(595[3] 900[10])
    defparam i13001_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19684 (.I0(comm_cmd[1]), .I1(n26_adj_1693), 
            .I2(n21305), .I3(comm_cmd[2]), .O(n22325));
    defparam comm_cmd_1__bdd_4_lut_19684.LUT_INIT = 16'he4aa;
    SB_LUT4 n22325_bdd_4_lut (.I0(n22325), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22328));
    defparam n22325_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_218 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12486), .I3(comm_state[3]), .O(n20089));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'h0aca;
    SB_LUT4 i22_4_lut (.I0(comm_state_3__N_441[1]), .I1(comm_state[0]), 
            .I2(comm_data_vld), .I3(comm_state[1]), .O(n7));
    defparam i22_4_lut.LUT_INIT = 16'h10cc;
    SB_LUT4 i2_2_lut (.I0(comm_state[0]), .I1(comm_state_3__N_441[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6975));   // zim_main.vhd(612[4] 899[13])
    defparam i2_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13000_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9300), .I3(n12667), .O(n15431));   // zim_main.vhd(595[3] 900[10])
    defparam i13000_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_156_5 (.CI(n19739), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19740));
    SB_CARRY wdtick_cnt_3930_add_4_15 (.CI(n19875), .I0(ICE_GPMO_1), .I1(wdtick_cnt[13]), 
            .CO(n19876));
    SB_LUT4 i12993_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9300), .I3(n12667), .O(n15424));   // zim_main.vhd(595[3] 900[10])
    defparam i12993_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_1__bdd_4_lut_19679 (.I0(comm_index[1]), .I1(n17509), 
            .I2(n21304), .I3(comm_index[0]), .O(n22319));
    defparam comm_index_1__bdd_4_lut_19679.LUT_INIT = 16'he4aa;
    SB_LUT4 n22319_bdd_4_lut (.I0(n22319), .I1(n17507), .I2(n17506), .I3(comm_index[0]), 
            .O(n22322));
    defparam n22319_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3930_add_4_14_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[12]), .I3(n19874), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12360_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14781));   // zim_main.vhd(612[4] 899[13])
    defparam i12360_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY wdtick_cnt_3930_add_4_14 (.CI(n19874), .I0(ICE_GPMO_1), .I1(wdtick_cnt[12]), 
            .CO(n19875));
    SB_LUT4 wdtick_cnt_3930_add_4_13_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[11]), .I3(n19873), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3930_add_4_13 (.CI(n19873), .I0(ICE_GPMO_1), .I1(wdtick_cnt[11]), 
            .CO(n19874));
    SB_LUT4 wdtick_cnt_3930_add_4_12_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[10]), .I3(n19872), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_167_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1624));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_219 (.I0(comm_cmd[0]), .I1(n14781), .I2(n12144), 
            .I3(comm_rx_buf[0]), .O(n20239));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19674 (.I0(comm_cmd[1]), .I1(n19_adj_1543), 
            .I2(n20_adj_1541), .I3(comm_cmd[2]), .O(n22313));
    defparam comm_cmd_1__bdd_4_lut_19674.LUT_INIT = 16'he4aa;
    SB_LUT4 n22313_bdd_4_lut (.I0(n22313), .I1(n17_adj_1534), .I2(n16_adj_1544), 
            .I3(comm_cmd[2]), .O(n22316));
    defparam n22313_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_167_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1625));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19664 (.I0(comm_cmd[1]), .I1(n19_adj_1706), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22307));
    defparam comm_cmd_1__bdd_4_lut_19664.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_220 (.I0(cmd_rdadctmp_adj_1719[27]), .I1(cmd_rdadctmp_adj_1719[26]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20765));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_LUT4 n22307_bdd_4_lut (.I0(n22307), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1705), 
            .I3(comm_cmd[2]), .O(n22310));
    defparam n22307_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_15 (.CI(n19711), .I0(data_cntvec[13]), .I1(ICE_GPMO_1), 
            .CO(n19712));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19659 (.I0(comm_cmd[1]), .I1(n26_adj_1703), 
            .I2(n21300), .I3(comm_cmd[2]), .O(n22301));
    defparam comm_cmd_1__bdd_4_lut_19659.LUT_INIT = 16'he4aa;
    SB_LUT4 n22301_bdd_4_lut (.I0(n22301), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22304));
    defparam n22301_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_19669 (.I0(comm_index[1]), .I1(n4_adj_1623), 
            .I2(n21296), .I3(comm_index[2]), .O(n22295));
    defparam comm_index_1__bdd_4_lut_19669.LUT_INIT = 16'he4aa;
    SB_LUT4 n22295_bdd_4_lut (.I0(n22295), .I1(n2_adj_1622), .I2(n1_adj_1621), 
            .I3(comm_index[2]), .O(n22298));
    defparam n22295_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12992_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9300), .I3(n12667), .O(n15423));   // zim_main.vhd(595[3] 900[10])
    defparam i12992_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_221 (.I0(comm_state[0]), .I1(n18696), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n18697));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_221.LUT_INIT = 16'heeee;
    SB_CARRY wdtick_cnt_3930_add_4_12 (.CI(n19872), .I0(ICE_GPMO_1), .I1(wdtick_cnt[10]), 
            .CO(n19873));
    SB_DFFR wdtick_cnt_3930__i2 (.Q(wdtick_cnt[2]), .C(clk_16MHz), .D(n143), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i3 (.Q(wdtick_cnt[3]), .C(clk_16MHz), .D(n142), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i4 (.Q(wdtick_cnt[4]), .C(clk_16MHz), .D(n141), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i5 (.Q(wdtick_cnt[5]), .C(clk_16MHz), .D(n140), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i6 (.Q(wdtick_cnt[6]), .C(clk_16MHz), .D(n139), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i7 (.Q(wdtick_cnt[7]), .C(clk_16MHz), .D(n138), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i8 (.Q(wdtick_cnt[8]), .C(clk_16MHz), .D(n137), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i9 (.Q(wdtick_cnt[9]), .C(clk_16MHz), .D(n136), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i10 (.Q(wdtick_cnt[10]), .C(clk_16MHz), .D(n135), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i11 (.Q(wdtick_cnt[11]), .C(clk_16MHz), .D(n134), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i12 (.Q(wdtick_cnt[12]), .C(clk_16MHz), .D(n133), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i13 (.Q(wdtick_cnt[13]), .C(clk_16MHz), .D(n132), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i14 (.Q(wdtick_cnt[14]), .C(clk_16MHz), .D(n131), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i15 (.Q(wdtick_cnt[15]), .C(clk_16MHz), .D(n130), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i16 (.Q(wdtick_cnt[16]), .C(clk_16MHz), .D(n129), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i17 (.Q(wdtick_cnt[17]), .C(clk_16MHz), .D(n128), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i18 (.Q(wdtick_cnt[18]), .C(clk_16MHz), .D(n127), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i19 (.Q(wdtick_cnt[19]), .C(clk_16MHz), .D(n126), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i20 (.Q(wdtick_cnt[20]), .C(clk_16MHz), .D(n125), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i21 (.Q(wdtick_cnt[21]), .C(clk_16MHz), .D(n124), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i22 (.Q(wdtick_cnt[22]), .C(clk_16MHz), .D(n123), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i23 (.Q(wdtick_cnt[23]), .C(clk_16MHz), .D(n122), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i24 (.Q(wdtick_cnt[24]), .C(clk_16MHz), .D(n121), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i25 (.Q(wdtick_cnt[25]), .C(clk_16MHz), .D(n120), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i26 (.Q(wdtick_cnt[26]), .C(clk_16MHz), .D(n119), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3930__i27 (.Q(wdtick_cnt[27]), .C(clk_16MHz), .D(n118), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFF comm_clear_347__i2 (.Q(trig_dds0), .C(clk_32MHz), .D(n20131));   // zim_main.vhd(612[4] 899[13])
    SB_DFF comm_clear_347__i1 (.Q(trig_dds1), .C(clk_32MHz), .D(n15499));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i19114_2_lut (.I0(n17_adj_1532), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21383));
    defparam i19114_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12991_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0] [7]), 
            .I2(n9300), .I3(n12637), .O(n15422));   // zim_main.vhd(595[3] 900[10])
    defparam i12991_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12990_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9300), .I3(n12637), .O(n15421));   // zim_main.vhd(595[3] 900[10])
    defparam i12990_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i20_4_lut (.I0(n21070), .I1(n21383), .I2(comm_state[3]), .I3(n9300), 
            .O(n12059));
    defparam i20_4_lut.LUT_INIT = 16'hf5c5;
    SB_LUT4 i11_4_lut_adj_222 (.I0(buf_dds1[0]), .I1(\comm_buf[1] [0]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20025));   // zim_main.vhd(595[3] 900[10])
    defparam i11_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 i12989_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9300), .I2(\comm_buf[0] [5]), 
            .I3(n12637), .O(n15420));   // zim_main.vhd(595[3] 900[10])
    defparam i12989_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12988_3_lut_4_lut (.I0(buf_cfgRTD[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9300), .I3(n12637), .O(n15419));   // zim_main.vhd(595[3] 900[10])
    defparam i12988_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22433_bdd_4_lut_4_lut (.I0(comm_state_3__N_441[1]), .I1(comm_state[0]), 
            .I2(comm_state[2]), .I3(n22433), .O(n22436));
    defparam n22433_bdd_4_lut_4_lut.LUT_INIT = 16'hf20c;
    SB_LUT4 i12_4_lut_adj_223 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20347));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_LUT4 i12987_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9300), .I3(n12637), .O(n15418));   // zim_main.vhd(595[3] 900[10])
    defparam i12987_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12937_3_lut (.I0(START_MAIN), .I1(\comm_buf[0] [0]), .I2(n10784), 
            .I3(ICE_GPMO_1), .O(n15368));   // zim_main.vhd(595[3] 900[10])
    defparam i12937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22511_bdd_4_lut_4_lut (.I0(eis_end_N_737), .I1(eis_state[0]), 
            .I2(n16882), .I3(n22511), .O(eis_state_2__N_169[0]));   // zim_main.vhd(479[3] 557[10])
    defparam n22511_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 comm_index_1__bdd_4_lut_19649 (.I0(comm_index[1]), .I1(n4_adj_1626), 
            .I2(n21295), .I3(comm_index[2]), .O(n22289));
    defparam comm_index_1__bdd_4_lut_19649.LUT_INIT = 16'he4aa;
    SB_LUT4 i12986_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9300), .I3(n12637), .O(n15417));   // zim_main.vhd(595[3] 900[10])
    defparam i12986_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15452));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15451));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15450));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15449));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15448));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15447));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15446));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15445));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15444));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15443));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15442));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15441));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15440));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15439));   // zim_main.vhd(595[3] 900[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15438));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i15285_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20909), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10_adj_1537));   // zim_main.vhd(470[4] 473[11])
    defparam i15285_2_lut.LUT_INIT = 16'h8888;
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15437));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15436));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15435));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15434));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15433));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15432));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15431));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15430));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15429));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15428));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15427));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15426));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15425));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15424));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15423));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15422));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15421));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 wdtick_cnt_3930_add_4_11_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[9]), .I3(n19871), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15420));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15419));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15418));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15417));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15416));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15415));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15414));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15413));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15412));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15411));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15410));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15409));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15408));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15407));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15406));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15405));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15404));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15403));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15402));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15401));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15400));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15399));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15398));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15397));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15396));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15395));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15394));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15393));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15392));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i4 (.Q(buf_control[4]), .C(clk_32MHz), .D(n15391));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15390));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15389));   // zim_main.vhd(595[3] 900[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15388));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12985_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9300), .I3(n12637), .O(n15416));   // zim_main.vhd(595[3] 900[10])
    defparam i12985_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i4138_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(cs_mask_cnt_1__N_397));
    defparam i4138_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_441[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6650));   // zim_main.vhd(585[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_DFFN eis_end_338 (.Q(eis_end), .C(clk_32MHz), .D(n15384));   // zim_main.vhd(479[3] 557[10])
    SB_DFFN dummy_340 (.Q(TEST_LED), .C(clk_32MHz), .D(n15383));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i5_4_lut_adj_224 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1641));   // zim_main.vhd(470[7:27])
    defparam i5_4_lut_adj_224.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_225 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1641), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20909));   // zim_main.vhd(470[7:27])
    defparam i6_4_lut_adj_225.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_226 (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20909), 
            .I3(ICE_GPMO_1), .O(dds0_mclk_N_721));
    defparam i1_3_lut_adj_226.LUT_INIT = 16'ha6a6;
    SB_LUT4 i24_4_lut (.I0(n17534), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(AC_ADC_SYNC), .O(n11_adj_1608));
    defparam i24_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i19481_3_lut (.I0(eis_end_N_737), .I1(eis_state[1]), .I2(n11_adj_1608), 
            .I3(ICE_GPMO_1), .O(n11793));
    defparam i19481_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i2_2_lut_adj_227 (.I0(wdtick_cnt[0]), .I1(wdtick_cnt[13]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n30_adj_1578));
    defparam i2_2_lut_adj_227.LUT_INIT = 16'h8888;
    SB_LUT4 i16_4_lut (.I0(wdtick_cnt[20]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[18]), 
            .I3(wdtick_cnt[5]), .O(n44_adj_1637));
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
            .I3(wdtick_cnt[14]), .O(n45_adj_1568));
    defparam i17_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12984_3_lut_4_lut (.I0(VAC_FLT1), .I1(\comm_buf[0] [7]), .I2(n9300), 
            .I3(n12623), .O(n15415));   // zim_main.vhd(595[3] 900[10])
    defparam i12984_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i22_4_lut_adj_229 (.I0(wdtick_cnt[23]), .I1(n44_adj_1637), .I2(n30_adj_1578), 
            .I3(wdtick_cnt[10]), .O(n50));
    defparam i22_4_lut_adj_229.LUT_INIT = 16'h8000;
    SB_LUT4 add_156_4_lut (.I0(n14_adj_1590), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19738), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3930_add_4_11 (.CI(n19871), .I0(ICE_GPMO_1), .I1(wdtick_cnt[9]), 
            .CO(n19872));
    SB_LUT4 wdtick_cnt_3930_add_4_10_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[8]), .I3(n19870), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_230 (.I0(adc_state_adj_1718[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_870_adj_1496), .I3(adc_state_adj_1718[0]), .O(n20509));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_adj_230.LUT_INIT = 16'hcce8;
    SB_CARRY wdtick_cnt_3930_add_4_10 (.CI(n19870), .I0(ICE_GPMO_1), .I1(wdtick_cnt[8]), 
            .CO(n19871));
    SB_LUT4 wdtick_cnt_3930_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[7]), .I3(n19869), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_156_4 (.CI(n19738), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19739));
    SB_CARRY wdtick_cnt_3930_add_4_9 (.CI(n19869), .I0(ICE_GPMO_1), .I1(wdtick_cnt[7]), 
            .CO(n19870));
    SB_LUT4 i19242_2_lut_3_lut (.I0(AC_ADC_SYNC), .I1(n7_adj_1566), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n21542));   // zim_main.vhd(385[3] 398[10])
    defparam i19242_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i12_4_lut_adj_231 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20343));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_232 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20335));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_232.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_233 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20331));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3930_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[6]), .I3(n19868), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_234 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20327));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_235 (.I0(adc_state_adj_1718[1]), .I1(DTRIG_N_870_adj_1496), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20984));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_2_lut_adj_235.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_236 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20323));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_LUT4 i26_4_lut (.I0(n45_adj_1568), .I1(n47), .I2(n46), .I3(n48), 
            .O(n54));
    defparam i26_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12_4_lut_adj_237 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20319));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3930_add_4_8 (.CI(n19868), .I0(ICE_GPMO_1), .I1(wdtick_cnt[6]), 
            .CO(n19869));
    SB_LUT4 add_156_3_lut (.I0(n14_adj_1591), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19737), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3930_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[5]), .I3(n19867), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3930_add_4_7 (.CI(n19867), .I0(ICE_GPMO_1), .I1(wdtick_cnt[5]), 
            .CO(n19868));
    SB_LUT4 i12_4_lut_adj_238 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20313));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3930_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[4]), .I3(n19866), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3930_add_4_6 (.CI(n19866), .I0(ICE_GPMO_1), .I1(wdtick_cnt[4]), 
            .CO(n19867));
    SB_LUT4 i12946_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n6232), 
            .I3(ICE_GPMO_1), .O(n15377));   // spi_slave.vhd(47[3] 84[10])
    defparam i12946_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12948_2_lut (.I0(drdy_sync2_adj_1493), .I1(drdy_prev_adj_1494), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n15379));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12948_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12949_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1743[15]), .I2(dds_state_adj_1742[1]), 
            .I3(ICE_GPMO_1), .O(n15380));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7020_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9454));   // zim_main.vhd(612[4] 899[13])
    defparam i7020_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12950_3_lut (.I0(sclk_sync1), .I1(ICE_SPI_SCLK), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15381));   // spi_slave.vhd(47[3] 84[10])
    defparam i12950_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 wdtick_cnt_3930_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[3]), .I3(n19865), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12951_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15382));   // spi_slave.vhd(47[3] 84[10])
    defparam i12951_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12983_3_lut_4_lut (.I0(VAC_FLT0), .I1(\comm_buf[0] [6]), .I2(n9300), 
            .I3(n12623), .O(n15414));   // zim_main.vhd(595[3] 900[10])
    defparam i12983_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i15117_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(CONT_SD));   // zim_main.vhd(568[13:59])
    defparam i15117_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 buf_control_4__I_0_1_lut (.I0(buf_control[4]), .I1(ICE_GPMO_1), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(VDC_RNG0));   // zim_main.vhd(564[16:34])
    defparam buf_control_4__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY wdtick_cnt_3930_add_4_5 (.CI(n19865), .I0(ICE_GPMO_1), .I1(wdtick_cnt[3]), 
            .CO(n19866));
    SB_LUT4 wdtick_cnt_3930_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[2]), .I3(n19864), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3925_1_lut (.I0(wdtick_flag), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6200));   // zim_main.vhd(429[3] 440[10])
    defparam i3925_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY wdtick_cnt_3930_add_4_4 (.CI(n19864), .I0(ICE_GPMO_1), .I1(wdtick_cnt[2]), 
            .CO(n19865));
    SB_LUT4 i1_2_lut_adj_239 (.I0(eis_end_N_737), .I1(tacadc_rst), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n41_adj_1699));
    defparam i1_2_lut_adj_239.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_240 (.I0(n41_adj_1699), .I1(AC_ADC_SYNC), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(n11946));   // zim_main.vhd(479[3] 557[10])
    defparam i2_4_lut_adj_240.LUT_INIT = 16'h5040;
    SB_LUT4 wdtick_cnt_3930_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[1]), .I3(n19863), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3930_add_4_3 (.CI(n19863), .I0(ICE_GPMO_1), .I1(wdtick_cnt[1]), 
            .CO(n19864));
    SB_CARRY add_156_3 (.CI(n19737), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19738));
    SB_LUT4 wdtick_cnt_3930_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n6200), .I2(wdtick_cnt[0]), 
            .I3(ICE_GPMO_1), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3930_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3930_add_4_2 (.CI(ICE_GPMO_1), .I0(n6200), .I1(wdtick_cnt[0]), 
            .CO(n19863));
    SB_LUT4 synccnt_3927_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[7]), .I3(n19862), .O(n38_adj_1557)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 synccnt_3927_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[6]), .I3(n19861), .O(n39_adj_1556)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3927_add_4_8 (.CI(n19861), .I0(ICE_GPMO_1), .I1(synccnt[6]), 
            .CO(n19862));
    SB_LUT4 synccnt_3927_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[5]), .I3(n19860), .O(n40_adj_1555)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14497_3_lut (.I0(n11946), .I1(eis_state[0]), .I2(TEST_LED), 
            .I3(ICE_GPMO_1), .O(n15383));   // zim_main.vhd(292[9:18])
    defparam i14497_3_lut.LUT_INIT = 16'h7272;
    SB_LUT4 i15115_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17534));
    defparam i15115_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12982_3_lut_4_lut (.I0(VAC_OSR1), .I1(n9300), .I2(\comm_buf[0] [5]), 
            .I3(n12623), .O(n15413));   // zim_main.vhd(595[3] 900[10])
    defparam i12982_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i1_4_lut_adj_241 (.I0(eis_state[0]), .I1(eis_end_N_737), .I2(n6_adj_1697), 
            .I3(eis_state[1]), .O(n20942));
    defparam i1_4_lut_adj_241.LUT_INIT = 16'h5133;
    SB_LUT4 i12953_4_lut (.I0(eis_end), .I1(eis_end_N_737), .I2(tacadc_rst), 
            .I3(n20942), .O(n15384));   // zim_main.vhd(479[3] 557[10])
    defparam i12953_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i14463_3_lut_4_lut (.I0(AC_ADC_SYNC), .I1(n7_adj_1566), .I2(eis_end_N_737), 
            .I3(n16881), .O(n16894));   // zim_main.vhd(385[3] 398[10])
    defparam i14463_3_lut_4_lut.LUT_INIT = 16'hfd0d;
    SB_LUT4 i19511_4_lut (.I0(n5992), .I1(n6006), .I2(n9454), .I3(cs_falling_pend_N_715), 
            .O(n10519));   // zim_main.vhd(612[4] 899[13])
    defparam i19511_4_lut.LUT_INIT = 16'h2333;
    SB_LUT4 i12981_3_lut_4_lut (.I0(VAC_OSR0), .I1(\comm_buf[0] [4]), .I2(n9300), 
            .I3(n12623), .O(n15412));   // zim_main.vhd(595[3] 900[10])
    defparam i12981_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12980_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9300), 
            .I3(n12623), .O(n15411));   // zim_main.vhd(595[3] 900[10])
    defparam i12980_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_156_2_lut (.I0(n14_adj_1582), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_3927_add_4_7 (.CI(n19860), .I0(ICE_GPMO_1), .I1(synccnt[5]), 
            .CO(n19861));
    SB_LUT4 add_73_14_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[12]), .I2(ICE_GPMO_1), 
            .I3(n19710), .O(n414)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12954_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n15385));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12954_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12956_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15387));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12956_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 synccnt_3927_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[4]), .I3(n19859), .O(n41_adj_1554)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3927_add_4_6 (.CI(n19859), .I0(ICE_GPMO_1), .I1(synccnt[4]), 
            .CO(n19860));
    SB_CARRY add_156_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19737));
    SB_LUT4 add_155_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10951), 
            .I3(n19736), .O(n7_adj_1594)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 synccnt_3927_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[3]), .I3(n19858), .O(n42_adj_1553)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_155_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10951), 
            .I3(n19735), .O(n7_adj_1596)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_3927_add_4_5 (.CI(n19858), .I0(ICE_GPMO_1), .I1(synccnt[3]), 
            .CO(n19859));
    SB_CARRY add_73_14 (.CI(n19710), .I0(data_cntvec[12]), .I1(ICE_GPMO_1), 
            .CO(n19711));
    SB_CARRY add_72_4 (.CI(n19692), .I0(data_count[2]), .I1(ICE_GPMO_1), 
            .CO(n19693));
    SB_CARRY add_155_9 (.CI(n19735), .I0(data_index[7]), .I1(n10951), 
            .CO(n19736));
    SB_LUT4 synccnt_3927_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[2]), .I3(n19857), .O(n43_adj_1552)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3927_add_4_4 (.CI(n19857), .I0(ICE_GPMO_1), .I1(synccnt[2]), 
            .CO(n19858));
    SB_LUT4 synccnt_3927_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(synccnt[1]), .I3(n19856), .O(n44_adj_1551)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3927_add_4_3 (.CI(n19856), .I0(ICE_GPMO_1), .I1(synccnt[1]), 
            .CO(n19857));
    SB_LUT4 synccnt_3927_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n15), .I2(synccnt[0]), 
            .I3(ICE_GPMO_1), .O(n45_adj_1550)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_3927_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_3927_add_4_2 (.CI(ICE_GPMO_1), .I0(n15), .I1(synccnt[0]), 
            .CO(n19856));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[7]), .I3(n19855), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(n10_adj_1537), .I3(n19854), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_8 (.CI(n19854), .I0(ICE_GPMO_1), 
            .I1(n10_adj_1537), .CO(n19855));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[5]), .I3(n19853), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_155_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10951), 
            .I3(n19734), .O(n7_adj_1598)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_8_lut.LUT_INIT = 16'hA3AC;
    SB_DFF eis_start_cmd_375 (.Q(START_MAIN), .C(clk_32MHz), .D(n15368));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_7 (.CI(n19853), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[5]), .CO(n19854));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[4]), .I3(n19852), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i21_4_lut (.I0(wdtick_cnt[11]), .I1(wdtick_cnt[15]), .I2(wdtick_cnt[19]), 
            .I3(wdtick_cnt[25]), .O(n49));
    defparam i21_4_lut.LUT_INIT = 16'h8000;
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_6 (.CI(n19852), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[4]), .CO(n19853));
    SB_LUT4 add_73_13_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[11]), .I2(ICE_GPMO_1), 
            .I3(n19709), .O(n415)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[3]), .I3(n19851), .O(n42_adj_1536)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_8 (.CI(n19734), .I0(data_index[6]), .I1(n10951), 
            .CO(n19735));
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_5 (.CI(n19851), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[3]), .CO(n19852));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[2]), .I3(n19850), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_242 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9300), 
            .I3(n21), .O(n12157));
    defparam i1_4_lut_adj_242.LUT_INIT = 16'hc0c4;
    SB_LUT4 add_155_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10951), 
            .I3(n19733), .O(n17514)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_4 (.CI(n19850), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[2]), .CO(n19851));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[1]), .I3(n19849), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_3 (.CI(n19849), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[1]), .CO(n19850));
    SB_LUT4 dds0_mclkcnt_i7_3938_add_4_2_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3938_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3938_add_4_2 (.CI(VCC_net), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[0]), .CO(n19849));
    SB_CARRY add_73_13 (.CI(n19709), .I0(data_cntvec[11]), .I1(ICE_GPMO_1), 
            .CO(n19710));
    SB_CARRY add_72_7 (.CI(n19695), .I0(data_count[5]), .I1(ICE_GPMO_1), 
            .CO(n19696));
    SB_CARRY add_155_7 (.CI(n19733), .I0(data_index[5]), .I1(n10951), 
            .CO(n19734));
    SB_CARRY add_72_5 (.CI(n19693), .I0(data_count[3]), .I1(ICE_GPMO_1), 
            .CO(n19694));
    SB_LUT4 add_155_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10951), 
            .I3(n19732), .O(n7_adj_1600)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_155_6 (.CI(n19732), .I0(data_index[4]), .I1(n10951), 
            .CO(n19733));
    SB_LUT4 add_73_12_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[10]), .I2(ICE_GPMO_1), 
            .I3(n19708), .O(n416)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_12 (.CI(n19708), .I0(data_cntvec[10]), .I1(ICE_GPMO_1), 
            .CO(n19709));
    SB_LUT4 add_155_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10951), 
            .I3(n19731), .O(n7_adj_1602)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12965_3_lut (.I0(buf_dds0[3]), .I1(n14_adj_1619), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15396));   // zim_main.vhd(595[3] 900[10])
    defparam i12965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12966_3_lut (.I0(buf_dds0[4]), .I1(n14_adj_1589), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15397));   // zim_main.vhd(595[3] 900[10])
    defparam i12966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12967_3_lut (.I0(buf_dds0[5]), .I1(n14_adj_1618), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15398));   // zim_main.vhd(595[3] 900[10])
    defparam i12967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12968_3_lut (.I0(buf_dds0[6]), .I1(n14_adj_1588), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15399));   // zim_main.vhd(595[3] 900[10])
    defparam i12968_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12969_3_lut (.I0(buf_dds0[7]), .I1(n14_adj_1587), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15400));   // zim_main.vhd(595[3] 900[10])
    defparam i12969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12970_3_lut (.I0(buf_dds0[8]), .I1(n14_adj_1592), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15401));   // zim_main.vhd(595[3] 900[10])
    defparam i12970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_243 (.I0(cmd_rdadctmp_adj_1719[28]), .I1(cmd_rdadctmp_adj_1719[27]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20767));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'hca0a;
    SB_CARRY add_155_5 (.CI(n19731), .I0(data_index[3]), .I1(n10951), 
            .CO(n19732));
    SB_LUT4 add_73_11_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[9]), .I2(ICE_GPMO_1), 
            .I3(n19707), .O(n417)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15114_4_lut (.I0(wdtick_flag), .I1(n49), .I2(n54), .I3(n50), 
            .O(wdtick_flag_N_329));   // zim_main.vhd(435[5] 438[12])
    defparam i15114_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i12979_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9300), 
            .I3(n12623), .O(n15410));   // zim_main.vhd(595[3] 900[10])
    defparam i12979_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_244 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9300), 
            .I3(n17_adj_1532), .O(n12609));
    defparam i1_4_lut_adj_244.LUT_INIT = 16'hc0c4;
    SB_LUT4 i1_4_lut_adj_245 (.I0(n18714), .I1(comm_state[3]), .I2(n9300), 
            .I3(n86), .O(n12623));
    defparam i1_4_lut_adj_245.LUT_INIT = 16'hc0c8;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20025));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12978_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9300), 
            .I3(n12623), .O(n15409));   // zim_main.vhd(595[3] 900[10])
    defparam i12978_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20239));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20089));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12977_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9300), .I3(n12609), .O(n15408));   // zim_main.vhd(595[3] 900[10])
    defparam i12977_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n22547));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22547_bdd_4_lut (.I0(n22547), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n22550));
    defparam n22547_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_11 (.CI(n19707), .I0(data_cntvec[9]), .I1(ICE_GPMO_1), 
            .CO(n19708));
    SB_LUT4 add_73_10_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[8]), .I2(ICE_GPMO_1), 
            .I3(n19706), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1679), 
            .I2(n21661), .I3(comm_cmd[2]), .O(n22541));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY add_73_10 (.CI(n19706), .I0(data_cntvec[8]), .I1(ICE_GPMO_1), 
            .CO(n19707));
    SB_LUT4 add_155_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10951), 
            .I3(n19730), .O(n7_adj_1604)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_155_4 (.CI(n19730), .I0(data_index[2]), .I1(n10951), 
            .CO(n19731));
    SB_LUT4 add_155_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10951), 
            .I3(n19729), .O(n7_adj_1606)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_73_9_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[7]), .I2(ICE_GPMO_1), 
            .I3(n19705), .O(n419)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_155_3 (.CI(n19729), .I0(data_index[1]), .I1(n10951), 
            .CO(n19730));
    SB_CARRY add_73_9 (.CI(n19705), .I0(data_cntvec[7]), .I1(ICE_GPMO_1), 
            .CO(n19706));
    SB_LUT4 add_155_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10951), 
            .I3(VCC_net), .O(n7_adj_1580)) /* synthesis syn_instantiated=1 */ ;
    defparam add_155_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_155_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10951), 
            .CO(n19729));
    SB_LUT4 add_78_17_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[15]), .I2(ICE_GPMO_1), 
            .I3(n19728), .O(n461)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_78_16_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[14]), .I2(ICE_GPMO_1), 
            .I3(n19727), .O(n462)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_8_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[6]), .I2(ICE_GPMO_1), 
            .I3(n19704), .O(n420)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22541_bdd_4_lut (.I0(n22541), .I1(req_data_cnt[7]), .I2(acadc_skipCount[7]), 
            .I3(comm_cmd[2]), .O(n22544));
    defparam n22541_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_78_16 (.CI(n19727), .I0(acadc_skipcnt[14]), .I1(ICE_GPMO_1), 
            .CO(n19728));
    SB_LUT4 add_78_15_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[13]), .I2(ICE_GPMO_1), 
            .I3(n19726), .O(n463)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_8 (.CI(n19704), .I0(data_cntvec[6]), .I1(ICE_GPMO_1), 
            .CO(n19705));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19849 (.I0(comm_cmd[1]), .I1(n19_adj_1692), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22535));
    defparam comm_cmd_1__bdd_4_lut_19849.LUT_INIT = 16'he4aa;
    SB_LUT4 n22535_bdd_4_lut (.I0(n22535), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1691), 
            .I3(comm_cmd[2]), .O(n22538));
    defparam n22535_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_246 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20309));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_247 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20305));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19844 (.I0(comm_cmd[1]), .I1(n26_adj_1685), 
            .I2(n21659), .I3(comm_cmd[2]), .O(n22529));
    defparam comm_cmd_1__bdd_4_lut_19844.LUT_INIT = 16'he4aa;
    SB_LUT4 n22529_bdd_4_lut (.I0(n22529), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22532));
    defparam n22529_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6_4_lut_adj_248 (.I0(synccnt[1]), .I1(synccnt[4]), .I2(synccnt[5]), 
            .I3(synccnt[7]), .O(n14_adj_1639));   // zim_main.vhd(390[7:22])
    defparam i6_4_lut_adj_248.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_249 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20301));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_249.LUT_INIT = 16'hca0a;
    SB_LUT4 i12976_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9300), .I3(n12609), .O(n15407));   // zim_main.vhd(595[3] 900[10])
    defparam i12976_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_0__bdd_4_lut_19854 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22523));
    defparam comm_index_0__bdd_4_lut_19854.LUT_INIT = 16'he4aa;
    SB_CARRY add_78_15 (.CI(n19726), .I0(acadc_skipcnt[13]), .I1(ICE_GPMO_1), 
            .CO(n19727));
    SB_LUT4 add_78_14_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[12]), .I2(ICE_GPMO_1), 
            .I3(n19725), .O(n464)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_7_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[5]), .I2(ICE_GPMO_1), 
            .I3(n19703), .O(n421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_14 (.CI(n19725), .I0(acadc_skipcnt[12]), .I1(ICE_GPMO_1), 
            .CO(n19726));
    SB_LUT4 add_78_13_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[11]), .I2(ICE_GPMO_1), 
            .I3(n19724), .O(n465)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_13 (.CI(n19724), .I0(acadc_skipcnt[11]), .I1(ICE_GPMO_1), 
            .CO(n19725));
    SB_CARRY add_73_7 (.CI(n19703), .I0(data_cntvec[5]), .I1(ICE_GPMO_1), 
            .CO(n19704));
    SB_LUT4 add_78_12_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[10]), .I2(ICE_GPMO_1), 
            .I3(n19723), .O(n466)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_12 (.CI(n19723), .I0(acadc_skipcnt[10]), .I1(ICE_GPMO_1), 
            .CO(n19724));
    SB_LUT4 add_78_11_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[9]), .I2(ICE_GPMO_1), 
            .I3(n19722), .O(n467)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_6_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[4]), .I2(ICE_GPMO_1), 
            .I3(n19702), .O(n422)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_11 (.CI(n19722), .I0(acadc_skipcnt[9]), .I1(ICE_GPMO_1), 
            .CO(n19723));
    SB_LUT4 add_78_10_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[8]), .I2(ICE_GPMO_1), 
            .I3(n19721), .O(n468)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_10 (.CI(n19721), .I0(acadc_skipcnt[8]), .I1(ICE_GPMO_1), 
            .CO(n19722));
    SB_LUT4 i1_2_lut_adj_250 (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n80));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_250.LUT_INIT = 16'h4444;
    SB_LUT4 add_78_9_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[7]), .I2(ICE_GPMO_1), 
            .I3(n19720), .O(n469)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_6 (.CI(n19702), .I0(data_cntvec[4]), .I1(ICE_GPMO_1), 
            .CO(n19703));
    SB_LUT4 n22523_bdd_4_lut (.I0(n22523), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22526));
    defparam n22523_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12975_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9300), .I2(\comm_buf[0] [5]), 
            .I3(n12609), .O(n15406));   // zim_main.vhd(595[3] 900[10])
    defparam i12975_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i1_2_lut_adj_251 (.I0(synccnt[0]), .I1(synccnt[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9));   // zim_main.vhd(390[7:22])
    defparam i1_2_lut_adj_251.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_252 (.I0(n18714), .I1(comm_state[3]), .I2(n9300), 
            .I3(n80), .O(n12637));
    defparam i1_4_lut_adj_252.LUT_INIT = 16'hc8c0;
    SB_LUT4 comm_index_0__bdd_4_lut_19834 (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n22517));
    defparam comm_index_0__bdd_4_lut_19834.LUT_INIT = 16'he4aa;
    SB_LUT4 n22517_bdd_4_lut (.I0(n22517), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n22520));
    defparam n22517_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_73_5_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[3]), .I2(ICE_GPMO_1), 
            .I3(n19701), .O(n423)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_78_9 (.CI(n19720), .I0(acadc_skipcnt[7]), .I1(ICE_GPMO_1), 
            .CO(n19721));
    SB_LUT4 i19045_2_lut_3_lut (.I0(n5), .I1(comm_state[0]), .I2(comm_state_3__N_441[1]), 
            .I3(ICE_GPMO_1), .O(n21507));   // zim_main.vhd(612[4] 899[13])
    defparam i19045_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i12994_3_lut (.I0(acadc_skipCount[3]), .I1(n14_adj_1619), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15425));   // zim_main.vhd(595[3] 900[10])
    defparam i12994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_78_8_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[6]), .I2(ICE_GPMO_1), 
            .I3(n19719), .O(n470)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF eis_stop_374 (.Q(eis_stop), .C(clk_32MHz), .D(n15367));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i4059_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_441[1]), .I3(comm_index[1]), .O(comm_index_2__N_449[1]));   // zim_main.vhd(794[5] 804[12])
    defparam i4059_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i12995_3_lut (.I0(acadc_skipCount[4]), .I1(n14_adj_1589), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15426));   // zim_main.vhd(595[3] 900[10])
    defparam i12995_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12996_3_lut (.I0(acadc_skipCount[5]), .I1(n14_adj_1618), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15427));   // zim_main.vhd(595[3] 900[10])
    defparam i12996_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE eis_adc_trig_339 (.Q(eis_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20489));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i7_4_lut_adj_253 (.I0(n9), .I1(n14_adj_1639), .I2(synccnt[2]), 
            .I3(synccnt[6]), .O(n15));   // zim_main.vhd(390[7:22])
    defparam i7_4_lut_adj_253.LUT_INIT = 16'hfeff;
    SB_LUT4 i12997_3_lut (.I0(acadc_skipCount[6]), .I1(n14_adj_1588), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15428));   // zim_main.vhd(595[3] 900[10])
    defparam i12997_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12998_3_lut (.I0(acadc_skipCount[7]), .I1(n14_adj_1587), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15429));   // zim_main.vhd(595[3] 900[10])
    defparam i12998_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12999_3_lut (.I0(acadc_skipCount[8]), .I1(n14_adj_1592), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15430));   // zim_main.vhd(595[3] 900[10])
    defparam i12999_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(n21651), .I2(n16888), 
            .I3(eis_state[0]), .O(n22511));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 START_SYNC_I_0_1_lut (.I0(START_SYNC), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(START_SYNC_N_283));   // zim_main.vhd(385[6:22])
    defparam START_SYNC_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_adj_254 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9300), 
            .I3(n21), .O(n12667));
    defparam i1_4_lut_adj_254.LUT_INIT = 16'hc0c8;
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20027));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 synccnt_7__I_0_i16_1_lut (.I0(n15), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(synccnt_7__N_292));   // zim_main.vhd(390[7:22])
    defparam synccnt_7__I_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20029));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_159_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1683));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1684));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16066));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13007_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1591), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15438));   // zim_main.vhd(595[3] 900[10])
    defparam i13007_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13008_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1590), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15439));   // zim_main.vhd(595[3] 900[10])
    defparam i13008_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20035));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13009_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1619), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15440));   // zim_main.vhd(595[3] 900[10])
    defparam i13009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12974_3_lut_4_lut (.I0(buf_dds0[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9300), .I3(n12609), .O(n15405));   // zim_main.vhd(595[3] 900[10])
    defparam i12974_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_255 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17083));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_adj_255.LUT_INIT = 16'hbbbb;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16061));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13010_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1589), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15441));   // zim_main.vhd(595[3] 900[10])
    defparam i13010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11393_3_lut (.I0(n22412), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13822));   // zim_main.vhd(612[4] 899[13])
    defparam i11393_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13011_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1618), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15442));   // zim_main.vhd(595[3] 900[10])
    defparam i13011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1561165_i1_3_lut (.I0(n22424), .I1(n22484), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30));
    defparam i1561165_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20041));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13012_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1588), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15443));   // zim_main.vhd(595[3] 900[10])
    defparam i13012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11397_3_lut (.I0(n30), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13826));   // zim_main.vhd(612[4] 899[13])
    defparam i11397_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13013_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1587), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15444));   // zim_main.vhd(595[3] 900[10])
    defparam i13013_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1575));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1575), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_0_i30_3_lut (.I0(n22), .I1(buf_data_vac[1]), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1565));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11401_3_lut (.I0(n30_adj_1565), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13830));   // zim_main.vhd(612[4] 899[13])
    defparam i11401_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13014_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1592), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15445));   // zim_main.vhd(595[3] 900[10])
    defparam i13014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11405_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13834));   // zim_main.vhd(612[4] 899[13])
    defparam i11405_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11409_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13838));   // zim_main.vhd(612[4] 899[13])
    defparam i11409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_256 (.I0(buf_dds1[8]), .I1(\comm_buf[0] [0]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20045));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_256.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_257 (.I0(buf_dds1[7]), .I1(\comm_buf[1] [7]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20043));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 i13015_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1614), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15446));   // zim_main.vhd(595[3] 900[10])
    defparam i13015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11413_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13842));   // zim_main.vhd(612[4] 899[13])
    defparam i11413_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20043));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20045));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20047));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20049));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i13016_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1613), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15447));   // zim_main.vhd(595[3] 900[10])
    defparam i13016_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20053));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22505));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20057));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_258 (.I0(buf_dds1[15]), .I1(\comm_buf[0] [7]), 
            .I2(n12059), .I3(n1_adj_1638), .O(n20059));   // zim_main.vhd(595[3] 900[10])
    defparam i12_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20059));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20107));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20261));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_72_6 (.CI(n19694), .I0(data_count[4]), .I1(ICE_GPMO_1), 
            .CO(n19695));
    SB_LUT4 i12973_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9300), .I3(n12609), .O(n15404));   // zim_main.vhd(595[3] 900[10])
    defparam i12973_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_159_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1688));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20263));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_8 (.CI(n19719), .I0(acadc_skipcnt[6]), .I1(ICE_GPMO_1), 
            .CO(n19720));
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20265));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_7_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[5]), .I2(ICE_GPMO_1), 
            .I3(n19718), .O(n471)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18547_3_lut (.I0(n16_adj_1688), .I1(buf_adcdata_iac[13]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21189));
    defparam i18547_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_78_7 (.CI(n19718), .I0(acadc_skipcnt[5]), .I1(ICE_GPMO_1), 
            .CO(n19719));
    SB_LUT4 mux_159_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1689));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18548_3_lut (.I0(n19_adj_1689), .I1(buf_readRTD[5]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21190));
    defparam i18548_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20267));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_6_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[4]), .I2(ICE_GPMO_1), 
            .I3(n19717), .O(n472)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13017_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1612), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15448));   // zim_main.vhd(595[3] 900[10])
    defparam i13017_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_78_6 (.CI(n19717), .I0(acadc_skipcnt[4]), .I1(ICE_GPMO_1), 
            .CO(n19718));
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20269));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_159_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1690));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20271));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_78_5_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[3]), .I2(ICE_GPMO_1), 
            .I3(n19716), .O(n473)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_5 (.CI(n19701), .I0(data_cntvec[3]), .I1(ICE_GPMO_1), 
            .CO(n19702));
    SB_LUT4 add_73_4_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[2]), .I2(ICE_GPMO_1), 
            .I3(n19700), .O(n424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_4 (.CI(n19700), .I0(data_cntvec[2]), .I1(ICE_GPMO_1), 
            .CO(n19701));
    SB_LUT4 add_73_3_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[1]), .I2(ICE_GPMO_1), 
            .I3(n19699), .O(n425)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20273));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_5 (.CI(n19716), .I0(acadc_skipcnt[3]), .I1(ICE_GPMO_1), 
            .CO(n19717));
    SB_LUT4 add_156_17_lut (.I0(n14_adj_1586), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19751), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_156_16_lut (.I0(n14_adj_1610), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19750), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_78_4_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[2]), .I2(ICE_GPMO_1), 
            .I3(n19715), .O(n474)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20091));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_156_16 (.CI(n19750), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19751));
    SB_LUT4 add_156_15_lut (.I0(n14_adj_1616), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19749), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_15_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20093));   // zim_main.vhd(595[3] 900[10])
    SB_CARRY add_78_4 (.CI(n19715), .I0(acadc_skipcnt[2]), .I1(ICE_GPMO_1), 
            .CO(n19716));
    SB_CARRY add_73_3 (.CI(n19699), .I0(data_cntvec[1]), .I1(ICE_GPMO_1), 
            .CO(n19700));
    SB_LUT4 add_72_5_lut (.I0(ICE_GPMO_1), .I1(data_count[3]), .I2(ICE_GPMO_1), 
            .I3(n19693), .O(n405)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18551_4_lut (.I0(n26_adj_1690), .I1(buf_data_vac[27]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21193));
    defparam i18551_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_2_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_749), 
            .I3(ICE_GPMO_1), .O(n426)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_156_15 (.CI(n19749), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19750));
    SB_CARRY add_73_2 (.CI(ICE_GPMO_1), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_749), 
            .CO(n19699));
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20095));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20097));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i18550_3_lut (.I0(acadc_skipCount[5]), .I1(req_data_cnt[5]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21192));
    defparam i18550_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20075));   // zim_main.vhd(595[3] 900[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20099));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i17172_1_lut (.I0(cs_mask_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1533));   // zim_main.vhd(609[20:31])
    defparam i17172_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(VAC_CLK));   // zim_main.vhd(353[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20087));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12972_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9300), .I3(n12609), .O(n15403));   // zim_main.vhd(595[3] 900[10])
    defparam i12972_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF tacadc_rst_373 (.Q(tacadc_rst), .C(clk_32MHz), .D(n15366));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12971_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9300), .I3(n12609), .O(n15402));   // zim_main.vhd(595[3] 900[10])
    defparam i12971_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19208_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21503));
    defparam i19208_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_159_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n11955), 
            .D(n400), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i13018_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1611), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15449));   // zim_main.vhd(595[3] 900[10])
    defparam i13018_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n11955), 
            .D(n401), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n11955), 
            .D(n402), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n11955), 
            .D(n403), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n11955), 
            .D(n404), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n11955), 
            .D(n405), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n11955), 
            .D(n406), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n11955), 
            .D(n407), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n11955), 
            .D(n411), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n11955), 
            .D(n412), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n11955), 
            .D(n413), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i4626_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[0]), 
            .I3(\comm_buf[1] [0]), .O(n8_adj_1581));
    defparam i4626_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n11955), 
            .D(n414), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n11955), 
            .D(n415), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n11955), 
            .D(n416), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n11955), 
            .D(n417), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i6617_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[4]), 
            .I3(\comm_buf[1] [4]), .O(n8_adj_1601));
    defparam i6617_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n11955), 
            .D(n418), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n11955), 
            .D(n419), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n11955), 
            .D(n420), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n11955), 
            .D(n421), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n11955), 
            .D(n422), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n11955), 
            .D(n423), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n11955), 
            .D(n424), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n11955), 
            .D(n425), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_DFFESS cs_mask_cnt_3932__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n11933), 
            .D(n19946), .S(n14948));   // zim_main.vhd(609[20:31])
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15365));   // zim_main.vhd(595[3] 900[10])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15364));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19496_2_lut (.I0(n12000), .I1(eis_end_N_737), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14958));
    defparam i19496_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19507_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), .I2(eis_end_N_737), 
            .I3(tacadc_rst), .O(n12000));
    defparam i19507_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 i12929_3_lut (.I0(buf_control[0]), .I1(n14_adj_1592), .I2(n12157), 
            .I3(ICE_GPMO_1), .O(n15360));   // zim_main.vhd(595[3] 900[10])
    defparam i12929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19478_4_lut (.I0(comm_state[3]), .I1(n20955), .I2(n42), .I3(n20911), 
            .O(n23_adj_1635));
    defparam i19478_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i19290_2_lut (.I0(n5), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21511));   // zim_main.vhd(612[4] 899[13])
    defparam i19290_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 comm_state_3__I_0_388_Mux_2_i4_3_lut (.I0(n18696), .I1(comm_state_3__N_441[1]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n19890));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_259 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20297));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_388_Mux_2_i6_4_lut (.I0(n19890), .I1(n21511), 
            .I2(comm_state[1]), .I3(comm_state_3__N_441[1]), .O(n6));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_2_i6_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 comm_state_3__I_0_388_Mux_2_i7_3_lut (.I0(n21039), .I1(n6), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n7_adj_1615));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_2_i7_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i13019_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1616), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15450));   // zim_main.vhd(595[3] 900[10])
    defparam i13019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12964_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9300), .I3(n12609), .O(n15395));   // zim_main.vhd(595[3] 900[10])
    defparam i12964_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_158_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15363));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19050_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21317));
    defparam i19050_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19062_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21521));
    defparam i19062_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19219_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21520));
    defparam i19219_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(THERMOSTAT_N_472));   // zim_main.vhd(641[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11951_3_lut (.I0(n22406), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14382));   // zim_main.vhd(612[4] 899[13])
    defparam i11951_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1701));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_158_Mux_2_i26_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1540));   // zim_main.vhd(668[5] 772[14])
    defparam mux_158_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18527_4_lut (.I0(n26_adj_1540), .I1(buf_data_vac[37]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21169));
    defparam i18527_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18528_3_lut (.I0(n22400), .I1(n21169), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21170));
    defparam i18528_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_156_14_lut (.I0(n14_adj_1611), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19748), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_14_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13020_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1610), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15451));   // zim_main.vhd(595[3] 900[10])
    defparam i13020_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_260 (.I0(n17083), .I1(comm_state[2]), .I2(n18699), 
            .I3(comm_state[1]), .O(n10951));   // zim_main.vhd(612[4] 899[13])
    defparam i3_4_lut_adj_260.LUT_INIT = 16'hfffb;
    SB_LUT4 i1563577_i1_3_lut (.I0(n22316), .I1(n21170), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1535));
    defparam i1563577_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11947_3_lut (.I0(n30_adj_1535), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14378));   // zim_main.vhd(612[4] 899[13])
    defparam i11947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1562371_i1_3_lut (.I0(n22430), .I1(n22346), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1574));
    defparam i1562371_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11943_3_lut (.I0(n30_adj_1574), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14374));   // zim_main.vhd(612[4] 899[13])
    defparam i11943_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1561768_i1_3_lut (.I0(n22418), .I1(n22394), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1563));
    defparam i1561768_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11939_3_lut (.I0(n30_adj_1563), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14370));   // zim_main.vhd(612[4] 899[13])
    defparam i11939_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18546_3_lut (.I0(n22448), .I1(n22472), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21188));
    defparam i18546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i106_2_lut (.I0(comm_cmd[0]), .I1(comm_cmd[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n86));
    defparam i106_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12963_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9300), .I3(n12609), .O(n15394));   // zim_main.vhd(595[3] 900[10])
    defparam i12963_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15362));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i1564180_i1_3_lut (.I0(n21188), .I1(n22352), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1538));
    defparam i1564180_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_261 (.I0(n18735), .I1(comm_state[3]), .I2(n9300), 
            .I3(n86), .O(n12693));
    defparam i1_4_lut_adj_261.LUT_INIT = 16'hc0c8;
    SB_LUT4 i11935_3_lut (.I0(n30_adj_1538), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14366));   // zim_main.vhd(612[4] 899[13])
    defparam i11935_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1562974_i1_3_lut (.I0(n22280), .I1(n22496), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1547));
    defparam i1562974_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11931_3_lut (.I0(n30_adj_1547), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14362));   // zim_main.vhd(612[4] 899[13])
    defparam i11931_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12576_2_lut (.I0(n12203), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15002));   // zim_main.vhd(595[3] 900[10])
    defparam i12576_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12962_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9300), .I3(n12157), .O(n15393));   // zim_main.vhd(595[3] 900[10])
    defparam i12962_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2_4_lut_adj_262 (.I0(n21012), .I1(comm_index[0]), .I2(comm_state[1]), 
            .I3(n34), .O(n12200));
    defparam i2_4_lut_adj_262.LUT_INIT = 16'hbfaf;
    SB_LUT4 i1_4_lut_adj_263 (.I0(n12200), .I1(n20968), .I2(n10790), .I3(n21045), 
            .O(n12203));
    defparam i1_4_lut_adj_263.LUT_INIT = 16'h8880;
    SB_LUT4 i1556341_i1_3_lut (.I0(n22358), .I1(n22340), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1715));
    defparam i1556341_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11927_3_lut (.I0(n30_adj_1715), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14358));   // zim_main.vhd(612[4] 899[13])
    defparam i11927_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_78_3_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[1]), .I2(ICE_GPMO_1), 
            .I3(n19714), .O(n475)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1556944_i1_3_lut (.I0(n22310), .I1(n22460), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1708));
    defparam i1556944_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6647_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[1]), 
            .I3(\comm_buf[1] [1]), .O(n8_adj_1607));
    defparam i6647_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i11923_3_lut (.I0(n30_adj_1708), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14354));   // zim_main.vhd(612[4] 899[13])
    defparam i11923_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1557547_i1_3_lut (.I0(n22502), .I1(n22304), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1704));
    defparam i1557547_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11919_3_lut (.I0(n30_adj_1704), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14350));   // zim_main.vhd(612[4] 899[13])
    defparam i11919_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11915_3_lut (.I0(n22382), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14346));   // zim_main.vhd(612[4] 899[13])
    defparam i11915_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1558753_i1_3_lut (.I0(n22538), .I1(n22328), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1694));
    defparam i1558753_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11911_3_lut (.I0(n30_adj_1694), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14342));   // zim_main.vhd(612[4] 899[13])
    defparam i11911_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11907_3_lut (.I0(n22454), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14338));   // zim_main.vhd(612[4] 899[13])
    defparam i11907_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1559959_i1_3_lut (.I0(n22442), .I1(n22532), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1686));
    defparam i1559959_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11903_3_lut (.I0(n30_adj_1686), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14334));   // zim_main.vhd(612[4] 899[13])
    defparam i11903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12583_2_lut (.I0(n12273), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15009));   // zim_main.vhd(595[3] 900[10])
    defparam i12583_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19399_4_lut (.I0(comm_index[1]), .I1(comm_index[2]), .I2(comm_index[0]), 
            .I3(n19295), .O(n21389));
    defparam i19399_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_264 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18696), .I3(comm_cmd[1]), .O(n18735));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_264.LUT_INIT = 16'h0200;
    SB_LUT4 i45_4_lut (.I0(n21391), .I1(n21389), .I2(comm_state[1]), .I3(n20919), 
            .O(n20));
    defparam i45_4_lut.LUT_INIT = 16'hcac0;
    SB_CARRY add_78_3 (.CI(n19714), .I0(acadc_skipcnt[1]), .I1(ICE_GPMO_1), 
            .CO(n19715));
    SB_LUT4 n22505_bdd_4_lut (.I0(n22505), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n21143));
    defparam n22505_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_265 (.I0(comm_state[0]), .I1(n20968), .I2(n21012), 
            .I3(n20), .O(n12273));
    defparam i1_4_lut_adj_265.LUT_INIT = 16'hc4c0;
    SB_LUT4 i6587_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[7]), 
            .I3(\comm_buf[1] [7]), .O(n8_adj_1597));
    defparam i6587_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i15096_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[5]), 
            .I3(\comm_buf[1] [5]), .O(n17516));
    defparam i15096_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i13021_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1586), .I2(n12693), 
            .I3(ICE_GPMO_1), .O(n15452));   // zim_main.vhd(595[3] 900[10])
    defparam i13021_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1560562_i1_3_lut (.I0(n22370), .I1(n22544), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1680));
    defparam i1560562_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11493_3_lut (.I0(n30_adj_1680), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13924));   // zim_main.vhd(612[4] 899[13])
    defparam i11493_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1673));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1673), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1675));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_1_i30_3_lut (.I0(n22_adj_1675), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1676));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11489_3_lut (.I0(n30_adj_1676), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13920));   // zim_main.vhd(612[4] 899[13])
    defparam i11489_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1666));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1666), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1667));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_2_i30_3_lut (.I0(n22_adj_1667), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1668));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11899_3_lut (.I0(n30_adj_1668), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14330));   // zim_main.vhd(612[4] 899[13])
    defparam i11899_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1702));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1663));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1663), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1664));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_3_i30_3_lut (.I0(n22_adj_1664), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1665));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11895_3_lut (.I0(n30_adj_1665), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14326));   // zim_main.vhd(612[4] 899[13])
    defparam i11895_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1658));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1658), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1659));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_4_i30_3_lut (.I0(n22_adj_1659), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1661));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11891_3_lut (.I0(n30_adj_1661), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14322));   // zim_main.vhd(612[4] 899[13])
    defparam i11891_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1655));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1655), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1656));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_5_i30_3_lut (.I0(n22_adj_1656), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1657));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11887_3_lut (.I0(n30_adj_1657), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14318));   // zim_main.vhd(612[4] 899[13])
    defparam i11887_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1652));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1652), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1653));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_6_i30_3_lut (.I0(n22_adj_1653), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1654));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11883_3_lut (.I0(n30_adj_1654), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14314));   // zim_main.vhd(612[4] 899[13])
    defparam i11883_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12590_2_lut (.I0(n12336), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15016));   // zim_main.vhd(595[3] 900[10])
    defparam i12590_2_lut.LUT_INIT = 16'h8888;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15361));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i46_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n26_adj_1497));
    defparam i46_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i19123_4_lut (.I0(n26_adj_1497), .I1(n20919), .I2(n17), .I3(comm_cmd[3]), 
            .O(n21396));
    defparam i19123_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i47_4_lut (.I0(n21396), .I1(n4_adj_1630), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n21_adj_1631));
    defparam i47_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_156_14 (.CI(n19748), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19749));
    SB_LUT4 i1_4_lut_adj_266 (.I0(comm_state[0]), .I1(n20968), .I2(n21012), 
            .I3(n21_adj_1631), .O(n12336));
    defparam i1_4_lut_adj_266.LUT_INIT = 16'hc4c0;
    SB_LUT4 i12961_3_lut_4_lut (.I0(AMPV_POW), .I1(n9300), .I2(\comm_buf[0] [5]), 
            .I3(n12157), .O(n15392));   // zim_main.vhd(595[3] 900[10])
    defparam i12961_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_DFFESR comm_clear_347__i5 (.Q(comm_clear), .C(clk_32MHz), .E(n10), 
            .D(n5994), .R(n6006));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 i6597_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[6]), 
            .I3(\comm_buf[1] [6]), .O(n8_adj_1599));
    defparam i6597_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 mux_160_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1649));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_160_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1649), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1650));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_clear_347__i3 (.Q(flagcntwd), .C(clk_32MHz), .E(n7_adj_1530), 
            .D(n5972), .R(n6006));   // zim_main.vhd(612[4] 899[13])
    SB_LUT4 mux_160_Mux_7_i30_3_lut (.I0(n22_adj_1650), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1651));   // zim_main.vhd(668[5] 772[14])
    defparam mux_160_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11879_3_lut (.I0(n30_adj_1651), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14310));   // zim_main.vhd(612[4] 899[13])
    defparam i11879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11875_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14306));   // zim_main.vhd(612[4] 899[13])
    defparam i11875_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11871_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14302));   // zim_main.vhd(612[4] 899[13])
    defparam i11871_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11867_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14298));   // zim_main.vhd(612[4] 899[13])
    defparam i11867_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11863_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14294));   // zim_main.vhd(612[4] 899[13])
    defparam i11863_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11859_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14290));   // zim_main.vhd(612[4] 899[13])
    defparam i11859_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11855_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14286));   // zim_main.vhd(612[4] 899[13])
    defparam i11855_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12960_3_lut_4_lut (.I0(buf_control[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9300), .I3(n12157), .O(n15391));   // zim_main.vhd(595[3] 900[10])
    defparam i12960_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12597_2_lut (.I0(n12378), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15023));   // zim_main.vhd(595[3] 900[10])
    defparam i12597_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_267 (.I0(n2_adj_1716), .I1(n4_adj_1630), .I2(comm_state[1]), 
            .I3(n41_adj_1634), .O(n11_adj_1671));
    defparam i18_4_lut_adj_267.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_adj_268 (.I0(n11_adj_1671), .I1(n20968), .I2(n21012), 
            .I3(ICE_GPMO_1), .O(n12378));
    defparam i1_3_lut_adj_268.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11851_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14282));   // zim_main.vhd(612[4] 899[13])
    defparam i11851_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11847_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14278));   // zim_main.vhd(612[4] 899[13])
    defparam i11847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6577_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[8]), 
            .I3(\comm_buf[0] [0]), .O(n8_adj_1595));
    defparam i6577_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i11843_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14274));   // zim_main.vhd(612[4] 899[13])
    defparam i11843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11839_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14270));   // zim_main.vhd(612[4] 899[13])
    defparam i11839_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11835_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14266));   // zim_main.vhd(612[4] 899[13])
    defparam i11835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11831_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14262));   // zim_main.vhd(612[4] 899[13])
    defparam i11831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11827_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14258));   // zim_main.vhd(612[4] 899[13])
    defparam i11827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12604_2_lut (.I0(n12420), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15030));   // zim_main.vhd(595[3] 900[10])
    defparam i12604_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_269 (.I0(n2_adj_1716), .I1(n19316), .I2(comm_state[1]), 
            .I3(n19892), .O(n11_adj_1670));
    defparam i18_4_lut_adj_269.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_270 (.I0(n11_adj_1670), .I1(n20968), .I2(n21012), 
            .I3(ICE_GPMO_1), .O(n12420));
    defparam i1_3_lut_adj_270.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11823_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14254));   // zim_main.vhd(612[4] 899[13])
    defparam i11823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11819_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14250));   // zim_main.vhd(612[4] 899[13])
    defparam i11819_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11815_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14246));   // zim_main.vhd(612[4] 899[13])
    defparam i11815_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11811_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14242));   // zim_main.vhd(612[4] 899[13])
    defparam i11811_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11807_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14238));   // zim_main.vhd(612[4] 899[13])
    defparam i11807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11803_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14234));   // zim_main.vhd(612[4] 899[13])
    defparam i11803_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11799_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14230));   // zim_main.vhd(612[4] 899[13])
    defparam i11799_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12959_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9300), 
            .I3(n12157), .O(n15390));   // zim_main.vhd(595[3] 900[10])
    defparam i12959_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12958_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9300), 
            .I3(n12157), .O(n15389));   // zim_main.vhd(595[3] 900[10])
    defparam i12958_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_271 (.I0(comm_state[0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n41_adj_1634));   // zim_main.vhd(612[4] 899[13])
    defparam i1_2_lut_adj_271.LUT_INIT = 16'h4444;
    SB_LUT4 i12957_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9300), 
            .I3(n12157), .O(n15388));   // zim_main.vhd(595[3] 900[10])
    defparam i12957_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12611_2_lut (.I0(n12462), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15037));   // zim_main.vhd(595[3] 900[10])
    defparam i12611_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18_4_lut_adj_272 (.I0(n2_adj_1716), .I1(n19316), .I2(comm_state[1]), 
            .I3(n41_adj_1634), .O(n11_adj_1583));
    defparam i18_4_lut_adj_272.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_adj_273 (.I0(n11_adj_1583), .I1(n20968), .I2(n21012), 
            .I3(ICE_GPMO_1), .O(n12462));
    defparam i1_3_lut_adj_273.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11795_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14226));   // zim_main.vhd(612[4] 899[13])
    defparam i11795_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1629));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18503_4_lut (.I0(n4_adj_1629), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21145));
    defparam i18503_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18504_3_lut (.I0(n22286), .I1(n21145), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21146));
    defparam i18504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1628));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18647_4_lut (.I0(n4_adj_1628), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21289));
    defparam i18647_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18648_3_lut (.I0(n22550), .I1(n21289), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21290));
    defparam i18648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_167_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1627));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18638_4_lut (.I0(n4_adj_1627), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21280));
    defparam i18638_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18639_3_lut (.I0(n22520), .I1(n21280), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21281));
    defparam i18639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12625_3_lut (.I0(n12558), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n15051));   // zim_main.vhd(595[3] 900[10])
    defparam i12625_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 mux_167_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1620));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18641_4_lut (.I0(n4_adj_1620), .I1(\comm_buf[6] [7]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21283));
    defparam i18641_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18642_3_lut (.I0(n22526), .I1(n21283), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21284));
    defparam i18642_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12558), 
            .D(n21284), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12558), 
            .D(n22298), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12558), 
            .D(n22322), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12558), 
            .D(n22292), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12558), 
            .D(n21281), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12558), 
            .D(n21290), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12558), 
            .D(n21146), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12462), 
            .D(n14226), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19410_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21295));
    defparam i19410_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_274 (.I0(cmd_rdadctmp_adj_1719[11]), .I1(cmd_rdadctmp_adj_1719[10]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20721));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_2_lut_3_lut (.I0(n16881), .I1(acadc_dtrig_i), .I2(acadc_dtrig_v), 
            .I3(ICE_GPMO_1), .O(n6_adj_1697));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12462), 
            .D(n14230), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12462), 
            .D(n14234), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12462), 
            .D(n14238), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12462), 
            .D(n14242), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12462), 
            .D(n14246), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12462), 
            .D(n14250), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 mux_167_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1626));   // zim_main.vhd(778[30:40])
    defparam mux_167_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12420), 
            .D(n14254), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12420), 
            .D(n14258), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12420), 
            .D(n14262), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12420), 
            .D(n14266), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12420), 
            .D(n14270), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12420), 
            .D(n14274), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i3804_3_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n5992));   // zim_main.vhd(245[9:19])
    defparam i3804_3_lut_3_lut.LUT_INIT = 16'h1a1a;
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12420), 
            .D(n14278), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12378), 
            .D(n14282), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12378), 
            .D(n14286), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12378), 
            .D(n14290), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12378), 
            .D(n14294), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12378), 
            .D(n14298), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_156_13_lut (.I0(n14_adj_1612), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19747), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_13_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12378), 
            .D(n14302), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12378), 
            .D(n14306), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i3803_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n6006));   // zim_main.vhd(595[3] 900[10])
    defparam i3803_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12336), 
            .D(n14310), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12336), 
            .D(n14314), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12336), 
            .D(n14318), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12945_3_lut_4_lut (.I0(dds_state_adj_1742[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1742[1]), .I3(dds_state_adj_1742[0]), .O(n15376));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12945_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12336), 
            .D(n14322), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12336), 
            .D(n14326), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19839 (.I0(comm_cmd[1]), .I1(n19_adj_1702), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22499));
    defparam comm_cmd_1__bdd_4_lut_19839.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12336), 
            .D(n14330), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12336), 
            .D(n13920), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12944_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15375));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12944_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12273), 
            .D(n13924), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12273), 
            .D(n14334), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12273), 
            .D(n14338), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12273), 
            .D(n14342), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12273), 
            .D(n14346), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12273), 
            .D(n14350), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12273), 
            .D(n14354), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12203), 
            .D(n14358), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12203), 
            .D(n14362), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12203), 
            .D(n14366), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12203), 
            .D(n14370), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12203), 
            .D(n14374), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12203), 
            .D(n14378), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 n22499_bdd_4_lut (.I0(n22499), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1701), 
            .I3(comm_cmd[2]), .O(n22502));
    defparam n22499_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12203), 
            .D(n14382), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12161), 
            .D(THERMOSTAT_N_472), .R(n6006));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12102), 
            .D(n30_adj_1579), .R(n14990));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19173_3_lut (.I0(n13), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21488));
    defparam i19173_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19815 (.I0(comm_cmd[1]), .I1(n21520), 
            .I2(n21521), .I3(comm_cmd[2]), .O(n22493));
    defparam comm_cmd_1__bdd_4_lut_19815.LUT_INIT = 16'he4aa;
    SB_LUT4 n22493_bdd_4_lut (.I0(n22493), .I1(n21317), .I2(n23), .I3(comm_cmd[2]), 
            .O(n22496));
    defparam n22493_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_adj_1718[0]), .I1(VAC_SCLK), .I2(DTRIG_N_870_adj_1496), 
            .I3(adc_state_adj_1718[1]), .O(n20507));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_4_lut_4_lut_adj_275 (.I0(adc_state[1]), .I1(acadc_dtrig_i), 
            .I2(DTRIG_N_870), .I3(adc_state[0]), .O(n20505));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_275.LUT_INIT = 16'hcce8;
    SB_LUT4 i19_4_lut_adj_276 (.I0(n10951), .I1(n21488), .I2(comm_state[3]), 
            .I3(n9300), .O(n12518));
    defparam i19_4_lut_adj_276.LUT_INIT = 16'hf5c5;
    SB_LUT4 i1_4_lut_4_lut_adj_277 (.I0(adc_state[1]), .I1(IAC_SCLK), .I2(DTRIG_N_870), 
            .I3(adc_state[0]), .O(n20503));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_277.LUT_INIT = 16'hc4d8;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12092), 
            .D(comm_index_2__N_449[2]), .R(n17015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12092), 
            .D(comm_index_2__N_449[1]), .R(n17015));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_278 (.I0(cmd_rdadctmp_adj_1719[10]), .I1(cmd_rdadctmp_adj_1719[9]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20719));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_278.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n23_adj_1635), 
            .D(n7_adj_1615), .R(comm_state[3]));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i19488_4_lut (.I0(n6006), .I1(n5992), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n7_adj_1530));
    defparam i19488_4_lut.LUT_INIT = 16'habbb;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15360));   // zim_main.vhd(595[3] 900[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n12000), .D(n461), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15410_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1582));   // zim_main.vhd(612[4] 899[13])
    defparam i15410_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_adj_279 (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n12_adj_1531));
    defparam i1_3_lut_adj_279.LUT_INIT = 16'hbfbf;
    SB_LUT4 i19491_4_lut (.I0(comm_state[0]), .I1(n6006), .I2(n5992), 
            .I3(n12_adj_1531), .O(n10));
    defparam i19491_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 i6627_3_lut_4_lut (.I0(n18699), .I1(n84), .I2(data_index[3]), 
            .I3(\comm_buf[1] [3]), .O(n8_adj_1603));
    defparam i6627_3_lut_4_lut.LUT_INIT = 16'hf1e0;
    SB_LUT4 i12_4_lut_adj_280 (.I0(cmd_rdadctmp_adj_1719[9]), .I1(cmd_rdadctmp_adj_1719[8]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20717));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_280.LUT_INIT = 16'hca0a;
    SB_LUT4 i12930_3_lut (.I0(buf_dds0[0]), .I1(n14_adj_1582), .I2(n12609), 
            .I3(ICE_GPMO_1), .O(n15361));   // zim_main.vhd(595[3] 900[10])
    defparam i12930_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_281 (.I0(cmd_rdadctmp_adj_1719[8]), .I1(cmd_rdadctmp_adj_1719[7]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20715));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_281.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_282 (.I0(cmd_rdadctmp_adj_1719[7]), .I1(cmd_rdadctmp_adj_1719[6]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20713));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_282.LUT_INIT = 16'hca0a;
    SB_LUT4 i12381_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(n1_adj_1638));   // zim_main.vhd(612[4] 899[13])
    defparam i12381_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19820 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(START_MAIN), .I3(comm_cmd[1]), .O(n22487));
    defparam comm_cmd_0__bdd_4_lut_19820.LUT_INIT = 16'he4aa;
    SB_LUT4 i18429_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n21070));
    defparam i18429_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i15367_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1589));   // zim_main.vhd(612[4] 899[13])
    defparam i15367_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n22487_bdd_4_lut (.I0(n22487), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n21182));
    defparam n22487_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_283 (.I0(comm_length[2]), .I1(comm_index[0]), .I2(comm_index[2]), 
            .I3(comm_length[0]), .O(n4));   // zim_main.vhd(813[9:33])
    defparam i1_4_lut_adj_283.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_4_lut_adj_284 (.I0(comm_state[3]), .I1(n9300), .I2(n7_adj_1458), 
            .I3(n8), .O(n12486));
    defparam i1_4_lut_4_lut_adj_284.LUT_INIT = 16'hd888;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19810 (.I0(comm_cmd[1]), .I1(n26), .I2(n21503), 
            .I3(comm_cmd[2]), .O(n22481));
    defparam comm_cmd_1__bdd_4_lut_19810.LUT_INIT = 16'he4aa;
    SB_LUT4 n22481_bdd_4_lut (.I0(n22481), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22484));
    defparam n22481_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_3_lut_adj_285 (.I0(comm_index[1]), .I1(n4), .I2(comm_length[1]), 
            .I3(ICE_GPMO_1), .O(n5));   // zim_main.vhd(813[9:33])
    defparam i2_3_lut_adj_285.LUT_INIT = 16'hdede;
    SB_LUT4 i12_4_lut_adj_286 (.I0(cmd_rdadctmp_adj_1719[6]), .I1(cmd_rdadctmp_adj_1719[5]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20711));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_286.LUT_INIT = 16'hca0a;
    SB_LUT4 i15371_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1592));   // zim_main.vhd(612[4] 899[13])
    defparam i15371_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(comm_index[1]), .I1(comm_cmd[7]), 
            .I2(n1_adj_1633), .I3(n19892), .O(n7_adj_1458));   // zim_main.vhd(595[3] 900[10])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i1_2_lut_adj_287 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12461));
    defparam i1_2_lut_adj_287.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_288 (.I0(cmd_rdadctmp_adj_1719[5]), .I1(cmd_rdadctmp_adj_1719[4]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20709));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_288.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_289 (.I0(cmd_rdadctmp_adj_1719[4]), .I1(cmd_rdadctmp_adj_1719[3]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20707));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_289.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_290 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13210), 
            .I3(n1_adj_1700), .O(n20293));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_290.LUT_INIT = 16'hca0a;
    SB_LUT4 i15352_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1619));   // zim_main.vhd(612[4] 899[13])
    defparam i15352_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_291 (.I0(comm_index[1]), .I1(comm_cmd[7]), 
            .I2(n1_adj_1633), .I3(comm_index[2]), .O(n4_adj_1630));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_4_lut_adj_291.LUT_INIT = 16'h0020;
    SB_CARRY add_156_13 (.CI(n19747), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19748));
    SB_LUT4 add_72_10_lut (.I0(ICE_GPMO_1), .I1(data_count[8]), .I2(ICE_GPMO_1), 
            .I3(n19698), .O(n400)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15365_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1587));   // zim_main.vhd(612[4] 899[13])
    defparam i15365_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_72_3_lut (.I0(ICE_GPMO_1), .I1(data_count[1]), .I2(ICE_GPMO_1), 
            .I3(n19691), .O(n407)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n12000), .D(n462), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i19391_2_lut_3_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), 
            .I2(eis_end_N_737), .I3(ICE_GPMO_1), .O(n21651));
    defparam i19391_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 mux_159_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1677));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_159_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1678));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n12000), .D(n463), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15366_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1588));   // zim_main.vhd(612[4] 899[13])
    defparam i15366_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_72_6_lut (.I0(ICE_GPMO_1), .I1(data_count[4]), .I2(ICE_GPMO_1), 
            .I3(n19694), .O(n404)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_78_2_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_749), 
            .I3(ICE_GPMO_1), .O(n476)) /* synthesis syn_instantiated=1 */ ;
    defparam add_78_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n10790), .O(n12095));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hdfcf;
    SB_LUT4 i1_2_lut_3_lut_adj_292 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n17));
    defparam i1_2_lut_3_lut_adj_292.LUT_INIT = 16'h2020;
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n12000), .D(n464), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i19379_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21639));
    defparam i19379_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19805 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22469));
    defparam comm_cmd_0__bdd_4_lut_19805.LUT_INIT = 16'he4aa;
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n12000), .D(n465), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 n22469_bdd_4_lut (.I0(n22469), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n22472));
    defparam n22469_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_159_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1707));   // zim_main.vhd(668[5] 772[14])
    defparam mux_159_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n12000), .D(n466), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n12000), .D(n467), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n12000), .D(n468), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i15353_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1618));   // zim_main.vhd(612[4] 899[13])
    defparam i15353_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n12000), .D(n469), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n12000), .D(n470), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n12000), .D(n471), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n12000), .D(n472), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n12000), .D(n473), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n12000), .D(n474), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n12000), .D(n475), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n11955), 
            .D(n408), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i17245_1_lut (.I0(clk_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1564));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17245_1_lut.LUT_INIT = 16'h5555;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n11955), 
            .D(n426), .R(n15344));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i12_4_lut_adj_293 (.I0(cmd_rdadctmp_adj_1719[3]), .I1(cmd_rdadctmp_adj_1719[2]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20705));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_293.LUT_INIT = 16'hca0a;
    SB_DFFSR clk_cnt_3928_3929__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15_adj_1564), 
            .R(n17606));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i15287_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n5972));   // zim_main.vhd(612[4] 899[13])
    defparam i15287_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19791 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22463));
    defparam comm_cmd_0__bdd_4_lut_19791.LUT_INIT = 16'he4aa;
    SB_LUT4 n22463_bdd_4_lut (.I0(n22463), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n21197));
    defparam n22463_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19800 (.I0(comm_cmd[1]), .I1(n26_adj_1707), 
            .I2(n21639), .I3(comm_cmd[2]), .O(n22457));
    defparam comm_cmd_1__bdd_4_lut_19800.LUT_INIT = 16'he4aa;
    SB_DFFESS cs_mask_cnt_3932__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n11933), 
            .D(n15_adj_1533), .S(n14948));   // zim_main.vhd(609[20:31])
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n17015));   // zim_main.vhd(245[9:19])
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'ha9a8;
    GND i1 (.Y(ICE_GPMO_1));
    SB_LUT4 i1_2_lut_3_lut_adj_294 (.I0(eis_end_N_737), .I1(acadc_dtrig_v), 
            .I2(acadc_dtrig_i), .I3(ICE_GPMO_1), .O(n16888));   // zim_main.vhd(479[3] 557[10])
    defparam i1_2_lut_3_lut_adj_294.LUT_INIT = 16'hbfbf;
    SB_LUT4 n22457_bdd_4_lut (.I0(n22457), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22460));
    defparam n22457_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_295 (.I0(cmd_rdadctmp_adj_1719[2]), .I1(cmd_rdadctmp_adj_1719[1]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20697));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_295.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_296 (.I0(eis_state[0]), .I1(eis_end_N_737), 
            .I2(tacadc_rst), .I3(eis_state[1]), .O(n11955));
    defparam i1_3_lut_4_lut_adj_296.LUT_INIT = 16'h0203;
    SB_LUT4 i1_2_lut_adj_297 (.I0(comm_state[1]), .I1(comm_state_3__N_441[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21039));
    defparam i1_2_lut_adj_297.LUT_INIT = 16'hdddd;
    SB_LUT4 i19122_3_lut_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[2]), .O(n21391));
    defparam i19122_3_lut_4_lut_4_lut.LUT_INIT = 16'hfd79;
    SB_LUT4 i1_2_lut_3_lut_adj_298 (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(n42));
    defparam i1_2_lut_3_lut_adj_298.LUT_INIT = 16'hfdfd;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n21192), .I2(n21193), 
            .I3(comm_cmd[3]), .O(n22451));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 add_156_12_lut (.I0(n14_adj_1613), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19746), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_12_lut.LUT_INIT = 16'hA3AC;
    ADC_ADS1252 ADC_VDC (.GND_net(ICE_GPMO_1), .adc_state({adc_state_adj_1764[3], 
            Open_0, Open_1, Open_2}), .\adc_state_3__N_1289[0] (VDC_SDO), 
            .\adc_state[2] (adc_state_adj_1764[2]), .VDC_SCLK(VDC_SCLK), 
            .VDC_CLK(VDC_CLK), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), .VCC_net(VCC_net), 
            .n20175(n20175), .cmd_rdadctmp({Open_3, cmd_rdadctmp_adj_1765[22:1], 
            Open_4}), .n20177(n20177), .n20179(n20179), .n20181(n20181), 
            .n20183(n20183), .n20185(n20185), .n20187(n20187), .n20189(n20189), 
            .n20191(n20191), .n20193(n20193), .n20195(n20195), .n20197(n20197), 
            .n20199(n20199), .n20201(n20201), .n20203(n20203), .n20205(n20205), 
            .n20207(n20207), .\buf_adcdata_vac[23] (buf_adcdata_vac[23]), 
            .buf_adcdata_vdc({buf_adcdata_vdc}), .\comm_cmd[0] (comm_cmd[0]), 
            .n19(n19_adj_1711), .n20209(n20209), .n20211(n20211), .n20213(n20213), 
            .n20215(n20215), .n20217(n20217), .n20381(n20381), .n20383(n20383), 
            .n20385(n20385), .n20405(n20405), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), 
            .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), .n20407(n20407), .n20409(n20409), 
            .n20411(n20411), .n20413(n20413), .n20415(n20415), .n20417(n20417), 
            .n20419(n20419), .n20421(n20421), .n20423(n20423), .n20425(n20425), 
            .n20427(n20427), .n20429(n20429), .n20431(n20431), .n20433(n20433), 
            .n20435(n20435), .n20437(n20437), .n20439(n20439), .n20441(n20441), 
            .n20443(n20443), .n13352(n13352), .n11919(n11919), .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), 
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
            .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1765[0]), .n20249(n20249), 
            .n20475(n20475), .clk_16MHz(clk_16MHz));   // zim_main.vhd(989[12:23])
    SB_LUT4 n22451_bdd_4_lut (.I0(n22451), .I1(n21190), .I2(n21189), .I3(comm_cmd[3]), 
            .O(n22454));
    defparam n22451_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_299 (.I0(cs_sync1), .I1(cs_sync2), 
            .I2(cs_mask_cnt[0]), .I3(cs_mask_cnt[1]), .O(n11933));   // zim_main.vhd(603[8:37])
    defparam i1_2_lut_3_lut_4_lut_adj_299.LUT_INIT = 16'hfff4;
    SB_LUT4 i29_3_lut_4_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n11_adj_1567));   // zim_main.vhd(292[9:18])
    defparam i29_3_lut_4_lut.LUT_INIT = 16'h0f88;
    SB_LUT4 i12517_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n14948));   // zim_main.vhd(603[8:37])
    defparam i12517_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i12_4_lut_adj_300 (.I0(cmd_rdadctmp_adj_1719[1]), .I1(cmd_rdadctmp_adj_1719[0]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20695));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_300.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_3_lut_4_lut_adj_301 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12092));
    defparam i1_3_lut_3_lut_4_lut_adj_301.LUT_INIT = 16'ha9e8;
    SB_CARRY add_72_3 (.CI(n19691), .I0(data_count[1]), .I1(ICE_GPMO_1), 
            .CO(n19692));
    SB_CARRY add_72_2 (.CI(ICE_GPMO_1), .I0(data_count[0]), .I1(iac_raw_buf_N_749), 
            .CO(n19691));
    SB_LUT4 i12_4_lut_adj_302 (.I0(cmd_rdadctmp_adj_1719[12]), .I1(cmd_rdadctmp_adj_1719[11]), 
            .I2(n12893), .I3(adc_state_adj_1718[0]), .O(n20723));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_302.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_303 (.I0(n21039), .I1(comm_state[0]), .I2(n12461), 
            .I3(comm_data_vld), .O(n12072));
    defparam i2_4_lut_adj_303.LUT_INIT = 16'hfbfa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19786 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22445));
    defparam comm_cmd_0__bdd_4_lut_19786.LUT_INIT = 16'he4aa;
    SB_CARRY add_156_12 (.CI(n19746), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19747));
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_304 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12161));
    defparam i1_4_lut_4_lut_4_lut_adj_304.LUT_INIT = 16'ha8ac;
    ADC_MAX31865 RTD (.GND_net(ICE_GPMO_1), .adc_state({adc_state_adj_1761[3], 
            Open_5, adc_state_adj_1761[1], Open_6}), .\adc_state[2] (adc_state_adj_1761[2]), 
            .n13210(n13210), .RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .buf_cfgRTD({buf_cfgRTD}), .n20061(n20061), .VCC_net(VCC_net), 
            .adress({Open_7, adress[6:1], Open_8}), .n20063(n20063), 
            .n20065(n20065), .n20067(n20067), .n20069(n20069), .n20071(n20071), 
            .n20293(n20293), .read_buf({read_buf}), .n20297(n20297), .n20301(n20301), 
            .n20305(n20305), .n20309(n20309), .n20313(n20313), .n20319(n20319), 
            .n20323(n20323), .n20327(n20327), .n20331(n20331), .n20335(n20335), 
            .buf_readRTD({buf_readRTD}), .n13286(n13286), .RTD_DRDY(RTD_DRDY), 
            .n20339(n20339), .n20343(n20343), .n20347(n20347), .n20351(n20351), 
            .n20353(n20353), .n20355(n20355), .n20357(n20357), .n20359(n20359), 
            .n20363(n20363), .n20365(n20365), .n20367(n20367), .n20369(n20369), 
            .n20371(n20371), .n20373(n20373), .n20375(n20375), .n20377(n20377), 
            .n20379(n20379), .n1(n1_adj_1700), .n20471(n20471), .n20473(n20473), 
            .n13076(n13076), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(975[8:20])
    SB_LUT4 i1_2_lut_3_lut_adj_305 (.I0(comm_index[1]), .I1(n19295), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n19316));   // zim_main.vhd(595[3] 900[10])
    defparam i1_2_lut_3_lut_adj_305.LUT_INIT = 16'h4040;
    SB_LUT4 i12931_3_lut (.I0(IAC_OSR0), .I1(n14_adj_1592), .I2(n12623), 
            .I3(ICE_GPMO_1), .O(n15362));   // zim_main.vhd(595[3] 900[10])
    defparam i12931_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_306 (.I0(comm_index[1]), .I1(n19295), .I2(comm_index[2]), 
            .I3(comm_state[0]), .O(n34));   // zim_main.vhd(595[3] 900[10])
    defparam i2_3_lut_4_lut_adj_306.LUT_INIT = 16'h0004;
    SB_LUT4 i12_4_lut_adj_307 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20693));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_307.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n20968));
    defparam i1_2_lut_3_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i12_4_lut_adj_308 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20691));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_308.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_309 (.I0(n20927), .I1(n5972), .I2(n12072), .I3(n4_adj_1687), 
            .O(n20945));
    defparam i1_4_lut_adj_309.LUT_INIT = 16'ha080;
    SB_LUT4 n22445_bdd_4_lut (.I0(n22445), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22448));
    defparam n22445_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12558), 
            .D(n22334), .R(n15051));   // zim_main.vhd(595[3] 900[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12462), 
            .D(n13842), .R(n15037));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_310 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20689));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_310.LUT_INIT = 16'hca0a;
    DDS_AD9837_U0 CLK_DDS (.dds_state({dds_state_adj_1742}), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .trig_dds1(trig_dds1), .n20539(n20539), 
            .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf_adj_1743[15]), .n15141(n15141), 
            .GND_net(ICE_GPMO_1), .n15380(n15380), .DDS_MOSI1(DDS_MOSI1), 
            .n15376(n15376), .DDS_SCK1(DDS_SCK1), .buf_dds1({buf_dds1}), 
            .bit_cnt({Open_9, Open_10, Open_11, bit_cnt_adj_1744[0]}), 
            .n16105(n16105));   // zim_main.vhd(952[12:22])
    SB_LUT4 i4066_3_lut_4_lut (.I0(comm_index[0]), .I1(n1_adj_1633), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_449[2]));   // zim_main.vhd(794[5] 804[12])
    defparam i4066_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12420), 
            .D(n13838), .R(n15030));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_156_11_lut (.I0(n14_adj_1614), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19745), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_156_11_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12378), 
            .D(n13834), .R(n15023));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 add_72_9_lut (.I0(ICE_GPMO_1), .I1(data_count[7]), .I2(ICE_GPMO_1), 
            .I3(n19697), .O(n401)) /* synthesis syn_instantiated=1 */ ;
    defparam add_72_9_lut.LUT_INIT = 16'hC33C;
    ADC_ADS127 ADC_VAC (.drdy_sync2(drdy_sync2_adj_1493), .clk_32MHz(clk_32MHz), 
            .drdy_prev(drdy_prev_adj_1494), .\adc_state[0] (adc_state_adj_1718[0]), 
            .VAC_DRDY(VAC_DRDY), .n20525(n20525), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1719}), 
            .n20531(n20531), .n20533(n20533), .acadc_dtrig_v(acadc_dtrig_v), 
            .acadc_dtrig_i(acadc_dtrig_i), .iac_raw_buf_N_749(iac_raw_buf_N_749), 
            .GND_net(ICE_GPMO_1), .eis_adc_trig(eis_adc_trig), .DTRIG_N_870(DTRIG_N_870_adj_1496), 
            .drdy_falling(drdy_falling_adj_1495), .\adc_state[1] (adc_state_adj_1718[1]), 
            .buf_adcdata_vac({buf_adcdata_vac}), .n15379(n15379), .n20509(n20509), 
            .n20507(n20507), .VAC_SCLK(VAC_SCLK), .n20767(n20767), .n20765(n20765), 
            .n20601(n20601), .n12(n12_adj_1660), .VAC_CS(VAC_CS), .n20763(n20763), 
            .n20761(n20761), .n20759(n20759), .n20757(n20757), .n20755(n20755), 
            .n20751(n20751), .n20749(n20749), .n20747(n20747), .n20745(n20745), 
            .n20743(n20743), .n20737(n20737), .n20735(n20735), .n20733(n20733), 
            .n20725(n20725), .n20723(n20723), .n20695(n20695), .n20697(n20697), 
            .n20705(n20705), .n20707(n20707), .n20709(n20709), .n20711(n20711), 
            .n20713(n20713), .n20715(n20715), .n20717(n20717), .n20719(n20719), 
            .n20721(n20721), .n12893(n12893));   // zim_main.vhd(928[12:22])
    SB_LUT4 i12_4_lut_adj_311 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20687));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_311.LUT_INIT = 16'hca0a;
    SB_LUT4 i12023_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14454));   // zim_main.vhd(612[4] 899[13])
    defparam i12023_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_312 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20685));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_312.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_388_Mux_3_i7_4_lut (.I0(comm_state[0]), .I1(n21507), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n17882));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_3_i7_4_lut.LUT_INIT = 16'hcffa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_313 (.I0(comm_cmd[3]), .I1(comm_state[0]), 
            .I2(n18696), .I3(comm_cmd[1]), .O(n18714));
    defparam i1_2_lut_3_lut_4_lut_adj_313.LUT_INIT = 16'h0100;
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12336), 
            .D(n13830), .R(n15016));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i1_2_lut_3_lut_adj_314 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n21045));
    defparam i1_2_lut_3_lut_adj_314.LUT_INIT = 16'hefef;
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12273), 
            .D(n13826), .R(n15009));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 i12_4_lut_adj_315 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20683));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_315.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12203), 
            .D(n13822), .R(n15002));   // zim_main.vhd(595[3] 900[10])
    ADC_ADS127_U1 ADC_IAC (.\adc_state[1] (adc_state[1]), .\adc_state[0] (adc_state[0]), 
            .DTRIG_N_870(DTRIG_N_870), .GND_net(ICE_GPMO_1), .drdy_sync2(drdy_sync2), 
            .clk_32MHz(clk_32MHz), .drdy_prev(drdy_prev), .IAC_DRDY(IAC_DRDY), 
            .n20952(n20952), .eis_adc_trig(eis_adc_trig), .drdy_falling(drdy_falling), 
            .buf_adcdata_iac({buf_adcdata_iac}), .n15387(n15387), .n20505(n20505), 
            .acadc_dtrig_i(acadc_dtrig_i), .n20503(n20503), .IAC_SCLK(IAC_SCLK), 
            .n20599(n20599), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), 
            .n12(n12_adj_1669), .IAC_CS(IAC_CS), .n20631(n20631), .n20633(n20633), 
            .n20635(n20635), .n20637(n20637), .n20639(n20639), .n20641(n20641), 
            .n20643(n20643), .n20645(n20645), .n20647(n20647), .n20649(n20649), 
            .n20651(n20651), .n20653(n20653), .n20655(n20655), .n20659(n20659), 
            .n20661(n20661), .n20663(n20663), .n20665(n20665), .n20667(n20667), 
            .n20669(n20669), .n20671(n20671), .n20673(n20673), .n20675(n20675), 
            .n20677(n20677), .n20679(n20679), .n20681(n20681), .n20683(n20683), 
            .n20685(n20685), .n20687(n20687), .n20689(n20689), .n20691(n20691), 
            .n20693(n20693), .n12797(n12797));   // zim_main.vhd(914[12:22])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12102), 
            .D(n20451), .R(n14990));   // zim_main.vhd(595[3] 900[10])
    SB_LUT4 comm_state_3__I_0_388_Mux_3_i15_4_lut (.I0(n17882), .I1(n14454), 
            .I2(comm_state[3]), .I3(comm_state_3__N_418[3]), .O(comm_state_3__N_11[3]));   // zim_main.vhd(612[4] 899[13])
    defparam comm_state_3__I_0_388_Mux_3_i15_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 i1_3_lut_adj_316 (.I0(comm_cmd[4]), .I1(comm_cmd[5]), .I2(comm_cmd[6]), 
            .I3(ICE_GPMO_1), .O(n20919));
    defparam i1_3_lut_adj_316.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_317 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21012));   // zim_main.vhd(245[9:19])
    defparam i1_2_lut_adj_317.LUT_INIT = 16'hbbbb;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12092), 
            .D(comm_index_2__N_449[0]), .R(n17015));   // zim_main.vhd(595[3] 900[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n12000), .D(n476), .R(n14958));   // zim_main.vhd(479[3] 557[10])
    SB_LUT4 i1_2_lut_4_lut_adj_318 (.I0(cs_falling_pend), .I1(cs_mask_cnt_1__N_397), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(n4_adj_1609));
    defparam i1_2_lut_4_lut_adj_318.LUT_INIT = 16'hfff2;
    SB_LUT4 i12934_3_lut_4_lut (.I0(req_data_cnt[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9300), .I3(n12693), .O(n15365));   // zim_main.vhd(595[3] 900[10])
    defparam i12934_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i21_4_lut_adj_319 (.I0(comm_state[1]), .I1(n20926), .I2(n5992), 
            .I3(comm_cmd[0]), .O(n15_adj_1648));
    defparam i21_4_lut_adj_319.LUT_INIT = 16'hc505;
    SB_LUT4 i13068_4_lut (.I0(trig_dds1), .I1(n6006), .I2(n15_adj_1648), 
            .I3(n5992), .O(n15499));   // zim_main.vhd(612[4] 899[13])
    defparam i13068_4_lut.LUT_INIT = 16'h3202;
    zim_pll pll_main (.GND_net(ICE_GPMO_1), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_694(DDS_MCLK1));   // zim_main.vhd(903[13:20])
    SB_CARRY add_78_2 (.CI(ICE_GPMO_1), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_749), 
            .CO(n19714));
    SB_LUT4 i12932_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1592), .I2(n12637), 
            .I3(ICE_GPMO_1), .O(n15363));   // zim_main.vhd(595[3] 900[10])
    defparam i12932_3_lut.LUT_INIT = 16'hcaca;
    DDS_AD9837 SIG_DDS (.trig_dds0(trig_dds0), .dds_state({dds_state}), 
            .GND_net(ICE_GPMO_1), .bit_cnt({Open_12, Open_13, Open_14, 
            bit_cnt_adj_1740[0]}), .clk_32MHz(clk_32MHz), .DDS_CS(DDS_CS), 
            .n20537(n20537), .VCC_net(VCC_net), .buf_dds0({buf_dds0}), 
            .\tmp_buf[15] (tmp_buf[15]), .n15136(n15136), .n15385(n15385), 
            .DDS_MOSI(DDS_MOSI), .n15375(n15375), .DDS_SCK(DDS_SCK), .n16109(n16109));   // zim_main.vhd(942[12:22])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19781 (.I0(comm_cmd[1]), .I1(n19_adj_1684), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n22439));
    defparam comm_cmd_1__bdd_4_lut_19781.LUT_INIT = 16'he4aa;
    SB_DFF clk_RTD_326 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_728));   // zim_main.vhd(417[3] 424[10])
    SB_CARRY add_72_9 (.CI(n19697), .I0(data_count[7]), .I1(ICE_GPMO_1), 
            .CO(n19698));
    SB_LUT4 n22439_bdd_4_lut (.I0(n22439), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1683), 
            .I3(comm_cmd[2]), .O(n22442));
    defparam n22439_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_320 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12558));
    defparam i1_4_lut_4_lut_4_lut_adj_320.LUT_INIT = 16'hb8a8;
    SB_LUT4 i12_4_lut_adj_321 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20681));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_321.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_322 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12797), .I3(adc_state[0]), .O(n20679));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_322.LUT_INIT = 16'hca0a;
    SB_LUT4 i12933_3_lut (.I0(acadc_skipCount[0]), .I1(n14_adj_1582), .I2(n12667), 
            .I3(ICE_GPMO_1), .O(n15364));   // zim_main.vhd(595[3] 900[10])
    defparam i12933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_323 (.I0(comm_data_vld), .I1(n21012), .I2(comm_state[0]), 
            .I3(n21039), .O(n21041));
    defparam i3_4_lut_adj_323.LUT_INIT = 16'hfffe;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (n6232, clk_32MHz, comm_data_vld, reset_int, comm_tx_buf, 
            GND_net, comm_rx_buf, VCC_net, \comm_buf[6][7] , n12486, 
            \comm_state[3] , n20087, sclk_sync1, sclk_sync2, ICE_SPI_MISO, 
            n15382, n15381, n15377, \comm_state_3__N_441[1] , \comm_state[2] , 
            n4, \comm_cmd[7] , n19295, n1);
    output n6232;
    input clk_32MHz;
    output comm_data_vld;
    input reset_int;
    input [7:0]comm_tx_buf;
    input GND_net;
    output [7:0]comm_rx_buf;
    input VCC_net;
    input \comm_buf[6][7] ;
    input n12486;
    input \comm_state[3] ;
    output n20087;
    output sclk_sync1;
    output sclk_sync2;
    output ICE_SPI_MISO;
    input n15382;
    input n15381;
    input n15377;
    input \comm_state_3__N_441[1] ;
    input \comm_state[2] ;
    output n4;
    input \comm_cmd[7] ;
    output n19295;
    output n1;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire n21107, sclk_rising_pend, DATA_VLD_N_1005, n22935, n14870, 
        n14869, n14868;
    wire [7:0]n18;
    wire [3:0]n27;
    
    wire n11935;
    wire [3:0]bit_cnt;   // spi_slave.vhd(27[8:15])
    
    wire n22932, data_tx_7__N_984, n17175, n15770, n15785, n15773, 
        n15776, n15779, n15782, n14897, n14896;
    wire [7:0]data_tx;   // spi_slave.vhd(29[8:15])
    
    wire data_tx_7__N_966, sclk_falling_pend_N_1017, n11940, sclk_falling_pend, 
        n22929, n14901, n14900, n22923, n14877, n14876, n14872, 
        data_tx_7__N_955, n15767, data_tx_7__N_962, n14881, data_tx_7__N_981, 
        n14880, data_tx_7__N_961, data_tx_7__N_963, n6575, n14874, 
        n14885, n14884, data_tx_7__N_960, n14873, n19630, data_tx_7__N_975, 
        data_tx_7__N_959, n22938, n14889, n14888, n22941, n14893, 
        n14892, data_tx_7__N_956, data_tx_7__N_978, data_tx_7__N_969, 
        data_tx_7__N_957, data_tx_7__N_972, data_tx_7__N_958;
    
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n21107), 
            .D(n6232));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_1005), 
            .R(reset_int));   // spi_slave.vhd(91[3] 100[10])
    SB_LUT4 i19562_4_lut_3_lut (.I0(n22935), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22935));   // spi_slave.vhd(47[3] 84[10])
    defparam i19562_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i15183_2_lut_4_lut (.I0(n14870), .I1(n14869), .I2(n14868), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i15183_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_DFFER bit_cnt_3933__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11935), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i19547_4_lut_3_lut (.I0(n22932), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22932));   // spi_slave.vhd(47[3] 84[10])
    defparam i19547_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_984));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i14757_4_lut (.I0(comm_rx_buf[6]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[5]), .O(n15770));
    defparam i14757_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14759_4_lut (.I0(comm_rx_buf[1]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[0]), .O(n15785));
    defparam i14759_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15785));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i14749_4_lut (.I0(comm_rx_buf[5]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[4]), .O(n15773));
    defparam i14749_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14751_4_lut (.I0(comm_rx_buf[4]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[3]), .O(n15776));
    defparam i14751_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14755_4_lut (.I0(comm_rx_buf[3]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[2]), .O(n15779));
    defparam i14755_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14761_4_lut (.I0(comm_rx_buf[2]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[1]), .O(n15782));
    defparam i14761_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15782));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15779));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15776));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15773));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12467_3_lut (.I0(n14897), .I1(n14896), .I2(n22935), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12467_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15770));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_966));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n11940), .D(sclk_falling_pend_N_1017));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12_4_lut (.I0(\comm_buf[6][7] ), .I1(comm_rx_buf[7]), .I2(n12486), 
            .I3(\comm_state[3] ), .O(n20087));
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19572_4_lut_3_lut (.I0(n22929), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22929));   // spi_slave.vhd(47[3] 84[10])
    defparam i19572_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19542_4_lut_3_lut (.I0(n14868), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n14868));   // spi_slave.vhd(47[3] 84[10])
    defparam i19542_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12471_3_lut (.I0(n14901), .I1(n14900), .I2(n22923), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12471_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12447_3_lut (.I0(n14877), .I1(n14876), .I2(n14872), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12447_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_955));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i7_12445_12446_set (.Q(n14876), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_955));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15767));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i19567_4_lut_3_lut (.I0(n22923), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22923));   // spi_slave.vhd(47[3] 84[10])
    defparam i19567_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19537_4_lut_3_lut (.I0(n14872), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14872));   // spi_slave.vhd(47[3] 84[10])
    defparam i19537_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i14753_4_lut (.I0(comm_rx_buf[7]), .I1(n17175), .I2(n6232), 
            .I3(comm_rx_buf[6]), .O(n15767));
    defparam i14753_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_1017), 
            .I3(sclk_sync2), .O(n11940));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_DFFS data_tx_i0_i0_12438_12439_set (.Q(n14869), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i19471_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_1017));   // spi_slave.vhd(67[4] 83[11])
    defparam i19471_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFR data_tx_i0_i1_12449_12450_reset (.Q(n14881), .C(clk_32MHz), 
            .D(n18[1]), .R(data_tx_7__N_981));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i1_12449_12450_set (.Q(n14880), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_961));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i7_12445_12446_reset (.Q(n14877), .C(clk_32MHz), 
            .D(n18[7]), .R(data_tx_7__N_963));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR MISO_92_12442_12443_reset (.Q(n14874), .C(clk_32MHz), .D(n6575), 
            .R(data_tx_7__N_963));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12455_3_lut (.I0(n14885), .I1(n14884), .I2(n22932), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12455_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_960));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i2_12453_12454_set (.Q(n14884), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_960));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS MISO_92_12442_12443_set (.Q(n14873), .C(clk_32MHz), .D(n6575), 
            .S(data_tx_7__N_955));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i15261_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n19630), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15261_4_lut.LUT_INIT = 16'h1222;
    SB_LUT4 i15260_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n19630), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15260_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i15133_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15133_3_lut.LUT_INIT = 16'h1212;
    SB_DFFER bit_cnt_3933__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11935), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3933__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11935), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3933__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11935), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i17192_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n19630));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17192_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFFR data_tx_i0_i0_12438_12439_reset (.Q(n14870), .C(clk_32MHz), 
            .D(n18[0]), .R(data_tx_7__N_984));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_975));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15259_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15259_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_LUT4 i12444_3_lut (.I0(n14874), .I1(n14873), .I2(n14872), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(47[3] 84[10])
    defparam i12444_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n15382));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n15381));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n15377));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17175));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17175), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_1005));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18465_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n21107));
    defparam i18465_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 i19463_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n6232));   // spi_slave.vhd(47[3] 84[10])
    defparam i19463_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19557_4_lut_3_lut (.I0(n22938), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22938));   // spi_slave.vhd(47[3] 84[10])
    defparam i19557_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_data_vld), .I1(\comm_state_3__N_441[1] ), 
            .I2(\comm_state[3] ), .I3(\comm_state[2] ), .O(n4));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12459_3_lut (.I0(n14889), .I1(n14888), .I2(n22941), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12459_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12463_3_lut (.I0(n14893), .I1(n14892), .I2(n22938), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12463_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i0_i6_12469_12470_reset (.Q(n14901), .C(clk_32MHz), 
            .D(n18[6]), .R(data_tx_7__N_966));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i4222_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_1017), 
            .I3(GND_net), .O(n6575));   // spi_slave.vhd(47[3] 84[10])
    defparam i4222_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i19552_4_lut_3_lut (.I0(n22941), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22941));   // spi_slave.vhd(47[3] 84[10])
    defparam i19552_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_963));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_961));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12451_3_lut (.I0(n14881), .I1(n14880), .I2(n22929), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12451_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_981));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_978));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12440_3_lut (.I0(n14870), .I1(n14869), .I2(n14868), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12440_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_969));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_957));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut (.I0(\comm_cmd[7] ), .I1(comm_data_vld), .I2(\comm_state_3__N_441[1] ), 
            .I3(GND_net), .O(n19295));   // spi_slave.vhd(91[3] 100[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i1_2_lut_3_lut_adj_49 (.I0(bit_cnt[3]), .I1(n17175), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n11935));
    defparam i1_2_lut_3_lut_adj_49.LUT_INIT = 16'h2f2f;
    SB_LUT4 i1_2_lut_adj_50 (.I0(comm_data_vld), .I1(\comm_state_3__N_441[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n1));   // spi_slave.vhd(91[3] 100[10])
    defparam i1_2_lut_adj_50.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_972));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_958));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS data_tx_i0_i6_12469_12470_set (.Q(n14900), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i0_i5_12465_12466_reset (.Q(n14897), .C(clk_32MHz), 
            .D(n18[5]), .R(data_tx_7__N_969));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i5_12465_12466_set (.Q(n14896), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_957));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i4_12461_12462_reset (.Q(n14893), .C(clk_32MHz), 
            .D(n18[4]), .R(data_tx_7__N_972));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i4_12461_12462_set (.Q(n14892), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_958));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i3_12457_12458_reset (.Q(n14889), .C(clk_32MHz), 
            .D(n18[3]), .R(data_tx_7__N_975));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i3_12457_12458_set (.Q(n14888), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i2_12453_12454_reset (.Q(n14885), .C(clk_32MHz), 
            .D(n18[2]), .R(data_tx_7__N_978));   // spi_slave.vhd(47[3] 84[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (GND_net, adc_state, \adc_state_3__N_1289[0] , \adc_state[2] , 
            VDC_SCLK, VDC_CLK, \cmd_rdadcbuf[34] , VCC_net, n20175, 
            cmd_rdadctmp, n20177, n20179, n20181, n20183, n20185, 
            n20187, n20189, n20191, n20193, n20195, n20197, n20199, 
            n20201, n20203, n20205, n20207, \buf_adcdata_vac[23] , 
            buf_adcdata_vdc, \comm_cmd[0] , n19, n20209, n20211, n20213, 
            n20215, n20217, n20381, n20383, n20385, n20405, \cmd_rdadcbuf[33] , 
            \cmd_rdadcbuf[32] , n20407, n20409, n20411, n20413, n20415, 
            n20417, n20419, n20421, n20423, n20425, n20427, n20429, 
            n20431, n20433, n20435, n20437, n20439, n20441, n20443, 
            n13352, n11919, \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , 
            \cmd_rdadcbuf[29] , \cmd_rdadcbuf[28] , \cmd_rdadcbuf[27] , 
            \cmd_rdadcbuf[26] , \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , 
            \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , 
            \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , 
            \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , 
            \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , \cmd_rdadcbuf[12] , 
            \cmd_rdadcbuf[11] , \cmd_rdadctmp[0] , n20249, n20475, clk_16MHz);
    input GND_net;
    output [3:0]adc_state;
    input \adc_state_3__N_1289[0] ;
    output \adc_state[2] ;
    output VDC_SCLK;
    output VDC_CLK;
    output \cmd_rdadcbuf[34] ;
    input VCC_net;
    input n20175;
    output [23:0]cmd_rdadctmp;
    input n20177;
    input n20179;
    input n20181;
    input n20183;
    input n20185;
    input n20187;
    input n20189;
    input n20191;
    input n20193;
    input n20195;
    input n20197;
    input n20199;
    input n20201;
    input n20203;
    input n20205;
    input n20207;
    input \buf_adcdata_vac[23] ;
    output [23:0]buf_adcdata_vdc;
    input \comm_cmd[0] ;
    output n19;
    input n20209;
    input n20211;
    input n20213;
    input n20215;
    input n20217;
    input n20381;
    input n20383;
    input n20385;
    input n20405;
    output \cmd_rdadcbuf[33] ;
    output \cmd_rdadcbuf[32] ;
    input n20407;
    input n20409;
    input n20411;
    input n20413;
    input n20415;
    input n20417;
    input n20419;
    input n20421;
    input n20423;
    input n20425;
    input n20427;
    input n20429;
    input n20431;
    input n20433;
    input n20435;
    input n20437;
    input n20439;
    input n20441;
    input n20443;
    output n13352;
    output n11919;
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
    input n20249;
    input n20475;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(52[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(220[9:18])
    wire [11:0]avg_cnt_11__N_1333;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19811, n19810, n19809;
    wire [3:0]adc_state_c;   // adc_ads1252u.vhd(31[8:17])
    
    wire n21027, n62, n21124, n11, n18571, n11938, n15, n19_c, 
        n10463, n19808, n19807, n22087, n19806, n11923, n16083, 
        n19805, n19804, n19803, n19802;
    wire [3:0]adc_state_3__N_1165;
    
    wire n20931, n13304;
    wire [35:0]cmd_rdadcbuf_35__N_1213;
    
    wire n13531, n19801;
    wire [35:0]cmd_rdadcbuf_35__N_1297;
    
    wire n19799, n18584, n21428, n19798, n19797;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n6, n11538, n7, n12, n20900, n20, n19_adj_1452, n21, 
        n8, n21310, n21061, n27, n18587, n22478, n19796, n19795, 
        n19794, n19793, n19792, n19791, n19790, n19789;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n19788, n19787, n19786, n19785, n19784, n19783, n19782, 
        n19781;
    wire [7:0]n37;
    
    wire n19848, n19780, n19847, n19779, n19778, n19846, n19777, 
        n19776;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19775, n19845, n19774, n19773, n19844, n19772, n19771, 
        n19770, n19843, n19842, n19769, n19768, n19767, n19766, 
        n13491, n7_adj_1453, n12_adj_1454, n39_adj_1455, n21092, n47, 
        n21355, n21352, n15228, n6_adj_1456, n13396, n20793, n17, 
        n4, n6_adj_1457, n10799, n22475;
    
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19811), .O(avg_cnt_11__N_1333[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19810), .O(avg_cnt_11__N_1333[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19810), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19811));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19809), .O(avg_cnt_11__N_1333[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(adc_state[3]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21027));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_35 (.I0(adc_state_c[0]), .I1(\adc_state_3__N_1289[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n62));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_2_lut_adj_35.LUT_INIT = 16'heeee;
    SB_LUT4 i18482_2_lut (.I0(\adc_state[2] ), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21124));
    defparam i18482_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i24_4_lut (.I0(n62), .I1(n21027), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n11));   // adc_ads1252u.vhd(31[8:17])
    defparam i24_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut (.I0(adc_state[3]), .I1(n11), .I2(adc_state_c[0]), 
            .I3(n21124), .O(n18571));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 i16158_4_lut (.I0(n62), .I1(\adc_state[2] ), .I2(adc_state[3]), 
            .I3(adc_state_c[1]), .O(n11938));   // adc_ads1252u.vhd(31[8:17])
    defparam i16158_4_lut.LUT_INIT = 16'hc2ce;
    SB_LUT4 i40_3_lut_4_lut (.I0(\adc_state_3__N_1289[0] ), .I1(n15), .I2(adc_state_c[1]), 
            .I3(adc_state_c[0]), .O(n19_c));
    defparam i40_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_CARRY add_24_11 (.CI(n19809), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19810));
    SB_LUT4 i8035_3_lut_4_lut (.I0(\adc_state_3__N_1289[0] ), .I1(n15), 
            .I2(adc_state_c[1]), .I3(adc_state_c[0]), .O(n10463));
    defparam i8035_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19808), .O(avg_cnt_11__N_1333[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19808), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19809));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19807), .O(avg_cnt_11__N_1333[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n19807), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19808));
    SB_LUT4 i19444_2_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n22087));   // adc_ads1252u.vhd(31[8:17])
    defparam i19444_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19806), .O(avg_cnt_11__N_1333[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19806), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19807));
    SB_LUT4 i16165_4_lut (.I0(n11923), .I1(adc_state_c[1]), .I2(VDC_SCLK), 
            .I3(n22087), .O(n16083));   // adc_ads1252u.vhd(31[8:17])
    defparam i16165_4_lut.LUT_INIT = 16'h7250;
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19805), .O(avg_cnt_11__N_1333[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19805), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19806));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19804), .O(avg_cnt_11__N_1333[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19804), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19805));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19803), .O(avg_cnt_11__N_1333[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19803), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19804));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19802), .O(avg_cnt_11__N_1333[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE adc_state_i1 (.Q(adc_state_c[1]), .C(VDC_CLK), .E(n20931), 
            .D(adc_state_3__N_1165[1]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(VDC_CLK), .E(n13304), .D(adc_state_3__N_1165[3]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13531), 
            .D(cmd_rdadcbuf_35__N_1213[34]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_24_4 (.CI(n19802), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19803));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19801), .O(avg_cnt_11__N_1333[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19801), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19802));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1333[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19801));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20175));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20177));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20179));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20181));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20183));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20185));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20187));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20189));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20191));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20193));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20195));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20197));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20199));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20201));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20203));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20205));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20207));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i16191_3_lut (.I0(\buf_adcdata_vac[23] ), .I1(buf_adcdata_vdc[23]), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n19));   // zim_main.vhd(247[9:17])
    defparam i16191_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20209));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20211));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20213));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20215));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19799), .O(cmd_rdadcbuf_35__N_1297[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19281_3_lut (.I0(n18584), .I1(\adc_state[2] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n21428));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i19281_3_lut.LUT_INIT = 16'h2121;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20217));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1297[34]), 
            .I1(n21428), .I2(adc_state[3]), .I3(adc_state_c[1]), .O(cmd_rdadcbuf_35__N_1213[34]));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20381));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20383));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20385));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20405));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19798), .O(cmd_rdadcbuf_35__N_1297[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_35 (.CI(n19798), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19799));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19797), .O(cmd_rdadcbuf_35__N_1297[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20407));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20409));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20411));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_36 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_ads1252u.vhd(80[8:24])
    defparam i1_2_lut_adj_36.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut (.I0(n11538), .I1(bit_cnt[4]), .I2(bit_cnt[0]), .I3(n6), 
            .O(n15));   // adc_ads1252u.vhd(80[8:24])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20413));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_23_34 (.CI(n19797), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19798));
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20415));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i15289_2_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i15289_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20417));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20419));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20421));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20423));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20425));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20427));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20429));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20431));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20433));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20435));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20437));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20439));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20441));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20443));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_37 (.I0(\adc_state_3__N_1289[0] ), .I1(n7), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i1_2_lut_adj_37.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20900));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[7]), .I2(avg_cnt[4]), 
            .I3(avg_cnt[3]), .O(n20));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n13352));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf200;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[0]), .I2(avg_cnt[9]), 
            .I3(avg_cnt[8]), .O(n19_adj_1452));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[6]), .I1(avg_cnt[2]), .I2(avg_cnt[11]), 
            .I3(avg_cnt[1]), .O(n21));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i9_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19_adj_1452), .I2(n20), .I3(GND_net), 
            .O(n18584));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[4]), .I2(n11538), .I3(bit_cnt[0]), 
            .O(n8));
    defparam i3_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 i1_3_lut_4_lut_adj_38 (.I0(adc_state_c[0]), .I1(adc_state_c[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[3]), .O(n11919));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_3_lut_4_lut_adj_38.LUT_INIT = 16'hf200;
    SB_LUT4 i19283_3_lut (.I0(bit_cnt[3]), .I1(n8), .I2(adc_state[3]), 
            .I3(GND_net), .O(n21310));
    defparam i19283_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i18420_2_lut (.I0(\adc_state_3__N_1289[0] ), .I1(adc_state_c[1]), 
            .I2(GND_net), .I3(GND_net), .O(n21061));
    defparam i18420_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i33_4_lut (.I0(\adc_state_3__N_1289[0] ), .I1(adc_state_c[0]), 
            .I2(n21310), .I3(adc_state_c[1]), .O(n27));
    defparam i33_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 i1_4_lut_adj_39 (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(n27), 
            .I3(n21061), .O(n20931));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'hfafe;
    SB_LUT4 i16136_3_lut (.I0(n18584), .I1(adc_state_c[0]), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n18587));   // adc_ads1252u.vhd(31[8:17])
    defparam i16136_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i16138_4_lut (.I0(n22478), .I1(n18587), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1165[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16138_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19796), .O(cmd_rdadcbuf_35__N_1297[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19796), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19797));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19795), .O(cmd_rdadcbuf_35__N_1297[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19795), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19796));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19794), .O(cmd_rdadcbuf_35__N_1297[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19794), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19795));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19793), .O(cmd_rdadcbuf_35__N_1297[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n19793), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19794));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19792), .O(cmd_rdadcbuf_35__N_1297[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19792), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19793));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19791), .O(cmd_rdadcbuf_35__N_1297[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19791), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19792));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19790), .O(cmd_rdadcbuf_35__N_1297[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n19790), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19791));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19789), .O(cmd_rdadcbuf_35__N_1297[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19789), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19790));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19788), .O(cmd_rdadcbuf_35__N_1297[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19788), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19789));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19787), .O(cmd_rdadcbuf_35__N_1297[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19787), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19788));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19786), .O(cmd_rdadcbuf_35__N_1297[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19786), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19787));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19785), .O(cmd_rdadcbuf_35__N_1297[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19785), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19786));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19784), .O(cmd_rdadcbuf_35__N_1297[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19784), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19785));
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19783), .O(cmd_rdadcbuf_35__N_1297[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_20 (.CI(n19783), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19784));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19782), .O(cmd_rdadcbuf_35__N_1297[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19782), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19783));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19781), .O(cmd_rdadcbuf_35__N_1297[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19781), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19782));
    SB_LUT4 bit_cnt_3937_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19848), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19780), .O(cmd_rdadcbuf_35__N_1297[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3937_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19847), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19780), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19781));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19779), .O(cmd_rdadcbuf_35__N_1297[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n19779), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19780));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19778), .O(cmd_rdadcbuf_35__N_1297[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3937_add_4_8 (.CI(n19847), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19848));
    SB_LUT4 bit_cnt_3937_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19846), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19778), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19779));
    SB_CARRY bit_cnt_3937_add_4_7 (.CI(n19846), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19847));
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19777), .O(cmd_rdadcbuf_35__N_1297[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n19777), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19778));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19776), .O(cmd_rdadcbuf_35__N_1297[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19776), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19777));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19775), .O(cmd_rdadcbuf_35__N_1297[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3937_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19845), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19775), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19776));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19774), .O(cmd_rdadcbuf_35__N_1297[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3937_add_4_6 (.CI(n19845), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19846));
    SB_CARRY add_23_11 (.CI(n19774), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19775));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19773), .O(cmd_rdadcbuf_35__N_1297[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_10 (.CI(n19773), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19774));
    SB_LUT4 bit_cnt_3937_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19844), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19772), .O(cmd_rdadcbuf_35__N_1297[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19772), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19773));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19771), .O(cmd_rdadcbuf_35__N_1297[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3937_add_4_5 (.CI(n19844), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19845));
    SB_CARRY add_23_8 (.CI(n19771), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19772));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19770), .O(cmd_rdadcbuf_35__N_1297[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3937_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19843), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19770), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19771));
    SB_CARRY bit_cnt_3937_add_4_4 (.CI(n19843), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19844));
    SB_LUT4 bit_cnt_3937_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19842), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19769), .O(cmd_rdadcbuf_35__N_1297[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3937_add_4_3 (.CI(n19842), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19843));
    SB_LUT4 bit_cnt_3937_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3937_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19769), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19770));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19768), .O(cmd_rdadcbuf_35__N_1297[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3937_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19842));
    SB_CARRY add_23_5 (.CI(n19768), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19769));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19767), .O(cmd_rdadcbuf_35__N_1297[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19767), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19768));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19766), .O(cmd_rdadcbuf_35__N_1297[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19766), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19767));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1297[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n19766));
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[2] ), .I2(adc_state_c[1]), 
            .I3(adc_state[3]), .O(n13491));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdc80;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20249));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20475));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n16083));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i12246_2_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), 
            .I2(\adc_state[2] ), .I3(GND_net), .O(n7_adj_1453));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i12246_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i16149_3_lut (.I0(\adc_state_3__N_1289[0] ), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(GND_net), .O(n12_adj_1454));   // adc_ads1252u.vhd(31[8:17])
    defparam i16149_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i16154_3_lut (.I0(n12_adj_1454), .I1(n12), .I2(adc_state[3]), 
            .I3(GND_net), .O(n39_adj_1455));   // adc_ads1252u.vhd(31[8:17])
    defparam i16154_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i18451_2_lut (.I0(n15), .I1(adc_state_c[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21092));
    defparam i18451_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_40 (.I0(n21092), .I1(\adc_state[2] ), .I2(n21027), 
            .I3(n39_adj_1455), .O(n47));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_40.LUT_INIT = 16'hfdcc;
    SB_LUT4 i19251_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21355));
    defparam i19251_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i19096_4_lut (.I0(n21355), .I1(adc_state_c[0]), .I2(n20900), 
            .I3(bit_cnt[4]), .O(n21352));
    defparam i19096_4_lut.LUT_INIT = 16'hc8c0;
    SB_DFFESR bit_cnt_3937__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11938), 
            .D(n37[7]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11938), 
            .D(n37[6]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11938), 
            .D(n37[5]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11938), 
            .D(n37[4]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11938), 
            .D(n37[3]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11938), 
            .D(n37[2]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3937__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11938), 
            .D(n37[1]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[11]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[10]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[9]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[8]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[7]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[6]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[5]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[4]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[3]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[2]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[1]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[33]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[32]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[31]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[30]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[29]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[28]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[27]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[26]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[25]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[24]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[23]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[22]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[21]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[20]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[19]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[18]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[17]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[16]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[15]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[14]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[13]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[12]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[11]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[10]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[9]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[8]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[7]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[6]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[5]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[4]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[3]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[2]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[1]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13396), 
            .D(n6_adj_1456), .R(n20793));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n17), 
            .D(n7_adj_1453), .R(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[6]), .I2(bit_cnt[7]), 
            .I3(bit_cnt[5]), .O(n11538));   // adc_ads1252u.vhd(65[9:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_4_lut_adj_41 (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adc_state[3]), .O(adc_state_3__N_1165[3]));
    defparam i1_4_lut_4_lut_adj_41.LUT_INIT = 16'h1580;
    SB_LUT4 i1_4_lut_4_lut_adj_42 (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(n10463), .I3(n12), .O(n13304));
    defparam i1_4_lut_4_lut_adj_42.LUT_INIT = 16'hdcfe;
    SB_LUT4 i1_3_lut_4_lut_adj_43 (.I0(adc_state_c[0]), .I1(\adc_state[2] ), 
            .I2(adc_state_c[1]), .I3(adc_state[3]), .O(n13531));
    defparam i1_3_lut_4_lut_adj_43.LUT_INIT = 16'hdd80;
    SB_LUT4 i19523_4_lut (.I0(adc_state[3]), .I1(\adc_state_3__N_1289[0] ), 
            .I2(n7), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i19523_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 i19434_4_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), 
            .I2(adc_state_c[0]), .I3(adc_state_c[1]), .O(n11923));
    defparam i19434_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 i19493_4_lut (.I0(\adc_state[2] ), .I1(n19_c), .I2(n12), .I3(adc_state[3]), 
            .O(n17));
    defparam i19493_4_lut.LUT_INIT = 16'hafbb;
    SB_DFFESR bit_cnt_3937__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11938), 
            .D(n37[0]), .R(n18571));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13491), .D(avg_cnt_11__N_1333[0]), 
            .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_adj_44 (.I0(bit_cnt[0]), .I1(n11538), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1457));
    defparam i1_2_lut_adj_44.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_45 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6_adj_1457), .O(n10799));
    defparam i4_4_lut_adj_45.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_adj_46 (.I0(adc_state[3]), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n20793));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i1_2_lut_adj_46.LUT_INIT = 16'h8888;
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13491), 
            .D(cmd_rdadcbuf_35__N_1297[0]), .R(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(VDC_CLK), .E(n47), .D(adc_state_3__N_1165[0]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_4_lut_adj_47 (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(adc_state_c[1]), 
            .I3(adc_state_c[0]), .O(n13396));
    defparam i1_4_lut_adj_47.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state_c[1]), .I3(n10799), .O(n6_adj_1456));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10799), .I1(adc_state_c[0]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[1]), .O(n22475));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 i1_4_lut_4_lut_adj_48 (.I0(adc_state_c[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1289[0] ), .O(adc_state_3__N_1165[0]));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i1_4_lut_4_lut_adj_48.LUT_INIT = 16'h1514;
    SB_LUT4 n22475_bdd_4_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[2] ), 
            .I2(n21352), .I3(n22475), .O(n22478));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam n22475_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i12841_2_lut (.I0(n13491), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15228));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12841_2_lut.LUT_INIT = 16'h8888;
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
    
    wire n14946, n11928;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n19812, n2, div_state_1__N_1433;
    wire [1:0]div_state_1__N_1346;
    
    wire n28, n26, n21330, n21331, n6, n27, n21333;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1448, n26_adj_1449, n27_adj_1450, n21336;
    wire [16:0]t0on_15__N_1380;
    
    wire n19841, n19840, n19839, n19838, n19837, n19836, n19835, 
        n19834, n19833, n19832, n19831, n19830, n19829, n19828, 
        n19827;
    wire [16:0]t0off_15__N_1396;
    
    wire n19826, n19825, n19824, n19823, n19822, n19821, n19820, 
        n19819, n19818, n19817, n19816, n19815, n19814, n19813;
    
    SB_LUT4 i19466_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n14946));
    defparam i19466_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i19448_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11928));
    defparam i19448_2_lut.LUT_INIT = 16'h9999;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19812));
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1433));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i12245_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1346[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12245_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1433));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19484_2_lut_4_lut (.I0(n21330), .I1(n21331), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));
    defparam i19484_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1346[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19375_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21333));
    defparam i19375_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_32 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1448));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_32.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_33 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1449));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_33.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_34 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1450));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_34.LUT_INIT = 16'hfffe;
    SB_LUT4 i19089_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21336));
    defparam i19089_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19087_4_lut (.I0(n21333), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21331));
    defparam i19087_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19295_4_lut (.I0(n21336), .I1(n27_adj_1450), .I2(n26_adj_1449), 
            .I3(n28_adj_1448), .O(n21330));
    defparam i19295_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19476_2_lut_4_lut (.I0(n21330), .I1(n21331), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));
    defparam i19476_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19841), .O(t0on_15__N_1380[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19840), .O(t0on_15__N_1380[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19840), .I0(t0on[14]), .I1(VCC_net), .CO(n19841));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19839), .O(t0on_15__N_1380[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19839), .I0(t0on[13]), .I1(VCC_net), .CO(n19840));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19838), .O(t0on_15__N_1380[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19838), .I0(t0on[12]), .I1(VCC_net), .CO(n19839));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19837), .O(t0on_15__N_1380[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19837), .I0(t0on[11]), .I1(VCC_net), .CO(n19838));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19836), .O(t0on_15__N_1380[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19836), .I0(t0on[10]), .I1(VCC_net), .CO(n19837));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19835), 
            .O(t0on_15__N_1380[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19835), .I0(t0on[9]), .I1(VCC_net), .CO(n19836));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19834), 
            .O(t0on_15__N_1380[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19834), .I0(t0on[8]), .I1(VCC_net), .CO(n19835));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19833), 
            .O(t0on_15__N_1380[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19833), .I0(t0on[7]), .I1(VCC_net), .CO(n19834));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19832), 
            .O(t0on_15__N_1380[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19832), .I0(t0on[6]), .I1(VCC_net), .CO(n19833));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19831), 
            .O(t0on_15__N_1380[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19831), .I0(t0on[5]), .I1(VCC_net), .CO(n19832));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19830), 
            .O(t0on_15__N_1380[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19830), .I0(t0on[4]), .I1(VCC_net), .CO(n19831));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19829), 
            .O(t0on_15__N_1380[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19829), .I0(t0on[3]), .I1(VCC_net), .CO(n19830));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19828), 
            .O(t0on_15__N_1380[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19828), .I0(t0on[2]), .I1(VCC_net), .CO(n19829));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19827), 
            .O(t0on_15__N_1380[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19827), .I0(t0on[1]), .I1(VCC_net), .CO(n19828));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1380[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19827));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19826), .O(t0off_15__N_1396[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19825), .O(t0off_15__N_1396[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19825), .I0(t0off[14]), .I1(VCC_net), .CO(n19826));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19824), .O(t0off_15__N_1396[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19824), .I0(t0off[13]), .I1(VCC_net), .CO(n19825));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19823), .O(t0off_15__N_1396[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19823), .I0(t0off[12]), .I1(VCC_net), .CO(n19824));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19822), .O(t0off_15__N_1396[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19822), .I0(t0off[11]), .I1(VCC_net), .CO(n19823));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19821), .O(t0off_15__N_1396[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19821), .I0(t0off[10]), .I1(VCC_net), .CO(n19822));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19820), .O(t0off_15__N_1396[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19820), .I0(t0off[9]), .I1(VCC_net), .CO(n19821));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19819), .O(t0off_15__N_1396[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19819), .I0(t0off[8]), .I1(VCC_net), .CO(n19820));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[15]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[14]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[13]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[12]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[11]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[10]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[9]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[8]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[7]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[6]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[5]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[4]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[3]), 
            .S(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[2]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[1]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[15]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[14]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[13]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[12]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[11]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[10]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[9]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[8]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[7]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[6]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[5]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[4]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[3]), .S(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[2]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[1]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19818), 
            .O(t0off_15__N_1396[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19818), .I0(t0off[7]), .I1(VCC_net), .CO(n19819));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19817), 
            .O(t0off_15__N_1396[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19817), .I0(t0off[6]), .I1(VCC_net), .CO(n19818));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19816), 
            .O(t0off_15__N_1396[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19816), .I0(t0off[5]), .I1(VCC_net), .CO(n19817));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19815), 
            .O(t0off_15__N_1396[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19815), .I0(t0off[4]), .I1(VCC_net), .CO(n19816));
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11928), .D(t0off_15__N_1396[0]), 
            .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1433), 
            .D(t0on_15__N_1380[0]), .R(n14946));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19814), 
            .O(t0off_15__N_1396[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19814), .I0(t0off[3]), .I1(VCC_net), .CO(n19815));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19813), 
            .O(t0off_15__N_1396[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19813), .I0(t0off[2]), .I1(VCC_net), .CO(n19814));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19812), 
            .O(t0off_15__N_1396[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19812), .I0(t0off[1]), .I1(VCC_net), .CO(n19813));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1396[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (GND_net, adc_state, \adc_state[2] , n13210, RTD_CS, 
            clk_RTD, RTD_SCLK, buf_cfgRTD, n20061, VCC_net, adress, 
            n20063, n20065, n20067, n20069, n20071, n20293, read_buf, 
            n20297, n20301, n20305, n20309, n20313, n20319, n20323, 
            n20327, n20331, n20335, buf_readRTD, n13286, RTD_DRDY, 
            n20339, n20343, n20347, n20351, n20353, n20355, n20357, 
            n20359, n20363, n20365, n20367, n20369, n20371, n20373, 
            n20375, n20377, n20379, n1, n20471, n20473, n13076, 
            RTD_SDI, \adress[0] );
    input GND_net;
    output [3:0]adc_state;
    output \adc_state[2] ;
    output n13210;
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    input [7:0]buf_cfgRTD;
    input n20061;
    input VCC_net;
    output [7:0]adress;
    input n20063;
    input n20065;
    input n20067;
    input n20069;
    input n20071;
    input n20293;
    output [15:0]read_buf;
    input n20297;
    input n20301;
    input n20305;
    input n20309;
    input n20313;
    input n20319;
    input n20323;
    input n20327;
    input n20331;
    input n20335;
    output [15:0]buf_readRTD;
    output n13286;
    input RTD_DRDY;
    input n20339;
    input n20343;
    input n20347;
    input n20351;
    input n20353;
    input n20355;
    input n20357;
    input n20359;
    input n20363;
    input n20365;
    input n20367;
    input n20369;
    input n20371;
    input n20373;
    input n20375;
    input n20377;
    input n20379;
    output n1;
    input n20471;
    input n20473;
    output n13076;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(267[9:16])
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    wire [3:0]n21;
    wire [3:0]adc_state_c;   // adc_max31865.vhd(24[8:17])
    
    wire CS_N_1132, n11857, SCLK_N_1131, n8;
    wire [3:0]adc_state_3__N_1039;
    
    wire n11896;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n20975, n13118, n20251, n15746, n11888, n15743;
    wire [7:0]adress_7__N_1087;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n3;
    wire [3:0]adc_state_3__N_1115;
    
    wire mode, n21602, n15737, n20255, n15731, n15728, n21377, 
        n21376, n20455, n20457, n8048, n21570, n12, n20253, n18926, 
        n6, n21595, n8078, n7, n17848, n16962, n21380, n26, 
        n22644, n12_adj_1438, n10, n11, n9, n19, n20960, n16099, 
        n13;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7_adj_1439, n16988, n11937, n15327, n20277, n7_adj_1440, 
        n13135, n15168, n7_adj_1441, n7_adj_1442, n7_adj_1443, n7_adj_1444, 
        n7_adj_1445, n7_adj_1446, n3_adj_1447;
    
    SB_LUT4 i17218_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17218_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n13210));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc845;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11857), .D(CS_N_1132));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1131));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(clk_RTD), .E(n11896), 
            .D(adc_state_3__N_1039[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n11896), .D(adc_state_3__N_1039[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11896), 
            .D(adc_state_3__N_1039[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n11896), .D(adc_state_3__N_1039[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i11_4_lut (.I0(cfg_buf[3]), .I1(n20975), .I2(n13118), .I3(buf_cfgRTD[3]), 
            .O(n20251));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut (.I0(adc_state_c[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20975));   // adc_max31865.vhd(24[8:17])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n20061));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n20063));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n20065));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n20067));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n20069));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n20071));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15746));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n11888));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'heb04;
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15743));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20251));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_13 (.I0(adress_7__N_1087[7]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(adress_c[7]), .O(n3));
    defparam i1_4_lut_4_lut_adj_13.LUT_INIT = 16'hf707;
    SB_LUT4 i19340_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1115[1]), 
            .I2(adc_state_c[0]), .I3(mode), .O(n21602));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19340_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15737));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20255));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15731));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15728));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n20293));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20297));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20301));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19110_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1115[1]), 
            .I2(adc_state_c[0]), .I3(n21377), .O(n21376));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19110_3_lut_4_lut.LUT_INIT = 16'hff0d;
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n20305));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20309));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20313));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20319));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20323));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20455));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20327));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20331));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20335));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n13286), 
            .I3(\adc_state[2] ), .O(n20457));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19287_3_lut (.I0(RTD_DRDY), .I1(n8048), .I2(adc_state_c[0]), 
            .I3(GND_net), .O(n21570));   // adc_max31865.vhd(24[8:17])
    defparam i19287_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i1_4_lut (.I0(mode), .I1(n21570), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n12));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_14 (.I0(n20975), .I1(n12), .I2(adress_7__N_1087[7]), 
            .I3(n8048), .O(n20253));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'hccec;
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20339));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20343));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20347));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20351));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20353));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20355));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20357));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20359));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20363));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20365));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20457));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20367));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20369));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20371));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20373));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20375));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20377));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20379));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n21602), .I1(adc_state[3]), 
            .I2(n18926), .I3(\adc_state[2] ), .O(adc_state_3__N_1039[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h03dd;
    SB_LUT4 i19329_4_lut (.I0(adc_state_3__N_1115[1]), .I1(n6), .I2(adc_state[3]), 
            .I3(mode), .O(n21595));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19329_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i19_4_lut (.I0(n21595), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(n8078), .O(adc_state_3__N_1039[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut (.I0(adc_state[1]), .I1(n18926), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut.LUT_INIT = 16'hc5ca;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7), .I1(n8048), .I2(adc_state[3]), 
            .I3(adc_state_c[0]), .O(adc_state_3__N_1039[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17848));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut_adj_15 (.I0(bit_cnt[3]), .I1(n17848), .I2(GND_net), 
            .I3(GND_net), .O(adc_state_3__N_1115[1]));   // adc_max31865.vhd(104[8:23])
    defparam i1_2_lut_adj_15.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), .I2(n8048), 
            .I3(n16962), .O(n11896));
    defparam i3_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19203_2_lut (.I0(bit_cnt[3]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21380));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19203_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19113_4_lut (.I0(adc_state[1]), .I1(mode), .I2(\adc_state[2] ), 
            .I3(adc_state_3__N_1115[1]), .O(n21377));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19113_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i45_4_lut (.I0(n21380), .I1(n8078), .I2(\adc_state[2] ), .I3(n17848), 
            .O(n26));   // adc_max31865.vhd(39[4] 147[13])
    defparam i45_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i18463_rep_56_2_lut (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(GND_net), .I3(GND_net), .O(n22644));
    defparam i18463_rep_56_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_16 (.I0(n22644), .I1(n21376), .I2(n26), .I3(adc_state[3]), 
            .O(adc_state_3__N_1039[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hf5dd;
    SB_LUT4 i1_2_lut_adj_17 (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_adj_17.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state_c[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(SCLK_N_1131));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12_adj_1438));   // adc_max31865.vhd(53[8:27])
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
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11), .I2(n10), .I3(n12_adj_1438), 
            .O(adress_7__N_1087[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_20 (.I0(adress_7__N_1087[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16962));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_20.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_adj_21 (.I0(adc_state_c[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n8078));
    defparam i1_2_lut_adj_21.LUT_INIT = 16'heeee;
    SB_LUT4 i5620_2_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n8048));   // adc_max31865.vhd(39[4] 147[13])
    defparam i5620_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_22 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13210), 
            .I3(n1), .O(n20455));
    defparam i12_4_lut_adj_22.LUT_INIT = 16'hca0a;
    SB_LUT4 i34_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1087[7]), 
            .I2(adc_state[1]), .I3(RTD_DRDY), .O(n19));
    defparam i34_4_lut_4_lut.LUT_INIT = 16'hadaf;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1087[7]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n20960));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i22_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n8078), .I2(adc_state[3]), 
            .I3(n20960), .O(n13118));   // adc_max31865.vhd(38[3] 148[10])
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n20253));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16099));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20471));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i30_3_lut_4_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(GND_net), .O(n13));   // adc_max31865.vhd(39[4] 147[13])
    defparam i30_3_lut_4_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20473));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i35_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n8078), .I2(adc_state[3]), 
            .I3(n19), .O(n13076));   // adc_max31865.vhd(38[3] 148[10])
    defparam i35_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i13668_4_lut_4_lut (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16099));   // adc_max31865.vhd(24[8:17])
    defparam i13668_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[7]), 
            .I3(cfg_buf[7]), .O(n15728));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_24 (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15731));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_24.LUT_INIT = 16'hb380;
    SB_LUT4 i14544_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state_c[0]), .O(n7_adj_1439));   // adc_max31865.vhd(24[8:17])
    defparam i14544_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15355_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n16988));
    defparam i15355_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i1_4_lut_4_lut_adj_25 (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15737));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_25.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_26 (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n15743));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_26.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_27 (.I0(n20975), .I1(n13118), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15746));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_27.LUT_INIT = 16'hb380;
    SB_DFFESR bit_cnt_3935__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11937), 
            .D(n21[3]), .R(n15327));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3935__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11937), 
            .D(n21[2]), .R(n15327));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3935__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11937), 
            .D(n21[1]), .R(n15327));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(adc_state[3]), .O(n20277));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13135), .D(n7_adj_1440), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13135), .D(n7_adj_1441), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13135), .D(n7_adj_1442), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13135), .D(n7_adj_1443), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13135), .D(n7_adj_1444), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13135), .D(n7_adj_1445), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13135), .D(n7_adj_1446), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13076), .D(n3_adj_1447), 
            .R(n20277));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19521_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(n16962), .O(CS_N_1132));
    defparam i19521_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i19435_3_lut_3_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(GND_net), .O(n11857));
    defparam i19435_3_lut_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i19499_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n8));
    defparam i19499_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1087[7]), 
            .I1(adress[6]), .I2(adc_state[1]), .I3(adc_state_c[0]), .O(n3_adj_1447));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1446));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1445));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1444));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1443));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1442));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1441));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12742_2_lut (.I0(n13135), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15168));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12742_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut_adj_28 (.I0(\adc_state[2] ), .I1(adc_state_c[0]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut_adj_28.LUT_INIT = 16'h4040;
    SB_LUT4 i29_4_lut (.I0(n20960), .I1(n13), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n13135));
    defparam i29_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_3_lut_4_lut (.I0(bit_cnt[3]), .I1(n17848), .I2(adc_state_c[0]), 
            .I3(adc_state[1]), .O(n18926));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfbff;
    SB_LUT4 i1_4_lut_4_lut_adj_29 (.I0(adc_state[3]), .I1(adc_state_c[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n13286));
    defparam i1_4_lut_4_lut_adj_29.LUT_INIT = 16'ha880;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state_c[0]), .O(n7_adj_1440));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i17216_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17216_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_cnt_3935__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11937), 
            .D(n21[0]), .R(n15327));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11888), .D(n16988), 
            .R(n20277));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13135), .D(n7_adj_1439), 
            .R(n15168));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i11_4_lut_adj_30 (.I0(cfg_buf[5]), .I1(n20975), .I2(n13118), 
            .I3(buf_cfgRTD[5]), .O(n20255));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_LUT4 i17225_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17225_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i19526_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state_c[0]), 
            .I3(\adc_state[2] ), .O(n11937));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19526_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13076), .D(n3), 
            .R(n20277));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_3_lut_4_lut_adj_31 (.I0(adc_state[1]), .I1(adc_state_c[0]), 
            .I2(adc_state[3]), .I3(\adc_state[2] ), .O(n15327));
    defparam i1_3_lut_4_lut_adj_31.LUT_INIT = 16'he412;
    SB_LUT4 i17232_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17232_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (dds_state, clk_32MHz, DDS_CS1, trig_dds1, n20539, 
            VCC_net, \tmp_buf[15] , n15141, GND_net, n15380, DDS_MOSI1, 
            n15376, DDS_SCK1, buf_dds1, bit_cnt, n16105);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input trig_dds1;
    input n20539;
    input VCC_net;
    output \tmp_buf[15] ;
    output n15141;
    input GND_net;
    input n15380;
    output DDS_MOSI1;
    input n15376;
    output DDS_SCK1;
    input [15:0]buf_dds1;
    output [3:0]bit_cnt;
    input n16105;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire [2:0]dds_state_2__N_877;
    
    wire n9, CS_N_930, n9_adj_1437;
    wire [15:0]tmp_buf_15__N_880;
    
    wire n12992;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21680;
    wire [3:0]bit_cnt_3__N_925;
    
    wire n8118;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_877[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1437), .D(CS_N_930));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19432_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds1), .O(n12992));
    defparam i19432_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20539));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12992), .D(tmp_buf_15__N_880[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12992), 
            .D(tmp_buf_15__N_880[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12711_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15141));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12711_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15380));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15376));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1437));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_930));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19535_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19535_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i19297_2_lut (.I0(bit_cnt_c[2]), .I1(bit_cnt_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21680));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19297_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12429_4_lut (.I0(dds_state[0]), .I1(n21680), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_877[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12429_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16105));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[3]), .R(n15141));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[2]), .R(n15141));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[1]), .R(n15141));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8118), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12406_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8118));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12406_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4031_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_925[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4031_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4038_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_925[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4038_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4045_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_925[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4045_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (drdy_sync2, clk_32MHz, drdy_prev, \adc_state[0] , 
            VAC_DRDY, n20525, VCC_net, cmd_rdadctmp, n20531, n20533, 
            acadc_dtrig_v, acadc_dtrig_i, iac_raw_buf_N_749, GND_net, 
            eis_adc_trig, DTRIG_N_870, drdy_falling, \adc_state[1] , 
            buf_adcdata_vac, n15379, n20509, n20507, VAC_SCLK, n20767, 
            n20765, n20601, n12, VAC_CS, n20763, n20761, n20759, 
            n20757, n20755, n20751, n20749, n20747, n20745, n20743, 
            n20737, n20735, n20733, n20725, n20723, n20695, n20697, 
            n20705, n20707, n20709, n20711, n20713, n20715, n20717, 
            n20719, n20721, n12893);
    output drdy_sync2;
    input clk_32MHz;
    output drdy_prev;
    output \adc_state[0] ;
    input VAC_DRDY;
    input n20525;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n20531;
    input n20533;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_749;
    input GND_net;
    input eis_adc_trig;
    output DTRIG_N_870;
    output drdy_falling;
    output \adc_state[1] ;
    output [23:0]buf_adcdata_vac;
    input n15379;
    input n20509;
    input n20507;
    output VAC_SCLK;
    input n20767;
    input n20765;
    input n20601;
    input n12;
    output VAC_CS;
    input n20763;
    input n20761;
    input n20759;
    input n20757;
    input n20755;
    input n20751;
    input n20749;
    input n20747;
    input n20745;
    input n20743;
    input n20737;
    input n20735;
    input n20733;
    input n20725;
    input n20723;
    input n20695;
    input n20697;
    input n20705;
    input n20707;
    input n20709;
    input n20711;
    input n20713;
    input n20715;
    input n20717;
    input n20719;
    input n20721;
    output n12893;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire drdy_sync1;
    wire [2:0]adc_state_2__N_775;
    
    wire n21054, n21053, n12_c;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n21129, n21139, n21385, n15498, n15497, n15496, n15495, 
        n15494, n15493, n15492, n15491, n15490, n15489, n15488, 
        n15487, n15486, n15485, n15484, n15483, n15482, n15481, 
        n15480, n15479, n15478, n15477, n15476, n15373;
    wire [7:0]n71;
    
    wire n19765, n19764, n19763, n19762, n19761, n19760, n19759, 
        n20957, n12810, n15096, n17;
    
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21054), 
            .D(adc_state_2__N_775[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(VAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20525));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20531));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20533));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_749));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_870), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21053));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_10 (.I0(\adc_state[1] ), .I1(n21053), .I2(GND_net), 
            .I3(GND_net), .O(n21054));
    defparam i1_2_lut_adj_10.LUT_INIT = 16'hdddd;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_775[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_870), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_775[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i18487_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21129));
    defparam i18487_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18497_4_lut (.I0(bit_cnt[7]), .I1(n21129), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21139));
    defparam i18497_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19393_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21139), .O(n21385));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19393_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21385), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_870), .I3(\adc_state[1] ), .O(adc_state_2__N_775[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15498));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15497));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15496));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15495));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15494));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15493));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15492));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15491));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15490));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15489));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15488));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15487));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15486));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15485));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15484));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15483));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15482));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15481));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15480));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15479));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15478));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15477));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15476));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15379));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20509));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15373));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20507));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n20767));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n20765));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20601));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .D(n20763));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19765), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19764), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19764), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19765));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19763), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19763), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19764));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19762), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_6 (.CI(n19762), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19763));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19761), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19761), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19762));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19760), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19760), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19761));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19759), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .D(n20761));   // adc_ads127.vhd(45[3] 100[10])
    SB_CARRY add_22_3 (.CI(n19759), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19760));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19759));
    SB_DFF cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .D(n20759));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .D(n20757));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20755));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13067_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15498));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13067_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13060_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15491));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13060_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13051_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15482));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13051_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20751));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20749));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13063_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15494));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13063_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13048_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15479));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13048_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13057_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15488));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13057_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13054_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15485));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13054_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13066_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15497));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13066_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13045_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15476));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13045_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13059_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15490));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13059_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13052_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15483));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13052_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13064_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15495));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13064_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13047_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15478));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13047_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13058_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15489));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13058_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13053_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15484));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13053_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13065_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15496));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13065_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20747));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13046_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15477));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13046_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20745));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13061_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15492));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13061_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20743));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20737));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20735));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13050_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15481));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13050_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20733));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13062_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15493));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13062_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20725));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13049_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15480));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13049_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13056_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15487));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13056_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13055_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15486));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13055_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12942_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20957), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15373));   // adc_ads127.vhd(55[4] 99[13])
    defparam i12942_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20723));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20695));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20697));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20705));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20707));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20709));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20711));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20713));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20715));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20717));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20719));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20721));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12810), .D(n71[7]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12810), .D(n71[6]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12810), .D(n71[5]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12810), .D(n71[4]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12810), .D(n71[3]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12810), .D(n71[2]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12810), .D(n71[1]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i12670_2_lut (.I0(n12810), .I1(DTRIG_N_870), .I2(GND_net), 
            .I3(GND_net), .O(n15096));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12670_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_11 (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_870), 
            .I3(\adc_state[1] ), .O(n12810));
    defparam i1_4_lut_adj_11.LUT_INIT = 16'h0450;
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_870), 
            .I3(\adc_state[0] ), .O(n12893));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_870), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_775[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_870), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19532_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19532_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15326_3_lut (.I0(DTRIG_N_870), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_775[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15326_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12810), .D(n71[0]), 
            .R(n15096));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut_adj_12 (.I0(DTRIG_N_870), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n20957));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_2_lut_adj_12.LUT_INIT = 16'h2222;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[1] , \adc_state[0] , DTRIG_N_870, GND_net, 
            drdy_sync2, clk_32MHz, drdy_prev, IAC_DRDY, n20952, eis_adc_trig, 
            drdy_falling, buf_adcdata_iac, n15387, n20505, acadc_dtrig_i, 
            n20503, IAC_SCLK, n20599, VCC_net, cmd_rdadctmp, n12, 
            IAC_CS, n20631, n20633, n20635, n20637, n20639, n20641, 
            n20643, n20645, n20647, n20649, n20651, n20653, n20655, 
            n20659, n20661, n20663, n20665, n20667, n20669, n20671, 
            n20673, n20675, n20677, n20679, n20681, n20683, n20685, 
            n20687, n20689, n20691, n20693, n12797);
    output \adc_state[1] ;
    output \adc_state[0] ;
    output DTRIG_N_870;
    input GND_net;
    output drdy_sync2;
    input clk_32MHz;
    output drdy_prev;
    input IAC_DRDY;
    output n20952;
    input eis_adc_trig;
    output drdy_falling;
    output [23:0]buf_adcdata_iac;
    input n15387;
    input n20505;
    output acadc_dtrig_i;
    input n20503;
    output IAC_SCLK;
    input n20599;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n12;
    output IAC_CS;
    input n20631;
    input n20633;
    input n20635;
    input n20637;
    input n20639;
    input n20641;
    input n20643;
    input n20645;
    input n20647;
    input n20649;
    input n20651;
    input n20653;
    input n20655;
    input n20659;
    input n20661;
    input n20663;
    input n20665;
    input n20667;
    input n20669;
    input n20671;
    input n20673;
    input n20675;
    input n20677;
    input n20679;
    input n20681;
    input n20683;
    input n20685;
    input n20687;
    input n20689;
    input n20691;
    input n20693;
    output n12797;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    wire [2:0]adc_state_2__N_775;
    
    wire drdy_sync1, n21056, n12_c, n21055, n15475, n15474, n15473, 
        n15472, n15471, n15470, n15469, n15468, n15467, n15466, 
        n15465, n15464, n15463, n15462, n15461, n15460, n15459, 
        n15458, n15457, n15456, n15455, n15454, n15453;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n16, n21372, n21371, n15370;
    wire [7:0]n71;
    
    wire n19758, n19757, n19756, n19755, n19754, n19753, n19752, 
        n6, n12710, n15058, n17;
    
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut (.I0(\adc_state[1] ), 
            .I1(\adc_state[0] ), .I2(DTRIG_N_870), .I3(GND_net), .O(adc_state_2__N_775[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut.LUT_INIT = 16'h4a4a;
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21056), 
            .D(adc_state_2__N_775[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(IAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_775[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_870), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_775[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_870), .I2(GND_net), 
            .I3(GND_net), .O(n20952));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_870), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21055));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_8 (.I0(\adc_state[1] ), .I1(n21055), .I2(GND_net), 
            .I3(GND_net), .O(n21056));
    defparam i1_2_lut_adj_8.LUT_INIT = 16'hdddd;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15475));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15474));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15473));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15472));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15471));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15470));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15469));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15468));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15467));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15466));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15465));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15464));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15463));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15462));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15461));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15460));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15459));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15458));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15457));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15456));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15455));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15454));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15453));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15387));   // adc_ads127.vhd(35[3] 40[10])
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i19323_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n21372));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19323_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i19419_4_lut (.I0(n21372), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n21371));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19419_4_lut.LUT_INIT = 16'h0020;
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20505));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21371), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_870), .I3(\adc_state[1] ), .O(adc_state_2__N_775[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15370));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20503));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20599));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19758), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19757), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19757), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19758));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19756), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19756), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19757));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19755), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_6 (.CI(n19755), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19756));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19754), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19754), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19755));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19753), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19753), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19754));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19752), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_3 (.CI(n19752), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19753));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19752));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20631));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20633));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20635));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20637));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20639));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20641));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20643));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20645));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20647));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20649));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20651));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20653));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20655));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20659));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20661));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20663));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20665));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20667));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20669));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20671));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20673));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20675));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20677));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20679));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20681));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20683));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20685));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20687));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20689));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13044_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15475));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13044_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20691));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20693));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13037_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15468));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13037_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13028_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15459));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13028_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13040_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15471));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13040_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13025_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15456));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13025_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13034_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15465));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13034_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12710), .D(n71[7]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13031_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15462));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13031_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13043_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15474));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13043_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13022_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15453));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13022_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13036_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15467));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13036_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13029_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15460));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13029_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13041_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15472));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13041_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12632_2_lut (.I0(n12710), .I1(DTRIG_N_870), .I2(GND_net), 
            .I3(GND_net), .O(n15058));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12632_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_9 (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_870), 
            .I3(\adc_state[1] ), .O(n12710));
    defparam i1_4_lut_adj_9.LUT_INIT = 16'h0450;
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12710), .D(n71[6]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12710), .D(n71[5]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12710), .D(n71[4]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12710), .D(n71[3]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12710), .D(n71[2]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12710), .D(n71[1]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i13024_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15455));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13024_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13035_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15466));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13035_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13030_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15461));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13030_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13042_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15473));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13042_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_870), 
            .I3(\adc_state[0] ), .O(n12797));   // adc_ads127.vhd(55[4] 99[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_LUT4 i13023_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15454));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13023_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13038_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15469));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13038_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i15327_2_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15327_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_870), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i13027_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15458));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13027_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13039_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15470));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13039_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13026_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15457));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13026_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13033_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15464));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13033_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13032_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15463));   // adc_ads127.vhd(55[4] 99[13])
    defparam i13032_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12939_3_lut_4_lut (.I0(DTRIG_N_870), .I1(n6), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15370));   // adc_ads127.vhd(55[4] 99[13])
    defparam i12939_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i19534_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19534_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15329_3_lut (.I0(DTRIG_N_870), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_775[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15329_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12710), .D(n71[0]), 
            .R(n15058));   // adc_ads127.vhd(45[3] 100[10])
    
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
    SB_LUT4 i19917_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_694));   // zim_main.vhd(903[13:20])
    defparam i19917_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (trig_dds0, dds_state, GND_net, bit_cnt, clk_32MHz, 
            DDS_CS, n20537, VCC_net, buf_dds0, \tmp_buf[15] , n15136, 
            n15385, DDS_MOSI, n15375, DDS_SCK, n16109);
    input trig_dds0;
    output [2:0]dds_state;
    input GND_net;
    output [3:0]bit_cnt;
    input clk_32MHz;
    output DDS_CS;
    input n20537;
    input VCC_net;
    input [15:0]buf_dds0;
    output \tmp_buf[15] ;
    output n15136;
    input n15385;
    output DDS_MOSI;
    input n15375;
    output DDS_SCK;
    input n16109;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(221[9:18])
    
    wire n9, CS_N_930, n9_adj_1434;
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21682, n12906;
    wire [2:0]dds_state_2__N_877;
    wire [15:0]tmp_buf_15__N_880;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_3__N_925;
    
    wire n8156;
    
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_930));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19530_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9_adj_1434));
    defparam i19530_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[1]), .I2(dds_state[0]), 
            .I3(bit_cnt_c[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19067_2_lut (.I0(bit_cnt_c[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21682));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19067_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19433_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds0), .O(n12906));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19433_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 i12427_4_lut (.I0(dds_state[0]), .I1(n21682), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_877[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12427_4_lut.LUT_INIT = 16'hc505;
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9_adj_1434), 
            .D(dds_state_2__N_877[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9), .D(CS_N_930));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20537));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12906), .D(tmp_buf_15__N_880[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12906), 
            .D(tmp_buf_15__N_880[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12706_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15136));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12706_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15385));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15375));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16109));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[3]), .R(n15136));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[2]), .R(n15136));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_925[1]), .R(n15136));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9_adj_1434), 
            .D(n8156), .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12405_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8156));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12405_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4002_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_925[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4002_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_880[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4009_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_925[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4009_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4016_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_925[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4016_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
