// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Oct 13 17:19:46 2021
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
    
    wire DDS_MCLK1 /* synthesis SET_AS_NETWORK=DDS_MCLK1, is_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(263[9:16])
    
    wire VCC_net;
    wire [7:0]comm_tx_buf;   // zim_main.vhd(236[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zim_main.vhd(238[9:20])
    wire [23:0]comm_test_buf_24;   // zim_main.vhd(239[9:25])
    wire [3:0]comm_state;   // zim_main.vhd(241[9:19])
    wire [7:0]comm_cmd;   // zim_main.vhd(243[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[1] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[2] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[3] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[4] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[5] ;   // zim_main.vhd(246[9:17])
    wire [7:0]\comm_buf[6] ;   // zim_main.vhd(246[9:17])
    wire [2:0]comm_index;   // zim_main.vhd(247[9:19])
    wire [2:0]comm_length;   // zim_main.vhd(248[9:20])
    wire [7:0]dds0_mclkcnt;   // zim_main.vhd(251[9:21])
    wire [15:0]buf_dds0;   // zim_main.vhd(254[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(259[9:17])
    
    wire trig_dds1;
    wire [3:0]clk_cnt;   // zim_main.vhd(264[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(265[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(266[9:20])
    
    wire acadc_trig, acadc_dtrig_i, acadc_dtrig_v;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(275[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(276[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(283[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(284[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(287[9:18])
    
    wire acadc_rst, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(294[9:21])
    wire [47:0]buf_data_vac;
    wire [9:0]data_count;   // zim_main.vhd(299[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(300[9:20])
    wire [9:0]data_index;   // zim_main.vhd(301[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(302[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(310[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(313[9:20])
    
    wire wdtick_flag, flagcntwd, n13847;
    wire [27:0]wdtick_cnt;   // zim_main.vhd(317[9:19])
    wire [31:0]secclk_cnt;   // zim_main.vhd(320[9:19])
    
    wire n11982, clk_RTD_N_803, n9, n11983, n20766, n20644, n46, 
        n15553, n20661, n6776, wdtick_flag_N_366, n24, n12, n40, 
        n11987, n24_adj_1503, n6946, n11985, n8, n8_adj_1504, n24_adj_1505, 
        n22356, n24_adj_1506, n9_adj_1507, TEST_LED_N_779, n35, n22354, 
        DDS_MCLK_N_780, n6, n20616, iac_raw_buf_N_823, iac_raw_buf_N_821, 
        n415, n416, n417, n418, n419, n420, n421, n422, n423, 
        n424, n427, n428, n429, n430, n431, n432, n433, n434, 
        n435, n436, n437, n438, n439, n440, n441, n442, n478, 
        n479, n480, n481, n482, n483, n484, n485, n486, n487, 
        n488, n489, n490, n491, n492, n493, n21471, n21473, 
        n21475, n21477;
    wire [2:0]eis_state_2__N_191;
    
    wire n6907, n22160, n6888, n20660, THERMOSTAT_N_534;
    wire [2:0]comm_length_2__N_514;
    wire [7:0]comm_buf_0__7__N_543;
    wire [7:0]comm_buf_1__7__N_559;
    wire [7:0]comm_buf_2__7__N_575;
    wire [2:0]comm_state_3__N_500;
    
    wire n20318;
    wire [2:0]comm_index_2__N_511;
    wire [23:0]comm_test_buf_24_23__N_755;
    wire [3:0]comm_state_3__N_484;
    
    wire n1373, comm_clear_N_796, ICE_GPMI_0_N_794, n21479, n21481, 
        n21021, n21511;
    wire [3:0]comm_state_3__N_33;
    
    wire n21513, n20, n21515, n21517, n21519, n21938, n21521, 
        n23, n21529, n21531, n21533, n21535, n21537, n21539, n21541, 
        n21543, n21545, n21551, n21553, n21555, n21557, n21559, 
        n21561, n21563, n21565;
    wire [9:0]data_index_9__N_236;
    wire [15:0]data_idxvec_15__N_246;
    
    wire n21567, n21569, n21571, n22353, n22352, n22351, n22301, 
        n22300, n23053, n22297, n22346, n22669, n21965, n22041, 
        n11986;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1806;   // dds_ad9837.vhd(25[9:16])
    
    wire n21573;
    wire [2:0]dds_state_adj_1809;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1810;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1811;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_935_adj_1815;
    wire [2:0]dds_state_2__N_887_adj_1817;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n18882, n18883, n21575, n21577, n21579, n21581, n21583, 
        n21585, n21587, n21589, n21591, n21593, n21595, n21597, 
        n21599, n21601;
    wire [2:0]adc_state_adj_1825;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire n18885, n26, n18890, DTRIG_N_1182, n21603, n21605, n21607, 
        n24_adj_1513, n23_adj_1514, n22, n21, n18, n17, n21401;
    wire [2:0]adc_state_adj_1829;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1830;   // adc_ads127.vhd(27[8:20])
    
    wire n21075, n21889, n18850, n18851, n18853, n18858, n22151, 
        DTRIG_N_1182_adj_1549, n21609, n21611, n21613, n22649, n21381, 
        n2562, n13, n21997;
    wire [3:0]adc_state_adj_1851;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1852;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n111, n24_adj_1575, n22642, n18865, n21615, n24_adj_1576, 
        n21031, n21617, n21043, n21619, n21135, n21137, n21139, 
        n21141, n21143, n21145, n21147, n21149, n21151, n21153, 
        n21155, n21157, n21159, n21161, n21163, n21165, n21167, 
        n21169, n21171, n21173, n21375, n22342, n22341, n21175, 
        n21279, n21281, n21283, n21285, n13746, n22340, n11981, 
        n30, n11, n112, n21892, n14, n22240, n11_adj_1577, n21895, 
        n14_adj_1578, n21361, n157, n156, n155, n154, n153, n152, 
        n151, n150, n149, n148, n147, n146, n145, n144, n143, 
        n142, n141, n140, n139, n138, n137, n136, n135, n134, 
        n133, n6951, n22267, n30_adj_1579, n26_adj_1580, n19, n16, 
        n21966, n120, n119, n118, n117, n116, n115, n114, n113, 
        n112_adj_1581, n111_adj_1582, n110, n109, n108, n107, n106, 
        n105, n104, n103, n102, n101, n100, n99, n98, n112_adj_1583, 
        n111_adj_1584, n6942, n6940, n22339, n21287, n11_adj_1585, 
        n21289, n21291, n21293, n15562, n22338, n22184, n45, n44, 
        n43, n42, n41, n40_adj_1586, n39, n38, n10, n15, n14_adj_1587, 
        n12976, n22618, n30_adj_1588, n6919, n22_adj_1589, n19_adj_1590, 
        n13_adj_1591, n11_adj_1592, n14_adj_1593, n17_adj_1594, n18_adj_1595, 
        n21133, n20882, n20880, n20879, n20878, n20885, n20886, 
        n22296, n20643, n6909, n9_adj_1596, n22295, n29, n26_adj_1597, 
        n5, n20884, n24_adj_1598, n20883, n12966, n31, n21007, 
        n14_adj_1599, n21295, n22262, n21862, n12015, n6774, n11984, 
        n21297, n49, n9_adj_1600, n21271, n20659, n24_adj_1601, 
        n21299, n21301, n21303, n3, n18815, n18816, n22595, n18818, 
        n10_adj_1602, n6_adj_1603, n14378, n6_adj_1604, n14382, n14386, 
        n14390, n7, n8_adj_1605, n18823, n14_adj_1606, n21305, n21307, 
        n22276, n21309, n21311, n21313, n21315, n21317, n21319, 
        n21321, n13603, n21451, n20642, n20658, n21469, n15930, 
        n15929, n15928, n15927, n15926, n15925, n15924, n15923, 
        n15922, n15921, n15920, n15919, n15918, n15917, n15916, 
        n15915, n15914, n15913, n15912, n15911, n15910, n15909, 
        n15908, n15907, n15906, n15905, n15904, n15903, n15902, 
        n15901, n15900, n15899, n15898, n15897, n15896, n15895, 
        n20617, n15894, n15893, n15892, n15891, n15889, n15888, 
        n15887, n15886, n15885, n15884, n15883, n15882, n15881, 
        n20615, n15880, n20629, n23561, n20628, n23558, n23555, 
        n23552, n23549, n23546, n23543, n23540, n14739, n14_adj_1607, 
        n14_adj_1608, n15879, n15878, n15877, n15876, n15875, n15874, 
        n15873, n15872, n15871, n15870, n15869, n15868, n15867, 
        n15866, n15865, n14_adj_1609, n14_adj_1610, n14_adj_1611, 
        n17633, n14_adj_1612, n14_adj_1613, n23534, n22331, n15864, 
        n15863, n15862, n21459, n21457, n21455, n20657, n20641, 
        n7_adj_1614, n8_adj_1615, n7_adj_1616, n8_adj_1617, n7_adj_1618, 
        n8_adj_1619, n23522, n7_adj_1620, n8_adj_1621, n23519, n7_adj_1622, 
        n8_adj_1623, n7_adj_1624, n8_adj_1625, n7_adj_1626, n23516, 
        n7_adj_1627, n8_adj_1628, n23513, n7_adj_1629, n8_adj_1630, 
        n20614, n20656, n22330, n14743, n14747, n14751, n20627, 
        n14755, n14759, n14763, n14767, n22270, n14771, n14775, 
        n21908, n14779, n14783, n20640, n14787, n20655, n14791, 
        n15261, n20626, n14795, n20654, n20625, n14799, n14803, 
        n14807, n20653, n14811, n20639, n14815, n14819, n20638, 
        n20624, n6_adj_1631, n6_adj_1632, n6_adj_1633, n6_adj_1634, 
        n6_adj_1635, n6_adj_1636, n6_adj_1637, n6_adj_1638, n6_adj_1639, 
        n6_adj_1640, n6_adj_1641, n6_adj_1642, n6_adj_1643, n6_adj_1644, 
        n6_adj_1645, n6_adj_1646, n6_adj_1647, n6_adj_1648, n6_adj_1649, 
        n22263, n6_adj_1650, n6_adj_1651, n14_adj_1652, n14_adj_1653, 
        n14_adj_1654, n14_adj_1655, n14_adj_1656, n15238, n22329, 
        n22326, n23510, n14851, n4, n6_adj_1657, n7_adj_1658, n2, 
        n21331, n23504, n22238, n8_adj_1659, n23501, n14_adj_1660, 
        n20623, n14_adj_1661, n14_adj_1662, n1, n2_adj_1663, n4_adj_1664, 
        n23498, n1_adj_1665, n2_adj_1666, n21325, n4_adj_1667, n23495, 
        n1_adj_1668, n2_adj_1669, n4_adj_1670, n1_adj_1671, n2_adj_1672, 
        n4_adj_1673, n1_adj_1674, n2_adj_1675, n4_adj_1676, n23492, 
        n20652, n23486, n12_adj_1677, n20651, n16588, n14_adj_1678, 
        n10_adj_1679, n34, n20620, n33, n32, n12838, n31_adj_1680, 
        n23480, n30_adj_1681, n15531, n20650, n20637, n23477, n16_adj_1682, 
        n21989, n16578, n22149, n20636, n20621, n20825, n13584, 
        n23474, n20824, n20823, n20822, n20821, n20820, n23471, 
        n20819, n21363, n23468, n12761, n23465, n22061, n19241, 
        n21651, n21655, n20635, n20675, n23462, n15378, n13925, 
        n20922, n11254, n15517, n22321, n11258, n22399, n22288, 
        n21369, n22397, n23459, n21209, n22396, n22395, n20674, 
        n20811, n22391, n16_adj_1683, n23456, n23453, n20634, n20810, 
        n20649, n20619, n20648, n20673, n20672, n22388, n18996, 
        n22316, n20809, n12_adj_1684, n23450, n16528, n20808, n20807, 
        n23447, n20806, n20805, n16525, n15538, n22314, n16522, 
        n23444, n20633, n16519, n15496, n25, n16517, n12_adj_1685, 
        n20804, n16514, n8_adj_1686, n16511, n23441, n7_adj_1687, 
        n16508, n15503, n16504, n15420, n20803, n20802, n16501, 
        n16498, n20801, n16495, n16493, n20632, n20613, n16490, 
        n20800, n11280, n23438, n9837, n22120, n12064, n21211, 
        n23435, n15439, n20799, n21213, n20798, n29_adj_1688, n21215, 
        n9725, n12056, n9714, n20797, n21217, n12050, n18363, 
        n21219, n12045, n23432, n15431, n23429, n20796, n17642, 
        n21221, n40_adj_1689, n20795, n20794, n12677, n12035, n20793, 
        n19_adj_1690, n22_adj_1691, n30_adj_1692, n21023, n20671, 
        n20834, n21956, n21025, n23426, n23423, n13273, n23420, 
        n23417, n20670, n12610, n21207, n19_adj_1693, n22_adj_1694, 
        n12614, n30_adj_1695, n21015, n13257, n20792, n22186, n23414, 
        n23411, n20791, n13237, n19_adj_1696, n22_adj_1697, n30_adj_1698, 
        n9324, n13231, n20669, n23408, n20790, n13219, n23405, 
        n13211, n18_adj_1699, n13207, n21011, n21527, n22169, n20789, 
        n13201, n20668, n19_adj_1700, n23402, n22_adj_1701, n23399, 
        n30_adj_1702, n21009, n21201, n20788, n20787, n23396, n12585, 
        n20786, n21013, n23393, n13171, n20785, n20667, n19_adj_1703, 
        n22_adj_1704, n12540, n23390, n30_adj_1705, n20784, n23387, 
        n20783, n21968, n12548, n20782, n22033, n22183, n20781, 
        n23384, n20780, n17650, n23381, n19_adj_1706, n22_adj_1707, 
        n30_adj_1708, n23378, n23375, n20779, n21964, n4_adj_1709, 
        n23372, n20666, n23369, n19_adj_1710, n21981, n28, n22_adj_1711, 
        n30_adj_1712, n20778, n23366, n21983, n23363, n20647, n8856, 
        n23360, n12509, n23357, n22180, n27, n23354, n12958, n16_adj_1713, 
        n19_adj_1714, n23351, n26_adj_1715, n26_adj_1716, n25_adj_1717, 
        n4_adj_1718, n23348, n21453, n15855, n23345, n12892, n12880, 
        n15854, n15853, n15852, n20665, n111_adj_1719, n22177, n23342, 
        n30_adj_1720, n16_adj_1721, n19_adj_1722, n22166, n26_adj_1723, 
        n23339, n22059, n30_adj_1724, n22_adj_1725, n20777, n20776, 
        n22018, n23336, n111_adj_1726, n23330, n23327, n48, n19_adj_1727, 
        n16_adj_1728, n19_adj_1729, n21880, n26_adj_1730, n30_adj_1731, 
        n23324, n37, n22313, n23321, n22073, n23318, n23315, n22092, 
        n111_adj_1732, n23312, n22143, n23309, n16_adj_1733, n22136, 
        n19_adj_1734, n22163, n26_adj_1735, n21885, n30_adj_1736, 
        n22312, n15489, n12450, n23306, n23303, n15510, n22375, 
        n111_adj_1737, n21951, n21865, n16_adj_1738, n19_adj_1739, 
        n22174, n26_adj_1740, n23300, n30_adj_1741, n17_adj_1742, 
        n21946, n23297, n13141, n20775, n21948, n23294, n23291, 
        n30_adj_1743, n21277, n111_adj_1744, n20618, n23288, n13129, 
        n4_adj_1745, n20631, n16_adj_1746, n19_adj_1747, n26_adj_1748, 
        n22137, n4_adj_1749, n20646, n13117, n111_adj_1750, n20664, 
        n18955, n22089, n20774, n16_adj_1751, n19_adj_1752, n21883, 
        n26_adj_1753, n21099, n12394, n15482, n21886, n20773, n111_adj_1754, 
        n20663, n20772, n22500, n22499, n8_adj_1755, n23_adj_1756, 
        n7_adj_1757, n26_adj_1758, n30_adj_1759, n13093, n20771, n22371, 
        n12_adj_1760, n111_adj_1761, n112_adj_1762, n21549, n13076, 
        n12366, n16_adj_1763, n17_adj_1764, n19_adj_1765, n20_adj_1766, 
        n23_adj_1767, n30_adj_1768, n12369, n30_adj_1769, n15851, 
        n29_adj_1770, n111_adj_1771, n112_adj_1772, n21929, n22370, 
        n23_adj_1773, n25_adj_1774, n28_adj_1775, n22142, n20959, 
        n12021, n22170, n20622, n13052, n22167, n22164, n111_adj_1776, 
        n112_adj_1777, n22161, n16_adj_1778, n17_adj_1779, n22148, 
        n19_adj_1780, n20_adj_1781, n8_adj_1782, n23_adj_1783, n30_adj_1784, 
        n21509, n22152, n22368, n111_adj_1785, n112_adj_1786, n16_adj_1787, 
        n17_adj_1788, n19_adj_1789, n20_adj_1790, n23_adj_1791, n26_adj_1792, 
        n30_adj_1793, n22492, n21403, n12352, n12356, n111_adj_1794, 
        n112_adj_1795, n21405, n21407, n20770, n22271, n22268, n22489, 
        n20769, n22365, n22364, n22487, n20630, n20768, n21409, 
        n111_adj_1796, n112_adj_1797, n21411, n21413, n15850, n111_adj_1798, 
        n112_adj_1799, n15849, n11172, n24_adj_1800, n22_adj_1801, 
        n12_adj_1802, n21415, n20767, n21920, n21417, n21_adj_1803, 
        n20_adj_1804, n21501, n21419, n6880, n30_adj_1805, n11980, 
        n21421, n11979, n20645, n11402, n21423, n22358, n12951, 
        n11379, n21425, n7148, n20662, n22027, n15545, n21857, 
        n15848, n15847, n15846, n22272;
    
    assign VAC_CLK = IAC_CLK;   // zim_main.vhd(45[3:10])
    assign IAC_MOSI = VAC_MOSI;   // zim_main.vhd(68[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    ADC_ADS127 ADC_VAC (.VCC_net(VCC_net), .GND_net(VAC_MOSI), .\adc_state[0] (adc_state_adj_1829[0]), 
            .clk_32MHz(clk_32MHz), .VAC_DRDY(VAC_DRDY), .acadc_trig(acadc_trig), 
            .DTRIG_N_1182(DTRIG_N_1182_adj_1549), .\adc_state[1] (adc_state_adj_1829[1]), 
            .n13847(n13847), .n21559(n21559), .cmd_rdadctmp({cmd_rdadctmp_adj_1830}), 
            .n21561(n21561), .n21563(n21563), .n21565(n21565), .n21567(n21567), 
            .n21569(n21569), .n21571(n21571), .n21573(n21573), .n21575(n21575), 
            .n21577(n21577), .n21579(n21579), .n21581(n21581), .n21583(n21583), 
            .n21585(n21585), .n21587(n21587), .n21589(n21589), .n21591(n21591), 
            .n21593(n21593), .n21595(n21595), .n21597(n21597), .n21599(n21599), 
            .n21601(n21601), .n21603(n21603), .n21605(n21605), .n21607(n21607), 
            .n21609(n21609), .n21611(n21611), .n21613(n21613), .n21615(n21615), 
            .n21617(n21617), .n21619(n21619), .buf_adcdata_vac({buf_adcdata_vac}), 
            .acadc_dtrig_v(acadc_dtrig_v), .acadc_dtrig_i(acadc_dtrig_i), 
            .iac_raw_buf_N_823(iac_raw_buf_N_823), .n21655(n21655), .n11(n11), 
            .VAC_CS(VAC_CS), .n21948(n21948), .n21457(n21457), .VAC_SCLK(VAC_SCLK), 
            .n21455(n21455));   // zim_main.vhd(886[12:22])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20533 (.I0(comm_cmd[1]), .I1(n22499), 
            .I2(n22500), .I3(comm_cmd[2]), .O(n23474));
    defparam comm_cmd_1__bdd_4_lut_20533.LUT_INIT = 16'he4aa;
    SB_LUT4 n23474_bdd_4_lut (.I0(n23474), .I1(n22358), .I2(n23_adj_1783), 
            .I3(comm_cmd[2]), .O(n23477));
    defparam n23474_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n12369), 
            .D(eis_state_2__N_191[0]), .R(acadc_rst));   // zim_main.vhd(447[3] 522[10])
    SB_DFFN dds0_mclk_297 (.Q(DDS_MCLK), .C(DDS_MCLK1), .D(DDS_MCLK_N_780));   // zim_main.vhd(436[3] 442[10])
    SB_DFFE comm_clear_304 (.Q(comm_clear), .C(clk_32MHz), .E(n12035), 
            .D(comm_clear_N_796));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13_4_lut (.I0(n17_adj_1594), .I1(n19_adj_1727), .I2(n18_adj_1699), 
            .I3(n20_adj_1804), .O(n29_adj_1770));   // zim_main.vhd(505[9:35])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(n29_adj_1770), .I1(eis_stop), .I2(n30_adj_1769), 
            .I3(VAC_MOSI), .O(n16_adj_1683));
    defparam i1_3_lut.LUT_INIT = 16'hcdcd;
    SB_LUT4 i2_3_lut (.I0(comm_state[1]), .I1(n11258), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n11254));   // zim_main.vhd(529[4] 813[13])
    defparam i2_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 comm_cmd_6__I_0_372_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n8));   // zim_main.vhd(773[11:20])
    defparam comm_cmd_6__I_0_372_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19812_2_lut (.I0(eis_state[0]), .I1(n16_adj_1683), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22395));
    defparam i19812_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i15_4_lut (.I0(n11254), .I1(n9324), .I2(comm_state[3]), .I3(n9837), 
            .O(n13052));
    defparam i15_4_lut.LUT_INIT = 16'hf535;
    SB_DFFE comm_response_305 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n12045), 
            .D(ICE_GPMI_0_N_794));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i34_3_lut (.I0(n17650), .I1(iac_raw_buf_N_823), .I2(eis_state[0]), 
            .I3(VAC_MOSI), .O(n13));
    defparam i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33_4_lut (.I0(n13), .I1(n22395), .I2(eis_state[2]), .I3(eis_state[1]), 
            .O(eis_state_2__N_191[2]));
    defparam i33_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i2_4_lut (.I0(\comm_buf[0] [2]), .I1(n24_adj_1598), .I2(n21929), 
            .I3(n11983), .O(n20885));
    defparam i2_4_lut.LUT_INIT = 16'hffec;
    SB_LUT4 i1_4_lut (.I0(\comm_buf[1] [3]), .I1(n11979), .I2(\comm_buf[2] [3]), 
            .I3(comm_cmd[0]), .O(n11982));
    defparam i1_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(IAC_CLK));   // zim_main.vhd(332[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_4_lut_adj_50 (.I0(\comm_buf[0] [3]), .I1(n24_adj_1506), .I2(n21938), 
            .I3(n11982), .O(n20882));
    defparam i2_4_lut_adj_50.LUT_INIT = 16'hffec;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n21885), 
            .D(comm_state_3__N_33[0]));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i19257_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22184));
    defparam i19257_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_236[0]));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i19259_4_lut (.I0(n22184), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n22186));
    defparam i19259_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_4_lut_adj_51 (.I0(\comm_buf[1] [4]), .I1(n11979), .I2(\comm_buf[2] [4]), 
            .I3(comm_cmd[0]), .O(n11987));
    defparam i1_4_lut_adj_51.LUT_INIT = 16'hc088;
    SB_LUT4 i1_4_lut_adj_52 (.I0(n9_adj_1507), .I1(comm_state[3]), .I2(n9837), 
            .I3(n21983), .O(n13171));
    defparam i1_4_lut_adj_52.LUT_INIT = 16'hc0c4;
    SB_LUT4 i2_4_lut_adj_53 (.I0(\comm_buf[0] [4]), .I1(n24_adj_1505), .I2(n21929), 
            .I3(n11987), .O(n20884));
    defparam i2_4_lut_adj_53.LUT_INIT = 16'hffec;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[0]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF clk_RTD_290 (.Q(clk_RTD), .C(DDS_MCLK1), .D(clk_RTD_N_803));   // zim_main.vhd(385[3] 392[10])
    SB_LUT4 i1_4_lut_adj_54 (.I0(\comm_buf[1] [5]), .I1(n11979), .I2(\comm_buf[2] [5]), 
            .I3(comm_cmd[0]), .O(n11984));
    defparam i1_4_lut_adj_54.LUT_INIT = 16'hc088;
    SPI_SLAVE comm_spi (.comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), 
            .comm_clear(comm_clear), .comm_tx_buf({comm_tx_buf}), .GND_net(VAC_MOSI), 
            .VCC_net(VCC_net), .ICE_SPI_MOSI(ICE_SPI_MOSI), .ICE_SPI_SCLK(ICE_SPI_SCLK), 
            .comm_rx_buf({comm_rx_buf}), .ICE_SPI_MISO(ICE_SPI_MISO));   // zim_main.vhd(827[13:22])
    SB_LUT4 i2_4_lut_adj_55 (.I0(\comm_buf[0] [5]), .I1(n24_adj_1503), .I2(n21929), 
            .I3(n11984), .O(n20883));
    defparam i2_4_lut_adj_55.LUT_INIT = 16'hffec;
    SB_LUT4 i19133_2_lut (.I0(n9), .I1(comm_cmd[5]), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(n22059));
    defparam i19133_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_adj_56 (.I0(n6), .I1(n22061), .I2(comm_cmd[6]), .I3(n22059), 
            .O(n21929));
    defparam i1_4_lut_adj_56.LUT_INIT = 16'h1151;
    SB_LUT4 i19236_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n22163));
    defparam i19236_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20513 (.I0(comm_cmd[1]), .I1(n22163), 
            .I2(n22164), .I3(comm_cmd[2]), .O(n23468));
    defparam comm_cmd_1__bdd_4_lut_20513.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_57 (.I0(\comm_buf[1] [6]), .I1(n11979), .I2(\comm_buf[2] [6]), 
            .I3(comm_cmd[0]), .O(n11986));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hc088;
    SB_LUT4 n23468_bdd_4_lut (.I0(n23468), .I1(n22161), .I2(n22160), .I3(comm_cmd[2]), 
            .O(n23471));
    defparam n23468_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut (.I0(comm_cmd[0]), .I1(n12), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(n12015));   // zim_main.vhd(773[11:20])
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i2_4_lut_adj_58 (.I0(\comm_buf[0] [6]), .I1(n24), .I2(n21929), 
            .I3(n11986), .O(n20878));
    defparam i2_4_lut_adj_58.LUT_INIT = 16'hffec;
    SB_LUT4 i2_3_lut_adj_59 (.I0(n21886), .I1(comm_cmd[1]), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n11979));
    defparam i2_3_lut_adj_59.LUT_INIT = 16'h0808;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20528 (.I0(comm_cmd[2]), .I1(n22183), 
            .I2(n22186), .I3(comm_cmd[3]), .O(n23462));
    defparam comm_cmd_2__bdd_4_lut_20528.LUT_INIT = 16'he4aa;
    SB_LUT4 n23462_bdd_4_lut (.I0(n23462), .I1(n22180), .I2(n22177), .I3(comm_cmd[3]), 
            .O(n23465));
    defparam n23462_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9640_1_lut (.I0(wdtick_flag), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12366));   // zim_main.vhd(397[3] 408[10])
    defparam i9640_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_65_4_lut (.I0(VAC_MOSI), .I1(data_cntvec[2]), .I2(VAC_MOSI), 
            .I3(n20623), .O(n440)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFER wdtick_cnt_3783_3784__i1 (.Q(wdtick_cnt[0]), .C(DDS_MCLK1), 
            .E(n12366), .D(n157), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n12369), 
            .D(eis_state_2__N_191[2]), .R(acadc_rst));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i1_2_lut_adj_60 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n8_adj_1504));
    defparam i1_2_lut_adj_60.LUT_INIT = 16'h8888;
    SB_LUT4 i3_4_lut (.I0(n12015), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n9324));   // zim_main.vhd(529[4] 813[13])
    defparam i3_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut_adj_61 (.I0(adc_state_adj_1825[1]), .I1(DTRIG_N_1182), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21892));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_61.LUT_INIT = 16'h2222;
    SB_DFFN dds0_mclkcnt_i7_3792__i0 (.Q(dds0_mclkcnt[0]), .C(DDS_MCLK1), 
            .D(n45));   // zim_main.vhd(438[4] 441[11])
    SB_LUT4 i1_4_lut_adj_62 (.I0(n6), .I1(n22061), .I2(n9), .I3(n8_adj_1504), 
            .O(n21938));
    defparam i1_4_lut_adj_62.LUT_INIT = 16'h1511;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n12369), 
            .D(eis_state_2__N_191[1]), .R(acadc_rst));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 add_64_6_lut (.I0(VAC_MOSI), .I1(data_count[4]), .I2(VAC_MOSI), 
            .I3(n20616), .O(n420)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4594_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1605));   // zim_main.vhd(529[4] 813[13])
    defparam i4594_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i45_3_lut (.I0(comm_cmd[6]), .I1(comm_cmd[5]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n40));
    defparam i45_3_lut.LUT_INIT = 16'h7676;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), .I2(n13746), 
            .I3(adc_state_adj_1825[0]), .O(n21459));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21537));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_64 (.I0(\comm_buf[1] [7]), .I1(n11979), .I2(\comm_buf[2] [7]), 
            .I3(comm_cmd[0]), .O(n11981));
    defparam i1_4_lut_adj_64.LUT_INIT = 16'hc088;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21535));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_66 (.I0(n6776), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n8856));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_adj_66.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_67 (.I0(\comm_buf[0] [7]), .I1(n24_adj_1576), .I2(n21938), 
            .I3(n11981), .O(n20879));
    defparam i2_4_lut_adj_67.LUT_INIT = 16'hffec;
    SB_LUT4 i10475_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[2] [1]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n13201));   // zim_main.vhd(527[3] 814[10])
    defparam i10475_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_68 (.I0(comm_cmd[0]), .I1(comm_state[3]), .I2(n9837), 
            .I3(n8856), .O(n13273));
    defparam i1_4_lut_adj_68.LUT_INIT = 16'hc8c0;
    SB_LUT4 comm_state_3__I_0_358_Mux_0_i15_4_lut (.I0(n7), .I1(n8_adj_1605), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[0]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10476_3_lut (.I0(\comm_buf[1] [1]), .I1(n13201), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[1]));   // zim_main.vhd(527[3] 814[10])
    defparam i10476_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_69 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21533));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'hca0a;
    SB_LUT4 i10481_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[2] [2]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n13207));   // zim_main.vhd(527[3] 814[10])
    defparam i10481_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10482_3_lut (.I0(\comm_buf[1] [2]), .I1(n13207), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[2]));   // zim_main.vhd(527[3] 814[10])
    defparam i10482_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16157_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[2] [3]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n18858));
    defparam i16157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16158_3_lut (.I0(\comm_buf[1] [3]), .I1(n18858), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[3]));
    defparam i16158_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10493_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[2] [4]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n13219));   // zim_main.vhd(527[3] 814[10])
    defparam i10493_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10494_3_lut (.I0(\comm_buf[1] [4]), .I1(n13219), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[4]));   // zim_main.vhd(527[3] 814[10])
    defparam i10494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_70 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12951));
    defparam i1_2_lut_adj_70.LUT_INIT = 16'heeee;
    SB_LUT4 i16190_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[2] [5]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n18890));
    defparam i16190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19233_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22160));
    defparam i19233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19234_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22161));
    defparam i19234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_3_lut (.I0(ICE_SPI_CE0), .I1(n12951), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n21981));
    defparam i3_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 mux_125_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1792));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_71 (.I0(comm_state[0]), .I1(n21981), .I2(n12966), 
            .I3(n1373), .O(n22027));
    defparam i1_4_lut_adj_71.LUT_INIT = 16'hddd5;
    SB_LUT4 i1_4_lut_adj_72 (.I0(n22018), .I1(n22027), .I2(n6888), .I3(n21968), 
            .O(n21865));
    defparam i1_4_lut_adj_72.LUT_INIT = 16'hccc8;
    SB_CARRY add_70_15 (.CI(n20649), .I0(acadc_skipcnt[13]), .I1(VAC_MOSI), 
            .CO(n20650));
    SB_LUT4 add_70_14_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[12]), .I2(VAC_MOSI), 
            .I3(n20648), .O(n481)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16191_3_lut (.I0(\comm_buf[1] [5]), .I1(n18890), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[5]));
    defparam i16191_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_64_4 (.CI(n20614), .I0(data_count[2]), .I1(VAC_MOSI), 
            .CO(n20615));
    SB_CARRY add_65_13 (.CI(n20632), .I0(data_cntvec[11]), .I1(VAC_MOSI), 
            .CO(n20633));
    SB_CARRY add_65_4 (.CI(n20623), .I0(data_cntvec[2]), .I1(VAC_MOSI), 
            .CO(n20624));
    SB_LUT4 i10505_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[2] [6]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n13231));   // zim_main.vhd(527[3] 814[10])
    defparam i10505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10506_3_lut (.I0(\comm_buf[1] [6]), .I1(n13231), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[6]));   // zim_main.vhd(527[3] 814[10])
    defparam i10506_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_70_14 (.CI(n20648), .I0(acadc_skipcnt[12]), .I1(VAC_MOSI), 
            .CO(n20649));
    SB_LUT4 add_65_3_lut (.I0(VAC_MOSI), .I1(data_cntvec[1]), .I2(VAC_MOSI), 
            .I3(n20622), .O(n441)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_65_12_lut (.I0(VAC_MOSI), .I1(data_cntvec[10]), .I2(VAC_MOSI), 
            .I3(n20631), .O(n432)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_73 (.I0(comm_state[3]), .I1(n9837), .I2(comm_state[0]), 
            .I3(n22092), .O(n13211));
    defparam i1_4_lut_adj_73.LUT_INIT = 16'h8a88;
    SB_CARRY add_65_3 (.CI(n20622), .I0(data_cntvec[1]), .I1(VAC_MOSI), 
            .CO(n20623));
    SB_CARRY add_65_12 (.CI(n20631), .I0(data_cntvec[10]), .I1(VAC_MOSI), 
            .CO(n20632));
    SB_LUT4 i10511_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[2] [7]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n13237));   // zim_main.vhd(527[3] 814[10])
    defparam i10511_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10512_3_lut (.I0(\comm_buf[1] [7]), .I1(n13237), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[7]));   // zim_main.vhd(527[3] 814[10])
    defparam i10512_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16132_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(n6774), .I3(VAC_MOSI), .O(n6880));
    defparam i16132_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_70_13_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[11]), .I2(VAC_MOSI), 
            .I3(n20647), .O(n482)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i4188_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[1] [1]), .I2(n6774), 
            .I3(VAC_MOSI), .O(n6907));
    defparam i4188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4190_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), .I2(n6774), 
            .I3(VAC_MOSI), .O(n6909));
    defparam i4190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_65_11_lut (.I0(VAC_MOSI), .I1(data_cntvec[9]), .I2(VAC_MOSI), 
            .I3(n20630), .O(n433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20508 (.I0(comm_cmd[1]), .I1(n26_adj_1792), 
            .I2(n22316), .I3(comm_cmd[2]), .O(n23456));
    defparam comm_cmd_1__bdd_4_lut_20508.LUT_INIT = 16'he4aa;
    SB_LUT4 add_65_2_lut (.I0(VAC_MOSI), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_823), 
            .I3(VAC_MOSI), .O(n442)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16167_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(n6774), .I3(VAC_MOSI), .O(n6919));
    defparam i16167_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4221_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), .I2(n6774), 
            .I3(VAC_MOSI), .O(n6940));
    defparam i4221_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16199_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[1] [5]), 
            .I2(n6774), .I3(VAC_MOSI), .O(n6942));
    defparam i16199_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_70_13 (.CI(n20647), .I0(acadc_skipcnt[11]), .I1(VAC_MOSI), 
            .CO(n20648));
    SB_LUT4 i4227_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), .I2(n6774), 
            .I3(VAC_MOSI), .O(n6946));
    defparam i4227_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_70_12_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[10]), .I2(VAC_MOSI), 
            .I3(n20646), .O(n483)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n23456_bdd_4_lut (.I0(n23456), .I1(n22642), .I2(n23_adj_1791), 
            .I3(comm_cmd[2]), .O(n23459));
    defparam n23456_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_65_11 (.CI(n20630), .I0(data_cntvec[9]), .I1(VAC_MOSI), 
            .CO(n20631));
    SB_LUT4 add_65_10_lut (.I0(VAC_MOSI), .I1(data_cntvec[8]), .I2(VAC_MOSI), 
            .I3(n20629), .O(n434)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_12 (.CI(n20646), .I0(acadc_skipcnt[10]), .I1(VAC_MOSI), 
            .CO(n20647));
    SB_LUT4 add_70_11_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[9]), .I2(VAC_MOSI), 
            .I3(n20645), .O(n484)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_64_5 (.CI(n20615), .I0(data_count[3]), .I1(VAC_MOSI), 
            .CO(n20616));
    SB_LUT4 i4232_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), .I2(n6774), 
            .I3(VAC_MOSI), .O(n6951));
    defparam i4232_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1811[1]), .I1(bit_cnt_adj_1811[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(bit_cnt_3__N_935_adj_1815[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i19864_3_lut (.I0(bit_cnt_adj_1811[2]), .I1(bit_cnt_adj_1811[1]), 
            .I2(bit_cnt_adj_1811[0]), .I3(VAC_MOSI), .O(bit_cnt_3__N_935_adj_1815[2]));
    defparam i19864_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i20128_4_lut (.I0(bit_cnt_adj_1811[3]), .I1(bit_cnt_adj_1811[2]), 
            .I2(bit_cnt_adj_1811[1]), .I3(bit_cnt_adj_1811[0]), .O(bit_cnt_3__N_935_adj_1815[3]));
    defparam i20128_4_lut.LUT_INIT = 16'h6aaa;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:44]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged8 (.RDATA({buf_data_vac[15:12]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[27:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[35:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[39:36]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[43:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_236}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_821), 
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
    SB_LUT4 comm_cmd_2__bdd_4_lut_20503 (.I0(comm_cmd[2]), .I1(n22267), 
            .I2(n22270), .I3(comm_cmd[3]), .O(n23450));
    defparam comm_cmd_2__bdd_4_lut_20503.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_74 (.I0(DTRIG_N_1182), .I1(adc_state_adj_1825[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21951));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_74.LUT_INIT = 16'h2222;
    SB_LUT4 i228_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n1373));   // zim_main.vhd(806[8:49])
    defparam i228_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 n23450_bdd_4_lut (.I0(n23450), .I1(n22288), .I2(n23327), .I3(comm_cmd[3]), 
            .O(n23453));
    defparam n23450_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_64_3 (.CI(n20613), .I0(data_count[1]), .I1(VAC_MOSI), 
            .CO(n20614));
    SB_LUT4 comm_cmd_2__bdd_4_lut_20493 (.I0(comm_cmd[2]), .I1(n22151), 
            .I2(n22152), .I3(comm_cmd[3]), .O(n23444));
    defparam comm_cmd_2__bdd_4_lut_20493.LUT_INIT = 16'he4aa;
    SB_LUT4 n23444_bdd_4_lut (.I0(n23444), .I1(n22149), .I2(n22148), .I3(comm_cmd[3]), 
            .O(n23447));
    defparam n23444_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20498 (.I0(comm_cmd[1]), .I1(n19_adj_1734), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n23438));
    defparam comm_cmd_1__bdd_4_lut_20498.LUT_INIT = 16'he4aa;
    SB_CARRY add_70_11 (.CI(n20645), .I0(acadc_skipcnt[9]), .I1(VAC_MOSI), 
            .CO(n20646));
    SB_LUT4 add_64_2_lut (.I0(VAC_MOSI), .I1(data_count[0]), .I2(iac_raw_buf_N_823), 
            .I3(VAC_MOSI), .O(n424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n11379));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i16445_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1661));   // zim_main.vhd(529[4] 813[13])
    defparam i16445_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i16465_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1611));   // zim_main.vhd(529[4] 813[13])
    defparam i16465_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i16444_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1662));   // zim_main.vhd(529[4] 813[13])
    defparam i16444_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i16459_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1607));   // zim_main.vhd(529[4] 813[13])
    defparam i16459_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut (.I0(n12966), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n21895));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i16454_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1652));   // zim_main.vhd(529[4] 813[13])
    defparam i16454_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_75 (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22018));
    defparam i1_2_lut_adj_75.LUT_INIT = 16'hbbbb;
    SB_LUT4 i19147_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22073));
    defparam i19147_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i16466_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1612));   // zim_main.vhd(529[4] 813[13])
    defparam i16466_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n23438_bdd_4_lut (.I0(n23438), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1733), 
            .I3(comm_cmd[2]), .O(n23441));
    defparam n23438_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_76 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(VAC_MOSI), .O(clk_RTD_N_803));
    defparam i1_2_lut_3_lut_adj_76.LUT_INIT = 16'h6a6a;
    SB_LUT4 i16467_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1613));   // zim_main.vhd(529[4] 813[13])
    defparam i16467_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i13179_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9837), .I3(n13141), .O(n15907));   // zim_main.vhd(527[3] 814[10])
    defparam i13179_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14_adj_1593), 
            .D(comm_state_3__N_33[1]));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20518 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[7]), 
            .I2(buf_readRTD[15]), .I3(comm_cmd[1]), .O(n23432));
    defparam comm_cmd_0__bdd_4_lut_20518.LUT_INIT = 16'he4aa;
    SB_LUT4 n23432_bdd_4_lut (.I0(n23432), .I1(buf_adcdata_vdc[23]), .I2(buf_adcdata_vac[23]), 
            .I3(comm_cmd[1]), .O(n23435));
    defparam n23432_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20483 (.I0(comm_cmd[1]), .I1(n19_adj_1780), 
            .I2(n20_adj_1781), .I3(comm_cmd[2]), .O(n23426));
    defparam comm_cmd_1__bdd_4_lut_20483.LUT_INIT = 16'he4aa;
    SB_LUT4 i19796_2_lut_3_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), 
            .I2(eis_state[2]), .I3(VAC_MOSI), .O(n22312));
    defparam i19796_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 i13178_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9837), .I3(n13141), .O(n15906));   // zim_main.vhd(527[3] 814[10])
    defparam i13178_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_77 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(VAC_MOSI), .O(n14_adj_1660));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_3_lut_adj_77.LUT_INIT = 16'h1010;
    SB_LUT4 i13169_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9837), .I3(n13141), .O(n15897));   // zim_main.vhd(527[3] 814[10])
    defparam i13169_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19937_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22313));
    defparam i19937_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n21883), 
            .D(comm_state_3__N_33[3]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_236[1]));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_126_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1730));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4170_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n6888));   // zim_main.vhd(710[5] 720[12])
    defparam i4170_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13168_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9837), .I3(n13141), .O(n15896));   // zim_main.vhd(527[3] 814[10])
    defparam i13168_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13167_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9837), .I3(n13141), .O(n15895));   // zim_main.vhd(527[3] 814[10])
    defparam i13167_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13166_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9837), .I3(n13141), .O(n15894));   // zim_main.vhd(527[3] 814[10])
    defparam i13166_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13165_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9837), .I3(n13141), .O(n15893));   // zim_main.vhd(527[3] 814[10])
    defparam i13165_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13163_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9837), .I3(n13129), .O(n15891));   // zim_main.vhd(527[3] 814[10])
    defparam i13163_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_6__I_0_374_i10_2_lut (.I0(comm_cmd[3]), .I1(comm_cmd[4]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n6));   // zim_main.vhd(746[11:20])
    defparam comm_cmd_6__I_0_374_i10_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i19784_2_lut_3_lut_4_lut (.I0(comm_cmd[4]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[5]), .O(n22365));
    defparam i19784_2_lut_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_LUT4 mux_126_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1716));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19336_4_lut (.I0(n26_adj_1716), .I1(buf_data_vac[31]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n22263));
    defparam i19336_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 n23426_bdd_4_lut (.I0(n23426), .I1(n17_adj_1779), .I2(n16_adj_1778), 
            .I3(comm_cmd[2]), .O(n23429));
    defparam n23426_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_78 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[1] [0]), .I3(VAC_MOSI), .O(n14_adj_1606));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_3_lut_adj_78.LUT_INIT = 16'h1010;
    SB_LUT4 i19335_3_lut (.I0(acadc_skipCount[7]), .I1(req_data_cnt[7]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n22262));
    defparam i19335_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_79 (.I0(comm_cmd[5]), .I1(n21997), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11402));   // zim_main.vhd(582[5] 686[14])
    defparam i1_2_lut_adj_79.LUT_INIT = 16'hdddd;
    SB_LUT4 i20051_2_lut (.I0(comm_cmd[4]), .I1(comm_cmd[5]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22329));   // zim_main.vhd(582[5] 686[14])
    defparam i20051_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19760_4_lut (.I0(n22329), .I1(comm_state[0]), .I2(n22330), 
            .I3(comm_cmd[6]), .O(n22321));
    defparam i19760_4_lut.LUT_INIT = 16'hfcee;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_236[2]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_236[3]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_236[4]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_236[5]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_236[6]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_236[7]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_236[8]));   // zim_main.vhd(527[3] 814[10])
    SB_DFF data_index_i9 (.Q(data_index[9]), .C(clk_32MHz), .D(data_index_9__N_236[9]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[1]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[2]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[3]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[4]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[5]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[6]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[7]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[8]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[9]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[10]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[11]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[12]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[13]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[14]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n13052), 
            .D(data_idxvec_15__N_246[15]));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21531));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i13157_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9837), .I3(n13093), .O(n15885));   // zim_main.vhd(527[3] 814[10])
    defparam i13157_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_cmd[4]), .I1(comm_cmd[3]), .I2(comm_cmd[6]), 
            .I3(comm_cmd[5]), .O(n21886));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i19803_3_lut_4_lut (.I0(comm_cmd[4]), .I1(comm_cmd[5]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[0]), .O(n22364));
    defparam i19803_3_lut_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21529));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i19773_2_lut_4_lut (.I0(comm_cmd[3]), .I1(comm_cmd[4]), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n22351));
    defparam i19773_2_lut_4_lut.LUT_INIT = 16'h4440;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(n21964), .O(n21965));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13156_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9837), .I3(n13093), .O(n15884));   // zim_main.vhd(527[3] 814[10])
    defparam i13156_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_82 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(n21271));   // zim_main.vhd(527[3] 814[10])
    defparam i1_2_lut_3_lut_adj_82.LUT_INIT = 16'he0e0;
    SB_LUT4 mux_124_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1805));   // zim_main.vhd(582[5] 686[14])
    defparam mux_124_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 i1_2_lut_adj_83 (.I0(DTRIG_N_1182_adj_1549), .I1(adc_state_adj_1829[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21948));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_83.LUT_INIT = 16'h2222;
    SB_LUT4 i17_3_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n10_adj_1602));
    defparam i17_3_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i13155_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9837), .I2(\comm_buf[0] [5]), 
            .I3(n13093), .O(n15883));   // zim_main.vhd(527[3] 814[10])
    defparam i13155_3_lut_4_lut.LUT_INIT = 16'h30aa;
    GND i1 (.Y(VAC_MOSI));
    SB_LUT4 i16252_2_lut_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(CONT_SD));   // zim_main.vhd(374[13:59])
    defparam i16252_2_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20488 (.I0(comm_cmd[2]), .I1(n22262), 
            .I2(n22263), .I3(comm_cmd[3]), .O(n23420));
    defparam comm_cmd_2__bdd_4_lut_20488.LUT_INIT = 16'he4aa;
    SB_LUT4 i13147_3_lut_4_lut (.I0(buf_dds0[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9837), .I3(n13093), .O(n15875));   // zim_main.vhd(527[3] 814[10])
    defparam i13147_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13145_3_lut_4_lut (.I0(buf_dds0[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9837), .I3(n13093), .O(n15873));   // zim_main.vhd(527[3] 814[10])
    defparam i13145_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_84 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21321));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_84.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1778));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21319));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_86 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4_adj_1745));   // zim_main.vhd(729[9:33])
    defparam i1_4_lut_adj_86.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_3_lut_adj_87 (.I0(comm_index[1]), .I1(n4_adj_1745), .I2(comm_length[1]), 
            .I3(VAC_MOSI), .O(n5));   // zim_main.vhd(729[9:33])
    defparam i2_3_lut_adj_87.LUT_INIT = 16'hdede;
    SB_CARRY add_65_10 (.CI(n20629), .I0(data_cntvec[8]), .I1(VAC_MOSI), 
            .CO(n20630));
    SB_LUT4 mux_125_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1779));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12533_2_lut (.I0(ICE_SPI_CE0), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15261));   // zim_main.vhd(529[4] 813[13])
    defparam i12533_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i13143_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9837), .I3(n13093), .O(n15871));   // zim_main.vhd(527[3] 814[10])
    defparam i13143_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_88 (.I0(n21865), .I1(n20959), .I2(n12951), .I3(n4_adj_1718), 
            .O(n21883));
    defparam i1_4_lut_adj_88.LUT_INIT = 16'h8880;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21317));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_90 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21315));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21313));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'h0aca;
    SB_LUT4 add_70_10_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[8]), .I2(VAC_MOSI), 
            .I3(n20644), .O(n485)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_65_9_lut (.I0(VAC_MOSI), .I1(data_cntvec[7]), .I2(VAC_MOSI), 
            .I3(n20628), .O(n435)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_10 (.CI(n20644), .I0(acadc_skipcnt[8]), .I1(VAC_MOSI), 
            .CO(n20645));
    SB_CARRY add_65_2 (.CI(VAC_MOSI), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_823), 
            .CO(n20622));
    SB_LUT4 add_64_11_lut (.I0(VAC_MOSI), .I1(data_count[9]), .I2(VAC_MOSI), 
            .I3(n20621), .O(n415)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_64_5_lut (.I0(VAC_MOSI), .I1(data_count[3]), .I2(VAC_MOSI), 
            .I3(n20615), .O(n421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_64_3_lut (.I0(VAC_MOSI), .I1(data_count[1]), .I2(VAC_MOSI), 
            .I3(n20613), .O(n423)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_65_9 (.CI(n20628), .I0(data_cntvec[7]), .I1(VAC_MOSI), 
            .CO(n20629));
    SB_LUT4 add_70_9_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[7]), .I2(VAC_MOSI), 
            .I3(n20643), .O(n486)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n23420_bdd_4_lut (.I0(n23420), .I1(n22272), .I2(n22271), .I3(comm_cmd[3]), 
            .O(n23423));
    defparam n23420_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19790_2_lut (.I0(comm_state_3__N_484[3]), .I1(comm_state[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n22489));   // zim_main.vhd(529[4] 813[13])
    defparam i19790_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13142_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9837), .I3(n12610), .O(n15870));   // zim_main.vhd(527[3] 814[10])
    defparam i13142_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_123_17_lut (.I0(n14_adj_1607), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n20675), .O(data_idxvec_15__N_246[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_123_16_lut (.I0(n14_adj_1652), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n20674), .O(data_idxvec_15__N_246[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_126_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1728));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_346_Mux_3_i7_4_lut (.I0(n14851), .I1(n22487), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n19241));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_3_i7_4_lut.LUT_INIT = 16'hcafa;
    SB_CARRY add_70_9 (.CI(n20643), .I0(acadc_skipcnt[7]), .I1(VAC_MOSI), 
            .CO(n20644));
    SB_LUT4 add_70_8_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[6]), .I2(VAC_MOSI), 
            .I3(n20642), .O(n487)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_64_10_lut (.I0(VAC_MOSI), .I1(data_count[8]), .I2(VAC_MOSI), 
            .I3(n20620), .O(n416)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_123_16 (.CI(n20674), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n20675));
    SB_CARRY add_64_10 (.CI(n20620), .I0(data_count[8]), .I1(VAC_MOSI), 
            .CO(n20621));
    SB_LUT4 comm_state_3__I_0_346_Mux_3_i15_4_lut (.I0(n19241), .I1(n22489), 
            .I2(comm_state[3]), .I3(n9837), .O(comm_state_3__N_33[3]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i12_4_lut_adj_92 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21311));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'h0aca;
    SB_LUT4 add_123_15_lut (.I0(n14_adj_1660), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n20673), .O(data_idxvec_15__N_246[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13141_3_lut_4_lut (.I0(AMPV_POW), .I1(n9837), .I2(\comm_buf[0] [5]), 
            .I3(n12610), .O(n15869));   // zim_main.vhd(527[3] 814[10])
    defparam i13141_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i13144_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9837), .I3(n13093), .O(n15872));   // zim_main.vhd(527[3] 814[10])
    defparam i13144_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_93 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21011));
    defparam i12_4_lut_adj_93.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_94 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21309));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_95 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21007));
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_126_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1729));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21307));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_97 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21009));
    defparam i12_4_lut_adj_97.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21303));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_99 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21025));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_100 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21013));   // zim_main.vhd(241[9:19])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'h0aca;
    SB_CARRY add_123_15 (.CI(n20673), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n20674));
    SB_LUT4 add_65_8_lut (.I0(VAC_MOSI), .I1(data_cntvec[6]), .I2(VAC_MOSI), 
            .I3(n20627), .O(n436)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_101 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21023));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_102 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21301));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21021));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_104 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21299));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'h0aca;
    SB_CARRY add_65_8 (.CI(n20627), .I0(data_cntvec[6]), .I1(VAC_MOSI), 
            .CO(n20628));
    SB_LUT4 i12_4_lut_adj_105 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21297));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n18885), .I2(n22371), 
            .I3(comm_index[0]), .O(n23414));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_index[1]), .O(n21956));   // zim_main.vhd(558[5] 565[12])
    defparam i1_2_lut_3_lut_4_lut_adj_106.LUT_INIT = 16'h0002;
    SB_LUT4 i13146_3_lut_4_lut (.I0(buf_dds0[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9837), .I3(n13093), .O(n15874));   // zim_main.vhd(527[3] 814[10])
    defparam i13146_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_107 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_index[1]), .O(n29));   // zim_main.vhd(558[5] 565[12])
    defparam i1_2_lut_3_lut_4_lut_adj_107.LUT_INIT = 16'h0200;
    SB_LUT4 i5_4_lut (.I0(wdtick_cnt[21]), .I1(wdtick_cnt[23]), .I2(wdtick_cnt[22]), 
            .I3(wdtick_cnt[19]), .O(n12_adj_1760));
    defparam i5_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i6_4_lut (.I0(wdtick_cnt[11]), .I1(n12_adj_1760), .I2(wdtick_cnt[24]), 
            .I3(wdtick_cnt[14]), .O(n20834));
    defparam i6_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i11_4_lut (.I0(wdtick_cnt[17]), .I1(wdtick_cnt[5]), .I2(wdtick_cnt[2]), 
            .I3(wdtick_cnt[20]), .O(n30_adj_1681));   // zim_main.vhd(403[8:31])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21295));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1781));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15_4_lut_adj_109 (.I0(wdtick_cnt[9]), .I1(n30_adj_1681), .I2(wdtick_cnt[13]), 
            .I3(n20834), .O(n34));   // zim_main.vhd(403[8:31])
    defparam i15_4_lut_adj_109.LUT_INIT = 16'hfeff;
    SB_LUT4 i13_4_lut_adj_110 (.I0(wdtick_cnt[7]), .I1(wdtick_cnt[15]), 
            .I2(wdtick_cnt[16]), .I3(wdtick_cnt[18]), .O(n32));   // zim_main.vhd(403[8:31])
    defparam i13_4_lut_adj_110.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(wdtick_cnt[3]), .I1(wdtick_cnt[4]), .I2(wdtick_cnt[0]), 
            .I3(wdtick_cnt[8]), .O(n33));   // zim_main.vhd(403[8:31])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21293));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1780));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(wdtick_cnt[12]), .I1(wdtick_cnt[10]), 
            .I2(wdtick_cnt[1]), .I3(wdtick_cnt[6]), .O(n31_adj_1680));   // zim_main.vhd(403[8:31])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hfffe;
    SB_LUT4 i16279_2_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n18955));   // zim_main.vhd(582[5] 686[14])
    defparam i16279_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18_4_lut (.I0(n31_adj_1680), .I1(n33), .I2(n32), .I3(n34), 
            .O(n49));   // zim_main.vhd(403[8:31])
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_113 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21291));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n12509), .O(n18363));   // zim_main.vhd(241[9:19])
    defparam i1_2_lut_3_lut_4_lut_adj_114.LUT_INIT = 16'h02ff;
    SB_LUT4 n23414_bdd_4_lut (.I0(n23414), .I1(n18883), .I2(n18882), .I3(comm_index[0]), 
            .O(n23417));
    defparam n23414_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21289));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_116 (.I0(comm_cmd[7]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[7]), .O(n21221));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_117 (.I0(comm_cmd[6]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[6]), .O(n21219));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_118 (.I0(comm_cmd[5]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[5]), .O(n21217));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_119 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21287));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_120 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21285));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut_adj_121 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(VAC_OSR0), .O(n24_adj_1505));
    defparam i1_2_lut_4_lut_adj_121.LUT_INIT = 16'hef00;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20468 (.I0(comm_cmd[2]), .I1(n22142), 
            .I2(n22143), .I3(comm_cmd[3]), .O(n23408));
    defparam comm_cmd_2__bdd_4_lut_20468.LUT_INIT = 16'he4aa;
    SB_LUT4 n23408_bdd_4_lut (.I0(n23408), .I1(n22137), .I2(n22136), .I3(comm_cmd[3]), 
            .O(n23411));
    defparam n23408_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_20463 (.I0(comm_index[1]), .I1(n4_adj_1670), 
            .I2(n22669), .I3(comm_index[2]), .O(n23402));
    defparam comm_index_1__bdd_4_lut_20463.LUT_INIT = 16'he4aa;
    SB_LUT4 n23402_bdd_4_lut (.I0(n23402), .I1(n2_adj_1669), .I2(n1_adj_1668), 
            .I3(comm_index[2]), .O(n23405));
    defparam n23402_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_122 (.I0(comm_cmd[3]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[3]), .O(n21213));   // zim_main.vhd(527[3] 814[10])
    defparam i11_4_lut_adj_122.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_1__bdd_4_lut_20454 (.I0(comm_index[1]), .I1(n4_adj_1673), 
            .I2(n22342), .I3(comm_index[2]), .O(n23396));
    defparam comm_index_1__bdd_4_lut_20454.LUT_INIT = 16'he4aa;
    SB_LUT4 n23396_bdd_4_lut (.I0(n23396), .I1(n2_adj_1672), .I2(n1_adj_1671), 
            .I3(comm_index[2]), .O(n23399));
    defparam n23396_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_20449 (.I0(comm_index[1]), .I1(n4_adj_1676), 
            .I2(n22341), .I3(comm_index[2]), .O(n23390));
    defparam comm_index_1__bdd_4_lut_20449.LUT_INIT = 16'he4aa;
    SB_LUT4 n23390_bdd_4_lut (.I0(n23390), .I1(n2_adj_1675), .I2(n1_adj_1674), 
            .I3(comm_index[2]), .O(n23393));
    defparam n23390_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_123 (.I0(comm_cmd[2]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[2]), .O(n21211));   // zim_main.vhd(527[3] 814[10])
    defparam i11_4_lut_adj_123.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_124 (.I0(comm_cmd[1]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[1]), .O(n21209));   // zim_main.vhd(527[3] 814[10])
    defparam i11_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_125 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21283));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 i3923_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(comm_index[1]), .O(comm_index_2__N_511[1]));   // zim_main.vhd(710[5] 720[12])
    defparam i3923_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i50_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n46));   // zim_main.vhd(745[5] 800[14])
    defparam i50_4_lut.LUT_INIT = 16'h18dc;
    SB_LUT4 i6984_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9714));   // zim_main.vhd(529[4] 813[13])
    defparam i6984_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19794_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[5]), .I2(n46), 
            .I3(comm_cmd[1]), .O(n22353));   // zim_main.vhd(745[5] 800[14])
    defparam i19794_4_lut.LUT_INIT = 16'h3031;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20473 (.I0(comm_cmd[1]), .I1(buf_adcdata_vdc[21]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[0]), .O(n23384));
    defparam comm_cmd_1__bdd_4_lut_20473.LUT_INIT = 16'he4aa;
    SB_LUT4 n23384_bdd_4_lut (.I0(n23384), .I1(buf_cfgRTD[5]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[0]), .O(n23387));
    defparam n23384_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFER wdtick_cnt_3783_3784__i2 (.Q(wdtick_cnt[1]), .C(DDS_MCLK1), 
            .E(n12366), .D(n156), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i3 (.Q(wdtick_cnt[2]), .C(DDS_MCLK1), 
            .E(n12366), .D(n155), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i4 (.Q(wdtick_cnt[3]), .C(DDS_MCLK1), 
            .E(n12366), .D(n154), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i5 (.Q(wdtick_cnt[4]), .C(DDS_MCLK1), 
            .E(n12366), .D(n153), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i6 (.Q(wdtick_cnt[5]), .C(DDS_MCLK1), 
            .E(n12366), .D(n152), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i7 (.Q(wdtick_cnt[6]), .C(DDS_MCLK1), 
            .E(n12366), .D(n151), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i8 (.Q(wdtick_cnt[7]), .C(DDS_MCLK1), 
            .E(n12366), .D(n150), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i9 (.Q(wdtick_cnt[8]), .C(DDS_MCLK1), 
            .E(n12366), .D(n149), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i10 (.Q(wdtick_cnt[9]), .C(DDS_MCLK1), 
            .E(n12366), .D(n148), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i11 (.Q(wdtick_cnt[10]), .C(DDS_MCLK1), 
            .E(n12366), .D(n147), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i12 (.Q(wdtick_cnt[11]), .C(DDS_MCLK1), 
            .E(n12366), .D(n146), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i13 (.Q(wdtick_cnt[12]), .C(DDS_MCLK1), 
            .E(n12366), .D(n145), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i14 (.Q(wdtick_cnt[13]), .C(DDS_MCLK1), 
            .E(n12366), .D(n144), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i15 (.Q(wdtick_cnt[14]), .C(DDS_MCLK1), 
            .E(n12366), .D(n143), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i16 (.Q(wdtick_cnt[15]), .C(DDS_MCLK1), 
            .E(n12366), .D(n142), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i17 (.Q(wdtick_cnt[16]), .C(DDS_MCLK1), 
            .E(n12366), .D(n141), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i18 (.Q(wdtick_cnt[17]), .C(DDS_MCLK1), 
            .E(n12366), .D(n140), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i19 (.Q(wdtick_cnt[18]), .C(DDS_MCLK1), 
            .E(n12366), .D(n139), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i20 (.Q(wdtick_cnt[19]), .C(DDS_MCLK1), 
            .E(n12366), .D(n138), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i21 (.Q(wdtick_cnt[20]), .C(DDS_MCLK1), 
            .E(n12366), .D(n137), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i22 (.Q(wdtick_cnt[21]), .C(DDS_MCLK1), 
            .E(n12366), .D(n136), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i23 (.Q(wdtick_cnt[22]), .C(DDS_MCLK1), 
            .E(n12366), .D(n135), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i24 (.Q(wdtick_cnt[23]), .C(DDS_MCLK1), 
            .E(n12366), .D(n134), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3783_3784__i25 (.Q(wdtick_cnt[24]), .C(DDS_MCLK1), 
            .E(n12366), .D(n133), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i2 (.Q(secclk_cnt[1]), .C(DDS_MCLK1), 
            .D(n119), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i3 (.Q(secclk_cnt[2]), .C(DDS_MCLK1), 
            .D(n118), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i16282_2_lut (.I0(comm_cmd[4]), .I1(comm_cmd[5]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n7148));   // zim_main.vhd(582[5] 686[14])
    defparam i16282_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_126 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21281));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_127 (.I0(cmd_rdadctmp_adj_1830[12]), .I1(cmd_rdadctmp_adj_1830[11]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21581));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 acadc_rst_I_0_1_lut (.I0(acadc_rst), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(AC_ADC_SYNC));   // zim_main.vhd(347[18:31])
    defparam acadc_rst_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mux_124_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30));   // zim_main.vhd(582[5] 686[14])
    defparam mux_124_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 i1_2_lut_3_lut_adj_128 (.I0(comm_state[1]), .I1(comm_state[0]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n11280));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_3_lut_adj_128.LUT_INIT = 16'hfefe;
    SB_LUT4 i3915_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(ICE_SPI_CE0), 
            .I3(VAC_MOSI), .O(comm_index_2__N_511[0]));   // zim_main.vhd(710[5] 720[12])
    defparam i3915_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_DFFSR secclk_cnt_3785_3786__i4 (.Q(secclk_cnt[3]), .C(DDS_MCLK1), 
            .D(n117), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i5 (.Q(secclk_cnt[4]), .C(DDS_MCLK1), 
            .D(n116), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i6 (.Q(secclk_cnt[5]), .C(DDS_MCLK1), 
            .D(n115), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i7 (.Q(secclk_cnt[6]), .C(DDS_MCLK1), 
            .D(n114), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i8 (.Q(secclk_cnt[7]), .C(DDS_MCLK1), 
            .D(n113), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i9 (.Q(secclk_cnt[8]), .C(DDS_MCLK1), 
            .D(n112_adj_1581), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i10 (.Q(secclk_cnt[9]), .C(DDS_MCLK1), 
            .D(n111_adj_1582), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i11 (.Q(secclk_cnt[10]), .C(DDS_MCLK1), 
            .D(n110), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i12 (.Q(secclk_cnt[11]), .C(DDS_MCLK1), 
            .D(n109), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i13 (.Q(secclk_cnt[12]), .C(DDS_MCLK1), 
            .D(n108), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i14 (.Q(secclk_cnt[13]), .C(DDS_MCLK1), 
            .D(n107), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i15 (.Q(secclk_cnt[14]), .C(DDS_MCLK1), 
            .D(n106), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i16 (.Q(secclk_cnt[15]), .C(DDS_MCLK1), 
            .D(n105), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i17 (.Q(secclk_cnt[16]), .C(DDS_MCLK1), 
            .D(n104), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i18 (.Q(secclk_cnt[17]), .C(DDS_MCLK1), 
            .D(n103), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i19 (.Q(secclk_cnt[18]), .C(DDS_MCLK1), 
            .D(n102), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i20 (.Q(secclk_cnt[19]), .C(DDS_MCLK1), 
            .D(n101), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i21 (.Q(secclk_cnt[20]), .C(DDS_MCLK1), 
            .D(n100), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i22 (.Q(secclk_cnt[21]), .C(DDS_MCLK1), 
            .D(n99), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3785_3786__i23 (.Q(secclk_cnt[22]), .C(DDS_MCLK1), 
            .D(n98), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_129 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21279));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3792__i1 (.Q(dds0_mclkcnt[1]), .C(DDS_MCLK1), 
            .D(n44));   // zim_main.vhd(438[4] 441[11])
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_adj_1829[0]), .I1(VAC_SCLK), .I2(DTRIG_N_1182_adj_1549), 
            .I3(adc_state_adj_1829[1]), .O(n21457));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc4d8;
    SB_LUT4 i19746_3_lut (.I0(n21920), .I1(n18955), .I2(comm_cmd[4]), 
            .I3(VAC_MOSI), .O(n22356));
    defparam i19746_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_130 (.I0(comm_cmd[4]), .I1(n22353), .I2(n22354), 
            .I3(comm_cmd[6]), .O(comm_state_3__N_484[3]));   // zim_main.vhd(745[5] 800[14])
    defparam i1_4_lut_adj_130.LUT_INIT = 16'ha088;
    SB_LUT4 comm_index_1__bdd_4_lut_20444 (.I0(comm_index[1]), .I1(n18853), 
            .I2(n22346), .I3(comm_index[0]), .O(n23378));
    defparam comm_index_1__bdd_4_lut_20444.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_131 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21277));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i20000_4_lut (.I0(n14851), .I1(n7148), .I2(n22356), .I3(comm_cmd[6]), 
            .O(n22352));
    defparam i20000_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i22_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n7_adj_1687));
    defparam i22_3_lut_4_lut.LUT_INIT = 16'h02f0;
    SB_LUT4 n23378_bdd_4_lut (.I0(n23378), .I1(n18851), .I2(n18850), .I3(comm_index[0]), 
            .O(n23381));
    defparam n23378_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFN dds0_mclkcnt_i7_3792__i2 (.Q(dds0_mclkcnt[2]), .C(DDS_MCLK1), 
            .D(n43));   // zim_main.vhd(438[4] 441[11])
    SB_DFFN dds0_mclkcnt_i7_3792__i3 (.Q(dds0_mclkcnt[3]), .C(DDS_MCLK1), 
            .D(n42));   // zim_main.vhd(438[4] 441[11])
    SB_DFFN dds0_mclkcnt_i7_3792__i4 (.Q(dds0_mclkcnt[4]), .C(DDS_MCLK1), 
            .D(n41));   // zim_main.vhd(438[4] 441[11])
    SB_DFFN dds0_mclkcnt_i7_3792__i5 (.Q(dds0_mclkcnt[5]), .C(DDS_MCLK1), 
            .D(n40_adj_1586));   // zim_main.vhd(438[4] 441[11])
    SB_DFFN dds0_mclkcnt_i7_3792__i6 (.Q(dds0_mclkcnt[6]), .C(DDS_MCLK1), 
            .D(n39));   // zim_main.vhd(438[4] 441[11])
    SB_DFFN dds0_mclkcnt_i7_3792__i7 (.Q(dds0_mclkcnt[7]), .C(DDS_MCLK1), 
            .D(n38));   // zim_main.vhd(438[4] 441[11])
    SB_DFFSR clk_cnt_3781_3782__i2 (.Q(clk_cnt[1]), .C(DDS_MCLK1), .D(n14_adj_1587), 
            .R(n18996));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i1_4_lut_adj_132 (.I0(comm_state[3]), .I1(n9714), .I2(n22352), 
            .I3(comm_state[2]), .O(n11_adj_1585));
    defparam i1_4_lut_adj_132.LUT_INIT = 16'hfaee;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd_rdadctmp_adj_1852[22]), .I1(cmd_rdadctmp_adj_1852[21]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21175));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_1__bdd_4_lut_20434 (.I0(comm_index[1]), .I1(n18818), 
            .I2(n22338), .I3(comm_index[0]), .O(n23372));
    defparam comm_index_1__bdd_4_lut_20434.LUT_INIT = 16'he4aa;
    SB_LUT4 i19807_4_lut (.I0(comm_cmd[3]), .I1(comm_cmd[0]), .I2(n8_adj_1782), 
            .I3(comm_cmd[1]), .O(n22375));   // zim_main.vhd(527[3] 814[10])
    defparam i19807_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i12_4_lut_adj_134 (.I0(comm_length[2]), .I1(n22375), .I2(n12966), 
            .I3(n11_adj_1585), .O(n21099));   // zim_main.vhd(527[3] 814[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'hcaaa;
    SB_LUT4 i12_4_lut_adj_135 (.I0(cmd_rdadctmp_adj_1852[21]), .I1(cmd_rdadctmp_adj_1852[20]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21173));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp_adj_1852[20]), .I1(cmd_rdadctmp_adj_1852[19]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21171));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1852[19]), .I1(cmd_rdadctmp_adj_1852[18]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21169));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1852[18]), .I1(cmd_rdadctmp_adj_1852[17]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21167));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1852[17]), .I1(cmd_rdadctmp_adj_1852[16]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21165));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1852[16]), .I1(cmd_rdadctmp_adj_1852[15]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21163));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1852[15]), .I1(cmd_rdadctmp_adj_1852[14]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21161));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'h0aca;
    SB_LUT4 i13762_4_lut (.I0(n18363), .I1(buf_dds1[15]), .I2(\comm_buf[0] [7]), 
            .I3(n12509), .O(n16490));   // zim_main.vhd(527[3] 814[10])
    defparam i13762_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1852[14]), .I1(cmd_rdadctmp_adj_1852[13]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21159));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'h0aca;
    SB_LUT4 n23372_bdd_4_lut (.I0(n23372), .I1(n18816), .I2(n18815), .I3(comm_index[0]), 
            .O(n23375));
    defparam n23372_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20439 (.I0(comm_cmd[1]), .I1(n19_adj_1765), 
            .I2(n20_adj_1766), .I3(comm_cmd[2]), .O(n23366));
    defparam comm_cmd_1__bdd_4_lut_20439.LUT_INIT = 16'he4aa;
    SB_LUT4 n23366_bdd_4_lut (.I0(n23366), .I1(n17_adj_1764), .I2(n16_adj_1763), 
            .I3(comm_cmd[2]), .O(n23369));
    defparam n23366_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_143 (.I0(n21865), .I1(n12064), .I2(n12951), .I3(n22033), 
            .O(n21885));
    defparam i1_4_lut_adj_143.LUT_INIT = 16'h8880;
    SB_LUT4 i13765_4_lut (.I0(n18363), .I1(buf_dds1[14]), .I2(\comm_buf[0] [6]), 
            .I3(n12509), .O(n16493));   // zim_main.vhd(527[3] 814[10])
    defparam i13765_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i2_2_lut_3_lut_adj_144 (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(n12035));
    defparam i2_2_lut_3_lut_adj_144.LUT_INIT = 16'hfdfd;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp_adj_1852[13]), .I1(cmd_rdadctmp_adj_1852[12]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21157));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd_rdadctmp_adj_1852[12]), .I1(cmd_rdadctmp_adj_1852[11]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21155));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'h0aca;
    SB_LUT4 i13770_4_lut (.I0(n18363), .I1(buf_dds1[12]), .I2(\comm_buf[0] [4]), 
            .I3(n12509), .O(n16498));   // zim_main.vhd(527[3] 814[10])
    defparam i13770_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_147 (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21908));
    defparam i1_2_lut_adj_147.LUT_INIT = 16'h2222;
    SB_LUT4 i13773_4_lut (.I0(n18363), .I1(buf_dds1[11]), .I2(\comm_buf[0] [3]), 
            .I3(n12509), .O(n16501));   // zim_main.vhd(527[3] 814[10])
    defparam i13773_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 mux_134_Mux_7_i1_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_65_7_lut (.I0(VAC_MOSI), .I1(data_cntvec[5]), .I2(VAC_MOSI), 
            .I3(n20626), .O(n437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_123_14_lut (.I0(n14_adj_1653), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n20672), .O(data_idxvec_15__N_246[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_14_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_134_Mux_7_i2_3_lut (.I0(\comm_buf[2] [7]), .I1(\comm_buf[3] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1663));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_7_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut_20429 (.I0(comm_index[1]), .I1(n4_adj_1664), 
            .I2(n22331), .I3(comm_index[2]), .O(n23360));
    defparam comm_index_1__bdd_4_lut_20429.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd_rdadctmp_adj_1852[11]), .I1(cmd_rdadctmp_adj_1852[10]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21153));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'h0aca;
    SB_LUT4 i462_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n2562));   // zim_main.vhd(558[5] 565[12])
    defparam i462_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_149 (.I0(cmd_rdadctmp_adj_1852[10]), .I1(cmd_rdadctmp_adj_1852[9]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21151));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'h0aca;
    SB_LUT4 i19758_2_lut (.I0(\comm_buf[6] [7]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22331));
    defparam i19758_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_123_14 (.CI(n20672), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n20673));
    SB_LUT4 i1_4_lut_4_lut_adj_150 (.I0(adc_state_adj_1825[0]), .I1(IAC_SCLK), 
            .I2(DTRIG_N_1182), .I3(adc_state_adj_1825[1]), .O(n21453));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_150.LUT_INIT = 16'hc4d8;
    SB_LUT4 i13776_4_lut (.I0(n18363), .I1(buf_dds1[10]), .I2(\comm_buf[0] [2]), 
            .I3(n12509), .O(n16504));   // zim_main.vhd(527[3] 814[10])
    defparam i13776_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 n23360_bdd_4_lut (.I0(n23360), .I1(n2_adj_1663), .I2(n1), 
            .I3(comm_index[2]), .O(n23363));
    defparam n23360_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13127_3_lut_4_lut (.I0(dds_state_adj_1809[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1809[1]), .I3(dds_state_adj_1809[0]), .O(n15855));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13127_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 mux_134_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1664));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20047_4_lut (.I0(ICE_SPI_CE0), .I1(comm_state[1]), .I2(n2562), 
            .I3(comm_state[2]), .O(n22340));
    defparam i20047_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp_adj_1852[9]), .I1(cmd_rdadctmp_adj_1852[8]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21149));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp_adj_1852[8]), .I1(cmd_rdadctmp_adj_1852[7]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21147));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_153 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21305));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20424 (.I0(comm_cmd[1]), .I1(n19_adj_1729), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n23354));
    defparam comm_cmd_1__bdd_4_lut_20424.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1852[7]), .I1(cmd_rdadctmp_adj_1852[6]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21145));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_155 (.I0(cmd_rdadctmp_adj_1852[6]), .I1(cmd_rdadctmp_adj_1852[5]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21143));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'h0aca;
    SB_CARRY add_64_2 (.CI(VAC_MOSI), .I0(data_count[0]), .I1(iac_raw_buf_N_823), 
            .CO(n20613));
    SB_LUT4 i20168_4_lut (.I0(comm_state[3]), .I1(n22339), .I2(n22340), 
            .I3(comm_state[0]), .O(n14_adj_1593));
    defparam i20168_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp_adj_1852[5]), .I1(cmd_rdadctmp_adj_1852[4]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21141));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'h0aca;
    SB_LUT4 i13780_4_lut (.I0(n18363), .I1(buf_dds1[9]), .I2(\comm_buf[0] [1]), 
            .I3(n12509), .O(n16508));   // zim_main.vhd(527[3] 814[10])
    defparam i13780_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13783_4_lut (.I0(n18363), .I1(buf_dds1[8]), .I2(\comm_buf[0] [0]), 
            .I3(n12509), .O(n16511));   // zim_main.vhd(527[3] 814[10])
    defparam i13783_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13126_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15854));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13126_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 n23354_bdd_4_lut (.I0(n23354), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1728), 
            .I3(comm_cmd[2]), .O(n23357));
    defparam n23354_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp_adj_1852[4]), .I1(cmd_rdadctmp_adj_1852[3]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21139));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_346_Mux_1_i15_4_lut (.I0(n23345), .I1(n8_adj_1659), 
            .I2(comm_state[3]), .I3(n9837), .O(comm_state_3__N_33[1]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_123_13_lut (.I0(n14_adj_1654), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n20671), .O(data_idxvec_15__N_246[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_13_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_64_9_lut (.I0(VAC_MOSI), .I1(data_count[7]), .I2(VAC_MOSI), 
            .I3(n20619), .O(n417)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_123_13 (.CI(n20671), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n20672));
    SB_LUT4 add_123_12_lut (.I0(n14_adj_1655), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n20670), .O(data_idxvec_15__N_246[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13786_4_lut (.I0(n18363), .I1(buf_dds1[7]), .I2(\comm_buf[1] [7]), 
            .I3(n12509), .O(n16514));   // zim_main.vhd(527[3] 814[10])
    defparam i13786_4_lut.LUT_INIT = 16'ha088;
    SB_CARRY add_123_12 (.CI(n20670), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n20671));
    SB_CARRY add_70_8 (.CI(n20642), .I0(acadc_skipcnt[6]), .I1(VAC_MOSI), 
            .CO(n20643));
    SB_LUT4 i13789_4_lut (.I0(n18363), .I1(buf_dds1[6]), .I2(\comm_buf[1] [6]), 
            .I3(n12509), .O(n16517));   // zim_main.vhd(527[3] 814[10])
    defparam i13789_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 add_123_11_lut (.I0(n14_adj_1656), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n20669), .O(data_idxvec_15__N_246[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i2_2_lut_4_lut (.I0(n2562), .I1(comm_cmd[7]), .I2(comm_index[1]), 
            .I3(comm_state[1]), .O(n7_adj_1757));   // zim_main.vhd(527[3] 814[10])
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i13794_4_lut (.I0(n18363), .I1(buf_dds1[4]), .I2(\comm_buf[1] [4]), 
            .I3(n12509), .O(n16522));   // zim_main.vhd(527[3] 814[10])
    defparam i13794_4_lut.LUT_INIT = 16'ha088;
    SB_CARRY add_123_11 (.CI(n20669), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n20670));
    SB_LUT4 comm_cmd_0__bdd_4_lut_20478 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n23348));
    defparam comm_cmd_0__bdd_4_lut_20478.LUT_INIT = 16'he4aa;
    SB_CARRY add_65_7 (.CI(n20626), .I0(data_cntvec[5]), .I1(VAC_MOSI), 
            .CO(n20627));
    SB_LUT4 n23348_bdd_4_lut (.I0(n23348), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n23351));
    defparam n23348_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_123_10_lut (.I0(n14_adj_1608), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n20668), .O(data_idxvec_15__N_246[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_123_10 (.CI(n20668), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n20669));
    SB_LUT4 add_123_9_lut (.I0(n14_adj_1609), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n20667), .O(data_idxvec_15__N_246[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_70_7_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[5]), .I2(VAC_MOSI), 
            .I3(n20641), .O(n488)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_65_6_lut (.I0(VAC_MOSI), .I1(data_cntvec[4]), .I2(VAC_MOSI), 
            .I3(n20625), .O(n438)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_index[0]), .I2(comm_state[2]), 
            .I3(comm_index[2]), .O(n8_adj_1755));   // zim_main.vhd(527[3] 814[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h1000;
    SB_CARRY add_123_9 (.CI(n20667), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n20668));
    SB_LUT4 i12_4_lut_adj_158 (.I0(cmd_rdadctmp_adj_1852[3]), .I1(cmd_rdadctmp_adj_1852[2]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21137));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21527));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_126_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1733));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21521));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_161 (.I0(n18363), .I1(buf_dds1[2]), .I2(\comm_buf[1] [2]), 
            .I3(n12509), .O(n16528));   // zim_main.vhd(241[9:19])
    defparam i1_4_lut_adj_161.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21519));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_163 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21517));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1852[2]), .I1(cmd_rdadctmp_adj_1852[1]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21135));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21515));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n22321), .I2(n15261), 
            .I3(comm_state[2]), .O(n23342));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_166 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21513));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'hca0a;
    SB_LUT4 n23342_bdd_4_lut (.I0(n23342), .I1(n2), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n23345));
    defparam n23342_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20414 (.I0(comm_cmd[1]), .I1(n26_adj_1730), 
            .I2(n22313), .I3(comm_cmd[2]), .O(n23336));
    defparam comm_cmd_1__bdd_4_lut_20414.LUT_INIT = 16'he4aa;
    SB_LUT4 i13122_3_lut_4_lut (.I0(req_data_cnt[0]), .I1(n9837), .I2(\comm_buf[1] [0]), 
            .I3(n13171), .O(n15850));   // zim_main.vhd(527[3] 814[10])
    defparam i13122_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 n23336_bdd_4_lut (.I0(n23336), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n23339));
    defparam n23336_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13121_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(n9837), .I2(\comm_buf[1] [0]), 
            .I3(n13141), .O(n15849));   // zim_main.vhd(527[3] 814[10])
    defparam i13121_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 add_123_8_lut (.I0(n14_adj_1610), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n20666), .O(data_idxvec_15__N_246[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_8_lut.LUT_INIT = 16'hA3AC;
    SB_DFF comm_test_buf_24_i23 (.Q(comm_test_buf_24[23]), .C(clk_32MHz), 
           .D(n15930));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i22 (.Q(comm_test_buf_24[22]), .C(clk_32MHz), 
           .D(n15929));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i21 (.Q(comm_test_buf_24[21]), .C(clk_32MHz), 
           .D(n15928));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i20 (.Q(comm_test_buf_24[20]), .C(clk_32MHz), 
           .D(n15927));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i19 (.Q(comm_test_buf_24[19]), .C(clk_32MHz), 
           .D(n15926));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i18 (.Q(comm_test_buf_24[18]), .C(clk_32MHz), 
           .D(n15925));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i17 (.Q(comm_test_buf_24[17]), .C(clk_32MHz), 
           .D(n15924));   // zim_main.vhd(527[3] 814[10])
    SB_DFF comm_test_buf_24_i16 (.Q(comm_test_buf_24[16]), .C(clk_32MHz), 
           .D(n15923));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15922));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15921));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15920));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15919));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15918));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15917));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15916));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15915));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15914));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15913));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15912));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15911));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15910));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY add_123_8 (.CI(n20666), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n20667));
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15909));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_123_7_lut (.I0(n14_adj_1661), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n20665), .O(data_idxvec_15__N_246[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_7_lut.LUT_INIT = 16'hA3AC;
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15908));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_167 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21511));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15907));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13119_3_lut_4_lut (.I0(buf_dds0[0]), .I1(n9837), .I2(\comm_buf[1] [0]), 
            .I3(n13093), .O(n15847));   // zim_main.vhd(527[3] 814[10])
    defparam i13119_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15906));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15905));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15904));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15903));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15902));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_168 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21509));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i14917_4_lut (.I0(eis_start), .I1(n16_adj_1683), .I2(eis_state[2]), 
            .I3(n31), .O(n17642));   // zim_main.vhd(287[9:18])
    defparam i14917_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i12_4_lut_adj_169 (.I0(cmd_rdadctmp_adj_1852[1]), .I1(cmd_rdadctmp_adj_1852[0]), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21133));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_126_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1734));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20409 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n23324));
    defparam comm_cmd_0__bdd_4_lut_20409.LUT_INIT = 16'he4aa;
    SB_CARRY add_64_9 (.CI(n20619), .I0(data_count[7]), .I1(VAC_MOSI), 
            .CO(n20620));
    SB_CARRY add_123_7 (.CI(n20665), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n20666));
    SB_LUT4 i12_4_lut_adj_170 (.I0(cmd_rdadctmp_adj_1830[31]), .I1(cmd_rdadctmp_adj_1830[30]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21619));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15901));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_123_6_lut (.I0(n14_adj_1611), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n20664), .O(data_idxvec_15__N_246[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_6_lut.LUT_INIT = 16'hA3AC;
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15900));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY add_123_6 (.CI(n20664), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n20665));
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15899));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15898));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i20126_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(VAC_MOSI), .O(n23053));
    defparam i20126_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i19311_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n22238));
    defparam i19311_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i19313_4_lut (.I0(n22238), .I1(n23053), .I2(comm_state[2]), 
            .I3(n15261), .O(n22240));
    defparam i19313_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_126_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1746));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19221_3_lut (.I0(n16_adj_1746), .I1(buf_adcdata_iac[10]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22148));
    defparam i19221_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_346_Mux_0_i15_3_lut (.I0(n22240), .I1(n9837), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(comm_state_3__N_33[0]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12_4_lut_adj_171 (.I0(cmd_rdadctmp_adj_1830[30]), .I1(cmd_rdadctmp_adj_1830[29]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21617));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_CARRY add_70_7 (.CI(n20641), .I0(acadc_skipcnt[5]), .I1(VAC_MOSI), 
            .CO(n20642));
    SB_LUT4 i1_4_lut_adj_172 (.I0(n18363), .I1(buf_dds1[1]), .I2(\comm_buf[1] [1]), 
            .I3(n12509), .O(n16_adj_1682));   // zim_main.vhd(241[9:19])
    defparam i1_4_lut_adj_172.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_173 (.I0(cmd_rdadctmp_adj_1830[29]), .I1(cmd_rdadctmp_adj_1830[28]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21615));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_173.LUT_INIT = 16'hca0a;
    SB_LUT4 i7121_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9837));   // zim_main.vhd(529[4] 813[13])
    defparam i7121_2_lut.LUT_INIT = 16'heeee;
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15897));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15896));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15895));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY add_65_6 (.CI(n20625), .I0(data_cntvec[4]), .I1(VAC_MOSI), 
            .CO(n20626));
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15894));   // zim_main.vhd(527[3] 814[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15893));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_174 (.I0(cmd_rdadctmp_adj_1830[28]), .I1(cmd_rdadctmp_adj_1830[27]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21613));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'hca0a;
    SB_LUT4 n23324_bdd_4_lut (.I0(n23324), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n23327));
    defparam n23324_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_126_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1747));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19222_3_lut (.I0(n19_adj_1747), .I1(buf_readRTD[2]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22149));
    defparam i19222_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20400 (.I0(comm_cmd[1]), .I1(n26_adj_1735), 
            .I2(n22301), .I3(comm_cmd[2]), .O(n23318));
    defparam comm_cmd_1__bdd_4_lut_20400.LUT_INIT = 16'he4aa;
    SB_LUT4 add_64_8_lut (.I0(VAC_MOSI), .I1(data_count[6]), .I2(VAC_MOSI), 
            .I3(n20618), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_123_5_lut (.I0(n14_adj_1662), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n20663), .O(data_idxvec_15__N_246[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_65_5_lut (.I0(VAC_MOSI), .I1(data_cntvec[3]), .I2(VAC_MOSI), 
            .I3(n20624), .O(n439)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_123_5 (.CI(n20663), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n20664));
    SB_LUT4 add_70_6_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[4]), .I2(VAC_MOSI), 
            .I3(n20640), .O(n489)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_64_8 (.CI(n20618), .I0(data_count[6]), .I1(VAC_MOSI), 
            .CO(n20619));
    SB_LUT4 add_123_4_lut (.I0(n14_adj_1612), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n20662), .O(data_idxvec_15__N_246[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_175 (.I0(cmd_rdadctmp_adj_1830[27]), .I1(cmd_rdadctmp_adj_1830[26]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21611));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'hca0a;
    SB_CARRY add_123_4 (.CI(n20662), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n20663));
    SB_LUT4 i12_4_lut_adj_176 (.I0(cmd_rdadctmp_adj_1830[26]), .I1(cmd_rdadctmp_adj_1830[25]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21609));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'hca0a;
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15892));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_123_3_lut (.I0(n14_adj_1613), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n20661), .O(data_idxvec_15__N_246[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_3_lut.LUT_INIT = 16'hA3AC;
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15891));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_126_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1748));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_123_3 (.CI(n20661), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n20662));
    SB_LUT4 i12_4_lut_adj_177 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13584), 
            .I3(n21989), .O(n21331));
    defparam i12_4_lut_adj_177.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_178 (.I0(cmd_rdadctmp_adj_1830[25]), .I1(cmd_rdadctmp_adj_1830[24]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21607));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 i19225_4_lut (.I0(n26_adj_1748), .I1(buf_data_vac[21]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n22152));
    defparam i19225_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_6_i16_3_lut (.I0(buf_dds0[14]), .I1(buf_dds1[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1763));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_123_2_lut (.I0(n14_adj_1606), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_246[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_123_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_70_6 (.CI(n20640), .I0(acadc_skipcnt[4]), .I1(VAC_MOSI), 
            .CO(n20641));
    SB_LUT4 mux_125_Mux_6_i17_3_lut (.I0(VAC_FLT0), .I1(buf_adcdata_iac[22]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1764));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[22]), .I1(buf_adcdata_vdc[22]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1765));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16113_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[4] [0]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18815));   // zim_main.vhd(247[9:19])
    defparam i16113_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_179 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13584), 
            .I3(n21989), .O(n21401));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 i19224_3_lut (.I0(acadc_skipCount[2]), .I1(req_data_cnt[2]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n22151));
    defparam i19224_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16114_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[6] [0]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18816));   // zim_main.vhd(247[9:19])
    defparam i16114_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_180 (.I0(cmd_rdadctmp_adj_1830[24]), .I1(cmd_rdadctmp_adj_1830[23]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21605));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i19341_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22268));
    defparam i19341_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_181 (.I0(cmd_rdadctmp_adj_1830[23]), .I1(cmd_rdadctmp_adj_1830[22]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21603));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 i19343_4_lut (.I0(n22268), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n22270));
    defparam i19343_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_182 (.I0(cmd_rdadctmp_adj_1830[22]), .I1(cmd_rdadctmp_adj_1830[21]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21601));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i13159_3_lut (.I0(buf_cfgRTD[2]), .I1(n14_adj_1655), .I2(n13129), 
            .I3(VAC_MOSI), .O(n15887));   // zim_main.vhd(527[3] 814[10])
    defparam i13159_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19751_2_lut (.I0(buf_data_vac[23]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22300));
    defparam i19751_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_64_4_lut (.I0(VAC_MOSI), .I1(data_count[2]), .I2(VAC_MOSI), 
            .I3(n20614), .O(n422)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_126_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1740));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19116_4_lut (.I0(acadc_rst), .I1(eis_state[0]), .I2(eis_state[2]), 
            .I3(eis_state[1]), .O(n22041));
    defparam i19116_4_lut.LUT_INIT = 16'heefa;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1830[21]), .I1(cmd_rdadctmp_adj_1830[20]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21599));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_184 (.I0(cmd_rdadctmp_adj_1830[20]), .I1(cmd_rdadctmp_adj_1830[19]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21597));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9837), .I2(\comm_buf[0] [5]), 
            .I3(n13129), .O(n21075));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 add_70_5_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[3]), .I2(VAC_MOSI), 
            .I3(n20639), .O(n490)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_123_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n20661));
    SB_LUT4 i12_4_lut_adj_185 (.I0(cmd_rdadctmp_adj_1830[19]), .I1(cmd_rdadctmp_adj_1830[18]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21595));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 add_122_11_lut (.I0(data_index[9]), .I1(data_index[9]), .I2(n11254), 
            .I3(n20660), .O(n7_adj_1614)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_186 (.I0(cmd_rdadctmp_adj_1830[18]), .I1(cmd_rdadctmp_adj_1830[17]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21593));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'hca0a;
    SB_LUT4 i20024_2_lut (.I0(adc_state_adj_1851[3]), .I1(adc_state_adj_1851[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n22388));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i20024_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_187 (.I0(VDC_SCLK), .I1(n22388), .I2(n12356), 
            .I3(adc_state_adj_1851[1]), .O(n21375));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp_adj_1830[17]), .I1(cmd_rdadctmp_adj_1830[16]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21591));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_LUT4 i6571_3_lut (.I0(\comm_buf[0] [1]), .I1(data_index[9]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1615));   // zim_main.vhd(529[4] 813[13])
    defparam i6571_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_189 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21403));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'h0aca;
    SB_LUT4 i19938_2_lut (.I0(\comm_buf[3] [0]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22338));
    defparam i19938_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_state_3__I_0_358_Mux_9_i15_4_lut (.I0(n7_adj_1614), .I1(n8_adj_1615), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[9]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_9_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i16116_3_lut (.I0(\comm_buf[1] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18818));   // zim_main.vhd(247[9:19])
    defparam i16116_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(cmd_rdadctmp_adj_1830[16]), .I1(cmd_rdadctmp_adj_1830[15]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21589));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_191 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n12352), .I3(adc_state_adj_1851[2]), .O(n21369));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'h0aca;
    SB_LUT4 i17899_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14_adj_1587));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17899_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_192 (.I0(cmd_rdadctmp_adj_1830[15]), .I1(cmd_rdadctmp_adj_1830[14]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21587));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'hca0a;
    SB_LUT4 i16149_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[4] [3]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18850));   // zim_main.vhd(247[9:19])
    defparam i16149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16150_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[6] [3]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18851));   // zim_main.vhd(247[9:19])
    defparam i16150_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_193 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21968));
    defparam i1_2_lut_adj_193.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12699_2_lut (.I0(n12394), .I1(eis_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15431));   // zim_main.vhd(447[3] 522[10])
    defparam i12699_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_194 (.I0(cmd_rdadctmp_adj_1830[14]), .I1(cmd_rdadctmp_adj_1830[13]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21585));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_195 (.I0(cmd_rdadctmp_adj_1830[13]), .I1(cmd_rdadctmp_adj_1830[12]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21583));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'hca0a;
    SB_LUT4 n23318_bdd_4_lut (.I0(n23318), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n23321));
    defparam n23318_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_196 (.I0(VAC_CS), .I1(adc_state_adj_1829[1]), .I2(DTRIG_N_1182_adj_1549), 
            .I3(adc_state_adj_1829[0]), .O(n14));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_196.LUT_INIT = 16'h4554;
    SB_LUT4 i20149_4_lut (.I0(VAC_DRDY), .I1(n14), .I2(n21889), .I3(adc_state_adj_1829[0]), 
            .O(n11));   // adc_ads127.vhd(34[3] 89[10])
    defparam i20149_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i19787_2_lut (.I0(\comm_buf[3] [3]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22346));
    defparam i19787_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_197 (.I0(cmd_rdadctmp_adj_1830[0]), .I1(VAC_MISO), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21655));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_198 (.I0(IAC_CS), .I1(adc_state_adj_1825[1]), .I2(DTRIG_N_1182), 
            .I3(adc_state_adj_1825[0]), .O(n14_adj_1578));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_198.LUT_INIT = 16'h4554;
    SB_LUT4 i6581_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1617));   // zim_main.vhd(529[4] 813[13])
    defparam i6581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_8_i15_4_lut (.I0(n7_adj_1616), .I1(n8_adj_1617), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[8]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6591_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1619));   // zim_main.vhd(529[4] 813[13])
    defparam i6591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_7_i15_4_lut (.I0(n7_adj_1618), .I1(n8_adj_1619), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[7]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6601_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1621));   // zim_main.vhd(529[4] 813[13])
    defparam i6601_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_6_i15_4_lut (.I0(n7_adj_1620), .I1(n8_adj_1621), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[6]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i20160_4_lut (.I0(IAC_DRDY), .I1(n14_adj_1578), .I2(n21892), 
            .I3(adc_state_adj_1825[0]), .O(n11_adj_1577));   // adc_ads127.vhd(34[3] 89[10])
    defparam i20160_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i16198_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1623));
    defparam i16198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_5_i15_4_lut (.I0(n7_adj_1622), .I1(n8_adj_1623), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[5]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6621_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1625));   // zim_main.vhd(529[4] 813[13])
    defparam i6621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_4_i15_4_lut (.I0(n7_adj_1624), .I1(n8_adj_1625), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[4]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_199 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n13746), 
            .I3(adc_state_adj_1825[0]), .O(n21651));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_200 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21405));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'h0aca;
    SB_CARRY add_70_5 (.CI(n20639), .I0(acadc_skipcnt[3]), .I1(VAC_MOSI), 
            .CO(n20640));
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21363));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'h0aca;
    SB_LUT4 i16152_3_lut (.I0(\comm_buf[1] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18853));   // zim_main.vhd(247[9:19])
    defparam i16152_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_202 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28));   // zim_main.vhd(415[7:31])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1715));   // zim_main.vhd(415[7:31])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_203 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27));   // zim_main.vhd(415[7:31])
    defparam i11_4_lut_adj_203.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25_adj_1717));   // zim_main.vhd(415[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19239_3_lut (.I0(SELIRNG0), .I1(acadc_skipCount[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22166));
    defparam i19239_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19240_3_lut (.I0(req_data_cnt[10]), .I1(acadc_rst), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22167));
    defparam i19240_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20104_2_lut (.I0(buf_data_vac[37]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22170));
    defparam i20104_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19242_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22169));
    defparam i19242_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10_adj_1679));   // zim_main.vhd(415[7:31])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6_4_lut_adj_204 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14_adj_1678));   // zim_main.vhd(415[7:31])
    defparam i6_4_lut_adj_204.LUT_INIT = 16'h8000;
    SB_LUT4 i15_4_lut_adj_205 (.I0(n25_adj_1717), .I1(n27), .I2(n26_adj_1715), 
            .I3(n28), .O(n20922));   // zim_main.vhd(415[7:31])
    defparam i15_4_lut_adj_205.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_state_3__I_0_370_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_794));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_370_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n12966), .O(n12045));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hcf8a;
    SB_LUT4 i1_2_lut_3_lut_adj_206 (.I0(eis_state[2]), .I1(acadc_dtrig_v), 
            .I2(acadc_dtrig_i), .I3(VAC_MOSI), .O(n17633));   // zim_main.vhd(447[3] 522[10])
    defparam i1_2_lut_3_lut_adj_206.LUT_INIT = 16'h4040;
    SB_LUT4 i1_4_lut_adj_207 (.I0(n21965), .I1(n9837), .I2(n12966), .I3(comm_state[3]), 
            .O(n12056));
    defparam i1_4_lut_adj_207.LUT_INIT = 16'hf531;
    SB_LUT4 i16164_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n18865));
    defparam i16164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_4_lut (.I0(n20922), .I1(n14_adj_1678), .I2(n10_adj_1679), 
            .I3(secclk_cnt[20]), .O(n15420));   // zim_main.vhd(415[7:31])
    defparam i7_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 mux_134_Mux_1_i1_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[1] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1674));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_1_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_1_i2_3_lut (.I0(\comm_buf[2] [1]), .I1(\comm_buf[3] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1675));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19782_2_lut (.I0(\comm_buf[6] [1]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22341));
    defparam i19782_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_state_3__I_0_358_Mux_3_i15_4_lut (.I0(n7_adj_1626), .I1(n18865), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[3]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19_4_lut (.I0(trig_dds1), .I1(n21966), .I2(comm_state[3]), 
            .I3(n9837), .O(n21031));
    defparam i19_4_lut.LUT_INIT = 16'h0ab0;
    SB_LUT4 add_122_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n11254), 
            .I3(n20659), .O(n7_adj_1616)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_10_lut.LUT_INIT = 16'hA3AC;
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n21075));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13138_3_lut (.I0(SELIRNG0), .I1(n14_adj_1655), .I2(n12610), 
            .I3(VAC_MOSI), .O(n15866));   // zim_main.vhd(527[3] 814[10])
    defparam i13138_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_10 (.CI(n20659), .I0(data_index[8]), .I1(n11254), 
            .CO(n20660));
    SB_LUT4 i12_4_lut_adj_208 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21407));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'h0aca;
    SB_LUT4 add_122_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n11254), 
            .I3(n20658), .O(n7_adj_1618)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13120_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1608), .I2(n13129), 
            .I3(VAC_MOSI), .O(n15848));   // zim_main.vhd(527[3] 814[10])
    defparam i13120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1676));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_2_i1_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1671));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_2_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_2_i2_3_lut (.I0(\comm_buf[2] [2]), .I1(\comm_buf[3] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1672));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_2_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6641_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1628));   // zim_main.vhd(529[4] 813[13])
    defparam i6641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_358_Mux_2_i15_4_lut (.I0(n7_adj_1627), .I1(n8_adj_1628), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[2]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19747_2_lut (.I0(\comm_buf[6] [2]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22342));
    defparam i19747_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13850_3_lut (.I0(n15562), .I1(bit_cnt_adj_1806[0]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n16578));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13850_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_2_lut_3_lut_adj_209 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n12966));
    defparam i1_2_lut_3_lut_adj_209.LUT_INIT = 16'hfdfd;
    SB_LUT4 add_70_4_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[2]), .I2(VAC_MOSI), 
            .I3(n20638), .O(n491)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12123_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14851));   // zim_main.vhd(529[4] 813[13])
    defparam i12123_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13123_3_lut (.I0(acadc_rst), .I1(\comm_buf[0] [2]), .I2(n11172), 
            .I3(VAC_MOSI), .O(n15851));   // zim_main.vhd(527[3] 814[10])
    defparam i13123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1673));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1668));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1669));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13124_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n11172), 
            .I3(VAC_MOSI), .O(n15852));   // zim_main.vhd(527[3] 814[10])
    defparam i13124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20124_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22669));
    defparam i20124_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_210 (.I0(n8), .I1(comm_state[0]), .I2(n12015), 
            .I3(comm_state[3]), .O(n11172));
    defparam i2_4_lut_adj_210.LUT_INIT = 16'h0100;
    SB_LUT4 i13125_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n11172), 
            .I3(VAC_MOSI), .O(n15853));   // zim_main.vhd(527[3] 814[10])
    defparam i13125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19163_2_lut (.I0(comm_state[0]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22089));
    defparam i19163_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20387 (.I0(comm_cmd[1]), .I1(n26_adj_1740), 
            .I2(n22300), .I3(comm_cmd[2]), .O(n23312));
    defparam comm_cmd_1__bdd_4_lut_20387.LUT_INIT = 16'he4aa;
    SB_CARRY add_70_4 (.CI(n20638), .I0(acadc_skipcnt[2]), .I1(VAC_MOSI), 
            .CO(n20639));
    SB_LUT4 i13160_3_lut (.I0(buf_cfgRTD[3]), .I1(n14_adj_1654), .I2(n13129), 
            .I3(VAC_MOSI), .O(n15888));   // zim_main.vhd(527[3] 814[10])
    defparam i13160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6651_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n9324), 
            .I3(VAC_MOSI), .O(n8_adj_1630));   // zim_main.vhd(529[4] 813[13])
    defparam i6651_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_9 (.CI(n20658), .I0(data_index[7]), .I1(n11254), 
            .CO(n20659));
    SB_LUT4 mux_134_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1670));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_70_3_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[1]), .I2(VAC_MOSI), 
            .I3(n20637), .O(n492)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_358_Mux_1_i15_4_lut (.I0(n7_adj_1629), .I1(n8_adj_1630), 
            .I2(comm_state[3]), .I3(n9837), .O(data_index_9__N_236[1]));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_358_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_70_3 (.CI(n20637), .I0(acadc_skipcnt[1]), .I1(VAC_MOSI), 
            .CO(n20638));
    SB_LUT4 i13161_3_lut (.I0(buf_cfgRTD[4]), .I1(n14_adj_1653), .I2(n13129), 
            .I3(VAC_MOSI), .O(n15889));   // zim_main.vhd(527[3] 814[10])
    defparam i13161_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1751));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_211 (.I0(n12966), .I1(n7_adj_1757), .I2(comm_state[3]), 
            .I3(n8_adj_1755), .O(n12976));
    defparam i1_4_lut_adj_211.LUT_INIT = 16'ha8a0;
    SB_LUT4 add_70_2_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_823), 
            .I3(VAC_MOSI), .O(n493)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_122_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n11254), 
            .I3(n20657), .O(n7_adj_1620)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i19209_3_lut (.I0(n16_adj_1751), .I1(buf_adcdata_iac[9]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22136));
    defparam i19209_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_8 (.CI(n20657), .I0(data_index[6]), .I1(n11254), 
            .CO(n20658));
    SB_LUT4 add_122_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n11254), 
            .I3(n20656), .O(n7_adj_1622)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_126_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1752));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_7 (.CI(n20656), .I0(data_index[5]), .I1(n11254), 
            .CO(n20657));
    SB_LUT4 mux_125_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1791));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19210_3_lut (.I0(n19_adj_1752), .I1(buf_readRTD[1]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22137));
    defparam i19210_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_70_2 (.CI(VAC_MOSI), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_823), 
            .CO(n20637));
    SB_LUT4 add_122_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n11254), 
            .I3(n20655), .O(n7_adj_1624)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_122_6 (.CI(n20655), .I0(data_index[4]), .I1(n11254), 
            .CO(n20656));
    SB_LUT4 i12_4_lut_adj_212 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12976), .I3(comm_state[3]), .O(n21015));   // zim_main.vhd(241[9:19])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'h0aca;
    SB_LUT4 i20087_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22642));
    defparam i20087_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_126_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1753));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_122_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n11254), 
            .I3(n20654), .O(n7_adj_1626)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_5_lut.LUT_INIT = 16'hA3AC;
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15889));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15888));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15887));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15886));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15885));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15884));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15883));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i19785_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22296));
    defparam i19785_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i16388_2_lut (.I0(dds0_mclkcnt[6]), .I1(n21857), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10));   // zim_main.vhd(438[4] 441[11])
    defparam i16388_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_213 (.I0(adc_state_adj_1825[1]), .I1(acadc_dtrig_i), 
            .I2(DTRIG_N_1182), .I3(adc_state_adj_1825[0]), .O(n21451));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_213.LUT_INIT = 16'hcce8;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[7]), .I3(n20825), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(n10), .I3(n20824), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_8 (.CI(n20824), .I0(VAC_MOSI), .I1(n10), 
            .CO(n20825));
    SB_LUT4 i13139_3_lut (.I0(SELIRNG1), .I1(n14_adj_1654), .I2(n12610), 
            .I3(VAC_MOSI), .O(n15867));   // zim_main.vhd(527[3] 814[10])
    defparam i13139_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19216_4_lut (.I0(n26_adj_1753), .I1(buf_data_vac[19]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n22143));
    defparam i19216_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i19215_3_lut (.I0(acadc_skipCount[1]), .I1(req_data_cnt[1]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n22142));
    defparam i19215_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_5 (.CI(n20654), .I0(data_index[3]), .I1(n11254), 
            .CO(n20655));
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[5]), .I3(n20823), .O(n40_adj_1586)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19755_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22316));
    defparam i19755_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_214 (.I0(adc_state_adj_1829[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_1182_adj_1549), .I3(adc_state_adj_1829[0]), .O(n21455));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_214.LUT_INIT = 16'hcce8;
    SB_LUT4 i1_4_lut_adj_215 (.I0(n12966), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1687), .O(n12585));
    defparam i1_4_lut_adj_215.LUT_INIT = 16'h8a88;
    SB_LUT4 i12_4_lut_adj_216 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21501));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_LUT4 i16182_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[4] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18882));   // zim_main.vhd(247[9:19])
    defparam i16182_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n23312_bdd_4_lut (.I0(n23312), .I1(req_data_cnt[3]), .I2(acadc_skipCount[3]), 
            .I3(comm_cmd[2]), .O(n23315));
    defparam n23312_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_7 (.CI(n20823), .I0(VAC_MOSI), .I1(dds0_mclkcnt[5]), 
            .CO(n20824));
    SB_LUT4 i12_4_lut_adj_217 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21481));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20382 (.I0(comm_cmd[1]), .I1(n22296), 
            .I2(n22297), .I3(comm_cmd[2]), .O(n23306));
    defparam comm_cmd_1__bdd_4_lut_20382.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_218 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21479));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_LUT4 i16183_3_lut (.I0(\comm_buf[2] [5]), .I1(\comm_buf[6] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18883));   // zim_main.vhd(247[9:19])
    defparam i16183_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[4]), .I3(n20822), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_6 (.CI(n20822), .I0(VAC_MOSI), .I1(dds0_mclkcnt[4]), 
            .CO(n20823));
    SB_LUT4 i12_4_lut_adj_219 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21477));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 i12520_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15238));   // zim_main.vhd(529[4] 813[13])
    defparam i12520_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n23306_bdd_4_lut (.I0(n23306), .I1(n22618), .I2(n23_adj_1767), 
            .I3(comm_cmd[2]), .O(n23309));
    defparam n23306_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_220 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21475));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20377 (.I0(comm_cmd[1]), .I1(n19), .I2(buf_readRTD[0]), 
            .I3(comm_cmd[2]), .O(n23300));
    defparam comm_cmd_1__bdd_4_lut_20377.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_221 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21473));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_222 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21471));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[3]), .I3(n20821), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13134_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15862));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13134_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i24_4_lut (.I0(eis_state[0]), .I1(iac_raw_buf_N_823), .I2(eis_state[2]), 
            .I3(eis_state[1]), .O(n17_adj_1742));   // zim_main.vhd(287[9:18])
    defparam i24_4_lut.LUT_INIT = 16'h5aca;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_5 (.CI(n20821), .I0(VAC_MOSI), .I1(dds0_mclkcnt[3]), 
            .CO(n20822));
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[2]), .I3(n20820), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_4 (.CI(n20820), .I0(VAC_MOSI), .I1(dds0_mclkcnt[2]), 
            .CO(n20821));
    SB_LUT4 i16256_2_lut (.I0(wdtick_flag), .I1(n49), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(wdtick_flag_N_366));   // zim_main.vhd(403[5] 406[12])
    defparam i16256_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i19824_2_lut_3_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(VAC_MOSI), .O(n22339));
    defparam i19824_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[1]), .I3(n20819), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_223 (.I0(comm_cmd[0]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[0]), .O(n21201));   // zim_main.vhd(527[3] 814[10])
    defparam i11_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_224 (.I0(n12966), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n22073), .O(n12050));
    defparam i1_4_lut_adj_224.LUT_INIT = 16'h888a;
    SB_LUT4 add_65_17_lut (.I0(VAC_MOSI), .I1(data_cntvec[15]), .I2(VAC_MOSI), 
            .I3(n20636), .O(n427)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_3 (.CI(n20819), .I0(VAC_MOSI), .I1(dds0_mclkcnt[1]), 
            .CO(n20820));
    SB_LUT4 n23300_bdd_4_lut (.I0(n23300), .I1(buf_adcdata_iac[8]), .I2(n16), 
            .I3(comm_cmd[2]), .O(n23303));
    defparam n23300_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i20099_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22649));
    defparam i20099_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_225 (.I0(n17650), .I1(n17_adj_1742), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(eis_state_2__N_191[1]));   // zim_main.vhd(287[9:18])
    defparam i1_4_lut_adj_225.LUT_INIT = 16'hccdc;
    SB_LUT4 i16310_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n3));   // zim_main.vhd(529[4] 813[13])
    defparam i16310_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 dds0_mclkcnt_i7_3792_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3792_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_126_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1580));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY dds0_mclkcnt_i7_3792_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(dds0_mclkcnt[0]), .CO(n20819));
    SB_LUT4 i1_2_lut_adj_226 (.I0(n9), .I1(n21964), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(n21966));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_adj_226.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_227 (.I0(comm_state[0]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12021));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_adj_227.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_6__I_0_374_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9_adj_1596));
    defparam comm_cmd_6__I_0_374_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 add_122_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n11254), 
            .I3(n20653), .O(n7_adj_1627)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_228 (.I0(n21966), .I1(n11280), .I2(n12966), .I3(comm_state[3]), 
            .O(n12509));
    defparam i1_4_lut_adj_228.LUT_INIT = 16'hf531;
    SB_LUT4 equal_188_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9));
    defparam equal_188_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 eis_state_1__bdd_4_lut_4_lut (.I0(n17633), .I1(eis_state[0]), 
            .I2(n22312), .I3(eis_state[1]), .O(n23330));   // zim_main.vhd(447[3] 522[10])
    defparam eis_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h77c0;
    SB_LUT4 i2_4_lut_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[0]), 
            .I2(eis_state[1]), .I3(acadc_rst), .O(n12394));   // zim_main.vhd(447[3] 522[10])
    defparam i2_4_lut_4_lut_4_lut.LUT_INIT = 16'h0045;
    SB_LUT4 i12_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n22041), 
            .I3(acadc_trig), .O(n21381));   // zim_main.vhd(447[3] 522[10])
    defparam i12_4_lut_4_lut.LUT_INIT = 16'hf404;
    SB_LUT4 i12_4_lut_adj_229 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21469));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_LUT4 n23330_bdd_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[0]), 
            .I2(n17642), .I3(n23330), .O(eis_state_2__N_191[0]));   // zim_main.vhd(447[3] 522[10])
    defparam n23330_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 i16455_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1653));   // zim_main.vhd(529[4] 813[13])
    defparam i16455_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 equal_58_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n14_adj_1599));   // zim_main.vhd(472[10:41])
    defparam equal_58_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i11636_3_lut (.I0(n30), .I1(n112), .I2(comm_cmd[6]), .I3(VAC_MOSI), 
            .O(comm_length_2__N_514[0]));   // zim_main.vhd(582[5] 686[14])
    defparam i11636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20));   // zim_main.vhd(472[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_1__bdd_4_lut_20419 (.I0(comm_index[1]), .I1(n4_adj_1667), 
            .I2(n22295), .I3(comm_index[2]), .O(n23294));
    defparam comm_index_1__bdd_4_lut_20419.LUT_INIT = 16'he4aa;
    SB_LUT4 n23294_bdd_4_lut (.I0(n23294), .I1(n2_adj_1666), .I2(n1_adj_1665), 
            .I3(comm_index[2]), .O(n23297));
    defparam n23294_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_125_Mux_0_i111_3_lut (.I0(comm_test_buf_24[8]), .I1(comm_test_buf_24[16]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1584));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_0_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_230 (.I0(n18363), .I1(buf_dds1[0]), .I2(\comm_buf[1] [0]), 
            .I3(n12509), .O(n16588));   // zim_main.vhd(241[9:19])
    defparam i1_4_lut_adj_230.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_231 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21409));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'h0aca;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24_adj_1513));   // zim_main.vhd(472[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i19237_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n22164));
    defparam i19237_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_232 (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22));   // zim_main.vhd(472[10:41])
    defparam i6_4_lut_adj_232.LUT_INIT = 16'h7bde;
    SB_CARRY add_122_4 (.CI(n20653), .I0(data_index[2]), .I1(n11254), 
            .CO(n20654));
    SB_LUT4 i7_4_lut_adj_233 (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[14]), .O(n23_adj_1514));   // zim_main.vhd(472[10:41])
    defparam i7_4_lut_adj_233.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_234 (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zim_main.vhd(472[10:41])
    defparam i5_4_lut_adj_234.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_125_Mux_0_i112_3_lut (.I0(comm_test_buf_24[0]), .I1(n111_adj_1584), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1583));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_0_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_235 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18));   // zim_main.vhd(472[10:41])
    defparam i2_4_lut_adj_235.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20372 (.I0(comm_cmd[1]), .I1(n19_adj_1722), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n23288));
    defparam comm_cmd_1__bdd_4_lut_20372.LUT_INIT = 16'he4aa;
    SB_LUT4 add_122_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n11254), 
            .I3(n20652), .O(n7_adj_1629)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 n23288_bdd_4_lut (.I0(n23288), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1721), 
            .I3(comm_cmd[2]), .O(n23291));
    defparam n23288_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15882));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i3930_3_lut_4_lut (.I0(comm_index[0]), .I1(n2562), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_511[2]));   // zim_main.vhd(710[5] 720[12])
    defparam i3930_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i3_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n9_adj_1600));
    defparam i3_2_lut_3_lut.LUT_INIT = 16'h5454;
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15881));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15880));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15879));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15878));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15877));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15876));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i4032_2_lut_3_lut (.I0(n9_adj_1600), .I1(n21886), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n6774));
    defparam i4032_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15875));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i10_4_lut_adj_236 (.I0(acadc_skipCount[8]), .I1(n20), .I2(n14_adj_1599), 
            .I3(acadc_skipcnt[8]), .O(n26));   // zim_main.vhd(472[10:41])
    defparam i10_4_lut_adj_236.LUT_INIT = 16'hfdfe;
    SB_LUT4 i12_4_lut_adj_237 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21411));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'h0aca;
    SB_LUT4 i7001_3_lut_4_lut (.I0(comm_state[2]), .I1(comm_data_vld), .I2(comm_state[0]), 
            .I3(n5), .O(n9725));   // zim_main.vhd(561[6] 564[13])
    defparam i7001_3_lut_4_lut.LUT_INIT = 16'hfe0e;
    SB_LUT4 i19903_2_lut_3_lut (.I0(comm_state[2]), .I1(comm_data_vld), 
            .I2(comm_state[0]), .I3(VAC_MOSI), .O(n22492));   // zim_main.vhd(561[6] 564[13])
    defparam i19903_2_lut_3_lut.LUT_INIT = 16'h0e0e;
    SB_LUT4 mux_125_Mux_0_i127_3_lut (.I0(n23453), .I1(n112_adj_1583), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[0]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_0_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_238 (.I0(n21), .I1(n23_adj_1514), .I2(n22), 
            .I3(n24_adj_1513), .O(n30_adj_1743));   // zim_main.vhd(472[10:41])
    defparam i14_4_lut_adj_238.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_state_3__I_0_351_Mux_0_i6_3_lut (.I0(comm_buf_0__7__N_543[0]), 
            .I1(comm_rx_buf[0]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1603));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_0_i111_3_lut (.I0(comm_test_buf_24[0]), .I1(comm_test_buf_24[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_0_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_239 (.I0(cmd_rdadctmp_adj_1830[11]), .I1(cmd_rdadctmp_adj_1830[10]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21579));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'hca0a;
    SB_LUT4 i16700105_i1_3_lut (.I0(n23303), .I1(n23555), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1579));
    defparam i16700105_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_240 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17));   // zim_main.vhd(472[10:41])
    defparam i1_4_lut_adj_240.LUT_INIT = 16'h7bde;
    SB_LUT4 i11570_3_lut (.I0(n30_adj_1579), .I1(n111), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[0]));   // zim_main.vhd(582[5] 686[14])
    defparam i11570_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13140_3_lut (.I0(VDC_RNG0), .I1(n14_adj_1653), .I2(n12610), 
            .I3(VAC_MOSI), .O(n15868));   // zim_main.vhd(527[3] 814[10])
    defparam i13140_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15_4_lut_adj_241 (.I0(n17), .I1(n30_adj_1743), .I2(n26), 
            .I3(n18), .O(n31));   // zim_main.vhd(472[10:41])
    defparam i15_4_lut_adj_241.LUT_INIT = 16'hfffe;
    SB_LUT4 i11652_3_lut (.I0(comm_buf_1__7__N_559[0]), .I1(comm_rx_buf[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(n14378));   // zim_main.vhd(529[4] 813[13])
    defparam i11652_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1590));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1738));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1739));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_242 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21413));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_242.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_127_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1590), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1589));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_0_i30_3_lut (.I0(n22_adj_1589), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1588));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20187_2_lut_3_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(VAC_MOSI), .O(n22120));
    defparam i20187_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 secclk_cnt_3785_3786_add_4_24_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[22]), .I3(n20811), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5_4_lut_adj_243 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1685));   // zim_main.vhd(438[7:27])
    defparam i5_4_lut_adj_243.LUT_INIT = 16'hfffe;
    SB_LUT4 secclk_cnt_3785_3786_add_4_23_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[21]), .I3(n20810), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_23 (.CI(n20810), .I0(VAC_MOSI), 
            .I1(secclk_cnt[21]), .CO(n20811));
    SB_LUT4 secclk_cnt_3785_3786_add_4_22_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[20]), .I3(n20809), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20191_3_lut_4_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(eis_state[0]), .O(n12450));
    defparam i20191_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_LUT4 i4034_2_lut_3_lut_4_lut (.I0(n9_adj_1600), .I1(n21886), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n6776));
    defparam i4034_2_lut_3_lut_4_lut.LUT_INIT = 16'h8088;
    SB_CARRY secclk_cnt_3785_3786_add_4_22 (.CI(n20809), .I0(VAC_MOSI), 
            .I1(secclk_cnt[20]), .CO(n20810));
    SB_LUT4 secclk_cnt_3785_3786_add_4_21_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[19]), .I3(n20808), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_244 (.I0(eis_start), .I1(n31), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17650));   // zim_main.vhd(527[3] 814[10])
    defparam i1_2_lut_adj_244.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_245 (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21415));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_245.LUT_INIT = 16'h0aca;
    SB_LUT4 i19165_3_lut_1_lut_2_lut (.I0(n9_adj_1600), .I1(n21886), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22092));
    defparam i19165_3_lut_1_lut_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY secclk_cnt_3785_3786_add_4_21 (.CI(n20808), .I0(VAC_MOSI), 
            .I1(secclk_cnt[19]), .CO(n20809));
    SB_LUT4 secclk_cnt_3785_3786_add_4_20_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[18]), .I3(n20807), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_3_lut_4_lut_adj_246 (.I0(comm_state[3]), .I1(n9837), .I2(n12056), 
            .I3(trig_dds0), .O(n21043));   // zim_main.vhd(241[9:19])
    defparam i11_3_lut_4_lut_adj_246.LUT_INIT = 16'h2f20;
    SB_LUT4 i12_4_lut_adj_247 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n13603), 
            .I3(adc_state[2]), .O(n21417));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_127_Mux_0_i127_3_lut (.I0(n30_adj_1588), .I1(comm_test_buf_24[0]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[0]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_0_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_65_16_lut (.I0(VAC_MOSI), .I1(data_cntvec[14]), .I2(VAC_MOSI), 
            .I3(n20635), .O(n428)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_20 (.CI(n20807), .I0(VAC_MOSI), 
            .I1(secclk_cnt[18]), .CO(n20808));
    SB_LUT4 i6_4_lut_adj_248 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1685), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n21857));   // zim_main.vhd(438[7:27])
    defparam i6_4_lut_adj_248.LUT_INIT = 16'hfffe;
    SB_LUT4 secclk_cnt_3785_3786_add_4_19_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[17]), .I3(n20806), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8_4_lut_adj_249 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1800));   // zim_main.vhd(505[9:35])
    defparam i8_4_lut_adj_249.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_state_3__I_0_353_Mux_0_i6_3_lut (.I0(comm_buf_2__7__N_575[0]), 
            .I1(comm_rx_buf[0]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1604));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11656_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14382));   // zim_main.vhd(529[4] 813[13])
    defparam i11656_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_250 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), 
            .I2(req_data_cnt[2]), .I3(req_data_cnt[7]), .O(n22_adj_1801));   // zim_main.vhd(505[9:35])
    defparam i6_4_lut_adj_250.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_251 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23));   // zim_main.vhd(505[9:35])
    defparam i7_4_lut_adj_251.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_252 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n13603), .I3(adc_state[2]), .O(n21419));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_252.LUT_INIT = 16'h0aca;
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15874));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15873));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15872));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15871));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15870));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15869));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i5_4_lut_adj_253 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1803));   // zim_main.vhd(505[9:35])
    defparam i5_4_lut_adj_253.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_254 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1804));   // zim_main.vhd(505[9:35])
    defparam i4_4_lut_adj_254.LUT_INIT = 16'h7bde;
    SB_LUT4 i11660_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14386));   // zim_main.vhd(529[4] 813[13])
    defparam i11660_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20171_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(n26_adj_1597), .I3(VAC_MOSI), .O(n18_adj_1595));
    defparam i20171_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i11664_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14390));   // zim_main.vhd(529[4] 813[13])
    defparam i11664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_255 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18_adj_1699));   // zim_main.vhd(505[9:35])
    defparam i2_4_lut_adj_255.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut_adj_256 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1727));   // zim_main.vhd(505[9:35])
    defparam i3_4_lut_adj_256.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_257 (.I0(n9_adj_1596), .I1(comm_state[3]), .I2(n9837), 
            .I3(n21983), .O(n12610));
    defparam i1_4_lut_adj_257.LUT_INIT = 16'hc0c4;
    SB_CARRY secclk_cnt_3785_3786_add_4_19 (.CI(n20806), .I0(VAC_MOSI), 
            .I1(secclk_cnt[17]), .CO(n20807));
    SB_LUT4 secclk_cnt_3785_3786_add_4_18_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[16]), .I3(n20805), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_258 (.I0(n11979), .I1(\comm_buf[1] [0]), .I2(\comm_buf[2] [0]), 
            .I3(comm_cmd[0]), .O(n11985));   // zim_main.vhd(243[9:17])
    defparam i1_4_lut_adj_258.LUT_INIT = 16'ha088;
    SB_LUT4 i2_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n22033));
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h4eff;
    SB_LUT4 i16121_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[2] [0]), 
            .I2(n6776), .I3(VAC_MOSI), .O(n18823));
    defparam i16121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16307_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(comm_clear_N_796));
    defparam i16307_2_lut_3_lut.LUT_INIT = 16'h2f2f;
    SB_CARRY secclk_cnt_3785_3786_add_4_18 (.CI(n20805), .I0(VAC_MOSI), 
            .I1(secclk_cnt[16]), .CO(n20806));
    SB_LUT4 i1_4_lut_adj_259 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1594));   // zim_main.vhd(505[9:35])
    defparam i1_4_lut_adj_259.LUT_INIT = 16'h7bde;
    SB_LUT4 i16122_3_lut (.I0(\comm_buf[1] [0]), .I1(n18823), .I2(n6774), 
            .I3(VAC_MOSI), .O(comm_test_buf_24_23__N_755[0]));
    defparam i16122_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16456_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1654));   // zim_main.vhd(529[4] 813[13])
    defparam i16456_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i16457_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1655));   // zim_main.vhd(529[4] 813[13])
    defparam i16457_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_260 (.I0(cmd_rdadctmp_adj_1830[10]), .I1(cmd_rdadctmp_adj_1830[9]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21577));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n19_adj_1739), 
            .I2(buf_readRTD[3]), .I3(comm_cmd[2]), .O(n23558));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n23558_bdd_4_lut (.I0(n23558), .I1(buf_adcdata_iac[11]), .I2(n16_adj_1738), 
            .I3(comm_cmd[2]), .O(n23561));
    defparam n23558_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_adj_261 (.I0(DDS_MCLK), .I1(dds0_mclkcnt[6]), .I2(n21857), 
            .I3(VAC_MOSI), .O(DDS_MCLK_N_780));
    defparam i1_3_lut_adj_261.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_262 (.I0(cmd_rdadctmp_adj_1830[9]), .I1(cmd_rdadctmp_adj_1830[8]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21575));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_262.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_263 (.I0(cmd_rdadctmp_adj_1830[8]), .I1(cmd_rdadctmp_adj_1830[7]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21573));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_263.LUT_INIT = 16'hca0a;
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15868));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 secclk_cnt_3785_3786_add_4_17_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[15]), .I3(n20804), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_17 (.CI(n20804), .I0(VAC_MOSI), 
            .I1(secclk_cnt[15]), .CO(n20805));
    SB_LUT4 i1_2_lut_adj_264 (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n13_adj_1591));
    defparam i1_2_lut_adj_264.LUT_INIT = 16'heeee;
    SB_LUT4 secclk_cnt_3785_3786_add_4_16_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[14]), .I3(n20803), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_16 (.CI(n20803), .I0(VAC_MOSI), 
            .I1(secclk_cnt[14]), .CO(n20804));
    SB_LUT4 i24_4_lut_adj_265 (.I0(n13_adj_1591), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n11_adj_1592));
    defparam i24_4_lut_adj_265.LUT_INIT = 16'hfaca;
    SB_LUT4 secclk_cnt_3785_3786_add_4_15_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[13]), .I3(n20802), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_266 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n13603), .I3(adc_state[2]), .O(n21421));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_266.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_5_i28_4_lut (.I0(data_idxvec[13]), .I1(buf_data_vac[43]), 
            .I2(comm_cmd[1]), .I3(comm_cmd[0]), .O(n28_adj_1775));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i28_4_lut.LUT_INIT = 16'h0ac0;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16588));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20582 (.I0(comm_cmd[1]), .I1(n26_adj_1580), 
            .I2(n22649), .I3(comm_cmd[2]), .O(n23552));
    defparam comm_cmd_1__bdd_4_lut_20582.LUT_INIT = 16'he4aa;
    SB_LUT4 i19916_2_lut (.I0(\comm_buf[3] [5]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22371));
    defparam i19916_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21201));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13148_3_lut (.I0(buf_dds0[6]), .I1(n14_adj_1610), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15876));   // zim_main.vhd(527[3] 814[10])
    defparam i13148_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3785_3786_add_4_15 (.CI(n20802), .I0(VAC_MOSI), 
            .I1(secclk_cnt[13]), .CO(n20803));
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15867));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 secclk_cnt_3785_3786_add_4_14_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[12]), .I3(n20801), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_125_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1773));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16185_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n18885));   // zim_main.vhd(247[9:19])
    defparam i16185_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n23552_bdd_4_lut (.I0(n23552), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n23555));
    defparam n23552_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21015));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13149_3_lut (.I0(buf_dds0[7]), .I1(n14_adj_1609), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15877));   // zim_main.vhd(527[3] 814[10])
    defparam i13149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20166_3_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n11_adj_1592), 
            .I3(VAC_MOSI), .O(n12369));
    defparam i20166_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i12_4_lut_adj_267 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n13603), .I3(adc_state[2]), .O(n21423));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut_adj_268 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(IAC_OSR0), .O(n24_adj_1575));
    defparam i1_2_lut_4_lut_adj_268.LUT_INIT = 16'hef00;
    SB_CARRY secclk_cnt_3785_3786_add_4_14 (.CI(n20801), .I0(VAC_MOSI), 
            .I1(secclk_cnt[12]), .CO(n20802));
    SB_LUT4 secclk_cnt_3785_3786_add_4_13_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[11]), .I3(n20800), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_125_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1783));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3785_3786_add_4_13 (.CI(n20800), .I0(VAC_MOSI), 
            .I1(secclk_cnt[11]), .CO(n20801));
    SB_LUT4 secclk_cnt_3785_3786_add_4_12_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[10]), .I3(n20799), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20034_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22358));
    defparam i20034_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY secclk_cnt_3785_3786_add_4_12 (.CI(n20799), .I0(VAC_MOSI), 
            .I1(secclk_cnt[10]), .CO(n20800));
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15866));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_2_lut_4_lut_adj_269 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(IAC_OSR1), .O(n24_adj_1601));
    defparam i1_2_lut_4_lut_adj_269.LUT_INIT = 16'hef00;
    SB_LUT4 i1_2_lut_4_lut_adj_270 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(IAC_FLT0), .O(n24_adj_1598));
    defparam i1_2_lut_4_lut_adj_270.LUT_INIT = 16'hef00;
    SB_LUT4 i1_2_lut_4_lut_adj_271 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(IAC_FLT1), .O(n24_adj_1506));
    defparam i1_2_lut_4_lut_adj_271.LUT_INIT = 16'hef00;
    SB_LUT4 i17897_1_lut (.I0(clk_cnt[0]), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17897_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2_4_lut_adj_272 (.I0(eis_state[1]), .I1(n16_adj_1683), .I2(eis_state[0]), 
            .I3(n13_adj_1591), .O(n21946));
    defparam i2_4_lut_adj_272.LUT_INIT = 16'h0008;
    SB_LUT4 i13150_3_lut (.I0(buf_dds0[8]), .I1(n14_adj_1608), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15878));   // zim_main.vhd(527[3] 814[10])
    defparam i13150_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13151_3_lut (.I0(buf_dds0[9]), .I1(n14_adj_1656), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15879));   // zim_main.vhd(527[3] 814[10])
    defparam i13151_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13152_3_lut (.I0(buf_dds0[10]), .I1(n14_adj_1655), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15880));   // zim_main.vhd(527[3] 814[10])
    defparam i13152_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_122_3 (.CI(n20652), .I0(data_index[1]), .I1(n11254), 
            .CO(n20653));
    SB_LUT4 i13153_3_lut (.I0(buf_dds0[11]), .I1(n14_adj_1654), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15881));   // zim_main.vhd(527[3] 814[10])
    defparam i13153_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19781_2_lut_3_lut (.I0(n5), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n22487));   // zim_main.vhd(529[4] 813[13])
    defparam i19781_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20577 (.I0(comm_cmd[1]), .I1(n22169), 
            .I2(n22170), .I3(comm_cmd[2]), .O(n23546));
    defparam comm_cmd_1__bdd_4_lut_20577.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_273 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n13603), .I3(adc_state[2]), .O(n21325));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut_adj_273.LUT_INIT = 16'h0aca;
    SB_LUT4 n23546_bdd_4_lut (.I0(n23546), .I1(n22167), .I2(n22166), .I3(comm_cmd[2]), 
            .O(n23549));
    defparam n23546_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_65_16 (.CI(n20635), .I0(data_cntvec[14]), .I1(VAC_MOSI), 
            .CO(n20636));
    SB_LUT4 i12_4_lut_adj_274 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13584), 
            .I3(n21989), .O(n21361));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'h0aca;
    SB_LUT4 i20133_3_lut_4_lut (.I0(eis_state[1]), .I1(eis_state[0]), .I2(eis_state[2]), 
            .I3(n21946), .O(n21880));   // zim_main.vhd(447[3] 522[10])
    defparam i20133_3_lut_4_lut.LUT_INIT = 16'hf707;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(VAC_FLT1), .I2(buf_adcdata_iac[23]), 
            .I3(comm_cmd[1]), .O(n23540));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n23540_bdd_4_lut (.I0(n23540), .I1(buf_dds1[15]), .I2(buf_dds0[15]), 
            .I3(comm_cmd[1]), .O(n23543));
    defparam n23540_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3823_3_lut_3_lut_4_lut (.I0(eis_state[1]), .I1(eis_state[0]), 
            .I2(n17633), .I3(acadc_rst), .O(iac_raw_buf_N_821));   // zim_main.vhd(447[3] 522[10])
    defparam i3823_3_lut_3_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20567 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n23534));
    defparam comm_cmd_0__bdd_4_lut_20567.LUT_INIT = 16'he4aa;
    SB_LUT4 n23534_bdd_4_lut (.I0(n23534), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22177));
    defparam n23534_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_65_15_lut (.I0(VAC_MOSI), .I1(data_cntvec[13]), .I2(VAC_MOSI), 
            .I3(n20634), .O(n429)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13154_3_lut (.I0(buf_dds0[12]), .I1(n14_adj_1653), .I2(n13093), 
            .I3(VAC_MOSI), .O(n15882));   // zim_main.vhd(527[3] 814[10])
    defparam i13154_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_275 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n13603), .I3(adc_state[2]), .O(n21425));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_275.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_125_Mux_3_i20_3_lut (.I0(buf_cfgRTD[3]), .I1(buf_readRTD[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1790));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[19]), .I1(buf_adcdata_vdc[19]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1789));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut_adj_276 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(VAC_OSR1), .O(n24_adj_1503));
    defparam i1_2_lut_4_lut_adj_276.LUT_INIT = 16'hef00;
    SB_LUT4 secclk_cnt_3785_3786_add_4_11_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[9]), .I3(n20798), .O(n111_adj_1582)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_11 (.CI(n20798), .I0(VAC_MOSI), 
            .I1(secclk_cnt[9]), .CO(n20799));
    SB_LUT4 secclk_cnt_3785_3786_add_4_10_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[8]), .I3(n20797), .O(n112_adj_1581)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_10 (.CI(n20797), .I0(VAC_MOSI), 
            .I1(secclk_cnt[8]), .CO(n20798));
    SB_LUT4 secclk_cnt_3785_3786_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[7]), .I3(n20796), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_126_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1721));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1722));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1665));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1756));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_134_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1666));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20048_2_lut (.I0(req_data_cnt[15]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22314));
    defparam i20048_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i20030_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22295));
    defparam i20030_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i20042_2_lut (.I0(buf_data_vac[47]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22595));
    defparam i20042_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_134_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1667));   // zim_main.vhd(693[30:40])
    defparam mux_134_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1767));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i20112_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22391));
    defparam i20112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_277 (.I0(cmd_rdadctmp_adj_1830[7]), .I1(cmd_rdadctmp_adj_1830[6]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21571));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_277.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_278 (.I0(cmd_rdadctmp_adj_1830[6]), .I1(cmd_rdadctmp_adj_1830[5]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21569));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_278.LUT_INIT = 16'hca0a;
    SB_LUT4 i20091_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22500));
    defparam i20091_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_279 (.I0(cmd_rdadctmp_adj_1830[5]), .I1(cmd_rdadctmp_adj_1830[4]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21567));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i20060_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22618));
    defparam i20060_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_126_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1723));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_280 (.I0(cmd_rdadctmp_adj_1830[4]), .I1(cmd_rdadctmp_adj_1830[3]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21565));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_280.LUT_INIT = 16'hca0a;
    SB_LUT4 add_122_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n11254), 
            .I3(VCC_net), .O(n7)) /* synthesis syn_instantiated=1 */ ;
    defparam add_122_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13767_4_lut_4_lut (.I0(n12509), .I1(comm_state[3]), .I2(n14_adj_1660), 
            .I3(buf_dds1[13]), .O(n16495));   // zim_main.vhd(527[3] 814[10])
    defparam i13767_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i13791_4_lut_4_lut (.I0(n12509), .I1(comm_state[3]), .I2(n14_adj_1661), 
            .I3(buf_dds1[5]), .O(n16519));   // zim_main.vhd(527[3] 814[10])
    defparam i13791_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_CARRY secclk_cnt_3785_3786_add_4_9 (.CI(n20796), .I0(VAC_MOSI), .I1(secclk_cnt[7]), 
            .CO(n20797));
    SB_LUT4 i1_4_lut_4_lut_adj_281 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n4_adj_1718));
    defparam i1_4_lut_4_lut_adj_281.LUT_INIT = 16'h4fef;
    SB_LUT4 i20174_2_lut (.I0(n12450), .I1(eis_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15439));
    defparam i20174_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i16458_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1656));   // zim_main.vhd(529[4] 813[13])
    defparam i16458_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 secclk_cnt_3785_3786_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[6]), .I3(n20795), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_8 (.CI(n20795), .I0(VAC_MOSI), .I1(secclk_cnt[6]), 
            .CO(n20796));
    SB_LUT4 secclk_cnt_3785_3786_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[5]), .I3(n20794), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_7 (.CI(n20794), .I0(VAC_MOSI), .I1(secclk_cnt[5]), 
            .CO(n20795));
    SB_LUT4 i19894_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22499));
    defparam i19894_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i20075_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22297));
    defparam i20075_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13797_4_lut_4_lut (.I0(n12509), .I1(comm_state[3]), .I2(n14_adj_1662), 
            .I3(buf_dds1[3]), .O(n16525));   // zim_main.vhd(527[3] 814[10])
    defparam i13797_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n12394), 
            .D(n427), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i12_4_lut_adj_282 (.I0(cmd_rdadctmp_adj_1852[0]), .I1(VDC_SDO), 
            .I2(n13925), .I3(adc_state_adj_1851[3]), .O(n21207));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_282.LUT_INIT = 16'h0aca;
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n12394), 
            .D(n428), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n12394), 
            .D(n429), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n12394), 
            .D(n430), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n12394), 
            .D(n431), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n12394), 
            .D(n432), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n12394), 
            .D(n433), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n12394), 
            .D(n434), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n12394), 
            .D(n435), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n12394), 
            .D(n436), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n12394), 
            .D(n437), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n12394), 
            .D(n438), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n12394), 
            .D(n439), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n12394), 
            .D(n440), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNE acadc_trig_303 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n21381));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i1_4_lut_adj_283 (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n26_adj_1597));
    defparam i1_4_lut_adj_283.LUT_INIT = 16'h2338;
    SB_LUT4 i16462_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1608));   // zim_main.vhd(529[4] 813[13])
    defparam i16462_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 secclk_cnt_3785_3786_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[4]), .I3(n20793), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_6 (.CI(n20793), .I0(VAC_MOSI), .I1(secclk_cnt[4]), 
            .CO(n20794));
    SB_LUT4 secclk_cnt_3785_3786_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[3]), .I3(n20792), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_5 (.CI(n20792), .I0(VAC_MOSI), .I1(secclk_cnt[3]), 
            .CO(n20793));
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16_adj_1682));   // zim_main.vhd(527[3] 814[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n12394), 
            .D(n441), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_CARRY add_65_15 (.CI(n20634), .I0(data_cntvec[13]), .I1(VAC_MOSI), 
            .CO(n20635));
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16528));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16525));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_64_7_lut (.I0(VAC_MOSI), .I1(data_count[5]), .I2(VAC_MOSI), 
            .I3(n20617), .O(n419)) /* synthesis syn_instantiated=1 */ ;
    defparam add_64_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16522));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_133_Mux_2_i127_4_lut (.I0(n7148), .I1(n11402), .I2(comm_cmd[6]), 
            .I3(n18955), .O(comm_state_3__N_500[2]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_133_Mux_2_i127_4_lut.LUT_INIT = 16'h3a0a;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16519));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i16463_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1609));   // zim_main.vhd(529[4] 813[13])
    defparam i16463_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_346_Mux_2_i4_3_lut (.I0(comm_state_3__N_500[2]), 
            .I1(ICE_SPI_CE0), .I2(comm_state[0]), .I3(VAC_MOSI), .O(n4));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_2_i4_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16514));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i19814_3_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[6]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[5]), .O(n22396));   // zim_main.vhd(529[4] 813[13])
    defparam i19814_3_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i3_3_lut_4_lut_adj_284 (.I0(comm_cmd[2]), .I1(comm_cmd[6]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(n8_adj_1782));   // zim_main.vhd(529[4] 813[13])
    defparam i3_3_lut_4_lut_adj_284.LUT_INIT = 16'h0020;
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16511));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16508));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_346_Mux_2_i6_4_lut (.I0(n4), .I1(n9725), .I2(comm_state[1]), 
            .I3(ICE_SPI_CE0), .O(n6_adj_1657));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_2_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19973_2_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[5]), 
            .I3(n21997), .O(n22330));   // zim_main.vhd(582[5] 686[14])
    defparam i19973_2_lut_4_lut.LUT_INIT = 16'hff1f;
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16504));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16501));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16498));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16495));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16493));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_346_Mux_2_i7_4_lut (.I0(n22492), .I1(n6_adj_1657), 
            .I2(comm_state[2]), .I3(n21908), .O(n7_adj_1658));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_346_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16490));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 secclk_cnt_3785_3786_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[2]), .I3(n20791), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_4 (.CI(n20791), .I0(VAC_MOSI), .I1(secclk_cnt[2]), 
            .CO(n20792));
    SB_LUT4 secclk_cnt_3785_3786_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[1]), .I3(n20790), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_3 (.CI(n20790), .I0(VAC_MOSI), .I1(secclk_cnt[1]), 
            .CO(n20791));
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21099));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21209));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21211));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_2_lut_3_lut_adj_285 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[4]), .I3(VAC_MOSI), .O(n21997));   // zim_main.vhd(582[5] 686[14])
    defparam i1_2_lut_3_lut_adj_285.LUT_INIT = 16'hefef;
    SB_LUT4 i1_3_lut_adj_286 (.I0(n12966), .I1(comm_state[3]), .I2(n10_adj_1602), 
            .I3(VAC_MOSI), .O(n12540));
    defparam i1_3_lut_adj_286.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_4_lut_adj_287 (.I0(n12966), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9714), .O(n15378));   // zim_main.vhd(527[3] 814[10])
    defparam i1_4_lut_adj_287.LUT_INIT = 16'ha2a0;
    SB_LUT4 i12_4_lut_adj_288 (.I0(cmd_rdadctmp_adj_1830[3]), .I1(cmd_rdadctmp_adj_1830[2]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21563));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_288.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_4_lut_adj_289 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(VAC_FLT0), .O(n24));
    defparam i1_2_lut_4_lut_adj_289.LUT_INIT = 16'hef00;
    SB_LUT4 i44_3_lut (.I0(comm_state[0]), .I1(n30_adj_1720), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n25));
    defparam i44_3_lut.LUT_INIT = 16'h4a4a;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21213));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_4_lut_adj_290 (.I0(n12966), .I1(comm_state[3]), .I2(comm_state[1]), 
            .I3(n25), .O(n12548));
    defparam i1_4_lut_adj_290.LUT_INIT = 16'h8a88;
    SB_LUT4 i13137_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9837), 
            .I3(n12610), .O(n15865));   // zim_main.vhd(527[3] 814[10])
    defparam i13137_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_124_Mux_1_i127_3_lut (.I0(n30_adj_1805), .I1(comm_cmd[1]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_length_2__N_514[1]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_124_Mux_1_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_291 (.I0(n12966), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n12021), .O(n12614));
    defparam i1_4_lut_adj_291.LUT_INIT = 16'ha0a8;
    SB_LUT4 i1_2_lut_4_lut_adj_292 (.I0(n21997), .I1(n40), .I2(n18955), 
            .I3(VAC_FLT1), .O(n24_adj_1576));
    defparam i1_2_lut_4_lut_adj_292.LUT_INIT = 16'hef00;
    SB_LUT4 i11_4_lut_adj_293 (.I0(comm_cmd[4]), .I1(n15238), .I2(n12585), 
            .I3(comm_rx_buf[4]), .O(n21215));   // zim_main.vhd(527[3] 814[10])
    defparam i11_4_lut_adj_293.LUT_INIT = 16'hca0a;
    SB_LUT4 i13135_4_lut_4_lut (.I0(acadc_rst), .I1(n21880), .I2(eis_state[2]), 
            .I3(eis_end), .O(n15863));   // zim_main.vhd(347[18:31])
    defparam i13135_4_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(THERMOSTAT_N_534));   // zim_main.vhd(556[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 mux_125_Mux_1_i111_3_lut (.I0(comm_test_buf_24[9]), .I1(comm_test_buf_24[17]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1798));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_1_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_1_i112_3_lut (.I0(comm_test_buf_24[1]), .I1(n111_adj_1798), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1799));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_1_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_1_i127_3_lut (.I0(n23465), .I1(n112_adj_1799), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[1]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_1_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_1_i6_3_lut (.I0(comm_buf_0__7__N_543[1]), 
            .I1(comm_rx_buf[1]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1651));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_2_i111_3_lut (.I0(comm_test_buf_24[10]), .I1(comm_test_buf_24[18]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1796));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_2_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_2_i112_3_lut (.I0(comm_test_buf_24[2]), .I1(n111_adj_1796), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1797));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_2_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19247_3_lut (.I0(n23471), .I1(n23549), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n22174));
    defparam i19247_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_346_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1373), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2));   // zim_main.vhd(806[5] 808[12])
    defparam comm_state_3__I_0_346_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21215));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21217));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_346_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1373), .I2(comm_state[0]), .I3(comm_state_3__N_484[3]), 
            .O(n8_adj_1659));   // zim_main.vhd(806[5] 808[12])
    defparam comm_state_3__I_0_346_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21219));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_125_Mux_2_i127_3_lut (.I0(n22174), .I1(n112_adj_1797), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[2]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_2_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21221));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_351_Mux_2_i6_3_lut (.I0(comm_buf_0__7__N_543[2]), 
            .I1(comm_rx_buf[2]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1650));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_3785_3786_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3785_3786_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3785_3786_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(secclk_cnt[0]), .CO(n20790));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_26_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[24]), .I3(n20789), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_26_lut.LUT_INIT = 16'h8228;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_25_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[23]), .I3(n20788), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_25_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_25 (.CI(n20788), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[23]), .CO(n20789));
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21021));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21023));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21013));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY add_64_6 (.CI(n20616), .I0(data_count[4]), .I1(VAC_MOSI), 
            .CO(n20617));
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21025));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21009));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_65_14_lut (.I0(VAC_MOSI), .I1(data_cntvec[12]), .I2(VAC_MOSI), 
            .I3(n20633), .O(n430)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21007));   // zim_main.vhd(527[3] 814[10])
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21011));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 wdtick_cnt_3783_3784_add_4_24_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[22]), .I3(n20787), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_24_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_24 (.CI(n20787), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[22]), .CO(n20788));
    SB_LUT4 mux_125_Mux_3_i111_3_lut (.I0(comm_test_buf_24[11]), .I1(comm_test_buf_24[19]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1794));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_3_i112_3_lut (.I0(comm_test_buf_24[3]), .I1(n111_adj_1794), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1795));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1661462_i1_3_lut (.I0(n23501), .I1(n23459), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1793));
    defparam i1661462_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_3_i127_3_lut (.I0(n30_adj_1793), .I1(n112_adj_1795), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[3]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_3_i6_3_lut (.I0(comm_buf_0__7__N_543[3]), 
            .I1(comm_rx_buf[3]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1649));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_4_i111_3_lut (.I0(comm_test_buf_24[12]), .I1(comm_test_buf_24[20]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1785));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_4_i112_3_lut (.I0(comm_test_buf_24[4]), .I1(n111_adj_1785), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1786));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1662065_i1_3_lut (.I0(n23429), .I1(n23477), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1784));
    defparam i1662065_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_4_i127_3_lut (.I0(n30_adj_1784), .I1(n112_adj_1786), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[4]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_4_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_4_i6_3_lut (.I0(comm_buf_0__7__N_543[4]), 
            .I1(comm_rx_buf[4]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1648));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_5_i111_3_lut (.I0(comm_test_buf_24[13]), .I1(comm_test_buf_24[21]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1776));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_5_i112_3_lut (.I0(comm_test_buf_24[5]), .I1(n111_adj_1776), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1777));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_5_i127_3_lut (.I0(n23495), .I1(n112_adj_1777), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[5]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_5_i6_3_lut (.I0(comm_buf_0__7__N_543[5]), 
            .I1(comm_rx_buf[5]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1647));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_6_i111_3_lut (.I0(comm_test_buf_24[14]), .I1(comm_test_buf_24[22]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1771));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_6_i112_3_lut (.I0(comm_test_buf_24[6]), .I1(n111_adj_1771), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1772));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1662668_i1_3_lut (.I0(n23369), .I1(n23309), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1768));
    defparam i1662668_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_6_i127_3_lut (.I0(n30_adj_1768), .I1(n112_adj_1772), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[6]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_6_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_6_i6_3_lut (.I0(comm_buf_0__7__N_543[6]), 
            .I1(comm_rx_buf[6]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1646));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i45_4_lut (.I0(n7148), .I1(n22351), .I2(comm_cmd[6]), .I3(n4_adj_1709), 
            .O(n30_adj_1720));
    defparam i45_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12759_2_lut (.I0(n12677), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15482));   // zim_main.vhd(527[3] 814[10])
    defparam i12759_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i44_4_lut (.I0(n30_adj_1720), .I1(n21862), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n22_adj_1725));
    defparam i44_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_294 (.I0(comm_state[0]), .I1(n21895), .I2(n21968), 
            .I3(n22_adj_1725), .O(n12677));
    defparam i1_4_lut_adj_294.LUT_INIT = 16'hc4c0;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_23_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[21]), .I3(n20786), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mux_125_Mux_7_i111_3_lut (.I0(comm_test_buf_24[15]), .I1(comm_test_buf_24[23]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1761));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_7_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3783_3784_add_4_23 (.CI(n20786), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[21]), .CO(n20787));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_22_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[20]), .I3(n20785), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_22_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_22 (.CI(n20785), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[20]), .CO(n20786));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_21_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[19]), .I3(n20784), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_21_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i19349_3_lut (.I0(n23543), .I1(n23435), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n22276));
    defparam i19349_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_7_i112_3_lut (.I0(comm_test_buf_24[7]), .I1(n111_adj_1761), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n112_adj_1762));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_7_i112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1663271_i1_3_lut (.I0(n22276), .I1(n23513), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1759));
    defparam i1663271_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_7_i127_3_lut (.I0(n30_adj_1759), .I1(n112_adj_1762), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_0__7__N_543[7]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_7_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_351_Mux_7_i6_3_lut (.I0(comm_buf_0__7__N_543[7]), 
            .I1(comm_rx_buf[7]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1645));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_351_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_1_i111_3_lut (.I0(comm_test_buf_24[1]), .I1(comm_test_buf_24[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1754));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_1_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_295 (.I0(n21965), .I1(comm_state[3]), .I2(n9837), 
            .I3(VAC_MOSI), .O(n13093));
    defparam i1_3_lut_adj_295.LUT_INIT = 16'hc4c4;
    SB_LUT4 mux_126_Mux_1_i127_3_lut (.I0(n23411), .I1(n111_adj_1754), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[1]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_1_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_1_i6_3_lut (.I0(comm_buf_1__7__N_559[1]), 
            .I1(comm_rx_buf[1]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1644));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_2_i111_3_lut (.I0(comm_test_buf_24[2]), .I1(comm_test_buf_24[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1750));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_2_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_2_i127_3_lut (.I0(n23447), .I1(n111_adj_1750), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[2]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_2_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_2_i6_3_lut (.I0(comm_buf_1__7__N_559[2]), 
            .I1(comm_rx_buf[2]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1643));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_3_i111_3_lut (.I0(comm_test_buf_24[3]), .I1(comm_test_buf_24[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1744));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_3_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1665080_i1_3_lut (.I0(n23561), .I1(n23315), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1741));
    defparam i1665080_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19795_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[3]), .I2(n9_adj_1600), 
            .I3(VAC_MOSI), .O(n22354));   // zim_main.vhd(745[5] 800[14])
    defparam i19795_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 mux_126_Mux_3_i127_3_lut (.I0(n30_adj_1741), .I1(n111_adj_1744), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[3]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_3_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_3_i6_3_lut (.I0(comm_buf_1__7__N_559[3]), 
            .I1(comm_rx_buf[3]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1642));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_4_i111_3_lut (.I0(comm_test_buf_24[4]), .I1(comm_test_buf_24[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1737));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_4_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1667693_i1_3_lut (.I0(n23441), .I1(n23321), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1736));
    defparam i1667693_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3783_3784_add_4_21 (.CI(n20784), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[19]), .CO(n20785));
    SB_LUT4 mux_126_Mux_4_i127_3_lut (.I0(n30_adj_1736), .I1(n111_adj_1737), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[4]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_4_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_4_i6_3_lut (.I0(comm_buf_1__7__N_559[4]), 
            .I1(comm_rx_buf[4]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1641));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_5_i111_3_lut (.I0(comm_test_buf_24[5]), .I1(comm_test_buf_24[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1732));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_5_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1668296_i1_3_lut (.I0(n23357), .I1(n23339), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1731));
    defparam i1668296_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_5_i127_3_lut (.I0(n30_adj_1731), .I1(n111_adj_1732), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[5]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_5_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_296 (.I0(cmd_rdadctmp_adj_1830[2]), .I1(cmd_rdadctmp_adj_1830[1]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21561));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_296.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_352_Mux_5_i6_3_lut (.I0(comm_buf_1__7__N_559[5]), 
            .I1(comm_rx_buf[5]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1640));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_20_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[18]), .I3(n20783), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_20_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_122_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n11254), 
            .CO(n20652));
    SB_LUT4 mux_126_Mux_6_i111_3_lut (.I0(comm_test_buf_24[6]), .I1(comm_test_buf_24[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1726));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_6_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1668899_i1_3_lut (.I0(n23291), .I1(n23519), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1724));
    defparam i1668899_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_6_i127_3_lut (.I0(n30_adj_1724), .I1(n111_adj_1726), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[6]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_6_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_6_i6_3_lut (.I0(comm_buf_1__7__N_559[6]), 
            .I1(comm_rx_buf[6]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1639));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_297 (.I0(comm_cmd[2]), .I1(comm_cmd[5]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n4_adj_1709));
    defparam i1_2_lut_adj_297.LUT_INIT = 16'h4444;
    SB_CARRY add_65_14 (.CI(n20633), .I0(data_cntvec[12]), .I1(VAC_MOSI), 
            .CO(n20634));
    SB_LUT4 i1_2_lut_3_lut_adj_298 (.I0(comm_cmd[5]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n21920));   // zim_main.vhd(745[5] 800[14])
    defparam i1_2_lut_3_lut_adj_298.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_299 (.I0(comm_index[2]), .I1(n21956), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21862));
    defparam i1_2_lut_adj_299.LUT_INIT = 16'h4444;
    SB_LUT4 i12766_2_lut (.I0(n12761), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15489));   // zim_main.vhd(527[3] 814[10])
    defparam i12766_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_300 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n48));
    defparam i1_4_lut_adj_300.LUT_INIT = 16'hf4dd;
    SB_LUT4 i20094_4_lut (.I0(n22364), .I1(comm_cmd[1]), .I2(n22365), 
            .I3(comm_cmd[6]), .O(n22370));
    defparam i20094_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i19802_4_lut (.I0(n22370), .I1(n48), .I2(n7148), .I3(comm_cmd[6]), 
            .O(n22368));
    defparam i19802_4_lut.LUT_INIT = 16'haaea;
    SB_LUT4 i72_4_lut (.I0(n22368), .I1(n21862), .I2(comm_state[1]), .I3(comm_index[0]), 
            .O(n37));
    defparam i72_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_301 (.I0(comm_state[0]), .I1(n21895), .I2(n21968), 
            .I3(n37), .O(n12761));
    defparam i1_4_lut_adj_301.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_126_Mux_7_i111_3_lut (.I0(comm_test_buf_24[7]), .I1(comm_test_buf_24[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n111_adj_1719));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_7_i111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_126_Mux_7_i127_3_lut (.I0(n23423), .I1(n111_adj_1719), .I2(comm_cmd[6]), 
            .I3(VAC_MOSI), .O(comm_buf_1__7__N_559[7]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_7_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_352_Mux_7_i6_3_lut (.I0(comm_buf_1__7__N_559[7]), 
            .I1(comm_rx_buf[7]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1638));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_352_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1710));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1710), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1711));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_1_i30_3_lut (.I0(n22_adj_1711), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1712));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_1_i127_3_lut (.I0(n30_adj_1712), .I1(comm_test_buf_24[1]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[1]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_1_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_1_i6_3_lut (.I0(comm_buf_2__7__N_575[1]), 
            .I1(comm_rx_buf[1]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1637));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1706));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1706), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1707));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_2_i30_3_lut (.I0(n22_adj_1707), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1708));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_2_i127_3_lut (.I0(n30_adj_1708), .I1(comm_test_buf_24[2]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[2]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_2_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_2_i6_3_lut (.I0(comm_buf_2__7__N_575[2]), 
            .I1(comm_rx_buf[2]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1636));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_302 (.I0(n6776), .I1(comm_state[0]), .I2(comm_state[3]), 
            .I3(n9837), .O(n13257));
    defparam i1_3_lut_4_lut_adj_302.LUT_INIT = 16'hf020;
    SB_CARRY wdtick_cnt_3783_3784_add_4_20 (.CI(n20783), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[18]), .CO(n20784));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_19_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[17]), .I3(n20782), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_19_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_19 (.CI(n20782), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[17]), .CO(n20783));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_18_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[16]), .I3(n20781), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_18_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12830_2_lut_3_lut (.I0(n13257), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n15553));   // zim_main.vhd(527[3] 814[10])
    defparam i12830_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_CARRY wdtick_cnt_3783_3784_add_4_18 (.CI(n20781), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[16]), .CO(n20782));
    SB_LUT4 mux_127_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1703));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1703), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1704));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_3_i30_3_lut (.I0(n22_adj_1704), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1705));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_70_17_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[15]), .I2(VAC_MOSI), 
            .I3(n20651), .O(n478)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_17_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15865));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_127_Mux_3_i127_3_lut (.I0(n30_adj_1705), .I1(comm_test_buf_24[3]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[3]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_3_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_3_i6_3_lut (.I0(comm_buf_2__7__N_575[3]), 
            .I1(comm_rx_buf[3]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1635));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1700));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1700), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1701));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_4_i30_3_lut (.I0(n22_adj_1701), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1702));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_4_i127_3_lut (.I0(n30_adj_1702), .I1(comm_test_buf_24[4]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[4]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_4_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_4_i6_3_lut (.I0(comm_buf_2__7__N_575[4]), 
            .I1(comm_rx_buf[4]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1634));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1696));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13158_3_lut (.I0(buf_cfgRTD[1]), .I1(n14_adj_1656), .I2(n13129), 
            .I3(VAC_MOSI), .O(n15886));   // zim_main.vhd(527[3] 814[10])
    defparam i13158_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_state[1]), .I1(n21968), .I2(n2562), 
            .I3(comm_state[0]), .O(n20959));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hefff;
    SB_LUT4 mux_127_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1696), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1697));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_17_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[15]), .I3(n20780), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_17_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_17 (.CI(n20780), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[15]), .CO(n20781));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_16_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[14]), .I3(n20779), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_16_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_16 (.CI(n20779), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[14]), .CO(n20780));
    SB_LUT4 mux_127_Mux_5_i30_3_lut (.I0(n22_adj_1697), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1698));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_303 (.I0(adc_state_adj_1829[1]), .I1(DTRIG_N_1182_adj_1549), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21889));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_303.LUT_INIT = 16'h2222;
    SB_LUT4 mux_127_Mux_5_i127_3_lut (.I0(n30_adj_1698), .I1(comm_test_buf_24[5]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[5]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_5_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_test_buf_24_i15 (.Q(comm_test_buf_24[15]), .C(clk_32MHz), 
            .E(n13257), .D(n6951), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i14 (.Q(comm_test_buf_24[14]), .C(clk_32MHz), 
            .E(n13257), .D(n6946), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i13 (.Q(comm_test_buf_24[13]), .C(clk_32MHz), 
            .E(n13257), .D(n6942), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i2_3_lut_4_lut_adj_304 (.I0(comm_state[1]), .I1(n21968), .I2(n15261), 
            .I3(comm_data_vld), .O(n12064));
    defparam i2_3_lut_4_lut_adj_304.LUT_INIT = 16'hfeff;
    SB_LUT4 i12822_2_lut_3_lut (.I0(n13211), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n15545));   // zim_main.vhd(527[3] 814[10])
    defparam i12822_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFFESR comm_test_buf_24_i12 (.Q(comm_test_buf_24[12]), .C(clk_32MHz), 
            .E(n13257), .D(n6940), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_353_Mux_5_i6_3_lut (.I0(comm_buf_2__7__N_575[5]), 
            .I1(comm_rx_buf[5]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1633));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_test_buf_24_i11 (.Q(comm_test_buf_24[11]), .C(clk_32MHz), 
            .E(n13257), .D(n6919), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i10 (.Q(comm_test_buf_24[10]), .C(clk_32MHz), 
            .E(n13257), .D(n6909), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i9 (.Q(comm_test_buf_24[9]), .C(clk_32MHz), 
            .E(n13257), .D(n6907), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i8 (.Q(comm_test_buf_24[8]), .C(clk_32MHz), 
            .E(n13257), .D(n6880), .R(n15553));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i7 (.Q(comm_test_buf_24[7]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[7]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i6 (.Q(comm_test_buf_24[6]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[6]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_127_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1693));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_test_buf_24_i5 (.Q(comm_test_buf_24[5]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[5]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i4 (.Q(comm_test_buf_24[4]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[4]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i3 (.Q(comm_test_buf_24[3]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[3]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i2 (.Q(comm_test_buf_24[2]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[2]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_test_buf_24_i1 (.Q(comm_test_buf_24[1]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[1]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .E(n13117), 
            .D(n20879), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .E(n13117), 
            .D(n20878), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .E(n13117), 
            .D(n20883), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .E(n13117), 
            .D(n20884), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .E(n13117), 
            .D(n20882), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_127_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1693), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1694));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .E(n13117), 
            .D(n20885), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .E(n13117), 
            .D(n20886), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n13076), 
            .D(n23363), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n13076), 
            .D(n23297), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n13076), 
            .D(n23417), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n13076), 
            .D(n23405), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n13076), 
            .D(n23381), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 wdtick_cnt_3783_3784_add_4_15_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[13]), .I3(n20778), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_15 (.CI(n20778), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[13]), .CO(n20779));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_14_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[12]), .I3(n20777), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_14 (.CI(n20777), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[12]), .CO(n20778));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_13_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[11]), .I3(n20776), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_13_lut.LUT_INIT = 16'h8228;
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n13076), 
            .D(n23399), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n13076), 
            .D(n23393), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_70_16_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[14]), .I2(VAC_MOSI), 
            .I3(n20650), .O(n479)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_16_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12958), 
            .D(n14739), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY wdtick_cnt_3783_3784_add_4_13 (.CI(n20776), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[11]), .CO(n20777));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_12_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[10]), .I3(n20775), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_12 (.CI(n20775), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[10]), .CO(n20776));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_11_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[9]), .I3(n20774), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_11 (.CI(n20774), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[9]), .CO(n20775));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_10_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[8]), .I3(n20773), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_10 (.CI(n20773), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[8]), .CO(n20774));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_9_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[7]), 
            .I3(n20772), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_LUT4 mux_127_Mux_6_i30_3_lut (.I0(n22_adj_1694), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1695));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3783_3784_add_4_9 (.CI(n20772), .I0(VAC_MOSI), .I1(wdtick_cnt[7]), 
            .CO(n20773));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_8_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[6]), 
            .I3(n20771), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_8 (.CI(n20771), .I0(VAC_MOSI), .I1(wdtick_cnt[6]), 
            .CO(n20772));
    SB_LUT4 mux_127_Mux_6_i127_3_lut (.I0(n30_adj_1695), .I1(comm_test_buf_24[6]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[6]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_6_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_7_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[5]), 
            .I3(n20770), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12958), 
            .D(n14743), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12958), 
            .D(n14747), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12958), 
            .D(n14751), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12958), 
            .D(n14755), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12958), 
            .D(n14759), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12958), 
            .D(n14763), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12892), 
            .D(n14767), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12892), 
            .D(n14771), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12892), 
            .D(n14775), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12892), 
            .D(n14779), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12892), 
            .D(n14783), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12892), 
            .D(n14787), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12892), 
            .D(n14791), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY wdtick_cnt_3783_3784_add_4_7 (.CI(n20770), .I0(VAC_MOSI), .I1(wdtick_cnt[5]), 
            .CO(n20771));
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12880), 
            .D(n14795), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12880), 
            .D(n14799), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12880), 
            .D(n14803), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12880), 
            .D(n14807), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_state_3__I_0_353_Mux_6_i6_3_lut (.I0(comm_buf_2__7__N_575[6]), 
            .I1(comm_rx_buf[6]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1632));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_305 (.I0(cmd_rdadctmp_adj_1830[1]), .I1(cmd_rdadctmp_adj_1830[0]), 
            .I2(n13847), .I3(adc_state_adj_1829[0]), .O(n21559));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_305.LUT_INIT = 16'hca0a;
    SB_LUT4 i16464_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1610));   // zim_main.vhd(529[4] 813[13])
    defparam i16464_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12880), 
            .D(n14811), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12880), 
            .D(n14815), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_4_lut_adj_306 (.I0(n11379), .I1(comm_state[3]), .I2(n9837), 
            .I3(n21964), .O(n13129));
    defparam i1_4_lut_adj_306.LUT_INIT = 16'hc0c4;
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12880), 
            .D(n14819), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13202_3_lut_4_lut (.I0(comm_test_buf_24[23]), .I1(\comm_buf[0] [7]), 
            .I2(n9837), .I3(n13273), .O(n15930));   // zim_main.vhd(527[3] 814[10])
    defparam i13202_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1631), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1632), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 wdtick_cnt_3783_3784_add_4_6_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[4]), 
            .I3(n20769), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1633), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_307 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21557));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_307.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3783_3784_add_4_6 (.CI(n20769), .I0(VAC_MOSI), .I1(wdtick_cnt[4]), 
            .CO(n20770));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_5_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[3]), 
            .I3(n20768), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_5 (.CI(n20768), .I0(VAC_MOSI), .I1(wdtick_cnt[3]), 
            .CO(n20769));
    SB_LUT4 wdtick_cnt_3783_3784_add_4_4_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[2]), 
            .I3(n20767), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3783_3784_add_4_4 (.CI(n20767), .I0(VAC_MOSI), .I1(wdtick_cnt[2]), 
            .CO(n20768));
    SB_LUT4 i12773_2_lut (.I0(n12838), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15496));   // zim_main.vhd(527[3] 814[10])
    defparam i12773_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i20055_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n22301));
    defparam i20055_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1634), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1635), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_3_lut_4_lut_adj_308 (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[1]), .I3(comm_state[2]), .O(n13117));
    defparam i1_3_lut_4_lut_adj_308.LUT_INIT = 16'hccc4;
    SB_LUT4 wdtick_cnt_3783_3784_add_4_3_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[1]), 
            .I3(n20766), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i19888_4_lut (.I0(comm_cmd[3]), .I1(comm_cmd[5]), .I2(comm_cmd[0]), 
            .I3(comm_cmd[2]), .O(n22399));
    defparam i19888_4_lut.LUT_INIT = 16'h0210;
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1636), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1637), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_126_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1735));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1638), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1639), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1640), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i59_4_lut (.I0(n22399), .I1(n21920), .I2(comm_cmd[6]), .I3(comm_cmd[0]), 
            .O(n40_adj_1689));
    defparam i59_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1641), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1642), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY wdtick_cnt_3783_3784_add_4_3 (.CI(n20766), .I0(VAC_MOSI), .I1(wdtick_cnt[1]), 
            .CO(n20767));
    SB_LUT4 i12815_2_lut_3_lut (.I0(n13117), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n15538));   // zim_main.vhd(527[3] 814[10])
    defparam i12815_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1643), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12761), 
            .D(n6_adj_1644), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1645), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13201_3_lut_4_lut (.I0(comm_test_buf_24[22]), .I1(\comm_buf[0] [6]), 
            .I2(n9837), .I3(n13273), .O(n15929));   // zim_main.vhd(527[3] 814[10])
    defparam i13201_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1646), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1647), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1648), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20562 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(eis_start), .I3(comm_cmd[1]), .O(n23522));
    defparam comm_cmd_0__bdd_4_lut_20562.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1649), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1650), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 wdtick_cnt_3783_3784_add_4_2_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[0]), 
            .I3(VCC_net), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3783_3784_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i19906_4_lut (.I0(n22396), .I1(comm_cmd[4]), .I2(n40_adj_1689), 
            .I3(comm_cmd[1]), .O(n22397));
    defparam i19906_4_lut.LUT_INIT = 16'hc088;
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1651), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12614), 
            .D(THERMOSTAT_N_534), .R(n21271));   // zim_main.vhd(527[3] 814[10])
    SB_CARRY wdtick_cnt_3783_3784_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[0]), .CO(n20766));
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12548), 
            .D(comm_length_2__N_514[1]), .R(n15378));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i58_4_lut (.I0(n22397), .I1(n4_adj_1749), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n29_adj_1688));
    defparam i58_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_309 (.I0(comm_state[0]), .I1(n21895), .I2(n21968), 
            .I3(n29_adj_1688), .O(n12838));
    defparam i1_4_lut_adj_309.LUT_INIT = 16'hc4c0;
    SB_LUT4 i19900_2_lut (.I0(bit_cnt_adj_1811[3]), .I1(bit_cnt_adj_1811[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n22326));   // dds_ad9837.vhd(23[9:18])
    defparam i19900_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_127_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1690));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1690), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1691));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_7_i30_3_lut (.I0(n22_adj_1691), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1692));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_127_Mux_7_i127_3_lut (.I0(n30_adj_1692), .I1(comm_test_buf_24[7]), 
            .I2(comm_cmd[6]), .I3(VAC_MOSI), .O(comm_buf_2__7__N_575[7]));   // zim_main.vhd(582[5] 686[14])
    defparam mux_127_Mux_7_i127_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15665_4_lut (.I0(dds_state_adj_1809[0]), .I1(n22326), .I2(dds_state_adj_1809[1]), 
            .I3(n8_adj_1686), .O(dds_state_2__N_887_adj_1817[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i15665_4_lut.LUT_INIT = 16'hc505;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12540), 
            .D(comm_index_2__N_511[2]), .R(n15378));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12540), 
            .D(comm_index_2__N_511[1]), .R(n15378));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18_adj_1595), 
            .D(n7_adj_1658), .R(comm_state[3]));   // zim_main.vhd(527[3] 814[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n12450), .D(n492), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 n23522_bdd_4_lut (.I0(n23522), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n22267));
    defparam n23522_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20572 (.I0(comm_cmd[1]), .I1(n26_adj_1723), 
            .I2(n22391), .I3(comm_cmd[2]), .O(n23516));
    defparam comm_cmd_1__bdd_4_lut_20572.LUT_INIT = 16'he4aa;
    SB_LUT4 n23516_bdd_4_lut (.I0(n23516), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n23519));
    defparam n23516_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13170_3_lut (.I0(acadc_skipCount[6]), .I1(n14_adj_1610), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15898));   // zim_main.vhd(527[3] 814[10])
    defparam i13170_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13171_3_lut (.I0(acadc_skipCount[7]), .I1(n14_adj_1609), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15899));   // zim_main.vhd(527[3] 814[10])
    defparam i13171_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_7_i6_3_lut (.I0(comm_buf_2__7__N_575[7]), 
            .I1(comm_rx_buf[7]), .I2(comm_state[1]), .I3(VAC_MOSI), .O(n6_adj_1631));   // zim_main.vhd(529[4] 813[13])
    defparam comm_state_3__I_0_353_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13200_3_lut_4_lut (.I0(comm_test_buf_24[21]), .I1(n9837), .I2(\comm_buf[0] [5]), 
            .I3(n13273), .O(n15928));   // zim_main.vhd(527[3] 814[10])
    defparam i13200_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12091_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14819));   // zim_main.vhd(529[4] 813[13])
    defparam i12091_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12087_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14815));   // zim_main.vhd(529[4] 813[13])
    defparam i12087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1758));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20548 (.I0(comm_cmd[1]), .I1(n26_adj_1758), 
            .I2(n22595), .I3(comm_cmd[2]), .O(n23510));
    defparam comm_cmd_1__bdd_4_lut_20548.LUT_INIT = 16'he4aa;
    SB_CARRY add_70_16 (.CI(n20650), .I0(acadc_skipcnt[14]), .I1(VAC_MOSI), 
            .CO(n20651));
    SB_LUT4 n23510_bdd_4_lut (.I0(n23510), .I1(n22314), .I2(n23_adj_1756), 
            .I3(comm_cmd[2]), .O(n23513));
    defparam n23510_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12083_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14811));   // zim_main.vhd(529[4] 813[13])
    defparam i12083_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12079_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14807));   // zim_main.vhd(529[4] 813[13])
    defparam i12079_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20553 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n23504));
    defparam comm_cmd_0__bdd_4_lut_20553.LUT_INIT = 16'he4aa;
    SB_LUT4 i13172_3_lut (.I0(acadc_skipCount[8]), .I1(n14_adj_1608), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15900));   // zim_main.vhd(527[3] 814[10])
    defparam i13172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n23504_bdd_4_lut (.I0(n23504), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n22288));
    defparam n23504_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n12450), .D(n491), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i12075_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14803));   // zim_main.vhd(529[4] 813[13])
    defparam i12075_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12071_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14799));   // zim_main.vhd(529[4] 813[13])
    defparam i12071_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13173_3_lut (.I0(acadc_skipCount[9]), .I1(n14_adj_1656), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15901));   // zim_main.vhd(527[3] 814[10])
    defparam i13173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_310 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[4]), .O(n12));   // zim_main.vhd(746[11:20])
    defparam i2_3_lut_4_lut_adj_310.LUT_INIT = 16'hefff;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20543 (.I0(comm_cmd[1]), .I1(n19_adj_1789), 
            .I2(n20_adj_1790), .I3(comm_cmd[2]), .O(n23498));
    defparam comm_cmd_1__bdd_4_lut_20543.LUT_INIT = 16'he4aa;
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n12450), .D(n490), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i1_2_lut_adj_311 (.I0(comm_index[2]), .I1(n29), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n4_adj_1749));
    defparam i1_2_lut_adj_311.LUT_INIT = 16'h4444;
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n12450), .D(n489), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i12780_2_lut (.I0(n12880), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15503));   // zim_main.vhd(527[3] 814[10])
    defparam i12780_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_312 (.I0(n11258), .I1(n4_adj_1749), .I2(comm_state[1]), 
            .I3(n35), .O(n12_adj_1684));
    defparam i19_4_lut_adj_312.LUT_INIT = 16'hc505;
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n12450), .D(n488), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i13199_3_lut_4_lut (.I0(comm_test_buf_24[20]), .I1(\comm_buf[0] [4]), 
            .I2(n9837), .I3(n13273), .O(n15927));   // zim_main.vhd(527[3] 814[10])
    defparam i13199_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n12450), .D(n487), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n12450), .D(n486), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i13136_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1810[15]), .I2(dds_state_adj_1809[1]), 
            .I3(VAC_MOSI), .O(n15864));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13136_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_3_i16_3_lut (.I0(buf_dds0[11]), .I1(buf_dds1[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1787));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_125_Mux_3_i17_3_lut (.I0(IAC_FLT1), .I1(buf_adcdata_iac[19]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1788));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_313 (.I0(n21_adj_1803), .I1(n23), .I2(n22_adj_1801), 
            .I3(n24_adj_1800), .O(n30_adj_1769));   // zim_main.vhd(505[9:35])
    defparam i14_4_lut_adj_313.LUT_INIT = 16'hfffe;
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n12450), .D(n485), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n12450), .D(n484), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 n23498_bdd_4_lut (.I0(n23498), .I1(n17_adj_1788), .I2(n16_adj_1787), 
            .I3(comm_cmd[2]), .O(n23501));
    defparam n23498_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n12450), .D(n483), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n12450), .D(n482), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n12450), .D(n481), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n12450), .D(n480), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i13174_3_lut (.I0(acadc_skipCount[10]), .I1(n14_adj_1655), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15902));   // zim_main.vhd(527[3] 814[10])
    defparam i13174_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_314 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21555));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_314.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n12450), .D(n479), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n12450), .D(n478), .R(n15439));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n12394), 
            .D(n423), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n12394), 
            .D(n422), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n12394), 
            .D(n421), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n12394), 
            .D(n420), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n12394), 
            .D(n419), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n12394), 
            .D(n418), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i1_3_lut_4_lut_adj_315 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(n6), .I3(comm_state[0]), .O(n21964));   // zim_main.vhd(746[11:20])
    defparam i1_3_lut_4_lut_adj_315.LUT_INIT = 16'hfffe;
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n12394), 
            .D(n417), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i1_3_lut_adj_316 (.I0(n12_adj_1684), .I1(n21895), .I2(n21968), 
            .I3(VAC_MOSI), .O(n12880));
    defparam i1_3_lut_adj_316.LUT_INIT = 16'hc8c8;
    SB_LUT4 i12067_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14795));   // zim_main.vhd(529[4] 813[13])
    defparam i12067_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n12394), 
            .D(n416), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i13175_3_lut (.I0(acadc_skipCount[11]), .I1(n14_adj_1654), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15903));   // zim_main.vhd(527[3] 814[10])
    defparam i13175_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i9 (.Q(data_count[9]), .C(clk_32MHz), .E(n12394), 
            .D(n415), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i12063_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14791));   // zim_main.vhd(529[4] 813[13])
    defparam i12063_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12059_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14787));   // zim_main.vhd(529[4] 813[13])
    defparam i12059_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13176_3_lut (.I0(acadc_skipCount[12]), .I1(n14_adj_1653), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15904));   // zim_main.vhd(527[3] 814[10])
    defparam i13176_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n12394), 
            .D(n442), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_DFFN eis_end_302 (.Q(eis_end), .C(clk_32MHz), .D(n15863));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 i12055_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14783));   // zim_main.vhd(529[4] 813[13])
    defparam i12055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13177_3_lut (.I0(acadc_skipCount[13]), .I1(n14_adj_1660), .I2(n13141), 
            .I3(VAC_MOSI), .O(n15905));   // zim_main.vhd(527[3] 814[10])
    defparam i13177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12051_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14779));   // zim_main.vhd(529[4] 813[13])
    defparam i12051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12047_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14775));   // zim_main.vhd(529[4] 813[13])
    defparam i12047_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR clk_cnt_3781_3782__i1 (.Q(clk_cnt[0]), .C(DDS_MCLK1), .D(n15), 
            .R(n18996));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i13198_3_lut_4_lut (.I0(comm_test_buf_24[19]), .I1(\comm_buf[0] [3]), 
            .I2(n9837), .I3(n13273), .O(n15926));   // zim_main.vhd(527[3] 814[10])
    defparam i13198_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12043_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14771));   // zim_main.vhd(529[4] 813[13])
    defparam i12043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13197_3_lut_4_lut (.I0(comm_test_buf_24[18]), .I1(\comm_buf[0] [2]), 
            .I2(n9837), .I3(n13273), .O(n15925));   // zim_main.vhd(527[3] 814[10])
    defparam i13197_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFSR secclk_cnt_3785_3786__i1 (.Q(secclk_cnt[0]), .C(DDS_MCLK1), 
            .D(n120), .R(n15420));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12787_2_lut (.I0(n12892), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15510));   // zim_main.vhd(527[3] 814[10])
    defparam i12787_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13196_3_lut_4_lut (.I0(comm_test_buf_24[17]), .I1(\comm_buf[0] [1]), 
            .I2(n9837), .I3(n13273), .O(n15924));   // zim_main.vhd(527[3] 814[10])
    defparam i13196_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13195_3_lut_4_lut (.I0(comm_test_buf_24[16]), .I1(\comm_buf[0] [0]), 
            .I2(n9837), .I3(n13273), .O(n15923));   // zim_main.vhd(527[3] 814[10])
    defparam i13195_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19_4_lut_adj_317 (.I0(n11258), .I1(n20318), .I2(comm_state[1]), 
            .I3(n22089), .O(n12_adj_1677));
    defparam i19_4_lut_adj_317.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_3_lut_adj_318 (.I0(n12_adj_1677), .I1(n21895), .I2(n21968), 
            .I3(VAC_MOSI), .O(n12892));
    defparam i1_3_lut_adj_318.LUT_INIT = 16'hc8c8;
    SB_LUT4 mux_125_Mux_5_i25_4_lut (.I0(n23_adj_1773), .I1(req_data_cnt[13]), 
            .I2(comm_cmd[1]), .I3(comm_cmd[0]), .O(n25_adj_1774));   // zim_main.vhd(582[5] 686[14])
    defparam mux_125_Mux_5_i25_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12039_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14767));   // zim_main.vhd(529[4] 813[13])
    defparam i12039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19135_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(n9_adj_1507), 
            .I3(VAC_MOSI), .O(n22061));   // zim_main.vhd(746[11:20])
    defparam i19135_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_319 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21553));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_319.LUT_INIT = 16'hca0a;
    SB_LUT4 i16298_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n18996));
    defparam i16298_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12035_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14763));   // zim_main.vhd(529[4] 813[13])
    defparam i12035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_320 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21551));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_320.LUT_INIT = 16'hca0a;
    SB_LUT4 i12031_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14759));   // zim_main.vhd(529[4] 813[13])
    defparam i12031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_321 (.I0(n9), .I1(comm_state[3]), .I2(n9837), 
            .I3(n21983), .O(n13141));
    defparam i1_4_lut_adj_321.LUT_INIT = 16'hc0c4;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n25_adj_1774), 
            .I2(n28_adj_1775), .I3(comm_cmd[3]), .O(n23492));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_CARRY add_65_5 (.CI(n20624), .I0(data_cntvec[3]), .I1(VAC_MOSI), 
            .CO(n20625));
    SB_LUT4 i12027_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14755));   // zim_main.vhd(529[4] 813[13])
    defparam i12027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n23492_bdd_4_lut (.I0(n23492), .I1(n23387), .I2(n23351), .I3(comm_cmd[3]), 
            .O(n23495));
    defparam n23492_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_64_7 (.CI(n20617), .I0(data_count[5]), .I1(VAC_MOSI), 
            .CO(n20618));
    SB_LUT4 i13180_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1613), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15908));   // zim_main.vhd(527[3] 814[10])
    defparam i13180_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_322 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21549));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_322.LUT_INIT = 16'hca0a;
    SB_LUT4 i12023_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14751));   // zim_main.vhd(529[4] 813[13])
    defparam i12023_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12019_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14747));   // zim_main.vhd(529[4] 813[13])
    defparam i12019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12015_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14743));   // zim_main.vhd(529[4] 813[13])
    defparam i12015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13181_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1612), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15909));   // zim_main.vhd(527[3] 814[10])
    defparam i13181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13194_3_lut_4_lut (.I0(req_data_cnt[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9837), .I3(n13171), .O(n15922));   // zim_main.vhd(527[3] 814[10])
    defparam i13194_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_126_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1713));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20538 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n23486));
    defparam comm_cmd_0__bdd_4_lut_20538.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_323 (.I0(comm_state[0]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n35));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_adj_323.LUT_INIT = 16'h4444;
    SB_LUT4 i13182_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1662), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15910));   // zim_main.vhd(527[3] 814[10])
    defparam i13182_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16302_2_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n112));   // zim_main.vhd(582[5] 686[14])
    defparam i16302_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 n23486_bdd_4_lut (.I0(n23486), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n22180));
    defparam n23486_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19344_3_lut (.I0(n16_adj_1713), .I1(buf_adcdata_iac[15]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22271));
    defparam i19344_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_test_buf_24_i0 (.Q(comm_test_buf_24[0]), .C(clk_32MHz), 
            .E(n13211), .D(comm_test_buf_24_23__N_755[0]), .R(n15545));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i2_4_lut_adj_324 (.I0(\comm_buf[0] [0]), .I1(n24_adj_1575), 
            .I2(n21938), .I3(n11985), .O(n20880));
    defparam i2_4_lut_adj_324.LUT_INIT = 16'hffec;
    SB_DFFESR buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .E(n13117), 
            .D(n20880), .R(n15538));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n13076), 
            .D(n23375), .R(n15531));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12958), 
            .D(n14390), .R(n15517));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 mux_126_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1714));   // zim_main.vhd(582[5] 686[14])
    defparam mux_126_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19345_3_lut (.I0(n19_adj_1714), .I1(buf_readRTD[7]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n22272));
    defparam i19345_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_325 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21545));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_325.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12892), 
            .D(n14386), .R(n15510));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12880), 
            .D(n14382), .R(n15503));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12838), 
            .D(n6_adj_1604), .R(n15496));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12761), 
            .D(n14378), .R(n15489));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i1_2_lut_adj_326 (.I0(comm_index[2]), .I1(n21956), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20318));
    defparam i1_2_lut_adj_326.LUT_INIT = 16'h8888;
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12677), 
            .D(n6_adj_1603), .R(n15482));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12548), 
            .D(comm_length_2__N_514[0]), .R(n15378));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_327 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21543));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_327.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12540), 
            .D(comm_index_2__N_511[0]), .R(n15378));   // zim_main.vhd(527[3] 814[10])
    SB_DFFESR flagcntwd_306 (.Q(flagcntwd), .C(clk_32MHz), .E(n12050), 
            .D(n3), .R(n21271));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12_4_lut_adj_328 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21541));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_328.LUT_INIT = 16'hca0a;
    SB_LUT4 i12794_2_lut (.I0(n12958), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15517));   // zim_main.vhd(527[3] 814[10])
    defparam i12794_2_lut.LUT_INIT = 16'h8888;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n12394), 
            .D(n424), .R(n15431));   // zim_main.vhd(447[3] 522[10])
    SB_LUT4 add_70_15_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[13]), .I2(VAC_MOSI), 
            .I3(n20649), .O(n480)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n12450), .D(n493), .R(n22120));   // zim_main.vhd(447[3] 522[10])
    SB_DFFR wdtick_flag_292 (.Q(wdtick_flag), .C(DDS_MCLK1), .D(wdtick_flag_N_366), 
            .R(flagcntwd));   // zim_main.vhd(397[3] 408[10])
    SB_LUT4 i12_4_lut_adj_329 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n13746), .I3(adc_state_adj_1825[0]), .O(n21539));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_329.LUT_INIT = 16'hca0a;
    SB_LUT4 i19_4_lut_adj_330 (.I0(n11258), .I1(n20318), .I2(comm_state[1]), 
            .I3(n35), .O(n12_adj_1802));
    defparam i19_4_lut_adj_330.LUT_INIT = 16'hc505;
    SB_LUT4 i13183_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1611), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15911));   // zim_main.vhd(527[3] 814[10])
    defparam i13183_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_331 (.I0(comm_state[0]), .I1(n12), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21983));   // zim_main.vhd(529[4] 813[13])
    defparam i1_2_lut_adj_331.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_332 (.I0(n12_adj_1802), .I1(n21895), .I2(n21968), 
            .I3(VAC_MOSI), .O(n12958));
    defparam i1_3_lut_adj_332.LUT_INIT = 16'hc8c8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20523 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n23480));
    defparam comm_cmd_0__bdd_4_lut_20523.LUT_INIT = 16'he4aa;
    SB_LUT4 n23480_bdd_4_lut (.I0(n23480), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22183));
    defparam n23480_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13184_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1661), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15912));   // zim_main.vhd(527[3] 814[10])
    defparam i13184_3_lut.LUT_INIT = 16'hcaca;
    ADC_MAX31865 RTD (.RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .\adc_state[2] (adc_state[2]), .buf_cfgRTD({buf_cfgRTD}), .GND_net(VAC_MOSI), 
            .n13603(n13603), .read_buf({Open_0, Open_1, Open_2, Open_3, 
            Open_4, Open_5, Open_6, Open_7, Open_8, Open_9, Open_10, 
            Open_11, read_buf[3:0]}), .n13584(n13584), .n21989(n21989), 
            .\read_buf[5] (read_buf[5]), .\read_buf[6] (read_buf[6]), .\read_buf[7] (read_buf[7]), 
            .\read_buf[8] (read_buf[8]), .\read_buf[9] (read_buf[9]), .\read_buf[10] (read_buf[10]), 
            .RTD_DRDY(RTD_DRDY), .\read_buf[11] (read_buf[11]), .\read_buf[12] (read_buf[12]), 
            .\read_buf[13] (read_buf[13]), .buf_readRTD({buf_readRTD}), 
            .\comm_cmd[0] (comm_cmd[0]), .n20(n20_adj_1766), .\comm_buf[0][7] (\comm_buf[0] [7]), 
            .n9837(n9837), .n13129(n13129), .n15892(n15892), .n21425(n21425), 
            .n21325(n21325), .n21423(n21423), .n21421(n21421), .n21419(n21419), 
            .n21417(n21417), .n21415(n21415), .n21413(n21413), .n21411(n21411), 
            .n21409(n21409), .n21407(n21407), .VCC_net(VCC_net), .n21361(n21361), 
            .n21363(n21363), .n21405(n21405), .n21403(n21403), .n21401(n21401), 
            .\read_buf[15] (read_buf[15]), .n21331(n21331), .\read_buf[14] (read_buf[14]), 
            .RTD_SDI(RTD_SDI));   // zim_main.vhd(860[8:20])
    SB_LUT4 i13185_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1610), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15913));   // zim_main.vhd(527[3] 814[10])
    defparam i13185_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_start_332 (.Q(eis_start), .C(clk_32MHz), .D(n15853));   // zim_main.vhd(527[3] 814[10])
    SB_DFF eis_stop_331 (.Q(eis_stop), .C(clk_32MHz), .D(n15852));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12011_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14739));   // zim_main.vhd(529[4] 813[13])
    defparam i12011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13186_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1609), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15914));   // zim_main.vhd(527[3] 814[10])
    defparam i13186_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_rst_330 (.Q(acadc_rst), .C(clk_32MHz), .D(n15851));   // zim_main.vhd(527[3] 814[10])
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15850));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i12808_3_lut (.I0(n13076), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n15531));   // zim_main.vhd(527[3] 814[10])
    defparam i12808_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i1_4_lut_adj_333 (.I0(n12966), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9714), .O(n13076));
    defparam i1_4_lut_adj_333.LUT_INIT = 16'ha8a0;
    SB_LUT4 i14949_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1608), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15915));
    defparam i14949_3_lut.LUT_INIT = 16'hcaca;
    DDS_AD9837 SIG_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .trig_dds0(trig_dds0), .GND_net(VAC_MOSI), .DDS_CS(DDS_CS), 
            .buf_dds0({buf_dds0}), .tmp_buf({tmp_buf[15], Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, Open_18, Open_19, 
            Open_20, Open_21, Open_22, Open_23, Open_24, Open_25, 
            Open_26}), .\bit_cnt[0] (bit_cnt_adj_1806[0]), .n15562(n15562), 
            .n16578(n16578), .VCC_net(VCC_net), .n15862(n15862), .DDS_MOSI(DDS_MOSI), 
            .n15854(n15854), .DDS_SCK(DDS_SCK));   // zim_main.vhd(840[12:22])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15849));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15848));   // zim_main.vhd(527[3] 814[10])
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15847));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 i13118_3_lut (.I0(buf_control[0]), .I1(n14_adj_1608), .I2(n12610), 
            .I3(VAC_MOSI), .O(n15846));   // zim_main.vhd(527[3] 814[10])
    defparam i13118_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15846));   // zim_main.vhd(527[3] 814[10])
    SB_DFF trig_dds1_308 (.Q(trig_dds1), .C(clk_32MHz), .D(n21031));   // zim_main.vhd(527[3] 814[10])
    SB_LUT4 add_65_13_lut (.I0(VAC_MOSI), .I1(data_cntvec[11]), .I2(VAC_MOSI), 
            .I3(n20632), .O(n431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_65_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13188_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1656), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15916));   // zim_main.vhd(527[3] 814[10])
    defparam i13188_3_lut.LUT_INIT = 16'hcaca;
    ADC_ADS127_U1 ADC_IAC (.\adc_state[0] (adc_state_adj_1825[0]), .n21951(n21951), 
            .cmd_rdadctmp({cmd_rdadctmp}), .buf_adcdata_iac({buf_adcdata_iac}), 
            .clk_32MHz(clk_32MHz), .n21459(n21459), .VCC_net(VCC_net), 
            .IAC_DRDY(IAC_DRDY), .n21892(n21892), .n13746(n13746), .GND_net(VAC_MOSI), 
            .n21469(n21469), .n21471(n21471), .n21473(n21473), .n21475(n21475), 
            .n21477(n21477), .n21479(n21479), .n21481(n21481), .n21501(n21501), 
            .acadc_trig(acadc_trig), .DTRIG_N_1182(DTRIG_N_1182), .\adc_state[1] (adc_state_adj_1825[1]), 
            .n21509(n21509), .n21511(n21511), .n21513(n21513), .n21515(n21515), 
            .n21517(n21517), .n21519(n21519), .n21521(n21521), .n21527(n21527), 
            .n21529(n21529), .n21531(n21531), .n21533(n21533), .n21535(n21535), 
            .n21537(n21537), .n21539(n21539), .n21541(n21541), .n21543(n21543), 
            .n21545(n21545), .n21549(n21549), .n21551(n21551), .n21553(n21553), 
            .n21555(n21555), .n21557(n21557), .n21651(n21651), .n11(n11_adj_1577), 
            .IAC_CS(IAC_CS), .n21453(n21453), .IAC_SCLK(IAC_SCLK), .n21451(n21451), 
            .acadc_dtrig_i(acadc_dtrig_i));   // zim_main.vhd(872[12:22])
    SB_DFF trig_dds0_307 (.Q(trig_dds0), .C(clk_32MHz), .D(n21043));   // zim_main.vhd(527[3] 814[10])
    zim_pll pll_main (.GND_net(VAC_MOSI), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .DDS_MCLK1(DDS_MCLK1));   // zim_main.vhd(817[13:20])
    SB_LUT4 i1_2_lut_adj_334 (.I0(TEST_LED), .I1(n15420), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(TEST_LED_N_779));
    defparam i1_2_lut_adj_334.LUT_INIT = 16'h6666;
    DDS_AD9837_U0 CLK_DDS (.buf_dds1({buf_dds1}), .dds_state({dds_state_adj_1809}), 
            .\dds_state_2__N_887[0] (dds_state_2__N_887_adj_1817[0]), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .GND_net(VAC_MOSI), .\tmp_buf[15] (tmp_buf_adj_1810[15]), 
            .bit_cnt({bit_cnt_adj_1811}), .n8(n8_adj_1686), .trig_dds1(trig_dds1), 
            .VCC_net(VCC_net), .\bit_cnt_3__N_935[3] (bit_cnt_3__N_935_adj_1815[3]), 
            .\bit_cnt_3__N_935[2] (bit_cnt_3__N_935_adj_1815[2]), .\bit_cnt_3__N_935[1] (bit_cnt_3__N_935_adj_1815[1]), 
            .n15864(n15864), .DDS_MOSI1(DDS_MOSI1), .n15855(n15855), .DDS_SCK1(DDS_SCK1));   // zim_main.vhd(850[12:22])
    SB_DFF SecClk_295 (.Q(TEST_LED), .C(DDS_MCLK1), .D(TEST_LED_N_779));   // zim_main.vhd(413[3] 419[10])
    SB_LUT4 i13189_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1655), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15917));   // zim_main.vhd(527[3] 814[10])
    defparam i13189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13190_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1654), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15918));   // zim_main.vhd(527[3] 814[10])
    defparam i13190_3_lut.LUT_INIT = 16'hcaca;
    ADC_ADS1252 ADC_VDC (.GND_net(VAC_MOSI), .adc_state({adc_state_adj_1851[3:2], 
            Open_27, Open_28}), .\adc_state[1] (adc_state_adj_1851[1]), 
            .cmd_rdadctmp({Open_29, cmd_rdadctmp_adj_1852[22], Open_30, 
            Open_31, Open_32, Open_33, Open_34, Open_35, Open_36, 
            Open_37, Open_38, Open_39, Open_40, Open_41, Open_42, 
            Open_43, Open_44, Open_45, Open_46, Open_47, Open_48, 
            Open_49, Open_50, Open_51}), .VDC_CLK(VDC_CLK), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), 
            .n21133(n21133), .VCC_net(VCC_net), .\cmd_rdadctmp[1] (cmd_rdadctmp_adj_1852[1]), 
            .n21135(n21135), .\cmd_rdadctmp[2] (cmd_rdadctmp_adj_1852[2]), 
            .n21137(n21137), .\cmd_rdadctmp[3] (cmd_rdadctmp_adj_1852[3]), 
            .n21139(n21139), .\cmd_rdadctmp[4] (cmd_rdadctmp_adj_1852[4]), 
            .n21141(n21141), .\cmd_rdadctmp[5] (cmd_rdadctmp_adj_1852[5]), 
            .n21143(n21143), .\cmd_rdadctmp[6] (cmd_rdadctmp_adj_1852[6]), 
            .n21145(n21145), .\cmd_rdadctmp[7] (cmd_rdadctmp_adj_1852[7]), 
            .n21147(n21147), .\cmd_rdadctmp[8] (cmd_rdadctmp_adj_1852[8]), 
            .n21149(n21149), .\cmd_rdadctmp[9] (cmd_rdadctmp_adj_1852[9]), 
            .n21151(n21151), .\cmd_rdadctmp[10] (cmd_rdadctmp_adj_1852[10]), 
            .n21153(n21153), .\cmd_rdadctmp[11] (cmd_rdadctmp_adj_1852[11]), 
            .n21155(n21155), .\cmd_rdadctmp[12] (cmd_rdadctmp_adj_1852[12]), 
            .n21157(n21157), .\cmd_rdadctmp[13] (cmd_rdadctmp_adj_1852[13]), 
            .n21159(n21159), .\cmd_rdadctmp[14] (cmd_rdadctmp_adj_1852[14]), 
            .n21161(n21161), .\cmd_rdadctmp[15] (cmd_rdadctmp_adj_1852[15]), 
            .n21163(n21163), .\cmd_rdadctmp[16] (cmd_rdadctmp_adj_1852[16]), 
            .n21165(n21165), .\cmd_rdadctmp[17] (cmd_rdadctmp_adj_1852[17]), 
            .n21167(n21167), .\cmd_rdadctmp[18] (cmd_rdadctmp_adj_1852[18]), 
            .n21169(n21169), .\cmd_rdadctmp[19] (cmd_rdadctmp_adj_1852[19]), 
            .n21171(n21171), .\cmd_rdadctmp[20] (cmd_rdadctmp_adj_1852[20]), 
            .n21173(n21173), .\cmd_rdadctmp[21] (cmd_rdadctmp_adj_1852[21]), 
            .n21175(n21175), .n21277(n21277), .buf_adcdata_vdc({buf_adcdata_vdc}), 
            .n21279(n21279), .n21281(n21281), .n21283(n21283), .n21285(n21285), 
            .n21287(n21287), .n21289(n21289), .n21291(n21291), .n21293(n21293), 
            .n21295(n21295), .n21297(n21297), .n21299(n21299), .n21301(n21301), 
            .n21303(n21303), .n21305(n21305), .n21307(n21307), .n21309(n21309), 
            .n21311(n21311), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), .n21313(n21313), 
            .n21315(n21315), .n21317(n21317), .n21319(n21319), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .n21321(n21321), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\adc_state_3__N_1336[0] (VDC_SDO), .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), 
            .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), 
            .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), 
            .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), 
            .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .n12356(n12356), .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .n12352(n12352), .n13925(n13925), .n21207(n21207), .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1852[0]), 
            .n21369(n21369), .n21375(n21375), .VDC_SCLK(VDC_SCLK), .DDS_MCLK1(DDS_MCLK1));   // zim_main.vhd(900[12:23])
    SB_LUT4 i1_4_lut_adj_335 (.I0(\comm_buf[1] [1]), .I1(n11979), .I2(\comm_buf[2] [1]), 
            .I3(comm_cmd[0]), .O(n11980));
    defparam i1_4_lut_adj_335.LUT_INIT = 16'hc088;
    SB_LUT4 i13191_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1653), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15919));   // zim_main.vhd(527[3] 814[10])
    defparam i13191_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_185_i9_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n9_adj_1507));   // zim_main.vhd(769[11:20])
    defparam equal_185_i9_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i2_4_lut_adj_336 (.I0(\comm_buf[0] [1]), .I1(n24_adj_1601), 
            .I2(n21929), .I3(n11980), .O(n20886));
    defparam i2_4_lut_adj_336.LUT_INIT = 16'hffec;
    SB_LUT4 i13192_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1660), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15920));   // zim_main.vhd(527[3] 814[10])
    defparam i13192_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_337 (.I0(\comm_buf[1] [2]), .I1(n11979), .I2(\comm_buf[2] [2]), 
            .I3(comm_cmd[0]), .O(n11983));
    defparam i1_4_lut_adj_337.LUT_INIT = 16'hc088;
    SB_LUT4 i1_2_lut_4_lut_adj_338 (.I0(comm_cmd[2]), .I1(n112), .I2(comm_state[0]), 
            .I3(n12), .O(n11258));
    defparam i1_2_lut_4_lut_adj_338.LUT_INIT = 16'hfffd;
    SB_LUT4 i13193_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1652), .I2(n13171), 
            .I3(VAC_MOSI), .O(n15921));   // zim_main.vhd(527[3] 814[10])
    defparam i13193_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (VCC_net, GND_net, \adc_state[0] , clk_32MHz, VAC_DRDY, 
            acadc_trig, DTRIG_N_1182, \adc_state[1] , n13847, n21559, 
            cmd_rdadctmp, n21561, n21563, n21565, n21567, n21569, 
            n21571, n21573, n21575, n21577, n21579, n21581, n21583, 
            n21585, n21587, n21589, n21591, n21593, n21595, n21597, 
            n21599, n21601, n21603, n21605, n21607, n21609, n21611, 
            n21613, n21615, n21617, n21619, buf_adcdata_vac, acadc_dtrig_v, 
            acadc_dtrig_i, iac_raw_buf_N_823, n21655, n11, VAC_CS, 
            n21948, n21457, VAC_SCLK, n21455);
    input VCC_net;
    input GND_net;
    output \adc_state[0] ;
    input clk_32MHz;
    input VAC_DRDY;
    input acadc_trig;
    output DTRIG_N_1182;
    output \adc_state[1] ;
    output n13847;
    input n21559;
    output [31:0]cmd_rdadctmp;
    input n21561;
    input n21563;
    input n21565;
    input n21567;
    input n21569;
    input n21571;
    input n21573;
    input n21575;
    input n21577;
    input n21579;
    input n21581;
    input n21583;
    input n21585;
    input n21587;
    input n21589;
    input n21591;
    input n21593;
    input n21595;
    input n21597;
    input n21599;
    input n21601;
    input n21603;
    input n21605;
    input n21607;
    input n21609;
    input n21611;
    input n21613;
    input n21615;
    input n21617;
    input n21619;
    output [23:0]buf_adcdata_vac;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_823;
    input n21655;
    input n11;
    output VAC_CS;
    input n21948;
    input n21457;
    output VAC_SCLK;
    input n21455;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n20683;
    wire [2:0]adc_state_2__N_1087;
    
    wire n22030, n13842, n13747, n22109, n22126, n22389, n13784, 
        n15660, n12, n15976, n15975, n15974, n15973, n15972, n15971, 
        n15970, n15969, n15968, n15967, n15966, n15965, n15964, 
        n15963, n15962, n15961, n15960, n15959, n15958, n15957, 
        n15956, n15955, n15954, n17;
    wire [7:0]n63;
    
    wire n20689, n20688, n20687, n20686, n20685, n20684, n15859;
    
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n20683));
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n22030), 
            .D(adc_state_2__N_1087[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n13842));
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_3_lut (.I0(acadc_trig), .I1(DTRIG_N_1182), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n13747));
    defparam i3_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i1_4_lut (.I0(\adc_state[1] ), .I1(n13747), .I2(n13842), .I3(DTRIG_N_1182), 
            .O(n22030));
    defparam i1_4_lut.LUT_INIT = 16'hddd5;
    SB_LUT4 i19182_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n22109));
    defparam i19182_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19199_4_lut (.I0(bit_cnt[7]), .I1(n22109), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n22126));
    defparam i19199_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20123_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n22126), .O(n22389));   // adc_ads127.vhd(44[4] 88[13])
    defparam i20123_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n22389), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_1182), .I3(\adc_state[1] ), .O(adc_state_2__N_1087[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12937_2_lut (.I0(n13784), .I1(DTRIG_N_1182), .I2(GND_net), 
            .I3(GND_net), .O(n15660));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12937_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_48 (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(DTRIG_N_1182), 
            .I3(\adc_state[1] ), .O(n13784));
    defparam i1_4_lut_adj_48.LUT_INIT = 16'h0150;
    SB_LUT4 i1_2_lut_4_lut (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(\adc_state[1] ), 
            .I3(DTRIG_N_1182), .O(n13847));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h00b0;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21559));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21561));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21563));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21565));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21567));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21569));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21571));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_1087[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_1182), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_1087[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21573));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21575));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21577));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21579));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21581));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21583));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21585));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21587));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21589));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21591));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21593));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21595));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21597));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21599));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21601));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21603));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21605));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21607));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21609));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21611));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21613));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21615));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21617));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21619));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15976));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15975));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15974));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15973));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15972));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15971));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15970));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15969));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15968));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15967));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15966));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15965));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15964));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15963));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15962));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15961));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15960));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15959));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15958));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15957));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15956));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15955));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15954));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut_adj_49 (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_823));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_49.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_1182), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_1087[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(VAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_1182), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i20201_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i20201_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i16396_3_lut (.I0(DTRIG_N_1182), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_1087[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i16396_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21655));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n13784), .D(n63[7]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n13784), .D(n63[6]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n13784), .D(n63[5]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n13784), .D(n63[4]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n13784), .D(n63[3]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n13784), .D(n63[2]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n13784), .D(n63[1]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13248_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15976));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13248_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n20689), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n20688), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13241_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15969));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13241_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_8 (.CI(n20688), .I0(bit_cnt[6]), .I1(GND_net), .CO(n20689));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n20687), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13232_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15960));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13232_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13244_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15972));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13244_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13229_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15957));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13229_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13238_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15966));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13238_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13235_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15963));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13235_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13247_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15975));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13247_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13226_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15954));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13226_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13240_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15968));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13240_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13233_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15961));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13233_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13245_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15973));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13245_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13228_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15956));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13228_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13239_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15967));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13239_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_7 (.CI(n20687), .I0(bit_cnt[5]), .I1(GND_net), .CO(n20688));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n20686), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13234_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15962));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13234_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13246_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15974));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13246_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13227_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15955));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13227_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13242_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15970));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13242_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_6 (.CI(n20686), .I0(bit_cnt[4]), .I1(GND_net), .CO(n20687));
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n13784), .D(n63[0]), 
            .R(n15660));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13231_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15959));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13231_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13243_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15971));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13243_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13230_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15958));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13230_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n20685), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13237_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15965));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13237_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13236_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15964));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13236_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_5 (.CI(n20685), .I0(bit_cnt[3]), .I1(GND_net), .CO(n20686));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n20684), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n20684), .I0(bit_cnt[2]), .I1(GND_net), .CO(n20685));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n20683), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13131_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21948), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15859));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13131_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n21457));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n21455));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15859));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n20683), .I0(bit_cnt[1]), .I1(GND_net), .CO(n20684));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_data_vld, clk_32MHz, comm_clear, comm_tx_buf, 
            GND_net, VCC_net, ICE_SPI_MOSI, ICE_SPI_SCLK, comm_rx_buf, 
            ICE_SPI_MISO);
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input [7:0]comm_tx_buf;
    input GND_net;
    input VCC_net;
    input ICE_SPI_MOSI;
    input ICE_SPI_SCLK;
    output [7:0]comm_rx_buf;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    
    wire DATA_VLD_N_886;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n15337, data_tx_7__N_854, imiso, n15335, data_tx_7__N_862;
    wire [3:0]n21;
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire n15341, n15340, n15333, n15322, data_tx_7__N_861, data_tx_7__N_868, 
        data_tx_7__N_856, n24022, n15334, n15331, imosi_N_841, data_tx_7__N_871, 
        data_tx_7__N_857, data_tx_7__N_874, data_tx_7__N_858, iclk_N_851, 
        n24019, imosi, imosi_N_840, n15345, n15344, DOUT_7__N_833, 
        n24016, n24013, DOUT_7__N_832, DOUT_7__N_831, DOUT_7__N_830, 
        DOUT_7__N_829, DOUT_7__N_828, DOUT_7__N_826, n15330, n15327, 
        n15338, n15326, iclk_N_850, data_tx_7__N_877, data_tx_7__N_859, 
        n15323, data_tx_7__N_883, data_tx_7__N_880, data_tx_7__N_860, 
        n15369, data_tx_7__N_865, n24040, n24037, n15349, n15348, 
        n15353, n15352, n24034, data_tx_7__N_855, n24031, n24028, 
        n24025, DOUT_7__N_835, DOUT_7__N_834, n15365, n15364, n15368, 
        n18536, n15361, n15360, n15357, n15356;
    
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_886), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_DFFS data_tx_i7_12609_12610_set (.Q(n15337), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_854));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR MISO_48_12606_12607_reset (.Q(n15335), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_862));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFNR bit_cnt_3787__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_862));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12614_3_lut (.I0(n15341), .I1(n15340), .I2(n15333), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i12614_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_12594_12595_set (.Q(n15322), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_861));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_868));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_856));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i20208_4_lut_3_lut (.I0(n24022), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n24022));   // spi_slave.vhd(47[3] 55[10])
    defparam i20208_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNS MISO_48_12606_12607_set (.Q(n15334), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_854));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_12602_12603_reset (.Q(n15331), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_841));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_871));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_857));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_874));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_858));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_851));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNS imiso_83_12612_12613_set (.Q(n15340), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_854));   // spi_slave.vhd(85[3] 91[10])
    SB_LUT4 i20223_4_lut_3_lut (.I0(n24019), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n24019));   // spi_slave.vhd(70[3] 80[10])
    defparam i20223_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_840));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12618_3_lut (.I0(n15345), .I1(n15344), .I2(n24019), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12618_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_833), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i20203_4_lut_3_lut (.I0(n24016), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n24016));   // spi_slave.vhd(47[3] 55[10])
    defparam i20203_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i20248_4_lut_3_lut (.I0(n24013), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n24013));   // spi_slave.vhd(70[3] 80[10])
    defparam i20248_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i20213_4_lut_3_lut (.I0(n15333), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n15333));   // spi_slave.vhd(60[3] 64[10])
    defparam i20213_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_832), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_831), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_830), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_829), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_828), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_826), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS imosi_44_12602_12603_set (.Q(n15330), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_840));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFR iclk_40_12598_12599_reset (.Q(n15327), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_851));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 i12611_3_lut (.I0(n15338), .I1(n15337), .I2(n15333), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12611_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS iclk_40_12598_12599_set (.Q(n15326), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_850));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_877));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_859));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17841_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17841_2_lut.LUT_INIT = 16'h6666;
    SB_DFFNR bit_cnt_3787__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3787__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3787__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR data_tx_i0_12594_12595_reset (.Q(n15323), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_883));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_841));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_880));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_860));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_861));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i6_12640_12641_reset (.Q(n15369), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_865));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_883));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i20253_4_lut_3_lut (.I0(n24040), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n24040));   // spi_slave.vhd(70[3] 80[10])
    defparam i20253_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i20218_4_lut_3_lut (.I0(n24037), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n24037));   // spi_slave.vhd(70[3] 80[10])
    defparam i20218_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12596_3_lut (.I0(n15323), .I1(n15322), .I2(n24040), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12596_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12622_3_lut (.I0(n15349), .I1(n15348), .I2(n24037), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12626_3_lut (.I0(n15353), .I1(n15352), .I2(n24034), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12626_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17839_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17839_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i20228_4_lut_3_lut (.I0(n24034), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n24034));   // spi_slave.vhd(70[3] 80[10])
    defparam i20228_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_850));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_855));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17855_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17855_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i17848_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17848_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i20233_4_lut_3_lut (.I0(n24031), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n24031));   // spi_slave.vhd(70[3] 80[10])
    defparam i20233_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i20238_4_lut_3_lut (.I0(n24028), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n24028));   // spi_slave.vhd(70[3] 80[10])
    defparam i20238_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i20243_4_lut_3_lut (.I0(n24025), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n24025));   // spi_slave.vhd(70[3] 80[10])
    defparam i20243_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12604_3_lut (.I0(n15331), .I1(n15330), .I2(n24022), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i12604_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_835));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_834));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_865));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12638_3_lut (.I0(n15365), .I1(n15364), .I2(n24025), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12638_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12608_3_lut (.I0(n15335), .I1(n15334), .I2(n15333), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i12608_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_854));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12600_3_lut (.I0(n15327), .I1(n15326), .I2(n24016), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i12600_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12642_3_lut (.I0(n15369), .I1(n15368), .I2(n24013), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12642_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n18536));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n18536), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_886));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFS data_tx_i6_12640_12641_set (.Q(n15368), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_855));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i12634_3_lut (.I0(n15361), .I1(n15360), .I2(n24028), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12634_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i5_12636_12637_reset (.Q(n15365), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_868));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_12636_12637_set (.Q(n15364), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_856));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i12630_3_lut (.I0(n15357), .I1(n15356), .I2(n24031), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12630_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_826));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_DFFR data_tx_i4_12632_12633_reset (.Q(n15361), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_871));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i4_12632_12633_set (.Q(n15360), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_857));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut_adj_42 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_828));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_42.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_43 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_829));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_43.LUT_INIT = 16'he0e0;
    SB_DFFR data_tx_i3_12628_12629_reset (.Q(n15357), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_874));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut_adj_44 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_830));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_44.LUT_INIT = 16'he0e0;
    SB_DFFS data_tx_i3_12628_12629_set (.Q(n15356), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_858));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_12624_12625_reset (.Q(n15353), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_877));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i2_12624_12625_set (.Q(n15352), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_859));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i1_12620_12621_reset (.Q(n15349), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_880));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut_adj_45 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_831));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_45.LUT_INIT = 16'he0e0;
    SB_DFFS data_tx_i1_12620_12621_set (.Q(n15348), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_860));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_12616_12617_reset (.Q(n15345), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_835));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_12616_12617_set (.Q(n15344), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_834));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR imiso_83_12612_12613_reset (.Q(n15341), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_862));   // spi_slave.vhd(85[3] 91[10])
    SB_LUT4 i1_2_lut_3_lut_adj_46 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_832));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_46.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_47 (.I0(bit_cnt[3]), .I1(n18536), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_833));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_47.LUT_INIT = 16'he0e0;
    SB_DFFR data_tx_i7_12609_12610_reset (.Q(n15338), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_862));   // spi_slave.vhd(70[3] 80[10])
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (RTD_CS, clk_RTD, RTD_SCLK, \adc_state[2] , buf_cfgRTD, 
            GND_net, n13603, read_buf, n13584, n21989, \read_buf[5] , 
            \read_buf[6] , \read_buf[7] , \read_buf[8] , \read_buf[9] , 
            \read_buf[10] , RTD_DRDY, \read_buf[11] , \read_buf[12] , 
            \read_buf[13] , buf_readRTD, \comm_cmd[0] , n20, \comm_buf[0][7] , 
            n9837, n13129, n15892, n21425, n21325, n21423, n21421, 
            n21419, n21417, n21415, n21413, n21411, n21409, n21407, 
            VCC_net, n21361, n21363, n21405, n21403, n21401, \read_buf[15] , 
            n21331, \read_buf[14] , RTD_SDI);
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    output \adc_state[2] ;
    input [7:0]buf_cfgRTD;
    input GND_net;
    output n13603;
    output [15:0]read_buf;
    output n13584;
    output n21989;
    output \read_buf[5] ;
    output \read_buf[6] ;
    output \read_buf[7] ;
    output \read_buf[8] ;
    output \read_buf[9] ;
    output \read_buf[10] ;
    input RTD_DRDY;
    output \read_buf[11] ;
    output \read_buf[12] ;
    output \read_buf[13] ;
    output [15:0]buf_readRTD;
    input \comm_cmd[0] ;
    output n20;
    input \comm_buf[0][7] ;
    input n9837;
    input n13129;
    output n15892;
    input n21425;
    input n21325;
    input n21423;
    input n21421;
    input n21419;
    input n21417;
    input n21415;
    input n21413;
    input n21411;
    input n21409;
    input n21407;
    input VCC_net;
    input n21361;
    input n21363;
    input n21405;
    input n21403;
    input n21401;
    output \read_buf[15] ;
    input n21331;
    output \read_buf[14] ;
    output RTD_SDI;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(263[9:16])
    
    wire n79, n13441;
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    
    wire n16423, n16411, CS_N_1054, n21954, SCLK_N_1053, n8;
    wire [3:0]adc_state_3__N_961;
    
    wire n12274;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7, n7_adj_1491, n7_adj_1492, n7_adj_1493, n7_adj_1494, n7_adj_1495, 
        n13488, n15585, n17, n22081, n11, n7_adj_1496, n15396, 
        n19, n1, n12262, n21253, n22079, n16434, n16435, n16436;
    wire [15:0]read_buf_c;   // adc_max31865.vhd(32[8:16])
    
    wire n16437, n16438, n22599, n23689, n16460, n16461, n16462, 
        n68, n20051, n62, n20093;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    
    wire n20050, n16487, n21988;
    wire [3:0]n21;
    
    wire n16505;
    wire [7:0]adress_7__N_1009;
    
    wire n7_adj_1497, n16523, n22632, mode, n5, n56, n16532, n16533, 
        n68_adj_1498, n13482, n21955, n21231, n21343, n21333, n18274, 
        n3, n71, n3_adj_1499, n18275;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n12, n10, n11_adj_1500, n9, n22382, n7_adj_1501, n16568, 
        n7_adj_1502, n16405, n16402, n16399, n16408, n16396, n16393, 
        n16427, n22623, n16426, n16420, n16417, n16414;
    
    SB_LUT4 i13695_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[1]), 
            .I3(adress[2]), .O(n16423));   // adc_max31865.vhd(24[8:17])
    defparam i13695_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i13683_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[5]), 
            .I3(adress[6]), .O(n16411));   // adc_max31865.vhd(24[8:17])
    defparam i13683_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n21954), .D(CS_N_1054));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1053));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(clk_RTD), .E(n12274), .D(adc_state_3__N_961[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n12274), .D(adc_state_3__N_961[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n12274), 
            .D(adc_state_3__N_961[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n12274), .D(adc_state_3__N_961[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1491));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1492));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1493));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1494));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1495));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12862_2_lut (.I0(n13488), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15585));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12862_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i31_3_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n17));
    defparam i31_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19155_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n22081));
    defparam i19155_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30_4_lut (.I0(n22081), .I1(n17), .I2(\adc_state[2] ), .I3(n11), 
            .O(n13488));
    defparam i30_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1496));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i19113_2_lut_3_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n15396));   // adc_max31865.vhd(38[3] 148[10])
    defparam i19113_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_LUT4 i35_4_lut (.I0(n19), .I1(n1), .I2(adc_state[3]), .I3(\adc_state[2] ), 
            .O(n13441));
    defparam i35_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n13603));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'ha880;
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n12262));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'heb10;
    SB_LUT4 i2_3_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n21253));   // adc_max31865.vhd(38[3] 148[10])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'he000;
    SB_LUT4 i19153_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n22079));
    defparam i19153_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15022_4_lut (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13584), 
            .I3(n21989), .O(n16434));
    defparam i15022_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15025_4_lut (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13584), 
            .I3(n21989), .O(n16435));
    defparam i15025_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14996_4_lut (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13584), 
            .I3(n21989), .O(n16436));
    defparam i14996_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15031_4_lut (.I0(read_buf_c[4]), .I1(read_buf[3]), .I2(n13584), 
            .I3(n21989), .O(n16437));
    defparam i15031_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15016_4_lut (.I0(\read_buf[5] ), .I1(read_buf_c[4]), .I2(n13584), 
            .I3(n21989), .O(n16438));
    defparam i15016_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i17343_4_lut (.I0(n22599), .I1(n23689), .I2(\adc_state[2] ), 
            .I3(n22079), .O(adc_state_3__N_961[3]));   // adc_max31865.vhd(24[8:17])
    defparam i17343_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n79));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i15019_4_lut (.I0(\read_buf[6] ), .I1(\read_buf[5] ), .I2(n13584), 
            .I3(n21989), .O(n16460));
    defparam i15019_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15028_4_lut (.I0(\read_buf[7] ), .I1(\read_buf[6] ), .I2(n13584), 
            .I3(n21989), .O(n16461));
    defparam i15028_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15010_4_lut (.I0(\read_buf[8] ), .I1(\read_buf[7] ), .I2(n13584), 
            .I3(n21989), .O(n16462));
    defparam i15010_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_20 (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n68));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_adj_20.LUT_INIT = 16'h2222;
    SB_LUT4 i20131_3_lut_3_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(GND_net), .O(n21954));
    defparam i20131_3_lut_3_lut.LUT_INIT = 16'ha1a1;
    SB_LUT4 i1_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(n20051), .O(n62));
    defparam i1_4_lut.LUT_INIT = 16'hfaea;
    SB_LUT4 i17375_3_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n20093));   // adc_max31865.vhd(24[8:17])
    defparam i17375_3_lut.LUT_INIT = 16'h5252;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(\adc_state[2] ), .O(SCLK_N_1053));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut_4_lut.LUT_INIT = 16'h0bd4;
    SB_LUT4 i20152_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n8));
    defparam i20152_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i1_2_lut_adj_21 (.I0(bit_cnt[3]), .I1(n20050), .I2(GND_net), 
            .I3(GND_net), .O(n20051));   // adc_max31865.vhd(125[17:24])
    defparam i1_2_lut_adj_21.LUT_INIT = 16'h4444;
    SB_LUT4 i14990_4_lut (.I0(\read_buf[9] ), .I1(\read_buf[8] ), .I2(n13584), 
            .I3(n21989), .O(n16487));
    defparam i14990_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_22 (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21988));
    defparam i1_2_lut_adj_22.LUT_INIT = 16'hbbbb;
    SB_LUT4 i17870_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17870_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i14993_4_lut (.I0(\read_buf[10] ), .I1(\read_buf[9] ), .I2(n13584), 
            .I3(n21989), .O(n16505));
    defparam i14993_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n20050));   // adc_max31865.vhd(125[17:24])
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i2_2_lut (.I0(adc_state[1]), .I1(adress_7__N_1009[7]), .I2(GND_net), 
            .I3(GND_net), .O(n7_adj_1497));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut (.I0(n7_adj_1497), .I1(adc_state[3]), .I2(RTD_DRDY), 
            .I3(n21988), .O(n12274));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i14999_4_lut (.I0(\read_buf[11] ), .I1(\read_buf[10] ), .I2(n13584), 
            .I3(n21989), .O(n16523));
    defparam i14999_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i20043_3_lut (.I0(n20050), .I1(bit_cnt[3]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n22632));   // adc_max31865.vhd(24[8:17])
    defparam i20043_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n1));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i17362_4_lut (.I0(n23689), .I1(n22632), .I2(adc_state[3]), 
            .I3(mode), .O(n5));   // adc_max31865.vhd(24[8:17])
    defparam i17362_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i17370_4_lut (.I0(n5), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(n56), .O(adc_state_3__N_961[0]));   // adc_max31865.vhd(24[8:17])
    defparam i17370_4_lut.LUT_INIT = 16'h0b3b;
    SB_LUT4 i15007_4_lut (.I0(\read_buf[12] ), .I1(\read_buf[11] ), .I2(n13584), 
            .I3(n21989), .O(n16532));
    defparam i15007_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15013_4_lut (.I0(\read_buf[13] ), .I1(\read_buf[12] ), .I2(n13584), 
            .I3(n21989), .O(n16533));
    defparam i15013_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14786_3_lut (.I0(buf_cfgRTD[6]), .I1(buf_readRTD[14]), .I2(\comm_cmd[0] ), 
            .I3(GND_net), .O(n20));   // zim_main.vhd(243[9:17])
    defparam i14786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(adc_state[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n13584));
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hc08d;
    SB_LUT4 i1_2_lut_3_lut_adj_24 (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(adc_state[0]), .I3(GND_net), .O(n21989));
    defparam i1_2_lut_3_lut_adj_24.LUT_INIT = 16'hdfdf;
    SB_LUT4 i22_4_lut (.I0(n68_adj_1498), .I1(n1), .I2(adc_state[3]), 
            .I3(n11), .O(n13482));
    defparam i22_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i1_2_lut_adj_25 (.I0(adc_state[0]), .I1(adress_7__N_1009[7]), 
            .I2(GND_net), .I3(GND_net), .O(n11));
    defparam i1_2_lut_adj_25.LUT_INIT = 16'hdddd;
    SB_LUT4 i11_4_lut (.I0(mode), .I1(n68), .I2(n21955), .I3(adress_7__N_1009[7]), 
            .O(n21231));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14783_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0][7] ), 
            .I2(n9837), .I3(n13129), .O(n15892));
    defparam i14783_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(bit_cnt[3]), 
            .I3(n20050), .O(n56));   // adc_max31865.vhd(24[8:17])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h8c88;
    SB_LUT4 i1_rep_43_2_lut_3_lut (.I0(adc_state[1]), .I1(bit_cnt[3]), .I2(n20050), 
            .I3(GND_net), .O(n23689));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_rep_43_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFF READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .D(n21343));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[4]), .I1(read_buf_c[4]), .I2(n13603), 
            .I3(\adc_state[2] ), .O(n21333));
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(adc_state[3]), .O(n18274));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'he56a;
    SB_LUT4 adc_state_3__I_0_62_Mux_0_i3_3_lut_4_lut (.I0(adress_7__N_1009[7]), 
            .I1(adc_state[0]), .I2(adc_state[1]), .I3(adress[7]), .O(n3));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_0_i3_3_lut_4_lut.LUT_INIT = 16'hf707;
    SB_LUT4 i1_2_lut_adj_26 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n71));
    defparam i1_2_lut_adj_26.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_3_lut_4_lut (.I0(adress_7__N_1009[7]), 
            .I1(adc_state[0]), .I2(adc_state[1]), .I3(adress[6]), .O(n3_adj_1499));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_3_lut_4_lut.LUT_INIT = 16'hf808;
    SB_LUT4 i1_4_lut_4_lut_adj_27 (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(adc_state[3]), .O(n18275));
    defparam i1_4_lut_4_lut_adj_27.LUT_INIT = 16'hc918;
    SB_DFF READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .D(n21425));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_adj_28 (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n68_adj_1498));
    defparam i1_2_lut_adj_28.LUT_INIT = 16'heeee;
    SB_DFF READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .D(n21325));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .D(n21423));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .D(n21421));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4_4_lut_adj_29 (.I0(cfg_buf[5]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[5]), 
            .I3(buf_cfgRTD[6]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut_adj_29.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(cfg_buf[7]), .I1(cfg_buf[1]), .I2(buf_cfgRTD[7]), 
            .I3(buf_cfgRTD[1]), .O(n11_adj_1500));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_30 (.I0(cfg_buf[0]), .I1(cfg_buf[3]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[3]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut_adj_30.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11_adj_1500), .I2(n10), .I3(n12), 
            .O(adress_7__N_1009[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19756_2_lut (.I0(adress_7__N_1009[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n22382));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19756_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i34_3_lut_4_lut (.I0(RTD_DRDY), .I1(n11), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n19));
    defparam i34_3_lut_4_lut.LUT_INIT = 16'hfd0d;
    SB_LUT4 i1_3_lut_4_lut_adj_31 (.I0(RTD_DRDY), .I1(n11), .I2(adc_state[3]), 
            .I3(n21954), .O(n21955));
    defparam i1_3_lut_4_lut_adj_31.LUT_INIT = 16'hfd00;
    SB_DFF READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .D(n21419));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .D(n21417));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .D(n21415));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .D(n21413));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_0_i7_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1501));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_0_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_4_lut_adj_32 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16568));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_32.LUT_INIT = 16'hb380;
    SB_LUT4 i12395_4_lut (.I0(adress[7]), .I1(cfg_tmp[7]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n7_adj_1502));
    defparam i12395_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFF READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .D(n21411));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .D(n21409));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_33 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n16405));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_33.LUT_INIT = 16'hb380;
    SB_DFF READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .D(n21333));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .D(n21407));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_34 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[3]), 
            .I3(cfg_buf[3]), .O(n16402));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_34.LUT_INIT = 16'hb380;
    SB_LUT4 i13671_4_lut_4_lut (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n16399));   // adc_max31865.vhd(24[8:17])
    defparam i13671_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_35 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n16408));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_35.LUT_INIT = 16'hb380;
    SB_LUT4 i17868_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17868_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n21231));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16568));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_36 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[5]), 
            .I3(cfg_buf[5]), .O(n16396));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_36.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_37 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n16393));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_37.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_38 (.I0(n68), .I1(n13482), .I2(buf_cfgRTD[7]), 
            .I3(cfg_buf[7]), .O(n16427));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_38.LUT_INIT = 16'hb380;
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n21361));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n21363));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .D(n21405));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17877_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17877_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFF READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .D(n21403));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i15 (.Q(\read_buf[15] ), .C(clk_RTD), .D(n21401));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17884_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17884_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFF read_buf_i14 (.Q(\read_buf[14] ), .C(clk_RTD), .D(n21331));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut_adj_39 (.I0(buf_readRTD[15]), .I1(\read_buf[15] ), 
            .I2(n13603), .I3(\adc_state[2] ), .O(n21343));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut_adj_39.LUT_INIT = 16'h0aca;
    SB_DFF read_buf_i13 (.Q(\read_buf[13] ), .C(clk_RTD), .D(n16533));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i12 (.Q(\read_buf[12] ), .C(clk_RTD), .D(n16532));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i11 (.Q(\read_buf[11] ), .C(clk_RTD), .D(n16523));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR bit_cnt_3789__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n18274), 
            .D(n21[3]), .R(n18275));   // adc_max31865.vhd(125[17:24])
    SB_DFF read_buf_i10 (.Q(\read_buf[10] ), .C(clk_RTD), .D(n16505));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR bit_cnt_3789__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n18274), 
            .D(n21[2]), .R(n18275));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3789__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n18274), 
            .D(n21[1]), .R(n18275));   // adc_max31865.vhd(125[17:24])
    SB_DFF read_buf_i9 (.Q(\read_buf[9] ), .C(clk_RTD), .D(n16487));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_70_i15_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(n22382), .O(CS_N_1054));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_70_i15_4_lut_4_lut.LUT_INIT = 16'h1f15;
    SB_DFF read_buf_i8 (.Q(\read_buf[8] ), .C(clk_RTD), .D(n16462));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i7 (.Q(\read_buf[7] ), .C(clk_RTD), .D(n16461));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i6 (.Q(\read_buf[6] ), .C(clk_RTD), .D(n16460));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i5 (.Q(\read_buf[5] ), .C(clk_RTD), .D(n16438));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i4 (.Q(read_buf_c[4]), .C(clk_RTD), .D(n16437));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .D(n16436));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .D(n16435));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFF read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .D(n16434));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_40 (.I0(\adc_state[2] ), .I1(n68), .I2(n79), 
            .I3(n22623), .O(adc_state_3__N_961[2]));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_4_lut_4_lut_adj_40.LUT_INIT = 16'hfda8;
    SB_DFF cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .D(n16427));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n16426));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n16423));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n16420));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_41 (.I0(\adc_state[2] ), .I1(n68), .I2(n62), 
            .I3(n20093), .O(adc_state_3__N_961[1]));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_4_lut_4_lut_adj_41.LUT_INIT = 16'hdf8a;
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n16417));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n16414));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n16411));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n16408));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n16405));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n16402));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i20122_3_lut_4_lut (.I0(mode), .I1(n20051), .I2(adc_state[3]), 
            .I3(n71), .O(n22623));   // adc_max31865.vhd(38[3] 148[10])
    defparam i20122_3_lut_4_lut.LUT_INIT = 16'hfb00;
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n16399));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n16396));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13488), .D(n7_adj_1496), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i20050_3_lut_4_lut (.I0(mode), .I1(n20051), .I2(n71), .I3(adc_state[3]), 
            .O(n22599));   // adc_max31865.vhd(38[3] 148[10])
    defparam i20050_3_lut_4_lut.LUT_INIT = 16'hff40;
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13488), .D(n7_adj_1495), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13488), .D(n7_adj_1494), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n16393));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13488), .D(n7_adj_1493), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13488), .D(n7_adj_1492), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13488), .D(n7_adj_1491), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13488), .D(n7), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress[7]), .C(clk_RTD), .E(n13441), .D(n3_adj_1499), 
            .R(n15396));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR bit_cnt_3789__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n18274), 
            .D(n21[0]), .R(n18275));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n12262), .D(n7_adj_1502), 
            .R(n21253));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13488), .D(n7_adj_1501), 
            .R(n15585));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(adress[0]), .C(clk_RTD), .E(n13441), .D(n3), 
            .R(n15396));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i13686_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[4]), 
            .I3(adress[5]), .O(n16414));   // adc_max31865.vhd(24[8:17])
    defparam i13686_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i13689_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[3]), 
            .I3(adress[4]), .O(n16417));   // adc_max31865.vhd(24[8:17])
    defparam i13689_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i13698_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[0]), 
            .I3(adress[1]), .O(n16426));   // adc_max31865.vhd(24[8:17])
    defparam i13698_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i13692_4_lut_4_lut (.I0(n79), .I1(n13441), .I2(adress[2]), 
            .I3(adress[3]), .O(n16420));   // adc_max31865.vhd(24[8:17])
    defparam i13692_4_lut_4_lut.LUT_INIT = 16'hb380;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, trig_dds0, GND_net, DDS_CS, 
            buf_dds0, tmp_buf, \bit_cnt[0] , n15562, n16578, VCC_net, 
            n15862, DDS_MOSI, n15854, DDS_SCK);
    output [2:0]dds_state;
    input clk_32MHz;
    input trig_dds0;
    input GND_net;
    output DDS_CS;
    input [15:0]buf_dds0;
    output [15:0]tmp_buf;
    output \bit_cnt[0] ;
    output n15562;
    input n16578;
    input VCC_net;
    input n15862;
    output DDS_MOSI;
    input n15854;
    output DDS_SCK;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire [2:0]dds_state_2__N_887;
    
    wire n9, n9_adj_1490, CS_N_940;
    wire [15:0]tmp_buf_15__N_890;
    
    wire n13338;
    wire [15:0]tmp_buf_c;   // dds_ad9837.vhd(24[9:16])
    
    wire n8794;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_935;
    
    wire n3, n10, n22671;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_887[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1490));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_940));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1490), .D(CS_N_940));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(tmp_buf[15]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf_c[0]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf_c[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf_c[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf_c[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf_c[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf_c[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf_c[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf_c[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12561_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8794));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12561_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3866_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_935[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3866_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf_c[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf_c[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf_c[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf_c[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf_c[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf_c[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf_c[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf_c[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf_c[1]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf_c[2]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf_c[3]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf_c[4]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf_c[5]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf_c[6]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf_c[7]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf_c[8]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf_c[9]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf_c[10]), .C(clk_32MHz), .E(n13338), 
            .D(tmp_buf_15__N_890[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf_c[11]), .C(clk_32MHz), .E(n13338), 
            .D(tmp_buf_15__N_890[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf_c[12]), .C(clk_32MHz), .E(n13338), 
            .D(tmp_buf_15__N_890[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf_c[13]), .C(clk_32MHz), .E(n13338), 
            .D(tmp_buf_15__N_890[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf_c[14]), .C(clk_32MHz), .E(n13338), 
            .D(tmp_buf_15__N_890[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(tmp_buf[15]), .C(clk_32MHz), .E(n13338), .D(tmp_buf_15__N_890[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12835_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15562));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12835_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i3873_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_935[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3873_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i3880_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_935[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3880_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16578));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_935[3]), .R(n15562));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_935[2]), .R(n15562));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_935[1]), .R(n15562));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8794), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i20129_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n13338));
    defparam i20129_4_lut.LUT_INIT = 16'hcc46;
    SB_LUT4 i20157_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i20157_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[1]), .I2(dds_state[0]), 
            .I3(bit_cnt[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19893_2_lut (.I0(bit_cnt[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n22671));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19893_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12583_4_lut (.I0(dds_state[0]), .I1(n22671), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_887[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12583_4_lut.LUT_INIT = 16'hc505;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15862));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15854));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[0] , n21951, cmd_rdadctmp, buf_adcdata_iac, 
            clk_32MHz, n21459, VCC_net, IAC_DRDY, n21892, n13746, 
            GND_net, n21469, n21471, n21473, n21475, n21477, n21479, 
            n21481, n21501, acadc_trig, DTRIG_N_1182, \adc_state[1] , 
            n21509, n21511, n21513, n21515, n21517, n21519, n21521, 
            n21527, n21529, n21531, n21533, n21535, n21537, n21539, 
            n21541, n21543, n21545, n21549, n21551, n21553, n21555, 
            n21557, n21651, n11, IAC_CS, n21453, IAC_SCLK, n21451, 
            acadc_dtrig_i);
    output \adc_state[0] ;
    input n21951;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_iac;
    input clk_32MHz;
    input n21459;
    input VCC_net;
    input IAC_DRDY;
    input n21892;
    output n13746;
    input GND_net;
    input n21469;
    input n21471;
    input n21473;
    input n21475;
    input n21477;
    input n21479;
    input n21481;
    input n21501;
    input acadc_trig;
    output DTRIG_N_1182;
    output \adc_state[1] ;
    input n21509;
    input n21511;
    input n21513;
    input n21515;
    input n21517;
    input n21519;
    input n21521;
    input n21527;
    input n21529;
    input n21531;
    input n21533;
    input n21535;
    input n21537;
    input n21539;
    input n21541;
    input n21543;
    input n21545;
    input n21549;
    input n21551;
    input n21553;
    input n21555;
    input n21557;
    input n21651;
    input n11;
    output IAC_CS;
    input n21453;
    output IAC_SCLK;
    input n21451;
    output acadc_dtrig_i;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    
    wire n15952, n15946;
    wire [2:0]adc_state_2__N_1087;
    
    wire n22032, n15937;
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n20682, n15949, n15934, n20681, n15943, n20680, n15940, 
        n20679, n20678, n20677, n20676, n22031, n15953, n13667, 
        n15622, n15931, n15945, n22113, n22128, n22384, n12, n15938, 
        n15950, n15933, n15944, n15951, n15948, n15947, n15942, 
        n15941, n15939, n15936, n15935, n15932, n15856, n17;
    
    SB_LUT4 i13224_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15952));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13224_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13218_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15946));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13218_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n22032), 
            .D(adc_state_2__N_1087[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21459));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13209_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15937));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13209_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut (.I0(IAC_DRDY), .I1(n21892), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n13746));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21469));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21471));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21473));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21475));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21477));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21479));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21481));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21501));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n20682), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13221_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15949));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13221_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13206_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15934));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13206_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n20681), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n20681), .I0(bit_cnt[6]), .I1(GND_net), .CO(n20682));
    SB_LUT4 i13215_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15943));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13215_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n20680), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13212_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15940));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13212_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_7 (.CI(n20680), .I0(bit_cnt[5]), .I1(GND_net), .CO(n20681));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n20679), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n20679), .I0(bit_cnt[4]), .I1(GND_net), .CO(n20680));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n20678), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n20678), .I0(bit_cnt[3]), .I1(GND_net), .CO(n20679));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n20677), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n20677), .I0(bit_cnt[2]), .I1(GND_net), .CO(n20678));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n20676), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(IAC_DRDY), 
            .I3(DTRIG_N_1182), .O(n22031));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_CARRY add_14_3 (.CI(n20676), .I0(bit_cnt[1]), .I1(GND_net), .CO(n20677));
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n22031), .I2(GND_net), 
            .I3(GND_net), .O(n22032));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21509));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21511));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21513));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21515));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21517));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13225_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15953));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13225_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21519));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12899_2_lut (.I0(n13667), .I1(DTRIG_N_1182), .I2(GND_net), 
            .I3(GND_net), .O(n15622));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12899_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_19 (.I0(\adc_state[0] ), .I1(IAC_DRDY), .I2(DTRIG_N_1182), 
            .I3(\adc_state[1] ), .O(n13667));
    defparam i1_4_lut_adj_19.LUT_INIT = 16'h0150;
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21521));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21527));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13203_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15931));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13203_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13217_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15945));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13217_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i19186_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n22113));
    defparam i19186_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21529));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21531));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i19201_4_lut (.I0(bit_cnt[7]), .I1(n22113), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n22128));
    defparam i19201_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19757_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n22128), .O(n22384));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19757_4_lut.LUT_INIT = 16'h0080;
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21533));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21535));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n22384), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_1182), .I3(\adc_state[1] ), .O(adc_state_2__N_1087[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21537));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21539));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21541));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21543));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21545));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n20676));
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21549));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21551));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21553));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21555));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_1087[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_1182), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_1087[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21557));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13210_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15938));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13210_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13222_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15950));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13222_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13205_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15933));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13205_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13216_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15944));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13216_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15953));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15952));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15951));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15950));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15949));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15948));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15947));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15946));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15945));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15944));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15943));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15942));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15941));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15940));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15939));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15938));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15937));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15936));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15935));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15934));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15933));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15932));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15931));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13211_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15939));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13211_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13223_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15951));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13223_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13204_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15932));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13204_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13219_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15947));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13219_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13208_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15936));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13208_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13220_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15948));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13220_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13207_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15935));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13207_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13214_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15942));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13214_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13213_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15941));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13213_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13128_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21951), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15856));   // adc_ads127.vhd(44[4] 88[13])
    defparam i13128_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n21651));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n13667), .D(n63[7]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n13667), .D(n63[6]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n13667), .D(n63[5]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n13667), .D(n63[4]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n13667), .D(n63[3]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n13667), .D(n63[2]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n13667), .D(n63[1]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_1182), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_1087[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(IAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_1182), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i20195_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i20195_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i16399_3_lut (.I0(DTRIG_N_1182), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_1087[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i16399_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n13667), .D(n63[0]), 
            .R(n15622));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n21453));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n21451));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15856));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, DDS_MCLK1);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output DDS_MCLK1;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire DDS_MCLK1 /* synthesis SET_AS_NETWORK=DDS_MCLK1, is_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(DDS_MCLK1), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=817, LSE_RLINE=817 */ ;   // zim_main.vhd(817[13:20])
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
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (buf_dds1, dds_state, \dds_state_2__N_887[0] , clk_32MHz, 
            DDS_CS1, GND_net, \tmp_buf[15] , bit_cnt, n8, trig_dds1, 
            VCC_net, \bit_cnt_3__N_935[3] , \bit_cnt_3__N_935[2] , \bit_cnt_3__N_935[1] , 
            n15864, DDS_MOSI1, n15855, DDS_SCK1);
    input [15:0]buf_dds1;
    output [2:0]dds_state;
    input \dds_state_2__N_887[0] ;
    input clk_32MHz;
    output DDS_CS1;
    input GND_net;
    output \tmp_buf[15] ;
    output [3:0]bit_cnt;
    output n8;
    input trig_dds1;
    input VCC_net;
    input \bit_cnt_3__N_935[3] ;
    input \bit_cnt_3__N_935[2] ;
    input \bit_cnt_3__N_935[1] ;
    input n15864;
    output DDS_MOSI1;
    input n15855;
    output DDS_SCK1;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(224[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [15:0]tmp_buf_15__N_890;
    
    wire n9, CS_N_940, n9_adj_1489, n13376, n8756, n18366, n3, 
        n18398;
    
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_887[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1489), .D(CS_N_940));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12562_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8756));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12562_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(dds_state[0]), 
            .I3(GND_net), .O(n18366));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n13376), .D(tmp_buf_15__N_890[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n13376), 
            .D(tmp_buf_15__N_890[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15687_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(dds_state[1]), 
            .I3(bit_cnt[0]), .O(n18398));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i15687_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i3_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n8));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i20130_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n13376));
    defparam i20130_4_lut.LUT_INIT = 16'hf034;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n18398));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1489));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_940));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_935[3] ), .R(n18366));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_935[2] ), .R(n18366));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_935[1] ), .R(n18366));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8756), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i20153_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i20153_4_lut.LUT_INIT = 16'hffde;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15864));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15855));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_890[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (GND_net, adc_state, \adc_state[1] , cmd_rdadctmp, 
            VDC_CLK, \cmd_rdadcbuf[34] , n21133, VCC_net, \cmd_rdadctmp[1] , 
            n21135, \cmd_rdadctmp[2] , n21137, \cmd_rdadctmp[3] , n21139, 
            \cmd_rdadctmp[4] , n21141, \cmd_rdadctmp[5] , n21143, \cmd_rdadctmp[6] , 
            n21145, \cmd_rdadctmp[7] , n21147, \cmd_rdadctmp[8] , n21149, 
            \cmd_rdadctmp[9] , n21151, \cmd_rdadctmp[10] , n21153, \cmd_rdadctmp[11] , 
            n21155, \cmd_rdadctmp[12] , n21157, \cmd_rdadctmp[13] , 
            n21159, \cmd_rdadctmp[14] , n21161, \cmd_rdadctmp[15] , 
            n21163, \cmd_rdadctmp[16] , n21165, \cmd_rdadctmp[17] , 
            n21167, \cmd_rdadctmp[18] , n21169, \cmd_rdadctmp[19] , 
            n21171, \cmd_rdadctmp[20] , n21173, \cmd_rdadctmp[21] , 
            n21175, n21277, buf_adcdata_vdc, n21279, n21281, n21283, 
            n21285, n21287, n21289, n21291, n21293, n21295, n21297, 
            n21299, n21301, n21303, n21305, n21307, n21309, n21311, 
            \cmd_rdadcbuf[33] , n21313, n21315, n21317, n21319, \cmd_rdadcbuf[32] , 
            \cmd_rdadcbuf[31] , n21321, \cmd_rdadcbuf[30] , \adc_state_3__N_1336[0] , 
            \cmd_rdadcbuf[29] , \cmd_rdadcbuf[28] , \cmd_rdadcbuf[27] , 
            \cmd_rdadcbuf[26] , \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , 
            \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , 
            \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , 
            \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , 
            \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , n12356, \cmd_rdadcbuf[12] , 
            \cmd_rdadcbuf[11] , n12352, n13925, n21207, \cmd_rdadctmp[0] , 
            n21369, n21375, VDC_SCLK, DDS_MCLK1);
    input GND_net;
    output [3:0]adc_state;
    output \adc_state[1] ;
    output [23:0]cmd_rdadctmp;
    output VDC_CLK;
    output \cmd_rdadcbuf[34] ;
    input n21133;
    input VCC_net;
    output \cmd_rdadctmp[1] ;
    input n21135;
    output \cmd_rdadctmp[2] ;
    input n21137;
    output \cmd_rdadctmp[3] ;
    input n21139;
    output \cmd_rdadctmp[4] ;
    input n21141;
    output \cmd_rdadctmp[5] ;
    input n21143;
    output \cmd_rdadctmp[6] ;
    input n21145;
    output \cmd_rdadctmp[7] ;
    input n21147;
    output \cmd_rdadctmp[8] ;
    input n21149;
    output \cmd_rdadctmp[9] ;
    input n21151;
    output \cmd_rdadctmp[10] ;
    input n21153;
    output \cmd_rdadctmp[11] ;
    input n21155;
    output \cmd_rdadctmp[12] ;
    input n21157;
    output \cmd_rdadctmp[13] ;
    input n21159;
    output \cmd_rdadctmp[14] ;
    input n21161;
    output \cmd_rdadctmp[15] ;
    input n21163;
    output \cmd_rdadctmp[16] ;
    input n21165;
    output \cmd_rdadctmp[17] ;
    input n21167;
    output \cmd_rdadctmp[18] ;
    input n21169;
    output \cmd_rdadctmp[19] ;
    input n21171;
    output \cmd_rdadctmp[20] ;
    input n21173;
    output \cmd_rdadctmp[21] ;
    input n21175;
    input n21277;
    output [23:0]buf_adcdata_vdc;
    input n21279;
    input n21281;
    input n21283;
    input n21285;
    input n21287;
    input n21289;
    input n21291;
    input n21293;
    input n21295;
    input n21297;
    input n21299;
    input n21301;
    input n21303;
    input n21305;
    input n21307;
    input n21309;
    input n21311;
    output \cmd_rdadcbuf[33] ;
    input n21313;
    input n21315;
    input n21317;
    input n21319;
    output \cmd_rdadcbuf[32] ;
    output \cmd_rdadcbuf[31] ;
    input n21321;
    output \cmd_rdadcbuf[30] ;
    input \adc_state_3__N_1336[0] ;
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
    output n12356;
    output \cmd_rdadcbuf[12] ;
    output \cmd_rdadcbuf[11] ;
    output n12352;
    output n13925;
    input n21207;
    output \cmd_rdadctmp[0] ;
    input n21369;
    input n21375;
    output VDC_SCLK;
    input DDS_MCLK1;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire DDS_MCLK1 /* synthesis SET_AS_NETWORK=DDS_MCLK1, is_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire [11:0]avg_cnt_11__N_1380;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n20734, n20735, n20733, n20732, n20731, n20730, n20729, 
        n20728, n20727, n22071, n5;
    wire [3:0]adc_state_c;   // adc_ads1252u.vhd(31[8:17])
    
    wire n28, n17, n21871;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n6, n11183, n21707, n13957;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n6_adj_1484, n20726;
    wire [3:0]adc_state_3__N_1212;
    
    wire n21869, n13865;
    wire [35:0]cmd_rdadcbuf_35__N_1260;
    
    wire n14092, n14120, n15721, n8031, n20725;
    wire [35:0]cmd_rdadcbuf_35__N_1344;
    
    wire n20723, n20722, n20721, n20720, n20719, n35, n20718, 
        n45, n17542, n20717, n22067, n20716, n17565, n20715, n20714, 
        n20713, n20712, n20711, n20710, n20709, n20708, n20707, 
        n20706, n20705, n20704, n20703, n20702, n20701, n20700;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n20699, n20698, n20697, n20696;
    wire [7:0]n37;
    
    wire n20818, n20817;
    wire [3:0]adc_state_3__N_1316;
    
    wire n4, n20816, n21991, n6_adj_1485, n11923, n20869, n23528, 
        n20815, n20814, n22625, n23531, n20813, n20812, n20, n19, 
        n21, n21859, n22063, n22404, n20695, n7, n22055, n27, 
        n10, n9, n44_adj_1487, n22075, n39_adj_1488, n20694, n20693, 
        n22628, n20692, n20691, n20690;
    
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n20734), .O(avg_cnt_11__N_1380[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n20734), .I0(avg_cnt[10]), .I1(GND_net), .CO(n20735));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n20733), .O(avg_cnt_11__N_1380[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n20733), .I0(avg_cnt[9]), .I1(GND_net), .CO(n20734));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n20732), .O(avg_cnt_11__N_1380[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n20732), .I0(avg_cnt[8]), .I1(GND_net), .CO(n20733));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n20731), .O(avg_cnt_11__N_1380[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n20731), .I0(avg_cnt[7]), .I1(GND_net), .CO(n20732));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n20730), .O(avg_cnt_11__N_1380[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n20730), .I0(avg_cnt[6]), .I1(GND_net), .CO(n20731));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n20729), .O(avg_cnt_11__N_1380[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n20729), .I0(avg_cnt[5]), .I1(GND_net), .CO(n20730));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n20728), .O(avg_cnt_11__N_1380[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n20728), .I0(avg_cnt[4]), .I1(GND_net), .CO(n20729));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n20727), .O(avg_cnt_11__N_1380[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20180_3_lut (.I0(adc_state[3]), .I1(adc_state[2]), .I2(n22071), 
            .I3(GND_net), .O(n5));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i20180_3_lut.LUT_INIT = 16'h8a8a;
    SB_LUT4 i1_4_lut (.I0(adc_state[2]), .I1(adc_state_c[0]), .I2(n28), 
            .I3(n17), .O(n21871));
    defparam i1_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6), .O(n11183));
    defparam i4_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut (.I0(adc_state[3]), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21707));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_6 (.I0(adc_state[2]), .I1(adc_state[3]), .I2(\adc_state[1] ), 
            .I3(adc_state_c[0]), .O(n13957));
    defparam i1_4_lut_adj_6.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(\adc_state[1] ), .I3(n11183), .O(n6_adj_1484));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_CARRY add_24_5 (.CI(n20727), .I0(avg_cnt[3]), .I1(GND_net), .CO(n20728));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n20726), .O(avg_cnt_11__N_1380[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(VDC_CLK), .E(n21869), 
            .D(adc_state_3__N_1212[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(VDC_CLK), .E(n13865), .D(adc_state_3__N_1212[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n14092), 
            .D(cmd_rdadcbuf_35__N_1260[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i13037_2_lut (.I0(n14120), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i13037_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_4_lut (.I0(n22071), .I1(n8031), .I2(adc_state[3]), 
            .I3(adc_state[2]), .O(n13865));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hff5c;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[1] ), .I2(adc_state[3]), 
            .I3(adc_state[2]), .O(n14092));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf850;
    SB_DFFE cmd_rdadctmp_i1 (.Q(\cmd_rdadctmp[1] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21133));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(\cmd_rdadctmp[2] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21135));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(\cmd_rdadctmp[3] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21137));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(\cmd_rdadctmp[4] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21139));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(\cmd_rdadctmp[5] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21141));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(\cmd_rdadctmp[6] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21143));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(\cmd_rdadctmp[7] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21145));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(\cmd_rdadctmp[8] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21147));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21149));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_24_4 (.CI(n20726), .I0(avg_cnt[2]), .I1(GND_net), .CO(n20727));
    SB_DFFE cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21151));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21153));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21155));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21157));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21159));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21161));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21163));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21165));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21167));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(\cmd_rdadctmp[19] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21169));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(\cmd_rdadctmp[20] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21171));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(\cmd_rdadctmp[21] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21173));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21277));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21279));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21281));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21283));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21285));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21287));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21289));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21291));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21293));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21295));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21297));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21299));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21301));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21303));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21305));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21307));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21309));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21311));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n20725), .O(avg_cnt_11__N_1380[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n20725), .I0(avg_cnt[1]), .I1(GND_net), .CO(n20726));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1380[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n20725));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n20723), .O(cmd_rdadcbuf_35__N_1344[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n20722), .O(cmd_rdadcbuf_35__N_1344[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21313));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21315));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21317));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21319));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_35 (.CI(n20722), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n20723));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n20721), .O(cmd_rdadcbuf_35__N_1344[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_34 (.CI(n20721), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n20722));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n20720), .O(cmd_rdadcbuf_35__N_1344[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21321));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_33 (.CI(n20720), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n20721));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n20719), .O(cmd_rdadcbuf_35__N_1344[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_7 (.I0(adc_state_c[0]), .I1(\adc_state_3__N_1336[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n35));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut_adj_7.LUT_INIT = 16'h4444;
    SB_CARRY add_23_32 (.CI(n20719), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n20720));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n20718), .O(cmd_rdadcbuf_35__N_1344[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n20718), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n20719));
    SB_LUT4 i14816_4_lut (.I0(n35), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(n45), .O(n17542));   // adc_ads1252u.vhd(31[8:17])
    defparam i14816_4_lut.LUT_INIT = 16'hc2ce;
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n20717), .O(cmd_rdadcbuf_35__N_1344[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n20717), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n20718));
    SB_LUT4 i19141_2_lut (.I0(adc_state_c[0]), .I1(\adc_state_3__N_1336[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n22067));
    defparam i19141_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n20716), .O(cmd_rdadcbuf_35__N_1344[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n20716), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n20717));
    SB_LUT4 i24_4_lut (.I0(n22067), .I1(\adc_state[1] ), .I2(adc_state[2]), 
            .I3(adc_state[3]), .O(n17565));
    defparam i24_4_lut.LUT_INIT = 16'hf03a;
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n20715), .O(cmd_rdadcbuf_35__N_1344[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n20715), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n20716));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n20714), .O(cmd_rdadcbuf_35__N_1344[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n20714), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n20715));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n20713), .O(cmd_rdadcbuf_35__N_1344[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n20713), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n20714));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n20712), .O(cmd_rdadcbuf_35__N_1344[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n20712), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n20713));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n20711), .O(cmd_rdadcbuf_35__N_1344[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n20711), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n20712));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(\cmd_rdadctmp[21] ), 
            .I3(n20710), .O(cmd_rdadcbuf_35__N_1344[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n20710), .I0(\cmd_rdadcbuf[21] ), .I1(\cmd_rdadctmp[21] ), 
            .CO(n20711));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(\cmd_rdadctmp[20] ), 
            .I3(n20709), .O(cmd_rdadcbuf_35__N_1344[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n20709), .I0(\cmd_rdadcbuf[20] ), .I1(\cmd_rdadctmp[20] ), 
            .CO(n20710));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(\cmd_rdadctmp[19] ), 
            .I3(n20708), .O(cmd_rdadcbuf_35__N_1344[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n20708), .I0(\cmd_rdadcbuf[19] ), .I1(\cmd_rdadctmp[19] ), 
            .CO(n20709));
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(\cmd_rdadctmp[18] ), 
            .I3(n20707), .O(cmd_rdadcbuf_35__N_1344[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_20 (.CI(n20707), .I0(\cmd_rdadcbuf[18] ), .I1(\cmd_rdadctmp[18] ), 
            .CO(n20708));
    SB_LUT4 i1_2_lut_adj_8 (.I0(adc_state_c[0]), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n45));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_2_lut_adj_8.LUT_INIT = 16'heeee;
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(\cmd_rdadctmp[17] ), 
            .I3(n20706), .O(cmd_rdadcbuf_35__N_1344[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n20706), .I0(\cmd_rdadcbuf[17] ), .I1(\cmd_rdadctmp[17] ), 
            .CO(n20707));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(\cmd_rdadctmp[16] ), 
            .I3(n20705), .O(cmd_rdadcbuf_35__N_1344[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n20705), .I0(\cmd_rdadcbuf[16] ), .I1(\cmd_rdadctmp[16] ), 
            .CO(n20706));
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(\cmd_rdadctmp[15] ), 
            .I3(n20704), .O(cmd_rdadcbuf_35__N_1344[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n20704), .I0(\cmd_rdadcbuf[15] ), .I1(\cmd_rdadctmp[15] ), 
            .CO(n20705));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(\cmd_rdadctmp[14] ), 
            .I3(n20703), .O(cmd_rdadcbuf_35__N_1344[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n20703), .I0(\cmd_rdadcbuf[14] ), .I1(\cmd_rdadctmp[14] ), 
            .CO(n20704));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(\cmd_rdadctmp[13] ), 
            .I3(n20702), .O(cmd_rdadcbuf_35__N_1344[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n20702), .I0(\cmd_rdadcbuf[13] ), .I1(\cmd_rdadctmp[13] ), 
            .CO(n20703));
    SB_LUT4 i20132_4_lut_4_lut (.I0(adc_state[2]), .I1(adc_state[3]), .I2(adc_state_c[0]), 
            .I3(\adc_state[1] ), .O(n12356));
    defparam i20132_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(\cmd_rdadctmp[12] ), 
            .I3(n20701), .O(cmd_rdadcbuf_35__N_1344[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n20701), .I0(\cmd_rdadcbuf[12] ), .I1(\cmd_rdadctmp[12] ), 
            .CO(n20702));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(\cmd_rdadctmp[11] ), 
            .I3(n20700), .O(cmd_rdadcbuf_35__N_1344[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n20700), .I0(\cmd_rdadcbuf[11] ), .I1(\cmd_rdadctmp[11] ), 
            .CO(n20701));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(\cmd_rdadctmp[10] ), 
            .I3(n20699), .O(cmd_rdadcbuf_35__N_1344[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n20699), .I0(cmd_rdadcbuf[10]), .I1(\cmd_rdadctmp[10] ), 
            .CO(n20700));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(\cmd_rdadctmp[9] ), 
            .I3(n20698), .O(cmd_rdadcbuf_35__N_1344[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n20698), .I0(cmd_rdadcbuf[9]), .I1(\cmd_rdadctmp[9] ), 
            .CO(n20699));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(\cmd_rdadctmp[8] ), 
            .I3(n20697), .O(cmd_rdadcbuf_35__N_1344[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_10 (.CI(n20697), .I0(cmd_rdadcbuf[8]), .I1(\cmd_rdadctmp[8] ), 
            .CO(n20698));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(\cmd_rdadctmp[7] ), 
            .I3(n20696), .O(cmd_rdadcbuf_35__N_1344[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3791_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n20818), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3791_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n20817), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut (.I0(\cmd_rdadcbuf[34] ), .I1(\adc_state[1] ), .I2(adc_state_3__N_1316[1]), 
            .I3(GND_net), .O(n4));
    defparam i1_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1344[34]), 
            .I1(adc_state[2]), .I2(adc_state[3]), .I3(n4), .O(cmd_rdadcbuf_35__N_1260[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_CARRY bit_cnt_3791_add_4_8 (.CI(n20817), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n20818));
    SB_LUT4 bit_cnt_3791_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n20816), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_9 (.I0(adc_state[2]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21991));
    defparam i1_2_lut_adj_9.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_10 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1485));   // adc_ads1252u.vhd(72[8:24])
    defparam i1_2_lut_adj_10.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut_adj_11 (.I0(n11923), .I1(bit_cnt[4]), .I2(bit_cnt[0]), 
            .I3(n6_adj_1485), .O(n20869));   // adc_ads1252u.vhd(72[8:24])
    defparam i4_4_lut_adj_11.LUT_INIT = 16'hffef;
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n11183), .I1(adc_state_c[0]), 
            .I2(adc_state[2]), .I3(\adc_state[1] ), .O(n23528));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_CARRY bit_cnt_3791_add_4_7 (.CI(n20816), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n20817));
    SB_LUT4 bit_cnt_3791_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n20815), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5307_4_lut (.I0(\adc_state_3__N_1336[0] ), .I1(n20869), .I2(\adc_state[1] ), 
            .I3(adc_state_c[0]), .O(n8031));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i5307_4_lut.LUT_INIT = 16'h35aa;
    SB_CARRY bit_cnt_3791_add_4_6 (.CI(n20815), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n20816));
    SB_LUT4 bit_cnt_3791_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n20814), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3791_add_4_5 (.CI(n20814), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n20815));
    SB_LUT4 n23528_bdd_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state[2]), 
            .I2(n22625), .I3(n23528), .O(n23531));
    defparam n23528_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 bit_cnt_3791_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n20813), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3791_add_4_4 (.CI(n20813), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n20814));
    SB_LUT4 bit_cnt_3791_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n20812), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16328_4_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state[2]), 
            .I2(adc_state[3]), .I3(\adc_state_3__N_1336[0] ), .O(adc_state_3__N_1212[0]));
    defparam i16328_4_lut_4_lut.LUT_INIT = 16'h1514;
    SB_CARRY bit_cnt_3791_add_4_3 (.CI(n20812), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n20813));
    SB_LUT4 bit_cnt_3791_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3791_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_adj_12 (.I0(adc_state_c[0]), .I1(\adc_state[1] ), 
            .I2(adc_state[3]), .I3(adc_state[2]), .O(n14120));
    defparam i1_4_lut_4_lut_adj_12.LUT_INIT = 16'hf840;
    SB_CARRY bit_cnt_3791_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n20812));
    SB_LUT4 i8_4_lut (.I0(avg_cnt[9]), .I1(avg_cnt[6]), .I2(avg_cnt[3]), 
            .I3(avg_cnt[11]), .O(n20));   // adc_ads1252u.vhd(104[8:24])
    defparam i8_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[5]), .I2(avg_cnt[0]), 
            .I3(avg_cnt[8]), .O(n19));   // adc_ads1252u.vhd(104[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[4]), .I1(avg_cnt[1]), .I2(avg_cnt[7]), 
            .I3(avg_cnt[2]), .O(n21));   // adc_ads1252u.vhd(104[8:24])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(adc_state_3__N_1316[1]));   // adc_ads1252u.vhd(104[8:24])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[7]), .I1(bit_cnt[5]), .I2(bit_cnt[6]), 
            .I3(GND_net), .O(n21859));   // adc_ads1252u.vhd(57[9:24])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_13 (.I0(bit_cnt[1]), .I1(n21859), .I2(GND_net), 
            .I3(GND_net), .O(n11923));   // adc_ads1252u.vhd(57[9:24])
    defparam i1_2_lut_adj_13.LUT_INIT = 16'heeee;
    SB_LUT4 i19137_2_lut (.I0(bit_cnt[3]), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(GND_net), .O(n22063));
    defparam i19137_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_23_9 (.CI(n20696), .I0(cmd_rdadcbuf[7]), .I1(\cmd_rdadctmp[7] ), 
            .CO(n20697));
    SB_LUT4 i20026_4_lut (.I0(n22063), .I1(n11923), .I2(adc_state[3]), 
            .I3(bit_cnt[2]), .O(n22404));
    defparam i20026_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i19145_2_lut_3_lut (.I0(adc_state_c[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state_3__N_1336[0] ), .I3(GND_net), .O(n22071));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i19145_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i14850_3_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state[1] ), 
            .I2(adc_state[2]), .I3(adc_state[3]), .O(adc_state_3__N_1212[3]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i14850_3_lut_4_lut.LUT_INIT = 16'h0780;
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(\cmd_rdadctmp[6] ), 
            .I3(n20695), .O(cmd_rdadcbuf_35__N_1344[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12406_2_lut_3_lut (.I0(adc_state_c[0]), .I1(\adc_state[1] ), 
            .I2(adc_state[2]), .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i12406_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i35_4_lut (.I0(\adc_state_3__N_1336[0] ), .I1(n22404), .I2(\adc_state[1] ), 
            .I3(bit_cnt[0]), .O(n17));
    defparam i35_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i19130_2_lut (.I0(\adc_state_3__N_1336[0] ), .I1(\adc_state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n22055));
    defparam i19130_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i33_3_lut (.I0(\adc_state_3__N_1336[0] ), .I1(n17), .I2(adc_state_c[0]), 
            .I3(GND_net), .O(n27));
    defparam i33_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_14 (.I0(adc_state[2]), .I1(adc_state[3]), .I2(n27), 
            .I3(n22055), .O(n21869));
    defparam i1_4_lut_adj_14.LUT_INIT = 16'hfafe;
    SB_LUT4 adc_state_3__I_0_56_Mux_1_i10_3_lut (.I0(adc_state_3__N_1316[1]), 
            .I1(\adc_state[1] ), .I2(adc_state_c[0]), .I3(GND_net), .O(n10));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_56_Mux_1_i10_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 adc_state_3__I_0_56_Mux_1_i15_4_lut (.I0(n23531), .I1(n10), 
            .I2(adc_state[3]), .I3(adc_state[2]), .O(adc_state_3__N_1212[1]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_56_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14825_3_lut (.I0(\adc_state_3__N_1336[0] ), .I1(\adc_state[1] ), 
            .I2(adc_state_c[0]), .I3(GND_net), .O(n9));   // adc_ads1252u.vhd(31[8:17])
    defparam i14825_3_lut.LUT_INIT = 16'hdada;
    SB_LUT4 i1_4_lut_adj_15 (.I0(adc_state[2]), .I1(n9), .I2(n22071), 
            .I3(adc_state[3]), .O(n44_adj_1487));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_15.LUT_INIT = 16'hafee;
    SB_LUT4 i19149_2_lut (.I0(n20869), .I1(adc_state_c[0]), .I2(GND_net), 
            .I3(GND_net), .O(n22075));
    defparam i19149_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_16 (.I0(n22075), .I1(n44_adj_1487), .I2(\adc_state[1] ), 
            .I3(n21991), .O(n39_adj_1488));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hcc4c;
    SB_CARRY add_23_8 (.CI(n20695), .I0(cmd_rdadcbuf[6]), .I1(\cmd_rdadctmp[6] ), 
            .CO(n20696));
    SB_LUT4 i1_3_lut_4_lut_adj_17 (.I0(\adc_state[1] ), .I1(adc_state_c[0]), 
            .I2(adc_state[2]), .I3(adc_state[3]), .O(n12352));
    defparam i1_3_lut_4_lut_adj_17.LUT_INIT = 16'hf400;
    SB_LUT4 i1_3_lut_4_lut_adj_18 (.I0(\adc_state[1] ), .I1(adc_state_c[0]), 
            .I2(adc_state[3]), .I3(adc_state[2]), .O(n13925));
    defparam i1_3_lut_4_lut_adj_18.LUT_INIT = 16'hf400;
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(\cmd_rdadctmp[5] ), 
            .I3(n20694), .O(cmd_rdadcbuf_35__N_1344[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n21207));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n21369));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(n21859), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n21375));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR bit_cnt_3791__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n17565), 
            .D(n37[7]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n17565), 
            .D(n37[6]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n17565), 
            .D(n37[5]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n17565), 
            .D(n37[4]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n17565), 
            .D(n37[3]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n17565), 
            .D(n37[2]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3791__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n17565), 
            .D(n37[1]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 i34_3_lut_4_lut (.I0(adc_state_c[0]), .I1(\adc_state_3__N_1336[0] ), 
            .I2(n22071), .I3(adc_state[3]), .O(n28));
    defparam i34_3_lut_4_lut.LUT_INIT = 16'h0f44;
    SB_CARRY add_23_7 (.CI(n20694), .I0(cmd_rdadcbuf[5]), .I1(\cmd_rdadctmp[5] ), 
            .CO(n20695));
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[11]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[10]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[9]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[8]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[7]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[6]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[5]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[4]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[3]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[2]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[1]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[33]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[32]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[31]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[30]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[29]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[28]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[27]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[26]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[25]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[24]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[23]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[22]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[21]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[20]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[19]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[18]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[17]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[16]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[15]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(\cmd_rdadctmp[4] ), 
            .I3(n20693), .O(cmd_rdadcbuf_35__N_1344[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[14]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[13]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[12]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_6 (.CI(n20693), .I0(cmd_rdadcbuf[4]), .I1(\cmd_rdadctmp[4] ), 
            .CO(n20694));
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[11]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[10]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[9]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[8]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[7]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[6]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[5]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[4]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[3]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[2]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[1]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13957), 
            .D(n6_adj_1484), .R(n21707));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR adc_state_i2 (.Q(adc_state[2]), .C(VDC_CLK), .E(n21871), 
            .D(n7), .R(n5));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i20014_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n22628));
    defparam i20014_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i20101_4_lut (.I0(n22628), .I1(adc_state_c[0]), .I2(n21859), 
            .I3(bit_cnt[4]), .O(n22625));
    defparam i20101_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(\cmd_rdadctmp[3] ), 
            .I3(n20692), .O(cmd_rdadcbuf_35__N_1344[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_5 (.CI(n20692), .I0(cmd_rdadcbuf[3]), .I1(\cmd_rdadctmp[3] ), 
            .CO(n20693));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(\cmd_rdadctmp[2] ), 
            .I3(n20691), .O(cmd_rdadcbuf_35__N_1344[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n20691), .I0(cmd_rdadcbuf[2]), .I1(\cmd_rdadctmp[2] ), 
            .CO(n20692));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(\cmd_rdadctmp[1] ), 
            .I3(n20690), .O(cmd_rdadcbuf_35__N_1344[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n20690), .I0(cmd_rdadcbuf[1]), .I1(\cmd_rdadctmp[1] ), 
            .CO(n20691));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1344[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n20690));
    SB_DFFESR bit_cnt_3791__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n17565), 
            .D(n37[0]), .R(n17542));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n14120), .D(avg_cnt_11__N_1380[0]), 
            .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n14120), 
            .D(cmd_rdadcbuf_35__N_1344[0]), .R(n15721));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(VDC_CLK), .E(n39_adj_1488), 
            .D(adc_state_3__N_1212[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n20735), .O(avg_cnt_11__N_1380[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    vdc_gen_clk genclk (.GND_net(GND_net), .DDS_MCLK1(DDS_MCLK1), .VDC_CLK(VDC_CLK), 
            .VCC_net(VCC_net));   // adc_ads1252u.vhd(136[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (GND_net, DDS_MCLK1, VDC_CLK, VCC_net);
    input GND_net;
    input DDS_MCLK1;
    output VDC_CLK;
    input VCC_net;
    
    wire DDS_MCLK1 /* synthesis SET_AS_NETWORK=DDS_MCLK1, is_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire div_state_1__N_1480;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n28, n26, n27, n22305;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1481, n26_adj_1482, n27_adj_1483, n2, n22308, n22303, 
        n22302;
    wire [1:0]div_state_1__N_1393;
    
    wire n6, n15418, n12361;
    wire [16:0]t0off_15__N_1443;
    wire [16:0]t0on_15__N_1427;
    
    wire n20765, n20764, n20763, n20762, n20761, n20760, n20759, 
        n20758, n20757, n20756, n20755, n20754, n20753, n20752, 
        n20751, n20750, n20749, n20748, n20747, n20746, n20745, 
        n20744, n20743, n20742, n20741, n20740, n20739, n20738, 
        n20737, n20736;
    
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1480));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20011_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n22305));
    defparam i20011_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_3 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1481));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_3.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_4 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1482));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_4.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_5 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1483));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_5.LUT_INIT = 16'hfffe;
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(DDS_MCLK1), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19910_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n22308));
    defparam i19910_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19909_4_lut (.I0(n22305), .I1(n27), .I2(n26), .I3(n28), 
            .O(n22303));
    defparam i19909_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i20049_4_lut (.I0(n22308), .I1(n27_adj_1483), .I2(n26_adj_1482), 
            .I3(n28_adj_1481), .O(n22302));
    defparam i20049_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(DDS_MCLK1), .D(div_state_1__N_1480));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(DDS_MCLK1), .E(n6), .D(div_state_1__N_1393[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i20156_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n15418));
    defparam i20156_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i20142_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n12361));
    defparam i20142_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i12405_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1393[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12405_2_lut.LUT_INIT = 16'h6666;
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[15]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[14]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[13]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[12]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[11]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[10]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[9]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[8]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[7]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[6]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[5]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[4]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[3]), 
            .S(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[2]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[1]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[15]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[14]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[13]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[12]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[11]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[10]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[9]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[8]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[7]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[6]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[5]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[4]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[3]), .S(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[2]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[1]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i20146_2_lut_4_lut (.I0(n22302), .I1(n22303), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));
    defparam i20146_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n20765), .O(t0on_15__N_1427[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n20764), .O(t0on_15__N_1427[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n20764), .I0(t0on[14]), .I1(VCC_net), .CO(n20765));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n20763), .O(t0on_15__N_1427[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n20763), .I0(t0on[13]), .I1(VCC_net), .CO(n20764));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n20762), .O(t0on_15__N_1427[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n20762), .I0(t0on[12]), .I1(VCC_net), .CO(n20763));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n20761), .O(t0on_15__N_1427[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n20761), .I0(t0on[11]), .I1(VCC_net), .CO(n20762));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n20760), .O(t0on_15__N_1427[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n20760), .I0(t0on[10]), .I1(VCC_net), .CO(n20761));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n20759), 
            .O(t0on_15__N_1427[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n20759), .I0(t0on[9]), .I1(VCC_net), .CO(n20760));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n20758), 
            .O(t0on_15__N_1427[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n20758), .I0(t0on[8]), .I1(VCC_net), .CO(n20759));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n20757), 
            .O(t0on_15__N_1427[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n20757), .I0(t0on[7]), .I1(VCC_net), .CO(n20758));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n20756), 
            .O(t0on_15__N_1427[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n20756), .I0(t0on[6]), .I1(VCC_net), .CO(n20757));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n20755), 
            .O(t0on_15__N_1427[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n20755), .I0(t0on[5]), .I1(VCC_net), .CO(n20756));
    SB_LUT4 i20184_2_lut_4_lut (.I0(n22302), .I1(n22303), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));
    defparam i20184_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n20754), 
            .O(t0on_15__N_1427[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n20754), .I0(t0on[4]), .I1(VCC_net), .CO(n20755));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n20753), 
            .O(t0on_15__N_1427[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n20753), .I0(t0on[3]), .I1(VCC_net), .CO(n20754));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n20752), 
            .O(t0on_15__N_1427[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n20752), .I0(t0on[2]), .I1(VCC_net), .CO(n20753));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n20751), 
            .O(t0on_15__N_1427[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n20751), .I0(t0on[1]), .I1(VCC_net), .CO(n20752));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1427[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n20751));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n20750), .O(t0off_15__N_1443[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n20749), .O(t0off_15__N_1443[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n20749), .I0(t0off[14]), .I1(VCC_net), .CO(n20750));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n20748), .O(t0off_15__N_1443[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n20748), .I0(t0off[13]), .I1(VCC_net), .CO(n20749));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n20747), .O(t0off_15__N_1443[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n20747), .I0(t0off[12]), .I1(VCC_net), .CO(n20748));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n20746), .O(t0off_15__N_1443[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n20746), .I0(t0off[11]), .I1(VCC_net), .CO(n20747));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n20745), .O(t0off_15__N_1443[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n20745), .I0(t0off[10]), .I1(VCC_net), .CO(n20746));
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(DDS_MCLK1), .E(n12361), .D(t0off_15__N_1443[0]), 
            .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(DDS_MCLK1), .E(div_state_1__N_1480), 
            .D(t0on_15__N_1427[0]), .R(n15418));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n20744), .O(t0off_15__N_1443[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n20744), .I0(t0off[9]), .I1(VCC_net), .CO(n20745));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n20743), .O(t0off_15__N_1443[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n20743), .I0(t0off[8]), .I1(VCC_net), .CO(n20744));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n20742), 
            .O(t0off_15__N_1443[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n20742), .I0(t0off[7]), .I1(VCC_net), .CO(n20743));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n20741), 
            .O(t0off_15__N_1443[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n20741), .I0(t0off[6]), .I1(VCC_net), .CO(n20742));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n20740), 
            .O(t0off_15__N_1443[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n20740), .I0(t0off[5]), .I1(VCC_net), .CO(n20741));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n20739), 
            .O(t0off_15__N_1443[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n20739), .I0(t0off[4]), .I1(VCC_net), .CO(n20740));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n20738), 
            .O(t0off_15__N_1443[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n20738), .I0(t0off[3]), .I1(VCC_net), .CO(n20739));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n20737), 
            .O(t0off_15__N_1443[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n20737), .I0(t0off[2]), .I1(VCC_net), .CO(n20738));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n20736), 
            .O(t0off_15__N_1443[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n20736), .I0(t0off[1]), .I1(VCC_net), .CO(n20737));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1443[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n20736));
    
endmodule
