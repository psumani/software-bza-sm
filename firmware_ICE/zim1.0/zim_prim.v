// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Jan 27 14:53:57 2023
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
    
    wire trig_dds1;
    wire [3:0]clk_cnt;   // zim_main.vhd(267[9:16])
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
    
    wire n20809;
    wire [31:0]secclk_cnt;   // zim_main.vhd(324[9:19])
    
    wire n20906, clk_RTD_N_708, n12205, wdtick_flag_N_293, n19829, 
        n8, n17, n22, TEST_LED_N_683, n9, n24, n19329, n9_adj_1407, 
        n20784, dds0_mclk_N_701, n9_adj_1408, n19328, iac_raw_buf_N_728, 
        iac_raw_buf_N_726, n322, n323, n324, n325, n326, n327, 
        n328, n329, n330, n331, n334, n335, n336, n337, n338, 
        n339, n340, n341, n342, n343, n344, n345, n346, n347, 
        n348, n349, n385, n386, n387, n388, n389, n390, n391, 
        n392, n393, n394, n395, n396, n397, n398, n399, n400, 
        n20117, n20119, n20121, n20123, n20125, eis_end_N_716;
    wire [2:0]eis_state_2__N_167;
    
    wire n11333, n19290, n29, n19, n20502, n16, n19879, THERMOSTAT_N_462;
    wire [2:0]comm_state_3__N_428;
    
    wire n21081, n20794, n20127, n20;
    wire [2:0]comm_index_2__N_439;
    
    wire n14083;
    wire [3:0]comm_state_3__N_412;
    
    wire n1252, comm_clear_N_700, ICE_GPMI_0_N_698, n17314, n20147, 
        n20149, n20151, n19753;
    wire [3:0]comm_state_3__N_9;
    
    wire n19755, n19757, n19759, n19761, n19763, n19765, n19767, 
        n19769, n19771, n19773, n21079, n19775, n19777, n19779, 
        n19781, n19783, n19785, n19787, n19789, n19791, n19793, 
        n19683, n19867, n19869, n19871;
    wire [9:0]data_index_9__N_212;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n19881, n8_adj_1409, n20734, n22216, n4, n20145;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire DTRIG_N_910, n19883, n19885, n19887, n20783, n20781, n20775, 
        n22213, n21, n21658, n20613, n20507;
    wire [2:0]adc_state_adj_1628;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1629;   // adc_ads127.vhd(27[8:20])
    
    wire n22207, n14700, DTRIG_N_910_adj_1444, n19889, n19891, n19893, 
        n21285, n20769, n22201, n22198, n22195, n20850, n2342;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1650;   // dds_ad9837.vhd(25[9:16])
    
    wire n19895, n20113;
    wire [2:0]dds_state_adj_1652;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1653;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1654;   // dds_ad9837.vhd(25[9:16])
    
    wire n14023;
    wire [3:0]bit_cnt_3__N_964_adj_1658;
    
    wire n19897;
    wire [2:0]dds_state_2__N_916_adj_1660;
    wire [3:0]adc_state_adj_1668;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1669;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n22189, n12214, n30, n22183, n19327, n19899, n19901, 
        n19903, n19905, n19907, n19909, n19911, n19913, n19915, 
        n19639, n19641, n19643, n19645, n19647, n19649, n15318, 
        n22180, n21276, n4_adj_1473;
    wire [3:0]adc_state_adj_1674;   // adc_max31865.vhd(24[8:17])
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n22177, n19637, n19973, n19975, n13615, n20543, n19977, 
        n19979, n19981, n19983, n19985, n19987, n30_adj_1475, n22_adj_1476, 
        n19_adj_1477, n30_adj_1478, n22171, n26, n20863, n19_adj_1479, 
        n16_adj_1480, n22165, n30_adj_1481, n22162, n12220, n20585, 
        n19_adj_1482, n4_adj_1483, n20089, n20824, n45, n44, n43, 
        n42, n41, n40, n39, n38, n20534, n10, n15, n14, n22159, 
        n22156, n25, n23, n19326, n22153, n19302, n20195, n15817, 
        n21261, n120, n119, n118, n117, n116, n115, n114, n113, 
        n112, n111, n110, n109, n108, n107, n106, n105, n104, 
        n103, n102, n101, n100, n99, n98, n19989, n19831, n14763, 
        n22150, n26_adj_1484, n14742, n30_adj_1485, n20081, n26_adj_1486, 
        n19_adj_1487, n16_adj_1488, n22147, n16_adj_1489, n30_adj_1490, 
        n7, n21071, n19292, n19301, n22141, n23_adj_1491, n22135, 
        n22_adj_1492, n30_adj_1493, n22132, n20846, n21_adj_1494, 
        n20037, n26_adj_1495, n15795, n22129, n5, n20_adj_1496, 
        n17338, n20904, n17393, n19657, n31, n22126, n20842, n14_adj_1497, 
        n21069, n14_adj_1498, n12853, n22123, n20536, n21067, n19_adj_1499, 
        n19971, n22120, n15776, n27, n11324, n19325, n20772, n20191, 
        n16_adj_1500, n19_adj_1501, n13917, n22117, n26_adj_1502, 
        n22114, n20540, n20818, n30_adj_1503, n16_adj_1504, n19_adj_1505, 
        n26_adj_1506, n20672, n16_adj_1507, n19_adj_1508, n22111, 
        n26_adj_1509, n22108, n19991, n23_adj_1510, n26_adj_1511, 
        n23_adj_1512, n22105, n22102, n23_adj_1513, n22099, n22096, 
        n30_adj_1514, n3, n22093, n13533, n13537, n13541, n13545, 
        n13549, n13553, n7_adj_1515, n19300, n22090, n14_adj_1516, 
        n12, n16547, n20843, n23_adj_1517, n22087, n22084, n23_adj_1518, 
        n26_adj_1519, n30_adj_1520, n14053, n19993, n19705, n22081, 
        n19995, n18, n22078, n30_adj_1521, n19299, n20215, n19324, 
        n19298, n22075, n19997, n22072, n19323, n22069, n20757, 
        n22066, n19999, n28, n20937, n21051, n21050, n21049, n8_adj_1522, 
        n22063, n22060, n22057, n22054, n14465, n20563, n15161, 
        n15160, n19967, n19322, n22051, n22048, n22045, n22042, 
        n22039, n22036, n22033, n22030, n22027, n22024, n22021, 
        n22015, n22012, n22009, n22006, n19321, n15159, n15158, 
        n15157, n15156, n15155, n15154, n15153, n15152, n15151, 
        n15150, n15149, n15148, n15147, n15146, n15145, n15144, 
        n15143, n15142, n15141, n15140, n15139, n15138, n15137, 
        n15136, n15135, n15134, n15133, n15132, n15131, n15130, 
        n15129, n15128, n15127, n15126, n15125, n15124, n15123, 
        n15122, n15121, n15120, n15119, n15118, n15117, n15116, 
        n15115, n15114, n15113, n15112, n15111, n15110, n15109, 
        n15108, n15107, n15106, n15105, n15104, n15103, n15102, 
        n15101, n15100, n15099, n15098, n22003, n14_adj_1523, n14_adj_1524, 
        n14_adj_1525, n14_adj_1526, n14_adj_1527, n14_adj_1528, n14_adj_1529, 
        n24_adj_1530, n20203, n20936, n21997, n21036, n21994, n21991, 
        n21988, n7_adj_1531, n8_adj_1532, n21985, n7_adj_1533, n8_adj_1534, 
        n21982, n7_adj_1535, n8_adj_1536, n7_adj_1537, n8_adj_1538, 
        n12_adj_1539, n7_adj_1540, n8_adj_1541, n21979, n7_adj_1542, 
        n8_adj_1543, n21976, n7_adj_1544, n8_adj_1545, n7_adj_1546, 
        n8_adj_1547, n13921, n13925, n21973, n13929, n21970, n13933, 
        n13937, n13941, n13945, n13949, n13953, n13957, n13961, 
        n13965, n21967, n13969, n21964, n13973, n13977, n13981, 
        n13985, n13989, n13993, n13997, n15097, n14001, n15096, 
        n14005, n14009, n14013, n14017, n15095, n14027, n14031, 
        n14035, n14514, n14039, n14043, n14047, n14057, n14061, 
        n14065, n14069, n14073, n14077, n14_adj_1548, n14_adj_1549, 
        n14_adj_1550, n14_adj_1551, n14_adj_1552, n14490, n20903, 
        n15094, n18_adj_1553, n15092, n17_adj_1554, n21961, n20837, 
        n2, n21958, n20836, n8_adj_1555, n19963, n14_adj_1556, n20931, 
        n19320, n21206, n19319, n14_adj_1557, n19296, n14_adj_1558, 
        n1, n2_adj_1559, n4_adj_1560, n1_adj_1561, n2_adj_1562, n4_adj_1563, 
        n21955, n20833, n1_adj_1564, n2_adj_1565, n4_adj_1566, n21952, 
        n4_adj_1567, n4_adj_1568, n21949, n4_adj_1569, n21946, n20845, 
        n20779, n13443, n21024, n14869, n21022, n16_adj_1570, n20834, 
        n20043, n30_adj_1571, n19468, n19467, n15760, n17357, n19466, 
        n19959, n15757, n15755, n12254, n15752, n21943, n10553, 
        n21940, n19465, n15749, n12116, n19464, n15746, n19751, 
        n15743, n21937, n21934, n13073, n15740, n10_adj_1572, n20786, 
        n19294, n15737, n19318, n19317, n19293, n15734, n19316, 
        n21_adj_1573, n15731, n19289, n19315, n15728, n15726, n14639, 
        n19463, n19462, n20095, n19461, n19460, n13162, n19459, 
        n15723, n21931, n14632, n11882, n13151, n20510, n19725, 
        n17331, n19955, n14784, n20049, n10579, n19841, n19843, 
        n14749, n19458, n19457, n19314, n19845, n23_adj_1574, n19456, 
        n19847, n21922, n19849, n20700, n19851, n21919, n19313, 
        n19455, n19951, n21916, n19727, n19947, n19729, n19731, 
        n19454, n19453, n19452, n19451, n19450, n19449, n19448, 
        n21913, n19447, n21910, n1_adj_1575, n19446, n19445, n19707, 
        n19943, n19444, n19443, n19442, n19441, n20041, n19440, 
        n12643, n4_adj_1576, n21907, n21162, n20650, n11, n14_adj_1577, 
        n19939, n20217, n14770, n20219, n19935, n9273, n20221, 
        n9222, n11417, n20831, n20223, n11411, n20225, n12007, 
        n11406, n20093, n20227, n19297, n19295, n19312, n20229, 
        n14_adj_1578, n19349, n20553, n20231, n19348, n20828, n20359, 
        n24_adj_1579, n11_adj_1580, n20556, n14_adj_1581, n10_adj_1582, 
        n20950, n20233, n20235, n11944, n20237, n19553, n20602, 
        n11538, n13, n12542, n21001, n21143, n18824, n20239, n8780, 
        n12_adj_1583, n20949, n20241, n20091, n20529, n11901, n19689, 
        n17656, n20865, n20243, n17304, n16708, n20245, n11905, 
        n20626, n20825, n11347, n17658, n20247, n17415, n20624, 
        n20249, n13279, n11941, n19931, n19347, n20907, n19346, 
        n19345, n20251, n11846, n19311, n19310, n16_adj_1584, n20253, 
        n19309, n19927, n19308, n12_adj_1585, n11839, n20255, n11836, 
        n19344, n20257, n19343, n20871, n19342, n20259, n19307, 
        n19341, n11810, n11824, n19340, n19306, n23_adj_1586, n20261, 
        n16539, n19923, n11805, n20641, n18_adj_1587, n20622, n20263, 
        n19339, n19338, n7_adj_1588, n14722, n20265, n19337, n19305, 
        n19288, n19919, n20267, n12415, n20269, n15085, n15084, 
        n20627, n20271, n20273, n12164, n10540, n15083, n15082, 
        n15081, n12206, n17336, n19336, n15080, n15079, n15078, 
        n12391, n19335, n20653, n12381, n14756, n20275, n20823, 
        n15077, n12367, n19334, n19723, n20787, n19333, n20277, 
        n12353, n19839, n14735, n19_adj_1589, n22_adj_1590, n30_adj_1591, 
        n20279, n25_adj_1592, n20281, n21109, n19865, n20283, n11730, 
        n11727, n19_adj_1593, n22_adj_1594, n30_adj_1595, n20285, 
        n20820, n4_adj_1596, n20643, n30_adj_1597, n20287, n19_adj_1598, 
        n22_adj_1599, n11700, n30_adj_1600, n17_adj_1601, n20289, 
        n15_adj_1602, n20816, n20573, n20293, n12_adj_1603, n19291, 
        n26_adj_1604, n35, n19_adj_1605, n22_adj_1606, n20_adj_1607, 
        n30_adj_1608, n19815, n12322, n16_adj_1609, n20295, n20690, 
        n20814, n20297, n20810, n19_adj_1610, n22_adj_1611, n20299, 
        n30_adj_1612, n20805, n19332, n20301, n20801, n20303, n20796, 
        n20305, n20793, n19331, n19_adj_1613, n22_adj_1614, n18586, 
        n30_adj_1615, n20571, n20307, n20792, n20309, n20311, n25_adj_1616, 
        n20315, n19_adj_1617, n22_adj_1618, n21088, n30_adj_1619, 
        n19287, n10503, n20317, n19330, n11_adj_1620, n21087, n20319, 
        n14652, n19304, n19303, n20321, n10508, n16_adj_1621, n20815, 
        n19_adj_1622, n26_adj_1623, n30_adj_1624, n26_adj_1625, n12080;
    
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(65[3:10])
    assign IAC_MOSI = VAC_MOSI;   // zim_main.vhd(68[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11730), 
            .D(eis_state_2__N_167[0]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_DFFN dds0_mclk_294 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_701));   // zim_main.vhd(440[3] 446[10])
    SB_DFFE comm_clear_301 (.Q(comm_clear), .C(clk_32MHz), .E(n11347), 
            .D(comm_clear_N_700));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24));   // zim_main.vhd(476[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_CARRY add_68_9 (.CI(n19302), .I0(data_cntvec[7]), .I1(VAC_MOSI), 
            .CO(n19303));
    SB_DFFE comm_response_302 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n11406), 
            .D(ICE_GPMI_0_N_698));   // zim_main.vhd(531[3] 819[10])
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[35:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22));   // zim_main.vhd(476[10:41])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[14]), .O(n23_adj_1586));   // zim_main.vhd(476[10:41])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i15206_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1526));   // zim_main.vhd(533[4] 818[13])
    defparam i15206_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12756_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1549), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15158));   // zim_main.vhd(531[3] 819[10])
    defparam i12756_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12757_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1556), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15159));   // zim_main.vhd(531[3] 819[10])
    defparam i12757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n20585), .I1(n20653), .I2(n12220), .I3(n11810), 
            .O(n4_adj_1483));
    defparam i1_4_lut.LUT_INIT = 16'hfac8;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20536), 
            .D(comm_state_3__N_9[0]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_212[0]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zim_main.vhd(476[10:41])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp_adj_1669[16]), .I1(cmd_rdadctmp_adj_1669[15]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19781));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_4_lut (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1587));   // zim_main.vhd(476[10:41])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19398 (.I0(comm_cmd[0]), .I1(VAC_OSR0), 
            .I2(buf_adcdata_iac[20]), .I3(comm_cmd[1]), .O(n22003));
    defparam comm_cmd_0__bdd_4_lut_19398.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_50 (.I0(cmd_rdadctmp_adj_1669[15]), .I1(cmd_rdadctmp_adj_1669[14]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19779));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_50.LUT_INIT = 16'h0aca;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF clk_RTD_287 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_708));   // zim_main.vhd(389[3] 396[10])
    SB_LUT4 n22003_bdd_4_lut (.I0(n22003), .I1(buf_dds1[12]), .I2(buf_dds0[12]), 
            .I3(comm_cmd[1]), .O(n22006));
    defparam n22003_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12758_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1548), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15160));   // zim_main.vhd(531[3] 819[10])
    defparam i12758_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20257));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_6__I_0_368_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n8));   // zim_main.vhd(778[11:20])
    defparam comm_cmd_6__I_0_368_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20), .I2(n14_adj_1498), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1604));   // zim_main.vhd(476[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i2_4_lut_adj_52 (.I0(n3), .I1(n4_adj_1483), .I2(ICE_SPI_CE0), 
            .I3(n12205), .O(n20510));
    defparam i2_4_lut_adj_52.LUT_INIT = 16'hcc8c;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_1586), .I2(n22), .I3(n24), 
            .O(n30_adj_1571));   // zim_main.vhd(476[10:41])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_53 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17));   // zim_main.vhd(476[10:41])
    defparam i1_4_lut_adj_53.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_2_lut (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12205));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15_4_lut (.I0(n17), .I1(n30_adj_1571), .I2(n26_adj_1604), 
            .I3(n18_adj_1587), .O(n31));   // zim_main.vhd(476[10:41])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20255));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut_adj_55 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1530));   // zim_main.vhd(509[9:35])
    defparam i8_4_lut_adj_55.LUT_INIT = 16'h7bde;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[43:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 mux_128_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1518));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[39:36]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 i18787_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21024));
    defparam i18787_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i6_4_lut_adj_56 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1492));   // zim_main.vhd(509[9:35])
    defparam i6_4_lut_adj_56.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_57 (.I0(n9), .I1(comm_state[3]), .I2(n9273), 
            .I3(n20613), .O(n12415));
    defparam i1_4_lut_adj_57.LUT_INIT = 16'hc0c4;
    SB_LUT4 i7_4_lut_adj_58 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1491));   // zim_main.vhd(509[9:35])
    defparam i7_4_lut_adj_58.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_59 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1494));   // zim_main.vhd(509[9:35])
    defparam i5_4_lut_adj_59.LUT_INIT = 16'h7bde;
    SB_CARRY add_125_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10579), 
            .CO(n19326));
    SB_LUT4 i12_4_lut_adj_60 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20253));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20251));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_62 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20249));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'hca0a;
    SB_LUT4 i4_4_lut (.I0(data_cntvec[3]), .I1(data_cntvec[5]), .I2(req_data_cnt[3]), 
            .I3(req_data_cnt[5]), .O(n20_adj_1496));   // zim_main.vhd(509[9:35])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 add_73_17_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[15]), .I2(VAC_MOSI), 
            .I3(n19325), .O(n385)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp_adj_1669[14]), .I1(cmd_rdadctmp_adj_1669[13]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19777));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_2_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14514));   // zim_main.vhd(533[4] 818[13])
    defparam i2_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i12_4_lut_adj_64 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20247));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'hca0a;
    SB_DFFN dds0_mclkcnt_i7_3772__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(442[4] 445[11])
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20245));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 i12759_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1523), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15161));   // zim_main.vhd(531[3] 819[10])
    defparam i12759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_66 (.I0(cmd_rdadctmp_adj_1629[1]), .I1(cmd_rdadctmp_adj_1629[0]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20277));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'hca0a;
    SB_LUT4 i15191_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1557));   // zim_main.vhd(533[4] 818[13])
    defparam i15191_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_67 (.I0(cmd_rdadctmp_adj_1669[13]), .I1(cmd_rdadctmp_adj_1669[12]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19775));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(n20613), .O(n10540));   // zim_main.vhd(778[11:20])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i15207_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1527));   // zim_main.vhd(533[4] 818[13])
    defparam i15207_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut (.I0(n20643), .I1(n11810), .I2(n20585), .I3(VAC_MOSI), 
            .O(n20672));
    defparam i1_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp_adj_1669[12]), .I1(cmd_rdadctmp_adj_1669[11]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19773));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'h0aca;
    SB_DFFER wdtick_cnt_3763_3764__i1 (.Q(wdtick_cnt[0]), .C(TEST_LED), 
            .E(n11727), .D(n25), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i2_4_lut_adj_69 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), .I2(req_data_cnt[1]), 
            .I3(req_data_cnt[4]), .O(n18_adj_1553));   // zim_main.vhd(509[9:35])
    defparam i2_4_lut_adj_69.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n10553));   // zim_main.vhd(764[11:20])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i15190_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1558));   // zim_main.vhd(533[4] 818[13])
    defparam i15190_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_70 (.I0(cmd_rdadctmp_adj_1669[11]), .I1(cmd_rdadctmp_adj_1669[10]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19771));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'h0aca;
    SB_CARRY add_67_4 (.CI(n19288), .I0(data_count[2]), .I1(VAC_MOSI), 
            .CO(n19289));
    SB_LUT4 i15208_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1528));   // zim_main.vhd(533[4] 818[13])
    defparam i15208_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(VAC_MOSI), .O(clk_RTD_N_708));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_716), .C(clk_32MHz), .E(n11730), 
            .D(eis_state_2__N_167[2]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_CARRY add_67_5 (.CI(n19289), .I0(data_count[3]), .I1(VAC_MOSI), 
            .CO(n19290));
    SB_LUT4 i15209_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1529));   // zim_main.vhd(533[4] 818[13])
    defparam i15209_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n21991));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11730), 
            .D(eis_state_2__N_167[1]), .R(acadc_rst));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 n21991_bdd_4_lut (.I0(n21991), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n21994));
    defparam n21991_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_71 (.I0(n20510), .I1(n20650), .I2(n20672), .I3(n4_adj_1596), 
            .O(n20536));
    defparam i1_4_lut_adj_71.LUT_INIT = 16'ha080;
    SB_LUT4 i12_4_lut_adj_72 (.I0(cmd_rdadctmp_adj_1629[25]), .I1(cmd_rdadctmp_adj_1629[24]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20119));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut (.I0(data_cntvec[8]), .I1(data_cntvec[13]), .I2(req_data_cnt[8]), 
            .I3(req_data_cnt[13]), .O(n19_adj_1499));   // zim_main.vhd(509[9:35])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_0__bdd_4_lut_19379 (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n21985));
    defparam comm_index_0__bdd_4_lut_19379.LUT_INIT = 16'he4aa;
    SB_LUT4 n21985_bdd_4_lut (.I0(n21985), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n21988));
    defparam n21985_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19063_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(VAC_MOSI), .O(n21658));
    defparam i19063_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_2_lut_3_lut_adj_73 (.I0(n12220), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n20556));
    defparam i1_2_lut_3_lut_adj_73.LUT_INIT = 16'ha8a8;
    SB_LUT4 i18268_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n20863));
    defparam i18268_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i18988_2_lut_4_lut (.I0(comm_index[2]), .I1(n18824), .I2(comm_state[0]), 
            .I3(comm_index[1]), .O(n21143));
    defparam i18988_2_lut_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(n11805), .O(n16708));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h10ff;
    SB_LUT4 i1_4_lut_adj_74 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), .I2(req_data_cnt[0]), 
            .I3(req_data_cnt[6]), .O(n17_adj_1554));   // zim_main.vhd(509[9:35])
    defparam i1_4_lut_adj_74.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_0__bdd_4_lut_19374 (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n21979));
    defparam comm_index_0__bdd_4_lut_19374.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1629[28]), .I1(cmd_rdadctmp_adj_1629[27]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20125));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1629[27]), .I1(cmd_rdadctmp_adj_1629[26]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20123));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_77 (.I0(cmd_rdadctmp_adj_1629[26]), .I1(cmd_rdadctmp_adj_1629[25]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20121));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_78 (.I0(cmd_rdadctmp_adj_1629[31]), .I1(cmd_rdadctmp_adj_1629[30]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20147));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_78.LUT_INIT = 16'hca0a;
    SB_LUT4 i12740_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9273), .I3(n12391), .O(n15142));   // zim_main.vhd(531[3] 819[10])
    defparam i12740_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_129_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1479));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_16_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[14]), .I2(VAC_MOSI), 
            .I3(n19324), .O(n386)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_8_lut (.I0(VAC_MOSI), .I1(data_cntvec[6]), .I2(VAC_MOSI), 
            .I3(n19301), .O(n343)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n21979_bdd_4_lut (.I0(n21979), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n21982));
    defparam n21979_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_16 (.CI(n19324), .I0(acadc_skipcnt[14]), .I1(VAC_MOSI), 
            .CO(n19325));
    SB_LUT4 i14_4_lut_adj_79 (.I0(n21_adj_1494), .I1(n23_adj_1491), .I2(n22_adj_1492), 
            .I3(n24_adj_1530), .O(n30_adj_1597));   // zim_main.vhd(509[9:35])
    defparam i14_4_lut_adj_79.LUT_INIT = 16'hfffe;
    SB_LUT4 add_67_5_lut (.I0(VAC_MOSI), .I1(data_count[3]), .I2(VAC_MOSI), 
            .I3(n19289), .O(n328)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19000_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21071));
    defparam i19000_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 i18270_4_lut (.I0(n20863), .I1(n21658), .I2(comm_state[2]), 
            .I3(n14514), .O(n20865));
    defparam i18270_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i13_4_lut (.I0(n17_adj_1554), .I1(n19_adj_1499), .I2(n18_adj_1553), 
            .I3(n20_adj_1496), .O(n29));   // zim_main.vhd(509[9:35])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY secclk_cnt_3765_3766_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(secclk_cnt[0]), .CO(n19447));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[7]), .I3(n19446), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_8 (.CI(n19301), .I0(data_cntvec[6]), .I1(VAC_MOSI), 
            .CO(n19302));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19393 (.I0(comm_cmd[1]), .I1(n19_adj_1479), 
            .I2(buf_readRTD[0]), .I3(comm_cmd[2]), .O(n21973));
    defparam comm_cmd_1__bdd_4_lut_19393.LUT_INIT = 16'he4aa;
    SB_LUT4 n21973_bdd_4_lut (.I0(n21973), .I1(buf_adcdata_iac[8]), .I2(n16_adj_1480), 
            .I3(comm_cmd[2]), .O(n21976));
    defparam n21973_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_137_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1564));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_80 (.I0(n29), .I1(eis_stop), .I2(n30_adj_1597), 
            .I3(VAC_MOSI), .O(n16_adj_1609));
    defparam i1_3_lut_adj_80.LUT_INIT = 16'hcdcd;
    SB_LUT4 comm_state_3__I_0_342_Mux_0_i15_3_lut (.I0(n20865), .I1(n9273), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(comm_state_3__N_9[0]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12739_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9273), .I3(n12391), .O(n15141));   // zim_main.vhd(531[3] 819[10])
    defparam i12739_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18225_4_lut (.I0(n20818), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20820));
    defparam i18225_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12738_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9273), .I3(n12391), .O(n15140));   // zim_main.vhd(531[3] 819[10])
    defparam i12738_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19408 (.I0(comm_cmd[2]), .I1(n20871), 
            .I2(n20820), .I3(comm_cmd[3]), .O(n21967));
    defparam comm_cmd_2__bdd_4_lut_19408.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_81 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(n20081));   // zim_main.vhd(531[3] 819[10])
    defparam i1_2_lut_3_lut_adj_81.LUT_INIT = 16'he0e0;
    SB_LUT4 i14137_4_lut (.I0(eis_start), .I1(n16_adj_1609), .I2(eis_end_N_716), 
            .I3(n31), .O(n16539));   // zim_main.vhd(296[9:16])
    defparam i14137_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(n10), .I3(n19445), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_137_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1565));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21967_bdd_4_lut (.I0(n21967), .I1(n20814), .I2(n20805), .I3(comm_cmd[3]), 
            .O(n21970));
    defparam n21967_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20243));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_127_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1521));   // zim_main.vhd(586[5] 691[14])
    defparam mux_127_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 i12737_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9273), .I3(n12391), .O(n15139));   // zim_main.vhd(531[3] 819[10])
    defparam i12737_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i17_4_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n10_adj_1572));
    defparam i17_4_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i12736_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9273), .I3(n12391), .O(n15138));   // zim_main.vhd(531[3] 819[10])
    defparam i12736_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19365 (.I0(comm_cmd[1]), .I1(n19_adj_1622), 
            .I2(buf_readRTD[7]), .I3(comm_cmd[2]), .O(n21961));
    defparam comm_cmd_1__bdd_4_lut_19365.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_83 (.I0(DTRIG_N_910), .I1(adc_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20543));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_83.LUT_INIT = 16'h2222;
    SB_LUT4 n21961_bdd_4_lut (.I0(n21961), .I1(buf_adcdata_iac[15]), .I2(n16_adj_1621), 
            .I3(comm_cmd[2]), .O(n21964));
    defparam n21961_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3_4_lut_adj_84 (.I0(n11324), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8780));   // zim_main.vhd(533[4] 818[13])
    defparam i3_4_lut_adj_84.LUT_INIT = 16'hfeff;
    SB_LUT4 i12735_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9273), .I3(n12391), .O(n15137));   // zim_main.vhd(531[3] 819[10])
    defparam i12735_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12734_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9273), .I3(n12391), .O(n15136));   // zim_main.vhd(531[3] 819[10])
    defparam i12734_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i6352_3_lut (.I0(\comm_buf[0] [1]), .I1(data_index[9]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1532));   // zim_main.vhd(533[4] 818[13])
    defparam i6352_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_85 (.I0(cmd_rdadctmp_adj_1669[10]), .I1(cmd_rdadctmp_adj_1669[9]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19769));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 i3887_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(comm_index[1]), .O(comm_index_2__N_439[1]));   // zim_main.vhd(715[5] 725[12])
    defparam i3887_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i12_4_lut_adj_86 (.I0(cmd_rdadctmp_adj_1669[9]), .I1(cmd_rdadctmp_adj_1669[8]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19767));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'h0aca;
    SB_LUT4 i12733_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9273), .I3(n12391), .O(n15135));   // zim_main.vhd(531[3] 819[10])
    defparam i12733_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_87 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20241));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_88 (.I0(cmd_rdadctmp_adj_1669[8]), .I1(cmd_rdadctmp_adj_1669[7]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19765));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_89 (.I0(cmd_rdadctmp_adj_1629[2]), .I1(cmd_rdadctmp_adj_1629[1]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20279));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_90 (.I0(n20624), .I1(n9273), .I2(n12220), .I3(comm_state[3]), 
            .O(n11417));
    defparam i1_4_lut_adj_90.LUT_INIT = 16'hf531;
    SB_LUT4 i12732_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9273), .I3(n12391), .O(n15134));   // zim_main.vhd(531[3] 819[10])
    defparam i12732_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_91 (.I0(cmd_rdadctmp_adj_1629[3]), .I1(cmd_rdadctmp_adj_1629[2]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20281));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 i12731_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9273), .I3(n12391), .O(n15133));   // zim_main.vhd(531[3] 819[10])
    defparam i12731_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12730_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9273), .I3(n12391), .O(n15132));   // zim_main.vhd(531[3] 819[10])
    defparam i12730_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_4_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n21_adj_1573));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h2208;
    SB_LUT4 i12_4_lut_adj_92 (.I0(cmd_rdadctmp_adj_1629[4]), .I1(cmd_rdadctmp_adj_1629[3]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20283));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp_adj_1669[7]), .I1(cmd_rdadctmp_adj_1669[6]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19763));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_94 (.I0(cmd_rdadctmp_adj_1629[5]), .I1(cmd_rdadctmp_adj_1629[4]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20285));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:44]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 i12725_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9273), .I3(n12381), .O(n15127));   // zim_main.vhd(531[3] 819[10])
    defparam i12725_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged11 (.RDATA({buf_data_vac[3:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 add_73_15_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[13]), .I2(VAC_MOSI), 
            .I3(n19323), .O(n387)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12724_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9273), .I3(n12381), .O(n15126));   // zim_main.vhd(531[3] 819[10])
    defparam i12724_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12226_2_lut (.I0(n13443), .I1(eis_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14632));   // zim_main.vhd(451[3] 526[10])
    defparam i12226_2_lut.LUT_INIT = 16'h2222;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged8 (.RDATA({buf_data_vac[15:12]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 i12723_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9273), .I3(n12381), .O(n15125));   // zim_main.vhd(531[3] 819[10])
    defparam i12723_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[27:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_726), 
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
    SB_LUT4 i12_4_lut_adj_95 (.I0(cmd_rdadctmp_adj_1669[6]), .I1(cmd_rdadctmp_adj_1669[5]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19761));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 add_68_7_lut (.I0(VAC_MOSI), .I1(data_cntvec[5]), .I2(VAC_MOSI), 
            .I3(n19300), .O(n344)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_15 (.CI(n19323), .I0(acadc_skipcnt[13]), .I1(VAC_MOSI), 
            .CO(n19324));
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_8 (.CI(n19445), .I0(VAC_MOSI), .I1(n10), 
            .CO(n19446));
    SB_LUT4 i19_4_lut (.I0(trig_dds1), .I1(n20626), .I2(comm_state[3]), 
            .I3(n9273), .O(n19683));
    defparam i19_4_lut.LUT_INIT = 16'h0ab0;
    SB_LUT4 i12718_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9273), 
            .I3(n12367), .O(n15120));   // zim_main.vhd(531[3] 819[10])
    defparam i12718_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_state_3__I_0_354_Mux_9_i15_4_lut (.I0(n7_adj_1531), .I1(n8_adj_1532), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[9]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_9_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_96 (.I0(cmd_rdadctmp_adj_1629[6]), .I1(cmd_rdadctmp_adj_1629[5]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20287));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_97 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20239));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_98 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20237));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_14_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[12]), .I2(VAC_MOSI), 
            .I3(n19322), .O(n388)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_6 (.CI(n19290), .I0(data_count[4]), .I1(VAC_MOSI), 
            .CO(n19291));
    SB_LUT4 i12_4_lut_adj_99 (.I0(cmd_rdadctmp_adj_1629[7]), .I1(cmd_rdadctmp_adj_1629[6]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20289));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'hca0a;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[5]), .I3(n19444), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_100 (.I0(cmd_rdadctmp_adj_1669[5]), .I1(cmd_rdadctmp_adj_1669[4]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19759));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'h0aca;
    SB_CARRY add_73_14 (.CI(n19322), .I0(acadc_skipcnt[12]), .I1(VAC_MOSI), 
            .CO(n19323));
    SB_LUT4 i12717_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9273), 
            .I3(n12367), .O(n15119));   // zim_main.vhd(531[3] 819[10])
    defparam i12717_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i6362_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1534));   // zim_main.vhd(533[4] 818[13])
    defparam i6362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12716_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9273), 
            .I3(n12367), .O(n15118));   // zim_main.vhd(531[3] 819[10])
    defparam i12716_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_state_3__I_0_354_Mux_8_i15_4_lut (.I0(n7_adj_1533), .I1(n8_adj_1534), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[8]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut_adj_101 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(n20622), .O(n20624));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_4_lut_adj_101.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20235));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_127_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1481));   // zim_main.vhd(586[5] 691[14])
    defparam mux_127_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 i3879_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(ICE_SPI_CE0), 
            .I3(VAC_MOSI), .O(comm_index_2__N_439[0]));   // zim_main.vhd(715[5] 725[12])
    defparam i3879_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i6372_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1536));   // zim_main.vhd(533[4] 818[13])
    defparam i6372_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_13_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[11]), .I2(VAC_MOSI), 
            .I3(n19321), .O(n389)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_354_Mux_7_i15_4_lut (.I0(n7_adj_1535), .I1(n8_adj_1536), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[7]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp_adj_1669[4]), .I1(cmd_rdadctmp_adj_1669[3]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19757));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_104 (.I0(adc_state_adj_1628[1]), .I1(DTRIG_N_910_adj_1444), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20573));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_104.LUT_INIT = 16'h2222;
    SB_LUT4 i6382_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1538));   // zim_main.vhd(533[4] 818[13])
    defparam i6382_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_6_i15_4_lut (.I0(n7_adj_1537), .I1(n8_adj_1538), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[6]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14955_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n17338));
    defparam i14955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14957_4_lut (.I0(n17336), .I1(n17338), .I2(comm_state[3]), 
            .I3(n9273), .O(data_index_9__N_212[5]));   // zim_main.vhd(243[9:19])
    defparam i14957_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6402_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1541));   // zim_main.vhd(533[4] 818[13])
    defparam i6402_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp_adj_1629[23]), .I1(cmd_rdadctmp_adj_1629[22]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20113));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_354_Mux_4_i15_4_lut (.I0(n7_adj_1540), .I1(n8_adj_1541), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[4]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6412_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1543));   // zim_main.vhd(533[4] 818[13])
    defparam i6412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_3_i15_4_lut (.I0(n7_adj_1542), .I1(n8_adj_1543), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[3]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20233));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i12710_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9273), .I3(n12353), .O(n15112));   // zim_main.vhd(531[3] 819[10])
    defparam i12710_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19355 (.I0(comm_cmd[1]), .I1(n26_adj_1519), 
            .I2(n20950), .I3(comm_cmd[2]), .O(n21955));
    defparam comm_cmd_1__bdd_4_lut_19355.LUT_INIT = 16'he4aa;
    SB_LUT4 i6422_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1545));   // zim_main.vhd(533[4] 818[13])
    defparam i6422_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_2_i15_4_lut (.I0(n7_adj_1544), .I1(n8_adj_1545), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[2]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12709_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9273), .I3(n12353), .O(n15111));   // zim_main.vhd(531[3] 819[10])
    defparam i12709_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_107 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20231));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20229));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20227));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_110 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20225));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'hca0a;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14_adj_1497), 
            .D(comm_state_3__N_9[1]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_111 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20223));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'hca0a;
    SB_LUT4 i12708_3_lut_4_lut (.I0(buf_dds0[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9273), .I3(n12353), .O(n15110));   // zim_main.vhd(531[3] 819[10])
    defparam i12708_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12707_3_lut_4_lut (.I0(buf_dds0[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9273), .I3(n12353), .O(n15109));   // zim_main.vhd(531[3] 819[10])
    defparam i12707_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_73_13 (.CI(n19321), .I0(acadc_skipcnt[11]), .I1(VAC_MOSI), 
            .CO(n19322));
    SB_LUT4 add_73_12_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[10]), .I2(VAC_MOSI), 
            .I3(n19320), .O(n390)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_7 (.CI(n19444), .I0(VAC_MOSI), .I1(dds0_mclkcnt[5]), 
            .CO(n19445));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[4]), .I3(n19443), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_6 (.CI(n19443), .I0(VAC_MOSI), .I1(dds0_mclkcnt[4]), 
            .CO(n19444));
    SB_CARRY add_68_7 (.CI(n19300), .I0(data_cntvec[5]), .I1(VAC_MOSI), 
            .CO(n19301));
    SB_LUT4 add_68_6_lut (.I0(VAC_MOSI), .I1(data_cntvec[4]), .I2(VAC_MOSI), 
            .I3(n19299), .O(n345)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n20534), 
            .D(comm_state_3__N_9[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_212[1]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_112 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20221));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 i6432_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n8_adj_1547));   // zim_main.vhd(533[4] 818[13])
    defparam i6432_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20219));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_212[2]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_212[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_212[4]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_212[5]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_212[6]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_212[7]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_212[8]));   // zim_main.vhd(531[3] 819[10])
    SB_DFF data_index_i9 (.Q(data_index[9]), .C(clk_32MHz), .D(data_index_9__N_212[9]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12254), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_2_lut_4_lut_adj_114 (.I0(wdtick_flag), .I1(wdtick_cnt[1]), 
            .I2(wdtick_cnt[2]), .I3(wdtick_cnt[0]), .O(wdtick_flag_N_293));   // zim_main.vhd(401[3] 412[10])
    defparam i1_2_lut_4_lut_adj_114.LUT_INIT = 16'haaba;
    SB_LUT4 i12706_3_lut_4_lut (.I0(buf_dds0[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9273), .I3(n12353), .O(n15108));   // zim_main.vhd(531[3] 819[10])
    defparam i12706_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_115 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20217));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'hca0a;
    SB_LUT4 i12705_3_lut_4_lut (.I0(buf_dds0[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9273), .I3(n12353), .O(n15107));   // zim_main.vhd(531[3] 819[10])
    defparam i12705_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_state_3__I_0_354_Mux_1_i15_4_lut (.I0(n7_adj_1546), .I1(n8_adj_1547), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[1]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_116 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20215));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i12704_3_lut_4_lut (.I0(buf_dds0[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9273), .I3(n12353), .O(n15106));   // zim_main.vhd(531[3] 819[10])
    defparam i12704_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i14930_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8780), 
            .I3(VAC_MOSI), .O(n17314));
    defparam i14930_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_0_i15_4_lut (.I0(n7_adj_1515), .I1(n17314), 
            .I2(comm_state[3]), .I3(n9273), .O(data_index_9__N_212[0]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_354_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6956_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9273));   // zim_main.vhd(533[4] 818[13])
    defparam i6956_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_117 (.I0(cmd_rdadctmp_adj_1629[8]), .I1(cmd_rdadctmp_adj_1629[7]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20293));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_118 (.I0(DTRIG_N_910_adj_1444), .I1(adc_state_adj_1628[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20540));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_118.LUT_INIT = 16'h2222;
    SB_LUT4 i12703_3_lut_4_lut (.I0(buf_dds0[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9273), .I3(n12353), .O(n15105));   // zim_main.vhd(531[3] 819[10])
    defparam i12703_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_119 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19707));
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_120 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20627));
    defparam i1_2_lut_adj_120.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12702_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9273), .I3(n12353), .O(n15104));   // zim_main.vhd(531[3] 819[10])
    defparam i12702_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_121 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19705));
    defparam i12_4_lut_adj_121.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_122 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19999));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_123 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19997));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'h0aca;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[3]), .I3(n19442), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15033_2_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17415));   // zim_main.vhd(533[4] 818[13])
    defparam i15033_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12701_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9273), .I3(n12353), .O(n15103));   // zim_main.vhd(531[3] 819[10])
    defparam i12701_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12697_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9273), 
            .I3(n11901), .O(n15099));   // zim_main.vhd(531[3] 819[10])
    defparam i12697_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12696_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9273), 
            .I3(n11901), .O(n15098));   // zim_main.vhd(531[3] 819[10])
    defparam i12696_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12695_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9273), 
            .I3(n11901), .O(n15097));   // zim_main.vhd(531[3] 819[10])
    defparam i12695_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SPI_SLAVE comm_spi (.GND_net(VAC_MOSI), .comm_data_vld(comm_data_vld), 
            .clk_32MHz(clk_32MHz), .comm_clear(comm_clear), .ICE_SPI_SCLK(ICE_SPI_SCLK), 
            .comm_tx_buf({comm_tx_buf}), .comm_rx_buf({comm_rx_buf}), .VCC_net(VCC_net), 
            .ICE_SPI_MOSI(ICE_SPI_MOSI), .ICE_SPI_MISO(ICE_SPI_MISO));   // zim_main.vhd(832[13:22])
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp_adj_1669[3]), .I1(cmd_rdadctmp_adj_1669[2]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19755));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19649));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_126 (.I0(n16_adj_1609), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(VAC_MOSI), .O(n4_adj_1473));
    defparam i1_2_lut_3_lut_adj_126.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_127 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19731));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_128 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19729));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_129 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19727));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_130 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19995));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_131 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19725));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19993));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd_rdadctmp_adj_1629[9]), .I1(cmd_rdadctmp_adj_1629[8]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20295));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_134 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19991));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_135 (.I0(comm_cmd[7]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[7]), .O(n19851));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_136 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n11700), .I3(adc_state_adj_1674[2]), .O(n19989));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_137 (.I0(comm_cmd[6]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[6]), .O(n19849));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1629[10]), .I1(cmd_rdadctmp_adj_1629[9]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20297));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_6 (.CI(n19299), .I0(data_cntvec[4]), .I1(VAC_MOSI), 
            .CO(n19300));
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_5 (.CI(n19442), .I0(VAC_MOSI), .I1(dds0_mclkcnt[3]), 
            .CO(n19443));
    SB_LUT4 n21955_bdd_4_lut (.I0(n21955), .I1(n21024), .I2(n23_adj_1518), 
            .I3(comm_cmd[2]), .O(n21958));
    defparam n21955_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_12 (.CI(n19320), .I0(acadc_skipcnt[10]), .I1(VAC_MOSI), 
            .CO(n19321));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[2]), .I3(n19441), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_139 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19987));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'h0aca;
    SB_LUT4 i19042_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21081));
    defparam i19042_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19350 (.I0(comm_cmd[1]), .I1(n26_adj_1623), 
            .I2(n20949), .I3(comm_cmd[2]), .O(n21949));
    defparam comm_cmd_1__bdd_4_lut_19350.LUT_INIT = 16'he4aa;
    SB_LUT4 n21949_bdd_4_lut (.I0(n21949), .I1(req_data_cnt[7]), .I2(acadc_skipCount[7]), 
            .I3(comm_cmd[2]), .O(n21952));
    defparam n21949_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19360 (.I0(comm_cmd[2]), .I1(n20775), 
            .I2(n20781), .I3(comm_cmd[3]), .O(n21943));
    defparam comm_cmd_2__bdd_4_lut_19360.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_137_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1566));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19985));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'h0aca;
    SB_LUT4 i12690_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12690_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i12_4_lut_adj_141 (.I0(comm_cmd[5]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[5]), .O(n19847));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n14490), .I2(n11882), .I3(comm_rx_buf[4]), 
            .O(n19845));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_142 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19983));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'h0aca;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_4 (.CI(n19441), .I0(VAC_MOSI), .I1(dds0_mclkcnt[2]), 
            .CO(n19442));
    SB_LUT4 i12_4_lut_adj_143 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19981));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_144 (.I0(comm_cmd[3]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[3]), .O(n19843));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[1]), .I3(n19440), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_3 (.CI(n19440), .I0(VAC_MOSI), .I1(dds0_mclkcnt[1]), 
            .CO(n19441));
    SB_LUT4 i11_4_lut_adj_145 (.I0(comm_cmd[2]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[2]), .O(n19841));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_11_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[9]), .I2(VAC_MOSI), 
            .I3(n19319), .O(n391)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_146 (.I0(n20510), .I1(n3), .I2(n11824), .I3(n4), 
            .O(n20534));
    defparam i1_4_lut_adj_146.LUT_INIT = 16'ha080;
    SB_LUT4 i18743_2_lut (.I0(comm_state_3__N_412[3]), .I1(comm_state[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21162));   // zim_main.vhd(533[4] 818[13])
    defparam i18743_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i7_4_lut (.I0(n17656), .I1(n20641), 
            .I2(comm_state[2]), .I3(n14514), .O(n17658));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_3_i7_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i15_4_lut (.I0(n17658), .I1(n21162), 
            .I2(comm_state[3]), .I3(n9273), .O(comm_state_3__N_9[3]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i11_4_lut_adj_147 (.I0(comm_cmd[1]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[1]), .O(n19839));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_148 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19979));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_149 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19977));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'h0aca;
    SB_LUT4 i6817_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9222));   // zim_main.vhd(533[4] 818[13])
    defparam i6817_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_150 (.I0(comm_state[0]), .I1(comm_state_3__N_428[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n10508));   // zim_main.vhd(750[5] 805[14])
    defparam i1_2_lut_adj_150.LUT_INIT = 16'h4444;
    SB_LUT4 n21943_bdd_4_lut (.I0(n21943), .I1(n20772), .I2(n20769), .I3(comm_cmd[3]), 
            .O(n21946));
    defparam n21943_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_151 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19975));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_152 (.I0(n12220), .I1(n11839), .I2(n9222), .I3(n12205), 
            .O(n11846));
    defparam i1_4_lut_adj_152.LUT_INIT = 16'h8880;
    SB_LUT4 i12_4_lut_adj_153 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n19973));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'h0aca;
    SB_LUT4 i18851_2_lut (.I0(comm_state[2]), .I1(comm_cmd[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21050));   // zim_main.vhd(531[3] 819[10])
    defparam i18851_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18824_4_lut (.I0(n21050), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_state[3]), .O(n21049));   // zim_main.vhd(531[3] 819[10])
    defparam i18824_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i12_4_lut_adj_154 (.I0(comm_length[2]), .I1(n21049), .I2(n11846), 
            .I3(comm_cmd[0]), .O(n19723));   // zim_main.vhd(531[3] 819[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 i19145_2_lut_3_lut (.I0(eis_end_N_716), .I1(acadc_rst), .I2(eis_state[1]), 
            .I3(VAC_MOSI), .O(n20757));
    defparam i19145_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i12_4_lut_adj_155 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19971));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_156 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19967));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp_adj_1629[11]), .I1(cmd_rdadctmp_adj_1629[10]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20299));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1482));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19963));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_4_lut_adj_159 (.I0(adc_state_adj_1628[0]), .I1(VAC_SCLK), 
            .I2(DTRIG_N_910_adj_1444), .I3(adc_state_adj_1628[1]), .O(n20095));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_159.LUT_INIT = 16'hc4d8;
    SB_LUT4 i13321_4_lut (.I0(n16708), .I1(buf_dds1[15]), .I2(\comm_buf[0] [7]), 
            .I3(n11805), .O(n15723));   // zim_main.vhd(531[3] 819[10])
    defparam i13321_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19345 (.I0(comm_cmd[1]), .I1(n19_adj_1482), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n21937));
    defparam comm_cmd_1__bdd_4_lut_19345.LUT_INIT = 16'he4aa;
    SB_LUT4 i13324_4_lut (.I0(n16708), .I1(buf_dds1[14]), .I2(\comm_buf[0] [6]), 
            .I3(n11805), .O(n15726));   // zim_main.vhd(531[3] 819[10])
    defparam i13324_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 n21937_bdd_4_lut (.I0(n21937), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1488), 
            .I3(comm_cmd[2]), .O(n21940));
    defparam n21937_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_adj_160 (.I0(adc_state[0]), .I1(IAC_SCLK), .I2(DTRIG_N_910), 
            .I3(adc_state[1]), .O(n20091));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_160.LUT_INIT = 16'hc4d8;
    SB_LUT4 i12_4_lut_adj_161 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19959));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'hca0a;
    SB_LUT4 i227_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n1252));   // zim_main.vhd(811[8:49])
    defparam i227_2_lut.LUT_INIT = 16'h4444;
    SB_CARRY add_73_11 (.CI(n19319), .I0(acadc_skipcnt[9]), .I1(VAC_MOSI), 
            .CO(n19320));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19388 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[2]), 
            .I2(buf_readRTD[10]), .I3(comm_cmd[1]), .O(n21931));
    defparam comm_cmd_0__bdd_4_lut_19388.LUT_INIT = 16'he4aa;
    SB_LUT4 i13329_4_lut (.I0(n16708), .I1(buf_dds1[12]), .I2(\comm_buf[0] [4]), 
            .I3(n11805), .O(n15731));   // zim_main.vhd(531[3] 819[10])
    defparam i13329_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_162 (.I0(comm_cmd[2]), .I1(comm_state_3__N_428[2]), 
            .I2(n30), .I3(comm_cmd[1]), .O(comm_state_3__N_412[3]));   // zim_main.vhd(750[5] 805[14])
    defparam i1_4_lut_adj_162.LUT_INIT = 16'hc0c4;
    SB_LUT4 i1_3_lut_4_lut (.I0(eis_end_N_716), .I1(acadc_rst), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(n13443));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h1101;
    SB_LUT4 i13332_4_lut (.I0(n16708), .I1(buf_dds1[11]), .I2(\comm_buf[0] [3]), 
            .I3(n11805), .O(n15734));   // zim_main.vhd(531[3] 819[10])
    defparam i13332_4_lut.LUT_INIT = 16'ha088;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(dds0_mclkcnt[0]), .CO(n19440));
    SB_LUT4 i13335_4_lut (.I0(n16708), .I1(buf_dds1[10]), .I2(\comm_buf[0] [2]), 
            .I3(n11805), .O(n15737));   // zim_main.vhd(531[3] 819[10])
    defparam i13335_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13338_4_lut (.I0(n16708), .I1(buf_dds1[9]), .I2(\comm_buf[0] [1]), 
            .I3(n11805), .O(n15740));   // zim_main.vhd(531[3] 819[10])
    defparam i13338_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13341_4_lut (.I0(n16708), .I1(buf_dds1[8]), .I2(\comm_buf[0] [0]), 
            .I3(n11805), .O(n15743));   // zim_main.vhd(531[3] 819[10])
    defparam i13341_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13344_4_lut (.I0(n16708), .I1(buf_dds1[7]), .I2(\comm_buf[1] [7]), 
            .I3(n11805), .O(n15746));   // zim_main.vhd(531[3] 819[10])
    defparam i13344_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i15273_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17656));
    defparam i15273_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13347_4_lut (.I0(n16708), .I1(buf_dds1[6]), .I2(\comm_buf[1] [6]), 
            .I3(n11805), .O(n15749));   // zim_main.vhd(531[3] 819[10])
    defparam i13347_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_163 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19955));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1629[12]), .I1(cmd_rdadctmp_adj_1629[11]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20301));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_165 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19951));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_166 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19947));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'hca0a;
    SB_LUT4 n21931_bdd_4_lut (.I0(n21931), .I1(buf_adcdata_vdc[18]), .I2(buf_adcdata_vac[18]), 
            .I3(comm_cmd[1]), .O(n21934));
    defparam n21931_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13353_4_lut (.I0(n16708), .I1(buf_dds1[4]), .I2(\comm_buf[1] [4]), 
            .I3(n11805), .O(n15755));   // zim_main.vhd(531[3] 819[10])
    defparam i13353_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_167 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19943));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_LUT4 i18139_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(VAC_MOSI), .O(n20734));
    defparam i18139_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_168 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19939));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_169 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19935));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_170 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19931));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_171 (.I0(n16708), .I1(buf_dds1[2]), .I2(\comm_buf[1] [2]), 
            .I3(n11805), .O(n15760));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_171.LUT_INIT = 16'ha088;
    SB_LUT4 i458_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n2342));   // zim_main.vhd(562[5] 569[12])
    defparam i458_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_172 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19927));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_DFFN dds0_mclkcnt_i7_3772__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(442[4] 445[11])
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
    SB_DFFSR clk_cnt_3761_3762__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14), 
            .R(n17393));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i2 (.Q(wdtick_cnt[1]), .C(TEST_LED), 
            .E(n11727), .D(n20359), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i3 (.Q(wdtick_cnt[2]), .C(TEST_LED), 
            .E(n11727), .D(n23), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i1_4_lut_adj_173 (.I0(n16708), .I1(buf_dds1[1]), .I2(\comm_buf[1] [1]), 
            .I3(n11805), .O(n16_adj_1584));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_173.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_174 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19923));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'hca0a;
    SB_LUT4 i18095_4_lut (.I0(acadc_rst), .I1(eis_state[0]), .I2(eis_end_N_716), 
            .I3(eis_state[1]), .O(n20690));
    defparam i18095_4_lut.LUT_INIT = 16'heefa;
    SB_LUT4 i1_2_lut_4_lut_adj_175 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(n20622), .O(n20626));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_4_lut_adj_175.LUT_INIT = 16'hffef;
    SB_LUT4 i12_4_lut_adj_176 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13279), 
            .I3(n1_adj_1575), .O(n19919));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_177 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11700), 
            .I3(adc_state_adj_1674[2]), .O(n20043));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_128_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1513));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_178 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13279), 
            .I3(n1_adj_1575), .O(n20041));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1507));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18241_3_lut (.I0(n16_adj_1507), .I1(buf_adcdata_iac[9]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n20836));
    defparam i18241_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18804_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21022));
    defparam i18804_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_129_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1508));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18242_3_lut (.I0(n19_adj_1508), .I1(buf_readRTD[1]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n20837));
    defparam i18242_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19013_4_lut (.I0(ICE_SPI_CE0), .I1(comm_state[1]), .I2(n2342), 
            .I3(comm_state[2]), .O(n21088));
    defparam i19013_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 mux_129_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1509));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18784_2_lut (.I0(buf_data_vac[43]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20937));
    defparam i18784_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18230_4_lut (.I0(n26_adj_1509), .I1(buf_data_vac[19]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20825));
    defparam i18230_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19124_4_lut (.I0(comm_state[3]), .I1(n21087), .I2(n21088), 
            .I3(comm_state[0]), .O(n14_adj_1497));
    defparam i19124_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i19057_2_lut (.I0(data_idxvec[13]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20936));
    defparam i19057_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_179 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19913));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 i18229_3_lut (.I0(acadc_skipCount[1]), .I1(req_data_cnt[1]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n20824));
    defparam i18229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(VAC_CLK));   // zim_main.vhd(336[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_180 (.I0(cmd_rdadctmp_adj_1629[13]), .I1(cmd_rdadctmp_adj_1629[12]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20303));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i13374_4_lut (.I0(n18586), .I1(cfg_buf[0]), .I2(buf_cfgRTD[0]), 
            .I3(n13162), .O(n15776));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13374_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12916_4_lut (.I0(n18586), .I1(cfg_buf[1]), .I2(buf_cfgRTD[1]), 
            .I3(n13162), .O(n15318));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12916_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_3_lut_adj_181 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(VAC_MOSI), .O(n18824));   // zim_main.vhd(562[5] 569[12])
    defparam i1_2_lut_3_lut_adj_181.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i15_4_lut (.I0(n21916), .I1(n8_adj_1555), 
            .I2(comm_state[3]), .I3(n9273), .O(comm_state_3__N_9[1]));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_342_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_3_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[0]), 
            .I3(VAC_MOSI), .O(n23));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_4_lut_3_lut.LUT_INIT = 16'h6868;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19331 (.I0(comm_cmd[0]), .I1(req_data_cnt[10]), 
            .I2(acadc_rst), .I3(comm_cmd[1]), .O(n21919));
    defparam comm_cmd_0__bdd_4_lut_19331.LUT_INIT = 16'he4aa;
    SB_LUT4 i18699_2_lut (.I0(n20602), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20931));
    defparam i18699_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 n21919_bdd_4_lut (.I0(n21919), .I1(acadc_skipCount[10]), .I2(SELIRNG0), 
            .I3(comm_cmd[1]), .O(n21922));
    defparam n21919_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_68_5_lut (.I0(VAC_MOSI), .I1(data_cntvec[3]), .I2(VAC_MOSI), 
            .I3(n19298), .O(n346)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_182 (.I0(adress[1]), .I1(adress[0]), .I2(n13151), 
            .I3(n14465), .O(n19637));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1669[2]), .I1(cmd_rdadctmp_adj_1669[1]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19753));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_184 (.I0(adress[5]), .I1(adress[4]), .I2(n13151), 
            .I3(n14465), .O(n19645));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_185 (.I0(adress[4]), .I1(adress[3]), .I2(n13151), 
            .I3(n14465), .O(n19643));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n20931), .I2(n14514), 
            .I3(comm_state[2]), .O(n21913));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_186 (.I0(adress[6]), .I1(adress[5]), .I2(n13151), 
            .I3(n14465), .O(n19647));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_187 (.I0(adress[3]), .I1(adress[2]), .I2(n13151), 
            .I3(n14465), .O(n19641));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_5 (.CI(n19298), .I0(data_cntvec[3]), .I1(VAC_MOSI), 
            .CO(n19299));
    SB_LUT4 n21913_bdd_4_lut (.I0(n21913), .I1(n2), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n21916));
    defparam n21913_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12711_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9273), .I3(n12353), .O(n15113));   // zim_main.vhd(531[3] 819[10])
    defparam i12711_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19336 (.I0(comm_cmd[1]), .I1(n20936), 
            .I2(n20937), .I3(comm_cmd[2]), .O(n21907));
    defparam comm_cmd_1__bdd_4_lut_19336.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_129_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21907_bdd_4_lut (.I0(n21907), .I1(n21022), .I2(n23_adj_1513), 
            .I3(comm_cmd[2]), .O(n21910));
    defparam n21907_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_188 (.I0(adress[2]), .I1(adress[1]), .I2(n13151), 
            .I3(n14465), .O(n19639));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_189 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n20037));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(cmd_rdadctmp_adj_1669[1]), .I1(cmd_rdadctmp_adj_1669[0]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19751));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1504));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18250_3_lut (.I0(n16_adj_1504), .I1(buf_adcdata_iac[10]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n20845));
    defparam i18250_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19055_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20950));
    defparam i19055_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15034_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(comm_clear_N_700));   // zim_main.vhd(533[4] 818[13])
    defparam i15034_2_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_LUT4 mux_129_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1505));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 acadc_rst_I_0_1_lut (.I0(acadc_rst), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(AC_ADC_SYNC));   // zim_main.vhd(351[18:31])
    defparam acadc_rst_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1669[0]), .I1(VDC_SDO), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19831));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_192 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19915));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_193 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19911));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_128_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1519));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_194 (.I0(cmd_rdadctmp_adj_1629[14]), .I1(cmd_rdadctmp_adj_1629[13]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20305));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_195 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19909));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_196 (.I0(dds_state_adj_1652[2]), .I1(dds_state_adj_1652[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20151));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_196.LUT_INIT = 16'h4444;
    SB_LUT4 add_73_10_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[8]), .I2(VAC_MOSI), 
            .I3(n19318), .O(n392)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13393_3_lut (.I0(n14869), .I1(bit_cnt_adj_1650[0]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15795));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13393_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 mux_129_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1506));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18221_4_lut (.I0(n26_adj_1506), .I1(buf_data_vac[21]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20816));
    defparam i18221_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18220_3_lut (.I0(acadc_skipCount[2]), .I1(req_data_cnt[2]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n20815));
    defparam i18220_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_197 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20149));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_197.LUT_INIT = 16'h4444;
    SB_LUT4 mux_137_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1561));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_198 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19907));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_137_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1562));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_4_lut (.I0(VAC_MOSI), .I1(data_cntvec[2]), .I2(VAC_MOSI), 
            .I3(n19297), .O(n347)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_199 (.I0(VAC_CS), .I1(adc_state_adj_1628[1]), .I2(DTRIG_N_910_adj_1444), 
            .I3(adc_state_adj_1628[0]), .O(n14_adj_1577));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_199.LUT_INIT = 16'h4554;
    SB_LUT4 mux_129_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1621));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1622));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15112_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20502), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10));   // zim_main.vhd(442[4] 445[11])
    defparam i15112_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18223_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n20818));
    defparam i18223_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1480));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_200 (.I0(cmd_rdadctmp_adj_1629[30]), .I1(cmd_rdadctmp_adj_1629[29]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20145));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19905));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'h0aca;
    SB_LUT4 i19130_4_lut (.I0(VAC_DRDY), .I1(n14_adj_1577), .I2(n20573), 
            .I3(adc_state_adj_1628[0]), .O(n11));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19130_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i12_4_lut_adj_202 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19903));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_203 (.I0(cmd_rdadctmp_adj_1629[29]), .I1(cmd_rdadctmp_adj_1629[28]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20127));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_204 (.I0(cmd_rdadctmp_adj_1629[0]), .I1(VAC_MISO), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20203));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_205 (.I0(cmd_rdadctmp_adj_1629[24]), .I1(cmd_rdadctmp_adj_1629[23]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20117));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'hca0a;
    SB_LUT4 i24_4_lut (.I0(eis_state[0]), .I1(iac_raw_buf_N_728), .I2(eis_end_N_716), 
            .I3(eis_state[1]), .O(n17_adj_1601));   // zim_main.vhd(290[9:18])
    defparam i24_4_lut.LUT_INIT = 16'h5aca;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1629[15]), .I1(cmd_rdadctmp_adj_1629[14]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20307));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_207 (.I0(IAC_CS), .I1(adc_state[1]), .I2(DTRIG_N_910), 
            .I3(adc_state[0]), .O(n14_adj_1581));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_207.LUT_INIT = 16'h4554;
    SB_LUT4 i12_4_lut_adj_208 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19901));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'h0aca;
    SB_LUT4 i19133_4_lut (.I0(IAC_DRDY), .I1(n14_adj_1581), .I2(n20553), 
            .I3(adc_state[0]), .O(n11_adj_1580));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19133_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i12_4_lut_adj_209 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19899));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_210 (.I0(n16547), .I1(n17_adj_1601), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(eis_state_2__N_167[1]));   // zim_main.vhd(290[9:18])
    defparam i1_4_lut_adj_210.LUT_INIT = 16'hccdc;
    SB_LUT4 i1_2_lut_adj_211 (.I0(eis_start), .I1(n31), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n16547));   // zim_main.vhd(531[3] 819[10])
    defparam i1_2_lut_adj_211.LUT_INIT = 16'hdddd;
    SB_LUT4 i18832_2_lut (.I0(eis_state[0]), .I1(n16_adj_1609), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21067));
    defparam i18832_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i34_3_lut (.I0(n16547), .I1(iac_raw_buf_N_728), .I2(eis_state[0]), 
            .I3(VAC_MOSI), .O(n13));
    defparam i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_212 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19897));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'h0aca;
    SB_LUT4 i33_4_lut (.I0(n13), .I1(n21067), .I2(eis_end_N_716), .I3(eis_state[1]), 
            .O(eis_state_2__N_167[2]));
    defparam i33_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i12_4_lut_adj_213 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19895));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'h0aca;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15161));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_214 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19893));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'h0aca;
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15160));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15159));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15158));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15157));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15156));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15155));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15154));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15153));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15152));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15151));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15150));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15149));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15148));   // zim_main.vhd(531[3] 819[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15147));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_215 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12542), 
            .I3(adc_state[0]), .O(n20195));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15146));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15145));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15144));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19891));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'h0aca;
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15143));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15142));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15141));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15140));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15139));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15138));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15137));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15136));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15135));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15134));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15133));   // zim_main.vhd(531[3] 819[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15132));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15131));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15130));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15129));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15128));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15127));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15126));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15125));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15124));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15123));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15122));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15121));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15120));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15119));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15118));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15117));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15116));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15115));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15114));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15113));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15112));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15111));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15110));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15109));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15108));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15107));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15106));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15105));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15104));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15103));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i9327_1_lut (.I0(wdtick_flag), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11727));   // zim_main.vhd(401[3] 412[10])
    defparam i9327_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_2_lut_3_lut_adj_217 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[1] [0]), .I3(VAC_MOSI), .O(n14_adj_1516));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut_adj_217.LUT_INIT = 16'h1010;
    SB_LUT4 i12_4_lut_adj_218 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19889));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_61_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n14_adj_1498));   // zim_main.vhd(476[10:41])
    defparam equal_61_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_219 (.I0(cmd_rdadctmp_adj_1629[16]), .I1(cmd_rdadctmp_adj_1629[15]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20309));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n21922), .I2(n20796), 
            .I3(comm_cmd[3]), .O(n22213));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12681_3_lut (.I0(acadc_rst), .I1(\comm_buf[0] [2]), .I2(n10503), 
            .I3(VAC_MOSI), .O(n15083));   // zim_main.vhd(531[3] 819[10])
    defparam i12681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22213_bdd_4_lut (.I0(n22213), .I1(n21934), .I2(n22150), .I3(comm_cmd[3]), 
            .O(n22216));
    defparam n22213_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18895_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21051));
    defparam i18895_2_lut.LUT_INIT = 16'h2222;
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15102));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15101));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i2_2_lut_3_lut_adj_220 (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(n11347));
    defparam i2_2_lut_3_lut_adj_220.LUT_INIT = 16'hfdfd;
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30));   // zim_main.vhd(750[5] 805[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15100));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15099));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15098));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[4]), 
            .I2(buf_readRTD[12]), .I3(comm_cmd[1]), .O(n22207));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_221 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28));   // zim_main.vhd(419[7:31])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_222 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1625));   // zim_main.vhd(419[7:31])
    defparam i10_4_lut_adj_222.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_223 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27));   // zim_main.vhd(419[7:31])
    defparam i11_4_lut_adj_223.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_137_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1563));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15097));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25_adj_1616));   // zim_main.vhd(419[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i5_4_lut_adj_224 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1583));   // zim_main.vhd(442[7:27])
    defparam i5_4_lut_adj_224.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_adj_225 (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10_adj_1582));   // zim_main.vhd(419[7:31])
    defparam i2_2_lut_adj_225.LUT_INIT = 16'h8888;
    SB_LUT4 i6_4_lut_adj_226 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14_adj_1578));   // zim_main.vhd(419[7:31])
    defparam i6_4_lut_adj_226.LUT_INIT = 16'h8000;
    SB_LUT4 i15_4_lut_adj_227 (.I0(n25_adj_1616), .I1(n27), .I2(n26_adj_1625), 
            .I3(n28), .O(n19553));   // zim_main.vhd(419[7:31])
    defparam i15_4_lut_adj_227.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_228 (.I0(n19553), .I1(n14_adj_1578), .I2(n10_adj_1582), 
            .I3(secclk_cnt[20]), .O(n14700));   // zim_main.vhd(419[7:31])
    defparam i7_4_lut_adj_228.LUT_INIT = 16'h4000;
    SB_LUT4 i1_3_lut_4_lut_adj_229 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n10508), .O(n11839));
    defparam i1_3_lut_4_lut_adj_229.LUT_INIT = 16'hdfcf;
    SB_LUT4 i15_2_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20359));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12682_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10503), 
            .I3(VAC_MOSI), .O(n15084));   // zim_main.vhd(531[3] 819[10])
    defparam i12682_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_230 (.I0(cmd_rdadctmp_adj_1629[17]), .I1(cmd_rdadctmp_adj_1629[16]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20311));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_230.LUT_INIT = 16'hca0a;
    SB_DFFN eis_end_299 (.Q(eis_end), .C(clk_32MHz), .D(n15095));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i16829_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16829_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6_4_lut_adj_231 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1583), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20502));   // zim_main.vhd(442[7:27])
    defparam i6_4_lut_adj_231.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_adj_232 (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20502), 
            .I3(VAC_MOSI), .O(dds0_mclk_N_701));
    defparam i1_3_lut_adj_232.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_233 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19887));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'h0aca;
    SB_LUT4 n22207_bdd_4_lut (.I0(n22207), .I1(buf_adcdata_vdc[20]), .I2(buf_adcdata_vac[20]), 
            .I3(comm_cmd[1]), .O(n20801));
    defparam n22207_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_68_4 (.CI(n19297), .I0(data_cntvec[2]), .I1(VAC_MOSI), 
            .CO(n19298));
    SB_LUT4 i2_3_lut (.I0(comm_index[0]), .I1(comm_index[1]), .I2(n18824), 
            .I3(VAC_MOSI), .O(n20507));
    defparam i2_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i24_4_lut_adj_234 (.I0(n17357), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n11_adj_1620));
    defparam i24_4_lut_adj_234.LUT_INIT = 16'hfaca;
    SB_LUT4 i19112_3_lut (.I0(eis_end_N_716), .I1(eis_state[1]), .I2(n11_adj_1620), 
            .I3(VAC_MOSI), .O(n11730));
    defparam i19112_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i12_4_lut_adj_235 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19885));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_235.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_3_lut (.I0(comm_state[0]), .I1(comm_state[2]), .I2(n20507), 
            .I3(VAC_MOSI), .O(n8_adj_1522));   // zim_main.vhd(531[3] 819[10])
    defparam i3_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19556 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22201));
    defparam comm_cmd_0__bdd_4_lut_19556.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_2_lut_adj_236 (.I0(comm_state[1]), .I1(comm_index[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n7));   // zim_main.vhd(531[3] 819[10])
    defparam i2_2_lut_adj_236.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_237 (.I0(n12220), .I1(n7), .I2(comm_state[3]), 
            .I3(n8_adj_1522), .O(n12214));
    defparam i1_4_lut_adj_237.LUT_INIT = 16'ha8a0;
    SB_LUT4 i12_4_lut_adj_238 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19883));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'h0aca;
    SB_LUT4 n22201_bdd_4_lut (.I0(n22201), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n20805));
    defparam n22201_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_239 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12214), .I3(comm_state[3]), .O(n19657));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'h0aca;
    SB_LUT4 i12680_3_lut_4_lut (.I0(req_data_cnt[0]), .I1(n9273), .I2(\comm_buf[1] [0]), 
            .I3(n12415), .O(n15082));   // zim_main.vhd(531[3] 819[10])
    defparam i12680_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1502), 
            .I2(n21285), .I3(comm_cmd[2]), .O(n22195));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22195_bdd_4_lut (.I0(n22195), .I1(req_data_cnt[3]), .I2(acadc_skipCount[3]), 
            .I3(comm_cmd[2]), .O(n22198));
    defparam n22195_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_240 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19881));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_240.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_4_lut_adj_241 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(n20643), .I3(comm_state[0]), .O(n11824));
    defparam i1_4_lut_4_lut_adj_241.LUT_INIT = 16'hf4fe;
    SB_LUT4 i12_4_lut_adj_242 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19879));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_242.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut_adj_243 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(n4));
    defparam i1_2_lut_4_lut_adj_243.LUT_INIT = 16'hfdff;
    SB_LUT4 i12_4_lut_adj_244 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19871));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_244.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19551 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22189));
    defparam comm_cmd_0__bdd_4_lut_19551.LUT_INIT = 16'he4aa;
    SB_LUT4 n22189_bdd_4_lut (.I0(n22189), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n20769));
    defparam n22189_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19541 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22183));
    defparam comm_cmd_0__bdd_4_lut_19541.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_245 (.I0(n12220), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1588), .O(n11882));
    defparam i1_4_lut_adj_245.LUT_INIT = 16'h8a88;
    SB_LUT4 n22183_bdd_4_lut (.I0(n22183), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n20772));
    defparam n22183_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_246 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19869));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19546 (.I0(comm_cmd[1]), .I1(n26_adj_1486), 
            .I2(n21036), .I3(comm_cmd[2]), .O(n22177));
    defparam comm_cmd_1__bdd_4_lut_19546.LUT_INIT = 16'he4aa;
    SB_LUT4 i12100_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14490));   // zim_main.vhd(533[4] 818[13])
    defparam i12100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11_4_lut_adj_247 (.I0(comm_cmd[0]), .I1(n14490), .I2(n11882), 
            .I3(comm_rx_buf[0]), .O(n19829));   // zim_main.vhd(531[3] 819[10])
    defparam i11_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_LUT4 i12679_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(n9273), .I2(\comm_buf[1] [0]), 
            .I3(n12391), .O(n15081));   // zim_main.vhd(531[3] 819[10])
    defparam i12679_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12_4_lut_adj_248 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19867));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_248.LUT_INIT = 16'h0aca;
    SB_LUT4 n22177_bdd_4_lut (.I0(n22177), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22180));
    defparam n22177_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12678_3_lut_4_lut (.I0(buf_cfgRTD[0]), .I1(\comm_buf[0] [0]), 
            .I2(n9273), .I3(n12381), .O(n15080));   // zim_main.vhd(531[3] 819[10])
    defparam i12678_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_249 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11333));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_adj_249.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_250 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n13073), .I3(adc_state_adj_1668[2]), .O(n19865));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_250.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_251 (.I0(n20626), .I1(n20734), .I2(n12220), .I3(comm_state[3]), 
            .O(n11805));
    defparam i1_4_lut_adj_251.LUT_INIT = 16'hf531;
    SB_LUT4 mux_129_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1488));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_252 (.I0(cmd_rdadctmp_adj_1669[22]), .I1(cmd_rdadctmp_adj_1669[21]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19793));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_252.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19536 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(eis_start), .I3(comm_cmd[1]), .O(n22171));
    defparam comm_cmd_0__bdd_4_lut_19536.LUT_INIT = 16'he4aa;
    SB_LUT4 i12677_3_lut_4_lut (.I0(IAC_OSR0), .I1(\comm_buf[0] [0]), .I2(n9273), 
            .I3(n12367), .O(n15079));   // zim_main.vhd(531[3] 819[10])
    defparam i12677_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_253 (.I0(n16708), .I1(buf_dds1[0]), .I2(\comm_buf[1] [0]), 
            .I3(n11805), .O(n15817));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_253.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_4_lut_adj_254 (.I0(comm_state[1]), .I1(comm_index[1]), 
            .I2(n4_adj_1576), .I3(comm_length[1]), .O(n20641));
    defparam i1_2_lut_4_lut_adj_254.LUT_INIT = 16'hf7fd;
    SB_LUT4 i12_4_lut_adj_255 (.I0(cmd_rdadctmp_adj_1629[19]), .I1(cmd_rdadctmp_adj_1629[18]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20317));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_255.LUT_INIT = 16'hca0a;
    SB_LUT4 n22171_bdd_4_lut (.I0(n22171), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n20775));
    defparam n22171_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_10 (.CI(n19318), .I0(acadc_skipcnt[8]), .I1(VAC_MOSI), 
            .CO(n19319));
    SB_LUT4 comm_state_3__I_0_366_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_698));   // zim_main.vhd(533[4] 818[13])
    defparam comm_state_3__I_0_366_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_LUT4 i12_4_lut_adj_256 (.I0(cmd_rdadctmp_adj_1629[20]), .I1(cmd_rdadctmp_adj_1629[19]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20319));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_256.LUT_INIT = 16'hca0a;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(VAC_MOSI), .O(DDS_MCLK));   // zim_main.vhd(332[15:65])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1484));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_257 (.I0(cmd_rdadctmp_adj_1629[21]), .I1(cmd_rdadctmp_adj_1629[20]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20321));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_9_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[7]), .I2(VAC_MOSI), 
            .I3(n19317), .O(n393)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_9 (.CI(n19317), .I0(acadc_skipcnt[7]), .I1(VAC_MOSI), 
            .CO(n19318));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19526 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22165));
    defparam comm_cmd_0__bdd_4_lut_19526.LUT_INIT = 16'he4aa;
    SB_LUT4 add_73_8_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[6]), .I2(VAC_MOSI), 
            .I3(n19316), .O(n394)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22165_bdd_4_lut (.I0(n22165), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n20814));
    defparam n22165_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19531 (.I0(comm_cmd[1]), .I1(n26_adj_1484), 
            .I2(n21261), .I3(comm_cmd[2]), .O(n22159));
    defparam comm_cmd_1__bdd_4_lut_19531.LUT_INIT = 16'he4aa;
    SB_LUT4 n22159_bdd_4_lut (.I0(n22159), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22162));
    defparam n22159_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_4_lut_adj_258 (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n12220), .O(n11406));
    defparam i1_3_lut_4_lut_adj_258.LUT_INIT = 16'hcf8a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19521 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22153));
    defparam comm_cmd_0__bdd_4_lut_19521.LUT_INIT = 16'he4aa;
    SB_LUT4 n22153_bdd_4_lut (.I0(n22153), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n22156));
    defparam n22153_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19022_2_lut (.I0(bit_cnt_adj_1654[3]), .I1(bit_cnt_adj_1654[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21206));   // dds_ad9837.vhd(23[9:18])
    defparam i19022_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19511 (.I0(comm_cmd[0]), .I1(IAC_FLT0), 
            .I2(buf_adcdata_iac[18]), .I3(comm_cmd[1]), .O(n22147));
    defparam comm_cmd_0__bdd_4_lut_19511.LUT_INIT = 16'he4aa;
    SB_LUT4 n22147_bdd_4_lut (.I0(n22147), .I1(buf_dds1[10]), .I2(buf_dds0[10]), 
            .I3(comm_cmd[1]), .O(n22150));
    defparam n22147_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14322_4_lut (.I0(dds_state_adj_1652[0]), .I1(n21206), .I2(dds_state_adj_1652[1]), 
            .I3(n8_adj_1409), .O(dds_state_2__N_916_adj_1660[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i14322_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i12_4_lut_adj_259 (.I0(cmd_rdadctmp_adj_1629[22]), .I1(cmd_rdadctmp_adj_1629[21]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20191));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_137_Mux_7_i1_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19506 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[6]), 
            .I2(buf_readRTD[14]), .I3(comm_cmd[1]), .O(n22141));
    defparam comm_cmd_0__bdd_4_lut_19506.LUT_INIT = 16'he4aa;
    SB_LUT4 n22141_bdd_4_lut (.I0(n22141), .I1(buf_adcdata_vdc[22]), .I2(buf_adcdata_vac[22]), 
            .I3(comm_cmd[1]), .O(n20828));
    defparam n22141_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19501 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[7]), 
            .I2(buf_readRTD[15]), .I3(comm_cmd[1]), .O(n22135));
    defparam comm_cmd_0__bdd_4_lut_19501.LUT_INIT = 16'he4aa;
    SB_LUT4 n22135_bdd_4_lut (.I0(n22135), .I1(buf_adcdata_vdc[23]), .I2(buf_adcdata_vac[23]), 
            .I3(comm_cmd[1]), .O(n20831));
    defparam n22135_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_2__bdd_4_lut (.I0(comm_index[2]), .I1(\comm_buf[2] [0]), 
            .I2(\comm_buf[6] [0]), .I3(comm_index[1]), .O(n22129));
    defparam comm_index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22129_bdd_4_lut (.I0(n22129), .I1(\comm_buf[4] [0]), .I2(\comm_buf[0] [0]), 
            .I3(comm_index[1]), .O(n22132));
    defparam n22129_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_2__bdd_4_lut_19491 (.I0(comm_index[2]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[6] [5]), .I3(comm_index[1]), .O(n22123));
    defparam comm_index_2__bdd_4_lut_19491.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_137_Mux_7_i2_3_lut (.I0(\comm_buf[2] [7]), .I1(\comm_buf[3] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1559));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_7_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19043_2_lut (.I0(\comm_buf[6] [7]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21276));
    defparam i19043_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n22123_bdd_4_lut (.I0(n22123), .I1(\comm_buf[4] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n22126));
    defparam n22123_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF eis_start_329 (.Q(eis_start), .C(clk_32MHz), .D(n15085));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 mux_137_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1560));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19061_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21109));
    defparam i19061_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_129_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1495));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1489));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1487));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_260 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n12220));
    defparam i1_2_lut_3_lut_adj_260.LUT_INIT = 16'hfdfd;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19516 (.I0(comm_cmd[1]), .I1(n19_adj_1487), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22117));
    defparam comm_cmd_1__bdd_4_lut_19516.LUT_INIT = 16'he4aa;
    SB_LUT4 i3_4_lut_adj_261 (.I0(comm_state[0]), .I1(comm_state[3]), .I2(n8), 
            .I3(n11324), .O(n10503));
    defparam i3_4_lut_adj_261.LUT_INIT = 16'h0004;
    SB_LUT4 i12683_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n10503), 
            .I3(VAC_MOSI), .O(n15085));   // zim_main.vhd(531[3] 819[10])
    defparam i12683_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22117_bdd_4_lut (.I0(n22117), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1489), 
            .I3(comm_cmd[2]), .O(n22120));
    defparam n22117_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19020_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21261));
    defparam i19020_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12676_3_lut_4_lut (.I0(buf_dds0[0]), .I1(n9273), .I2(\comm_buf[1] [0]), 
            .I3(n12353), .O(n15078));   // zim_main.vhd(531[3] 819[10])
    defparam i12676_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12675_3_lut_4_lut (.I0(buf_control[0]), .I1(\comm_buf[0] [0]), 
            .I2(n9273), .I3(n11901), .O(n15077));   // zim_main.vhd(531[3] 819[10])
    defparam i12675_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19482 (.I0(comm_cmd[1]), .I1(n26_adj_1495), 
            .I2(n21109), .I3(comm_cmd[2]), .O(n22111));
    defparam comm_cmd_1__bdd_4_lut_19482.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_262 (.I0(adc_state[1]), .I1(acadc_dtrig_i), .I2(DTRIG_N_910), 
            .I3(adc_state[0]), .O(n20089));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_262.LUT_INIT = 16'hcce8;
    SB_LUT4 i18810_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21036));
    defparam i18810_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_129_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1486));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22111_bdd_4_lut (.I0(n22111), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22114));
    defparam n22111_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_263 (.I0(cmd_rdadctmp_adj_1669[21]), .I1(cmd_rdadctmp_adj_1669[20]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19791));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_263.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1560), 
            .I2(n21276), .I3(comm_index[2]), .O(n22105));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_264 (.I0(cmd_rdadctmp_adj_1669[20]), .I1(cmd_rdadctmp_adj_1669[19]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19789));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_264.LUT_INIT = 16'h0aca;
    SB_LUT4 n22105_bdd_4_lut (.I0(n22105), .I1(n2_adj_1559), .I2(n1), 
            .I3(comm_index[2]), .O(n22108));
    defparam n22105_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_73_8 (.CI(n19316), .I0(acadc_skipcnt[6]), .I1(VAC_MOSI), 
            .CO(n19317));
    SB_LUT4 add_73_7_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[5]), .I2(VAC_MOSI), 
            .I3(n19315), .O(n395)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_3_lut (.I0(VAC_MOSI), .I1(data_cntvec[1]), .I2(VAC_MOSI), 
            .I3(n19296), .O(n348)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_265 (.I0(adc_state_adj_1628[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_910_adj_1444), .I3(adc_state_adj_1628[0]), .O(n20093));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_265.LUT_INIT = 16'hcce8;
    SB_CARRY add_68_3 (.CI(n19296), .I0(data_cntvec[1]), .I1(VAC_MOSI), 
            .CO(n19297));
    SB_LUT4 add_67_3_lut (.I0(VAC_MOSI), .I1(data_count[1]), .I2(VAC_MOSI), 
            .I3(n19287), .O(n330)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_2_lut (.I0(VAC_MOSI), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_728), 
            .I3(VAC_MOSI), .O(n349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_7 (.CI(n19315), .I0(acadc_skipcnt[5]), .I1(VAC_MOSI), 
            .CO(n19316));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19496 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[3]), 
            .I2(buf_readRTD[11]), .I3(comm_cmd[1]), .O(n22099));
    defparam comm_cmd_0__bdd_4_lut_19496.LUT_INIT = 16'he4aa;
    SB_LUT4 n22099_bdd_4_lut (.I0(n22099), .I1(buf_adcdata_vdc[19]), .I2(buf_adcdata_vac[19]), 
            .I3(comm_cmd[1]), .O(n22102));
    defparam n22099_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_68_2 (.CI(VAC_MOSI), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_728), 
            .CO(n19296));
    SB_LUT4 add_67_11_lut (.I0(VAC_MOSI), .I1(data_count[9]), .I2(VAC_MOSI), 
            .I3(n19295), .O(n322)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_6_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[4]), .I2(VAC_MOSI), 
            .I3(n19314), .O(n396)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_6 (.CI(n19314), .I0(acadc_skipcnt[4]), .I1(VAC_MOSI), 
            .CO(n19315));
    SB_LUT4 add_67_10_lut (.I0(VAC_MOSI), .I1(data_count[8]), .I2(VAC_MOSI), 
            .I3(n19294), .O(n323)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18806_2_lut (.I0(buf_data_vac[23]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21285));
    defparam i18806_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_73_5_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[3]), .I2(VAC_MOSI), 
            .I3(n19313), .O(n397)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_129_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1502));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_67_10 (.CI(n19294), .I0(data_count[8]), .I1(VAC_MOSI), 
            .CO(n19295));
    SB_CARRY add_73_5 (.CI(n19313), .I0(acadc_skipcnt[3]), .I1(VAC_MOSI), 
            .CO(n19314));
    SB_LUT4 add_73_4_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[2]), .I2(VAC_MOSI), 
            .I3(n19312), .O(n398)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_4 (.CI(n19312), .I0(acadc_skipcnt[2]), .I1(VAC_MOSI), 
            .CO(n19313));
    SB_LUT4 add_126_17_lut (.I0(n14_adj_1523), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19349), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_126_16_lut (.I0(n14_adj_1548), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19348), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_73_3_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[1]), .I2(VAC_MOSI), 
            .I3(n19311), .O(n399)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_16 (.CI(n19348), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19349));
    SB_LUT4 i12_4_lut_adj_266 (.I0(cmd_rdadctmp_adj_1629[18]), .I1(cmd_rdadctmp_adj_1629[17]), 
            .I2(n12643), .I3(adc_state_adj_1628[0]), .O(n20315));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_LUT4 add_126_15_lut (.I0(n14_adj_1556), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19347), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_15_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15817));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19829));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_15 (.CI(n19347), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19348));
    SB_LUT4 add_126_14_lut (.I0(n14_adj_1549), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19346), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_14 (.CI(n19346), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19347));
    SB_CARRY add_73_3 (.CI(n19311), .I0(acadc_skipcnt[1]), .I1(VAC_MOSI), 
            .CO(n19312));
    SB_LUT4 add_126_13_lut (.I0(n14_adj_1550), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19345), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_13_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_13 (.CI(n19345), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19346));
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19657));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_67_3 (.CI(n19287), .I0(data_count[1]), .I1(VAC_MOSI), 
            .CO(n19288));
    SB_LUT4 add_73_2_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_728), 
            .I3(VAC_MOSI), .O(n400)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_2 (.CI(VAC_MOSI), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_728), 
            .CO(n19311));
    SB_LUT4 add_126_12_lut (.I0(n14_adj_1551), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19344), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_17_lut (.I0(VAC_MOSI), .I1(data_cntvec[15]), .I2(VAC_MOSI), 
            .I3(n19310), .O(n334)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_67_6_lut (.I0(VAC_MOSI), .I1(data_count[4]), .I2(VAC_MOSI), 
            .I3(n19290), .O(n327)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_67_2_lut (.I0(VAC_MOSI), .I1(data_count[0]), .I2(iac_raw_buf_N_728), 
            .I3(VAC_MOSI), .O(n331)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_16_lut (.I0(VAC_MOSI), .I1(data_cntvec[14]), .I2(VAC_MOSI), 
            .I3(n19309), .O(n335)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_12 (.CI(n19344), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19345));
    SB_LUT4 i12692_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15094));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12692_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14975_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17357));
    defparam i14975_2_lut.LUT_INIT = 16'heeee;
    SB_DFF eis_stop_328 (.Q(eis_stop), .C(clk_32MHz), .D(n15084));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 comm_index_1__bdd_4_lut_19472 (.I0(comm_index[1]), .I1(n4_adj_1563), 
            .I2(n21051), .I3(comm_index[2]), .O(n22093));
    defparam comm_index_1__bdd_4_lut_19472.LUT_INIT = 16'he4aa;
    SB_DFF acadc_rst_327 (.Q(acadc_rst), .C(clk_32MHz), .D(n15083));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_267 (.I0(cmd_rdadctmp_adj_1669[19]), .I1(cmd_rdadctmp_adj_1669[18]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19787));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_268 (.I0(cmd_rdadctmp_adj_1669[18]), .I1(cmd_rdadctmp_adj_1669[17]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19785));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_268.LUT_INIT = 16'h0aca;
    SB_LUT4 i19069_4_lut (.I0(eis_state[1]), .I1(eis_end_N_716), .I2(eis_state[0]), 
            .I3(n4_adj_1473), .O(n20529));
    defparam i19069_4_lut.LUT_INIT = 16'h1b13;
    SB_LUT4 i12694_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1653[15]), .I2(dds_state_adj_1652[1]), 
            .I3(VAC_MOSI), .O(n15096));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12694_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_269 (.I0(eis_state[1]), .I1(eis_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n35));   // zim_main.vhd(451[3] 526[10])
    defparam i1_2_lut_adj_269.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_270 (.I0(TEST_LED), .I1(n14700), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(TEST_LED_N_683));
    defparam i1_2_lut_adj_270.LUT_INIT = 16'h6666;
    SB_LUT4 n22093_bdd_4_lut (.I0(n22093), .I1(n2_adj_1562), .I2(n1_adj_1561), 
            .I3(comm_index[2]), .O(n22096));
    defparam n22093_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_129_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1500));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12698_3_lut (.I0(VDC_RNG0), .I1(n14_adj_1549), .I2(n11901), 
            .I3(VAC_MOSI), .O(n15100));   // zim_main.vhd(531[3] 819[10])
    defparam i12698_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1501));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12699_3_lut (.I0(AMPV_POW), .I1(n14_adj_1556), .I2(n11901), 
            .I3(VAC_MOSI), .O(n15101));   // zim_main.vhd(531[3] 819[10])
    defparam i12699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_271 (.I0(n9_adj_1408), .I1(comm_state[3]), .I2(n9273), 
            .I3(n20613), .O(n11901));
    defparam i1_4_lut_adj_271.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12700_3_lut (.I0(buf_control[6]), .I1(n14_adj_1548), .I2(n11901), 
            .I3(VAC_MOSI), .O(n15102));   // zim_main.vhd(531[3] 819[10])
    defparam i12700_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18199_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n20794));
    defparam i18199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18201_4_lut (.I0(n20794), .I1(buf_data_vac[37]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20796));
    defparam i18201_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19561 (.I0(comm_cmd[2]), .I1(n20815), 
            .I2(n20816), .I3(comm_cmd[3]), .O(n22087));
    defparam comm_cmd_2__bdd_4_lut_19561.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_272 (.I0(comm_cmd[3]), .I1(n20602), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n20613));
    defparam i1_2_lut_3_lut_adj_272.LUT_INIT = 16'hfdfd;
    SB_LUT4 i18773_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21001));
    defparam i18773_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18251_3_lut (.I0(n19_adj_1505), .I1(buf_readRTD[2]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n20846));
    defparam i18251_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_126_11_lut (.I0(n14_adj_1552), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19343), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 n22087_bdd_4_lut (.I0(n22087), .I1(n20846), .I2(n20845), .I3(comm_cmd[3]), 
            .O(n22090));
    defparam n22087_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_126_11 (.CI(n19343), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19344));
    SB_LUT4 add_126_10_lut (.I0(n14_adj_1524), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19342), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_129_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_126_10 (.CI(n19342), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19343));
    SB_LUT4 add_126_9_lut (.I0(n14_adj_1525), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19341), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_9 (.CI(n19341), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19342));
    SB_CARRY add_68_16 (.CI(n19309), .I0(data_cntvec[14]), .I1(VAC_MOSI), 
            .CO(n19310));
    SB_LUT4 add_68_15_lut (.I0(VAC_MOSI), .I1(data_cntvec[13]), .I2(VAC_MOSI), 
            .I3(n19308), .O(n336)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_8_lut (.I0(n14_adj_1526), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19340), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_8 (.CI(n19340), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19341));
    SB_LUT4 add_67_9_lut (.I0(VAC_MOSI), .I1(data_count[7]), .I2(VAC_MOSI), 
            .I3(n19293), .O(n324)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19477 (.I0(comm_cmd[1]), .I1(n19), .I2(buf_readRTD[4]), 
            .I3(comm_cmd[2]), .O(n22081));
    defparam comm_cmd_1__bdd_4_lut_19477.LUT_INIT = 16'he4aa;
    SB_CARRY add_68_15 (.CI(n19308), .I0(data_cntvec[13]), .I1(VAC_MOSI), 
            .CO(n19309));
    SB_LUT4 add_126_7_lut (.I0(n14_adj_1557), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19339), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_7 (.CI(n19339), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19340));
    SB_LUT4 n22081_bdd_4_lut (.I0(n22081), .I1(buf_adcdata_iac[12]), .I2(n16), 
            .I3(comm_cmd[2]), .O(n22084));
    defparam n22081_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_67_9 (.CI(n19293), .I0(data_count[7]), .I1(VAC_MOSI), 
            .CO(n19294));
    SB_LUT4 add_126_6_lut (.I0(n14_adj_1527), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19338), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_6 (.CI(n19338), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19339));
    SB_LUT4 add_67_8_lut (.I0(VAC_MOSI), .I1(data_count[6]), .I2(VAC_MOSI), 
            .I3(n19292), .O(n325)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_5_lut (.I0(n14_adj_1558), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19337), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_14_lut (.I0(VAC_MOSI), .I1(data_cntvec[12]), .I2(VAC_MOSI), 
            .I3(n19307), .O(n337)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_5 (.CI(n19337), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19338));
    SB_CARRY add_67_8 (.CI(n19292), .I0(data_count[6]), .I1(VAC_MOSI), 
            .CO(n19293));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19467 (.I0(comm_cmd[0]), .I1(IAC_FLT1), 
            .I2(buf_adcdata_iac[19]), .I3(comm_cmd[1]), .O(n22075));
    defparam comm_cmd_0__bdd_4_lut_19467.LUT_INIT = 16'he4aa;
    SB_CARRY add_68_14 (.CI(n19307), .I0(data_cntvec[12]), .I1(VAC_MOSI), 
            .CO(n19308));
    SB_LUT4 add_126_4_lut (.I0(n14_adj_1528), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19336), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18215_4_lut (.I0(data_idxvec[12]), .I1(buf_data_vac[41]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20810));
    defparam i18215_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 mux_128_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1517));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18214_4_lut (.I0(n23_adj_1517), .I1(req_data_cnt[12]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20809));
    defparam i18214_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n22075_bdd_4_lut (.I0(n22075), .I1(buf_dds1[11]), .I2(buf_dds0[11]), 
            .I3(comm_cmd[1]), .O(n22078));
    defparam n22075_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18105_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20700));
    defparam i18105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12712_3_lut (.I0(buf_dds0[12]), .I1(n14_adj_1549), .I2(n12353), 
            .I3(VAC_MOSI), .O(n15114));   // zim_main.vhd(531[3] 819[10])
    defparam i12712_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_13_lut (.I0(VAC_MOSI), .I1(data_cntvec[11]), .I2(VAC_MOSI), 
            .I3(n19306), .O(n338)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19457 (.I0(comm_cmd[2]), .I1(n20824), 
            .I2(n20825), .I3(comm_cmd[3]), .O(n22069));
    defparam comm_cmd_2__bdd_4_lut_19457.LUT_INIT = 16'he4aa;
    SB_LUT4 n22069_bdd_4_lut (.I0(n22069), .I1(n20837), .I2(n20836), .I3(comm_cmd[3]), 
            .O(n22072));
    defparam n22069_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_273 (.I0(n12220), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n20700), .O(n11411));
    defparam i1_4_lut_adj_273.LUT_INIT = 16'h888a;
    SB_CARRY add_68_13 (.CI(n19306), .I0(data_cntvec[11]), .I1(VAC_MOSI), 
            .CO(n19307));
    SB_LUT4 add_68_12_lut (.I0(VAC_MOSI), .I1(data_cntvec[10]), .I2(VAC_MOSI), 
            .I3(n19305), .O(n339)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_4 (.CI(n19336), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19337));
    SB_LUT4 i11133_3_lut (.I0(n21946), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13533));   // zim_main.vhd(533[4] 818[13])
    defparam i11133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1541068_i1_3_lut (.I0(n21976), .I1(n22024), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1478));
    defparam i1541068_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12713_3_lut (.I0(buf_dds0[13]), .I1(n14_adj_1556), .I2(n12353), 
            .I3(VAC_MOSI), .O(n15115));   // zim_main.vhd(531[3] 819[10])
    defparam i12713_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12714_3_lut (.I0(buf_dds0[14]), .I1(n14_adj_1548), .I2(n12353), 
            .I3(VAC_MOSI), .O(n15116));   // zim_main.vhd(531[3] 819[10])
    defparam i12714_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11137_3_lut (.I0(n30_adj_1478), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13537));   // zim_main.vhd(533[4] 818[13])
    defparam i11137_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_7_lut (.I0(VAC_MOSI), .I1(data_count[5]), .I2(VAC_MOSI), 
            .I3(n19291), .O(n326)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFNE acadc_trig_300 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20049));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 add_126_3_lut (.I0(n14_adj_1529), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19335), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_3_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16_adj_1584));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_3 (.CI(n19335), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19336));
    SB_LUT4 add_126_2_lut (.I0(n14_adj_1516), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_130_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1477));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15760));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i14972_2_lut_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(CONT_SD));   // zim_main.vhd(378[13:59])
    defparam i14972_2_lut_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15757));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15755));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15752));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 mux_130_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1477), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1476));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15746));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15743));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15740));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 mux_130_Mux_0_i30_3_lut (.I0(n22_adj_1476), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1475));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_274 (.I0(n20624), .I1(comm_state[3]), .I2(n9273), 
            .I3(VAC_MOSI), .O(n12353));
    defparam i1_3_lut_adj_274.LUT_INIT = 16'hc4c4;
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15737));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_67_7 (.CI(n19291), .I0(data_count[5]), .I1(VAC_MOSI), 
            .CO(n19292));
    SB_LUT4 i11141_3_lut (.I0(n30_adj_1475), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13541));   // zim_main.vhd(533[4] 818[13])
    defparam i11141_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15734));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12715_3_lut (.I0(buf_dds0[15]), .I1(n14_adj_1523), .I2(n12353), 
            .I3(VAC_MOSI), .O(n15117));   // zim_main.vhd(531[3] 819[10])
    defparam i12715_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15731));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15728));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15726));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_126_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19335));
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15723));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i11145_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13545));   // zim_main.vhd(533[4] 818[13])
    defparam i11145_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11149_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13549));   // zim_main.vhd(533[4] 818[13])
    defparam i11149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11153_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13553));   // zim_main.vhd(533[4] 818[13])
    defparam i11153_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19723));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i14920_3_lut (.I0(\comm_buf[1] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17304));   // zim_main.vhd(249[9:19])
    defparam i14920_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19839));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i18311_4_lut (.I0(n17304), .I1(\comm_buf[3] [0]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n20906));
    defparam i18311_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19841));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_125_11_lut (.I0(data_index[9]), .I1(data_index[9]), .I2(n10579), 
            .I3(n19334), .O(n7_adj_1531)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_125_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10579), 
            .I3(n19333), .O(n7_adj_1533)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18312_3_lut (.I0(n22132), .I1(n20906), .I2(comm_index[0]), 
            .I3(VAC_MOSI), .O(n20907));
    defparam i18312_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_125_10 (.CI(n19333), .I0(data_index[8]), .I1(n10579), 
            .CO(n19334));
    SB_LUT4 add_125_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10579), 
            .I3(n19332), .O(n7_adj_1535)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_9_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19843));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_125_9 (.CI(n19332), .I0(data_index[7]), .I1(n10579), 
            .CO(n19333));
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19845));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 add_125_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10579), 
            .I3(n19331), .O(n7_adj_1537)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_125_8 (.CI(n19331), .I0(data_index[6]), .I1(n10579), 
            .CO(n19332));
    SB_LUT4 add_125_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10579), 
            .I3(n19330), .O(n17336)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_7_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19847));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_68_12 (.CI(n19305), .I0(data_cntvec[10]), .I1(VAC_MOSI), 
            .CO(n19306));
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15082));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_125_7 (.CI(n19330), .I0(data_index[5]), .I1(n10579), 
            .CO(n19331));
    SB_LUT4 comm_index_1__bdd_4_lut_19462 (.I0(comm_index[1]), .I1(n4_adj_1566), 
            .I2(n21081), .I3(comm_index[2]), .O(n22063));
    defparam comm_index_1__bdd_4_lut_19462.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_275 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n20653));
    defparam i1_2_lut_3_lut_adj_275.LUT_INIT = 16'hdfdf;
    SB_LUT4 i15202_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1550));   // zim_main.vhd(533[4] 818[13])
    defparam i15202_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19091_2_lut (.I0(n11538), .I1(eis_end_N_716), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14639));
    defparam i19091_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_125_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10579), 
            .I3(n19329), .O(n7_adj_1540)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_6_lut.LUT_INIT = 16'hA3AC;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15081));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12719_3_lut (.I0(VAC_OSR0), .I1(n14_adj_1549), .I2(n12367), 
            .I3(VAC_MOSI), .O(n15121));   // zim_main.vhd(531[3] 819[10])
    defparam i12719_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19122_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), .I2(eis_end_N_716), 
            .I3(acadc_rst), .O(n11538));
    defparam i19122_4_lut.LUT_INIT = 16'h0013;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15080));   // zim_main.vhd(531[3] 819[10])
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15079));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY add_125_6 (.CI(n19329), .I0(data_index[4]), .I1(n10579), 
            .CO(n19330));
    SB_LUT4 add_125_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10579), 
            .I3(n19328), .O(n7_adj_1542)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_5_lut.LUT_INIT = 16'hA3AC;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19849));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19851));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i15203_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1551));   // zim_main.vhd(533[4] 818[13])
    defparam i15203_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12720_3_lut (.I0(VAC_OSR1), .I1(n14_adj_1556), .I2(n12367), 
            .I3(VAC_MOSI), .O(n15122));   // zim_main.vhd(531[3] 819[10])
    defparam i12720_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19725));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19727));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i15204_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1552));   // zim_main.vhd(533[4] 818[13])
    defparam i15204_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15211_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1524));   // zim_main.vhd(533[4] 818[13])
    defparam i15211_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19729));   // zim_main.vhd(531[3] 819[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19731));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12721_3_lut (.I0(VAC_FLT0), .I1(n14_adj_1548), .I2(n12367), 
            .I3(VAC_MOSI), .O(n15123));   // zim_main.vhd(531[3] 819[10])
    defparam i12721_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19649));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i1_4_lut_adj_276 (.I0(n9), .I1(comm_state[3]), .I2(n9273), 
            .I3(n20622), .O(n12367));
    defparam i1_4_lut_adj_276.LUT_INIT = 16'hc0c4;
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19705));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12722_3_lut (.I0(VAC_FLT1), .I1(n14_adj_1523), .I2(n12367), 
            .I3(VAC_MOSI), .O(n15124));   // zim_main.vhd(531[3] 819[10])
    defparam i12722_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19707));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i16827_1_lut (.I0(clk_cnt[0]), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16827_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i18248_4_lut (.I0(data_idxvec[14]), .I1(buf_data_vac[45]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20843));
    defparam i18248_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i15205_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1525));   // zim_main.vhd(533[4] 818[13])
    defparam i15205_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_68_11_lut (.I0(VAC_MOSI), .I1(data_cntvec[9]), .I2(VAC_MOSI), 
            .I3(n19304), .O(n340)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_128_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1512));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_4_lut (.I0(VAC_MOSI), .I1(data_count[2]), .I2(VAC_MOSI), 
            .I3(n19288), .O(n329)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18247_4_lut (.I0(n23_adj_1512), .I1(req_data_cnt[14]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20842));
    defparam i18247_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12726_3_lut (.I0(buf_cfgRTD[4]), .I1(n14_adj_1549), .I2(n12381), 
            .I3(VAC_MOSI), .O(n15128));   // zim_main.vhd(531[3] 819[10])
    defparam i12726_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_125_5 (.CI(n19328), .I0(data_index[3]), .I1(n10579), 
            .CO(n19329));
    SB_LUT4 i12727_3_lut (.I0(buf_cfgRTD[5]), .I1(n14_adj_1556), .I2(n12381), 
            .I3(VAC_MOSI), .O(n15129));   // zim_main.vhd(531[3] 819[10])
    defparam i12727_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_277 (.I0(comm_state[2]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20571));
    defparam i1_2_lut_adj_277.LUT_INIT = 16'h2222;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15078));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_24_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[22]), .I3(n19468), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15077));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_23_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[21]), .I3(n19467), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_23 (.CI(n19467), .I0(VAC_MOSI), 
            .I1(secclk_cnt[21]), .CO(n19468));
    SB_LUT4 i12728_3_lut (.I0(buf_cfgRTD[6]), .I1(n14_adj_1548), .I2(n12381), 
            .I3(VAC_MOSI), .O(n15130));   // zim_main.vhd(531[3] 819[10])
    defparam i12728_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i46_2_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n23_adj_1574));
    defparam i46_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut_adj_278 (.I0(comm_state[0]), .I1(comm_cmd[3]), .I2(n20602), 
            .I3(VAC_MOSI), .O(n20622));   // zim_main.vhd(533[4] 818[13])
    defparam i1_3_lut_adj_278.LUT_INIT = 16'hfefe;
    SB_LUT4 i19127_4_lut (.I0(n21_adj_1573), .I1(n17415), .I2(comm_state[2]), 
            .I3(n23_adj_1574), .O(n18));
    defparam i19127_4_lut.LUT_INIT = 16'h7377;
    SB_LUT4 i19037_3_lut_4_lut (.I0(comm_index[2]), .I1(n18824), .I2(comm_index[0]), 
            .I3(comm_index[1]), .O(n21069));
    defparam i19037_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i1_2_lut_3_lut_adj_279 (.I0(comm_index[2]), .I1(n18824), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n25_adj_1592));
    defparam i1_2_lut_3_lut_adj_279.LUT_INIT = 16'h0404;
    SB_LUT4 i1_4_lut_adj_280 (.I0(n10553), .I1(comm_state[3]), .I2(n9273), 
            .I3(n20622), .O(n12381));
    defparam i1_4_lut_adj_280.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12729_3_lut (.I0(buf_cfgRTD[7]), .I1(n14_adj_1523), .I2(n12381), 
            .I3(VAC_MOSI), .O(n15131));   // zim_main.vhd(531[3] 819[10])
    defparam i12729_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_6__I_0_363_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9_adj_1408));
    defparam comm_cmd_6__I_0_363_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_281 (.I0(cmd_rdadctmp_adj_1669[17]), .I1(cmd_rdadctmp_adj_1669[16]), 
            .I2(n12853), .I3(adc_state_adj_1668[3]), .O(n19783));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_281.LUT_INIT = 16'h0aca;
    SB_DFF trig_dds1_305 (.Q(trig_dds1), .C(clk_32MHz), .D(n19683));   // zim_main.vhd(531[3] 819[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n13443), 
            .D(n334), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 equal_187_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n9_adj_1407));
    defparam equal_187_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i32_4_lut (.I0(comm_state_3__N_428[2]), .I1(n2342), .I2(comm_state[1]), 
            .I3(comm_state[2]), .O(n15_adj_1602));   // zim_main.vhd(533[4] 818[13])
    defparam i32_4_lut.LUT_INIT = 16'hcac0;
    SB_DFF trig_dds0_304 (.Q(trig_dds0), .C(clk_32MHz), .D(n19689));   // zim_main.vhd(531[3] 819[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n13443), 
            .D(n335), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n13443), 
            .D(n336), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n13443), 
            .D(n337), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n13443), 
            .D(n338), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n13443), 
            .D(n339), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n13443), 
            .D(n340), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n13443), 
            .D(n341), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n13443), 
            .D(n342), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n13443), 
            .D(n343), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n13443), 
            .D(n344), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n13443), 
            .D(n345), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n13443), 
            .D(n346), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n13443), 
            .D(n347), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n13443), 
            .D(n348), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_CARRY add_68_11 (.CI(n19304), .I0(data_cntvec[9]), .I1(VAC_MOSI), 
            .CO(n19305));
    SB_LUT4 n22063_bdd_4_lut (.I0(n22063), .I1(n2_adj_1565), .I2(n1_adj_1564), 
            .I3(comm_index[2]), .O(n22066));
    defparam n22063_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i33_3_lut (.I0(comm_state[1]), .I1(n20641), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n12_adj_1603));   // zim_main.vhd(533[4] 818[13])
    defparam i33_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_282 (.I0(n12_adj_1603), .I1(comm_state[0]), .I2(n20571), 
            .I3(n15_adj_1602), .O(n19815));   // zim_main.vhd(533[4] 818[13])
    defparam i1_4_lut_adj_282.LUT_INIT = 16'hb3a0;
    SB_LUT4 i1_2_lut_3_lut_adj_283 (.I0(comm_cmd[3]), .I1(n20602), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n11324));
    defparam i1_2_lut_3_lut_adj_283.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_4_lut_adj_284 (.I0(n12220), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9222), .O(n14722));   // zim_main.vhd(531[3] 819[10])
    defparam i1_4_lut_adj_284.LUT_INIT = 16'ha2a0;
    SB_LUT4 i3894_3_lut_4_lut (.I0(comm_index[0]), .I1(n2342), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_439[2]));   // zim_main.vhd(715[5] 725[12])
    defparam i3894_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 add_125_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10579), 
            .I3(n19327), .O(n7_adj_1544)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_3_lut_adj_285 (.I0(n12220), .I1(comm_state[3]), .I2(n10_adj_1572), 
            .I3(VAC_MOSI), .O(n11836));
    defparam i1_3_lut_adj_285.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_2_lut_3_lut_adj_286 (.I0(comm_data_vld), .I1(comm_state[0]), 
            .I2(ICE_SPI_CE0), .I3(VAC_MOSI), .O(n4_adj_1596));
    defparam i1_2_lut_3_lut_adj_286.LUT_INIT = 16'hf7f7;
    SB_LUT4 i12250_3_lut (.I0(n11846), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n14652));   // zim_main.vhd(531[3] 819[10])
    defparam i12250_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i1_4_lut_adj_287 (.I0(n12220), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11333), .O(n11905));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'ha0a8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(THERMOSTAT_N_462));   // zim_main.vhd(560[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i11681_3_lut (.I0(n21970), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14083));   // zim_main.vhd(533[4] 818[13])
    defparam i11681_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11675_3_lut (.I0(n22216), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14077));   // zim_main.vhd(533[4] 818[13])
    defparam i11675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18255_3_lut (.I0(n22078), .I1(n22102), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n20850));
    defparam i18255_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1536244_i1_3_lut (.I0(n20850), .I1(n21958), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1520));
    defparam i1536244_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11671_3_lut (.I0(n30_adj_1520), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14073));   // zim_main.vhd(533[4] 818[13])
    defparam i11671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11667_3_lut (.I0(n22030), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14069));   // zim_main.vhd(533[4] 818[13])
    defparam i11667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18228_3_lut (.I0(n22036), .I1(n22156), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n20823));
    defparam i18228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1537450_i1_3_lut (.I0(n20823), .I1(n21910), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1514));
    defparam i1537450_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11663_3_lut (.I0(n30_adj_1514), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14065));   // zim_main.vhd(533[4] 818[13])
    defparam i11663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11659_3_lut (.I0(n22054), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14061));   // zim_main.vhd(533[4] 818[13])
    defparam i11659_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12338_2_lut (.I0(n11941), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14735));   // zim_main.vhd(531[3] 819[10])
    defparam i12338_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_288 (.I0(comm_index[0]), .I1(n20653), .I2(comm_index[1]), 
            .I3(n25_adj_1592), .O(n11944));
    defparam i1_4_lut_adj_288.LUT_INIT = 16'hcdcc;
    SB_LUT4 i1_4_lut_adj_289 (.I0(n11944), .I1(n20556), .I2(n10508), .I3(n20650), 
            .O(n11941));
    defparam i1_4_lut_adj_289.LUT_INIT = 16'h8880;
    SB_LUT4 i11655_3_lut (.I0(n22060), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14057));   // zim_main.vhd(533[4] 818[13])
    defparam i11655_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11651_3_lut (.I0(n22072), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14053));   // zim_main.vhd(533[4] 818[13])
    defparam i11651_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11645_3_lut (.I0(n22090), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14047));   // zim_main.vhd(533[4] 818[13])
    defparam i11645_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1540465_i1_3_lut (.I0(n22012), .I1(n22198), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1503));
    defparam i1540465_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11641_3_lut (.I0(n30_adj_1503), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14043));   // zim_main.vhd(533[4] 818[13])
    defparam i11641_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1541671_i1_3_lut (.I0(n22084), .I1(n22162), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1493));
    defparam i1541671_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11637_3_lut (.I0(n30_adj_1493), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14039));   // zim_main.vhd(533[4] 818[13])
    defparam i11637_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1542877_i1_3_lut (.I0(n22120), .I1(n22180), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1485));
    defparam i1542877_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11633_3_lut (.I0(n30_adj_1485), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14035));   // zim_main.vhd(533[4] 818[13])
    defparam i11633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1542274_i1_3_lut (.I0(n21940), .I1(n22114), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1490));
    defparam i1542274_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11629_3_lut (.I0(n30_adj_1490), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14031));   // zim_main.vhd(533[4] 818[13])
    defparam i11629_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12345_2_lut (.I0(n12007), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14742));   // zim_main.vhd(531[3] 819[10])
    defparam i12345_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i45_4_lut (.I0(n21071), .I1(n21069), .I2(comm_state[1]), .I3(comm_state_3__N_428[2]), 
            .O(n20_adj_1607));
    defparam i45_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_290 (.I0(comm_state[0]), .I1(n20556), .I2(n20627), 
            .I3(n20_adj_1607), .O(n12007));
    defparam i1_4_lut_adj_290.LUT_INIT = 16'hc4c0;
    SB_LUT4 i1535641_i1_3_lut (.I0(n21964), .I1(n21952), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1624));
    defparam i1535641_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11625_3_lut (.I0(n30_adj_1624), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14027));   // zim_main.vhd(533[4] 818[13])
    defparam i11625_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1617));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1617), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1618));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19442 (.I0(comm_cmd[2]), .I1(n20833), 
            .I2(n20834), .I3(comm_cmd[3]), .O(n22057));
    defparam comm_cmd_2__bdd_4_lut_19442.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_130_Mux_1_i30_3_lut (.I0(n22_adj_1618), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1619));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11621_3_lut (.I0(n30_adj_1619), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14023));   // zim_main.vhd(533[4] 818[13])
    defparam i11621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1613));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1613), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1614));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i30_3_lut (.I0(n22_adj_1614), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1615));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11615_3_lut (.I0(n30_adj_1615), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14017));   // zim_main.vhd(533[4] 818[13])
    defparam i11615_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1610));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1610), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1611));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i30_3_lut (.I0(n22_adj_1611), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1612));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11611_3_lut (.I0(n30_adj_1612), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14013));   // zim_main.vhd(533[4] 818[13])
    defparam i11611_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1605));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1605), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1606));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i30_3_lut (.I0(n22_adj_1606), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1608));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11607_3_lut (.I0(n30_adj_1608), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14009));   // zim_main.vhd(533[4] 818[13])
    defparam i11607_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1598));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12741_3_lut (.I0(acadc_skipCount[12]), .I1(n14_adj_1549), .I2(n12391), 
            .I3(VAC_MOSI), .O(n15143));   // zim_main.vhd(531[3] 819[10])
    defparam i12741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1598), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1599));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12742_3_lut (.I0(acadc_skipCount[13]), .I1(n14_adj_1556), .I2(n12391), 
            .I3(VAC_MOSI), .O(n15144));   // zim_main.vhd(531[3] 819[10])
    defparam i12742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i30_3_lut (.I0(n22_adj_1599), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1600));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11603_3_lut (.I0(n30_adj_1600), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14005));   // zim_main.vhd(533[4] 818[13])
    defparam i11603_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1593));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1593), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1594));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i30_3_lut (.I0(n22_adj_1594), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1595));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11599_3_lut (.I0(n30_adj_1595), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14001));   // zim_main.vhd(533[4] 818[13])
    defparam i11599_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12352_2_lut (.I0(n12080), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14749));   // zim_main.vhd(531[3] 819[10])
    defparam i12352_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12743_3_lut (.I0(acadc_skipCount[14]), .I1(n14_adj_1548), .I2(n12391), 
            .I3(VAC_MOSI), .O(n15145));   // zim_main.vhd(531[3] 819[10])
    defparam i12743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i41_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[0]), .O(n24_adj_1579));
    defparam i41_4_lut.LUT_INIT = 16'h1290;
    SB_LUT4 i18910_2_lut (.I0(n24_adj_1579), .I1(comm_state_3__N_428[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21079));
    defparam i18910_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i42_4_lut (.I0(n21079), .I1(n20507), .I2(comm_state[1]), .I3(comm_index[2]), 
            .O(n16_adj_1570));
    defparam i42_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_291 (.I0(comm_state[0]), .I1(n20556), .I2(n20627), 
            .I3(n16_adj_1570), .O(n12080));
    defparam i1_4_lut_adj_291.LUT_INIT = 16'hc4c0;
    SB_LUT4 i11_3_lut_4_lut (.I0(n9273), .I1(comm_state[3]), .I2(n11417), 
            .I3(trig_dds0), .O(n19689));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 eis_state_1__bdd_4_lut_4_lut (.I0(eis_state[1]), .I1(iac_raw_buf_N_728), 
            .I2(eis_end_N_716), .I3(eis_state[0]), .O(n21997));
    defparam eis_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'hb2aa;
    SB_LUT4 mux_130_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1589));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1589), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1590));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i30_3_lut (.I0(n22_adj_1590), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1591));   // zim_main.vhd(586[5] 691[14])
    defparam mux_130_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11213_3_lut (.I0(n30_adj_1591), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13615));   // zim_main.vhd(533[4] 818[13])
    defparam i11213_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11595_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13997));   // zim_main.vhd(533[4] 818[13])
    defparam i11595_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11591_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13993));   // zim_main.vhd(533[4] 818[13])
    defparam i11591_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_10_lut (.I0(VAC_MOSI), .I1(data_cntvec[8]), .I2(VAC_MOSI), 
            .I3(n19303), .O(n341)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11587_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13989));   // zim_main.vhd(533[4] 818[13])
    defparam i11587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15210_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1523));   // zim_main.vhd(533[4] 818[13])
    defparam i15210_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 secclk_cnt_3765_3766_add_4_22_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[20]), .I3(n19466), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_22 (.CI(n19466), .I0(VAC_MOSI), 
            .I1(secclk_cnt[20]), .CO(n19467));
    SB_LUT4 secclk_cnt_3765_3766_add_4_21_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[19]), .I3(n19465), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11583_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13985));   // zim_main.vhd(533[4] 818[13])
    defparam i11583_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11579_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13981));   // zim_main.vhd(533[4] 818[13])
    defparam i11579_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11575_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13977));   // zim_main.vhd(533[4] 818[13])
    defparam i11575_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_292 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n20643));
    defparam i1_2_lut_3_lut_adj_292.LUT_INIT = 16'hfdfd;
    SB_LUT4 i3_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n11810));
    defparam i3_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12359_2_lut (.I0(n12116), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14756));   // zim_main.vhd(531[3] 819[10])
    defparam i12359_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_293 (.I0(n10540), .I1(n21143), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12));
    defparam i19_4_lut_adj_293.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_294 (.I0(n12), .I1(n20556), .I2(n20627), .I3(VAC_MOSI), 
            .O(n12116));
    defparam i1_3_lut_adj_294.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11571_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13973));   // zim_main.vhd(533[4] 818[13])
    defparam i11571_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11567_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13969));   // zim_main.vhd(533[4] 818[13])
    defparam i11567_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11563_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13965));   // zim_main.vhd(533[4] 818[13])
    defparam i11563_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11559_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13961));   // zim_main.vhd(533[4] 818[13])
    defparam i11559_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11555_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13957));   // zim_main.vhd(533[4] 818[13])
    defparam i11555_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11551_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13953));   // zim_main.vhd(533[4] 818[13])
    defparam i11551_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11547_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13949));   // zim_main.vhd(533[4] 818[13])
    defparam i11547_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12366_2_lut (.I0(n12164), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14763));   // zim_main.vhd(531[3] 819[10])
    defparam i12366_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_295 (.I0(n10540), .I1(n20563), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1539));
    defparam i19_4_lut_adj_295.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_3_lut_adj_296 (.I0(n12_adj_1539), .I1(n20556), .I2(n20627), 
            .I3(VAC_MOSI), .O(n12164));
    defparam i1_3_lut_adj_296.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11543_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13945));   // zim_main.vhd(533[4] 818[13])
    defparam i11543_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11539_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13941));   // zim_main.vhd(533[4] 818[13])
    defparam i11539_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11535_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13937));   // zim_main.vhd(533[4] 818[13])
    defparam i11535_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11531_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13933));   // zim_main.vhd(533[4] 818[13])
    defparam i11531_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11527_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13929));   // zim_main.vhd(533[4] 818[13])
    defparam i11527_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11523_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13925));   // zim_main.vhd(533[4] 818[13])
    defparam i11523_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11519_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13921));   // zim_main.vhd(533[4] 818[13])
    defparam i11519_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_297 (.I0(comm_state[0]), .I1(comm_index[2]), .I2(comm_index[1]), 
            .I3(n18824), .O(n20563));
    defparam i1_4_lut_adj_297.LUT_INIT = 16'h0400;
    SB_LUT4 i12373_2_lut (.I0(n12206), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14770));   // zim_main.vhd(531[3] 819[10])
    defparam i12373_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_298 (.I0(n10540), .I1(n20563), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1585));
    defparam i19_4_lut_adj_298.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_299 (.I0(n12_adj_1585), .I1(n20556), .I2(n20627), 
            .I3(VAC_MOSI), .O(n12206));
    defparam i1_3_lut_adj_299.LUT_INIT = 16'hc8c8;
    SB_LUT4 i1_2_lut_3_lut_adj_300 (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), 
            .I2(wdtick_cnt[0]), .I3(VAC_MOSI), .O(n25));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_300.LUT_INIT = 16'h0b0b;
    SB_LUT4 i11515_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13917));   // zim_main.vhd(533[4] 818[13])
    defparam i11515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1569));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18197_4_lut (.I0(n4_adj_1569), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n20792));
    defparam i18197_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_3765_3766_add_4_21 (.CI(n19465), .I0(VAC_MOSI), 
            .I1(secclk_cnt[19]), .CO(n19466));
    SB_LUT4 i18198_3_lut (.I0(n21994), .I1(n20792), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n20793));
    defparam i18198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12693_4_lut_4_lut (.I0(acadc_rst), .I1(n20529), .I2(eis_end_N_716), 
            .I3(eis_end), .O(n15095));   // zim_main.vhd(351[18:31])
    defparam i12693_4_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i3787_3_lut_4_lut_4_lut (.I0(acadc_rst), .I1(n35), .I2(iac_raw_buf_N_728), 
            .I3(eis_end_N_716), .O(iac_raw_buf_N_726));   // zim_main.vhd(351[18:31])
    defparam i3787_3_lut_4_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 secclk_cnt_3765_3766_add_4_20_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[18]), .I3(n19464), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_137_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1568));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18191_4_lut (.I0(n4_adj_1568), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n20786));
    defparam i18191_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_301 (.I0(n9_adj_1407), .I1(comm_state[3]), .I2(n9273), 
            .I3(n20613), .O(n12391));
    defparam i1_4_lut_adj_301.LUT_INIT = 16'hc0c4;
    SB_LUT4 i18192_3_lut (.I0(n21988), .I1(n20786), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n20787));
    defparam i18192_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3765_3766_add_4_20 (.CI(n19464), .I0(VAC_MOSI), 
            .I1(secclk_cnt[18]), .CO(n19465));
    SB_LUT4 mux_137_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1567));   // zim_main.vhd(698[30:40])
    defparam mux_137_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15011_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17393));
    defparam i15011_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18188_4_lut (.I0(n4_adj_1567), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n20783));
    defparam i18188_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18189_3_lut (.I0(n21982), .I1(n20783), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n20784));
    defparam i18189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14948_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17331));   // zim_main.vhd(249[9:19])
    defparam i14948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18308_4_lut (.I0(n17331), .I1(\comm_buf[3] [5]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n20903));
    defparam i18308_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18309_3_lut (.I0(n22126), .I1(n20903), .I2(comm_index[0]), 
            .I3(VAC_MOSI), .O(n20904));
    defparam i18309_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12744_3_lut (.I0(acadc_skipCount[15]), .I1(n14_adj_1523), .I2(n12391), 
            .I3(VAC_MOSI), .O(n15146));   // zim_main.vhd(531[3] 819[10])
    defparam i12744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_302 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(VAC_MOSI), .O(n20602));   // zim_main.vhd(586[5] 691[14])
    defparam i1_2_lut_3_lut_adj_302.LUT_INIT = 16'hefef;
    SB_LUT4 i12387_3_lut (.I0(n12322), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n14784));   // zim_main.vhd(531[3] 819[10])
    defparam i12387_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i1_4_lut_adj_303 (.I0(n12220), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9222), .O(n12322));
    defparam i1_4_lut_adj_303.LUT_INIT = 16'ha8a0;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12322), 
            .D(n22108), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12322), 
            .D(n22096), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12322), 
            .D(n20904), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12322), 
            .D(n22066), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12322), 
            .D(n20784), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12322), 
            .D(n20787), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12322), 
            .D(n20793), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12206), 
            .D(n13917), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12206), 
            .D(n13921), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12206), 
            .D(n13925), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12206), 
            .D(n13929), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12206), 
            .D(n13933), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12206), 
            .D(n13937), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12206), 
            .D(n13941), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12164), 
            .D(n13945), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12164), 
            .D(n13949), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12164), 
            .D(n13953), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12164), 
            .D(n13957), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12164), 
            .D(n13961), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12164), 
            .D(n13965), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12164), 
            .D(n13969), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12116), 
            .D(n13973), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12116), 
            .D(n13977), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12116), 
            .D(n13981), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12116), 
            .D(n13985), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12116), 
            .D(n13989), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i15009_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(VAC_MOSI), .O(comm_state_3__N_428[2]));   // zim_main.vhd(586[5] 691[14])
    defparam i15009_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12116), 
            .D(n13993), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12116), 
            .D(n13997), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12080), 
            .D(n13615), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12080), 
            .D(n14001), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12080), 
            .D(n14005), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12080), 
            .D(n14009), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12080), 
            .D(n14013), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12080), 
            .D(n14017), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12080), 
            .D(n14023), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12007), 
            .D(n14027), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12007), 
            .D(n14031), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12007), 
            .D(n14035), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12007), 
            .D(n14039), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12007), 
            .D(n14043), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12007), 
            .D(n14047), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12007), 
            .D(n14053), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n11941), 
            .D(n14057), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n11941), 
            .D(n14061), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n11941), 
            .D(n14065), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n11941), 
            .D(n14069), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_304 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20273));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_304.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n11941), 
            .D(n14073), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n11941), 
            .D(n14077), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n11941), 
            .D(n14083), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n11905), 
            .D(THERMOSTAT_N_462), .R(n20081));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n11846), 
            .D(n30_adj_1521), .R(n14652));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_305 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20275));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_305.LUT_INIT = 16'hca0a;
    SB_LUT4 equal_188_i9_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n9));   // zim_main.vhd(774[11:20])
    defparam equal_188_i9_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_2_lut_3_lut_adj_306 (.I0(comm_state[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(VAC_MOSI), .O(n20585));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut_adj_306.LUT_INIT = 16'h7575;
    SB_LUT4 i15200_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1548));   // zim_main.vhd(533[4] 818[13])
    defparam i15200_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12745_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1529), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15147));   // zim_main.vhd(531[3] 819[10])
    defparam i12745_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n11836), 
            .D(comm_index_2__N_439[2]), .R(n14722));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n11836), 
            .D(comm_index_2__N_439[1]), .R(n14722));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18), 
            .D(n19815), .R(comm_state[3]));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i13326_4_lut_4_lut (.I0(n11805), .I1(comm_state[3]), .I2(n14_adj_1556), 
            .I3(buf_dds1[13]), .O(n15728));   // zim_main.vhd(531[3] 819[10])
    defparam i13326_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 secclk_cnt_3765_3766_add_4_19_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[17]), .I3(n19463), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n13443), 
            .D(n349), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_CARRY secclk_cnt_3765_3766_add_4_19 (.CI(n19463), .I0(VAC_MOSI), 
            .I1(secclk_cnt[17]), .CO(n19464));
    SB_LUT4 secclk_cnt_3765_3766_add_4_18_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[16]), .I3(n19462), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_18 (.CI(n19462), .I0(VAC_MOSI), 
            .I1(secclk_cnt[16]), .CO(n19463));
    SB_CARRY add_125_4 (.CI(n19327), .I0(data_index[2]), .I1(n10579), 
            .CO(n19328));
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1654[1]), .I1(bit_cnt_adj_1654[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(bit_cnt_3__N_964_adj_1658[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 n22057_bdd_4_lut (.I0(n22057), .I1(n20831), .I2(n22048), .I3(comm_cmd[3]), 
            .O(n22060));
    defparam n22057_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14347_3_lut (.I0(bit_cnt_adj_1654[2]), .I1(bit_cnt_adj_1654[1]), 
            .I2(bit_cnt_adj_1654[0]), .I3(VAC_MOSI), .O(bit_cnt_3__N_964_adj_1658[2]));   // dds_ad9837.vhd(25[9:16])
    defparam i14347_3_lut.LUT_INIT = 16'h6a6a;
    ADC_ADS1252 ADC_VDC (.\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .cmd_rdadctmp({Open_0, 
            cmd_rdadctmp_adj_1669[22:0]}), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .GND_net(VAC_MOSI), .\adc_state[2] (adc_state_adj_1668[2]), 
            .\adc_state[3] (adc_state_adj_1668[3]), .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), 
            .\adc_state_3__N_1122[0] (VDC_SDO), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .n19751(n19751), .VCC_net(VCC_net), .VDC_CLK(VDC_CLK), .n19753(n19753), 
            .n19755(n19755), .n19757(n19757), .n19759(n19759), .n19761(n19761), 
            .n19763(n19763), .n19765(n19765), .n19767(n19767), .n19769(n19769), 
            .n19771(n19771), .n19773(n19773), .n19775(n19775), .n19777(n19777), 
            .n19779(n19779), .n19781(n19781), .n19783(n19783), .n19785(n19785), 
            .n19787(n19787), .n19789(n19789), .n19791(n19791), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), 
            .n19793(n19793), .n19865(n19865), .buf_adcdata_vdc({buf_adcdata_vdc}), 
            .n19867(n19867), .n19869(n19869), .n19871(n19871), .n19879(n19879), 
            .n19881(n19881), .n19883(n19883), .n19885(n19885), .n19887(n19887), 
            .n19889(n19889), .n19891(n19891), .n19893(n19893), .n19895(n19895), 
            .n19897(n19897), .n19899(n19899), .n19901(n19901), .n19903(n19903), 
            .n19905(n19905), .n19907(n19907), .n19909(n19909), .n19911(n19911), 
            .n19913(n19913), .n19915(n19915), .VDC_SCLK(VDC_SCLK), .n19831(n19831), 
            .n20037(n20037), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), 
            .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), 
            .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), 
            .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), 
            .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), 
            .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), 
            .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), 
            .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), .n13073(n13073), .n12853(n12853), 
            .clk_16MHz(clk_16MHz));   // zim_main.vhd(893[12:23])
    SB_LUT4 i13350_4_lut_4_lut (.I0(n11805), .I1(comm_state[3]), .I2(n14_adj_1557), 
            .I3(buf_dds1[5]), .O(n15752));   // zim_main.vhd(531[3] 819[10])
    defparam i13350_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i13355_4_lut_4_lut (.I0(n11805), .I1(comm_state[3]), .I2(n14_adj_1558), 
            .I3(buf_dds1[3]), .O(n15757));   // zim_main.vhd(531[3] 819[10])
    defparam i13355_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 secclk_cnt_3765_3766_add_4_17_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[15]), .I3(n19461), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_125_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10579), 
            .I3(n19326), .O(n7_adj_1546)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY secclk_cnt_3765_3766_add_4_17 (.CI(n19461), .I0(VAC_MOSI), 
            .I1(secclk_cnt[15]), .CO(n19462));
    SB_LUT4 i15189_4_lut (.I0(bit_cnt_adj_1654[3]), .I1(bit_cnt_adj_1654[2]), 
            .I2(bit_cnt_adj_1654[1]), .I3(bit_cnt_adj_1654[0]), .O(bit_cnt_3__N_964_adj_1658[3]));
    defparam i15189_4_lut.LUT_INIT = 16'h6aaa;
    SB_CARRY add_67_2 (.CI(VAC_MOSI), .I0(data_count[0]), .I1(iac_raw_buf_N_728), 
            .CO(n19287));
    SB_LUT4 n21997_bdd_4_lut_4_lut (.I0(eis_end_N_716), .I1(eis_state[0]), 
            .I2(n16539), .I3(n21997), .O(eis_state_2__N_167[0]));   // zim_main.vhd(451[3] 526[10])
    defparam n21997_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 secclk_cnt_3765_3766_add_4_16_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[14]), .I3(n19460), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_adj_307 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(VAC_MOSI), .O(n14_adj_1556));   // zim_main.vhd(533[4] 818[13])
    defparam i1_2_lut_3_lut_adj_307.LUT_INIT = 16'h1010;
    SB_LUT4 i12746_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1528), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15148));   // zim_main.vhd(531[3] 819[10])
    defparam i12746_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(comm_state[0]), .O(n7_adj_1588));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19433 (.I0(comm_cmd[2]), .I1(n20842), 
            .I2(n20843), .I3(comm_cmd[3]), .O(n22051));
    defparam comm_cmd_2__bdd_4_lut_19433.LUT_INIT = 16'he4aa;
    SB_LUT4 n22051_bdd_4_lut (.I0(n22051), .I1(n20828), .I2(n22042), .I3(comm_cmd[3]), 
            .O(n22054));
    defparam n22051_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15201_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1549));   // zim_main.vhd(533[4] 818[13])
    defparam i15201_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFSR secclk_cnt_3765_3766__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n14700));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY secclk_cnt_3765_3766_add_4_16 (.CI(n19460), .I0(VAC_MOSI), 
            .I1(secclk_cnt[14]), .CO(n19461));
    SB_LUT4 secclk_cnt_3765_3766_add_4_15_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[13]), .I3(n19459), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_10 (.CI(n19303), .I0(data_cntvec[8]), .I1(VAC_MOSI), 
            .CO(n19304));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19447 (.I0(comm_cmd[0]), .I1(VAC_FLT1), 
            .I2(buf_adcdata_iac[23]), .I3(comm_cmd[1]), .O(n22045));
    defparam comm_cmd_0__bdd_4_lut_19447.LUT_INIT = 16'he4aa;
    SB_CARRY secclk_cnt_3765_3766_add_4_15 (.CI(n19459), .I0(VAC_MOSI), 
            .I1(secclk_cnt[13]), .CO(n19460));
    SB_DFFSR clk_cnt_3761_3762__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15), 
            .R(n17393));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i18843_2_lut_3_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(VAC_MOSI), .O(n21087));
    defparam i18843_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY add_125_3 (.CI(n19326), .I0(data_index[1]), .I1(n10579), 
            .CO(n19327));
    SB_LUT4 i12_4_lut_adj_308 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20271));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_308.LUT_INIT = 16'hca0a;
    SB_LUT4 add_125_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10579), 
            .I3(VCC_net), .O(n7_adj_1515)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1252), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2));   // zim_main.vhd(811[5] 813[12])
    defparam comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1252), .I2(comm_state[0]), .I3(comm_state_3__N_412[3]), 
            .O(n8_adj_1555));   // zim_main.vhd(811[5] 813[12])
    defparam comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    zim_pll pll_main (.GND_net(VAC_MOSI), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_684(DDS_MCLK1));   // zim_main.vhd(822[13:20])
    SB_LUT4 i12_4_lut_adj_309 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20269));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_309.LUT_INIT = 16'hca0a;
    SB_LUT4 n22045_bdd_4_lut (.I0(n22045), .I1(buf_dds1[15]), .I2(buf_dds0[15]), 
            .I3(comm_cmd[1]), .O(n22048));
    defparam n22045_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_310 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20267));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_310.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_3765_3766_add_4_14_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[12]), .I3(n19458), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11538), .D(n399), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12747_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1558), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15149));   // zim_main.vhd(531[3] 819[10])
    defparam i12747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_311 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20265));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_311.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11538), .D(n398), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11538), .D(n397), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11538), .D(n396), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11538), .D(n395), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12_4_lut_4_lut (.I0(eis_end_N_716), .I1(eis_state[1]), .I2(n20690), 
            .I3(acadc_trig), .O(n20049));   // zim_main.vhd(451[3] 526[10])
    defparam i12_4_lut_4_lut.LUT_INIT = 16'hf404;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19423 (.I0(comm_cmd[0]), .I1(VAC_FLT0), 
            .I2(buf_adcdata_iac[22]), .I3(comm_cmd[1]), .O(n22039));
    defparam comm_cmd_0__bdd_4_lut_19423.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12322), 
            .D(n20907), .R(n14784));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 n22039_bdd_4_lut (.I0(n22039), .I1(buf_dds1[14]), .I2(buf_dds0[14]), 
            .I3(comm_cmd[1]), .O(n22042));
    defparam n22039_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12206), 
            .D(n13553), .R(n14770));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12164), 
            .D(n13549), .R(n14763));   // zim_main.vhd(531[3] 819[10])
    SB_CARRY secclk_cnt_3765_3766_add_4_14 (.CI(n19458), .I0(VAC_MOSI), 
            .I1(secclk_cnt[12]), .CO(n19459));
    SB_LUT4 i1_2_lut_3_lut_adj_312 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n20650));
    defparam i1_2_lut_3_lut_adj_312.LUT_INIT = 16'hefef;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12116), 
            .D(n13545), .R(n14756));   // zim_main.vhd(531[3] 819[10])
    GND i1 (.Y(VAC_MOSI));
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12080), 
            .D(n13541), .R(n14749));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_19418 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22033));
    defparam comm_cmd_0__bdd_4_lut_19418.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12007), 
            .D(n13537), .R(n14742));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n11941), 
            .D(n13533), .R(n14735));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i2_3_lut_adj_313 (.I0(comm_state[1]), .I1(n10540), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n10579));   // zim_main.vhd(533[4] 818[13])
    defparam i2_3_lut_adj_313.LUT_INIT = 16'hefef;
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n11846), 
            .D(n30_adj_1481), .R(n14652));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_13_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[11]), .I3(n19457), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12748_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1527), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15150));   // zim_main.vhd(531[3] 819[10])
    defparam i12748_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n11836), 
            .D(comm_index_2__N_439[0]), .R(n14722));   // zim_main.vhd(531[3] 819[10])
    SB_DFFESR flagcntwd_303 (.Q(flagcntwd), .C(clk_32MHz), .E(n11411), 
            .D(n3), .R(n20081));   // zim_main.vhd(531[3] 819[10])
    SB_LUT4 i12_4_lut_adj_314 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20263));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_314.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11538), .D(n394), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_CARRY secclk_cnt_3765_3766_add_4_13 (.CI(n19457), .I0(VAC_MOSI), 
            .I1(secclk_cnt[11]), .CO(n19458));
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11538), .D(n393), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11538), .D(n392), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11538), .D(n391), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11538), .D(n390), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11538), .D(n389), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11538), .D(n388), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11538), .D(n387), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 mux_128_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1511));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11538), .D(n386), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_12_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[10]), .I3(n19456), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22033_bdd_4_lut (.I0(n22033), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22036));
    defparam n22033_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY secclk_cnt_3765_3766_add_4_12 (.CI(n19456), .I0(VAC_MOSI), 
            .I1(secclk_cnt[10]), .CO(n19457));
    SB_LUT4 i15_4_lut_adj_315 (.I0(n10579), .I1(n8780), .I2(comm_state[3]), 
            .I3(n9273), .O(n12254));
    defparam i15_4_lut_adj_315.LUT_INIT = 16'hf535;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19428 (.I0(comm_cmd[2]), .I1(n20809), 
            .I2(n20810), .I3(comm_cmd[3]), .O(n22027));
    defparam comm_cmd_2__bdd_4_lut_19428.LUT_INIT = 16'he4aa;
    SB_LUT4 i18239_4_lut (.I0(n26_adj_1511), .I1(buf_data_vac[47]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20834));
    defparam i18239_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11538), .D(n385), .R(n14639));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12749_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1557), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15151));   // zim_main.vhd(531[3] 819[10])
    defparam i12749_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n13443), 
            .D(n330), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n13443), 
            .D(n329), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n13443), 
            .D(n328), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n13443), 
            .D(n327), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n13443), 
            .D(n326), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n13443), 
            .D(n325), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_11_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[9]), .I3(n19455), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_128_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1510));   // zim_main.vhd(586[5] 691[14])
    defparam mux_128_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_316 (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20));   // zim_main.vhd(476[10:41])
    defparam i4_4_lut_adj_316.LUT_INIT = 16'h7bde;
    SB_LUT4 i12755_3_lut_4_lut (.I0(req_data_cnt[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9273), .I3(n12415), .O(n15157));   // zim_main.vhd(531[3] 819[10])
    defparam i12755_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n13443), 
            .D(n324), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n13443), 
            .D(n323), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR data_count_i0_i9 (.Q(data_count[9]), .C(clk_32MHz), .E(n13443), 
            .D(n322), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_LUT4 i12750_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1526), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15152));   // zim_main.vhd(531[3] 819[10])
    defparam i12750_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22027_bdd_4_lut (.I0(n22027), .I1(n20801), .I2(n22006), .I3(comm_cmd[3]), 
            .O(n22030));
    defparam n22027_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n13443), 
            .D(n331), .R(n14632));   // zim_main.vhd(451[3] 526[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11538), .D(n400), .R(n20757));   // zim_main.vhd(451[3] 526[10])
    SB_DFFR wdtick_flag_289 (.Q(wdtick_flag), .C(TEST_LED), .D(wdtick_flag_N_293), 
            .R(flagcntwd));   // zim_main.vhd(401[3] 412[10])
    SB_LUT4 i1_4_lut_adj_317 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4_adj_1576));   // zim_main.vhd(734[9:33])
    defparam i1_4_lut_adj_317.LUT_INIT = 16'h7bde;
    SB_LUT4 i18238_4_lut (.I0(n23_adj_1510), .I1(req_data_cnt[15]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20833));
    defparam i18238_4_lut.LUT_INIT = 16'h0aca;
    ADC_MAX31865 RTD (.buf_cfgRTD({buf_cfgRTD}), .adc_state({Open_1, adc_state_adj_1674[2], 
            Open_2, Open_3}), .GND_net(VAC_MOSI), .RTD_CS(RTD_CS), .clk_RTD(clk_RTD), 
            .RTD_SCLK(RTD_SCLK), .buf_readRTD({buf_readRTD}), .read_buf({read_buf}), 
            .n11700(n11700), .n13279(n13279), .n1(n1_adj_1575), .n18586(n18586), 
            .n13162(n13162), .RTD_DRDY(RTD_DRDY), .n19637(n19637), .VCC_net(VCC_net), 
            .\adress[1] (adress[1]), .n19639(n19639), .\adress[2] (adress[2]), 
            .n19641(n19641), .\adress[3] (adress[3]), .n19643(n19643), 
            .\adress[4] (adress[4]), .n19645(n19645), .\adress[5] (adress[5]), 
            .n19647(n19647), .\adress[6] (adress[6]), .n15318(n15318), 
            .\cfg_buf[1] (cfg_buf[1]), .n14465(n14465), .n13151(n13151), 
            .n19919(n19919), .n19923(n19923), .n19927(n19927), .n19931(n19931), 
            .n19935(n19935), .n19939(n19939), .n19943(n19943), .n19947(n19947), 
            .n19951(n19951), .n19955(n19955), .n19959(n19959), .n19963(n19963), 
            .n19967(n19967), .n19971(n19971), .n19973(n19973), .n19975(n19975), 
            .n19977(n19977), .n19979(n19979), .n19981(n19981), .n19983(n19983), 
            .n19985(n19985), .n19987(n19987), .n19989(n19989), .n19991(n19991), 
            .n19993(n19993), .n19995(n19995), .n19997(n19997), .n19999(n19999), 
            .\cfg_buf[0] (cfg_buf[0]), .n15776(n15776), .n20041(n20041), 
            .n20043(n20043), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(902[8:20])
    SB_LUT4 i2_3_lut_adj_318 (.I0(comm_index[1]), .I1(n4_adj_1576), .I2(comm_length[1]), 
            .I3(VAC_MOSI), .O(n5));   // zim_main.vhd(734[9:33])
    defparam i2_3_lut_adj_318.LUT_INIT = 16'hdede;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19452 (.I0(comm_cmd[1]), .I1(n26), .I2(n21001), 
            .I3(comm_cmd[2]), .O(n22021));
    defparam comm_cmd_1__bdd_4_lut_19452.LUT_INIT = 16'he4aa;
    SB_LUT4 n22021_bdd_4_lut (.I0(n22021), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22024));
    defparam n22021_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12751_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1525), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15153));   // zim_main.vhd(531[3] 819[10])
    defparam i12751_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3765_3766_add_4_11 (.CI(n19455), .I0(VAC_MOSI), 
            .I1(secclk_cnt[9]), .CO(n19456));
    SB_LUT4 secclk_cnt_3765_3766_add_4_10_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[8]), .I3(n19454), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_10 (.CI(n19454), .I0(VAC_MOSI), 
            .I1(secclk_cnt[8]), .CO(n19455));
    SB_LUT4 i14169_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1524), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15154));
    defparam i14169_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15037_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n3));   // zim_main.vhd(533[4] 818[13])
    defparam i15037_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 secclk_cnt_3765_3766_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[7]), .I3(n19453), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_319 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20261));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_319.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_3765_3766_add_4_9 (.CI(n19453), .I0(VAC_MOSI), .I1(secclk_cnt[7]), 
            .CO(n19454));
    SB_LUT4 secclk_cnt_3765_3766_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[6]), .I3(n19452), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18184_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n20779));
    defparam i18184_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18186_4_lut (.I0(n20779), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20781));
    defparam i18186_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18710_2_lut (.I0(buf_data_vac[31]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20949));
    defparam i18710_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY secclk_cnt_3765_3766_add_4_8 (.CI(n19452), .I0(VAC_MOSI), .I1(secclk_cnt[6]), 
            .CO(n19453));
    SB_LUT4 comm_cmd_0__bdd_4_lut_19413 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22015));
    defparam comm_cmd_0__bdd_4_lut_19413.LUT_INIT = 16'he4aa;
    SB_LUT4 n22015_bdd_4_lut (.I0(n22015), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n20871));
    defparam n22015_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12753_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1552), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15155));   // zim_main.vhd(531[3] 819[10])
    defparam i12753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_3765_3766_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[5]), .I3(n19451), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_7 (.CI(n19451), .I0(VAC_MOSI), .I1(secclk_cnt[5]), 
            .CO(n19452));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19403 (.I0(comm_cmd[1]), .I1(n19_adj_1501), 
            .I2(buf_readRTD[3]), .I3(comm_cmd[2]), .O(n22009));
    defparam comm_cmd_1__bdd_4_lut_19403.LUT_INIT = 16'he4aa;
    SB_LUT4 n22009_bdd_4_lut (.I0(n22009), .I1(buf_adcdata_iac[11]), .I2(n16_adj_1500), 
            .I3(comm_cmd[2]), .O(n22012));
    defparam n22009_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 secclk_cnt_3765_3766_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[4]), .I3(n19450), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12754_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1551), .I2(n12415), 
            .I3(VAC_MOSI), .O(n15156));   // zim_main.vhd(531[3] 819[10])
    defparam i12754_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1623));   // zim_main.vhd(586[5] 691[14])
    defparam mux_129_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3765_3766_add_4_6 (.CI(n19450), .I0(VAC_MOSI), .I1(secclk_cnt[4]), 
            .CO(n19451));
    ADC_ADS127_U1 ADC_IAC (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .n20543(n20543), .cmd_rdadctmp({cmd_rdadctmp}), .buf_adcdata_iac({buf_adcdata_iac}), 
            .\adc_state[1] (adc_state[1]), .DTRIG_N_910(DTRIG_N_910), .GND_net(VAC_MOSI), 
            .IAC_DRDY(IAC_DRDY), .acadc_trig(acadc_trig), .n20553(n20553), 
            .n12542(n12542), .n20091(n20091), .IAC_SCLK(IAC_SCLK), .n20089(n20089), 
            .acadc_dtrig_i(acadc_dtrig_i), .VCC_net(VCC_net), .n20195(n20195), 
            .n11(n11_adj_1580), .IAC_CS(IAC_CS), .n20215(n20215), .n20217(n20217), 
            .n20219(n20219), .n20221(n20221), .n20223(n20223), .n20225(n20225), 
            .n20227(n20227), .n20229(n20229), .n20231(n20231), .n20233(n20233), 
            .n20235(n20235), .n20237(n20237), .n20239(n20239), .n20241(n20241), 
            .n20243(n20243), .n20245(n20245), .n20247(n20247), .n20249(n20249), 
            .n20251(n20251), .n20253(n20253), .n20255(n20255), .n20257(n20257), 
            .n20259(n20259), .n20261(n20261), .n20263(n20263), .n20265(n20265), 
            .n20267(n20267), .n20269(n20269), .n20271(n20271), .n20275(n20275), 
            .n20273(n20273));   // zim_main.vhd(845[12:22])
    ADC_ADS127 ADC_VAC (.\adc_state[1] (adc_state_adj_1628[1]), .DTRIG_N_910(DTRIG_N_910_adj_1444), 
            .\adc_state[0] (adc_state_adj_1628[0]), .GND_net(VAC_MOSI), 
            .VAC_DRDY(VAC_DRDY), .acadc_trig(acadc_trig), .n20540(n20540), 
            .cmd_rdadctmp({cmd_rdadctmp_adj_1629}), .buf_adcdata_vac({buf_adcdata_vac}), 
            .clk_32MHz(clk_32MHz), .n20113(n20113), .VCC_net(VCC_net), 
            .n20117(n20117), .n20119(n20119), .n20121(n20121), .n20123(n20123), 
            .n20125(n20125), .n20127(n20127), .n20145(n20145), .n20147(n20147), 
            .acadc_dtrig_v(acadc_dtrig_v), .acadc_dtrig_i(acadc_dtrig_i), 
            .iac_raw_buf_N_728(iac_raw_buf_N_728), .n20573(n20573), .n12643(n12643), 
            .n20095(n20095), .VAC_SCLK(VAC_SCLK), .n20093(n20093), .n20191(n20191), 
            .n20321(n20321), .n20319(n20319), .n20317(n20317), .n20315(n20315), 
            .n20311(n20311), .n20309(n20309), .n20307(n20307), .n20203(n20203), 
            .n11(n11), .VAC_CS(VAC_CS), .n20305(n20305), .n20303(n20303), 
            .n20301(n20301), .n20299(n20299), .n20297(n20297), .n20295(n20295), 
            .n20293(n20293), .n20289(n20289), .n20287(n20287), .n20285(n20285), 
            .n20283(n20283), .n20281(n20281), .n20279(n20279), .n20277(n20277));   // zim_main.vhd(859[12:22])
    SB_LUT4 i12_4_lut_adj_320 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12542), .I3(adc_state[0]), .O(n20259));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_320.LUT_INIT = 16'hca0a;
    DDS_AD9837_U0 CLK_DDS (.\dds_state_2__N_916[0] (dds_state_2__N_916_adj_1660[0]), 
            .dds_state({dds_state_adj_1652}), .clk_32MHz(clk_32MHz), .DDS_CS1(DDS_CS1), 
            .n20151(n20151), .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf_adj_1653[15]), 
            .n15096(n15096), .DDS_MOSI1(DDS_MOSI1), .DDS_SCK1(DDS_SCK1), 
            .trig_dds1(trig_dds1), .buf_dds1({buf_dds1}), .GND_net(VAC_MOSI), 
            .bit_cnt({bit_cnt_adj_1654}), .n8(n8_adj_1409), .\bit_cnt_3__N_964[3] (bit_cnt_3__N_964_adj_1658[3]), 
            .\bit_cnt_3__N_964[2] (bit_cnt_3__N_964_adj_1658[2]), .\bit_cnt_3__N_964[1] (bit_cnt_3__N_964_adj_1658[1]));   // zim_main.vhd(883[12:22])
    DDS_AD9837 SIG_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .DDS_CS(DDS_CS), .n20149(n20149), .VCC_net(VCC_net), .\tmp_buf[15] (tmp_buf[15]), 
            .n14869(n14869), .GND_net(VAC_MOSI), .n15094(n15094), .DDS_MOSI(DDS_MOSI), 
            .n15092(n15092), .DDS_SCK(DDS_SCK), .trig_dds0(trig_dds0), 
            .buf_dds0({buf_dds0}), .bit_cnt({Open_4, Open_5, Open_6, 
            bit_cnt_adj_1650[0]}), .n15795(n15795));   // zim_main.vhd(873[12:22])
    SB_LUT4 secclk_cnt_3765_3766_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[3]), .I3(n19449), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_5 (.CI(n19449), .I0(VAC_MOSI), .I1(secclk_cnt[3]), 
            .CO(n19450));
    SB_LUT4 add_68_9_lut (.I0(VAC_MOSI), .I1(data_cntvec[7]), .I2(VAC_MOSI), 
            .I3(n19302), .O(n342)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[2]), .I3(n19448), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_4 (.CI(n19448), .I0(VAC_MOSI), .I1(secclk_cnt[2]), 
            .CO(n19449));
    SB_LUT4 secclk_cnt_3765_3766_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[1]), .I3(n19447), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_3 (.CI(n19447), .I0(VAC_MOSI), .I1(secclk_cnt[1]), 
            .CO(n19448));
    SB_DFF SecClk_292 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_683));   // zim_main.vhd(417[3] 423[10])
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (GND_net, comm_data_vld, clk_32MHz, comm_clear, ICE_SPI_SCLK, 
            comm_tx_buf, comm_rx_buf, VCC_net, ICE_SPI_MOSI, ICE_SPI_MISO);
    input GND_net;
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input ICE_SPI_SCLK;
    input [7:0]comm_tx_buf;
    output [7:0]comm_rx_buf;
    input VCC_net;
    input ICE_SPI_MOSI;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire n16858, DATA_VLD_N_790, n14624, n14623, n22623;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n14592, data_tx_7__N_758, imiso, n14590, data_tx_7__N_766, 
        n22629, imosi;
    wire [3:0]n21;
    
    wire n22626, n14588, n14595, DOUT_7__N_737, DOUT_7__N_736, DOUT_7__N_735, 
        DOUT_7__N_734, DOUT_7__N_733, DOUT_7__N_732, DOUT_7__N_730, 
        n22650, n14600, n14599, n22647, n14593, n14577, data_tx_7__N_765, 
        imosi_N_745, n14589, n14586, n14585, imosi_N_744, n14582, 
        iclk_N_755, n14581, iclk_N_754, data_tx_7__N_787, n22641, 
        n22638, n22644, data_tx_7__N_772, data_tx_7__N_760, n14578, 
        n22635, data_tx_7__N_763, n14596, data_tx_7__N_775, data_tx_7__N_761, 
        data_tx_7__N_778, data_tx_7__N_762, data_tx_7__N_781, data_tx_7__N_784, 
        data_tx_7__N_764, n14604, n14603, n14608, n14607, n14612, 
        n14611, n14616, n14615, data_tx_7__N_759, data_tx_7__N_769, 
        n14620, n14619, n22632, DOUT_7__N_739, DOUT_7__N_738;
    
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n16858), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_790));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_790), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_LUT4 i12223_3_lut (.I0(n14624), .I1(n14623), .I2(n22623), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12223_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i7_12190_12191_set (.Q(n14592), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_758));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR MISO_48_12187_12188_reset (.Q(n14590), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_766));   // spi_slave.vhd(60[3] 64[10])
    SB_LUT4 i19174_4_lut_3_lut (.I0(n22629), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n22629));   // spi_slave.vhd(70[3] 80[10])
    defparam i19174_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i16864_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16864_1_lut.LUT_INIT = 16'h5555;
    SB_DFFNR bit_cnt_3767__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i19154_4_lut_3_lut (.I0(n22626), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n22626));   // spi_slave.vhd(47[3] 55[10])
    defparam i19154_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19199_4_lut_3_lut (.I0(n22623), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22623));   // spi_slave.vhd(70[3] 80[10])
    defparam i19199_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19164_4_lut_3_lut (.I0(n14588), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14588));   // spi_slave.vhd(60[3] 64[10])
    defparam i19164_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNS imiso_83_12193_12194_set (.Q(n14595), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_758));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_737), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_736), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_735), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_734), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_733), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_732), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_730), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i19204_4_lut_3_lut (.I0(n22650), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n22650));   // spi_slave.vhd(70[3] 80[10])
    defparam i19204_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12199_3_lut (.I0(n14600), .I1(n14599), .I2(n22629), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12199_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19169_4_lut_3_lut (.I0(n22647), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22647));   // spi_slave.vhd(70[3] 80[10])
    defparam i19169_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12192_3_lut (.I0(n14593), .I1(n14592), .I2(n14588), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12192_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_12175_12176_set (.Q(n14577), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_765));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_745));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNS MISO_48_12187_12188_set (.Q(n14589), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_758));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_12183_12184_reset (.Q(n14586), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_745));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS imosi_44_12183_12184_set (.Q(n14585), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_744));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFR iclk_40_12179_12180_reset (.Q(n14582), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_755));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS iclk_40_12179_12180_set (.Q(n14581), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_754));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19184_4_lut_3_lut (.I0(n22641), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22641));   // spi_slave.vhd(70[3] 80[10])
    defparam i19184_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19189_4_lut_3_lut (.I0(n22638), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22638));   // spi_slave.vhd(70[3] 80[10])
    defparam i19189_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR bit_cnt_3767__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i19179_4_lut_3_lut (.I0(n22644), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22644));   // spi_slave.vhd(70[3] 80[10])
    defparam i19179_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_760));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i0_12175_12176_reset (.Q(n14578), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i19194_4_lut_3_lut (.I0(n22635), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22635));   // spi_slave.vhd(70[3] 80[10])
    defparam i19194_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i16866_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16866_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_766));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_763));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12195_3_lut (.I0(n14596), .I1(n14595), .I2(n14588), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i12195_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_775));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_761));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_778));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_762));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_781));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_784));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_764));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12189_3_lut (.I0(n14590), .I1(n14589), .I2(n14588), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i12189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12177_3_lut (.I0(n14578), .I1(n14577), .I2(n22650), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_754));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12203_3_lut (.I0(n14604), .I1(n14603), .I2(n22647), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12203_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12207_3_lut (.I0(n14608), .I1(n14607), .I2(n22644), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12207_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12211_3_lut (.I0(n14612), .I1(n14611), .I2(n22641), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12211_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12215_3_lut (.I0(n14616), .I1(n14615), .I2(n22638), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12215_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_759));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_758));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12219_3_lut (.I0(n14620), .I1(n14619), .I2(n22635), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12219_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12181_3_lut (.I0(n14582), .I1(n14581), .I2(n22626), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i12181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n16858));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i16880_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16880_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i16873_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16873_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i19159_4_lut_3_lut (.I0(n22632), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n22632));   // spi_slave.vhd(47[3] 55[10])
    defparam i19159_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFR data_tx_i6_12221_12222_reset (.Q(n14624), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i12185_3_lut (.I0(n14586), .I1(n14585), .I2(n22632), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i12185_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_739));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_738));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_44 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_732));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_44.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_45 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_733));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_45.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_46 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_734));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_46.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_47 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_735));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_47.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_48 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_736));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_48.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_49 (.I0(bit_cnt[3]), .I1(n16858), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_737));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_49.LUT_INIT = 16'he0e0;
    SB_DFFS data_tx_i6_12221_12222_set (.Q(n14623), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_759));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i5_12217_12218_reset (.Q(n14620), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_12217_12218_set (.Q(n14619), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_760));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_755));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR data_tx_i4_12213_12214_reset (.Q(n14616), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_775));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i4_12213_12214_set (.Q(n14615), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_761));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_744));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i3_12209_12210_reset (.Q(n14612), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_778));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i3_12209_12210_set (.Q(n14611), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_762));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_12205_12206_reset (.Q(n14608), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_781));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i2_12205_12206_set (.Q(n14607), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_763));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_765));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i1_12201_12202_reset (.Q(n14604), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_784));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i1_12201_12202_set (.Q(n14603), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_764));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_12197_12198_reset (.Q(n14600), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_739));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_12197_12198_set (.Q(n14599), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_738));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR imiso_83_12193_12194_reset (.Q(n14596), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_766));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_tx_i7_12190_12191_reset (.Q(n14593), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_766));   // spi_slave.vhd(70[3] 80[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (\cmd_rdadcbuf[14] , cmd_rdadctmp, \cmd_rdadcbuf[13] , 
            GND_net, \adc_state[2] , \adc_state[3] , \cmd_rdadcbuf[12] , 
            \adc_state_3__N_1122[0] , \cmd_rdadcbuf[11] , n19751, VCC_net, 
            VDC_CLK, n19753, n19755, n19757, n19759, n19761, n19763, 
            n19765, n19767, n19769, n19771, n19773, n19775, n19777, 
            n19779, n19781, n19783, n19785, n19787, n19789, n19791, 
            \cmd_rdadcbuf[34] , n19793, n19865, buf_adcdata_vdc, n19867, 
            n19869, n19871, n19879, n19881, n19883, n19885, n19887, 
            n19889, n19891, n19893, n19895, n19897, n19899, n19901, 
            n19903, n19905, n19907, n19909, n19911, n19913, n19915, 
            VDC_SCLK, n19831, n20037, \cmd_rdadcbuf[33] , \cmd_rdadcbuf[32] , 
            \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , \cmd_rdadcbuf[29] , 
            \cmd_rdadcbuf[28] , \cmd_rdadcbuf[27] , \cmd_rdadcbuf[26] , 
            \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , \cmd_rdadcbuf[23] , 
            \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , \cmd_rdadcbuf[20] , 
            \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , \cmd_rdadcbuf[17] , 
            \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , n13073, n12853, 
            clk_16MHz);
    output \cmd_rdadcbuf[14] ;
    output [23:0]cmd_rdadctmp;
    output \cmd_rdadcbuf[13] ;
    input GND_net;
    output \adc_state[2] ;
    output \adc_state[3] ;
    output \cmd_rdadcbuf[12] ;
    input \adc_state_3__N_1122[0] ;
    output \cmd_rdadcbuf[11] ;
    input n19751;
    input VCC_net;
    output VDC_CLK;
    input n19753;
    input n19755;
    input n19757;
    input n19759;
    input n19761;
    input n19763;
    input n19765;
    input n19767;
    input n19769;
    input n19771;
    input n19773;
    input n19775;
    input n19777;
    input n19779;
    input n19781;
    input n19783;
    input n19785;
    input n19787;
    input n19789;
    input n19791;
    output \cmd_rdadcbuf[34] ;
    input n19793;
    input n19865;
    output [23:0]buf_adcdata_vdc;
    input n19867;
    input n19869;
    input n19871;
    input n19879;
    input n19881;
    input n19883;
    input n19885;
    input n19887;
    input n19889;
    input n19891;
    input n19893;
    input n19895;
    input n19897;
    input n19899;
    input n19901;
    input n19903;
    input n19905;
    input n19907;
    input n19909;
    input n19911;
    input n19913;
    input n19915;
    output VDC_SCLK;
    input n19831;
    input n20037;
    output \cmd_rdadcbuf[33] ;
    output \cmd_rdadcbuf[32] ;
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
    output n13073;
    output n12853;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    
    wire n19377, n19378;
    wire [35:0]cmd_rdadcbuf_35__N_1130;
    
    wire n19376;
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n7, n13060, n19375, n62, n17359, n11, n18381, n11736, 
        n19374;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19373, n19372, n19371, n19370, n19369;
    wire [3:0]adc_state_3__N_998;
    
    wire n20514, n19368, n12793;
    wire [35:0]cmd_rdadcbuf_35__N_1046;
    
    wire n13020, n19367, n19366, n19365, n10112, n20712, n19364, 
        n21673, n11662, n15782;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n20490, n6, n21028, n21025, n10519, n18394, n21106, n7_adj_1403, 
        n20618, n11251, n6_adj_1404, n15;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n20, n19, n21, n10, n20523, n21178, n20702, n31, n18397;
    wire [11:0]avg_cnt_11__N_1166;
    
    wire n19409, n19408, n19407, n19406, n19405, n19404, n19403, 
        n19402, n21928, n19401, n19400, n19399, n19397, n19396, 
        n19395, n19394, n19393, n19392, n19391, n19390, n19389, 
        n19388, n19387, n12;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n19386, n19385, n72, n20710, n47, n19384;
    wire [7:0]n37;
    
    wire n19475, n19474, n19473, n19472, n19471, n19470, n19469, 
        n19383, n19_adj_1405, n14900, n6_adj_1406, n12885, n20345, 
        n17, n4, n21925, n19382, n19381, n19380, n19379;
    
    SB_CARRY add_23_16 (.CI(n19377), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19378));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19376), .O(cmd_rdadcbuf_35__N_1130[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19376), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19377));
    SB_LUT4 i12071_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i12071_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13060));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hf840;
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19375), .O(cmd_rdadcbuf_35__N_1130[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(adc_state[0]), .I1(\adc_state_3__N_1122[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n62));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i14977_2_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n17359));
    defparam i14977_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i24_4_lut (.I0(n62), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n11));   // adc_ads1252u.vhd(31[8:17])
    defparam i24_4_lut.LUT_INIT = 16'hf03a;
    SB_LUT4 i1_4_lut (.I0(\adc_state[3] ), .I1(n11), .I2(adc_state[0]), 
            .I3(n17359), .O(n18381));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut.LUT_INIT = 16'hcc8c;
    SB_LUT4 i16006_4_lut (.I0(n62), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(adc_state[1]), .O(n11736));   // adc_ads1252u.vhd(31[8:17])
    defparam i16006_4_lut.LUT_INIT = 16'hc2ce;
    SB_CARRY add_23_14 (.CI(n19375), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19376));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19374), .O(cmd_rdadcbuf_35__N_1130[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19751));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19753));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_13 (.CI(n19374), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19375));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19373), .O(cmd_rdadcbuf_35__N_1130[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19373), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19374));
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19755));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19372), .O(cmd_rdadcbuf_35__N_1130[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19757));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19759));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19761));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19763));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19765));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19767));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19769));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19771));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19773));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19775));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_11 (.CI(n19372), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19373));
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19777));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19371), .O(cmd_rdadcbuf_35__N_1130[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19779));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_10 (.CI(n19371), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19372));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19370), .O(cmd_rdadcbuf_35__N_1130[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19781));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19783));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_9 (.CI(n19370), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19371));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19369), .O(cmd_rdadcbuf_35__N_1130[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19785));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19787));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_8 (.CI(n19369), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19370));
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(VDC_CLK), .E(n20514), .D(adc_state_3__N_998[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19368), .O(cmd_rdadcbuf_35__N_1130[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19789));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19791));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_7 (.CI(n19368), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19369));
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n12793), 
            .D(adc_state_3__N_998[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13020), 
            .D(cmd_rdadcbuf_35__N_1046[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19793));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19865));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19867));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19869));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19871));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19879));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19881));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19367), .O(cmd_rdadcbuf_35__N_1130[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19367), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19368));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19366), .O(cmd_rdadcbuf_35__N_1130[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_5 (.CI(n19366), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19367));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19365), .O(cmd_rdadcbuf_35__N_1130[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19365), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19366));
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(n10112), 
            .I3(n20712), .O(n12793));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdcfe;
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19883));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19885));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19887));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19889));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19891));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19893));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19895));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19897));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19899));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19901));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19903));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19905));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19907));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19909));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19911));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19364), .O(cmd_rdadcbuf_35__N_1130[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19913));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19915));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i19078_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21673));   // adc_ads1252u.vhd(31[8:17])
    defparam i19078_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16013_4_lut (.I0(n11662), .I1(adc_state[1]), .I2(VDC_SCLK), 
            .I3(n21673), .O(n15782));   // adc_ads1252u.vhd(31[8:17])
    defparam i16013_4_lut.LUT_INIT = 16'h7250;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(n20490), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY add_23_3 (.CI(n19364), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19365));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(cmd_rdadctmp[0]), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1130[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(cmd_rdadctmp[0]), 
            .CO(n19364));
    SB_LUT4 i18962_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n21028));
    defparam i18962_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i18807_4_lut (.I0(n21028), .I1(adc_state[0]), .I2(n20490), 
            .I3(bit_cnt[4]), .O(n21025));
    defparam i18807_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i19071_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n11662));
    defparam i19071_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6), .O(n10519));
    defparam i4_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i18765_3_lut (.I0(n18394), .I1(\adc_state[2] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n21106));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i18765_3_lut.LUT_INIT = 16'h2121;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1130[34]), 
            .I1(n21106), .I2(\adc_state[3] ), .I3(adc_state[1]), .O(cmd_rdadcbuf_35__N_1046[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_30 (.I0(adc_state[1]), .I1(adc_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n7_adj_1403));
    defparam i1_2_lut_adj_30.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_31 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n20618));
    defparam i1_2_lut_adj_31.LUT_INIT = 16'heeee;
    SB_LUT4 i18117_2_lut (.I0(\adc_state_3__N_1122[0] ), .I1(n7_adj_1403), 
            .I2(GND_net), .I3(GND_net), .O(n20712));
    defparam i18117_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20490));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_32 (.I0(bit_cnt[1]), .I1(n20490), .I2(GND_net), 
            .I3(GND_net), .O(n11251));   // adc_ads1252u.vhd(89[8:24])
    defparam i1_2_lut_adj_32.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_33 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1404));   // adc_ads1252u.vhd(72[8:24])
    defparam i1_2_lut_adj_33.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut_adj_34 (.I0(n11251), .I1(bit_cnt[4]), .I2(bit_cnt[0]), 
            .I3(n6_adj_1404), .O(n15));   // adc_ads1252u.vhd(72[8:24])
    defparam i4_4_lut_adj_34.LUT_INIT = 16'hffef;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(n13020));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hdd80;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[7]), .I2(avg_cnt[4]), 
            .I3(avg_cnt[3]), .O(n20));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[0]), .I2(avg_cnt[9]), 
            .I3(avg_cnt[8]), .O(n19));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[6]), .I1(avg_cnt[2]), .I2(avg_cnt[11]), 
            .I3(avg_cnt[1]), .O(n21));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i9_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(n18394));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i4_4_lut_adj_35 (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(bit_cnt[5]), .O(n10));
    defparam i4_4_lut_adj_35.LUT_INIT = 16'h0008;
    SB_LUT4 i5_3_lut (.I0(bit_cnt[6]), .I1(n10), .I2(bit_cnt[7]), .I3(GND_net), 
            .O(n20523));
    defparam i5_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i18909_4_lut (.I0(bit_cnt[4]), .I1(\adc_state[3] ), .I2(bit_cnt[3]), 
            .I3(n20523), .O(n21178));
    defparam i18909_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i18107_2_lut (.I0(\adc_state_3__N_1122[0] ), .I1(adc_state[1]), 
            .I2(GND_net), .I3(GND_net), .O(n20702));
    defparam i18107_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i37_4_lut (.I0(\adc_state_3__N_1122[0] ), .I1(adc_state[0]), 
            .I2(n21178), .I3(adc_state[1]), .O(n31));
    defparam i37_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 i1_4_lut_adj_36 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(n31), 
            .I3(n20702), .O(n20514));
    defparam i1_4_lut_adj_36.LUT_INIT = 16'hfafe;
    SB_LUT4 i15984_3_lut (.I0(n18394), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n18397));   // adc_ads1252u.vhd(31[8:17])
    defparam i15984_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19409), .O(avg_cnt_11__N_1166[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19408), .O(avg_cnt_11__N_1166[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19408), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19409));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19407), .O(avg_cnt_11__N_1166[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n19407), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19408));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19406), .O(avg_cnt_11__N_1166[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19406), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19407));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19405), .O(avg_cnt_11__N_1166[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n19405), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19406));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19404), .O(avg_cnt_11__N_1166[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19404), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19405));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19403), .O(avg_cnt_11__N_1166[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19403), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19404));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19402), .O(avg_cnt_11__N_1166[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19402), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19403));
    SB_LUT4 i15986_4_lut (.I0(n21928), .I1(n18397), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_998[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i15986_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19401), .O(avg_cnt_11__N_1166[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19401), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19402));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19400), .O(avg_cnt_11__N_1166[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19400), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19401));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19399), .O(avg_cnt_11__N_1166[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19399), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19400));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1166[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19399));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19397), .O(cmd_rdadcbuf_35__N_1130[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19831));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20037));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n15782));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19396), .O(cmd_rdadcbuf_35__N_1130[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_35 (.CI(n19396), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19397));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19395), .O(cmd_rdadcbuf_35__N_1130[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_34 (.CI(n19395), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19396));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19394), .O(cmd_rdadcbuf_35__N_1130[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19394), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19395));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19393), .O(cmd_rdadcbuf_35__N_1130[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19393), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19394));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19392), .O(cmd_rdadcbuf_35__N_1130[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19392), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19393));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19391), .O(cmd_rdadcbuf_35__N_1130[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n19391), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19392));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19390), .O(cmd_rdadcbuf_35__N_1130[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19390), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19391));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19389), .O(cmd_rdadcbuf_35__N_1130[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19389), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19390));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19388), .O(cmd_rdadcbuf_35__N_1130[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n19388), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19389));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19387), .O(cmd_rdadcbuf_35__N_1130[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15997_3_lut (.I0(\adc_state_3__N_1122[0] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n12));   // adc_ads1252u.vhd(31[8:17])
    defparam i15997_3_lut.LUT_INIT = 16'he6e6;
    SB_CARRY add_23_26 (.CI(n19387), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19388));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19386), .O(cmd_rdadcbuf_35__N_1130[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19386), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19387));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19385), .O(cmd_rdadcbuf_35__N_1130[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19385), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19386));
    SB_LUT4 i1_4_lut_adj_37 (.I0(\adc_state[2] ), .I1(n12), .I2(n20712), 
            .I3(\adc_state[3] ), .O(n72));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_37.LUT_INIT = 16'hafee;
    SB_LUT4 i18115_2_lut (.I0(n15), .I1(adc_state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n20710));
    defparam i18115_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_38 (.I0(n20710), .I1(n72), .I2(adc_state[1]), 
            .I3(n20618), .O(n47));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hcc4c;
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19384), .O(cmd_rdadcbuf_35__N_1130[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19384), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19385));
    SB_LUT4 bit_cnt_3769_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19475), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3769_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19474), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_8 (.CI(n19474), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19475));
    SB_LUT4 bit_cnt_3769_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19473), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_7 (.CI(n19473), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19474));
    SB_LUT4 bit_cnt_3769_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19472), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_6 (.CI(n19472), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19473));
    SB_LUT4 bit_cnt_3769_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19471), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_5 (.CI(n19471), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19472));
    SB_LUT4 bit_cnt_3769_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19470), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_4 (.CI(n19470), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19471));
    SB_LUT4 bit_cnt_3769_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19469), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_3 (.CI(n19469), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19470));
    SB_LUT4 bit_cnt_3769_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3769_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3769_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19469));
    SB_DFFESR bit_cnt_3769__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11736), 
            .D(n37[7]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11736), 
            .D(n37[6]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11736), 
            .D(n37[5]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11736), 
            .D(n37[4]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11736), 
            .D(n37[3]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11736), 
            .D(n37[2]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3769__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11736), 
            .D(n37[1]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19383), .O(cmd_rdadcbuf_35__N_1130[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i40_3_lut_4_lut (.I0(\adc_state_3__N_1122[0] ), .I1(n15), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n19_adj_1405));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i40_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_LUT4 i7713_3_lut_4_lut (.I0(\adc_state_3__N_1122[0] ), .I1(n15), 
            .I2(adc_state[1]), .I3(adc_state[0]), .O(n10112));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i7713_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[11]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[10]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[9]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[8]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[7]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[6]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[5]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[4]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[3]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[2]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[1]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[33]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[32]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[31]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[30]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[29]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[28]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[27]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[26]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[25]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[24]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[23]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[22]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[21]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[20]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[19]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[18]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[17]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[16]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[15]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[14]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[13]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[12]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[11]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[10]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[9]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[8]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[7]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[6]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[5]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[4]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[3]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[2]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[1]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n12885), 
            .D(n6_adj_1406), .R(n20345));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n17), 
            .D(n7), .R(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10519), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n21925));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 n21925_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21025), .I3(n21925), .O(n21928));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam n21925_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i1_4_lut_4_lut_adj_39 (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1122[0] ), .O(adc_state_3__N_998[0]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_4_lut_4_lut_adj_39.LUT_INIT = 16'h1514;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n13073));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf200;
    SB_CARRY add_23_22 (.CI(n19383), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19384));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19382), .O(cmd_rdadcbuf_35__N_1130[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19382), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19383));
    SB_LUT4 i1_3_lut_4_lut_adj_40 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n12853));
    defparam i1_3_lut_4_lut_adj_40.LUT_INIT = 16'hf200;
    SB_LUT4 i1_4_lut_4_lut_adj_41 (.I0(\adc_state[2] ), .I1(adc_state[1]), 
            .I2(adc_state[0]), .I3(\adc_state[3] ), .O(adc_state_3__N_998[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_adj_41.LUT_INIT = 16'h1580;
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19381), .O(cmd_rdadcbuf_35__N_1130[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19088_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1122[0] ), 
            .I2(n7_adj_1403), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i19088_4_lut.LUT_INIT = 16'haa2a;
    SB_CARRY add_23_20 (.CI(n19381), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19382));
    SB_DFFESR bit_cnt_3769__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11736), 
            .D(n37[0]), .R(n18381));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 i19137_4_lut (.I0(\adc_state[2] ), .I1(n19_adj_1405), .I2(n20712), 
            .I3(\adc_state[3] ), .O(n17));
    defparam i19137_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19380), .O(cmd_rdadcbuf_35__N_1130[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19380), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19381));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19379), .O(cmd_rdadcbuf_35__N_1130[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13060), .D(avg_cnt_11__N_1166[0]), 
            .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i1_2_lut_adj_42 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n20345));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut_adj_42.LUT_INIT = 16'h8888;
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13060), 
            .D(cmd_rdadcbuf_35__N_1130[0]), .R(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n47), .D(adc_state_3__N_998[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_18 (.CI(n19379), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19380));
    SB_LUT4 i1_4_lut_adj_43 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n12885));
    defparam i1_4_lut_adj_43.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state[1]), .I3(n10519), .O(n6_adj_1406));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i12542_2_lut (.I0(n13060), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n14900));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12542_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19378), .O(cmd_rdadcbuf_35__N_1130[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19378), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19379));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19377), .O(cmd_rdadcbuf_35__N_1130[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    vdc_gen_clk genclk (.GND_net(GND_net), .clk_16MHz(clk_16MHz), .VDC_CLK(VDC_CLK), 
            .VCC_net(VCC_net));   // adc_ads1252u.vhd(136[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (GND_net, clk_16MHz, VDC_CLK, VCC_net);
    input GND_net;
    input clk_16MHz;
    output VDC_CLK;
    input VCC_net;
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire n14695, n2, div_state_1__N_1266, n11721;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n28, n26, n27, n21169;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1400, n26_adj_1401, n27_adj_1402, n21172, n21167, 
        n21166;
    wire [16:0]t0on_15__N_1213;
    
    wire n19439;
    wire [1:0]div_state_1__N_1179;
    
    wire n6, n19438, n19437, n19436, n19435, n19434, n19433, n19432, 
        n19431, n19430, n19429, n19428, n19427, n19426, n19425;
    wire [16:0]t0off_15__N_1229;
    
    wire n19424, n19423, n19422, n19421, n19420, n19419, n19418, 
        n19417, n19416, n19415, n19414, n19413, n19412, n19411, 
        n19410;
    
    SB_LUT4 i19095_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n14695));
    defparam i19095_2_lut.LUT_INIT = 16'h1111;
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1266));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1266));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19072_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11721));
    defparam i19072_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i12_4_lut (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19040_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21169));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19040_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_27 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1400));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_27.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_28 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1401));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_28.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_29 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1402));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_29.LUT_INIT = 16'hfffe;
    SB_LUT4 i18725_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21172));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18725_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i18722_4_lut (.I0(n21169), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21167));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18722_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18906_4_lut (.I0(n21172), .I1(n27_adj_1402), .I2(n26_adj_1401), 
            .I3(n28_adj_1400), .O(n21166));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18906_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19439), .O(t0on_15__N_1213[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1179[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19438), .O(t0on_15__N_1213[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19438), .I0(t0on[14]), .I1(VCC_net), .CO(n19439));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19437), .O(t0on_15__N_1213[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19437), .I0(t0on[13]), .I1(VCC_net), .CO(n19438));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19436), .O(t0on_15__N_1213[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19436), .I0(t0on[12]), .I1(VCC_net), .CO(n19437));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19435), .O(t0on_15__N_1213[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19435), .I0(t0on[11]), .I1(VCC_net), .CO(n19436));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19434), .O(t0on_15__N_1213[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19434), .I0(t0on[10]), .I1(VCC_net), .CO(n19435));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19433), 
            .O(t0on_15__N_1213[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19433), .I0(t0on[9]), .I1(VCC_net), .CO(n19434));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19432), 
            .O(t0on_15__N_1213[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19432), .I0(t0on[8]), .I1(VCC_net), .CO(n19433));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19431), 
            .O(t0on_15__N_1213[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19431), .I0(t0on[7]), .I1(VCC_net), .CO(n19432));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19430), 
            .O(t0on_15__N_1213[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11983_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1179[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i11983_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_32_8 (.CI(n19430), .I0(t0on[6]), .I1(VCC_net), .CO(n19431));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19429), 
            .O(t0on_15__N_1213[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19429), .I0(t0on[5]), .I1(VCC_net), .CO(n19430));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19428), 
            .O(t0on_15__N_1213[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19428), .I0(t0on[4]), .I1(VCC_net), .CO(n19429));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19427), 
            .O(t0on_15__N_1213[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19427), .I0(t0on[3]), .I1(VCC_net), .CO(n19428));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19426), 
            .O(t0on_15__N_1213[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19426), .I0(t0on[2]), .I1(VCC_net), .CO(n19427));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19425), 
            .O(t0on_15__N_1213[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19425), .I0(t0on[1]), .I1(VCC_net), .CO(n19426));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1213[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19425));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19424), .O(t0off_15__N_1229[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19423), .O(t0off_15__N_1229[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19423), .I0(t0off[14]), .I1(VCC_net), .CO(n19424));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19422), .O(t0off_15__N_1229[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19422), .I0(t0off[13]), .I1(VCC_net), .CO(n19423));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19421), .O(t0off_15__N_1229[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19421), .I0(t0off[12]), .I1(VCC_net), .CO(n19422));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19420), .O(t0off_15__N_1229[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19420), .I0(t0off[11]), .I1(VCC_net), .CO(n19421));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19419), .O(t0off_15__N_1229[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19419), .I0(t0off[10]), .I1(VCC_net), .CO(n19420));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19418), .O(t0off_15__N_1229[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19418), .I0(t0off[9]), .I1(VCC_net), .CO(n19419));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19417), .O(t0off_15__N_1229[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19417), .I0(t0off[8]), .I1(VCC_net), .CO(n19418));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19416), 
            .O(t0off_15__N_1229[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19416), .I0(t0off[7]), .I1(VCC_net), .CO(n19417));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19415), 
            .O(t0off_15__N_1229[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19415), .I0(t0off[6]), .I1(VCC_net), .CO(n19416));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19414), 
            .O(t0off_15__N_1229[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19414), .I0(t0off[5]), .I1(VCC_net), .CO(n19415));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19413), 
            .O(t0off_15__N_1229[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19413), .I0(t0off[4]), .I1(VCC_net), .CO(n19414));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19412), 
            .O(t0off_15__N_1229[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19412), .I0(t0off[3]), .I1(VCC_net), .CO(n19413));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19411), 
            .O(t0off_15__N_1229[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19411), .I0(t0off[2]), .I1(VCC_net), .CO(n19412));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19410), 
            .O(t0off_15__N_1229[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19410), .I0(t0off[1]), .I1(VCC_net), .CO(n19411));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1229[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19410));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[15]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[14]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[13]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[12]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[11]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[10]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[9]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[8]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[7]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[6]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[5]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[4]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[3]), 
            .S(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[2]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[1]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[15]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[14]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[13]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[12]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[11]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[10]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[9]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[8]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[7]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[6]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[5]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[4]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[3]), .S(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[2]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[1]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11721), .D(t0off_15__N_1229[0]), 
            .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1266), 
            .D(t0on_15__N_1213[0]), .R(n14695));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19148_2_lut_4_lut (.I0(n21166), .I1(n21167), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19148_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 i19135_2_lut_4_lut (.I0(n21166), .I1(n21167), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19135_2_lut_4_lut.LUT_INIT = 16'hcaff;
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_684);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_684;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_16MHz_N_684 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
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
    SB_LUT4 i19651_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_684));   // zim_main.vhd(822[13:20])
    defparam i19651_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (buf_cfgRTD, adc_state, GND_net, RTD_CS, clk_RTD, 
            RTD_SCLK, buf_readRTD, read_buf, n11700, n13279, n1, 
            n18586, n13162, RTD_DRDY, n19637, VCC_net, \adress[1] , 
            n19639, \adress[2] , n19641, \adress[3] , n19643, \adress[4] , 
            n19645, \adress[5] , n19647, \adress[6] , n15318, \cfg_buf[1] , 
            n14465, n13151, n19919, n19923, n19927, n19931, n19935, 
            n19939, n19943, n19947, n19951, n19955, n19959, n19963, 
            n19967, n19971, n19973, n19975, n19977, n19979, n19981, 
            n19983, n19985, n19987, n19989, n19991, n19993, n19995, 
            n19997, n19999, \cfg_buf[0] , n15776, n20041, n20043, 
            RTD_SDI, \adress[0] );
    input [7:0]buf_cfgRTD;
    output [3:0]adc_state;
    input GND_net;
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    output [15:0]buf_readRTD;
    output [15:0]read_buf;
    output n11700;
    output n13279;
    output n1;
    output n18586;
    output n13162;
    input RTD_DRDY;
    input n19637;
    input VCC_net;
    output \adress[1] ;
    input n19639;
    output \adress[2] ;
    input n19641;
    output \adress[3] ;
    input n19643;
    output \adress[4] ;
    input n19645;
    output \adress[5] ;
    input n19647;
    output \adress[6] ;
    input n15318;
    output \cfg_buf[1] ;
    output n14465;
    output n13151;
    input n19919;
    input n19923;
    input n19927;
    input n19931;
    input n19935;
    input n19939;
    input n19943;
    input n19947;
    input n19951;
    input n19955;
    input n19959;
    input n19963;
    input n19967;
    input n19971;
    input n19973;
    input n19975;
    input n19977;
    input n19979;
    input n19981;
    input n19983;
    input n19985;
    input n19987;
    input n19989;
    input n19991;
    input n19993;
    input n19995;
    input n19997;
    input n19999;
    output \cfg_buf[0] ;
    input n15776;
    input n20041;
    input n20043;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(266[9:16])
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    wire [3:0]adc_state_c;   // adc_max31865.vhd(24[8:17])
    
    wire n7, n7_adj_1387, n7_adj_1388, n7_adj_1389, n7_adj_1390, n13198, 
        n14984, n20722, n14, n11, n7_adj_1391, CS_N_1376, n11673, 
        SCLK_N_1375, n8;
    wire [3:0]adc_state_3__N_1283;
    
    wire n11712;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    wire [3:0]n2;
    
    wire n11704;
    wire [7:0]adress_7__N_1331;
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    
    wire n3, n20017, n19482, mode, n21091, n33, n20015, n32, 
        n4, n20969, n1_adj_1392;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n15300, n15303, n15306, n15309, n15312, n15315, n16614, 
        n1_adj_1393, n7285, n17638, n21, n16, n20487, n19733, 
        n19, n11_adj_1394, n21063, n17676, n7_adj_1395, n12, n10, 
        n11_adj_1396, n9, n11726, n15050, n7_adj_1397, n16640, n7_adj_1398, 
        n3_adj_1399, n19855;
    
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1387));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1388));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1389));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1390));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12587_2_lut (.I0(n13198), .I1(adc_state_c[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14984));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12587_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18127_2_lut (.I0(adc_state_c[1]), .I1(adc_state_c[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20722));
    defparam i18127_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30_4_lut (.I0(n20722), .I1(n14), .I2(adc_state[2]), .I3(n11), 
            .O(n13198));
    defparam i30_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1391));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11673), .D(CS_N_1376));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1375));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state_c[0]), .C(clk_RTD), .E(n11712), 
            .D(adc_state_3__N_1283[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state_c[1]), .C(clk_RTD), .E(n11712), 
            .D(adc_state_3__N_1283[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_RTD), .E(n11712), .D(adc_state_3__N_1283[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state_c[3]), .C(clk_RTD), .E(n11712), 
            .D(adc_state_3__N_1283[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i16800_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2[1]));   // adc_max31865.vhd(125[17:24])
    defparam i16800_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i31_3_lut_4_lut_3_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[3]), .I3(GND_net), .O(n14));   // adc_max31865.vhd(39[4] 147[13])
    defparam i31_3_lut_4_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state_c[1]), .I1(adc_state_c[0]), .I2(adc_state_c[3]), 
            .I3(adc_state[2]), .O(n11704));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'hed02;
    SB_LUT4 i1_4_lut_4_lut (.I0(adress_7__N_1331[7]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adress[7]), .O(n3));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf707;
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11700), 
            .I3(adc_state[2]), .O(n20017));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19027_3_lut (.I0(n19482), .I1(mode), .I2(adc_state_c[0]), 
            .I3(GND_net), .O(n21091));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19027_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n21091), .I1(adc_state_c[3]), 
            .I2(n33), .I3(adc_state[2]), .O(adc_state_3__N_1283[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h03dd;
    SB_LUT4 i12_4_lut_adj_7 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13279), 
            .I3(n1), .O(n20015));
    defparam i12_4_lut_adj_7.LUT_INIT = 16'hca0a;
    SB_LUT4 i18734_4_lut (.I0(n32), .I1(n4), .I2(mode), .I3(adc_state_c[3]), 
            .O(n20969));   // adc_max31865.vhd(39[4] 147[13])
    defparam i18734_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i21_4_lut (.I0(n20969), .I1(adc_state_c[3]), .I2(adc_state[2]), 
            .I3(n1_adj_1392), .O(adc_state_3__N_1283[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i21_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i2_3_lut (.I0(adc_state[2]), .I1(adc_state_c[0]), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i1_4_lut (.I0(n18586), .I1(cfg_buf[7]), .I2(buf_cfgRTD[7]), 
            .I3(n13162), .O(n15300));
    defparam i1_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_8 (.I0(n18586), .I1(cfg_buf[6]), .I2(buf_cfgRTD[6]), 
            .I3(n13162), .O(n15303));
    defparam i1_4_lut_adj_8.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_9 (.I0(n18586), .I1(cfg_buf[5]), .I2(buf_cfgRTD[5]), 
            .I3(n13162), .O(n15306));
    defparam i1_4_lut_adj_9.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_10 (.I0(n18586), .I1(cfg_buf[4]), .I2(buf_cfgRTD[4]), 
            .I3(n13162), .O(n15309));
    defparam i1_4_lut_adj_10.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_11 (.I0(n18586), .I1(cfg_buf[3]), .I2(buf_cfgRTD[3]), 
            .I3(n13162), .O(n15312));
    defparam i1_4_lut_adj_11.LUT_INIT = 16'ha088;
    SB_LUT4 i1_4_lut_adj_12 (.I0(n18586), .I1(cfg_buf[2]), .I2(buf_cfgRTD[2]), 
            .I3(n13162), .O(n15315));
    defparam i1_4_lut_adj_12.LUT_INIT = 16'ha088;
    SB_LUT4 i19140_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(n16614), .O(CS_N_1376));
    defparam i19140_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i19070_3_lut_3_lut (.I0(adc_state[2]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[3]), .I3(GND_net), .O(n11673));
    defparam i19070_3_lut_3_lut.LUT_INIT = 16'ha1a1;
    SB_LUT4 i22_4_lut (.I0(n11), .I1(n1_adj_1393), .I2(adc_state_c[3]), 
            .I3(n7285), .O(n13162));
    defparam i22_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_3_lut (.I0(n13162), .I1(adc_state_c[0]), .I2(adc_state_c[3]), 
            .I3(GND_net), .O(n18586));
    defparam i1_3_lut.LUT_INIT = 16'h5d5d;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17638), .I2(GND_net), .I3(GND_net), 
            .O(n32));   // adc_max31865.vhd(125[17:24])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_adj_13 (.I0(adress_7__N_1331[7]), .I1(n7285), .I2(RTD_DRDY), 
            .I3(adc_state_c[0]), .O(n21));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_13.LUT_INIT = 16'hdccc;
    SB_DFFE adress_i1 (.Q(\adress[1] ), .C(clk_RTD), .E(VCC_net), .D(n19637));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(\adress[2] ), .C(clk_RTD), .E(VCC_net), .D(n19639));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_adj_14 (.I0(mode), .I1(n21), .I2(adc_state[2]), .I3(adc_state_c[3]), 
            .O(n16));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'h0a88;
    SB_DFFE adress_i3 (.Q(\adress[3] ), .C(clk_RTD), .E(VCC_net), .D(n19641));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(\adress[4] ), .C(clk_RTD), .E(VCC_net), .D(n19643));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(\adress[5] ), .C(clk_RTD), .E(VCC_net), .D(n19645));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_adj_15 (.I0(n16), .I1(adress_7__N_1331[7]), .I2(n20487), 
            .I3(adc_state_c[0]), .O(n19733));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_15.LUT_INIT = 16'haeaa;
    SB_DFFE adress_i6 (.Q(\adress[6] ), .C(clk_RTD), .E(VCC_net), .D(n19647));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19108_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adc_state[2]), .O(n8));
    defparam i19108_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_DFFE cfg_buf_i1 (.Q(\cfg_buf[1] ), .C(clk_RTD), .E(VCC_net), .D(n15318));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_adj_16 (.I0(adc_state_c[0]), .I1(adress_7__N_1331[7]), 
            .I2(GND_net), .I3(GND_net), .O(n11));
    defparam i1_2_lut_adj_16.LUT_INIT = 16'hdddd;
    SB_LUT4 i12069_2_lut (.I0(adc_state_c[1]), .I1(adc_state_c[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14465));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12069_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i34_4_lut (.I0(RTD_DRDY), .I1(adc_state_c[0]), .I2(adc_state_c[1]), 
            .I3(n11), .O(n19));
    defparam i34_4_lut.LUT_INIT = 16'hcfc5;
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15315));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15312));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i35_4_lut (.I0(n19), .I1(n1_adj_1393), .I2(adc_state_c[3]), 
            .I3(adc_state[2]), .O(n13151));
    defparam i35_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15309));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n15306));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15303));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15300));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n19919));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n19923));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n19927));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n19931));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n19935));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_adj_17 (.I0(adc_state_c[0]), .I1(adc_state_c[3]), .I2(n7285), 
            .I3(n11_adj_1394), .O(adc_state_3__N_1283[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_4_lut_adj_17.LUT_INIT = 16'h3b0a;
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n19939));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n19943));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n19947));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i16891_3_lut (.I0(adc_state_c[1]), .I1(bit_cnt[3]), .I2(n17638), 
            .I3(GND_net), .O(n19482));   // adc_max31865.vhd(39[4] 147[13])
    defparam i16891_3_lut.LUT_INIT = 16'h2020;
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20015));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_3_lut_adj_18 (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17638));
    defparam i2_3_lut_adj_18.LUT_INIT = 16'h8080;
    SB_LUT4 i2_2_lut_3_lut (.I0(adc_state_c[3]), .I1(adc_state[2]), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n20487));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_adj_19 (.I0(n20487), .I1(adc_state_c[0]), .I2(n16614), 
            .I3(GND_net), .O(n11712));
    defparam i2_3_lut_adj_19.LUT_INIT = 16'hfbfb;
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n19951));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19033_3_lut (.I0(bit_cnt[3]), .I1(n17638), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n21063));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19033_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i14_4_lut (.I0(n21063), .I1(n1_adj_1392), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n17676));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i14_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i7_4_lut (.I0(n19482), .I1(adc_state_c[0]), 
            .I2(adc_state[2]), .I3(mode), .O(n7_adj_1395));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i7_4_lut.LUT_INIT = 16'h1b13;
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n19955));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i15_3_lut (.I0(n7_adj_1395), .I1(n17676), 
            .I2(adc_state_c[3]), .I3(GND_net), .O(adc_state_3__N_1283[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n19959));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n19963));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n19967));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n19971));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n19973));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n19975));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n19977));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n19979));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n19981));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n19983));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n19985));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20017));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n19987));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n19989));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n19991));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n19993));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n19995));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n19997));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n19999));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[2]), .I1(adc_state_c[0]), .I2(adc_state_c[1]), 
            .I3(GND_net), .O(n1_adj_1393));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_2_lut_adj_20 (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_adj_20.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state_c[1]), .I1(bit_cnt[3]), .I2(n17638), 
            .I3(adc_state_c[0]), .O(n33));   // adc_max31865.vhd(125[17:24])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_LUT4 i1_4_lut_4_lut_adj_21 (.I0(adc_state_c[0]), .I1(adc_state_c[3]), 
            .I2(adc_state[2]), .I3(adc_state_c[1]), .O(n13279));
    defparam i1_4_lut_4_lut_adj_21.LUT_INIT = 16'hc08d;
    SB_LUT4 i1_4_lut_4_lut_adj_22 (.I0(adc_state_c[3]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[1]), .I3(adc_state[2]), .O(n11700));
    defparam i1_4_lut_4_lut_adj_22.LUT_INIT = 16'ha880;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[3]), 
            .I2(adc_state[2]), .I3(adc_state_c[1]), .O(SCLK_N_1375));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i4_4_lut (.I0(\cfg_buf[1] ), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11_adj_1396));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_23 (.I0(\cfg_buf[0] ), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut_adj_23.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11_adj_1396), .I2(n10), .I3(n12), 
            .O(adress_7__N_1331[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_24 (.I0(adress_7__N_1331[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16614));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_24.LUT_INIT = 16'hbbbb;
    SB_LUT4 i4916_2_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n1_adj_1392));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4916_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18129_2_lut (.I0(adc_state[2]), .I1(adc_state_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7285));
    defparam i18129_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19151_4_lut_4_lut (.I0(adc_state_c[3]), .I1(adc_state_c[1]), 
            .I2(adc_state_c[0]), .I3(adc_state[2]), .O(n11726));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19151_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n19733));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(\cfg_buf[0] ), .C(clk_RTD), .E(VCC_net), .D(n15776));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20041));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20043));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_3_lut_4_lut_adj_25 (.I0(adc_state_c[1]), .I1(adc_state_c[0]), 
            .I2(adc_state_c[3]), .I3(adc_state[2]), .O(n15050));
    defparam i1_3_lut_4_lut_adj_25.LUT_INIT = 16'he412;
    SB_LUT4 i14225_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(adc_state[2]), 
            .I3(adc_state_c[0]), .O(n7_adj_1397));   // adc_max31865.vhd(24[8:17])
    defparam i14225_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15199_4_lut (.I0(adress[7]), .I1(cfg_tmp[7]), .I2(adc_state_c[0]), 
            .I3(adc_state[2]), .O(n16640));
    defparam i15199_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i16798_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2[0]));   // adc_max31865.vhd(125[17:24])
    defparam i16798_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR bit_cnt_3771__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11726), 
            .D(n2[3]), .R(n15050));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3771__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11726), 
            .D(n2[2]), .R(n15050));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3771__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11726), 
            .D(n2[1]), .R(n15050));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13198), .D(n7_adj_1391), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13198), .D(n7_adj_1390), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13198), .D(n7_adj_1389), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13198), .D(n7_adj_1388), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13198), .D(n7_adj_1387), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13198), .D(n7), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13198), .D(n7_adj_1398), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress[7]), .C(clk_RTD), .E(n13151), .D(n3_adj_1399), 
            .R(n19855));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i24_3_lut_4_lut (.I0(adc_state_c[0]), .I1(adc_state_c[1]), .I2(adc_state[2]), 
            .I3(n33), .O(n11_adj_1394));   // adc_max31865.vhd(39[4] 147[13])
    defparam i24_3_lut_4_lut.LUT_INIT = 16'hf404;
    SB_DFFESR bit_cnt_3771__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11726), 
            .D(n2[0]), .R(n15050));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11704), .D(n16640), 
            .R(n19855));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13198), .D(n7_adj_1397), 
            .R(n14984));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13151), .D(n3), 
            .R(n19855));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i16807_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n2[2]));   // adc_max31865.vhd(125[17:24])
    defparam i16807_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_2_lut_adj_26 (.I0(adc_state_c[3]), .I1(n1_adj_1393), .I2(GND_net), 
            .I3(GND_net), .O(n19855));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_adj_26.LUT_INIT = 16'h8888;
    SB_LUT4 i16814_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n2[3]));   // adc_max31865.vhd(125[17:24])
    defparam i16814_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1331[7]), 
            .I1(\adress[6] ), .I2(adc_state_c[1]), .I3(adc_state_c[0]), 
            .O(n3_adj_1399));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(adc_state[2]), .I3(adc_state_c[0]), .O(n7_adj_1398));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[0] , clk_32MHz, n20543, cmd_rdadctmp, 
            buf_adcdata_iac, \adc_state[1] , DTRIG_N_910, GND_net, IAC_DRDY, 
            acadc_trig, n20553, n12542, n20091, IAC_SCLK, n20089, 
            acadc_dtrig_i, VCC_net, n20195, n11, IAC_CS, n20215, 
            n20217, n20219, n20221, n20223, n20225, n20227, n20229, 
            n20231, n20233, n20235, n20237, n20239, n20241, n20243, 
            n20245, n20247, n20249, n20251, n20253, n20255, n20257, 
            n20259, n20261, n20263, n20265, n20267, n20269, n20271, 
            n20275, n20273);
    output \adc_state[0] ;
    input clk_32MHz;
    input n20543;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_iac;
    output \adc_state[1] ;
    output DTRIG_N_910;
    input GND_net;
    input IAC_DRDY;
    input acadc_trig;
    output n20553;
    output n12542;
    input n20091;
    output IAC_SCLK;
    input n20089;
    output acadc_dtrig_i;
    input VCC_net;
    input n20195;
    input n11;
    output IAC_CS;
    input n20215;
    input n20217;
    input n20219;
    input n20221;
    input n20223;
    input n20225;
    input n20227;
    input n20229;
    input n20231;
    input n20233;
    input n20235;
    input n20237;
    input n20239;
    input n20241;
    input n20243;
    input n20245;
    input n20247;
    input n20249;
    input n20251;
    input n20253;
    input n20255;
    input n20257;
    input n20259;
    input n20261;
    input n20263;
    input n20265;
    input n20267;
    input n20269;
    input n20271;
    input n20275;
    input n20273;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]adc_state_2__N_815;
    
    wire n20670, n15086, n17, n12, n15184, n15177, n15168, n15180, 
        n15183, n15182, n15181, n15165, n15179, n15178, n15176, 
        n15175, n15174, n15173, n15172, n15171, n15170, n15169, 
        n15167, n15166, n15164, n15163, n15162;
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19356, n19355, n19354, n19353, n19352, n19351, n19350, 
        n20669, n20753, n20765, n21007, n12459, n14791;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20670), 
            .D(adc_state_2__N_815[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12684_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15086));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12684_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_910), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_815[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(IAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_910), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19104_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19104_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15170_3_lut (.I0(DTRIG_N_910), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_815[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15170_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_815[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_910), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_815[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12782_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15184));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12782_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12775_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15177));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12775_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12766_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15168));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12766_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12778_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15180));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12778_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15184));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15183));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15182));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15181));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15180));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_910), .I2(GND_net), 
            .I3(GND_net), .O(n20553));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut (.I0(IAC_DRDY), .I1(n20553), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12542));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i12763_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15165));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12763_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15179));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15178));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15177));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15176));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15175));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15174));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15173));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15172));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15171));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15170));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15169));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15168));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15167));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15166));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15165));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15164));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15163));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15162));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12772_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15174));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12772_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12769_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15171));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12769_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12781_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15183));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12781_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20091));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12760_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15162));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12760_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12774_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15176));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12774_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20089));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12767_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15169));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12767_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12779_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15181));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12779_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12762_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15164));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12762_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15086));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12773_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15175));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12773_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12768_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15170));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12768_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12780_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15182));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12780_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12761_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15163));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12761_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12776_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15178));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12776_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12765_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15167));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12765_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12777_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15179));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12777_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12764_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15166));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12764_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12771_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15173));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12771_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12770_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20543), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15172));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12770_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19356), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19355), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19355), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19356));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19354), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19354), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19355));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19353), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19353), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19354));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19352), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19352), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19353));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19351), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19351), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19352));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19350), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19350), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19351));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19350));
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20195));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(IAC_DRDY), 
            .I3(DTRIG_N_910), .O(n20669));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_DFFE CS_37 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut_adj_5 (.I0(\adc_state[1] ), .I1(n20669), .I2(GND_net), 
            .I3(GND_net), .O(n20670));
    defparam i1_2_lut_adj_5.LUT_INIT = 16'hdddd;
    SB_LUT4 i18158_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n20753));
    defparam i18158_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18170_4_lut (.I0(bit_cnt[7]), .I1(n20753), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n20765));
    defparam i18170_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18788_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n20765), .O(n21007));   // adc_ads127.vhd(44[4] 88[13])
    defparam i18788_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21007), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_910), .I3(\adc_state[1] ), .O(adc_state_2__N_815[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20215));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20217));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20219));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20221));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20223));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20225));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20227));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20229));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20231));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20233));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20235));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20237));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20239));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20241));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20243));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20245));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20247));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20249));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20251));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20253));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20255));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20257));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20259));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20261));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20263));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20265));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20267));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20269));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20271));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n20275));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20273));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12459), .D(n63[7]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12459), .D(n63[6]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12459), .D(n63[5]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12459), .D(n63[4]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12459), .D(n63[3]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12459), .D(n63[2]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12459), .D(n63[1]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12394_2_lut (.I0(n12459), .I1(DTRIG_N_910), .I2(GND_net), 
            .I3(GND_net), .O(n14791));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12394_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_6 (.I0(\adc_state[0] ), .I1(IAC_DRDY), .I2(DTRIG_N_910), 
            .I3(\adc_state[1] ), .O(n12459));
    defparam i1_4_lut_adj_6.LUT_INIT = 16'h0150;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12459), .D(n63[0]), 
            .R(n14791));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (\adc_state[1] , DTRIG_N_910, \adc_state[0] , GND_net, 
            VAC_DRDY, acadc_trig, n20540, cmd_rdadctmp, buf_adcdata_vac, 
            clk_32MHz, n20113, VCC_net, n20117, n20119, n20121, 
            n20123, n20125, n20127, n20145, n20147, acadc_dtrig_v, 
            acadc_dtrig_i, iac_raw_buf_N_728, n20573, n12643, n20095, 
            VAC_SCLK, n20093, n20191, n20321, n20319, n20317, n20315, 
            n20311, n20309, n20307, n20203, n11, VAC_CS, n20305, 
            n20303, n20301, n20299, n20297, n20295, n20293, n20289, 
            n20287, n20285, n20283, n20281, n20279, n20277);
    output \adc_state[1] ;
    output DTRIG_N_910;
    output \adc_state[0] ;
    input GND_net;
    input VAC_DRDY;
    input acadc_trig;
    input n20540;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_vac;
    input clk_32MHz;
    input n20113;
    input VCC_net;
    input n20117;
    input n20119;
    input n20121;
    input n20123;
    input n20125;
    input n20127;
    input n20145;
    input n20147;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_728;
    input n20573;
    output n12643;
    input n20095;
    output VAC_SCLK;
    input n20093;
    input n20191;
    input n20321;
    input n20319;
    input n20317;
    input n20315;
    input n20311;
    input n20309;
    input n20307;
    input n20203;
    input n11;
    output VAC_CS;
    input n20305;
    input n20303;
    input n20301;
    input n20299;
    input n20297;
    input n20295;
    input n20293;
    input n20289;
    input n20287;
    input n20285;
    input n20283;
    input n20281;
    input n20279;
    input n20277;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]adc_state_2__N_815;
    
    wire n17, n15192, n12, n15205, n15187, n15198, n15193;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n20747, n20763, n21031, n20668, n15206, n15186, n15201, 
        n15190, n15203, n15189, n15196, n15195, n15089, n15207, 
        n15204, n15202, n15200, n15199, n15197, n15194, n15191, 
        n15188, n15185;
    wire [7:0]n63;
    
    wire n19363, n19362, n19361, n19360, n19359, n19358, n20667, 
        n19357, n12556, n14829;
    
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_910), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_815[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(VAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_910), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i12790_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15192));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12790_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i19101_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19101_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12803_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15205));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12803_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i15167_3_lut (.I0(DTRIG_N_910), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_815[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15167_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i12785_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15187));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12785_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12796_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15198));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12796_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12791_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15193));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12791_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i18152_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n20747));
    defparam i18152_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18168_4_lut (.I0(bit_cnt[7]), .I1(n20747), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n20763));
    defparam i18168_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19024_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n20763), .O(n21031));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19024_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21031), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_910), .I3(\adc_state[1] ), .O(adc_state_2__N_815[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20668), 
            .D(adc_state_2__N_815[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12804_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15206));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12804_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20113));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12784_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15186));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12784_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20117));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12799_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15201));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12799_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20119));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20121));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20123));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20125));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20127));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20145));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12788_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15190));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12788_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20147));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12801_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15203));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12801_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12787_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15189));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12787_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12794_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15196));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12794_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_2_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_728));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12793_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15195));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12793_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut (.I0(VAC_DRDY), .I1(n20573), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12643));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_815[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_910), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_815[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12687_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15089));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12687_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15207));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15206));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15205));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15204));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15203));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15202));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15201));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15200));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15199));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15198));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15197));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15196));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15195));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15194));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15193));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15192));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15191));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15190));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15189));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15188));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15187));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15186));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15185));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20095));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20093));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15089));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19363), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19362), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19362), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19363));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19361), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19361), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19362));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19360), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19360), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19361));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19359), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19359), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19360));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19358), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19358), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19359));
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(VAC_DRDY), 
            .I3(DTRIG_N_910), .O(n20667));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_LUT4 i1_2_lut_adj_3 (.I0(\adc_state[1] ), .I1(n20667), .I2(GND_net), 
            .I3(GND_net), .O(n20668));
    defparam i1_2_lut_adj_3.LUT_INIT = 16'hdddd;
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20191));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19357), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19357), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19358));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19357));
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20321));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20319));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20317));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20315));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20311));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20309));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20307));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20203));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20305));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20303));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20301));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20299));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20297));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .D(n20295));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .D(n20293));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .D(n20289));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .D(n20287));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .D(n20285));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .D(n20283));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .D(n20281));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .D(n20279));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .D(n20277));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12556), .D(n63[7]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12556), .D(n63[6]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12556), .D(n63[5]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12556), .D(n63[4]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12556), .D(n63[3]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12556), .D(n63[2]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12556), .D(n63[1]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12432_2_lut (.I0(n12556), .I1(DTRIG_N_910), .I2(GND_net), 
            .I3(GND_net), .O(n14829));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12432_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_4 (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(DTRIG_N_910), 
            .I3(\adc_state[1] ), .O(n12556));
    defparam i1_4_lut_adj_4.LUT_INIT = 16'h0150;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12556), .D(n63[0]), 
            .R(n14829));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12800_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15202));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12800_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12798_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15200));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12798_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12789_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15191));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12789_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12802_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15204));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12802_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12786_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15188));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12786_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12795_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15197));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12795_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12792_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15194));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12792_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i14273_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15207));   // adc_ads127.vhd(44[4] 88[13])
    defparam i14273_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12783_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15185));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12783_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12797_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20540), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15199));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12797_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (\dds_state_2__N_916[0] , dds_state, clk_32MHz, DDS_CS1, 
            n20151, VCC_net, \tmp_buf[15] , n15096, DDS_MOSI1, DDS_SCK1, 
            trig_dds1, buf_dds1, GND_net, bit_cnt, n8, \bit_cnt_3__N_964[3] , 
            \bit_cnt_3__N_964[2] , \bit_cnt_3__N_964[1] );
    input \dds_state_2__N_916[0] ;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input n20151;
    input VCC_net;
    output \tmp_buf[15] ;
    input n15096;
    output DDS_MOSI1;
    output DDS_SCK1;
    input trig_dds1;
    input [15:0]buf_dds1;
    input GND_net;
    output [3:0]bit_cnt;
    output n8;
    input \bit_cnt_3__N_964[3] ;
    input \bit_cnt_3__N_964[2] ;
    input \bit_cnt_3__N_964[1] ;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    
    wire n9, CS_N_969, n9_adj_1386;
    wire [15:0]tmp_buf_15__N_919;
    
    wire n12722;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n15093, n16743, n16711, n7868;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_916[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1386), .D(CS_N_969));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20151));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12722), .D(tmp_buf_15__N_919[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12722), 
            .D(tmp_buf_15__N_919[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15096));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15093));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19065_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n12722));
    defparam i19065_4_lut.LUT_INIT = 16'hf034;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1386));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_969));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19109_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19109_4_lut.LUT_INIT = 16'hffde;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16743));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14344_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(dds_state[1]), 
            .I3(bit_cnt[0]), .O(n16743));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i14344_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i3_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n8));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_964[3] ), .R(n16711));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_964[2] ), .R(n16711));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_964[1] ), .R(n16711));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7868), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12691_3_lut_4_lut (.I0(dds_state[2]), .I1(dds_state[1]), .I2(dds_state[0]), 
            .I3(DDS_SCK1), .O(n15093));
    defparam i12691_3_lut_4_lut.LUT_INIT = 16'h7541;
    SB_LUT4 i12143_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7868));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12143_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(dds_state[0]), 
            .I3(GND_net), .O(n16711));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, DDS_CS, n20149, VCC_net, 
            \tmp_buf[15] , n14869, GND_net, n15094, DDS_MOSI, n15092, 
            DDS_SCK, trig_dds0, buf_dds0, bit_cnt, n15795);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input n20149;
    input VCC_net;
    output \tmp_buf[15] ;
    output n14869;
    input GND_net;
    input n15094;
    output DDS_MOSI;
    input n15092;
    output DDS_SCK;
    input trig_dds0;
    input [15:0]buf_dds0;
    output [3:0]bit_cnt;
    input n15795;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]dds_state_2__N_916;
    
    wire n9, CS_N_969, n9_adj_1385;
    wire [15:0]tmp_buf_15__N_919;
    
    wire n12700;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21292;
    wire [3:0]bit_cnt_3__N_964;
    
    wire n7906;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_916[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1385), .D(CS_N_969));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20149));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12700), .D(tmp_buf_15__N_919[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12700), 
            .D(tmp_buf_15__N_919[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12468_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n14869));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12468_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15094));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19068_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n12700));
    defparam i19068_4_lut.LUT_INIT = 16'hcc46;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1385));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_969));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19105_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19105_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[1]), .I2(dds_state[0]), 
            .I3(bit_cnt_c[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i18704_2_lut (.I0(bit_cnt_c[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21292));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i18704_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12164_4_lut (.I0(dds_state[0]), .I1(n21292), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_916[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12164_4_lut.LUT_INIT = 16'hc505;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n15795));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i3837_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_964[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3837_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i3844_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_964[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3844_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_964[3]), .R(n14869));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_964[2]), .R(n14869));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_964[1]), .R(n14869));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7906), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12142_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7906));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12142_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3830_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_964[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3830_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_919[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    
endmodule
