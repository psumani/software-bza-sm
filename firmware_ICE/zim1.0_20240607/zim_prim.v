// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Apr 03 14:33:12 2023
//
// Verilog Description of module zim
//

module zim (ICE_SYSCLK, EIS_SYNCCLK, TEST_LED, DDS_MCLK1, DDS_CS1, 
            DDS_MOSI1, DDS_SCK1, ICE_SPI_SCLK, ICE_SPI_MOSI, ICE_SPI_MISO, 
            ICE_SPI_CE0, ICE_GPMO_0, DDS_MCLK, DDS_CS, DDS_SCK, DDS_MOSI, 
            DDS_RNG_0, ICE_IOT_173, ICE_IOT_174, VAC_OSR0, VAC_OSR1, 
            VAC_FLT0, VAC_FLT1, VAC_CLK, VAC_CS, VAC_SCLK, VAC_MOSI, 
            VAC_MISO, VAC_DRDY, ICE_IOL_13A, VDC_SDO, VDC_SCLK, VDC_CLK, 
            VDC_RNG0, CONT_SD, SELIRNG0, SELIRNG1, IAC_OSR0, IAC_OSR1, 
            IAC_FLT0, IAC_FLT1, IAC_CLK, IAC_CS, IAC_SCLK, IAC_MOSI, 
            IAC_MISO, IAC_DRDY, RTD_DRDY, RTD_SDI, RTD_SCLK, RTD_CS, 
            RTD_SDO, ICE_IOT_222, ICE_IOT_221, AC_ADC_SYNC, ICE_IOT_198, 
            ICE_IOT_197, ICE_IOT_178, ICE_IOT_177, ICE_IOR_141, AMPV_POW, 
            ICE_IOL_18B, ICE_IOL_14A, ICE_IOL_13B, ICE_IOL_12B, ICE_IOL_12A, 
            ICE_IOL_4B, ICE_IOL_4A, ICE_IOR_140, ICE_IOR_120, ICE_IOR_119, 
            ICE_IOR_118, ICE_IOB_81, ICE_IOB_80, STAT_COMM, THERMOSTAT, 
            ICE_IOB_104, ICE_IOB_103, ICE_IOB_102, ICE_IOB_96, ICE_IOB_95, 
            ICE_IOB_94, ICE_IOB_91, ICE_IOB_82, ICE_GPMO_1, ICE_GPMO_2, 
            ICE_GPMI_0, ICE_IOR_138, ICE_IOR_137, ICE_IOR_136, ICE_IOR_128, 
            ICE_IOR_147, ICE_IOR_146, ICE_IOR_144, ICE_IOR_139, ICE_IOR_161, 
            ICE_IOR_160, ICE_IOR_152, ICE_IOR_148, ICE_IOR_167, ICE_IOR_166, 
            ICE_IOR_165, ICE_IOR_164);   // zim_main.vhd(7[8:11])
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
    input ICE_GPMO_0;   // zim_main.vhd(29[3:13])
    output DDS_MCLK;   // zim_main.vhd(31[3:11])
    output DDS_CS;   // zim_main.vhd(32[3:9])
    output DDS_SCK;   // zim_main.vhd(33[3:10])
    output DDS_MOSI;   // zim_main.vhd(34[3:11])
    output DDS_RNG_0;   // zim_main.vhd(36[3:12])
    input ICE_IOT_173;   // zim_main.vhd(37[3:14])
    input ICE_IOT_174;   // zim_main.vhd(38[3:14])
    output VAC_OSR0;   // zim_main.vhd(40[3:11])
    output VAC_OSR1;   // zim_main.vhd(41[3:11])
    output VAC_FLT0;   // zim_main.vhd(42[3:11])
    output VAC_FLT1;   // zim_main.vhd(43[3:11])
    output VAC_CLK;   // zim_main.vhd(45[3:10])
    output VAC_CS;   // zim_main.vhd(46[3:9])
    output VAC_SCLK;   // zim_main.vhd(47[3:11])
    output VAC_MOSI;   // zim_main.vhd(48[3:11])
    input VAC_MISO;   // zim_main.vhd(49[3:11])
    input VAC_DRDY;   // zim_main.vhd(50[3:11])
    input ICE_IOL_13A;   // zim_main.vhd(52[3:14])
    input VDC_SDO;   // zim_main.vhd(53[3:10])
    output VDC_SCLK;   // zim_main.vhd(54[3:11])
    output VDC_CLK;   // zim_main.vhd(55[3:10])
    output VDC_RNG0;   // zim_main.vhd(56[3:11])
    output CONT_SD;   // zim_main.vhd(58[3:10])
    output SELIRNG0;   // zim_main.vhd(59[3:11])
    output SELIRNG1;   // zim_main.vhd(60[3:11])
    output IAC_OSR0;   // zim_main.vhd(61[3:11])
    output IAC_OSR1;   // zim_main.vhd(62[3:11])
    output IAC_FLT0;   // zim_main.vhd(63[3:11])
    output IAC_FLT1;   // zim_main.vhd(64[3:11])
    output IAC_CLK;   // zim_main.vhd(65[3:10])
    output IAC_CS;   // zim_main.vhd(66[3:9])
    output IAC_SCLK;   // zim_main.vhd(67[3:11])
    output IAC_MOSI;   // zim_main.vhd(68[3:11])
    input IAC_MISO;   // zim_main.vhd(69[3:11])
    input IAC_DRDY;   // zim_main.vhd(70[3:11])
    input RTD_DRDY;   // zim_main.vhd(72[3:11])
    output RTD_SDI;   // zim_main.vhd(73[3:10])
    output RTD_SCLK;   // zim_main.vhd(74[3:11])
    output RTD_CS;   // zim_main.vhd(75[3:9])
    input RTD_SDO;   // zim_main.vhd(76[3:10])
    input ICE_IOT_222;   // zim_main.vhd(79[3:14])
    input ICE_IOT_221;   // zim_main.vhd(80[3:14])
    output AC_ADC_SYNC;   // zim_main.vhd(81[3:14])
    input ICE_IOT_198;   // zim_main.vhd(82[3:14])
    input ICE_IOT_197;   // zim_main.vhd(83[3:14])
    input ICE_IOT_178;   // zim_main.vhd(84[3:14])
    input ICE_IOT_177;   // zim_main.vhd(85[3:14])
    input ICE_IOR_141;   // zim_main.vhd(86[3:14])
    output AMPV_POW;   // zim_main.vhd(89[3:11])
    input ICE_IOL_18B;   // zim_main.vhd(90[3:14])
    input ICE_IOL_14A;   // zim_main.vhd(91[3:14])
    input ICE_IOL_13B;   // zim_main.vhd(92[3:14])
    input ICE_IOL_12B;   // zim_main.vhd(93[3:14])
    input ICE_IOL_12A;   // zim_main.vhd(94[3:14])
    input ICE_IOL_4B;   // zim_main.vhd(95[3:13])
    input ICE_IOL_4A;   // zim_main.vhd(96[3:13])
    input ICE_IOR_140;   // zim_main.vhd(99[3:14])
    input ICE_IOR_120;   // zim_main.vhd(100[3:14])
    input ICE_IOR_119;   // zim_main.vhd(101[3:14])
    input ICE_IOR_118;   // zim_main.vhd(102[3:14])
    input ICE_IOB_81;   // zim_main.vhd(105[3:13])
    input ICE_IOB_80;   // zim_main.vhd(106[3:13])
    output STAT_COMM;   // zim_main.vhd(107[3:12])
    input THERMOSTAT;   // zim_main.vhd(108[3:13])
    input ICE_IOB_104;   // zim_main.vhd(111[3:14])
    input ICE_IOB_103;   // zim_main.vhd(112[3:14])
    input ICE_IOB_102;   // zim_main.vhd(113[3:14])
    input ICE_IOB_96;   // zim_main.vhd(114[3:13])
    input ICE_IOB_95;   // zim_main.vhd(115[3:13])
    input ICE_IOB_94;   // zim_main.vhd(116[3:13])
    input ICE_IOB_91;   // zim_main.vhd(117[3:13])
    input ICE_IOB_82;   // zim_main.vhd(118[3:13])
    input ICE_GPMO_1;   // zim_main.vhd(121[3:13])
    input ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    output ICE_GPMI_0;   // zim_main.vhd(123[3:13])
    input ICE_IOR_138;   // zim_main.vhd(125[3:14])
    input ICE_IOR_137;   // zim_main.vhd(126[3:14])
    input ICE_IOR_136;   // zim_main.vhd(127[3:14])
    input ICE_IOR_128;   // zim_main.vhd(128[3:14])
    input ICE_IOR_147;   // zim_main.vhd(129[3:14])
    input ICE_IOR_146;   // zim_main.vhd(130[3:14])
    input ICE_IOR_144;   // zim_main.vhd(131[3:14])
    input ICE_IOR_139;   // zim_main.vhd(132[3:14])
    input ICE_IOR_161;   // zim_main.vhd(134[3:14])
    input ICE_IOR_160;   // zim_main.vhd(135[3:14])
    input ICE_IOR_152;   // zim_main.vhd(136[3:14])
    input ICE_IOR_148;   // zim_main.vhd(137[3:14])
    input ICE_IOR_167;   // zim_main.vhd(138[3:14])
    input ICE_IOR_166;   // zim_main.vhd(139[3:14])
    input ICE_IOR_165;   // zim_main.vhd(140[3:14])
    input ICE_IOR_164;   // zim_main.vhd(141[3:14])
    
    wire TEST_LED /* synthesis SET_AS_NETWORK=TEST_LED, is_clock=1 */ ;   // zim_main.vhd(11[3:11])
    wire DDS_MCLK1 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(266[9:16])
    
    wire VCC_net;
    wire [7:0]comm_tx_buf;   // zim_main.vhd(238[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zim_main.vhd(240[9:20])
    wire [3:0]comm_state;   // zim_main.vhd(243[9:19])
    wire [7:0]comm_cmd;   // zim_main.vhd(245[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[1] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[2] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[3] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[4] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[5] ;   // zim_main.vhd(248[9:17])
    wire [7:0]\comm_buf[6] ;   // zim_main.vhd(248[9:17])
    wire [2:0]comm_index;   // zim_main.vhd(249[9:19])
    wire [2:0]comm_length;   // zim_main.vhd(250[9:20])
    wire [7:0]dds0_mclkcnt;   // zim_main.vhd(253[9:21])
    
    wire dds0_mclk;
    wire [15:0]buf_dds0;   // zim_main.vhd(257[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(262[9:17])
    
    wire trig_dds1, n22;
    wire [7:0]clk_cnt;   // zim_main.vhd(267[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(268[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(269[9:20])
    
    wire acadc_trig, acadc_dtrig_i, acadc_dtrig_v;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(278[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(279[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(286[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(287[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(290[9:18])
    
    wire acadc_rst, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(297[9:21])
    wire [47:0]buf_data_vac;
    wire [9:0]data_count;   // zim_main.vhd(302[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(303[9:20])
    wire [9:0]data_index;   // zim_main.vhd(304[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(305[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(313[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(316[9:20])
    
    wire wdtick_flag, flagcntwd;
    wire [3:0]wdtick_cnt;   // zim_main.vhd(320[9:19])
    wire [31:0]secclk_cnt;   // zim_main.vhd(324[9:19])
    
    wire n14737, clk_RTD_N_716, n8, n17, wdtick_flag_N_301, n21888, 
        n19624, n9, n20496, n9_adj_1415, n20666, TEST_LED_N_691, 
        n14715, n21569, n9_adj_1416, n11347, dds0_mclk_N_709, n19, 
        n20276, iac_raw_buf_N_736, iac_raw_buf_N_734, n334, n335, 
        n336, n337, n338, n339, n340, n341, n342, n343, n346, 
        n347, n348, n349, n350, n351, n352, n353, n354, n355, 
        n356, n357, n358, n359, n360, n361, n397, n398, n399, 
        n400, n401, n402, n403, n404, n405, n406, n407, n408, 
        n409, n410, n411, n412, n21568, n20418, n20420, n20422, 
        n20424, n20426, eis_end_N_724;
    wire [2:0]eis_state_2__N_171;
    
    wire n20428, n16, THERMOSTAT_N_470, n21177, n21054, n21212, 
        n21564;
    wire [2:0]comm_index_2__N_447;
    
    wire n29, n21211;
    wire [3:0]comm_state_3__N_420;
    
    wire n20907, n1264, comm_clear_N_708, ICE_GPMI_0_N_706, n20466, 
        n20468, n20470, n20060, n20062;
    wire [3:0]comm_state_3__N_9;
    
    wire n20064, n20066, n20068, n20070, n20072, n20074, n20076, 
        n20078, n20080, n20082, n20084, n20086, n20088, n20090, 
        n20092, n20094, n20096, n20098, n20100, n20190, n20192, 
        n20829, n20204;
    wire [9:0]data_index_9__N_216;
    wire [15:0]data_idxvec_15__N_226;
    
    wire n20206, n20208, n20878, n21053;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire n13928, n20210, DTRIG_N_918, n20212, n20214, n20216, n21344, 
        n20272, n14757, n20268, n20880, n21546;
    wire [2:0]adc_state_adj_1647;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1648;   // adc_ads127.vhd(27[8:20])
    
    wire n14714, n21193, n20985, DTRIG_N_918_adj_1451, n20218, n20220, 
        n21539, n20222, n21127, n20464, n2358;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1669;   // dds_ad9837.vhd(25[9:16])
    wire [2:0]dds_state_adj_1671;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1672;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1673;   // dds_ad9837.vhd(25[9:16])
    
    wire n21341, n20224;
    wire [3:0]bit_cnt_3__N_972_adj_1677;
    wire [2:0]dds_state_2__N_924_adj_1679;
    wire [3:0]adc_state_adj_1687;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1688;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n21538, n30, n19623, n12, n20226, n5, n12_adj_1480, n20228, 
        n20230, n20232, n20234, n20236, n20238, n20240, n19942, 
        n19944, n19946, n19948, n19950, n19952, n15333, n20264, 
        n21529;
    wire [3:0]adc_state_adj_1693;   // adc_max31865.vhd(24[8:17])
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n20260, n19938, n20298, n20300, n20302, n21521, n30_adj_1482, 
        n22_adj_1483, n19_adj_1484, n13626, n21048, n20304, n20306, 
        n20308, n20310, n20312, n21, n30_adj_1485, n26, n19_adj_1486, 
        n16_adj_1487, n21072, n21081, n18, n22_adj_1488, n17_adj_1489, 
        n30_adj_1490, n19_adj_1491, n45, n44, n43, n42, n41, n40, 
        n39, n38, n21_adj_1492, n10, n30_adj_1493, n29_adj_1494, 
        n28, n27, n26_adj_1495, n25, n23, n19622, n16_adj_1496, 
        n19_adj_1497, n26_adj_1498, n19598, n17815, n20500, n15835, 
        n20132, n19954, n120, n119, n118, n117, n116, n115, 
        n114, n113, n112, n111, n110, n109, n108, n107, n106, 
        n105, n104, n103, n102, n101, n100, n99, n98, n20314, 
        n22_adj_1499, n30_adj_1500, n23_adj_1501, n21120, n20256, 
        n20414, n26_adj_1502, n19_adj_1503, n16_adj_1504, n14, n28_adj_1505, 
        n30_adj_1506, n20, n21339, n20516, n19597, n15811, n21337, 
        n26_adj_1507, n26_adj_1508, n17564, n20937, n12280, n31, 
        n19621, n21201, n14_adj_1509, n12871, n20252, n15792, n18755, 
        n15, n11338, n21139, n20858, n20356, n19620, n1, n2, 
        n4, n16_adj_1510, n19_adj_1511, n21087, n26_adj_1512, n30_adj_1513, 
        n16_adj_1514, n19_adj_1515, n26_adj_1516, n16_adj_1517, n19_adj_1518, 
        n26_adj_1519, n30_adj_1520, n20316, n16_adj_1521, n19_adj_1522, 
        n20016, n26_adj_1523, n30_adj_1524, n16_adj_1525, n17_adj_1526, 
        n19_adj_1527, n20_adj_1528, n23_adj_1529, n21132, n26_adj_1530, 
        n30_adj_1531, n22450, n3, n21123, n13548, n13552, n13556, 
        n13560, n13564, n13568, n7, n8_adj_1532, n22447, n14_adj_1533, 
        n16_adj_1534, n17_adj_1535, n19_adj_1536, n20_adj_1537, n23_adj_1538, 
        n22444, n30_adj_1539, n20856, n23_adj_1540, n22441, n23_adj_1541, 
        n22435, n22432, n30_adj_1542, n23_adj_1543, n26_adj_1544, 
        n20318, n14074, n17482, n4_adj_1545, n4_adj_1546, n21138, 
        n21037, n22429, n22426, n20320, n20390, n21084, n19596, 
        n19619, n22423, n22420, n30_adj_1547, n17479, n20322, n22417, 
        n22414, n19783, n20248, n12_adj_1548, n22411, n20324, n12228, 
        n20864, n22405, n22402, n22399, n22396, n14479, n21456, 
        n15176, n15175, n22393, n22390, n21165, n22387, n22384, 
        n22381, n22378, n22375, n22372, n22369, n22366, n22363, 
        n22360, n22357, n22354, n22351, n22348, n21451, n22345, 
        n15174, n15173, n15172, n15171, n15170, n15169, n15168, 
        n15167, n15166, n15165, n15164, n15163, n15162, n15161, 
        n15160, n15159, n15158, n15157, n15156, n15155, n15154, 
        n15153, n15152, n15151, n15150, n15149, n15148, n15147, 
        n15146, n15145, n15144, n22342, n21167, n15143, n15142, 
        n15141, n15140, n15139, n15138, n15137, n15136, n15135, 
        n15134, n15133, n15132, n15131, n15130, n15129, n15128, 
        n15127, n15126, n15125, n15124, n15123, n15122, n15121, 
        n15120, n15119, n15118, n15117, n15116, n15115, n15114, 
        n15113, n14_adj_1549, n22339, n22336, n14_adj_1550, n14_adj_1551, 
        n14_adj_1552, n14_adj_1553, n10_adj_1554, n14_adj_1555, n14_adj_1556, 
        n20244, n16_adj_1557, n22333, n22330, n19618, n7_adj_1558, 
        n8_adj_1559, n22327, n7_adj_1560, n8_adj_1561, n22324, n7_adj_1562, 
        n8_adj_1563, n7_adj_1564, n8_adj_1565, n22321, n22318, n7_adj_1566, 
        n8_adj_1567, n7_adj_1568, n8_adj_1569, n7_adj_1570, n8_adj_1571, 
        n22315, n7_adj_1572, n8_adj_1573, n22312, n13932, n13936, 
        n13940, n13944, n22309, n22306, n13948, n21234, n13952, 
        n13956, n13960, n22303, n13964, n13968, n13972, n25_adj_1574, 
        n22300, n13976, n13980, n13984, n13988, n13992, n15112, 
        n13996, n15111, n14000, n14004, n14008, n14012, n15110, 
        n14022, n14026, n14030, n14034, n14529, n14038, n14042, 
        n14046, n14050, n14054, n14058, n14062, n14066, n26_adj_1575, 
        n14078, n14082, n14086, n14090, n14094, n14506, n14_adj_1576, 
        n14_adj_1577, n14_adj_1578, n14_adj_1579, n14_adj_1580, n22297, 
        n15109, n15108, n15107, n14018, n21317, n14130, n20122, 
        n21316, n22294, n2_adj_1581, n20915, n8_adj_1582, n14_adj_1583, 
        n19617, n19616, n19594, n14_adj_1584, n14_adj_1585, n4_adj_1586, 
        n4_adj_1587, n1_adj_1588, n2_adj_1589, n4_adj_1590, n22291, 
        n22288, n1_adj_1591, n2_adj_1592, n4_adj_1593, n4_adj_1594, 
        n22285, n4_adj_1595, n22282, n21126, n4_adj_1596, n20378, 
        n14750, n13457, n22279, n27_adj_1597, n22276, n19615, n14771, 
        n19614, n15775, n22273, n15772, n22270, n20944, n12136, 
        n15770, n21435, n15767, n21097, n15765, n15762, n22267, 
        n22264, n14655, n15759, n21_adj_1598, n13087, n20396, n15756, 
        n22261, n15753, n6, n15750, n22255, n14_adj_1599, n20010, 
        n15747, n20046, n15744, n4_adj_1600, n13176, n15741, n22252, 
        n11915, n20801, n15738, n12092, n13165, n22249, n14647, 
        n14785, n21202, n21092, n21176, n19613, n20142, n10_adj_1601, 
        n22246, n10598, n22243, n22240, n20144, n20146, n22237, 
        n22234, n20148, n16571, n20150, n19592, n22231, n20152, 
        n22228, n21055, n22225, n19588, n19591, n21309, n22222, 
        n19958, n19771, n19770, n19769, n21046, n19960, n19962, 
        n19768, n22219, n19612, n19767, n19766, n19765, n22216, 
        n21175, n19764, n12653, n22213, n19763, n22210, n19762, 
        n22207, n22204, n20362, n8_adj_1602, n21045, n19648, n19761, 
        n22201, n19760, n19759, n19758, n14884, n19757, n19956, 
        n19756, n22192, n17507, n19755, n19940, n19611, n19754, 
        n20394, n9306, n22189, n16_adj_1603, n20202, n19964, n12085, 
        n22186, n20508, n9255, n30_adj_1604, n19647, n19753, n19752, 
        n19751, n19750, n19610, n20518, n19749, n19748, n19747, 
        n22183, n19746, n20520, n20522, n12_adj_1605, n11396, n11654, 
        n20524, n19609, n20526, n11390, n19646, n21088, n19645, 
        n13, n19745, n20528, n11385, n21060, n20530, n19856, n19608, 
        n20532, n19644, n19744, n19743, n19742, n19741, n19740, 
        n19739, n20534, n21197, n1_adj_1606, n19_adj_1607, n38_adj_1608, 
        n21196, n19643, n8813, n19642, n20536, n20354, n20826, 
        n20350, n11361, n20392, n21124, n12498, n20538, n11896, 
        n11919, n20540, n20843, n20542, n19587, n21286, n20544, 
        n18_adj_1609, n20546, n20917, n21285, n20799, n19590, n20548, 
        n19586, n19607, n19641, n20550, n20914, n19640, n20552, 
        n19639, n19638, n11961, n19637, n20912, n21014, n19606, 
        n19636, n20554, n21150, n16563, n13293, n11991, n11, n20556, 
        n20867, n14_adj_1610, n11_adj_1611, n19635, n14_adj_1612, 
        n11860, n20558, n11853, n20560, n20562, n21273, n21272, 
        n20939, n20804, n20564, n15100, n16554, n11819, n18984, 
        n20893, n18991, n18993, n20566, n31_adj_1613, n23_adj_1614, 
        n22_adj_1615, n21052, n15099, n20568, n20570, n7_adj_1616, 
        n12429, n20572, n21049, n20574, n14671, n20964, n12178, 
        n20576, n15098, n15097, n15096, n12220, n12219, n21151, 
        n15095, n15094, n15093, n20852, n19634, n14799, n21218, 
        n20058, n19633, n19632, n12399, n12395, n19631, n20578, 
        n21137, n19630, n20992, n19605, n19604, n15092, n19603, 
        n12381, n20_adj_1617, n19629, n20580, n19628, n19602, n19601, 
        n20962, n20140, n19600, n16891, n20582, n30_adj_1618, n12367, 
        n21370, n20188, n21369, n14764, n20584, n18_adj_1619, n20586, 
        n19627, n20588, n23_adj_1620, n11741, n11744, n20590, n19626, 
        n11_adj_1621, n21085, n14778, n24, n20592, n17_adj_1622, 
        n11714, n19_adj_1623, n22_adj_1624, n30_adj_1625, n20594, 
        n19593, n20130, n20596, n19595, n21364, n21133, n19902, 
        n19_adj_1626, n22_adj_1627, n30_adj_1628, n20598, n12336, 
        n21082, n21076, n20296, n21073, n20600, n21071, n21070, 
        n20850, n20292, n20602, n19_adj_1629, n22_adj_1630, n30_adj_1631, 
        n20288, n20604, n21178, n20606, n19_adj_1632, n22_adj_1633, 
        n30_adj_1634, n17487, n20608, n19589, n17489, n20610, n12_adj_1635, 
        n20612, n17480, n11850, n19_adj_1636, n21194, n22_adj_1637, 
        n21352, n30_adj_1638, n20614, n20284, n10520, n19625, n20616, 
        n10697, n20618, n19599, n19_adj_1639, n22_adj_1640, n21062, 
        n30_adj_1641, n24_adj_1642, n4_adj_1643, n26_adj_1644, n20280, 
        n21350, n10717, n21122, n20853, n12226;
    
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(65[3:10])
    assign IAC_MOSI = VAC_MOSI;   // zim_main.vhd(68[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11744), 
            .D(eis_state_2__N_171[0]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_DFFN dds0_mclk_294 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_709));   // zim_main.vhd(440[3] 446[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(\comm_buf[0] [5]), 
            .I3(VAC_MOSI), .O(n14_adj_1583));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_DFFE comm_clear_301 (.Q(comm_clear), .C(clk_32MHz), .E(n11361), 
            .D(comm_clear_N_708));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i15337_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1577));   // zim_main.vhd(533[4] 818[13])
    defparam i15337_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15338_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1578));   // zim_main.vhd(533[4] 818[13])
    defparam i15338_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), .I2(n12498), 
            .I3(adc_state[0]), .O(n20540));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE comm_response_302 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n11385), 
            .D(ICE_GPMI_0_N_706));   // zim_main.vhd(531[3] 819[10])
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[35:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[17], buf_adcdata_vac[17], 
            buf_adcdata_iac[16], buf_adcdata_vac[16]}));
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
    SB_LUT4 i15339_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1579));   // zim_main.vhd(533[4] 818[13])
    defparam i15339_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_4_lut (.I0(n12219), .I1(n20944), .I2(n20962), .I3(n20801), 
            .O(n20964));
    defparam i2_4_lut.LUT_INIT = 16'hc800;
    SB_LUT4 i15340_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1580));   // zim_main.vhd(533[4] 818[13])
    defparam i15340_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19278_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(VAC_MOSI), .O(n21888));
    defparam i19278_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20964), 
            .D(comm_state_3__N_9[0]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_216[0]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i18510_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n21120));
    defparam i18510_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i18512_4_lut (.I0(n21120), .I1(n21888), .I2(comm_state[2]), 
            .I3(n14529), .O(n21122));
    defparam i18512_4_lut.LUT_INIT = 16'hfaca;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[0]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF clk_RTD_287 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_716));   // zim_main.vhd(389[3] 396[10])
    SB_LUT4 comm_state_3__I_0_342_Mux_0_i15_3_lut (.I0(n21122), .I1(n9306), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(comm_state_3__N_9[0]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1_2_lut_3_lut_adj_47 (.I0(n18991), .I1(comm_state[0]), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n18993));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut_adj_47.LUT_INIT = 16'h2020;
    SB_LUT4 i1_2_lut_3_lut_adj_48 (.I0(n12226), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n20843));
    defparam i1_2_lut_3_lut_adj_48.LUT_INIT = 16'ha8a8;
    SB_LUT4 i15347_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1550));   // zim_main.vhd(533[4] 818[13])
    defparam i15347_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[43:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[21], buf_adcdata_vac[21], 
            buf_adcdata_iac[20], buf_adcdata_vac[20]}));
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[39:36]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[19], buf_adcdata_vac[19], 
            buf_adcdata_iac[18], buf_adcdata_vac[18]}));
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
    SB_LUT4 i15341_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1551));   // zim_main.vhd(533[4] 818[13])
    defparam i15341_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_index[1]), .O(n18984));   // zim_main.vhd(562[5] 569[12])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_CARRY add_125_5 (.CI(n19627), .I0(data_index[3]), .I1(n10598), 
            .CO(n19628));
    SB_LUT4 i12_4_lut_adj_49 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20538));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_49.LUT_INIT = 16'hca0a;
    SB_LUT4 i19115_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21341));
    defparam i19115_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 add_125_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10598), 
            .I3(n19626), .O(n7_adj_1570)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i19318_3_lut_4_lut (.I0(n18991), .I1(comm_state[0]), .I2(comm_index[2]), 
            .I3(comm_index[0]), .O(n21339));
    defparam i19318_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_DFFN dds0_mclkcnt_i7_3772__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(442[4] 445[11])
    SB_CARRY add_67_5 (.CI(n19588), .I0(data_count[3]), .I1(VAC_MOSI), 
            .CO(n19589));
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_50 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_index[1]), .O(n18991));   // zim_main.vhd(562[5] 569[12])
    defparam i1_2_lut_3_lut_4_lut_adj_50.LUT_INIT = 16'h0002;
    SB_LUT4 i18514_4_lut (.I0(data_idxvec[13]), .I1(buf_data_vac[43]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21124));
    defparam i18514_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i15342_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1552));   // zim_main.vhd(533[4] 818[13])
    defparam i15342_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i9325_1_lut (.I0(wdtick_flag), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11741));   // zim_main.vhd(401[3] 412[10])
    defparam i9325_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_51 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(n11819), .O(n16891));
    defparam i1_2_lut_3_lut_4_lut_adj_51.LUT_INIT = 16'h10ff;
    SB_LUT4 i15327_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1584));   // zim_main.vhd(533[4] 818[13])
    defparam i15327_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFER wdtick_cnt_3763_3764__i1 (.Q(wdtick_cnt[0]), .C(TEST_LED), 
            .E(n11741), .D(n25), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i15343_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1553));   // zim_main.vhd(533[4] 818[13])
    defparam i15343_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_724), .C(clk_32MHz), .E(n11744), 
            .D(eis_state_2__N_171[2]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 add_67_4_lut (.I0(VAC_MOSI), .I1(data_count[2]), .I2(VAC_MOSI), 
            .I3(n19587), .O(n341)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11744), 
            .D(eis_state_2__N_171[1]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(n20804), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(comm_state[2]), .O(n12092));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i15326_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1585));   // zim_main.vhd(533[4] 818[13])
    defparam i15326_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp_adj_1648[30]), .I1(cmd_rdadctmp_adj_1648[29]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20464));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_53 (.I0(cmd_rdadctmp_adj_1648[29]), .I1(cmd_rdadctmp_adj_1648[28]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20428));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_53.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut (.I0(n11338), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8813));   // zim_main.vhd(533[4] 818[13])
    defparam i3_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i18450_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21060));
    defparam i18450_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1540));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18513_4_lut (.I0(n23_adj_1540), .I1(req_data_cnt[13]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21123));
    defparam i18513_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18452_4_lut (.I0(n21060), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21062));
    defparam i18452_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20536));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_55 (.I0(cmd_rdadctmp_adj_1648[28]), .I1(cmd_rdadctmp_adj_1648[27]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20426));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_55.LUT_INIT = 16'hca0a;
    SB_LUT4 i15344_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1555));   // zim_main.vhd(533[4] 818[13])
    defparam i15344_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_state[1]), .I1(n10717), .I2(n20907), 
            .I3(comm_state[2]), .O(n10598));   // zim_main.vhd(533[4] 818[13])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut (.I0(DTRIG_N_918), .I1(adc_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20858));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_56 (.I0(cmd_rdadctmp_adj_1648[27]), .I1(cmd_rdadctmp_adj_1648[26]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20424));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_57 (.I0(cmd_rdadctmp_adj_1648[26]), .I1(cmd_rdadctmp_adj_1648[25]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20422));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'hca0a;
    SB_LUT4 i12225_2_lut (.I0(n13457), .I1(eis_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14647));   // zim_main.vhd(451[3] 526[10])
    defparam i12225_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15345_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1556));   // zim_main.vhd(533[4] 818[13])
    defparam i15345_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12743_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9306), .I3(n12399), .O(n15161));   // zim_main.vhd(531[3] 819[10])
    defparam i12743_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1688[10]), .I1(cmd_rdadctmp_adj_1688[9]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20076));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_59 (.I0(cmd_rdadctmp_adj_1648[31]), .I1(cmd_rdadctmp_adj_1648[30]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20466));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_59.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_60 (.I0(cmd_rdadctmp_adj_1688[9]), .I1(cmd_rdadctmp_adj_1688[8]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20074));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'h0aca;
    SB_CARRY add_125_4 (.CI(n19626), .I0(data_index[2]), .I1(n10598), 
            .CO(n19627));
    SB_LUT4 add_125_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10598), 
            .I3(n19625), .O(n7_adj_1572)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_7_lut (.I0(VAC_MOSI), .I1(data_cntvec[5]), .I2(VAC_MOSI), 
            .I3(n19599), .O(n356)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_125_3 (.CI(n19625), .I0(data_index[1]), .I1(n10598), 
            .CO(n19626));
    SB_LUT4 i6369_3_lut (.I0(\comm_buf[0] [1]), .I1(data_index[9]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1559));   // zim_main.vhd(533[4] 818[13])
    defparam i6369_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20534));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i18462_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21072));
    defparam i18462_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_19734 (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n22249));
    defparam comm_index_0__bdd_4_lut_19734.LUT_INIT = 16'he4aa;
    SB_LUT4 n22249_bdd_4_lut (.I0(n22249), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n22252));
    defparam n22249_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18463_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21073));
    defparam i18463_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_62 (.I0(cmd_rdadctmp_adj_1688[8]), .I1(cmd_rdadctmp_adj_1688[7]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20072));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_63 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(n20378));   // zim_main.vhd(531[3] 819[10])
    defparam i1_2_lut_3_lut_adj_63.LUT_INIT = 16'he0e0;
    SB_LUT4 i12_4_lut_adj_64 (.I0(cmd_rdadctmp_adj_1688[7]), .I1(cmd_rdadctmp_adj_1688[6]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20070));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp_adj_1688[6]), .I1(cmd_rdadctmp_adj_1688[5]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20068));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_66 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20532));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_67 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20530));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_7 (.CI(n19599), .I0(data_cntvec[5]), .I1(VAC_MOSI), 
            .CO(n19600));
    SB_LUT4 mux_127_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1547));   // zim_main.vhd(586[5] 691[14])
    defparam mux_127_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20528));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i19092_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21569));
    defparam i19092_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19106_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21568));
    defparam i19106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_69 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20526));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_70 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20574));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_71 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20524));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'hca0a;
    SB_LUT4 i18472_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21082));
    defparam i18472_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18471_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n21081));
    defparam i18471_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_72 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20522));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1514));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_3_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n10_adj_1554));
    defparam i17_3_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i12742_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9306), .I3(n12399), .O(n15160));   // zim_main.vhd(531[3] 819[10])
    defparam i12742_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_68_6_lut (.I0(VAC_MOSI), .I1(data_cntvec[4]), .I2(VAC_MOSI), 
            .I3(n19598), .O(n357)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12741_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9306), .I2(\comm_buf[0] [5]), 
            .I3(n12399), .O(n15159));   // zim_main.vhd(531[3] 819[10])
    defparam i12741_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp_adj_1688[5]), .I1(cmd_rdadctmp_adj_1688[4]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20066));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'h0aca;
    SB_LUT4 i18516_3_lut (.I0(n16_adj_1514), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21126));
    defparam i18516_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1515));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_9_i15_4_lut (.I0(n7_adj_1558), .I1(n8_adj_1559), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[9]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_9_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19634 (.I0(comm_cmd[1]), .I1(n21568), 
            .I2(n21569), .I3(comm_cmd[2]), .O(n22243));
    defparam comm_cmd_1__bdd_4_lut_19634.LUT_INIT = 16'he4aa;
    SB_LUT4 i6379_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1561));   // zim_main.vhd(533[4] 818[13])
    defparam i6379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22243_bdd_4_lut (.I0(n22243), .I1(n21309), .I2(n23_adj_1541), 
            .I3(comm_cmd[2]), .O(n22246));
    defparam n22243_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_354_Mux_8_i15_4_lut (.I0(n7_adj_1560), .I1(n8_adj_1561), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[8]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12740_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9306), .I3(n12399), .O(n15158));   // zim_main.vhd(531[3] 819[10])
    defparam i12740_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_74 (.I0(cmd_rdadctmp_adj_1688[4]), .I1(cmd_rdadctmp_adj_1688[3]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20064));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1688[3]), .I1(cmd_rdadctmp_adj_1688[2]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20062));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'h0aca;
    SB_LUT4 i18517_3_lut (.I0(n19_adj_1515), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21127));
    defparam i18517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12739_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9306), .I3(n12399), .O(n15157));   // zim_main.vhd(531[3] 819[10])
    defparam i12739_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12738_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9306), .I3(n12399), .O(n15156));   // zim_main.vhd(531[3] 819[10])
    defparam i12738_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_4_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n21_adj_1598));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h2208;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n10717));   // zim_main.vhd(764[11:20])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i6389_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1563));   // zim_main.vhd(533[4] 818[13])
    defparam i6389_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12737_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9306), .I3(n12399), .O(n15155));   // zim_main.vhd(531[3] 819[10])
    defparam i12737_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19664 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22237));
    defparam comm_cmd_0__bdd_4_lut_19664.LUT_INIT = 16'he4aa;
    SB_LUT4 i12736_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9306), .I3(n12399), .O(n15154));   // zim_main.vhd(531[3] 819[10])
    defparam i12736_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12735_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9306), .I3(n12399), .O(n15153));   // zim_main.vhd(531[3] 819[10])
    defparam i12735_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12734_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9306), .I3(n12399), .O(n15152));   // zim_main.vhd(531[3] 819[10])
    defparam i12734_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22237_bdd_4_lut (.I0(n22237), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22240));
    defparam n22237_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12733_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9306), .I3(n12399), .O(n15151));   // zim_main.vhd(531[3] 819[10])
    defparam i12733_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12732_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9306), .I3(n12399), .O(n15150));   // zim_main.vhd(531[3] 819[10])
    defparam i12732_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19621 (.I0(comm_cmd[1]), .I1(n19_adj_1511), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22231));
    defparam comm_cmd_1__bdd_4_lut_19621.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut (.I0(n3), .I1(n2358), .I2(n20917), .I3(VAC_MOSI), 
            .O(n19902));
    defparam i2_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i12731_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9306), .I3(n12399), .O(n15149));   // zim_main.vhd(531[3] 819[10])
    defparam i12731_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22231_bdd_4_lut (.I0(n22231), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1510), 
            .I3(comm_cmd[2]), .O(n22234));
    defparam n22231_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_129_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1516));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_7_i15_4_lut (.I0(n7_adj_1562), .I1(n8_adj_1563), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[7]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19639 (.I0(comm_cmd[2]), .I1(n21177), 
            .I2(n21178), .I3(comm_cmd[3]), .O(n22225));
    defparam comm_cmd_2__bdd_4_lut_19639.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut (.I0(n20801), .I1(n19902), .I2(n12219), .I3(n4_adj_1586), 
            .O(n20829));
    defparam i1_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i12730_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9306), .I3(n12399), .O(n15148));   // zim_main.vhd(531[3] 819[10])
    defparam i12730_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18523_4_lut (.I0(n26_adj_1516), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21133));
    defparam i18523_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n22225_bdd_4_lut (.I0(n22225), .I1(n21046), .I2(n21045), .I3(comm_cmd[3]), 
            .O(n22228));
    defparam n22225_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12729_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9306), .I3(n12399), .O(n15147));   // zim_main.vhd(531[3] 819[10])
    defparam i12729_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18522_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n21132));
    defparam i18522_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19114_2_lut (.I0(comm_state_3__N_420[3]), .I1(comm_state[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21435));   // zim_main.vhd(533[4] 818[13])
    defparam i19114_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i7_4_lut (.I0(n14130), .I1(n20880), 
            .I2(comm_state[2]), .I3(n14529), .O(n17815));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_3_i7_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20520));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i15_4_lut (.I0(n17815), .I1(n21435), 
            .I2(comm_state[3]), .I3(n9306), .O(comm_state_3__N_9[3]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i3887_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(comm_index[1]), .O(comm_index_2__N_447[1]));   // zim_main.vhd(715[5] 725[12])
    defparam i3887_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i12728_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0] [7]), 
            .I2(n9306), .I3(n12395), .O(n15146));   // zim_main.vhd(531[3] 819[10])
    defparam i12728_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19616 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(eis_start), .I3(comm_cmd[1]), .O(n22219));
    defparam comm_cmd_0__bdd_4_lut_19616.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_77 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20518));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 n22219_bdd_4_lut (.I0(n22219), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n22222));
    defparam n22219_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12727_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9306), .I3(n12395), .O(n15145));   // zim_main.vhd(531[3] 819[10])
    defparam i12727_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:44]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[23], buf_adcdata_vac[23], 
            buf_adcdata_iac[22], buf_adcdata_vac[22]}));
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged11 (.RDATA({buf_data_vac[3:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[1], buf_adcdata_vac[1], 
            buf_adcdata_iac[0], buf_adcdata_vac[0]}));
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged11.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged10 (.RDATA({buf_data_vac[7:4]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[3], buf_adcdata_vac[3], 
            buf_adcdata_iac[2], buf_adcdata_vac[2]}));
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged10.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged9 (.RDATA({buf_data_vac[11:8]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[5], buf_adcdata_vac[5], 
            buf_adcdata_iac[4], buf_adcdata_vac[4]}));
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged9.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 add_125_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10598), 
            .I3(VCC_net), .O(n7)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_2_lut.LUT_INIT = 16'hA3AC;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged8 (.RDATA({buf_data_vac[15:12]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[7], buf_adcdata_vac[7], 
            buf_adcdata_iac[6], buf_adcdata_vac[6]}));
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged8.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged7 (.RDATA({buf_data_vac[19:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[9], buf_adcdata_vac[9], 
            buf_adcdata_iac[8], buf_adcdata_vac[8]}));
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged7.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged6 (.RDATA({buf_data_vac[23:20]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[11], buf_adcdata_vac[11], 
            buf_adcdata_iac[10], buf_adcdata_vac[10]}));
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam iac_raw_buf_vac_raw_buf_merged6.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19611 (.I0(comm_cmd[1]), .I1(n19_adj_1486), 
            .I2(buf_readRTD[0]), .I3(comm_cmd[2]), .O(n22213));
    defparam comm_cmd_1__bdd_4_lut_19611.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_78 (.I0(comm_cmd[6]), .I1(comm_cmd[4]), .I2(comm_cmd[5]), 
            .I3(VAC_MOSI), .O(n20878));   // zim_main.vhd(750[5] 805[14])
    defparam i2_3_lut_adj_78.LUT_INIT = 16'h0404;
    SB_LUT4 mux_137_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1588));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[27:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[13], buf_adcdata_vac[13], 
            buf_adcdata_iac[12], buf_adcdata_vac[12]}));
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged4 (.RDATA({buf_data_vac[31:28]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_734), 
            .WADDR({data_count}), .WDATA({buf_adcdata_iac[15], buf_adcdata_vac[15], 
            buf_adcdata_iac[14], buf_adcdata_vac[14]}));
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
    SB_LUT4 i12726_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9306), .I2(\comm_buf[0] [5]), 
            .I3(n12395), .O(n15144));   // zim_main.vhd(531[3] 819[10])
    defparam i12726_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 n22213_bdd_4_lut (.I0(n22213), .I1(buf_adcdata_iac[8]), .I2(n16_adj_1487), 
            .I3(comm_cmd[2]), .O(n22216));
    defparam n22213_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_137_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1589));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_5_lut (.I0(VAC_MOSI), .I1(data_count[3]), .I2(VAC_MOSI), 
            .I3(n19588), .O(n340)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12725_3_lut_4_lut (.I0(buf_cfgRTD[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9306), .I3(n12395), .O(n15143));   // zim_main.vhd(531[3] 819[10])
    defparam i12725_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_68_6 (.CI(n19598), .I0(data_cntvec[4]), .I1(VAC_MOSI), 
            .CO(n19599));
    SB_CARRY add_125_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10598), 
            .CO(n19625));
    SB_LUT4 mux_129_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1518));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_79 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20516));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_80 (.I0(DTRIG_N_918_adj_1451), .I1(adc_state_adj_1647[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20853));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_80.LUT_INIT = 16'h2222;
    SB_LUT4 i12724_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9306), .I3(n12395), .O(n15142));   // zim_main.vhd(531[3] 819[10])
    defparam i12724_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19276_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21539));
    defparam i19276_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19598 (.I0(comm_cmd[1]), .I1(n19_adj_1518), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22207));
    defparam comm_cmd_1__bdd_4_lut_19598.LUT_INIT = 16'he4aa;
    SB_LUT4 i6399_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1565));   // zim_main.vhd(533[4] 818[13])
    defparam i6399_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_6_i15_4_lut (.I0(n7_adj_1564), .I1(n8_adj_1565), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[6]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_137_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1590));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12723_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9306), .I3(n12395), .O(n15141));   // zim_main.vhd(531[3] 819[10])
    defparam i12723_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20576));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_82 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19964));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_83 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19962));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_84 (.I0(comm_cmd[2]), .I1(n20878), .I2(n30), 
            .I3(comm_cmd[1]), .O(comm_state_3__N_420[3]));   // zim_main.vhd(750[5] 805[14])
    defparam i1_4_lut_adj_84.LUT_INIT = 16'hc0c4;
    SB_LUT4 i15090_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n17489));
    defparam i15090_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_readRTD[15]), .I1(read_buf[15]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20324));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 i15092_4_lut (.I0(n17487), .I1(n17489), .I2(comm_state[3]), 
            .I3(n9306), .O(data_index_9__N_216[5]));   // zim_main.vhd(243[9:19])
    defparam i15092_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_86 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19938));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'h0aca;
    SB_LUT4 i6419_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1567));   // zim_main.vhd(533[4] 818[13])
    defparam i6419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_87 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19954));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_88 (.I0(buf_readRTD[14]), .I1(read_buf[14]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20322));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_354_Mux_4_i15_4_lut (.I0(n7_adj_1566), .I1(n8_adj_1567), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[4]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6429_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1569));   // zim_main.vhd(533[4] 818[13])
    defparam i6429_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_readRTD[13]), .I1(read_buf[13]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20320));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_354_Mux_3_i15_4_lut (.I0(n7_adj_1568), .I1(n8_adj_1569), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[3]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_90 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19960));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'h0aca;
    SB_LUT4 i6439_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1571));   // zim_main.vhd(533[4] 818[13])
    defparam i6439_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_2_i15_4_lut (.I0(n7_adj_1570), .I1(n8_adj_1571), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[2]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n22207_bdd_4_lut (.I0(n22207), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1517), 
            .I3(comm_cmd[2]), .O(n22210));
    defparam n22207_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_readRTD[12]), .I1(read_buf[12]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20318));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'h0aca;
    SB_LUT4 i12722_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9306), .I3(n12395), .O(n15140));   // zim_main.vhd(531[3] 819[10])
    defparam i12722_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_92 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19958));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'h0aca;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14), 
            .D(comm_state_3__N_9[1]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n20829), 
            .D(comm_state_3__N_9[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_216[1]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_93 (.I0(buf_readRTD[11]), .I1(read_buf[11]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20316));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_94 (.I0(cmd_rdadctmp_adj_1648[1]), .I1(cmd_rdadctmp_adj_1648[0]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20578));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i458_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n2358));   // zim_main.vhd(562[5] 569[12])
    defparam i458_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_95 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19956));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 i19296_4_lut (.I0(ICE_SPI_CE0), .I1(comm_state[1]), .I2(n2358), 
            .I3(comm_state[2]), .O(n21370));
    defparam i19296_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i12721_3_lut_4_lut (.I0(VAC_FLT1), .I1(\comm_buf[0] [7]), .I2(n9306), 
            .I3(n12381), .O(n15139));   // zim_main.vhd(531[3] 819[10])
    defparam i12721_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_readRTD[10]), .I1(read_buf[10]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20314));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'h0aca;
    SB_LUT4 i19388_4_lut (.I0(comm_state[3]), .I1(n21369), .I2(n21370), 
            .I3(comm_state[0]), .O(n14));
    defparam i19388_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i12_4_lut_adj_97 (.I0(cmd_rdadctmp_adj_1648[2]), .I1(cmd_rdadctmp_adj_1648[1]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20580));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_98 (.I0(cmd_rdadctmp_adj_1648[3]), .I1(cmd_rdadctmp_adj_1648[2]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20582));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_216[2]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_216[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_216[4]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_216[5]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_216[6]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_216[7]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_216[8]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i9 (.Q(data_index[9]), .C(clk_32MHz), .D(data_index_9__N_216[9]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[1]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[2]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[4]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[5]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[6]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[7]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[8]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[9]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[10]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[11]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[12]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[13]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[14]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12280), 
            .D(data_idxvec_15__N_226[15]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20312));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_100 (.I0(cmd_rdadctmp_adj_1648[4]), .I1(cmd_rdadctmp_adj_1648[3]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20584));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'hca0a;
    SB_LUT4 i6449_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1573));   // zim_main.vhd(533[4] 818[13])
    defparam i6449_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_1_i15_4_lut (.I0(n7_adj_1572), .I1(n8_adj_1573), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[1]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4408_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8813), 
            .I3(VAC_MOSI), .O(n8_adj_1532));   // zim_main.vhd(533[4] 818[13])
    defparam i4408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_0_i15_4_lut (.I0(n7), .I1(n8_adj_1532), 
            .I2(comm_state[3]), .I3(n9306), .O(data_index_9__N_216[0]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6973_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9306));   // zim_main.vhd(533[4] 818[13])
    defparam i6973_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_101 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20917));
    defparam i1_2_lut_adj_101.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12720_3_lut_4_lut (.I0(VAC_FLT0), .I1(\comm_buf[0] [6]), .I2(n9306), 
            .I3(n12381), .O(n15138));   // zim_main.vhd(531[3] 819[10])
    defparam i12720_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12719_3_lut_4_lut (.I0(VAC_OSR1), .I1(n9306), .I2(\comm_buf[0] [5]), 
            .I3(n12381), .O(n15137));   // zim_main.vhd(531[3] 819[10])
    defparam i12719_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12718_3_lut_4_lut (.I0(VAC_OSR0), .I1(\comm_buf[0] [4]), .I2(n9306), 
            .I3(n12381), .O(n15136));   // zim_main.vhd(531[3] 819[10])
    defparam i12718_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12717_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9306), 
            .I3(n12381), .O(n15135));   // zim_main.vhd(531[3] 819[10])
    defparam i12717_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SPI_SLAVE comm_spi (.comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), 
            .comm_clear(comm_clear), .GND_net(VAC_MOSI), .comm_rx_buf({comm_rx_buf}), 
            .ICE_SPI_SCLK(ICE_SPI_SCLK), .VCC_net(VCC_net), .ICE_SPI_MOSI(ICE_SPI_MOSI), 
            .comm_tx_buf({comm_tx_buf}), .ICE_SPI_MISO(ICE_SPI_MISO));   // zim_main.vhd(832[13:22])
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp_adj_1648[5]), .I1(cmd_rdadctmp_adj_1648[4]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20586));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 i12716_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9306), 
            .I3(n12381), .O(n15134));   // zim_main.vhd(531[3] 819[10])
    defparam i12716_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp_adj_1648[6]), .I1(cmd_rdadctmp_adj_1648[5]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20588));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_104 (.I0(cmd_rdadctmp_adj_1648[7]), .I1(cmd_rdadctmp_adj_1648[6]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20590));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'hca0a;
    SB_LUT4 i19119_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21350));
    defparam i19119_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_129_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1498));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp_adj_1648[8]), .I1(cmd_rdadctmp_adj_1648[7]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20592));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp_adj_1648[9]), .I1(cmd_rdadctmp_adj_1648[8]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20594));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i15_4_lut (.I0(n22426), .I1(n8_adj_1582), 
            .I2(comm_state[3]), .I3(n9306), .O(comm_state_3__N_9[1]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_107 (.I0(comm_cmd[7]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[7]), .O(n20152));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(cmd_rdadctmp_adj_1688[2]), .I1(cmd_rdadctmp_adj_1688[1]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20060));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15166_2_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17564));   // zim_main.vhd(533[4] 818[13])
    defparam i15166_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_109 (.I0(comm_cmd[6]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[6]), .O(n20150));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_110 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20310));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20308));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 i12679_3_lut (.I0(req_data_cnt[0]), .I1(n14_adj_1533), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15097));   // zim_main.vhd(531[3] 819[10])
    defparam i12679_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19593 (.I0(comm_cmd[1]), .I1(n26), .I2(n21218), 
            .I3(comm_cmd[2]), .O(n22201));
    defparam comm_cmd_1__bdd_4_lut_19593.LUT_INIT = 16'he4aa;
    SB_LUT4 n22201_bdd_4_lut (.I0(n22201), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22204));
    defparam n22201_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12680_3_lut (.I0(acadc_rst), .I1(\comm_buf[0] [2]), .I2(n10520), 
            .I3(VAC_MOSI), .O(n15098));   // zim_main.vhd(531[3] 819[10])
    defparam i12680_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(comm_cmd[5]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[5]), .O(n20148));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp_adj_1648[10]), .I1(cmd_rdadctmp_adj_1648[9]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20596));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n14506), .I2(n11896), .I3(comm_rx_buf[4]), 
            .O(n20146));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12715_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9306), 
            .I3(n12381), .O(n15133));   // zim_main.vhd(531[3] 819[10])
    defparam i12715_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i11_4_lut_adj_114 (.I0(comm_cmd[3]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[3]), .O(n20144));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20306));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_116 (.I0(comm_cmd[2]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[2]), .O(n20142));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_117 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20304));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_118 (.I0(comm_cmd[1]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[1]), .O(n20140));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i6834_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9255));   // zim_main.vhd(533[4] 818[13])
    defparam i6834_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_119 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20302));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_120 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20300));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_121 (.I0(n12226), .I1(n11853), .I2(n9255), .I3(n12219), 
            .O(n11860));
    defparam i1_4_lut_adj_121.LUT_INIT = 16'h8880;
    SB_LUT4 i12714_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9306), .I3(n12367), .O(n15132));   // zim_main.vhd(531[3] 819[10])
    defparam i12714_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19194_2_lut (.I0(comm_state[2]), .I1(comm_cmd[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21317));   // zim_main.vhd(531[3] 819[10])
    defparam i19194_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19098_4_lut (.I0(n21317), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_state[3]), .O(n21316));   // zim_main.vhd(531[3] 819[10])
    defparam i19098_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i12_4_lut_adj_122 (.I0(comm_length[2]), .I1(n21316), .I2(n11860), 
            .I3(comm_cmd[0]), .O(n20046));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 i11712_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14130));   // zim_main.vhd(533[4] 818[13])
    defparam i11712_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(n20912), .O(n20915));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13320_4_lut (.I0(n16891), .I1(buf_dds1[15]), .I2(\comm_buf[0] [7]), 
            .I3(n11819), .O(n15738));   // zim_main.vhd(531[3] 819[10])
    defparam i13320_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_123 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20298));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp_adj_1688[1]), .I1(cmd_rdadctmp_adj_1688[0]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20058));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'h0aca;
    SB_LUT4 i13323_4_lut (.I0(n16891), .I1(buf_dds1[14]), .I2(\comm_buf[0] [6]), 
            .I3(n11819), .O(n15741));   // zim_main.vhd(531[3] 819[10])
    defparam i13323_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_125 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20296));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_126 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20292));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_127 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20288));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 i12713_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9306), .I3(n12367), .O(n15131));   // zim_main.vhd(531[3] 819[10])
    defparam i12713_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd_rdadctmp_adj_1648[11]), .I1(cmd_rdadctmp_adj_1648[10]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20598));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'hca0a;
    SB_LUT4 i12712_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9306), .I2(\comm_buf[0] [5]), 
            .I3(n12367), .O(n15130));   // zim_main.vhd(531[3] 819[10])
    defparam i12712_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i13329_4_lut (.I0(n16891), .I1(buf_dds1[12]), .I2(\comm_buf[0] [4]), 
            .I3(n11819), .O(n15747));   // zim_main.vhd(531[3] 819[10])
    defparam i13329_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12681_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10520), 
            .I3(VAC_MOSI), .O(n15099));   // zim_main.vhd(531[3] 819[10])
    defparam i12681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_129 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20280));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_130 (.I0(n8), .I1(comm_state[0]), .I2(n11338), 
            .I3(comm_state[3]), .O(n10520));
    defparam i2_4_lut_adj_130.LUT_INIT = 16'h0100;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(VAC_CLK));   // zim_main.vhd(336[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_131 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20272));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1517));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20268));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_133 (.I0(dds_state_adj_1671[2]), .I1(dds_state_adj_1671[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20470));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_133.LUT_INIT = 16'h4444;
    SB_LUT4 i12682_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n10520), 
            .I3(VAC_MOSI), .O(n15100));   // zim_main.vhd(531[3] 819[10])
    defparam i12682_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_134 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20264));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'hca0a;
    SB_LUT4 i13332_4_lut (.I0(n16891), .I1(buf_dds1[11]), .I2(\comm_buf[0] [3]), 
            .I3(n11819), .O(n15750));   // zim_main.vhd(531[3] 819[10])
    defparam i13332_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_135 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20260));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_136 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20256));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_137 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20252));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i13335_4_lut (.I0(n16891), .I1(buf_dds1[10]), .I2(\comm_buf[0] [2]), 
            .I3(n11819), .O(n15753));   // zim_main.vhd(531[3] 819[10])
    defparam i13335_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13338_4_lut (.I0(n16891), .I1(buf_dds1[9]), .I2(\comm_buf[0] [1]), 
            .I3(n11819), .O(n15756));   // zim_main.vhd(531[3] 819[10])
    defparam i13338_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_138 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20248));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_1__bdd_4_lut_19699 (.I0(comm_index[1]), .I1(n17482), 
            .I2(n21212), .I3(comm_index[0]), .O(n22189));
    defparam comm_index_1__bdd_4_lut_19699.LUT_INIT = 16'he4aa;
    SB_LUT4 n22189_bdd_4_lut (.I0(n22189), .I1(n17480), .I2(n17479), .I3(comm_index[0]), 
            .O(n22192));
    defparam n22189_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13341_4_lut (.I0(n16891), .I1(buf_dds1[8]), .I2(\comm_buf[0] [0]), 
            .I3(n11819), .O(n15759));   // zim_main.vhd(531[3] 819[10])
    defparam i13341_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_139 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20468));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_139.LUT_INIT = 16'h4444;
    SB_LUT4 mux_129_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1487));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13344_4_lut (.I0(n16891), .I1(buf_dds1[7]), .I2(\comm_buf[1] [7]), 
            .I3(n11819), .O(n15762));   // zim_main.vhd(531[3] 819[10])
    defparam i13344_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13347_4_lut (.I0(n16891), .I1(buf_dds1[6]), .I2(\comm_buf[1] [6]), 
            .I3(n11819), .O(n15765));   // zim_main.vhd(531[3] 819[10])
    defparam i13347_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_140 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20244));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i12711_3_lut_4_lut (.I0(buf_dds0[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9306), .I3(n12367), .O(n15129));   // zim_main.vhd(531[3] 819[10])
    defparam i12711_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13352_4_lut (.I0(n16891), .I1(buf_dds1[4]), .I2(\comm_buf[1] [4]), 
            .I3(n11819), .O(n15770));   // zim_main.vhd(531[3] 819[10])
    defparam i13352_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12710_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9306), .I3(n12367), .O(n15128));   // zim_main.vhd(531[3] 819[10])
    defparam i12710_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i5_4_lut (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), .I2(dds0_mclkcnt[3]), 
            .I3(dds0_mclkcnt[1]), .O(n12_adj_1480));   // zim_main.vhd(442[7:27])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_129_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1486));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18435_3_lut (.I0(n16), .I1(buf_adcdata_iac[14]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21045));
    defparam i18435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12709_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9306), .I3(n12367), .O(n15127));   // zim_main.vhd(531[3] 819[10])
    defparam i12709_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12708_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9306), .I3(n12367), .O(n15126));   // zim_main.vhd(531[3] 819[10])
    defparam i12708_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18436_3_lut (.I0(n19), .I1(buf_readRTD[6]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21046));
    defparam i18436_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1507));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18568_4_lut (.I0(n26_adj_1507), .I1(buf_data_vac[29]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21178));
    defparam i18568_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18567_3_lut (.I0(acadc_skipCount[6]), .I1(req_data_cnt[6]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n21177));
    defparam i18567_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1510));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1511));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12707_3_lut_4_lut (.I0(buf_dds0[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9306), .I3(n12367), .O(n15125));   // zim_main.vhd(531[3] 819[10])
    defparam i12707_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_141 (.I0(n16891), .I1(buf_dds1[2]), .I2(\comm_buf[1] [2]), 
            .I3(n11819), .O(n15775));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_141.LUT_INIT = 16'ha088;
    SB_LUT4 i12915_4_lut (.I0(n18755), .I1(cfg_buf[1]), .I2(buf_cfgRTD[1]), 
            .I3(n13176), .O(n15333));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12915_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1648[12]), .I1(cmd_rdadctmp_adj_1648[11]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20600));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_143 (.I0(adress[6]), .I1(adress[5]), .I2(n13165), 
            .I3(n14479), .O(n19950));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_144 (.I0(adress[5]), .I1(adress[4]), .I2(n13165), 
            .I3(n14479), .O(n19948));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_145 (.I0(adress[3]), .I1(adress[2]), .I2(n13165), 
            .I3(n14479), .O(n19944));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_146 (.I0(n16891), .I1(buf_dds1[1]), .I2(\comm_buf[1] [1]), 
            .I3(n11819), .O(n16_adj_1557));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_146.LUT_INIT = 16'ha088;
    SB_LUT4 i18376_4_lut (.I0(acadc_rst), .I1(eis_state[0]), .I2(eis_end_N_724), 
            .I3(eis_state[1]), .O(n20985));
    defparam i18376_4_lut.LUT_INIT = 16'heefa;
    SB_LUT4 i12_4_lut_adj_147 (.I0(eis_end_N_724), .I1(acadc_trig), .I2(n20985), 
            .I3(eis_state[1]), .O(n20362));   // zim_main.vhd(451[3] 526[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'hc5c0;
    SB_LUT4 i11_4_lut_adj_148 (.I0(adress[2]), .I1(adress[1]), .I2(n13165), 
            .I3(n14479), .O(n19942));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_127_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1490));   // zim_main.vhd(586[5] 691[14])
    defparam mux_127_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 i3879_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(ICE_SPI_CE0), 
            .I3(VAC_MOSI), .O(comm_index_2__N_447[0]));   // zim_main.vhd(715[5] 725[12])
    defparam i3879_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_149 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11714), 
            .I3(adc_state_adj_1693[2]), .O(n20356));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_17_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[15]), .I2(VAC_MOSI), 
            .I3(n19624), .O(n397)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_150 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20354));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp_adj_1648[13]), .I1(cmd_rdadctmp_adj_1648[12]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20602));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i13374_4_lut (.I0(n18755), .I1(cfg_buf[0]), .I2(buf_cfgRTD[0]), 
            .I3(n13176), .O(n15792));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13374_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i19319_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21451));
    defparam i19319_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_129_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1512));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1480), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20799));   // zim_main.vhd(442[7:27])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFN dds0_mclkcnt_i7_3772__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(442[4] 445[11])
    SB_LUT4 i11_4_lut_adj_152 (.I0(adress[1]), .I1(adress[0]), .I2(n13165), 
            .I3(n14479), .O(n19940));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_153 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20240));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3772__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(442[4] 445[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42));   // zim_main.vhd(442[4] 445[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(442[4] 445[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(442[4] 445[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(442[4] 445[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(442[4] 445[11])
    SB_DFFSR clk_cnt_3761_3762__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n29_adj_1494), 
            .R(n14714));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3761_3762__i3 (.Q(clk_cnt[2]), .C(clk_16MHz), .D(n28), 
            .R(n14714));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3761_3762__i4 (.Q(clk_cnt[3]), .C(clk_16MHz), .D(n27), 
            .R(n14714));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3761_3762__i5 (.Q(clk_cnt[4]), .C(clk_16MHz), .D(n26_adj_1495), 
            .R(n14714));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i2 (.Q(wdtick_cnt[1]), .C(TEST_LED), 
            .E(n11741), .D(n20666), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i3 (.Q(wdtick_cnt[2]), .C(TEST_LED), 
            .E(n11741), .D(n23), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 mux_137_Mux_0_i1_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_0_i2_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_154 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20236));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_155 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20234));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_128_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1541));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_156 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20232));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'h0aca;
    SB_LUT4 i18477_3_lut (.I0(SELIRNG0), .I1(acadc_skipCount[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21087));
    defparam i18477_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18478_3_lut (.I0(req_data_cnt[10]), .I1(acadc_rst), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21088));
    defparam i18478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut_19580 (.I0(comm_index[1]), .I1(n4), 
            .I2(n21211), .I3(comm_index[2]), .O(n22183));
    defparam comm_index_1__bdd_4_lut_19580.LUT_INIT = 16'he4aa;
    SB_LUT4 i19084_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21309));
    defparam i19084_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18978_2_lut (.I0(buf_data_vac[37]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21151));
    defparam i18978_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_157 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20230));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20228));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20226));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp_adj_1648[25]), .I1(cmd_rdadctmp_adj_1648[24]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20420));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i18540_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21150));
    defparam i18540_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i24_4_lut (.I0(eis_state[0]), .I1(iac_raw_buf_N_736), .I2(eis_end_N_724), 
            .I3(eis_state[1]), .O(n17_adj_1622));   // zim_main.vhd(290[9:18])
    defparam i24_4_lut.LUT_INIT = 16'h5aca;
    SB_LUT4 i1_4_lut_adj_161 (.I0(n16571), .I1(n17_adj_1622), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(eis_state_2__N_171[1]));   // zim_main.vhd(290[9:18])
    defparam i1_4_lut_adj_161.LUT_INIT = 16'hccdc;
    SB_LUT4 i12_4_lut_adj_162 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20224));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_61_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n14_adj_1509));   // zim_main.vhd(476[10:41])
    defparam equal_61_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20));   // zim_main.vhd(476[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24_adj_1642));   // zim_main.vhd(476[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_163 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20222));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_164 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20220));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i6_4_lut_adj_165 (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22));   // zim_main.vhd(476[10:41])
    defparam i6_4_lut_adj_165.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[14]), .O(n23_adj_1501));   // zim_main.vhd(476[10:41])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_166 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20218));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_167 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20238));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 i5_4_lut_adj_168 (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zim_main.vhd(476[10:41])
    defparam i5_4_lut_adj_168.LUT_INIT = 16'h7bde;
    SB_LUT4 add_73_16_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[14]), .I2(VAC_MOSI), 
            .I3(n19623), .O(n398)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_169 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20216));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_4_lut_adj_170 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1609));   // zim_main.vhd(476[10:41])
    defparam i2_4_lut_adj_170.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20), .I2(n14_adj_1509), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1508));   // zim_main.vhd(476[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 mux_128_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1529));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_1501), .I2(n22), .I3(n24_adj_1642), 
            .O(n30_adj_1604));   // zim_main.vhd(476[10:41])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_171 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17));   // zim_main.vhd(476[10:41])
    defparam i1_4_lut_adj_171.LUT_INIT = 16'h7bde;
    SB_LUT4 n22183_bdd_4_lut (.I0(n22183), .I1(n2), .I2(n1), .I3(comm_index[2]), 
            .O(n22186));
    defparam n22183_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_172 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20214));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'h0aca;
    SB_LUT4 i15_4_lut (.I0(n17), .I1(n30_adj_1604), .I2(n26_adj_1508), 
            .I3(n18_adj_1609), .O(n31));   // zim_main.vhd(476[10:41])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i8_4_lut_adj_173 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24));   // zim_main.vhd(509[9:35])
    defparam i8_4_lut_adj_173.LUT_INIT = 16'h7bde;
    SB_CARRY add_73_16 (.CI(n19623), .I0(acadc_skipcnt[14]), .I1(VAC_MOSI), 
            .CO(n19624));
    SB_LUT4 i6_4_lut_adj_174 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), 
            .I2(req_data_cnt[2]), .I3(req_data_cnt[7]), .O(n22_adj_1499));   // zim_main.vhd(509[9:35])
    defparam i6_4_lut_adj_174.LUT_INIT = 16'h7bde;
    SB_LUT4 i11_4_lut_adj_175 (.I0(adress[4]), .I1(adress[3]), .I2(n13165), 
            .I3(n14479), .O(n19946));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_175.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_15_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[13]), .I2(VAC_MOSI), 
            .I3(n19622), .O(n399)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19058_2_lut (.I0(req_data_cnt[15]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21285));
    defparam i19058_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_176 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20212));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'h0aca;
    SB_LUT4 i7_4_lut_adj_177 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1614));   // zim_main.vhd(509[9:35])
    defparam i7_4_lut_adj_177.LUT_INIT = 16'h7bde;
    SB_LUT4 i19053_2_lut (.I0(buf_data_vac[47]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21364));
    defparam i19053_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_128_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1530));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_4_lut_adj_178 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1492));   // zim_main.vhd(509[9:35])
    defparam i5_4_lut_adj_178.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_179 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1617));   // zim_main.vhd(509[9:35])
    defparam i4_4_lut_adj_179.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_3_lut (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20799), 
            .I3(VAC_MOSI), .O(dds0_mclk_N_709));
    defparam i1_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_180 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20350));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'h0aca;
    SB_LUT4 i12706_3_lut_4_lut (.I0(buf_dds0[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9306), .I3(n12367), .O(n15124));   // zim_main.vhd(531[3] 819[10])
    defparam i12706_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_181 (.I0(cmd_rdadctmp_adj_1688[0]), .I1(VDC_SDO), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20132));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_4_lut_adj_182 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18));   // zim_main.vhd(509[9:35])
    defparam i2_4_lut_adj_182.LUT_INIT = 16'h7bde;
    SB_LUT4 i18964_2_lut (.I0(\comm_buf[6] [0]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21211));
    defparam i18964_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_137_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1591));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1648[14]), .I1(cmd_rdadctmp_adj_1648[13]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20604));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_137_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 acadc_rst_I_0_1_lut (.I0(acadc_rst), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(AC_ADC_SYNC));   // zim_main.vhd(351[18:31])
    defparam acadc_rst_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i19294_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21538));
    defparam i19294_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12705_3_lut_4_lut (.I0(buf_dds0[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9306), .I3(n12367), .O(n15123));   // zim_main.vhd(531[3] 819[10])
    defparam i12705_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12704_3_lut_4_lut (.I0(buf_dds0[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9306), .I3(n12367), .O(n15122));   // zim_main.vhd(531[3] 819[10])
    defparam i12704_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_4_lut_adj_184 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1607));   // zim_main.vhd(509[9:35])
    defparam i3_4_lut_adj_184.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_137_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1593));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_185 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20276));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_186 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1489));   // zim_main.vhd(509[9:35])
    defparam i1_4_lut_adj_186.LUT_INIT = 16'h7bde;
    SB_LUT4 i14_4_lut_adj_187 (.I0(n21_adj_1492), .I1(n23_adj_1614), .I2(n22_adj_1499), 
            .I3(n24), .O(n30_adj_1618));   // zim_main.vhd(509[9:35])
    defparam i14_4_lut_adj_187.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_4_lut_adj_188 (.I0(n17507), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n11_adj_1621));
    defparam i24_4_lut_adj_188.LUT_INIT = 16'hfaca;
    SB_LUT4 i12703_3_lut_4_lut (.I0(buf_dds0[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9306), .I3(n12367), .O(n15121));   // zim_main.vhd(531[3] 819[10])
    defparam i12703_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_189 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28_adj_1505));   // zim_main.vhd(419[7:31])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hfffe;
    SB_LUT4 i13393_3_lut (.I0(n14884), .I1(bit_cnt_adj_1669[0]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15811));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13393_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i12_4_lut_adj_190 (.I0(cmd_rdadctmp_adj_1648[15]), .I1(cmd_rdadctmp_adj_1648[14]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20606));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1648[16]), .I1(cmd_rdadctmp_adj_1648[15]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20608));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_192 (.I0(VAC_CS), .I1(adc_state_adj_1647[1]), .I2(DTRIG_N_918_adj_1451), 
            .I3(adc_state_adj_1647[0]), .O(n14_adj_1610));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_192.LUT_INIT = 16'h4554;
    SB_LUT4 i19395_4_lut (.I0(VAC_DRDY), .I1(n14_adj_1610), .I2(n20864), 
            .I3(adc_state_adj_1647[0]), .O(n11));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19395_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i13_4_lut (.I0(n17_adj_1489), .I1(n19_adj_1607), .I2(n18), 
            .I3(n20_adj_1617), .O(n29));   // zim_main.vhd(509[9:35])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_73_15 (.CI(n19622), .I0(acadc_skipcnt[13]), .I1(VAC_MOSI), 
            .CO(n19623));
    SB_LUT4 i10_4_lut_adj_193 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1575));   // zim_main.vhd(419[7:31])
    defparam i10_4_lut_adj_193.LUT_INIT = 16'hfffe;
    SB_LUT4 i19384_3_lut (.I0(eis_end_N_724), .I1(eis_state[1]), .I2(n11_adj_1621), 
            .I3(VAC_MOSI), .O(n11744));
    defparam i19384_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i12_4_lut_adj_194 (.I0(cmd_rdadctmp_adj_1648[0]), .I1(VAC_MISO), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20508));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_195 (.I0(IAC_CS), .I1(adc_state[1]), .I2(DTRIG_N_918), 
            .I3(adc_state[0]), .O(n14_adj_1612));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_195.LUT_INIT = 16'h4554;
    SB_LUT4 i11_4_lut_adj_196 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27_adj_1597));   // zim_main.vhd(419[7:31])
    defparam i11_4_lut_adj_196.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25_adj_1574));   // zim_main.vhd(419[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10_adj_1601));   // zim_main.vhd(419[7:31])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6_4_lut_adj_197 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14_adj_1599));   // zim_main.vhd(419[7:31])
    defparam i6_4_lut_adj_197.LUT_INIT = 16'h8000;
    SB_LUT4 i1_3_lut_adj_198 (.I0(n29), .I1(eis_stop), .I2(n30_adj_1618), 
            .I3(VAC_MOSI), .O(n16_adj_1603));
    defparam i1_3_lut_adj_198.LUT_INIT = 16'hcdcd;
    SB_LUT4 i19398_4_lut (.I0(IAC_DRDY), .I1(n14_adj_1612), .I2(n20867), 
            .I3(adc_state[0]), .O(n11_adj_1611));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19398_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i1_2_lut_adj_199 (.I0(adc_state[1]), .I1(DTRIG_N_918), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20867));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_199.LUT_INIT = 16'h2222;
    SB_LUT4 add_73_14_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[12]), .I2(VAC_MOSI), 
            .I3(n19621), .O(n400)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_200 (.I0(eis_start), .I1(n31), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n16571));   // zim_main.vhd(531[3] 819[10])
    defparam i1_2_lut_adj_200.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_201 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13293), 
            .I3(n1_adj_1606), .O(n20284));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'hca0a;
    SB_LUT4 i19109_2_lut (.I0(eis_state[0]), .I1(n16_adj_1603), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21337));
    defparam i19109_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i34_3_lut (.I0(n16571), .I1(iac_raw_buf_N_736), .I2(eis_state[0]), 
            .I3(VAC_MOSI), .O(n13));
    defparam i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33_4_lut (.I0(n13), .I1(n21337), .I2(eis_end_N_724), .I3(eis_state[1]), 
            .O(eis_state_2__N_171[2]));
    defparam i33_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i12_4_lut_adj_202 (.I0(cmd_rdadctmp_adj_1648[24]), .I1(cmd_rdadctmp_adj_1648[23]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20418));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_203 (.I0(adc_state_adj_1647[1]), .I1(DTRIG_N_918_adj_1451), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20864));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_203.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_204 (.I0(cmd_rdadctmp_adj_1648[23]), .I1(cmd_rdadctmp_adj_1648[22]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20414));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'hca0a;
    SB_LUT4 i15_4_lut_adj_205 (.I0(n25_adj_1574), .I1(n27_adj_1597), .I2(n26_adj_1575), 
            .I3(n28_adj_1505), .O(n19856));   // zim_main.vhd(419[7:31])
    defparam i15_4_lut_adj_205.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_206 (.I0(n19856), .I1(n14_adj_1599), .I2(n10_adj_1601), 
            .I3(secclk_cnt[20]), .O(n14715));   // zim_main.vhd(419[7:31])
    defparam i7_4_lut_adj_206.LUT_INIT = 16'h4000;
    SB_LUT4 i1_2_lut_4_lut_adj_207 (.I0(wdtick_flag), .I1(wdtick_cnt[1]), 
            .I2(wdtick_cnt[2]), .I3(wdtick_cnt[0]), .O(wdtick_flag_N_301));   // zim_main.vhd(401[3] 412[10])
    defparam i1_2_lut_4_lut_adj_207.LUT_INIT = 16'haaba;
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12498), 
            .I3(adc_state[0]), .O(n20500));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_209 (.I0(cmd_rdadctmp_adj_1648[17]), .I1(cmd_rdadctmp_adj_1648[16]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20610));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 i15_2_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20666));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n22378), .I2(n21062), 
            .I3(comm_cmd[3]), .O(n22447));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22447_bdd_4_lut (.I0(n22447), .I1(n22444), .I2(n22240), .I3(comm_cmd[3]), 
            .O(n22450));
    defparam n22447_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12702_3_lut_4_lut (.I0(buf_dds0[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9306), .I3(n12367), .O(n15120));   // zim_main.vhd(531[3] 819[10])
    defparam i12702_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12701_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9306), .I3(n12367), .O(n15119));   // zim_main.vhd(531[3] 819[10])
    defparam i12701_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_210 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20210));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_211 (.I0(comm_state[0]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n26_adj_1644));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_adj_211.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_212 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20208));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_4_lut_adj_213 (.I0(comm_state[1]), .I1(comm_state[2]), .I2(n26_adj_1644), 
            .I3(n20850), .O(n20852));   // zim_main.vhd(531[3] 819[10])
    defparam i3_4_lut_adj_213.LUT_INIT = 16'h8000;
    SB_LUT4 i1_3_lut_adj_214 (.I0(n12226), .I1(n20852), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n12228));
    defparam i1_3_lut_adj_214.LUT_INIT = 16'ha8a8;
    SB_LUT4 i12_4_lut_adj_215 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12228), .I3(comm_state[3]), .O(n19952));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'h0aca;
    SB_LUT4 i18989_2_lut_3_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), 
            .I2(eis_end_N_724), .I3(VAC_MOSI), .O(n21234));
    defparam i18989_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 i12_4_lut_adj_216 (.I0(cmd_rdadctmp_adj_1648[18]), .I1(cmd_rdadctmp_adj_1648[17]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20612));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_LUT4 i12700_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9306), .I3(n12367), .O(n15118));   // zim_main.vhd(531[3] 819[10])
    defparam i12700_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_217 (.I0(eis_end_N_724), .I1(acadc_dtrig_v), 
            .I2(acadc_dtrig_i), .I3(VAC_MOSI), .O(n16554));   // zim_main.vhd(451[3] 526[10])
    defparam i1_2_lut_3_lut_adj_217.LUT_INIT = 16'h4040;
    SB_LUT4 i12_4_lut_adj_218 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20206));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_219 (.I0(n12226), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1616), .O(n11896));
    defparam i1_4_lut_adj_219.LUT_INIT = 16'h8a88;
    SB_LUT4 i12_4_lut_adj_220 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20204));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22441));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22441_bdd_4_lut (.I0(n22441), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n22444));
    defparam n22441_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_221 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20202));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'h0aca;
    SB_LUT4 i12096_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14506));   // zim_main.vhd(533[4] 818[13])
    defparam i12096_2_lut.LUT_INIT = 16'h2222;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15176));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15175));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15174));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15173));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15172));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15171));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15170));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15169));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15168));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15167));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15166));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15165));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15164));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15163));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15162));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15161));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15160));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15159));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15158));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_222 (.I0(cmd_rdadctmp_adj_1648[19]), .I1(cmd_rdadctmp_adj_1648[18]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20614));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15157));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15156));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15155));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15154));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15153));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15152));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_223 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20192));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'h0aca;
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15151));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15150));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15149));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15148));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15147));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15146));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_68_5_lut (.I0(VAC_MOSI), .I1(data_cntvec[3]), .I2(VAC_MOSI), 
            .I3(n19597), .O(n358)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_5_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15145));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15144));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15143));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_224 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20190));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'h0aca;
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15142));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15141));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15140));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15139));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15138));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15137));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15136));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15135));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15134));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15133));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15132));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15131));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15130));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15129));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15128));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15127));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15126));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15125));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15124));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12699_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9306), .I3(n11915), .O(n15117));   // zim_main.vhd(531[3] 819[10])
    defparam i12699_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15123));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15122));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15121));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_68_5 (.CI(n19597), .I0(data_cntvec[3]), .I1(VAC_MOSI), 
            .CO(n19598));
    SB_LUT4 add_68_4_lut (.I0(VAC_MOSI), .I1(data_cntvec[2]), .I2(VAC_MOSI), 
            .I3(n19596), .O(n359)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15120));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15119));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15118));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15117));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15116));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_2_lut_adj_225 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11347));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_adj_225.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_226 (.I0(n20914), .I1(n21014), .I2(n12226), .I3(comm_state[3]), 
            .O(n11819));
    defparam i1_4_lut_adj_226.LUT_INIT = 16'hf531;
    SB_LUT4 i12_4_lut_adj_227 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n13087), .I3(adc_state_adj_1687[2]), .O(n20188));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_227.LUT_INIT = 16'h0aca;
    SB_LUT4 i15080_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[4] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17479));   // zim_main.vhd(249[9:19])
    defparam i15080_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12698_3_lut_4_lut (.I0(AMPV_POW), .I1(n9306), .I2(\comm_buf[0] [5]), 
            .I3(n11915), .O(n15116));   // zim_main.vhd(531[3] 819[10])
    defparam i12698_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i15081_3_lut (.I0(\comm_buf[2] [5]), .I1(\comm_buf[6] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17480));   // zim_main.vhd(249[9:19])
    defparam i15081_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_228 (.I0(n16891), .I1(buf_dds1[0]), .I2(\comm_buf[1] [0]), 
            .I3(n11819), .O(n15835));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_228.LUT_INIT = 16'ha088;
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15115));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_229 (.I0(cmd_rdadctmp_adj_1648[20]), .I1(cmd_rdadctmp_adj_1648[19]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20616));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_LUT4 i19283_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21529));
    defparam i19283_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19783 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[3]), 
            .I2(buf_readRTD[11]), .I3(comm_cmd[1]), .O(n22435));
    defparam comm_cmd_0__bdd_4_lut_19783.LUT_INIT = 16'he4aa;
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15114));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 n22435_bdd_4_lut (.I0(n22435), .I1(buf_adcdata_vdc[19]), .I2(buf_adcdata_vac[19]), 
            .I3(comm_cmd[1]), .O(n21076));
    defparam n22435_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15113));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 mux_129_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1523));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15112));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i19282_2_lut (.I0(comm_index[2]), .I1(\comm_buf[3] [5]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21212));
    defparam i19282_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i15083_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17482));   // zim_main.vhd(249[9:19])
    defparam i15083_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_230 (.I0(cmd_rdadctmp_adj_1688[22]), .I1(cmd_rdadctmp_adj_1688[21]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20100));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_230.LUT_INIT = 16'h0aca;
    SB_LUT4 i12697_3_lut_4_lut (.I0(VDC_RNG0), .I1(\comm_buf[0] [4]), .I2(n9306), 
            .I3(n11915), .O(n15115));   // zim_main.vhd(531[3] 819[10])
    defparam i12697_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12696_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9306), 
            .I3(n11915), .O(n15114));   // zim_main.vhd(531[3] 819[10])
    defparam i12696_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12695_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9306), 
            .I3(n11915), .O(n15113));   // zim_main.vhd(531[3] 819[10])
    defparam i12695_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_73_14 (.CI(n19621), .I0(acadc_skipcnt[12]), .I1(VAC_MOSI), 
            .CO(n19622));
    SB_LUT4 i12694_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9306), 
            .I3(n11915), .O(n15112));   // zim_main.vhd(531[3] 819[10])
    defparam i12694_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19281_2_lut (.I0(n20893), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21521));
    defparam i19281_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_231 (.I0(adc_state_adj_1647[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_918_adj_1451), .I3(adc_state_adj_1647[0]), .O(n20394));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_231.LUT_INIT = 16'hcce8;
    SB_DFFN eis_end_299 (.Q(eis_end), .C(clk_32MHz), .D(n15110));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i19322_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21564));
    defparam i19322_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1519), 
            .I2(n21564), .I3(comm_cmd[2]), .O(n22429));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22429_bdd_4_lut (.I0(n22429), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22432));
    defparam n22429_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n21521), .I2(n14529), 
            .I3(comm_state[2]), .O(n22423));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22423_bdd_4_lut (.I0(n22423), .I1(n2_adj_1581), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n22426));
    defparam n22423_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_73_13_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[11]), .I2(VAC_MOSI), 
            .I3(n19620), .O(n401)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_129_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1519));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_13 (.CI(n19620), .I0(acadc_skipcnt[11]), .I1(VAC_MOSI), 
            .CO(n19621));
    SB_LUT4 i12691_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15109));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12691_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15109_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17507));
    defparam i15109_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_232 (.I0(n16_adj_1603), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(VAC_MOSI), .O(n4_adj_1546));
    defparam i1_2_lut_3_lut_adj_232.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_233 (.I0(cmd_rdadctmp_adj_1688[21]), .I1(cmd_rdadctmp_adj_1688[20]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20098));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'h0aca;
    SB_LUT4 i19331_4_lut (.I0(eis_state[1]), .I1(eis_end_N_724), .I2(eis_state[0]), 
            .I3(n4_adj_1546), .O(n20826));
    defparam i19331_4_lut.LUT_INIT = 16'h1b13;
    SB_LUT4 i12690_3_lut_4_lut (.I0(dds_state_adj_1671[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1671[1]), .I3(dds_state_adj_1671[0]), .O(n15108));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12690_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19778 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[4]), 
            .I2(buf_readRTD[12]), .I3(comm_cmd[1]), .O(n22417));
    defparam comm_cmd_0__bdd_4_lut_19778.LUT_INIT = 16'he4aa;
    SB_LUT4 n22417_bdd_4_lut (.I0(n22417), .I1(buf_adcdata_vdc[20]), .I2(buf_adcdata_vac[20]), 
            .I3(comm_cmd[1]), .O(n22420));
    defparam n22417_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_73_12_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[10]), .I2(VAC_MOSI), 
            .I3(n19619), .O(n402)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19773 (.I0(comm_cmd[1]), .I1(n26_adj_1523), 
            .I2(n21529), .I3(comm_cmd[2]), .O(n22411));
    defparam comm_cmd_1__bdd_4_lut_19773.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_234 (.I0(cmd_rdadctmp_adj_1648[22]), .I1(cmd_rdadctmp_adj_1648[21]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20496));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_LUT4 n22411_bdd_4_lut (.I0(n22411), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22414));
    defparam n22411_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_129_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1496));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_235 (.I0(adc_state[1]), .I1(acadc_dtrig_i), .I2(DTRIG_N_918), 
            .I3(adc_state[0]), .O(n20390));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_235.LUT_INIT = 16'hcce8;
    SB_LUT4 i12689_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15107));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12689_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i18974_2_lut (.I0(bit_cnt_adj_1673[3]), .I1(bit_cnt_adj_1673[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21456));   // dds_ad9837.vhd(23[9:18])
    defparam i18974_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19764 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22405));
    defparam comm_cmd_0__bdd_4_lut_19764.LUT_INIT = 16'he4aa;
    SB_LUT4 i14490_4_lut (.I0(dds_state_adj_1671[0]), .I1(n21456), .I2(dds_state_adj_1671[1]), 
            .I3(n8_adj_1602), .O(dds_state_2__N_924_adj_1679[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i14490_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i12693_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1672[15]), .I2(dds_state_adj_1671[1]), 
            .I3(VAC_MOSI), .O(n15111));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12693_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_236 (.I0(cmd_rdadctmp_adj_1688[20]), .I1(cmd_rdadctmp_adj_1688[19]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20096));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1497));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_68_4 (.CI(n19596), .I0(data_cntvec[2]), .I1(VAC_MOSI), 
            .CO(n19597));
    SB_LUT4 add_68_3_lut (.I0(VAC_MOSI), .I1(data_cntvec[1]), .I2(VAC_MOSI), 
            .I3(n19595), .O(n360)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22405_bdd_4_lut (.I0(n22405), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n21097));
    defparam n22405_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 secclk_cnt_3765_3766_add_4_24_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[22]), .I3(n19771), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_23_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[21]), .I3(n19770), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_23 (.CI(n19770), .I0(VAC_MOSI), 
            .I1(secclk_cnt[21]), .CO(n19771));
    SB_LUT4 secclk_cnt_3765_3766_add_4_22_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[20]), .I3(n19769), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_12 (.CI(n19619), .I0(acadc_skipcnt[10]), .I1(VAC_MOSI), 
            .CO(n19620));
    SB_CARRY secclk_cnt_3765_3766_add_4_22 (.CI(n19769), .I0(VAC_MOSI), 
            .I1(secclk_cnt[20]), .CO(n19770));
    SB_CARRY add_68_3 (.CI(n19595), .I0(data_cntvec[1]), .I1(VAC_MOSI), 
            .CO(n19596));
    SB_LUT4 secclk_cnt_3765_3766_add_4_21_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[19]), .I3(n19768), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_21 (.CI(n19768), .I0(VAC_MOSI), 
            .I1(secclk_cnt[19]), .CO(n19769));
    SB_LUT4 secclk_cnt_3765_3766_add_4_20_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[18]), .I3(n19767), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_20 (.CI(n19767), .I0(VAC_MOSI), 
            .I1(secclk_cnt[18]), .CO(n19768));
    SB_LUT4 secclk_cnt_3765_3766_add_4_19_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[17]), .I3(n19766), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19759 (.I0(comm_cmd[1]), .I1(n19_adj_1497), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22399));
    defparam comm_cmd_1__bdd_4_lut_19759.LUT_INIT = 16'he4aa;
    SB_LUT4 n22399_bdd_4_lut (.I0(n22399), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1496), 
            .I3(comm_cmd[2]), .O(n22402));
    defparam n22399_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY secclk_cnt_3765_3766_add_4_19 (.CI(n19766), .I0(VAC_MOSI), 
            .I1(secclk_cnt[17]), .CO(n19767));
    SB_LUT4 add_73_11_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[9]), .I2(VAC_MOSI), 
            .I3(n19618), .O(n403)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_2_lut (.I0(VAC_MOSI), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_736), 
            .I3(VAC_MOSI), .O(n361)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_18_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[16]), .I3(n19765), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_11 (.CI(n19618), .I0(acadc_skipcnt[9]), .I1(VAC_MOSI), 
            .CO(n19619));
    SB_CARRY secclk_cnt_3765_3766_add_4_18 (.CI(n19765), .I0(VAC_MOSI), 
            .I1(secclk_cnt[16]), .CO(n19766));
    SB_LUT4 add_73_10_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[8]), .I2(VAC_MOSI), 
            .I3(n19617), .O(n404)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_17_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[15]), .I3(n19764), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_10 (.CI(n19617), .I0(acadc_skipcnt[8]), .I1(VAC_MOSI), 
            .CO(n19618));
    SB_CARRY secclk_cnt_3765_3766_add_4_17 (.CI(n19764), .I0(VAC_MOSI), 
            .I1(secclk_cnt[15]), .CO(n19765));
    SB_LUT4 secclk_cnt_3765_3766_add_4_16_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[14]), .I3(n19763), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_9_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[7]), .I2(VAC_MOSI), 
            .I3(n19616), .O(n405)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_2 (.CI(VAC_MOSI), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_736), 
            .CO(n19595));
    SB_CARRY secclk_cnt_3765_3766_add_4_16 (.CI(n19763), .I0(VAC_MOSI), 
            .I1(secclk_cnt[14]), .CO(n19764));
    SB_LUT4 secclk_cnt_3765_3766_add_4_15_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[13]), .I3(n19762), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_9 (.CI(n19616), .I0(acadc_skipcnt[7]), .I1(VAC_MOSI), 
            .CO(n19617));
    SB_LUT4 add_73_8_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[6]), .I2(VAC_MOSI), 
            .I3(n19615), .O(n406)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_15 (.CI(n19762), .I0(VAC_MOSI), 
            .I1(secclk_cnt[13]), .CO(n19763));
    SB_LUT4 secclk_cnt_3765_3766_add_4_14_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[12]), .I3(n19761), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_14 (.CI(n19761), .I0(VAC_MOSI), 
            .I1(secclk_cnt[12]), .CO(n19762));
    SB_LUT4 secclk_cnt_3765_3766_add_4_13_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[11]), .I3(n19760), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_13 (.CI(n19760), .I0(VAC_MOSI), 
            .I1(secclk_cnt[11]), .CO(n19761));
    SB_LUT4 secclk_cnt_3765_3766_add_4_12_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[10]), .I3(n19759), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_12 (.CI(n19759), .I0(VAC_MOSI), 
            .I1(secclk_cnt[10]), .CO(n19760));
    SB_LUT4 secclk_cnt_3765_3766_add_4_11_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[9]), .I3(n19758), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_11 (.CI(n19758), .I0(VAC_MOSI), 
            .I1(secclk_cnt[9]), .CO(n19759));
    SB_CARRY add_73_8 (.CI(n19615), .I0(acadc_skipcnt[6]), .I1(VAC_MOSI), 
            .CO(n19616));
    SB_LUT4 secclk_cnt_3765_3766_add_4_10_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[8]), .I3(n19757), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_10 (.CI(n19757), .I0(VAC_MOSI), 
            .I1(secclk_cnt[8]), .CO(n19758));
    SB_LUT4 secclk_cnt_3765_3766_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[7]), .I3(n19756), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_9 (.CI(n19756), .I0(VAC_MOSI), .I1(secclk_cnt[7]), 
            .CO(n19757));
    SB_LUT4 add_67_11_lut (.I0(VAC_MOSI), .I1(data_count[9]), .I2(VAC_MOSI), 
            .I3(n19594), .O(n334)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[6]), .I3(n19755), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_7_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[5]), .I2(VAC_MOSI), 
            .I3(n19614), .O(n407)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n22393));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY secclk_cnt_3765_3766_add_4_8 (.CI(n19755), .I0(VAC_MOSI), .I1(secclk_cnt[6]), 
            .CO(n19756));
    SB_LUT4 i1_4_lut_4_lut_adj_237 (.I0(adc_state_adj_1647[0]), .I1(VAC_SCLK), 
            .I2(DTRIG_N_918_adj_1451), .I3(adc_state_adj_1647[1]), .O(n20396));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_237.LUT_INIT = 16'hc4d8;
    SB_LUT4 secclk_cnt_3765_3766_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[5]), .I3(n19754), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_7 (.CI(n19754), .I0(VAC_MOSI), .I1(secclk_cnt[5]), 
            .CO(n19755));
    SB_LUT4 secclk_cnt_3765_3766_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[4]), .I3(n19753), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_238 (.I0(n9_adj_1416), .I1(comm_state[3]), .I2(n9306), 
            .I3(n20907), .O(n11915));
    defparam i1_4_lut_adj_238.LUT_INIT = 16'hc0c4;
    SB_LUT4 i1_2_lut_adj_239 (.I0(TEST_LED), .I1(n14715), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(TEST_LED_N_691));
    defparam i1_2_lut_adj_239.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_4_lut_adj_240 (.I0(adc_state[0]), .I1(IAC_SCLK), .I2(DTRIG_N_918), 
            .I3(adc_state[1]), .O(n20392));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_240.LUT_INIT = 16'hc4d8;
    SB_CARRY secclk_cnt_3765_3766_add_4_6 (.CI(n19753), .I0(VAC_MOSI), .I1(secclk_cnt[4]), 
            .CO(n19754));
    SB_LUT4 i14145_4_lut (.I0(eis_start), .I1(n16_adj_1603), .I2(eis_end_N_724), 
            .I3(n31), .O(n16563));   // zim_main.vhd(296[9:16])
    defparam i14145_4_lut.LUT_INIT = 16'hc5cf;
    SB_CARRY add_73_7 (.CI(n19614), .I0(acadc_skipcnt[5]), .I1(VAC_MOSI), 
            .CO(n19615));
    SB_LUT4 secclk_cnt_3765_3766_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[3]), .I3(n19752), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_67_10_lut (.I0(VAC_MOSI), .I1(data_count[8]), .I2(VAC_MOSI), 
            .I3(n19593), .O(n335)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_5 (.CI(n19752), .I0(VAC_MOSI), .I1(secclk_cnt[3]), 
            .CO(n19753));
    SB_LUT4 secclk_cnt_3765_3766_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[2]), .I3(n19751), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_3 (.CI(n19586), .I0(data_count[1]), .I1(VAC_MOSI), 
            .CO(n19587));
    SB_LUT4 n22393_bdd_4_lut (.I0(n22393), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n22396));
    defparam n22393_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18404_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(VAC_MOSI), .O(n21014));
    defparam i18404_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY secclk_cnt_3765_3766_add_4_4 (.CI(n19751), .I0(VAC_MOSI), .I1(secclk_cnt[2]), 
            .CO(n19752));
    SB_LUT4 add_73_6_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[4]), .I2(VAC_MOSI), 
            .I3(n19613), .O(n408)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_10 (.CI(n19593), .I0(data_count[8]), .I1(VAC_MOSI), 
            .CO(n19594));
    SB_LUT4 mux_129_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1521));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1522));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1504));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18438_3_lut (.I0(n16_adj_1504), .I1(buf_adcdata_iac[15]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21048));
    defparam i18438_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1503));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18439_3_lut (.I0(n19_adj_1503), .I1(buf_readRTD[7]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21049));
    defparam i18439_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_6 (.CI(n19613), .I0(acadc_skipcnt[4]), .I1(VAC_MOSI), 
            .CO(n19614));
    SB_LUT4 secclk_cnt_3765_3766_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[1]), .I3(n19750), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_5_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[3]), .I2(VAC_MOSI), 
            .I3(n19612), .O(n409)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_3 (.CI(n19750), .I0(VAC_MOSI), .I1(secclk_cnt[1]), 
            .CO(n19751));
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(VAC_MOSI), .O(DDS_MCLK));   // zim_main.vhd(332[15:65])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_241 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(n20912), .O(n20914));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_4_lut_adj_241.LUT_INIT = 16'hffef;
    SB_LUT4 i12_4_lut_adj_242 (.I0(cmd_rdadctmp_adj_1648[21]), .I1(cmd_rdadctmp_adj_1648[20]), 
            .I2(n12653), .I3(adc_state_adj_1647[0]), .O(n20618));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_242.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1502));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18445_4_lut (.I0(n26_adj_1502), .I1(buf_data_vac[31]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21055));
    defparam i18445_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_0__bdd_4_lut_19744 (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n22387));
    defparam comm_index_0__bdd_4_lut_19744.LUT_INIT = 16'he4aa;
    SB_LUT4 n22387_bdd_4_lut (.I0(n22387), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n22390));
    defparam n22387_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_243 (.I0(cmd_rdadctmp_adj_1688[19]), .I1(cmd_rdadctmp_adj_1688[18]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20094));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'h0aca;
    SB_LUT4 i18382_2_lut (.I0(comm_state[1]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20992));
    defparam i18382_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_244 (.I0(n12226), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n20992), .O(n11390));
    defparam i1_4_lut_adj_244.LUT_INIT = 16'h888a;
    SB_LUT4 secclk_cnt_3765_3766_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(secclk_cnt[0]), .CO(n19750));
    SB_LUT4 clk_cnt_3761_3762_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(clk_cnt[4]), .I3(n19749), .O(n26_adj_1495)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3761_3762_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_5 (.CI(n19612), .I0(acadc_skipcnt[3]), .I1(VAC_MOSI), 
            .CO(n19613));
    SB_LUT4 clk_cnt_3761_3762_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(clk_cnt[3]), .I3(n19748), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3761_3762_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_cnt_3761_3762_add_4_5 (.CI(n19748), .I0(VAC_MOSI), .I1(clk_cnt[3]), 
            .CO(n19749));
    SB_LUT4 clk_cnt_3761_3762_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(clk_cnt[2]), .I3(n19747), .O(n28)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3761_3762_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_cnt_3761_3762_add_4_4 (.CI(n19747), .I0(VAC_MOSI), .I1(clk_cnt[2]), 
            .CO(n19748));
    SB_LUT4 clk_cnt_3761_3762_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(clk_cnt[1]), .I3(n19746), .O(n29_adj_1494)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3761_3762_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18555_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21165));
    defparam i18555_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_9_lut (.I0(VAC_MOSI), .I1(data_count[7]), .I2(VAC_MOSI), 
            .I3(n19592), .O(n336)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18557_4_lut (.I0(n21165), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21167));
    defparam i18557_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_245 (.I0(cmd_rdadctmp_adj_1688[18]), .I1(cmd_rdadctmp_adj_1688[17]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20092));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_245.LUT_INIT = 16'h0aca;
    SB_LUT4 i18460_3_lut (.I0(n22222), .I1(n21167), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n21070));
    defparam i18460_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15251_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20799), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10));   // zim_main.vhd(442[4] 445[11])
    defparam i15251_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_67_3_lut (.I0(VAC_MOSI), .I1(data_count[1]), .I2(VAC_MOSI), 
            .I3(n19586), .O(n342)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18461_3_lut (.I0(n22294), .I1(n21070), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n21071));
    defparam i18461_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11132_3_lut (.I0(n21071), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13548));   // zim_main.vhd(533[4] 818[13])
    defparam i11132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_4_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[2]), .I2(VAC_MOSI), 
            .I3(n19611), .O(n410)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_cnt_3761_3762_add_4_3 (.CI(n19746), .I0(VAC_MOSI), .I1(clk_cnt[1]), 
            .CO(n19747));
    SB_LUT4 clk_cnt_3761_3762_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(clk_cnt[0]), .I3(VCC_net), .O(n30_adj_1493)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3761_3762_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_cnt_3761_3762_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), .I1(clk_cnt[0]), 
            .CO(n19746));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[7]), .I3(n19745), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(n10), .I3(n19744), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_8 (.CI(n19744), .I0(VAC_MOSI), .I1(n10), 
            .CO(n19745));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[5]), .I3(n19743), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_7 (.CI(n19743), .I0(VAC_MOSI), .I1(dds0_mclkcnt[5]), 
            .CO(n19744));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[4]), .I3(n19742), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_4 (.CI(n19611), .I0(acadc_skipcnt[2]), .I1(VAC_MOSI), 
            .CO(n19612));
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_6 (.CI(n19742), .I0(VAC_MOSI), .I1(dds0_mclkcnt[4]), 
            .CO(n19743));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[3]), .I3(n19741), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_5 (.CI(n19741), .I0(VAC_MOSI), .I1(dds0_mclkcnt[3]), 
            .CO(n19742));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[2]), .I3(n19740), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_4 (.CI(n19740), .I0(VAC_MOSI), .I1(dds0_mclkcnt[2]), 
            .CO(n19741));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[1]), .I3(n19739), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_3 (.CI(n19739), .I0(VAC_MOSI), .I1(dds0_mclkcnt[1]), 
            .CO(n19740));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_3_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[1]), .I2(VAC_MOSI), 
            .I3(n19610), .O(n411)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15835));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(dds0_mclkcnt[0]), .CO(n19739));
    SB_LUT4 i11_4_lut_adj_246 (.I0(comm_cmd[0]), .I1(n14506), .I2(n11896), 
            .I3(comm_rx_buf[0]), .O(n20130));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_246.LUT_INIT = 16'hca0a;
    SB_LUT4 i1556173_i1_3_lut (.I0(n22216), .I1(n22204), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1485));
    defparam i1556173_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11136_3_lut (.I0(n30_adj_1485), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13552));   // zim_main.vhd(533[4] 818[13])
    defparam i11136_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_3 (.CI(n19610), .I0(acadc_skipcnt[1]), .I1(VAC_MOSI), 
            .CO(n19611));
    SB_LUT4 mux_130_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1484));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20130));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 mux_130_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1484), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1483));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_19739 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22381));
    defparam comm_index_0__bdd_4_lut_19739.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_130_Mux_0_i30_3_lut (.I0(n22_adj_1483), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1482));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22381_bdd_4_lut (.I0(n22381), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22384));
    defparam n22381_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11140_3_lut (.I0(n30_adj_1482), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13556));   // zim_main.vhd(533[4] 818[13])
    defparam i11140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11144_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13560));   // zim_main.vhd(533[4] 818[13])
    defparam i11144_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_2_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_736), 
            .I3(VAC_MOSI), .O(n412)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11148_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13564));   // zim_main.vhd(533[4] 818[13])
    defparam i11148_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_126_17_lut (.I0(n14_adj_1549), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19648), .O(data_idxvec_15__N_226[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_126_16_lut (.I0(n14_adj_1576), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19647), .O(data_idxvec_15__N_226[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_16_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_16 (.CI(n19647), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19648));
    SB_LUT4 i11152_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13568));   // zim_main.vhd(533[4] 818[13])
    defparam i11152_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19952));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_3_lut_adj_247 (.I0(n20915), .I1(comm_state[3]), .I2(n9306), 
            .I3(VAC_MOSI), .O(n12367));
    defparam i1_3_lut_adj_247.LUT_INIT = 16'hc4c4;
    SB_LUT4 mux_128_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1538));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19064_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21286));
    defparam i19064_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19754 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22375));
    defparam comm_cmd_0__bdd_4_lut_19754.LUT_INIT = 16'he4aa;
    SB_LUT4 add_67_2_lut (.I0(VAC_MOSI), .I1(data_count[0]), .I2(iac_raw_buf_N_736), 
            .I3(VAC_MOSI), .O(n343)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_2 (.CI(VAC_MOSI), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_736), 
            .CO(n19610));
    SB_LUT4 add_68_17_lut (.I0(VAC_MOSI), .I1(data_cntvec[15]), .I2(VAC_MOSI), 
            .I3(n19609), .O(n346)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_15_lut (.I0(n14_adj_1583), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19646), .O(data_idxvec_15__N_226[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_16_lut (.I0(VAC_MOSI), .I1(data_cntvec[14]), .I2(VAC_MOSI), 
            .I3(n19608), .O(n347)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_2 (.CI(VAC_MOSI), .I0(data_count[0]), .I1(iac_raw_buf_N_736), 
            .CO(n19586));
    SB_LUT4 i19085_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21273));
    defparam i19085_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_68_16 (.CI(n19608), .I0(data_cntvec[14]), .I1(VAC_MOSI), 
            .CO(n19609));
    SB_CARRY add_126_15 (.CI(n19646), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19647));
    SB_LUT4 n22375_bdd_4_lut (.I0(n22375), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22378));
    defparam n22375_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19404_2_lut_3_lut (.I0(eis_end_N_724), .I1(acadc_rst), .I2(eis_state[1]), 
            .I3(VAC_MOSI), .O(n21037));
    defparam i19404_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i19037_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21272));
    defparam i19037_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_248 (.I0(n9), .I1(comm_state[3]), .I2(n9306), 
            .I3(n20912), .O(n12381));
    defparam i1_4_lut_adj_248.LUT_INIT = 16'hc0c4;
    SB_LUT4 mux_128_Mux_7_i16_3_lut (.I0(buf_dds0[15]), .I1(buf_dds1[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1525));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_7_i17_3_lut (.I0(VAC_FLT1), .I1(buf_adcdata_iac[23]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1526));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_7_i20_3_lut (.I0(buf_cfgRTD[7]), .I1(buf_readRTD[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1528));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[0]), .I2(comm_data_vld), 
            .I3(ICE_SPI_CE0), .O(n20962));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h7f75;
    SB_LUT4 i15346_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1549));   // zim_main.vhd(533[4] 818[13])
    defparam i15346_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_249 (.I0(cmd_rdadctmp_adj_1688[17]), .I1(cmd_rdadctmp_adj_1688[16]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20090));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_249.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_188_i9_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n9));   // zim_main.vhd(774[11:20])
    defparam equal_188_i9_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1593), 
            .I2(n21538), .I3(comm_index[2]), .O(n22369));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i15336_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1576));   // zim_main.vhd(533[4] 818[13])
    defparam i15336_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19350_2_lut (.I0(n11654), .I1(eis_end_N_724), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14671));
    defparam i19350_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19371_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), .I2(eis_end_N_724), 
            .I3(acadc_rst), .O(n11654));
    defparam i19371_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 mux_137_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1592));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22369_bdd_4_lut (.I0(n22369), .I1(n2_adj_1592), .I2(n1_adj_1591), 
            .I3(comm_index[2]), .O(n22372));
    defparam n22369_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_250 (.I0(clk_cnt[0]), .I1(clk_cnt[4]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n6));
    defparam i1_2_lut_adj_250.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_adj_251 (.I0(comm_state[0]), .I1(comm_cmd[3]), .I2(n20893), 
            .I3(VAC_MOSI), .O(n20912));   // zim_main.vhd(533[4] 818[13])
    defparam i1_3_lut_adj_251.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_252 (.I0(n10717), .I1(comm_state[3]), .I2(n9306), 
            .I3(n20912), .O(n12395));
    defparam i1_4_lut_adj_252.LUT_INIT = 16'hc0c4;
    SB_LUT4 i4_4_lut_adj_253 (.I0(clk_cnt[2]), .I1(clk_cnt[3]), .I2(clk_cnt[1]), 
            .I3(n6), .O(n14714));
    defparam i4_4_lut_adj_253.LUT_INIT = 16'h8000;
    SB_LUT4 comm_cmd_6__I_0_363_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9_adj_1416));
    defparam comm_cmd_6__I_0_363_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19749 (.I0(comm_cmd[1]), .I1(n26_adj_1530), 
            .I2(n21364), .I3(comm_cmd[2]), .O(n22363));
    defparam comm_cmd_1__bdd_4_lut_19749.LUT_INIT = 16'he4aa;
    SB_LUT4 equal_187_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9_adj_1415));
    defparam equal_187_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_adj_254 (.I0(clk_RTD), .I1(n14714), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(clk_RTD_N_716));
    defparam i1_2_lut_adj_254.LUT_INIT = 16'h6666;
    SB_LUT4 n22363_bdd_4_lut (.I0(n22363), .I1(n21285), .I2(n23_adj_1529), 
            .I3(comm_cmd[2]), .O(n22366));
    defparam n22363_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut_adj_255 (.I0(comm_index[0]), .I1(n2358), .I2(comm_cmd[7]), 
            .I3(comm_index[1]), .O(n20850));
    defparam i1_2_lut_4_lut_adj_255.LUT_INIT = 16'h0400;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19719 (.I0(comm_cmd[1]), .I1(n21150), 
            .I2(n21151), .I3(comm_cmd[2]), .O(n22357));
    defparam comm_cmd_1__bdd_4_lut_19719.LUT_INIT = 16'he4aa;
    SB_LUT4 n22357_bdd_4_lut (.I0(n22357), .I1(n21088), .I2(n21087), .I3(comm_cmd[2]), 
            .O(n22360));
    defparam n22357_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3894_3_lut_4_lut (.I0(comm_index[0]), .I1(n2358), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_447[2]));   // zim_main.vhd(715[5] 725[12])
    defparam i3894_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i1_4_lut_3_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[0]), 
            .I3(VAC_MOSI), .O(n23));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_4_lut_3_lut.LUT_INIT = 16'h6868;
    SB_LUT4 mux_128_Mux_6_i16_3_lut (.I0(buf_dds0[14]), .I1(buf_dds1[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1534));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19714 (.I0(comm_cmd[1]), .I1(n26_adj_1512), 
            .I2(n21451), .I3(comm_cmd[2]), .O(n22351));
    defparam comm_cmd_1__bdd_4_lut_19714.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_128_Mux_6_i17_3_lut (.I0(VAC_FLT0), .I1(buf_adcdata_iac[22]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1535));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_6_i20_3_lut (.I0(buf_cfgRTD[6]), .I1(buf_readRTD[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1537));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[22]), .I1(buf_adcdata_vdc[22]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1536));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18528_3_lut (.I0(buf_dds0[8]), .I1(buf_dds1[8]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21138));
    defparam i18528_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18529_3_lut (.I0(IAC_OSR0), .I1(buf_adcdata_iac[16]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21139));
    defparam i18529_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18592_3_lut (.I0(buf_cfgRTD[0]), .I1(buf_readRTD[8]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n21202));
    defparam i18592_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18591_3_lut (.I0(buf_adcdata_vac[16]), .I1(buf_adcdata_vdc[16]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n21201));
    defparam i18591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_256 (.I0(comm_state[2]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20856));
    defparam i1_2_lut_adj_256.LUT_INIT = 16'h2222;
    SB_LUT4 i46_2_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n23_adj_1620));
    defparam i46_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 eis_state_1__bdd_4_lut_4_lut (.I0(n16554), .I1(eis_state[0]), 
            .I2(n21234), .I3(eis_state[1]), .O(n22255));   // zim_main.vhd(451[3] 526[10])
    defparam eis_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h77c0;
    SB_LUT4 i19391_4_lut (.I0(n21_adj_1598), .I1(n17564), .I2(comm_state[2]), 
            .I3(n23_adj_1620), .O(n18_adj_1619));
    defparam i19391_4_lut.LUT_INIT = 16'h7377;
    SB_LUT4 n22255_bdd_4_lut_4_lut (.I0(eis_end_N_724), .I1(eis_state[0]), 
            .I2(n16563), .I3(n22255), .O(eis_state_2__N_171[0]));   // zim_main.vhd(451[3] 526[10])
    defparam n22255_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 i32_4_lut (.I0(n21546), .I1(n2358), .I2(comm_state[1]), .I3(comm_state[2]), 
            .O(n15));   // zim_main.vhd(533[4] 818[13])
    defparam i32_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i33_3_lut (.I0(comm_state[1]), .I1(n20880), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n12_adj_1548));   // zim_main.vhd(533[4] 818[13])
    defparam i33_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3787_3_lut_3_lut_4_lut (.I0(eis_state[1]), .I1(eis_state[0]), 
            .I2(n16554), .I3(acadc_rst), .O(iac_raw_buf_N_734));   // zim_main.vhd(451[3] 526[10])
    defparam i3787_3_lut_3_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i1_4_lut_adj_257 (.I0(n12_adj_1548), .I1(comm_state[0]), .I2(n20856), 
            .I3(n15), .O(n20122));   // zim_main.vhd(533[4] 818[13])
    defparam i1_4_lut_adj_257.LUT_INIT = 16'hb3a0;
    SB_DFFNE acadc_trig_300 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20362));   // zim_main.vhd(451[3] 526[10])
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16_adj_1557));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i2_3_lut_4_lut_adj_258 (.I0(comm_state[1]), .I1(n20917), .I2(n14529), 
            .I3(comm_data_vld), .O(n20944));
    defparam i2_3_lut_4_lut_adj_258.LUT_INIT = 16'hfeff;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15775));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15772));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15767));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15765));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15762));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15759));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_4_lut_adj_259 (.I0(n12226), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9255), .O(n14737));   // zim_main.vhd(531[3] 819[10])
    defparam i1_4_lut_adj_259.LUT_INIT = 16'ha2a0;
    SB_LUT4 i1_3_lut_4_lut_adj_260 (.I0(eis_end_N_724), .I1(acadc_rst), 
            .I2(eis_state[1]), .I3(eis_state[0]), .O(n13457));
    defparam i1_3_lut_4_lut_adj_260.LUT_INIT = 16'h1101;
    SB_LUT4 add_126_14_lut (.I0(n14_adj_1577), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19645), .O(data_idxvec_15__N_226[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_14_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15756));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_14 (.CI(n19645), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19646));
    SB_LUT4 add_126_13_lut (.I0(n14_adj_1578), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19644), .O(data_idxvec_15__N_226[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_13_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_13 (.CI(n19644), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19645));
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15753));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_126_12_lut (.I0(n14_adj_1579), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19643), .O(data_idxvec_15__N_226[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_12_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15750));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_12 (.CI(n19643), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19644));
    SB_LUT4 add_68_15_lut (.I0(VAC_MOSI), .I1(data_cntvec[13]), .I2(VAC_MOSI), 
            .I3(n19607), .O(n348)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_15_lut.LUT_INIT = 16'hC33C;
    SB_DFF eis_start_329 (.Q(eis_start), .C(clk_32MHz), .D(n15100));   // zim_main.vhd(531[3] 819[10])
    SB_DFF eis_stop_328 (.Q(eis_stop), .C(clk_32MHz), .D(n15099));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15747));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_68_15 (.CI(n19607), .I0(data_cntvec[13]), .I1(VAC_MOSI), 
            .CO(n19608));
    SB_LUT4 add_126_11_lut (.I0(n14_adj_1580), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19642), .O(data_idxvec_15__N_226[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_14_lut (.I0(VAC_MOSI), .I1(data_cntvec[12]), .I2(VAC_MOSI), 
            .I3(n19606), .O(n349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_11 (.CI(n19642), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19643));
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15744));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_126_10_lut (.I0(n14_adj_1550), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19641), .O(data_idxvec_15__N_226[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_10 (.CI(n19641), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19642));
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15741));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_126_9_lut (.I0(n14_adj_1551), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19640), .O(data_idxvec_15__N_226[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_67_9 (.CI(n19592), .I0(data_count[7]), .I1(VAC_MOSI), 
            .CO(n19593));
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15738));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_9 (.CI(n19640), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19641));
    SB_LUT4 add_67_8_lut (.I0(VAC_MOSI), .I1(data_count[6]), .I2(VAC_MOSI), 
            .I3(n19591), .O(n337)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20046));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_68_14 (.CI(n19606), .I0(data_cntvec[12]), .I1(VAC_MOSI), 
            .CO(n19607));
    SB_CARRY add_67_8 (.CI(n19591), .I0(data_count[6]), .I1(VAC_MOSI), 
            .CO(n19592));
    SB_LUT4 add_67_7_lut (.I0(VAC_MOSI), .I1(data_count[5]), .I2(VAC_MOSI), 
            .I3(n19590), .O(n338)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_8_lut (.I0(n14_adj_1552), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19639), .O(data_idxvec_15__N_226[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_67_7 (.CI(n19590), .I0(data_count[5]), .I1(VAC_MOSI), 
            .CO(n19591));
    SB_LUT4 add_68_13_lut (.I0(VAC_MOSI), .I1(data_cntvec[11]), .I2(VAC_MOSI), 
            .I3(n19605), .O(n350)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20140));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_8 (.CI(n19639), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19640));
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20142));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 n22351_bdd_4_lut (.I0(n22351), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22354));
    defparam n22351_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_68_13 (.CI(n19605), .I0(data_cntvec[11]), .I1(VAC_MOSI), 
            .CO(n19606));
    SB_LUT4 add_67_6_lut (.I0(VAC_MOSI), .I1(data_count[4]), .I2(VAC_MOSI), 
            .I3(n19589), .O(n339)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20144));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_126_7_lut (.I0(n14_adj_1584), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19638), .O(data_idxvec_15__N_226[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_7_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20146));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_7 (.CI(n19638), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19639));
    SB_LUT4 add_126_6_lut (.I0(n14_adj_1553), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19637), .O(data_idxvec_15__N_226[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_6_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20148));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_6 (.CI(n19637), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19638));
    SB_DFF acadc_rst_327 (.Q(acadc_rst), .C(clk_32MHz), .D(n15098));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_3_lut_adj_261 (.I0(n12226), .I1(comm_state[3]), .I2(n10_adj_1554), 
            .I3(VAC_MOSI), .O(n11850));
    defparam i1_3_lut_adj_261.LUT_INIT = 16'ha8a8;
    SB_LUT4 add_68_12_lut (.I0(VAC_MOSI), .I1(data_cntvec[10]), .I2(VAC_MOSI), 
            .I3(n19604), .O(n351)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15167_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(comm_clear_N_708));   // zim_main.vhd(533[4] 818[13])
    defparam i15167_2_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15097));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20150));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12237_3_lut (.I0(n11860), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n14655));   // zim_main.vhd(531[3] 819[10])
    defparam i12237_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20152));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19709 (.I0(comm_cmd[1]), .I1(n26_adj_1498), 
            .I2(n21350), .I3(comm_cmd[2]), .O(n22345));
    defparam comm_cmd_1__bdd_4_lut_19709.LUT_INIT = 16'he4aa;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15096));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_4_lut_adj_262 (.I0(n12226), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11347), .O(n11919));
    defparam i1_4_lut_adj_262.LUT_INIT = 16'ha0a8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(THERMOSTAT_N_470));   // zim_main.vhd(560[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19956));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i11676_3_lut (.I0(n22450), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14094));   // zim_main.vhd(533[4] 818[13])
    defparam i11676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18527_3_lut (.I0(n22330), .I1(n22360), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n21137));
    defparam i18527_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_263 (.I0(n9_adj_1415), .I1(comm_state[3]), .I2(n9306), 
            .I3(n20907), .O(n12399));
    defparam i1_4_lut_adj_263.LUT_INIT = 16'hc0c4;
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19958));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19960));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19954));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i11672_3_lut (.I0(n21137), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14090));   // zim_main.vhd(533[4] 818[13])
    defparam i11672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11668_3_lut (.I0(n22312), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14086));   // zim_main.vhd(533[4] 818[13])
    defparam i11668_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_68_12 (.CI(n19604), .I0(data_cntvec[10]), .I1(VAC_MOSI), 
            .CO(n19605));
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19938));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19962));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 n22345_bdd_4_lut (.I0(n22345), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22348));
    defparam n22345_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18482_3_lut (.I0(n22306), .I1(n22420), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n21092));
    defparam i18482_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12744_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1556), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15162));   // zim_main.vhd(531[3] 819[10])
    defparam i12744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1551349_i1_3_lut (.I0(n21092), .I1(n22246), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1542));
    defparam i1551349_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19964));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i11664_3_lut (.I0(n30_adj_1542), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14082));   // zim_main.vhd(533[4] 818[13])
    defparam i11664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_264 (.I0(n10717), .I1(n20907), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10697));   // zim_main.vhd(778[11:20])
    defparam i1_2_lut_adj_264.LUT_INIT = 16'heeee;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15095));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 comm_index_1__bdd_4_lut_19724 (.I0(comm_index[1]), .I1(n4_adj_1590), 
            .I2(n21539), .I3(comm_index[2]), .O(n22339));
    defparam comm_index_1__bdd_4_lut_19724.LUT_INIT = 16'he4aa;
    SB_LUT4 n22339_bdd_4_lut (.I0(n22339), .I1(n2_adj_1589), .I2(n1_adj_1588), 
            .I3(comm_index[2]), .O(n22342));
    defparam n22339_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15094));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_126_5_lut (.I0(n14_adj_1585), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19636), .O(data_idxvec_15__N_226[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_67_4 (.CI(n19587), .I0(data_count[2]), .I1(VAC_MOSI), 
            .CO(n19588));
    SB_LUT4 comm_cmd_2__bdd_4_lut_19788 (.I0(comm_cmd[2]), .I1(n21132), 
            .I2(n21133), .I3(comm_cmd[3]), .O(n22333));
    defparam comm_cmd_2__bdd_4_lut_19788.LUT_INIT = 16'he4aa;
    SB_LUT4 n22333_bdd_4_lut (.I0(n22333), .I1(n21127), .I2(n21126), .I3(comm_cmd[3]), 
            .O(n22336));
    defparam n22333_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12745_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1555), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15163));   // zim_main.vhd(531[3] 819[10])
    defparam i12745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19704 (.I0(comm_cmd[1]), .I1(n21081), 
            .I2(n21082), .I3(comm_cmd[2]), .O(n22327));
    defparam comm_cmd_1__bdd_4_lut_19704.LUT_INIT = 16'he4aa;
    SB_LUT4 i11660_3_lut (.I0(n22324), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14078));   // zim_main.vhd(533[4] 818[13])
    defparam i11660_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12746_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1585), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15164));   // zim_main.vhd(531[3] 819[10])
    defparam i12746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1552555_i1_3_lut (.I0(n22288), .I1(n22276), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1539));
    defparam i1552555_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_126_5 (.CI(n19636), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19637));
    SB_LUT4 add_126_4_lut (.I0(n14_adj_1555), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19635), .O(data_idxvec_15__N_226[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i11656_3_lut (.I0(n30_adj_1539), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14074));   // zim_main.vhd(533[4] 818[13])
    defparam i11656_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_126_4 (.CI(n19635), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19636));
    SB_LUT4 add_126_3_lut (.I0(n14_adj_1556), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19634), .O(data_idxvec_15__N_226[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12337_2_lut (.I0(n11961), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14750));   // zim_main.vhd(531[3] 819[10])
    defparam i12337_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_265 (.I0(comm_index[0]), .I1(comm_state[1]), .I2(n18991), 
            .I3(n19783), .O(n4_adj_1545));
    defparam i1_4_lut_adj_265.LUT_INIT = 16'h3373;
    SB_CARRY add_126_3 (.CI(n19634), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19635));
    SB_LUT4 add_126_2_lut (.I0(n14_adj_1533), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_226[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19634));
    SB_LUT4 add_125_11_lut (.I0(data_index[9]), .I1(data_index[9]), .I2(n10598), 
            .I3(n19633), .O(n7_adj_1558)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_11_lut (.I0(VAC_MOSI), .I1(data_cntvec[9]), .I2(VAC_MOSI), 
            .I3(n19603), .O(n352)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_266 (.I0(n20917), .I1(n20843), .I2(n12092), .I3(n4_adj_1545), 
            .O(n11961));
    defparam i1_4_lut_adj_266.LUT_INIT = 16'hc080;
    SB_LUT4 n22327_bdd_4_lut (.I0(n22327), .I1(n21073), .I2(n21072), .I3(comm_cmd[2]), 
            .O(n22330));
    defparam n22327_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_125_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10598), 
            .I3(n19632), .O(n7_adj_1560)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_125_10 (.CI(n19632), .I0(data_index[8]), .I1(n10598), 
            .CO(n19633));
    SB_LUT4 i11_3_lut_4_lut (.I0(n9306), .I1(comm_state[3]), .I2(n11396), 
            .I3(trig_dds0), .O(n20016));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 add_125_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10598), 
            .I3(n19631), .O(n7_adj_1562)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_125_9 (.CI(n19631), .I0(data_index[7]), .I1(n10598), 
            .CO(n19632));
    SB_LUT4 i15_4_lut_adj_267 (.I0(n10598), .I1(n8813), .I2(comm_state[3]), 
            .I3(n9306), .O(n12280));
    defparam i15_4_lut_adj_267.LUT_INIT = 16'hf535;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15093));   // zim_main.vhd(531[3] 819[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n13457), 
            .D(n346), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12747_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1553), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15165));   // zim_main.vhd(531[3] 819[10])
    defparam i12747_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n13457), 
            .D(n347), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n13457), 
            .D(n348), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n13457), 
            .D(n349), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n13457), 
            .D(n350), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n13457), 
            .D(n351), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n13457), 
            .D(n352), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_19694 (.I0(comm_cmd[2]), .I1(n21123), 
            .I2(n21124), .I3(comm_cmd[3]), .O(n22321));
    defparam comm_cmd_2__bdd_4_lut_19694.LUT_INIT = 16'he4aa;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15092));   // zim_main.vhd(531[3] 819[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n13457), 
            .D(n353), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n13457), 
            .D(n354), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n13457), 
            .D(n355), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n13457), 
            .D(n356), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n13457), 
            .D(n357), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n13457), 
            .D(n358), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n13457), 
            .D(n359), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 n22321_bdd_4_lut (.I0(n22321), .I1(n21097), .I2(n22318), .I3(comm_cmd[3]), 
            .O(n22324));
    defparam n22321_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n13457), 
            .D(n360), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i2_3_lut_4_lut_adj_268 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(n20917), .I3(n20937), .O(n20939));   // zim_main.vhd(715[5] 725[12])
    defparam i2_3_lut_4_lut_adj_268.LUT_INIT = 16'hfffe;
    SB_CARRY add_68_11 (.CI(n19603), .I0(data_cntvec[9]), .I1(VAC_MOSI), 
            .CO(n19604));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19729 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22315));
    defparam comm_cmd_0__bdd_4_lut_19729.LUT_INIT = 16'he4aa;
    SB_LUT4 n22315_bdd_4_lut (.I0(n22315), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22318));
    defparam n22315_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12748_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1584), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15166));   // zim_main.vhd(531[3] 819[10])
    defparam i12748_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1553158_i1_3_lut (.I0(n22282), .I1(n22366), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1531));
    defparam i1553158_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11648_3_lut (.I0(n30_adj_1531), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14066));   // zim_main.vhd(533[4] 818[13])
    defparam i11648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1553761_i1_3_lut (.I0(n22264), .I1(n22414), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1524));
    defparam i1553761_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11644_3_lut (.I0(n30_adj_1524), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14062));   // zim_main.vhd(533[4] 818[13])
    defparam i11644_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1554364_i1_3_lut (.I0(n22210), .I1(n22432), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1520));
    defparam i1554364_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11640_3_lut (.I0(n30_adj_1520), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14058));   // zim_main.vhd(533[4] 818[13])
    defparam i11640_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11636_3_lut (.I0(n22336), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14054));   // zim_main.vhd(533[4] 818[13])
    defparam i11636_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF trig_dds1_305 (.Q(trig_dds1), .C(clk_32MHz), .D(n20010));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1555570_i1_3_lut (.I0(n22234), .I1(n22354), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1513));
    defparam i1555570_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11632_3_lut (.I0(n30_adj_1513), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14050));   // zim_main.vhd(533[4] 818[13])
    defparam i11632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_125_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10598), 
            .I3(n19630), .O(n7_adj_1564)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1556776_i1_3_lut (.I0(n22402), .I1(n22348), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1500));
    defparam i1556776_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11628_3_lut (.I0(n30_adj_1500), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14046));   // zim_main.vhd(533[4] 818[13])
    defparam i11628_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11624_3_lut (.I0(n22228), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14042));   // zim_main.vhd(533[4] 818[13])
    defparam i11624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12344_2_lut (.I0(n11991), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14757));   // zim_main.vhd(531[3] 819[10])
    defparam i12344_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i42_4_lut (.I0(n21341), .I1(n21339), .I2(comm_state[1]), .I3(n20804), 
            .O(n38_adj_1608));
    defparam i42_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_3_lut_adj_269 (.I0(n38_adj_1608), .I1(n20843), .I2(n20917), 
            .I3(VAC_MOSI), .O(n11991));
    defparam i1_3_lut_adj_269.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11620_3_lut (.I0(n22270), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14038));   // zim_main.vhd(533[4] 818[13])
    defparam i11620_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1491));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1491), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1488));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i30_3_lut (.I0(n22_adj_1488), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1506));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11616_3_lut (.I0(n30_adj_1506), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14034));   // zim_main.vhd(533[4] 818[13])
    defparam i11616_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1639));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1639), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1640));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i30_3_lut (.I0(n22_adj_1640), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1641));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11612_3_lut (.I0(n30_adj_1641), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14030));   // zim_main.vhd(533[4] 818[13])
    defparam i11612_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1636));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1636), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1637));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i30_3_lut (.I0(n22_adj_1637), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1638));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11608_3_lut (.I0(n30_adj_1638), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14026));   // zim_main.vhd(533[4] 818[13])
    defparam i11608_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1632));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12749_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1552), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15167));   // zim_main.vhd(531[3] 819[10])
    defparam i12749_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1632), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1633));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i30_3_lut (.I0(n22_adj_1633), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1634));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11604_3_lut (.I0(n30_adj_1634), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14022));   // zim_main.vhd(533[4] 818[13])
    defparam i11604_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12750_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1551), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15168));   // zim_main.vhd(531[3] 819[10])
    defparam i12750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1629));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1629), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1630));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i30_3_lut (.I0(n22_adj_1630), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1631));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11600_3_lut (.I0(n30_adj_1631), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14018));   // zim_main.vhd(533[4] 818[13])
    defparam i11600_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1626));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1626), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1627));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i30_3_lut (.I0(n22_adj_1627), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1628));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11594_3_lut (.I0(n30_adj_1628), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14012));   // zim_main.vhd(533[4] 818[13])
    defparam i11594_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12351_2_lut (.I0(n12085), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14764));   // zim_main.vhd(531[3] 819[10])
    defparam i12351_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i38_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22_adj_1615));
    defparam i38_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i19112_4_lut (.I0(n22_adj_1615), .I1(n20804), .I2(n10717), 
            .I3(comm_cmd[3]), .O(n21344));
    defparam i19112_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i36_4_lut (.I0(n21344), .I1(n20850), .I2(comm_state[1]), .I3(n19783), 
            .O(n31_adj_1613));
    defparam i36_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_270 (.I0(n31_adj_1613), .I1(n20843), .I2(n20917), 
            .I3(VAC_MOSI), .O(n12085));
    defparam i1_3_lut_adj_270.LUT_INIT = 16'hc8c8;
    SB_LUT4 i12692_4_lut_4_lut (.I0(acadc_rst), .I1(n20826), .I2(eis_end_N_724), 
            .I3(eis_end), .O(n15110));   // zim_main.vhd(351[18:31])
    defparam i12692_4_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 mux_130_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1623));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1623), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1624));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i30_3_lut (.I0(n22_adj_1624), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1625));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11590_3_lut (.I0(n30_adj_1625), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14008));   // zim_main.vhd(533[4] 818[13])
    defparam i11590_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11586_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14004));   // zim_main.vhd(533[4] 818[13])
    defparam i11586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11582_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14000));   // zim_main.vhd(533[4] 818[13])
    defparam i11582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11578_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13996));   // zim_main.vhd(533[4] 818[13])
    defparam i11578_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11208_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13626));   // zim_main.vhd(533[4] 818[13])
    defparam i11208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_3_lut_adj_271 (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(n11361));
    defparam i2_2_lut_3_lut_adj_271.LUT_INIT = 16'hfdfd;
    SB_LUT4 i11574_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13992));   // zim_main.vhd(533[4] 818[13])
    defparam i11574_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11570_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13988));   // zim_main.vhd(533[4] 818[13])
    defparam i11570_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17178_2_lut (.I0(comm_state[0]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n19783));
    defparam i17178_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12358_2_lut (.I0(n12136), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14771));   // zim_main.vhd(531[3] 819[10])
    defparam i12358_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19274_2_lut (.I0(n18984), .I1(n19783), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(n21352));
    defparam i19274_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19_4_lut (.I0(n10697), .I1(n21352), .I2(comm_state[1]), .I3(comm_index[0]), 
            .O(n12));
    defparam i19_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_272 (.I0(n12), .I1(n20843), .I2(n20917), .I3(VAC_MOSI), 
            .O(n12136));
    defparam i1_3_lut_adj_272.LUT_INIT = 16'hc8c8;
    SB_LUT4 i227_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n1264));   // zim_main.vhd(811[8:49])
    defparam i227_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i11566_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13984));   // zim_main.vhd(533[4] 818[13])
    defparam i11566_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11562_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13980));   // zim_main.vhd(533[4] 818[13])
    defparam i11562_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11558_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13976));   // zim_main.vhd(533[4] 818[13])
    defparam i11558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11554_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13972));   // zim_main.vhd(533[4] 818[13])
    defparam i11554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11550_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13968));   // zim_main.vhd(533[4] 818[13])
    defparam i11550_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11546_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13964));   // zim_main.vhd(533[4] 818[13])
    defparam i11546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11542_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13960));   // zim_main.vhd(533[4] 818[13])
    defparam i11542_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12365_2_lut (.I0(n12178), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14778));   // zim_main.vhd(531[3] 819[10])
    defparam i12365_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_273 (.I0(n10697), .I1(n18993), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1635));
    defparam i19_4_lut_adj_273.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_3_lut_adj_274 (.I0(n12_adj_1635), .I1(n20843), .I2(n20917), 
            .I3(VAC_MOSI), .O(n12178));
    defparam i1_3_lut_adj_274.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11538_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13956));   // zim_main.vhd(533[4] 818[13])
    defparam i11538_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11534_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13952));   // zim_main.vhd(533[4] 818[13])
    defparam i11534_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11530_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13948));   // zim_main.vhd(533[4] 818[13])
    defparam i11530_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11526_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13944));   // zim_main.vhd(533[4] 818[13])
    defparam i11526_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_10_lut (.I0(VAC_MOSI), .I1(data_cntvec[8]), .I2(VAC_MOSI), 
            .I3(n19602), .O(n353)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11522_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13940));   // zim_main.vhd(533[4] 818[13])
    defparam i11522_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11518_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13936));   // zim_main.vhd(533[4] 818[13])
    defparam i11518_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19684 (.I0(comm_cmd[2]), .I1(n21084), 
            .I2(n21085), .I3(comm_cmd[3]), .O(n22309));
    defparam comm_cmd_2__bdd_4_lut_19684.LUT_INIT = 16'he4aa;
    SB_LUT4 n22309_bdd_4_lut (.I0(n22309), .I1(n21076), .I2(n22300), .I3(comm_cmd[3]), 
            .O(n22312));
    defparam n22309_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_275 (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20937));
    defparam i1_2_lut_adj_275.LUT_INIT = 16'hbbbb;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19679 (.I0(comm_cmd[0]), .I1(VAC_OSR0), 
            .I2(buf_adcdata_iac[20]), .I3(comm_cmd[1]), .O(n22303));
    defparam comm_cmd_0__bdd_4_lut_19679.LUT_INIT = 16'he4aa;
    SB_LUT4 i11514_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13932));   // zim_main.vhd(533[4] 818[13])
    defparam i11514_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12372_2_lut (.I0(n12220), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14785));   // zim_main.vhd(531[3] 819[10])
    defparam i12372_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i14177_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1550), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15169));
    defparam i14177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_4_lut_adj_276 (.I0(n10697), .I1(n18993), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1605));
    defparam i19_4_lut_adj_276.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_277 (.I0(n12_adj_1605), .I1(n20843), .I2(n20917), 
            .I3(VAC_MOSI), .O(n12220));
    defparam i1_3_lut_adj_277.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11510_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13928));   // zim_main.vhd(533[4] 818[13])
    defparam i11510_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1596));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18442_4_lut (.I0(n4_adj_1596), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21052));
    defparam i18442_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18443_3_lut (.I0(n22252), .I1(n21052), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21053));
    defparam i18443_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1595));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18586_4_lut (.I0(n4_adj_1595), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21196));
    defparam i18586_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18587_3_lut (.I0(n22396), .I1(n21196), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21197));
    defparam i18587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1594));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18583_4_lut (.I0(n4_adj_1594), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21193));
    defparam i18583_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18584_3_lut (.I0(n22390), .I1(n21193), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21194));
    defparam i18584_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12386_3_lut (.I0(n12336), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n14799));   // zim_main.vhd(531[3] 819[10])
    defparam i12386_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i1_2_lut_3_lut_adj_278 (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), 
            .I2(wdtick_cnt[0]), .I3(VAC_MOSI), .O(n25));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_278.LUT_INIT = 16'h0b0b;
    SB_DFF trig_dds0_304 (.Q(trig_dds0), .C(clk_32MHz), .D(n20016));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_4_lut_adj_279 (.I0(n12226), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9255), .O(n12336));
    defparam i1_4_lut_adj_279.LUT_INIT = 16'ha8a0;
    SB_LUT4 mux_137_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1587));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18565_4_lut (.I0(n4_adj_1587), .I1(\comm_buf[6] [7]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21175));
    defparam i18565_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18566_3_lut (.I0(n22384), .I1(n21175), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21176));
    defparam i18566_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13326_4_lut_4_lut (.I0(n11819), .I1(comm_state[3]), .I2(n14_adj_1583), 
            .I3(buf_dds1[13]), .O(n15744));   // zim_main.vhd(531[3] 819[10])
    defparam i13326_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i1_4_lut_adj_280 (.I0(n20915), .I1(n9306), .I2(n12226), .I3(comm_state[3]), 
            .O(n11396));
    defparam i1_4_lut_adj_280.LUT_INIT = 16'hf531;
    SB_LUT4 i1_3_lut_4_lut_adj_281 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n20804), .O(n11853));
    defparam i1_3_lut_4_lut_adj_281.LUT_INIT = 16'hdfcf;
    SB_LUT4 i12_4_lut_adj_282 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20572));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_282.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_128_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1544));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18475_4_lut (.I0(n26_adj_1544), .I1(buf_data_vac[39]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21085));
    defparam i18475_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13349_4_lut_4_lut (.I0(n11819), .I1(comm_state[3]), .I2(n14_adj_1584), 
            .I3(buf_dds1[5]), .O(n15767));   // zim_main.vhd(531[3] 819[10])
    defparam i13349_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 mux_128_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1543));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18474_4_lut (.I0(n23_adj_1543), .I1(req_data_cnt[11]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21084));
    defparam i18474_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13354_4_lut_4_lut (.I0(n11819), .I1(comm_state[3]), .I2(n14_adj_1585), 
            .I3(buf_dds1[3]), .O(n15772));   // zim_main.vhd(531[3] 819[10])
    defparam i13354_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12_4_lut_adj_283 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20570));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_283.LUT_INIT = 16'hca0a;
    ADC_MAX31865 RTD (.adc_state({Open_0, adc_state_adj_1693[2], Open_1, 
            Open_2}), .RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .GND_net(VAC_MOSI), .buf_readRTD({buf_readRTD}), .read_buf({read_buf}), 
            .n11714(n11714), .n13293(n13293), .n1(n1_adj_1606), .n18755(n18755), 
            .buf_cfgRTD({buf_cfgRTD}), .n13176(n13176), .n14479(n14479), 
            .RTD_DRDY(RTD_DRDY), .n19940(n19940), .VCC_net(VCC_net), .\adress[1] (adress[1]), 
            .n19942(n19942), .\adress[2] (adress[2]), .n19944(n19944), 
            .\adress[3] (adress[3]), .n19946(n19946), .\adress[4] (adress[4]), 
            .n19948(n19948), .\adress[5] (adress[5]), .n19950(n19950), 
            .\adress[6] (adress[6]), .n15333(n15333), .\cfg_buf[1] (cfg_buf[1]), 
            .n20244(n20244), .\cfg_buf[0] (cfg_buf[0]), .n20248(n20248), 
            .n20252(n20252), .n20256(n20256), .n20260(n20260), .n20264(n20264), 
            .n20268(n20268), .n20272(n20272), .n20276(n20276), .n20280(n20280), 
            .n20284(n20284), .n20288(n20288), .n20292(n20292), .n20296(n20296), 
            .n20298(n20298), .n20300(n20300), .n20302(n20302), .n20304(n20304), 
            .n20306(n20306), .n20308(n20308), .n20310(n20310), .n20312(n20312), 
            .n20314(n20314), .n20316(n20316), .n20318(n20318), .n20320(n20320), 
            .n20322(n20322), .n20324(n20324), .n15792(n15792), .n20354(n20354), 
            .n20356(n20356), .n13165(n13165), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(902[8:20])
    SB_LUT4 i1_2_lut_4_lut_adj_284 (.I0(comm_state[0]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(comm_cmd[5]), .O(n20804));   // zim_main.vhd(750[5] 805[14])
    defparam i1_2_lut_4_lut_adj_284.LUT_INIT = 16'h0010;
    SB_LUT4 i12752_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1580), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15170));   // zim_main.vhd(531[3] 819[10])
    defparam i12752_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15385_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1533));   // zim_main.vhd(533[4] 818[13])
    defparam i15385_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1673[1]), .I1(bit_cnt_adj_1673[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(bit_cnt_3__N_972_adj_1677[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i14515_3_lut (.I0(bit_cnt_adj_1673[2]), .I1(bit_cnt_adj_1673[1]), 
            .I2(bit_cnt_adj_1673[0]), .I3(VAC_MOSI), .O(bit_cnt_3__N_972_adj_1677[2]));   // dds_ad9837.vhd(25[9:16])
    defparam i14515_3_lut.LUT_INIT = 16'h6a6a;
    ADC_ADS1252 ADC_VDC (.\adc_state[2] (adc_state_adj_1687[2]), .GND_net(VAC_MOSI), 
            .\adc_state_3__N_1130[0] (VDC_SDO), .\adc_state[3] (adc_state_adj_1687[3]), 
            .VCC_net(VCC_net), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), .n20058(n20058), 
            .cmd_rdadctmp({Open_3, cmd_rdadctmp_adj_1688[22:1], Open_4}), 
            .VDC_CLK(VDC_CLK), .n20060(n20060), .n20062(n20062), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), 
            .n20064(n20064), .n20066(n20066), .n20068(n20068), .n20070(n20070), 
            .n20072(n20072), .n20074(n20074), .n20076(n20076), .n20078(n20078), 
            .n20080(n20080), .n20082(n20082), .n20084(n20084), .n20086(n20086), 
            .n20088(n20088), .n20090(n20090), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .n20092(n20092), .n20094(n20094), .n20096(n20096), .n20098(n20098), 
            .n20100(n20100), .n20188(n20188), .buf_adcdata_vdc({buf_adcdata_vdc}), 
            .n20190(n20190), .n20192(n20192), .n20202(n20202), .n20204(n20204), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), .n20206(n20206), .n20208(n20208), 
            .n20210(n20210), .n20212(n20212), .n20214(n20214), .n20216(n20216), 
            .n20218(n20218), .n20220(n20220), .n20222(n20222), .n20224(n20224), 
            .n20226(n20226), .n20228(n20228), .n20230(n20230), .n20232(n20232), 
            .n20234(n20234), .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .n20236(n20236), 
            .n20238(n20238), .VDC_SCLK(VDC_SCLK), .n20240(n20240), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), 
            .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), 
            .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), 
            .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1688[0]), .\buf_adcdata_vac[23] (buf_adcdata_vac[23]), 
            .\comm_cmd[0] (comm_cmd[0]), .n19(n19_adj_1527), .n20132(n20132), 
            .n20350(n20350), .n12871(n12871), .n13087(n13087), .clk_16MHz(clk_16MHz));   // zim_main.vhd(893[12:23])
    SB_LUT4 i15321_4_lut (.I0(bit_cnt_adj_1673[3]), .I1(bit_cnt_adj_1673[2]), 
            .I2(bit_cnt_adj_1673[1]), .I3(bit_cnt_adj_1673[0]), .O(bit_cnt_3__N_972_adj_1677[3]));
    defparam i15321_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 i12678_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9306), .I3(n12399), .O(n15096));   // zim_main.vhd(531[3] 819[10])
    defparam i12678_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12336), 
            .D(n21176), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12336), 
            .D(n22342), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12336), 
            .D(n22192), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12336), 
            .D(n22372), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12336), 
            .D(n21194), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12336), 
            .D(n21197), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12336), 
            .D(n21053), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12220), 
            .D(n13928), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_285 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20568));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_285.LUT_INIT = 16'hca0a;
    SB_LUT4 n22303_bdd_4_lut (.I0(n22303), .I1(buf_dds1[12]), .I2(buf_dds0[12]), 
            .I3(comm_cmd[1]), .O(n22306));
    defparam n22303_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_286 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20566));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_286.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12220), 
            .D(n13932), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12220), 
            .D(n13936), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12220), 
            .D(n13940), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12220), 
            .D(n13944), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12220), 
            .D(n13948), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12220), 
            .D(n13952), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12178), 
            .D(n13956), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12178), 
            .D(n13960), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12178), 
            .D(n13964), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12178), 
            .D(n13968), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12178), 
            .D(n13972), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12178), 
            .D(n13976), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12178), 
            .D(n13980), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12136), 
            .D(n13984), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12136), 
            .D(n13988), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12136), 
            .D(n13992), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12136), 
            .D(n13626), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12136), 
            .D(n13996), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12136), 
            .D(n14000), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12136), 
            .D(n14004), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12085), 
            .D(n14008), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12085), 
            .D(n14012), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12085), 
            .D(n14018), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_125_8 (.CI(n19630), .I0(data_index[6]), .I1(n10598), 
            .CO(n19631));
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12085), 
            .D(n14022), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12085), 
            .D(n14026), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12085), 
            .D(n14030), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12085), 
            .D(n14034), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n11991), 
            .D(n14038), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n11991), 
            .D(n14042), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n11991), 
            .D(n14046), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n11991), 
            .D(n14050), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n11991), 
            .D(n14054), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n11991), 
            .D(n14058), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n11991), 
            .D(n14062), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n11961), 
            .D(n14066), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n11961), 
            .D(n14074), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n11961), 
            .D(n14078), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n11961), 
            .D(n14082), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n11961), 
            .D(n14086), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n11961), 
            .D(n14090), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n11961), 
            .D(n14094), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n11919), 
            .D(THERMOSTAT_N_470), .R(n20378));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n11860), 
            .D(n30_adj_1547), .R(n14655));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_287 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20564));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_287.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_288 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20562));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_288.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_366_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_706));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_366_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_LUT4 i12_4_lut_adj_289 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20560));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_289.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_290 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20558));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_290.LUT_INIT = 16'hca0a;
    SB_LUT4 add_125_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10598), 
            .I3(n19629), .O(n17487)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_291 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20556));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_291.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_292 (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n12226), .O(n11385));
    defparam i1_3_lut_4_lut_adj_292.LUT_INIT = 16'hcf8a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19669 (.I0(comm_cmd[0]), .I1(IAC_FLT1), 
            .I2(buf_adcdata_iac[19]), .I3(comm_cmd[1]), .O(n22297));
    defparam comm_cmd_0__bdd_4_lut_19669.LUT_INIT = 16'he4aa;
    SB_LUT4 i12753_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1579), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15171));   // zim_main.vhd(531[3] 819[10])
    defparam i12753_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n11850), 
            .D(comm_index_2__N_447[2]), .R(n14737));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 n22297_bdd_4_lut (.I0(n22297), .I1(buf_dds1[11]), .I2(buf_dds0[11]), 
            .I3(comm_cmd[1]), .O(n22300));
    defparam n22297_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n11850), 
            .D(comm_index_2__N_447[1]), .R(n14737));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18_adj_1619), 
            .D(n20122), .R(comm_state[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n13457), 
            .D(n361), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i15170_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n3));   // zim_main.vhd(533[4] 818[13])
    defparam i15170_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19689 (.I0(comm_cmd[1]), .I1(n21201), 
            .I2(n21202), .I3(comm_cmd[2]), .O(n22291));
    defparam comm_cmd_1__bdd_4_lut_19689.LUT_INIT = 16'he4aa;
    SB_LUT4 n22291_bdd_4_lut (.I0(n22291), .I1(n21139), .I2(n21138), .I3(comm_cmd[2]), 
            .O(n22294));
    defparam n22291_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(comm_state[0]), .O(n7_adj_1616));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i12_4_lut_adj_293 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20554));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_293.LUT_INIT = 16'hca0a;
    SB_LUT4 i12754_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1578), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15172));   // zim_main.vhd(531[3] 819[10])
    defparam i12754_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_68_10 (.CI(n19602), .I0(data_cntvec[8]), .I1(VAC_MOSI), 
            .CO(n19603));
    SB_LUT4 i19129_2_lut_3_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(VAC_MOSI), .O(n21369));
    defparam i19129_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19659 (.I0(comm_cmd[1]), .I1(n19_adj_1536), 
            .I2(n20_adj_1537), .I3(comm_cmd[2]), .O(n22285));
    defparam comm_cmd_1__bdd_4_lut_19659.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1264), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2_adj_1581));   // zim_main.vhd(811[5] 813[12])
    defparam comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i12_4_lut_adj_294 (.I0(cmd_rdadctmp_adj_1688[16]), .I1(cmd_rdadctmp_adj_1688[15]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20088));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_294.LUT_INIT = 16'h0aca;
    SB_LUT4 n22285_bdd_4_lut (.I0(n22285), .I1(n17_adj_1535), .I2(n16_adj_1534), 
            .I3(comm_cmd[2]), .O(n22288));
    defparam n22285_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_68_9_lut (.I0(VAC_MOSI), .I1(data_cntvec[7]), .I2(VAC_MOSI), 
            .I3(n19601), .O(n354)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1264), .I2(comm_state[0]), .I3(comm_state_3__N_420[3]), 
            .O(n8_adj_1582));   // zim_main.vhd(811[5] 813[12])
    defparam comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    SB_LUT4 i12_4_lut_adj_295 (.I0(cmd_rdadctmp_adj_1688[15]), .I1(cmd_rdadctmp_adj_1688[14]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20086));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_295.LUT_INIT = 16'h0aca;
    SB_DFFSR secclk_cnt_3765_3766__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n14715));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3761_3762__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n30_adj_1493), 
            .R(n14714));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY add_125_7 (.CI(n19629), .I0(data_index[5]), .I1(n10598), 
            .CO(n19630));
    SB_LUT4 i12755_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1577), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15173));   // zim_main.vhd(531[3] 819[10])
    defparam i12755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_296 (.I0(n12226), .I1(n20939), .I2(n1264), .I3(comm_state[0]), 
            .O(n4_adj_1643));
    defparam i1_4_lut_adj_296.LUT_INIT = 16'hc8cc;
    SB_LUT4 i12756_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1583), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15174));   // zim_main.vhd(531[3] 819[10])
    defparam i12756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_125_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10598), 
            .I3(n19628), .O(n7_adj_1566)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_297 (.I0(cmd_rdadctmp_adj_1688[14]), .I1(cmd_rdadctmp_adj_1688[13]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20084));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_297.LUT_INIT = 16'h0aca;
    SB_CARRY add_125_6 (.CI(n19628), .I0(data_index[4]), .I1(n10598), 
            .CO(n19629));
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11654), .D(n411), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19654 (.I0(comm_cmd[1]), .I1(n19_adj_1527), 
            .I2(n20_adj_1528), .I3(comm_cmd[2]), .O(n22279));
    defparam comm_cmd_1__bdd_4_lut_19654.LUT_INIT = 16'he4aa;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11654), .D(n410), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 add_125_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10598), 
            .I3(n19627), .O(n7_adj_1568)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_5_lut.LUT_INIT = 16'hA3AC;
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11654), .D(n409), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 n22279_bdd_4_lut (.I0(n22279), .I1(n17_adj_1526), .I2(n16_adj_1525), 
            .I3(comm_cmd[2]), .O(n22282));
    defparam n22279_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_4_lut_adj_298 (.I0(n3), .I1(n4_adj_1643), .I2(ICE_SPI_CE0), 
            .I3(n12219), .O(n20801));
    defparam i2_4_lut_adj_298.LUT_INIT = 16'hcc8c;
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11654), .D(n408), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11654), .D(n407), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11654), .D(n406), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12_4_lut_adj_299 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20552));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_299.LUT_INIT = 16'hca0a;
    SB_LUT4 i12757_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1576), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15175));   // zim_main.vhd(531[3] 819[10])
    defparam i12757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19649 (.I0(comm_cmd[1]), .I1(n21272), 
            .I2(n21273), .I3(comm_cmd[2]), .O(n22273));
    defparam comm_cmd_1__bdd_4_lut_19649.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_300 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20550));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_300.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_6__I_0_368_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n8));   // zim_main.vhd(778[11:20])
    defparam comm_cmd_6__I_0_368_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19_4_lut_adj_301 (.I0(trig_dds1), .I1(n20914), .I2(comm_state[3]), 
            .I3(n9306), .O(n20010));
    defparam i19_4_lut_adj_301.LUT_INIT = 16'h0ab0;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11654), .D(n405), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11654), .D(n404), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12_4_lut_adj_302 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20548));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_302.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_303 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20546));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_303.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11654), .D(n403), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 n22273_bdd_4_lut (.I0(n22273), .I1(n21286), .I2(n23_adj_1538), 
            .I3(comm_cmd[2]), .O(n22276));
    defparam n22273_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_304 (.I0(n9), .I1(comm_state[3]), .I2(n9306), 
            .I3(n20907), .O(n12429));
    defparam i1_4_lut_adj_304.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12_4_lut_adj_305 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20544));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_305.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11654), .D(n402), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    GND i1 (.Y(VAC_MOSI));
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11654), .D(n401), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i1_2_lut_3_lut_adj_306 (.I0(comm_cmd[3]), .I1(n20893), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n20907));
    defparam i1_2_lut_3_lut_adj_306.LUT_INIT = 16'hfdfd;
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11654), .D(n400), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11654), .D(n399), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11654), .D(n398), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11654), .D(n397), .R(n14671));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n13457), 
            .D(n342), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n13457), 
            .D(n341), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12336), 
            .D(n22186), .R(n14799));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12220), 
            .D(n13568), .R(n14785));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12178), 
            .D(n13564), .R(n14778));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12136), 
            .D(n13560), .R(n14771));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12085), 
            .D(n13556), .R(n14764));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n11991), 
            .D(n13552), .R(n14757));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_307 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12498), .I3(adc_state[0]), .O(n20542));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_307.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n11961), 
            .D(n13548), .R(n14750));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n11860), 
            .D(n30_adj_1490), .R(n14655));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_67_6 (.CI(n19589), .I0(data_count[4]), .I1(VAC_MOSI), 
            .CO(n19590));
    SB_LUT4 i12_4_lut_adj_308 (.I0(cmd_rdadctmp_adj_1688[13]), .I1(cmd_rdadctmp_adj_1688[12]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20082));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_308.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_309 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12219));
    defparam i1_2_lut_adj_309.LUT_INIT = 16'heeee;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n11850), 
            .D(comm_index_2__N_447[0]), .R(n14737));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR flagcntwd_303 (.Q(flagcntwd), .C(clk_32MHz), .E(n11390), 
            .D(n3), .R(n20378));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_2_lut_3_lut_adj_310 (.I0(comm_cmd[3]), .I1(n20893), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n11338));
    defparam i1_2_lut_3_lut_adj_310.LUT_INIT = 16'hdfdf;
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n13457), 
            .D(n340), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_CARRY add_68_9 (.CI(n19601), .I0(data_cntvec[7]), .I1(VAC_MOSI), 
            .CO(n19602));
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n13457), 
            .D(n339), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i1_2_lut_3_lut_adj_311 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n12226));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut_adj_311.LUT_INIT = 16'hfdfd;
    SB_LUT4 i18444_3_lut (.I0(acadc_skipCount[7]), .I1(req_data_cnt[7]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n21054));
    defparam i18444_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n13457), 
            .D(n338), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n13457), 
            .D(n337), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n13457), 
            .D(n336), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n13457), 
            .D(n335), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i9 (.Q(data_count[9]), .C(clk_32MHz), .E(n13457), 
            .D(n334), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_19674 (.I0(comm_cmd[2]), .I1(n21054), 
            .I2(n21055), .I3(comm_cmd[3]), .O(n22267));
    defparam comm_cmd_2__bdd_4_lut_19674.LUT_INIT = 16'he4aa;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n13457), 
            .D(n343), .R(n14647));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11654), .D(n412), .R(n21037));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i1_2_lut_3_lut_adj_312 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(VAC_MOSI), .O(n20893));   // zim_main.vhd(783[11:20])
    defparam i1_2_lut_3_lut_adj_312.LUT_INIT = 16'hefef;
    SB_DFFR wdtick_flag_289 (.Q(wdtick_flag), .C(TEST_LED), .D(wdtick_flag_N_301), 
            .R(flagcntwd));   // zim_main.vhd(401[3] 412[10])
    SB_LUT4 n22267_bdd_4_lut (.I0(n22267), .I1(n21049), .I2(n21048), .I3(comm_cmd[3]), 
            .O(n22270));
    defparam n22267_bdd_4_lut.LUT_INIT = 16'haad8;
    ADC_ADS127 ADC_VAC (.\adc_state[0] (adc_state_adj_1647[0]), .n20853(n20853), 
            .cmd_rdadctmp({cmd_rdadctmp_adj_1648}), .buf_adcdata_vac({buf_adcdata_vac}), 
            .\adc_state[1] (adc_state_adj_1647[1]), .DTRIG_N_918(DTRIG_N_918_adj_1451), 
            .clk_32MHz(clk_32MHz), .n20414(n20414), .VCC_net(VCC_net), 
            .n20418(n20418), .n20420(n20420), .n20422(n20422), .n20424(n20424), 
            .n20426(n20426), .n20428(n20428), .n20464(n20464), .n20466(n20466), 
            .acadc_dtrig_v(acadc_dtrig_v), .acadc_dtrig_i(acadc_dtrig_i), 
            .iac_raw_buf_N_736(iac_raw_buf_N_736), .GND_net(VAC_MOSI), .VAC_DRDY(VAC_DRDY), 
            .n20864(n20864), .n12653(n12653), .n20396(n20396), .VAC_SCLK(VAC_SCLK), 
            .n20394(n20394), .n20496(n20496), .acadc_trig(acadc_trig), 
            .n20618(n20618), .n20616(n20616), .n20614(n20614), .n20612(n20612), 
            .n20610(n20610), .n20508(n20508), .n11(n11), .VAC_CS(VAC_CS), 
            .n20608(n20608), .n20606(n20606), .n20604(n20604), .n20602(n20602), 
            .n20600(n20600), .n20598(n20598), .n20596(n20596), .n20594(n20594), 
            .n20592(n20592), .n20590(n20590), .n20588(n20588), .n20586(n20586), 
            .n20584(n20584), .n20582(n20582), .n20580(n20580), .n20578(n20578));   // zim_main.vhd(859[12:22])
    SB_LUT4 i2_2_lut_adj_313 (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14529));   // zim_main.vhd(533[4] 818[13])
    defparam i2_2_lut_adj_313.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_314 (.I0(cmd_rdadctmp_adj_1688[12]), .I1(cmd_rdadctmp_adj_1688[11]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20080));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_314.LUT_INIT = 16'h0aca;
    SB_LUT4 add_68_8_lut (.I0(VAC_MOSI), .I1(data_cntvec[6]), .I2(VAC_MOSI), 
            .I3(n19600), .O(n355)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12758_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1549), .I2(n12429), 
            .I3(VAC_MOSI), .O(n15176));   // zim_main.vhd(531[3] 819[10])
    defparam i12758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18970_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21218));
    defparam i18970_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30));   // zim_main.vhd(750[5] 805[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_LUT4 i12677_3_lut_4_lut (.I0(buf_cfgRTD[0]), .I1(\comm_buf[0] [0]), 
            .I2(n9306), .I3(n12395), .O(n15095));   // zim_main.vhd(531[3] 819[10])
    defparam i12677_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12676_3_lut_4_lut (.I0(IAC_OSR0), .I1(\comm_buf[0] [0]), .I2(n9306), 
            .I3(n12381), .O(n15094));   // zim_main.vhd(531[3] 819[10])
    defparam i12676_3_lut_4_lut.LUT_INIT = 16'h0caa;
    zim_pll pll_main (.GND_net(VAC_MOSI), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_692(DDS_MCLK1));   // zim_main.vhd(822[13:20])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19644 (.I0(comm_cmd[1]), .I1(n19_adj_1522), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22261));
    defparam comm_cmd_1__bdd_4_lut_19644.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_315 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4_adj_1600));   // zim_main.vhd(734[9:33])
    defparam i1_4_lut_adj_315.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_316 (.I0(cmd_rdadctmp_adj_1688[11]), .I1(cmd_rdadctmp_adj_1688[10]), 
            .I2(n12871), .I3(adc_state_adj_1687[3]), .O(n20078));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_316.LUT_INIT = 16'h0aca;
    DDS_AD9837_U0 CLK_DDS (.\dds_state_2__N_924[0] (dds_state_2__N_924_adj_1679[0]), 
            .dds_state({dds_state_adj_1671}), .clk_32MHz(clk_32MHz), .DDS_CS1(DDS_CS1), 
            .n20470(n20470), .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf_adj_1672[15]), 
            .trig_dds1(trig_dds1), .n15111(n15111), .DDS_MOSI1(DDS_MOSI1), 
            .n15108(n15108), .DDS_SCK1(DDS_SCK1), .buf_dds1({buf_dds1}), 
            .GND_net(VAC_MOSI), .bit_cnt({bit_cnt_adj_1673}), .n8(n8_adj_1602), 
            .\bit_cnt_3__N_972[3] (bit_cnt_3__N_972_adj_1677[3]), .\bit_cnt_3__N_972[2] (bit_cnt_3__N_972_adj_1677[2]), 
            .\bit_cnt_3__N_972[1] (bit_cnt_3__N_972_adj_1677[1]));   // zim_main.vhd(883[12:22])
    SB_LUT4 n22261_bdd_4_lut (.I0(n22261), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1521), 
            .I3(comm_cmd[2]), .O(n22264));
    defparam n22261_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_adj_317 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n4_adj_1586));
    defparam i1_4_lut_4_lut_adj_317.LUT_INIT = 16'h4fef;
    SB_LUT4 i1_2_lut_4_lut_adj_318 (.I0(comm_state[1]), .I1(comm_index[1]), 
            .I2(n4_adj_1600), .I3(comm_length[1]), .O(n20880));
    defparam i1_2_lut_4_lut_adj_318.LUT_INIT = 16'hf7fd;
    ADC_ADS127_U1 ADC_IAC (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .\adc_state[1] (adc_state[1]), .DTRIG_N_918(DTRIG_N_918), .GND_net(VAC_MOSI), 
            .IAC_DRDY(IAC_DRDY), .acadc_trig(acadc_trig), .n20858(n20858), 
            .cmd_rdadctmp({cmd_rdadctmp}), .buf_adcdata_iac({buf_adcdata_iac}), 
            .n20867(n20867), .n12498(n12498), .n20392(n20392), .IAC_SCLK(IAC_SCLK), 
            .n20390(n20390), .acadc_dtrig_i(acadc_dtrig_i), .VCC_net(VCC_net), 
            .n20500(n20500), .n11(n11_adj_1611), .IAC_CS(IAC_CS), .n20576(n20576), 
            .n20516(n20516), .n20518(n20518), .n20520(n20520), .n20522(n20522), 
            .n20524(n20524), .n20574(n20574), .n20526(n20526), .n20528(n20528), 
            .n20530(n20530), .n20532(n20532), .n20534(n20534), .n20536(n20536), 
            .n20538(n20538), .n20540(n20540), .n20542(n20542), .n20544(n20544), 
            .n20546(n20546), .n20548(n20548), .n20550(n20550), .n20552(n20552), 
            .n20554(n20554), .n20556(n20556), .n20558(n20558), .n20560(n20560), 
            .n20562(n20562), .n20564(n20564), .n20566(n20566), .n20568(n20568), 
            .n20570(n20570), .n20572(n20572));   // zim_main.vhd(845[12:22])
    DDS_AD9837 SIG_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .DDS_CS(DDS_CS), .n20468(n20468), .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf[15]), 
            .n14884(n14884), .GND_net(VAC_MOSI), .n15109(n15109), .DDS_MOSI(DDS_MOSI), 
            .n15107(n15107), .DDS_SCK(DDS_SCK), .trig_dds0(trig_dds0), 
            .buf_dds0({buf_dds0}), .bit_cnt({Open_5, Open_6, Open_7, 
            bit_cnt_adj_1669[0]}), .n15811(n15811));   // zim_main.vhd(873[12:22])
    SB_CARRY add_68_8 (.CI(n19600), .I0(data_cntvec[6]), .I1(VAC_MOSI), 
            .CO(n19601));
    SB_LUT4 i2_3_lut_adj_319 (.I0(comm_index[1]), .I1(n4_adj_1600), .I2(comm_length[1]), 
            .I3(VAC_MOSI), .O(n5));   // zim_main.vhd(734[9:33])
    defparam i2_3_lut_adj_319.LUT_INIT = 16'hdede;
    SB_LUT4 i12675_3_lut_4_lut (.I0(buf_dds0[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9306), .I3(n12367), .O(n15093));   // zim_main.vhd(531[3] 819[10])
    defparam i12675_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12674_3_lut_4_lut (.I0(buf_control[0]), .I1(\comm_buf[0] [0]), 
            .I2(n9306), .I3(n11915), .O(n15092));   // zim_main.vhd(531[3] 819[10])
    defparam i12674_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i15107_2_lut_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(CONT_SD));   // zim_main.vhd(378[13:59])
    defparam i15107_2_lut_2_lut.LUT_INIT = 16'h2222;
    SB_DFF SecClk_292 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_691));   // zim_main.vhd(417[3] 423[10])
    SB_LUT4 i19308_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(VAC_MOSI), .O(n21546));   // zim_main.vhd(783[11:20])
    defparam i19308_2_lut_3_lut.LUT_INIT = 16'h1010;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_data_vld, clk_32MHz, comm_clear, GND_net, comm_rx_buf, 
            ICE_SPI_SCLK, VCC_net, ICE_SPI_MOSI, comm_tx_buf, ICE_SPI_MISO);
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input GND_net;
    output [7:0]comm_rx_buf;
    input ICE_SPI_SCLK;
    input VCC_net;
    input ICE_SPI_MOSI;
    input [7:0]comm_tx_buf;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    
    wire DATA_VLD_N_798;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n14607, data_tx_7__N_766, n22863, imosi, imiso, n14605, 
        data_tx_7__N_774;
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire n17036, DOUT_7__N_738, DOUT_7__N_740;
    wire [3:0]n21;
    
    wire n22860, n14615, n14614, n14608, n14603, DOUT_7__N_741, 
        DOUT_7__N_742, DOUT_7__N_743, n14610, DOUT_7__N_745, DOUT_7__N_744, 
        n14592, data_tx_7__N_773, n14604, n14601, imosi_N_753, n14600, 
        imosi_N_752, n14597, iclk_N_763, n14596, iclk_N_762, data_tx_7__N_795, 
        n22857, data_tx_7__N_780, data_tx_7__N_768, n14593, n22872, 
        n14611, n22884, n22881, n22878, n22875, data_tx_7__N_786, 
        data_tx_7__N_770, data_tx_7__N_789, data_tx_7__N_771, data_tx_7__N_792, 
        data_tx_7__N_783, data_tx_7__N_772, data_tx_7__N_769, n14619, 
        n14618, n14623, n14622, n14627, n14626, n14631, n14630, 
        data_tx_7__N_767, data_tx_7__N_777, n14635, n14634, n22869, 
        n14639, n14638, n22866, DOUT_7__N_747, DOUT_7__N_746;
    
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_798), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_DFFS data_tx_i7_12189_12190_set (.Q(n14607), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_766));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i19435_4_lut_3_lut (.I0(n22863), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n22863));   // spi_slave.vhd(70[3] 80[10])
    defparam i19435_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR MISO_48_12186_12187_reset (.Q(n14605), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_774));   // spi_slave.vhd(60[3] 64[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_738));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_41 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_740));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_41.LUT_INIT = 16'he0e0;
    SB_DFFNR bit_cnt_3767__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i19415_4_lut_3_lut (.I0(n22860), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n22860));   // spi_slave.vhd(47[3] 55[10])
    defparam i19415_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12198_3_lut (.I0(n14615), .I1(n14614), .I2(n22863), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12191_3_lut (.I0(n14608), .I1(n14607), .I2(n14603), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12191_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_42 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_741));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_42.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_43 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_742));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_43.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_44 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_743));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_44.LUT_INIT = 16'he0e0;
    SB_DFFNS imiso_83_12192_12193_set (.Q(n14610), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_766));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_745), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_744), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_743), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_742), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_741), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_740), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_738), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i0_12174_12175_set (.Q(n14592), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_773));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNS MISO_48_12186_12187_set (.Q(n14604), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_766));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_12182_12183_reset (.Q(n14601), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_753));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS imosi_44_12182_12183_set (.Q(n14600), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_752));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFR iclk_40_12178_12179_reset (.Q(n14597), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_763));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 i1_2_lut_3_lut_adj_45 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_744));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_45.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_46 (.I0(bit_cnt[3]), .I1(n17036), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_745));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_46.LUT_INIT = 16'he0e0;
    SB_DFFS iclk_40_12178_12179_set (.Q(n14596), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_762));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_795));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19460_4_lut_3_lut (.I0(n22857), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22857));   // spi_slave.vhd(70[3] 80[10])
    defparam i19460_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19425_4_lut_3_lut (.I0(n14603), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14603));   // spi_slave.vhd(60[3] 64[10])
    defparam i19425_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR bit_cnt_3767__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_780));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_768));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17155_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17155_2_lut.LUT_INIT = 16'h6666;
    SB_DFFR data_tx_i0_12174_12175_reset (.Q(n14593), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_795));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i17153_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17153_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i19450_4_lut_3_lut (.I0(n22872), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22872));   // spi_slave.vhd(70[3] 80[10])
    defparam i19450_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_774));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12194_3_lut (.I0(n14611), .I1(n14610), .I2(n14603), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i12194_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19465_4_lut_3_lut (.I0(n22884), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n22884));   // spi_slave.vhd(70[3] 80[10])
    defparam i19465_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19430_4_lut_3_lut (.I0(n22881), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22881));   // spi_slave.vhd(70[3] 80[10])
    defparam i19430_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19440_4_lut_3_lut (.I0(n22878), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22878));   // spi_slave.vhd(70[3] 80[10])
    defparam i19440_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19445_4_lut_3_lut (.I0(n22875), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22875));   // spi_slave.vhd(70[3] 80[10])
    defparam i19445_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_770));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_789));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_771));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_792));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_783));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12176_3_lut (.I0(n14593), .I1(n14592), .I2(n22884), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12176_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12202_3_lut (.I0(n14619), .I1(n14618), .I2(n22881), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12202_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12206_3_lut (.I0(n14623), .I1(n14622), .I2(n22878), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12206_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12210_3_lut (.I0(n14627), .I1(n14626), .I2(n22875), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12210_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12214_3_lut (.I0(n14631), .I1(n14630), .I2(n22872), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_767));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_762));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12188_3_lut (.I0(n14605), .I1(n14604), .I2(n14603), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i12188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_777));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12218_3_lut (.I0(n14635), .I1(n14634), .I2(n22869), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12218_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_766));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12180_3_lut (.I0(n14597), .I1(n14596), .I2(n22860), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i12180_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12222_3_lut (.I0(n14639), .I1(n14638), .I2(n22857), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12222_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n17036));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17036), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_798));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19455_4_lut_3_lut (.I0(n22869), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22869));   // spi_slave.vhd(70[3] 80[10])
    defparam i19455_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12184_3_lut (.I0(n14601), .I1(n14600), .I2(n22866), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i12184_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_747));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_746));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17169_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17169_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i17162_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17162_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i19420_4_lut_3_lut (.I0(n22866), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n22866));   // spi_slave.vhd(47[3] 55[10])
    defparam i19420_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_763));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_752));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_753));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_773));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i6_12220_12221_reset (.Q(n14639), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_777));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i6_12220_12221_set (.Q(n14638), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_767));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i5_12216_12217_reset (.Q(n14635), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_780));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_12216_12217_set (.Q(n14634), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_768));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i4_12212_12213_reset (.Q(n14631), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_783));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i4_12212_12213_set (.Q(n14630), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i3_12208_12209_reset (.Q(n14627), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i3_12208_12209_set (.Q(n14626), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_770));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_12204_12205_reset (.Q(n14623), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_789));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i2_12204_12205_set (.Q(n14622), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_771));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i1_12200_12201_reset (.Q(n14619), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_792));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i1_12200_12201_set (.Q(n14618), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_12196_12197_reset (.Q(n14615), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_747));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_12196_12197_set (.Q(n14614), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_746));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR imiso_83_12192_12193_reset (.Q(n14611), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_774));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_tx_i7_12189_12190_reset (.Q(n14608), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_774));   // spi_slave.vhd(70[3] 80[10])
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (adc_state, RTD_CS, clk_RTD, RTD_SCLK, GND_net, 
            buf_readRTD, read_buf, n11714, n13293, n1, n18755, buf_cfgRTD, 
            n13176, n14479, RTD_DRDY, n19940, VCC_net, \adress[1] , 
            n19942, \adress[2] , n19944, \adress[3] , n19946, \adress[4] , 
            n19948, \adress[5] , n19950, \adress[6] , n15333, \cfg_buf[1] , 
            n20244, \cfg_buf[0] , n20248, n20252, n20256, n20260, 
            n20264, n20268, n20272, n20276, n20280, n20284, n20288, 
            n20292, n20296, n20298, n20300, n20302, n20304, n20306, 
            n20308, n20310, n20312, n20314, n20316, n20318, n20320, 
            n20322, n20324, n15792, n20354, n20356, n13165, RTD_SDI, 
            \adress[0] );
    output [3:0]adc_state;
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    input GND_net;
    output [15:0]buf_readRTD;
    output [15:0]read_buf;
    output n11714;
    output n13293;
    output n1;
    output n18755;
    input [7:0]buf_cfgRTD;
    output n13176;
    output n14479;
    input RTD_DRDY;
    input n19940;
    input VCC_net;
    output \adress[1] ;
    input n19942;
    output \adress[2] ;
    input n19944;
    output \adress[3] ;
    input n19946;
    output \adress[4] ;
    input n19948;
    output \adress[5] ;
    input n19950;
    output \adress[6] ;
    input n15333;
    output \cfg_buf[1] ;
    input n20244;
    output \cfg_buf[0] ;
    input n20248;
    input n20252;
    input n20256;
    input n20260;
    input n20264;
    input n20268;
    input n20272;
    input n20276;
    input n20280;
    input n20284;
    input n20288;
    input n20292;
    input n20296;
    input n20298;
    input n20300;
    input n20302;
    input n20304;
    input n20306;
    input n20308;
    input n20310;
    input n20312;
    input n20314;
    input n20316;
    input n20318;
    input n20320;
    input n20322;
    input n20324;
    input n15792;
    input n20354;
    input n20356;
    output n13165;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(266[9:16])
    wire [3:0]adc_state_c;   // adc_max31865.vhd(24[8:17])
    
    wire n20160, CS_N_1384, n11687, SCLK_N_1383, n8;
    wire [3:0]adc_state_3__N_1291;
    
    wire n11726, n17799, n4, mode;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    
    wire n11, n32, n6, n21555, n1_c;
    wire [7:0]adress_7__N_1339;
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    
    wire n3, n7318, n11_adj_1403, n19787, n20787, n16638, n21362, 
        n20330, n17835, n7, n20328;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n15315, n15318, n15321, n15324, n15327, n15330, n21, 
        n16, n19976, n12, n10, n11_adj_1405, n9, n11740, n15065, 
        n14;
    wire [3:0]n2;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7_adj_1406, n16664, n7_adj_1407, n11704, n14999, n7_adj_1408, 
        n7_adj_1409, n7_adj_1410, n7_adj_1411, n7_adj_1412, n7_adj_1413, 
        n3_adj_1414, n19, n20832, n11718;
    
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(adc_state[2]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adc_state_c[3]), .O(n20160));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11687), .D(CS_N_1384));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1383));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(clk_RTD), .E(n11726), 
            .D(adc_state_3__N_1291[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state_c[1]), .C(clk_RTD), .E(n11726), 
            .D(adc_state_3__N_1291[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_RTD), .E(n11726), .D(adc_state_3__N_1291[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state_c[3]), .C(clk_RTD), .E(n11726), 
            .D(adc_state_3__N_1291[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut (.I0(n17799), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n4));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i22_4_lut (.I0(mode), .I1(adc_state_c[0]), .I2(adc_state[2]), 
            .I3(bit_cnt[3]), .O(n11));
    defparam i22_4_lut.LUT_INIT = 16'h0034;
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n11), .I1(adc_state[2]), 
            .I2(adc_state_c[3]), .I3(n4), .O(adc_state_3__N_1291[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i19313_4_lut (.I0(n32), .I1(n6), .I2(mode), .I3(adc_state_c[3]), 
            .O(n21555));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19313_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i21_4_lut (.I0(n21555), .I1(adc_state_c[3]), .I2(adc_state[2]), 
            .I3(n1_c), .O(adc_state_3__N_1291[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i21_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut_adj_23 (.I0(bit_cnt[3]), .I1(n17799), .I2(GND_net), 
            .I3(GND_net), .O(n32));   // adc_max31865.vhd(125[17:24])
    defparam i1_2_lut_adj_23.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_4_lut (.I0(adress_7__N_1339[7]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adress[7]), .O(n3));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf707;
    SB_LUT4 i1_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[3]), .I2(n7318), 
            .I3(n11_adj_1403), .O(adc_state_3__N_1291[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_4_lut.LUT_INIT = 16'h3b0a;
    SB_LUT4 i17182_3_lut (.I0(adc_state_c[1]), .I1(bit_cnt[3]), .I2(n17799), 
            .I3(GND_net), .O(n19787));   // adc_max31865.vhd(39[4] 147[13])
    defparam i17182_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17799));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_3_lut_adj_24 (.I0(n20787), .I1(adc_state_c[0]), .I2(n16638), 
            .I3(GND_net), .O(n11726));
    defparam i2_3_lut_adj_24.LUT_INIT = 16'hfbfb;
    SB_LUT4 i19242_3_lut (.I0(bit_cnt[3]), .I1(n17799), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n21362));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19242_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11714), 
            .I3(adc_state[2]), .O(n20330));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i14_4_lut (.I0(n21362), .I1(n1_c), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n17835));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i14_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i7_4_lut (.I0(n19787), .I1(adc_state_c[0]), 
            .I2(adc_state[2]), .I3(mode), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i7_4_lut.LUT_INIT = 16'h1b13;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i15_3_lut (.I0(n7), .I1(n17835), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(adc_state_3__N_1291[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12_4_lut_adj_25 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13293), 
            .I3(n1), .O(n20328));
    defparam i12_4_lut_adj_25.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_3_lut_adj_26 (.I0(adc_state[2]), .I1(adc_state_c[0]), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut_adj_26.LUT_INIT = 16'h4040;
    SB_LUT4 i1_4_lut_adj_27 (.I0(n18755), .I1(cfg_buf[7]), .I2(buf_cfgRTD[7]), 
            .I3(n13176), .O(n15315));
    defparam i1_4_lut_adj_27.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_28 (.I0(n18755), .I1(cfg_buf[6]), .I2(buf_cfgRTD[6]), 
            .I3(n13176), .O(n15318));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_29 (.I0(n18755), .I1(cfg_buf[5]), .I2(buf_cfgRTD[5]), 
            .I3(n13176), .O(n15321));
    defparam i1_4_lut_adj_29.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_30 (.I0(n18755), .I1(cfg_buf[4]), .I2(buf_cfgRTD[4]), 
            .I3(n13176), .O(n15324));
    defparam i1_4_lut_adj_30.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_31 (.I0(adc_state_c[1]), .I1(adc_state_c[0]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_adj_31.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_32 (.I0(n18755), .I1(cfg_buf[3]), .I2(buf_cfgRTD[3]), 
            .I3(n13176), .O(n15327));
    defparam i1_4_lut_adj_32.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n18755), .I1(cfg_buf[2]), .I2(buf_cfgRTD[2]), 
            .I3(n13176), .O(n15330));
    defparam i1_4_lut_adj_33.LUT_INIT = 16'ha088;
    SB_LUT4 i1_3_lut (.I0(n13176), .I1(adc_state_c[0]), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(n18755));
    defparam i1_3_lut.LUT_INIT = 16'h5d5d;
    SB_LUT4 i12067_2_lut (.I0(adc_state_c[1]), .I1(adc_state_c[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14479));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12067_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_34 (.I0(adress_7__N_1339[7]), .I1(n7318), .I2(RTD_DRDY), 
            .I3(adc_state_c[0]), .O(n21));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_34.LUT_INIT = 16'hdccc;
    SB_LUT4 i1_4_lut_adj_35 (.I0(mode), .I1(n21), .I2(adc_state[2]), .I3(adc_state_c[3]), 
            .O(n16));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_35.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_36 (.I0(n16), .I1(adress_7__N_1339[7]), .I2(n20787), 
            .I3(adc_state_c[0]), .O(n19976));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_36.LUT_INIT = 16'haeaa;
    SB_DFFE adress_i1 (.Q(\adress[1] ), .C(clk_RTD), .E(VCC_net), .D(n19940));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(\adress[2] ), .C(clk_RTD), .E(VCC_net), .D(n19942));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(\adress[3] ), .C(clk_RTD), .E(VCC_net), .D(n19944));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(\adress[4] ), .C(clk_RTD), .E(VCC_net), .D(n19946));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(\adress[5] ), .C(clk_RTD), .E(VCC_net), .D(n19948));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[3]), 
            .I2(adc_state[2]), .I3(adc_state_c[1]), .O(SCLK_N_1383));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_DFFE adress_i6 (.Q(\adress[6] ), .C(clk_RTD), .E(VCC_net), .D(n19950));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(\cfg_buf[1] ), .C(clk_RTD), .E(VCC_net), .D(n15333));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15330));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15327));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15324));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n15321));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4_4_lut (.I0(\cfg_buf[1] ), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15318));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15315));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i3_4_lut (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11_adj_1405));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n20244));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_adj_37 (.I0(\cfg_buf[0] ), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut_adj_37.LUT_INIT = 16'h7bde;
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20248));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20252));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n20256));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20260));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20264));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20268));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20272));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20328));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11_adj_1405), .I2(n10), .I3(n12), 
            .O(adress_7__N_1339[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20276));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_adj_38 (.I0(adress_7__N_1339[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16638));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_38.LUT_INIT = 16'hbbbb;
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20280));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20284));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20288));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20292));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20296));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20298));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20300));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20302));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20304));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20306));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20308));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20310));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20330));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20312));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20314));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20316));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20318));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20320));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20322));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20324));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4933_2_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n1_c));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4933_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4903_2_lut (.I0(adc_state_c[1]), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7318));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4903_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19401_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(n16638), .O(CS_N_1384));
    defparam i19401_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i19410_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[0]), .I3(adc_state[2]), .O(n11740));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19410_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state_c[1]), .I1(adc_state_c[3]), .I2(adc_state_c[0]), 
            .I3(adc_state[2]), .O(n15065));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hd806;
    SB_LUT4 i19332_3_lut_3_lut (.I0(adc_state_c[1]), .I1(adc_state[2]), 
            .I2(adc_state_c[3]), .I3(GND_net), .O(n11687));
    defparam i19332_3_lut_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i31_3_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(n14));
    defparam i31_3_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i17111_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n2[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17111_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i17118_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n2[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17118_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i14233_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(adc_state[2]), 
            .I3(adc_state_c[0]), .O(n7_adj_1406));   // adc_max31865.vhd(24[8:17])
    defparam i14233_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15335_4_lut (.I0(adress[7]), .I1(cfg_tmp[7]), .I2(adc_state_c[0]), 
            .I3(adc_state[2]), .O(n16664));
    defparam i15335_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n19976));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17102_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17102_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE cfg_buf_i0 (.Q(\cfg_buf[0] ), .C(clk_RTD), .E(VCC_net), .D(n15792));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20354));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20356));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19375_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[0]), .I3(adc_state[2]), .O(n8));
    defparam i19375_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i1_4_lut_4_lut_adj_39 (.I0(adc_state_c[0]), .I1(adc_state_c[3]), 
            .I2(adc_state_c[1]), .I3(adc_state[2]), .O(n13293));
    defparam i1_4_lut_4_lut_adj_39.LUT_INIT = 16'hc80d;
    SB_DFFESR bit_cnt_3771__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11740), 
            .D(n2[3]), .R(n15065));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3771__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11740), 
            .D(n2[2]), .R(n15065));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3771__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11740), 
            .D(n2[1]), .R(n15065));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n11704), .D(n7_adj_1407), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n11704), .D(n7_adj_1408), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n11704), .D(n7_adj_1409), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n11704), .D(n7_adj_1410), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n11704), .D(n7_adj_1411), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n11704), .D(n7_adj_1412), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n11704), .D(n7_adj_1413), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress[7]), .C(clk_RTD), .E(n13165), .D(n3_adj_1414), 
            .R(n20160));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i34_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1339[7]), 
            .I2(adc_state_c[1]), .I3(RTD_DRDY), .O(n19));
    defparam i34_4_lut_4_lut.LUT_INIT = 16'hadaf;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state_c[0]), .I1(adress_7__N_1339[7]), 
            .I2(adc_state_c[1]), .I3(GND_net), .O(n20832));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[0]), .I2(adc_state_c[1]), 
            .I3(adc_state[2]), .O(n11718));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'hed10;
    SB_LUT4 i1_4_lut_4_lut_adj_40 (.I0(adc_state_c[3]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[0]), .I3(adc_state[2]), .O(n11714));
    defparam i1_4_lut_4_lut_adj_40.LUT_INIT = 16'ha880;
    SB_LUT4 i22_4_lut_4_lut (.I0(adc_state[2]), .I1(n1_c), .I2(adc_state_c[3]), 
            .I3(n20832), .O(n13176));   // adc_max31865.vhd(38[3] 148[10])
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i35_4_lut_4_lut (.I0(adc_state[2]), .I1(n1_c), .I2(adc_state_c[3]), 
            .I3(n19), .O(n13165));   // adc_max31865.vhd(38[3] 148[10])
    defparam i35_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1339[7]), 
            .I1(\adress[6] ), .I2(adc_state_c[1]), .I3(adc_state_c[0]), 
            .O(n3_adj_1414));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1413));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1412));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1411));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1410));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1409));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFESR bit_cnt_3771__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11740), 
            .D(n2[0]), .R(n15065));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11718), .D(n16664), 
            .R(n20160));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n11704), .D(n7_adj_1406), 
            .R(n14999));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1408));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13165), .D(n3), 
            .R(n20160));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12586_2_lut (.I0(n11704), .I1(adc_state_c[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14999));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12586_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i30_4_lut (.I0(n20832), .I1(n14), .I2(adc_state[2]), .I3(adc_state_c[3]), 
            .O(n11704));
    defparam i30_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1407));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i17104_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17104_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_2_lut_3_lut (.I0(adc_state_c[3]), .I1(adc_state_c[1]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20787));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i24_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(adc_state[2]), 
            .I3(n32), .O(n11_adj_1403));   // adc_max31865.vhd(39[4] 147[13])
    defparam i24_4_lut_4_lut.LUT_INIT = 16'hf4b4;
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (\adc_state[2] , GND_net, \adc_state_3__N_1130[0] , 
            \adc_state[3] , VCC_net, \cmd_rdadcbuf[34] , n20058, cmd_rdadctmp, 
            VDC_CLK, n20060, n20062, \cmd_rdadcbuf[33] , n20064, n20066, 
            n20068, n20070, n20072, n20074, n20076, n20078, n20080, 
            n20082, n20084, n20086, n20088, n20090, \cmd_rdadcbuf[32] , 
            n20092, n20094, n20096, n20098, n20100, n20188, buf_adcdata_vdc, 
            n20190, n20192, n20202, n20204, \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , 
            \cmd_rdadcbuf[29] , n20206, n20208, n20210, n20212, n20214, 
            n20216, n20218, n20220, n20222, n20224, n20226, n20228, 
            n20230, n20232, n20234, \cmd_rdadcbuf[28] , n20236, n20238, 
            VDC_SCLK, n20240, \cmd_rdadcbuf[27] , \cmd_rdadcbuf[26] , 
            \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , \cmd_rdadcbuf[23] , 
            \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , \cmd_rdadcbuf[20] , 
            \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , \cmd_rdadcbuf[17] , 
            \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , \cmd_rdadcbuf[14] , 
            \cmd_rdadcbuf[13] , \cmd_rdadcbuf[12] , \cmd_rdadcbuf[11] , 
            \cmd_rdadctmp[0] , \buf_adcdata_vac[23] , \comm_cmd[0] , n19, 
            n20132, n20350, n12871, n13087, clk_16MHz);
    output \adc_state[2] ;
    input GND_net;
    input \adc_state_3__N_1130[0] ;
    output \adc_state[3] ;
    input VCC_net;
    output \cmd_rdadcbuf[34] ;
    input n20058;
    output [23:0]cmd_rdadctmp;
    output VDC_CLK;
    input n20060;
    input n20062;
    output \cmd_rdadcbuf[33] ;
    input n20064;
    input n20066;
    input n20068;
    input n20070;
    input n20072;
    input n20074;
    input n20076;
    input n20078;
    input n20080;
    input n20082;
    input n20084;
    input n20086;
    input n20088;
    input n20090;
    output \cmd_rdadcbuf[32] ;
    input n20092;
    input n20094;
    input n20096;
    input n20098;
    input n20100;
    input n20188;
    output [23:0]buf_adcdata_vdc;
    input n20190;
    input n20192;
    input n20202;
    input n20204;
    output \cmd_rdadcbuf[31] ;
    output \cmd_rdadcbuf[30] ;
    output \cmd_rdadcbuf[29] ;
    input n20206;
    input n20208;
    input n20210;
    input n20212;
    input n20214;
    input n20216;
    input n20218;
    input n20220;
    input n20222;
    input n20224;
    input n20226;
    input n20228;
    input n20230;
    input n20232;
    input n20234;
    output \cmd_rdadcbuf[28] ;
    input n20236;
    input n20238;
    output VDC_SCLK;
    input n20240;
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
    input \buf_adcdata_vac[23] ;
    input \comm_cmd[0] ;
    output n19;
    input n20132;
    input n20350;
    output n12871;
    output n13087;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n7, n62, n17509, n11, n18550, n19699;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19700;
    wire [11:0]avg_cnt_11__N_1174;
    
    wire n19698, n11750;
    wire [35:0]cmd_rdadcbuf_35__N_1138;
    
    wire n19696;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n11265, n19695, n19694;
    wire [3:0]adc_state_3__N_1006;
    
    wire n20811, n12807;
    wire [35:0]cmd_rdadcbuf_35__N_1054;
    
    wire n13034, n19693, n19692, n19691, n19690, n21952, n11676, 
        n15798, n19689, n19688;
    wire [7:0]n37;
    
    wire n19778, n19777, n19687, n19776, n18563, n21384, n6, n15, 
        n7_adj_1398, n20899, n77, n19686, n19775, n19774;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n19685, n19773, n21323, n19684, n19772, n20784, n21320, 
        n19683, n10119, n20, n19682, n19681, n19680, n19679, n19678, 
        n19677, n19676, n19_c, n21, n10, n19675, n19674, n19673;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19672, n19671, n19670, n20812, n19669, n21229, n19668, 
        n19667, n20965, n19666, n31, n19665, n18566, n19664, n19663, 
        n22198, n6_adj_1399, n10536, n12, n72, n20996, n47, n22195, 
        n13010, n19_adj_1401, n19708, n19707, n14915, n6_adj_1402, 
        n12899, n20656, n17, n4, n19706, n19705, n19704, n19703, 
        n19702, n19701;
    
    SB_LUT4 i12069_2_lut_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i12069_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_2_lut (.I0(adc_state[0]), .I1(\adc_state_3__N_1130[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n62));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15111_2_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n17509));
    defparam i15111_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i24_4_lut (.I0(n62), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n11));   // adc_ads1252u.vhd(31[8:17])
    defparam i24_4_lut.LUT_INIT = 16'hf03a;
    SB_LUT4 i1_4_lut (.I0(\adc_state[3] ), .I1(n11), .I2(adc_state[0]), 
            .I3(n17509), .O(n18550));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut.LUT_INIT = 16'hcc8c;
    SB_CARRY add_24_4 (.CI(n19699), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19700));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19698), .O(avg_cnt_11__N_1174[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16159_4_lut (.I0(n62), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(adc_state[1]), .O(n11750));   // adc_ads1252u.vhd(31[8:17])
    defparam i16159_4_lut.LUT_INIT = 16'hc2ce;
    SB_CARRY add_24_3 (.CI(n19698), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19699));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1174[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19698));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19696), .O(cmd_rdadcbuf_35__N_1138[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[6]), .I2(bit_cnt[7]), 
            .I3(bit_cnt[5]), .O(n11265));   // adc_ads1252u.vhd(89[8:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20058));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20060));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20062));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19695), .O(cmd_rdadcbuf_35__N_1138[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20064));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20066));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20068));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20070));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20072));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20074));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20076));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20078));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20080));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20082));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20084));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20086));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20088));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_35 (.CI(n19695), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19696));
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20090));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19694), .O(cmd_rdadcbuf_35__N_1138[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20092));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20094));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_34 (.CI(n19694), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19695));
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(VDC_CLK), .E(n20811), .D(adc_state_3__N_1006[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20096));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20098));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n12807), 
            .D(adc_state_3__N_1006[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13034), 
            .D(cmd_rdadcbuf_35__N_1054[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20100));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20188));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20190));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20192));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20202));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20204));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19693), .O(cmd_rdadcbuf_35__N_1138[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19693), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19694));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19692), .O(cmd_rdadcbuf_35__N_1138[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19692), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19693));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19691), .O(cmd_rdadcbuf_35__N_1138[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19691), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19692));
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20206));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20208));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20210));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20212));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20214));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20216));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20218));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20220));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20222));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20224));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20226));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20228));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20230));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20232));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20234));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19690), .O(cmd_rdadcbuf_35__N_1138[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19342_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21952));   // adc_ads1252u.vhd(31[8:17])
    defparam i19342_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20236));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20238));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i16166_4_lut (.I0(n11676), .I1(adc_state[1]), .I2(VDC_SCLK), 
            .I3(n21952), .O(n15798));   // adc_ads1252u.vhd(31[8:17])
    defparam i16166_4_lut.LUT_INIT = 16'h7250;
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20240));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_30 (.CI(n19690), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19691));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19689), .O(cmd_rdadcbuf_35__N_1138[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19689), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19690));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19688), .O(cmd_rdadcbuf_35__N_1138[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3769_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19778), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19688), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19689));
    SB_LUT4 bit_cnt_3769_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19777), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_8 (.CI(n19777), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19778));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19687), .O(cmd_rdadcbuf_35__N_1138[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3769_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19776), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19290_3_lut (.I0(n18563), .I1(\adc_state[2] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n21384));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i19290_3_lut.LUT_INIT = 16'h2121;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1138[34]), 
            .I1(n21384), .I2(\adc_state[3] ), .I3(adc_state[1]), .O(cmd_rdadcbuf_35__N_1054[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_23_27 (.CI(n19687), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19688));
    SB_LUT4 i1_2_lut_adj_9 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_ads1252u.vhd(72[8:24])
    defparam i1_2_lut_adj_9.LUT_INIT = 16'hdddd;
    SB_CARRY bit_cnt_3769_add_4_7 (.CI(n19776), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19777));
    SB_LUT4 i4_4_lut (.I0(n11265), .I1(bit_cnt[4]), .I2(bit_cnt[0]), .I3(n6), 
            .O(n15));   // adc_ads1252u.vhd(72[8:24])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i2_2_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7_adj_1398));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_10 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n20899));
    defparam i1_2_lut_adj_10.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_11 (.I0(\adc_state_3__N_1130[0] ), .I1(n7_adj_1398), 
            .I2(GND_net), .I3(GND_net), .O(n77));
    defparam i1_2_lut_adj_11.LUT_INIT = 16'h8888;
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19686), .O(cmd_rdadcbuf_35__N_1138[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3769_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19775), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19686), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19687));
    SB_CARRY bit_cnt_3769_add_4_6 (.CI(n19775), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19776));
    SB_LUT4 bit_cnt_3769_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19774), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19685), .O(cmd_rdadcbuf_35__N_1138[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19685), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19686));
    SB_CARRY bit_cnt_3769_add_4_5 (.CI(n19774), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19775));
    SB_LUT4 bit_cnt_3769_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19773), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19327_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21323));
    defparam i19327_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19684), .O(cmd_rdadcbuf_35__N_1138[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_4 (.CI(n19773), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19774));
    SB_LUT4 bit_cnt_3769_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19772), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_3 (.CI(n19772), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19773));
    SB_CARRY add_23_24 (.CI(n19684), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19685));
    SB_LUT4 i19100_4_lut (.I0(n21323), .I1(adc_state[0]), .I2(n20784), 
            .I3(bit_cnt[4]), .O(n21320));
    defparam i19100_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19683), .O(cmd_rdadcbuf_35__N_1138[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(n10119), 
            .I3(n77), .O(n12807));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdcfe;
    SB_LUT4 bit_cnt_3769_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19772));
    SB_CARRY add_23_23 (.CI(n19683), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19684));
    SB_LUT4 i8_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[7]), .I2(avg_cnt[4]), 
            .I3(avg_cnt[3]), .O(n20));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19682), .O(cmd_rdadcbuf_35__N_1138[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19682), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19683));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19681), .O(cmd_rdadcbuf_35__N_1138[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19681), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19682));
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19680), .O(cmd_rdadcbuf_35__N_1138[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_20 (.CI(n19680), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19681));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19679), .O(cmd_rdadcbuf_35__N_1138[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19679), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19680));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19678), .O(cmd_rdadcbuf_35__N_1138[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19678), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19679));
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19677), .O(cmd_rdadcbuf_35__N_1138[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19677), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19678));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19676), .O(cmd_rdadcbuf_35__N_1138[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[0]), .I2(avg_cnt[9]), 
            .I3(avg_cnt[8]), .O(n19_c));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_23_16 (.CI(n19676), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19677));
    SB_LUT4 i9_4_lut (.I0(avg_cnt[6]), .I1(avg_cnt[2]), .I2(avg_cnt[11]), 
            .I3(avg_cnt[1]), .O(n21));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i9_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19_c), .I2(n20), .I3(GND_net), 
            .O(n18563));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i4_4_lut_adj_12 (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(bit_cnt[5]), .O(n10));
    defparam i4_4_lut_adj_12.LUT_INIT = 16'h0008;
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19675), .O(cmd_rdadcbuf_35__N_1138[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19675), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19676));
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19674), .O(cmd_rdadcbuf_35__N_1138[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n19674), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19675));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19673), .O(cmd_rdadcbuf_35__N_1138[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19673), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19674));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19672), .O(cmd_rdadcbuf_35__N_1138[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19672), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19673));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19671), .O(cmd_rdadcbuf_35__N_1138[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n19671), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19672));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19670), .O(cmd_rdadcbuf_35__N_1138[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_3_lut (.I0(bit_cnt[6]), .I1(n10), .I2(bit_cnt[7]), .I3(GND_net), 
            .O(n20812));
    defparam i5_3_lut.LUT_INIT = 16'h0404;
    SB_CARRY add_23_10 (.CI(n19670), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19671));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19669), .O(cmd_rdadcbuf_35__N_1138[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18983_4_lut (.I0(bit_cnt[4]), .I1(\adc_state[3] ), .I2(bit_cnt[3]), 
            .I3(n20812), .O(n21229));
    defparam i18983_4_lut.LUT_INIT = 16'h0100;
    SB_CARRY add_23_9 (.CI(n19669), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19670));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19668), .O(cmd_rdadcbuf_35__N_1138[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_8 (.CI(n19668), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19669));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19667), .O(cmd_rdadcbuf_35__N_1138[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19667), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19668));
    SB_LUT4 i18357_2_lut (.I0(\adc_state_3__N_1130[0] ), .I1(adc_state[1]), 
            .I2(GND_net), .I3(GND_net), .O(n20965));
    defparam i18357_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19666), .O(cmd_rdadcbuf_35__N_1138[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19666), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19667));
    SB_LUT4 i37_4_lut (.I0(\adc_state_3__N_1130[0] ), .I1(adc_state[0]), 
            .I2(n21229), .I3(adc_state[1]), .O(n31));
    defparam i37_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19665), .O(cmd_rdadcbuf_35__N_1138[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_13 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(n31), 
            .I3(n20965), .O(n20811));
    defparam i1_4_lut_adj_13.LUT_INIT = 16'hfafe;
    SB_LUT4 i16137_3_lut (.I0(n18563), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n18566));   // adc_ads1252u.vhd(31[8:17])
    defparam i16137_3_lut.LUT_INIT = 16'h3e3e;
    SB_CARRY add_23_5 (.CI(n19665), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19666));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19664), .O(cmd_rdadcbuf_35__N_1138[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19664), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19665));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19663), .O(cmd_rdadcbuf_35__N_1138[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19663), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19664));
    SB_LUT4 i16139_4_lut (.I0(n22198), .I1(n18566), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1006[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16139_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1138[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n19663));
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20784));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_14 (.I0(bit_cnt[0]), .I1(n11265), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1399));
    defparam i1_2_lut_adj_14.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_15 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6_adj_1399), .O(n10536));
    defparam i4_4_lut_adj_15.LUT_INIT = 16'hffbf;
    SB_LUT4 i16192_3_lut (.I0(\buf_adcdata_vac[23] ), .I1(buf_adcdata_vdc[23]), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n19));   // zim_main.vhd(245[9:17])
    defparam i16192_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20132));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i16150_3_lut (.I0(\adc_state_3__N_1130[0] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n12));   // adc_ads1252u.vhd(31[8:17])
    defparam i16150_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i1_4_lut_adj_16 (.I0(\adc_state[2] ), .I1(n12), .I2(n77), 
            .I3(\adc_state[3] ), .O(n72));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hafee;
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20350));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i18386_2_lut (.I0(n15), .I1(adc_state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n20996));
    defparam i18386_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n15798));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i1_4_lut_adj_17 (.I0(n20996), .I1(n72), .I2(adc_state[1]), 
            .I3(n20899), .O(n47));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_17.LUT_INIT = 16'hcc4c;
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10536), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n22195));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 i19333_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n11676));
    defparam i19333_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 n22195_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21320), .I3(n22195), .O(n22198));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam n22195_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13010));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hf840;
    SB_LUT4 i1_4_lut_4_lut_adj_18 (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1130[0] ), .O(adc_state_3__N_1006[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_adj_18.LUT_INIT = 16'h1514;
    SB_LUT4 i40_3_lut_4_lut (.I0(\adc_state_3__N_1130[0] ), .I1(n15), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n19_adj_1401));
    defparam i40_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_LUT4 i7704_3_lut_4_lut (.I0(\adc_state_3__N_1130[0] ), .I1(n15), 
            .I2(adc_state[1]), .I3(adc_state[0]), .O(n10119));
    defparam i7704_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19708), .O(avg_cnt_11__N_1174[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19707), .O(avg_cnt_11__N_1174[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_cnt_3769__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11750), 
            .D(n37[7]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11750), 
            .D(n37[6]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11750), 
            .D(n37[5]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11750), 
            .D(n37[4]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11750), 
            .D(n37[3]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11750), 
            .D(n37[2]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11750), 
            .D(n37[1]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_CARRY add_24_12 (.CI(n19707), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19708));
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[11]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[10]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[9]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[8]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[7]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[6]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[5]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[4]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[3]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[2]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[1]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[33]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[32]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[31]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[30]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[29]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[28]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[27]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[26]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[25]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[24]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[23]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[22]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[21]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[20]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[19]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[18]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[17]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[16]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[15]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[14]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[13]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[12]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[11]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[10]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[9]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[8]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[7]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[6]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[5]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[4]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[3]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[2]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[1]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n12899), 
            .D(n6_adj_1402), .R(n20656));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n17), 
            .D(n7), .R(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i19412_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1130[0] ), 
            .I2(n7_adj_1398), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i19412_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 i19363_4_lut (.I0(\adc_state[2] ), .I1(n19_adj_1401), .I2(n77), 
            .I3(\adc_state[3] ), .O(n17));
    defparam i19363_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19706), .O(avg_cnt_11__N_1174[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n12871));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf200;
    SB_LUT4 i1_2_lut_adj_19 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n20656));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut_adj_19.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_4_lut_adj_20 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[2] ), .I3(\adc_state[3] ), .O(n13087));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_4_lut_adj_20.LUT_INIT = 16'hf200;
    SB_CARRY add_24_11 (.CI(n19706), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19707));
    SB_LUT4 i1_4_lut_adj_21 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n12899));
    defparam i1_4_lut_adj_21.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state[1]), .I3(n10536), .O(n6_adj_1402));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i12541_2_lut (.I0(n13010), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12541_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19705), .O(avg_cnt_11__N_1174[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19705), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19706));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19704), .O(avg_cnt_11__N_1174[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_3_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n13034));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'he4c4;
    SB_CARRY add_24_9 (.CI(n19704), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19705));
    SB_DFFESR bit_cnt_3769__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11750), 
            .D(n37[0]), .R(n18550));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19703), .O(avg_cnt_11__N_1174[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19703), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19704));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19702), .O(avg_cnt_11__N_1174[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13010), .D(avg_cnt_11__N_1174[0]), 
            .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13010), 
            .D(cmd_rdadcbuf_35__N_1138[0]), .R(n14915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n47), .D(adc_state_3__N_1006[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_24_7 (.CI(n19702), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19703));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19701), .O(avg_cnt_11__N_1174[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19701), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19702));
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_22 (.I0(\adc_state[2] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(adc_state_3__N_1006[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_4_lut_adj_22.LUT_INIT = 16'h1580;
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19700), .O(avg_cnt_11__N_1174[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19700), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19701));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19699), .O(avg_cnt_11__N_1174[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    vdc_gen_clk genclk (.clk_16MHz(clk_16MHz), .GND_net(GND_net), .VDC_CLK(VDC_CLK), 
            .VCC_net(VCC_net));   // adc_ads1252u.vhd(136[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (clk_16MHz, GND_net, VDC_CLK, VCC_net);
    input clk_16MHz;
    input GND_net;
    output VDC_CLK;
    input VCC_net;
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n26, n27, n21446;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28, n26_adj_1395, n27_adj_1396, n21449, n28_adj_1397, n21444, 
        n21443, n2;
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire div_state_1__N_1274;
    wire [1:0]div_state_1__N_1187;
    
    wire n6;
    wire [16:0]t0on_15__N_1221;
    
    wire n19738, n19737, n19736, n19735, n19734, n19733, n19732, 
        n19731, n19730, n19729, n19728, n19727, n19726, n19725, 
        n19724;
    wire [16:0]t0off_15__N_1237;
    
    wire n19723, n19722, n19721, n19720, n15051, n19719, n19718, 
        n19717, n19716, n19715, n19714, n19713, n19712, n19711, 
        n19710, n19709, n11735;
    
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19300_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21446));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19300_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), .I3(t0on[15]), 
            .O(n28));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_6 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1395));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_6.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_7 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1396));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_7.LUT_INIT = 16'hfffe;
    SB_LUT4 i19049_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21449));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19049_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19039_4_lut (.I0(n21446), .I1(n27), .I2(n26), .I3(n28_adj_1397), 
            .O(n21444));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19039_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19183_4_lut (.I0(n21449), .I1(n27_adj_1396), .I2(n26_adj_1395), 
            .I3(n28), .O(n21443));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19183_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1274));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1274));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1187[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i11981_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1187[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i11981_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19738), .O(t0on_15__N_1221[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19737), .O(t0on_15__N_1221[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19737), .I0(t0on[14]), .I1(VCC_net), .CO(n19738));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19736), .O(t0on_15__N_1221[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19736), .I0(t0on[13]), .I1(VCC_net), .CO(n19737));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19735), .O(t0on_15__N_1221[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19735), .I0(t0on[12]), .I1(VCC_net), .CO(n19736));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19734), .O(t0on_15__N_1221[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19734), .I0(t0on[11]), .I1(VCC_net), .CO(n19735));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19733), .O(t0on_15__N_1221[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19733), .I0(t0on[10]), .I1(VCC_net), .CO(n19734));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19732), 
            .O(t0on_15__N_1221[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19732), .I0(t0on[9]), .I1(VCC_net), .CO(n19733));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19731), 
            .O(t0on_15__N_1221[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19731), .I0(t0on[8]), .I1(VCC_net), .CO(n19732));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19730), 
            .O(t0on_15__N_1221[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19730), .I0(t0on[7]), .I1(VCC_net), .CO(n19731));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19729), 
            .O(t0on_15__N_1221[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19729), .I0(t0on[6]), .I1(VCC_net), .CO(n19730));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19728), 
            .O(t0on_15__N_1221[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19728), .I0(t0on[5]), .I1(VCC_net), .CO(n19729));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19727), 
            .O(t0on_15__N_1221[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19727), .I0(t0on[4]), .I1(VCC_net), .CO(n19728));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19726), 
            .O(t0on_15__N_1221[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19726), .I0(t0on[3]), .I1(VCC_net), .CO(n19727));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19725), 
            .O(t0on_15__N_1221[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19725), .I0(t0on[2]), .I1(VCC_net), .CO(n19726));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19724), 
            .O(t0on_15__N_1221[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19724), .I0(t0on[1]), .I1(VCC_net), .CO(n19725));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1221[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19724));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19723), .O(t0off_15__N_1237[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19722), .O(t0off_15__N_1237[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19722), .I0(t0off[14]), .I1(VCC_net), .CO(n19723));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19721), .O(t0off_15__N_1237[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19721), .I0(t0off[13]), .I1(VCC_net), .CO(n19722));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19720), .O(t0off_15__N_1237[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19720), .I0(t0off[12]), .I1(VCC_net), .CO(n19721));
    SB_LUT4 i12646_2_lut_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    defparam i12646_2_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19719), .O(t0off_15__N_1237[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19719), .I0(t0off[11]), .I1(VCC_net), .CO(n19720));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19718), .O(t0off_15__N_1237[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19718), .I0(t0off[10]), .I1(VCC_net), .CO(n19719));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19717), .O(t0off_15__N_1237[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19717), .I0(t0off[9]), .I1(VCC_net), .CO(n19718));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19716), .O(t0off_15__N_1237[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19716), .I0(t0off[8]), .I1(VCC_net), .CO(n19717));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19715), 
            .O(t0off_15__N_1237[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19715), .I0(t0off[7]), .I1(VCC_net), .CO(n19716));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19714), 
            .O(t0off_15__N_1237[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19714), .I0(t0off[6]), .I1(VCC_net), .CO(n19715));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19713), 
            .O(t0off_15__N_1237[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19713), .I0(t0off[5]), .I1(VCC_net), .CO(n19714));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19712), 
            .O(t0off_15__N_1237[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19712), .I0(t0off[4]), .I1(VCC_net), .CO(n19713));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19711), 
            .O(t0off_15__N_1237[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19711), .I0(t0off[3]), .I1(VCC_net), .CO(n19712));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19710), 
            .O(t0off_15__N_1237[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19710), .I0(t0off[2]), .I1(VCC_net), .CO(n19711));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19709), 
            .O(t0off_15__N_1237[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19709), .I0(t0off[1]), .I1(VCC_net), .CO(n19710));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1237[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19709));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[15]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[14]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[13]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[12]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[11]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[10]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[9]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[8]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[7]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[6]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[5]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[4]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[3]), 
            .S(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[2]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[1]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[15]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[14]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[13]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[12]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[11]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[10]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[9]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[8]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[7]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[6]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[5]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[4]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[3]), .S(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[2]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[1]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19407_2_lut_4_lut (.I0(n21443), .I1(n21444), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19407_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11735), .D(t0off_15__N_1237[0]), 
            .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1274), 
            .D(t0on_15__N_1221[0]), .R(n15051));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19386_2_lut_4_lut (.I0(n21443), .I1(n21444), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19386_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_LUT4 i19334_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11735));
    defparam i19334_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i12_4_lut_adj_8 (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28_adj_1397));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut_adj_8.LUT_INIT = 16'hfffe;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (\adc_state[0] , n20853, cmd_rdadctmp, buf_adcdata_vac, 
            \adc_state[1] , DTRIG_N_918, clk_32MHz, n20414, VCC_net, 
            n20418, n20420, n20422, n20424, n20426, n20428, n20464, 
            n20466, acadc_dtrig_v, acadc_dtrig_i, iac_raw_buf_N_736, 
            GND_net, VAC_DRDY, n20864, n12653, n20396, VAC_SCLK, 
            n20394, n20496, acadc_trig, n20618, n20616, n20614, 
            n20612, n20610, n20508, n11, VAC_CS, n20608, n20606, 
            n20604, n20602, n20600, n20598, n20596, n20594, n20592, 
            n20590, n20588, n20586, n20584, n20582, n20580, n20578);
    output \adc_state[0] ;
    input n20853;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_vac;
    output \adc_state[1] ;
    output DTRIG_N_918;
    input clk_32MHz;
    input n20414;
    input VCC_net;
    input n20418;
    input n20420;
    input n20422;
    input n20424;
    input n20426;
    input n20428;
    input n20464;
    input n20466;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_736;
    input GND_net;
    input VAC_DRDY;
    input n20864;
    output n12653;
    input n20396;
    output VAC_SCLK;
    input n20394;
    input n20496;
    input acadc_trig;
    input n20618;
    input n20616;
    input n20614;
    input n20612;
    input n20610;
    input n20508;
    input n11;
    output VAC_CS;
    input n20608;
    input n20606;
    input n20604;
    input n20602;
    input n20600;
    input n20598;
    input n20596;
    input n20594;
    input n20592;
    input n20590;
    input n20588;
    input n20586;
    input n20584;
    input n20582;
    input n20580;
    input n20578;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    
    wire n15215, n15204;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n21029, n21043, n21312;
    wire [2:0]adc_state_2__N_823;
    
    wire n20959, n15216, n15203, n15210, n15209, n15222, n12, 
        n15221, n15220, n15219, n15218, n15217, n15214, n15213, 
        n15212, n15211, n15208, n15207, n15206, n15205, n15202, 
        n15201, n15200, n15104, n20958;
    wire [7:0]n63;
    
    wire n19662, n19661, n19660, n19659, n19658, n19657, n19656, 
        n12594, n14844, n17;
    
    SB_LUT4 i12797_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15215));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12797_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12786_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15204));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12786_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i18419_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21029));
    defparam i18419_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18433_4_lut (.I0(bit_cnt[7]), .I1(n21029), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21043));
    defparam i18433_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19093_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21043), .O(n21312));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19093_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21312), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_918), .I3(\adc_state[1] ), .O(adc_state_2__N_823[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20959), 
            .D(adc_state_2__N_823[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12798_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15216));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12798_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12785_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15203));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12785_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12792_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15210));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12792_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12791_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15209));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12791_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i14441_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15222));   // adc_ads127.vhd(44[4] 88[13])
    defparam i14441_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20414));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20418));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20420));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20422));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20424));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20426));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20428));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20464));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20466));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_823[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_918), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_823[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_736));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut (.I0(VAC_DRDY), .I1(n20864), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12653));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15222));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15221));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15220));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15219));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15218));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15217));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15216));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15215));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15214));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15213));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15212));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15211));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15210));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15209));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15208));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15207));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15206));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15205));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15204));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15203));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15202));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15201));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15200));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20396));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20394));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15104));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20496));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(VAC_DRDY), 
            .I3(DTRIG_N_918), .O(n20958));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_LUT4 i1_2_lut_adj_4 (.I0(\adc_state[1] ), .I1(n20958), .I2(GND_net), 
            .I3(GND_net), .O(n20959));
    defparam i1_2_lut_adj_4.LUT_INIT = 16'hdddd;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19662), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19661), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19661), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19662));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19660), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19660), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19661));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19659), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19659), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19660));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19658), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19658), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19659));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19657), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19657), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19658));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19656), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19656), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19657));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19656));
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20618));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20616));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20614));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20612));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20610));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20508));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20608));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20606));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20604));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20602));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20600));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20598));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20596));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .D(n20594));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .D(n20592));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .D(n20590));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .D(n20588));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .D(n20586));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .D(n20584));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .D(n20582));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .D(n20580));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .D(n20578));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12594), .D(n63[7]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12594), .D(n63[6]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12594), .D(n63[5]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12594), .D(n63[4]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12594), .D(n63[3]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12594), .D(n63[2]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12594), .D(n63[1]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12431_2_lut (.I0(n12594), .I1(DTRIG_N_918), .I2(GND_net), 
            .I3(GND_net), .O(n14844));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12431_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_5 (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(DTRIG_N_918), 
            .I3(\adc_state[1] ), .O(n12594));
    defparam i1_4_lut_adj_5.LUT_INIT = 16'h0150;
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_918), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_823[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(VAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_918), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19365_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19365_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15304_3_lut (.I0(DTRIG_N_918), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_823[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15304_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i12800_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15218));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12800_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12796_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15214));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12796_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12787_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15205));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12787_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12799_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15217));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12799_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12594), .D(n63[0]), 
            .R(n14844));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12784_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15202));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12784_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12793_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15211));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12793_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12790_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15208));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12790_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12803_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15221));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12803_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12686_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15104));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12686_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12795_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15213));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12795_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12788_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15206));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12788_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12801_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15219));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12801_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12783_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15201));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12783_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12794_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15212));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12794_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12789_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15207));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12789_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12802_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15220));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12802_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12782_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20853), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15200));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12782_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_692);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_692;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_16MHz_N_692 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=822, LSE_RLINE=822 */ ;   // zim_main.vhd(822[13:20])
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
    SB_LUT4 i19883_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_692));   // zim_main.vhd(822[13:20])
    defparam i19883_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (\dds_state_2__N_924[0] , dds_state, clk_32MHz, DDS_CS1, 
            n20470, VCC_net, \tmp_buf[15] , trig_dds1, n15111, DDS_MOSI1, 
            n15108, DDS_SCK1, buf_dds1, GND_net, bit_cnt, n8, \bit_cnt_3__N_972[3] , 
            \bit_cnt_3__N_972[2] , \bit_cnt_3__N_972[1] );
    input \dds_state_2__N_924[0] ;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input n20470;
    input VCC_net;
    output \tmp_buf[15] ;
    input trig_dds1;
    input n15111;
    output DDS_MOSI1;
    input n15108;
    output DDS_SCK1;
    input [15:0]buf_dds1;
    input GND_net;
    output [3:0]bit_cnt;
    output n8;
    input \bit_cnt_3__N_972[3] ;
    input \bit_cnt_3__N_972[2] ;
    input \bit_cnt_3__N_972[1] ;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    
    wire n9, CS_N_977, n9_adj_1394;
    wire [15:0]tmp_buf_15__N_927;
    
    wire n12784;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n16926, n16894, n7901;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_924[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1394), .D(CS_N_977));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20470));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12784), .D(tmp_buf_15__N_927[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12784), 
            .D(tmp_buf_15__N_927[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19328_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n12784));
    defparam i19328_4_lut.LUT_INIT = 16'hf034;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15111));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15108));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1394));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_977));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19392_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19392_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16926));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14512_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(dds_state[1]), 
            .I3(bit_cnt[0]), .O(n16926));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i14512_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i3_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n8));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_972[3] ), .R(n16894));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_972[2] ), .R(n16894));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_972[1] ), .R(n16894));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7901), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12142_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7901));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12142_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(dds_state[0]), 
            .I3(GND_net), .O(n16894));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[0] , clk_32MHz, \adc_state[1] , DTRIG_N_918, 
            GND_net, IAC_DRDY, acadc_trig, n20858, cmd_rdadctmp, buf_adcdata_iac, 
            n20867, n12498, n20392, IAC_SCLK, n20390, acadc_dtrig_i, 
            VCC_net, n20500, n11, IAC_CS, n20576, n20516, n20518, 
            n20520, n20522, n20524, n20574, n20526, n20528, n20530, 
            n20532, n20534, n20536, n20538, n20540, n20542, n20544, 
            n20546, n20548, n20550, n20552, n20554, n20556, n20558, 
            n20560, n20562, n20564, n20566, n20568, n20570, n20572);
    output \adc_state[0] ;
    input clk_32MHz;
    output \adc_state[1] ;
    output DTRIG_N_918;
    input GND_net;
    input IAC_DRDY;
    input acadc_trig;
    input n20858;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_iac;
    input n20867;
    output n12498;
    input n20392;
    output IAC_SCLK;
    input n20390;
    output acadc_dtrig_i;
    input VCC_net;
    input n20500;
    input n11;
    output IAC_CS;
    input n20576;
    input n20516;
    input n20518;
    input n20520;
    input n20522;
    input n20524;
    input n20574;
    input n20526;
    input n20528;
    input n20530;
    input n20532;
    input n20534;
    input n20536;
    input n20538;
    input n20540;
    input n20542;
    input n20544;
    input n20546;
    input n20548;
    input n20550;
    input n20552;
    input n20554;
    input n20556;
    input n20558;
    input n20560;
    input n20562;
    input n20564;
    input n20566;
    input n20568;
    input n20570;
    input n20572;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]adc_state_2__N_823;
    
    wire n20961, n17, n12, n15199, n15192, n15183, n15195, n15180, 
        n15101, n15189, n15186, n15198, n15177, n15191, n15184, 
        n15196, n15197, n15179, n15194, n15193, n15190, n15188, 
        n15187, n15185, n15182, n15181, n15178;
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19655, n19654, n19653, n19652, n19651, n19650, n19649, 
        n20960, n16, n21295, n21294, n12473, n14806;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20961), 
            .D(adc_state_2__N_823[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_918), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_823[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(IAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_918), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19367_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19367_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15307_3_lut (.I0(DTRIG_N_918), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_823[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15307_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_823[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_918), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_823[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12781_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15199));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12781_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12774_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15192));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12774_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12765_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15183));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12765_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12777_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15195));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12777_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12762_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15180));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12762_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12683_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15101));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12683_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12771_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15189));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12771_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12768_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15186));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12768_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12780_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15198));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12780_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12759_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15177));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12759_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12773_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15191));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12773_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12766_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15184));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12766_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12778_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15196));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12778_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut (.I0(IAC_DRDY), .I1(n20867), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12498));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15199));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15198));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15197));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12761_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15179));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12761_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15196));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15195));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15194));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15193));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15192));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15191));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15190));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15189));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15188));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15187));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15186));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15185));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15184));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15183));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15182));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15181));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15180));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15179));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15178));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15177));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12772_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15190));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12772_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12767_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15185));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12767_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12779_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15197));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12779_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12760_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15178));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12760_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12775_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15193));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12775_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12764_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15182));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12764_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20392));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12776_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15194));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12776_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12763_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15181));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12763_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20390));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12770_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15188));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12770_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12769_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20858), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15187));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12769_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19655), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19654), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19654), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19655));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19653), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19653), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19654));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19652), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19652), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19653));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19651), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19651), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19652));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19650), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19650), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19651));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19649), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(DTRIG_N_918), .I2(IAC_DRDY), 
            .I3(\adc_state[0] ), .O(n20960));
    defparam i1_4_lut.LUT_INIT = 16'hff47;
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15101));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n19649), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19650));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19649));
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n20960), .I2(GND_net), 
            .I3(GND_net), .O(n20961));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20500));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i19262_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n21295));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19262_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i19068_4_lut (.I0(n21295), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n21294));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19068_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21294), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_918), .I3(\adc_state[1] ), .O(adc_state_2__N_823[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n20576));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20516));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20518));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20520));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20522));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20524));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .D(n20574));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20526));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20528));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20530));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20532));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20534));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20536));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20538));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20540));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20542));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20544));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20546));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20548));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20550));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20552));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20554));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20556));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20558));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20560));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20562));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20564));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20566));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20568));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20570));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20572));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12393_2_lut (.I0(n12473), .I1(DTRIG_N_918), .I2(GND_net), 
            .I3(GND_net), .O(n14806));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12393_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_3 (.I0(\adc_state[0] ), .I1(IAC_DRDY), .I2(DTRIG_N_918), 
            .I3(\adc_state[1] ), .O(n12473));
    defparam i1_4_lut_adj_3.LUT_INIT = 16'h0150;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12473), .D(n63[7]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12473), .D(n63[6]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12473), .D(n63[5]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12473), .D(n63[4]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12473), .D(n63[3]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12473), .D(n63[2]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12473), .D(n63[1]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12473), .D(n63[0]), 
            .R(n14806));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, DDS_CS, n20468, VCC_net, 
            \tmp_buf[15] , n14884, GND_net, n15109, DDS_MOSI, n15107, 
            DDS_SCK, trig_dds0, buf_dds0, bit_cnt, n15811);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input n20468;
    input VCC_net;
    output \tmp_buf[15] ;
    output n14884;
    input GND_net;
    input n15109;
    output DDS_MOSI;
    input n15107;
    output DDS_SCK;
    input trig_dds0;
    input [15:0]buf_dds0;
    output [3:0]bit_cnt;
    input n15811;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]dds_state_2__N_924;
    
    wire n9, CS_N_977, n9_adj_1393;
    wire [15:0]tmp_buf_15__N_927;
    
    wire n12722;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21571;
    wire [3:0]bit_cnt_3__N_972;
    
    wire n7939;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_924[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1393), .D(CS_N_977));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20468));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_927[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12722), 
            .D(tmp_buf_15__N_927[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12467_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n14884));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12467_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15109));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15107));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19329_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n12722));
    defparam i19329_4_lut.LUT_INIT = 16'hcc46;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1393));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_977));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19372_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19372_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[1]), .I2(dds_state[0]), 
            .I3(bit_cnt_c[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19009_2_lut (.I0(bit_cnt_c[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21571));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19009_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12163_4_lut (.I0(dds_state[0]), .I1(n21571), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_924[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12163_4_lut.LUT_INIT = 16'hc505;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n15811));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i3837_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_972[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3837_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3844_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_972[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3844_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_972[3]), .R(n14884));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_972[2]), .R(n14884));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_972[1]), .R(n14884));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7939), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_927[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12141_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7939));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12141_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3830_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_972[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3830_2_lut.LUT_INIT = 16'h6666;
    
endmodule
