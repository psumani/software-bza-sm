// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Jun 28 17:03:48 2024
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
            ICE_IOR_118, OUT_SYNCCLK, ICE_IOB_81, STAT_COMM, THERMOSTAT, 
            ICE_IOB_104, ICE_IOB_103, ICE_IOB_102, ICE_IOB_96, ICE_IOB_95, 
            ICE_IOB_94, ICE_IOB_91, ICE_IOB_82, ICE_GPMO_1, ICE_GPMO_2, 
            ICE_GPMI_0, ICE_IOR_138, ICE_IOR_137, ICE_IOR_136, ICE_IOR_128, 
            ICE_IOR_147, ICE_IOR_146, ICE_IOR_144, ICE_IOR_139, ICE_IOR_161, 
            ICE_IOR_160, ICE_IOR_152, ICE_IOR_148, ICE_IOR_167, ICE_IOR_166, 
            ICE_IOR_165, ICE_IOR_164);   // zim_main.vhd(7[8:11])
    input ICE_SYSCLK;   // zim_main.vhd(9[3:13])
    input EIS_SYNCCLK;   // zim_main.vhd(10[3:14])
    output TEST_LED;   // zim_main.vhd(12[3:11])
    output DDS_MCLK1;   // zim_main.vhd(14[3:12])
    output DDS_CS1;   // zim_main.vhd(15[3:10])
    output DDS_MOSI1;   // zim_main.vhd(16[3:12])
    output DDS_SCK1;   // zim_main.vhd(17[3:11])
    input ICE_SPI_SCLK;   // zim_main.vhd(26[3:15])
    input ICE_SPI_MOSI;   // zim_main.vhd(27[3:15])
    output ICE_SPI_MISO;   // zim_main.vhd(28[3:15])
    input ICE_SPI_CE0;   // zim_main.vhd(29[3:14])
    input ICE_GPMO_0;   // zim_main.vhd(30[3:13])
    output DDS_MCLK;   // zim_main.vhd(32[3:11])
    output DDS_CS;   // zim_main.vhd(33[3:9])
    output DDS_SCK;   // zim_main.vhd(34[3:10])
    output DDS_MOSI;   // zim_main.vhd(35[3:11])
    output DDS_RNG_0;   // zim_main.vhd(37[3:12])
    input ICE_IOT_173;   // zim_main.vhd(38[3:14])
    input ICE_IOT_174;   // zim_main.vhd(39[3:14])
    output VAC_OSR0;   // zim_main.vhd(41[3:11])
    output VAC_OSR1;   // zim_main.vhd(42[3:11])
    output VAC_FLT0;   // zim_main.vhd(43[3:11])
    output VAC_FLT1;   // zim_main.vhd(44[3:11])
    output VAC_CLK;   // zim_main.vhd(46[3:10])
    output VAC_CS;   // zim_main.vhd(47[3:9])
    output VAC_SCLK;   // zim_main.vhd(48[3:11])
    output VAC_MOSI;   // zim_main.vhd(49[3:11])
    input VAC_MISO;   // zim_main.vhd(50[3:11])
    input VAC_DRDY;   // zim_main.vhd(51[3:11])
    input ICE_IOL_13A;   // zim_main.vhd(53[3:14])
    input VDC_SDO;   // zim_main.vhd(54[3:10])
    output VDC_SCLK;   // zim_main.vhd(55[3:11])
    output VDC_CLK;   // zim_main.vhd(56[3:10])
    output VDC_RNG0;   // zim_main.vhd(57[3:11])
    output CONT_SD;   // zim_main.vhd(59[3:10])
    output SELIRNG0;   // zim_main.vhd(60[3:11])
    output SELIRNG1;   // zim_main.vhd(61[3:11])
    output IAC_OSR0;   // zim_main.vhd(62[3:11])
    output IAC_OSR1;   // zim_main.vhd(63[3:11])
    output IAC_FLT0;   // zim_main.vhd(64[3:11])
    output IAC_FLT1;   // zim_main.vhd(65[3:11])
    output IAC_CLK;   // zim_main.vhd(66[3:10])
    output IAC_CS;   // zim_main.vhd(67[3:9])
    output IAC_SCLK;   // zim_main.vhd(68[3:11])
    output IAC_MOSI;   // zim_main.vhd(69[3:11])
    input IAC_MISO;   // zim_main.vhd(70[3:11])
    input IAC_DRDY;   // zim_main.vhd(71[3:11])
    input RTD_DRDY;   // zim_main.vhd(73[3:11])
    output RTD_SDI;   // zim_main.vhd(74[3:10])
    output RTD_SCLK;   // zim_main.vhd(75[3:11])
    output RTD_CS;   // zim_main.vhd(76[3:9])
    input RTD_SDO;   // zim_main.vhd(77[3:10])
    input ICE_IOT_222;   // zim_main.vhd(80[3:14])
    input ICE_IOT_221;   // zim_main.vhd(81[3:14])
    output AC_ADC_SYNC;   // zim_main.vhd(82[3:14])
    input ICE_IOT_198;   // zim_main.vhd(83[3:14])
    input ICE_IOT_197;   // zim_main.vhd(84[3:14])
    input ICE_IOT_178;   // zim_main.vhd(85[3:14])
    input ICE_IOT_177;   // zim_main.vhd(86[3:14])
    input ICE_IOR_141;   // zim_main.vhd(87[3:14])
    output AMPV_POW;   // zim_main.vhd(90[3:11])
    input ICE_IOL_18B;   // zim_main.vhd(91[3:14])
    input ICE_IOL_14A;   // zim_main.vhd(92[3:14])
    input ICE_IOL_13B;   // zim_main.vhd(93[3:14])
    input ICE_IOL_12B;   // zim_main.vhd(94[3:14])
    input ICE_IOL_12A;   // zim_main.vhd(95[3:14])
    input ICE_IOL_4B;   // zim_main.vhd(96[3:13])
    input ICE_IOL_4A;   // zim_main.vhd(97[3:13])
    input ICE_IOR_140;   // zim_main.vhd(100[3:14])
    input ICE_IOR_120;   // zim_main.vhd(101[3:14])
    input ICE_IOR_119;   // zim_main.vhd(102[3:14])
    input ICE_IOR_118;   // zim_main.vhd(103[3:14])
    output OUT_SYNCCLK;   // zim_main.vhd(106[3:14])
    input ICE_IOB_81;   // zim_main.vhd(107[3:13])
    output STAT_COMM;   // zim_main.vhd(108[3:12])
    input THERMOSTAT;   // zim_main.vhd(109[3:13])
    input ICE_IOB_104;   // zim_main.vhd(112[3:14])
    input ICE_IOB_103;   // zim_main.vhd(113[3:14])
    input ICE_IOB_102;   // zim_main.vhd(114[3:14])
    input ICE_IOB_96;   // zim_main.vhd(115[3:13])
    input ICE_IOB_95;   // zim_main.vhd(116[3:13])
    input ICE_IOB_94;   // zim_main.vhd(117[3:13])
    input ICE_IOB_91;   // zim_main.vhd(118[3:13])
    input ICE_IOB_82;   // zim_main.vhd(119[3:13])
    input ICE_GPMO_1;   // zim_main.vhd(122[3:13])
    input ICE_GPMO_2;   // zim_main.vhd(123[3:13])
    output ICE_GPMI_0;   // zim_main.vhd(124[3:13])
    input ICE_IOR_138;   // zim_main.vhd(126[3:14])
    input ICE_IOR_137;   // zim_main.vhd(127[3:14])
    input ICE_IOR_136;   // zim_main.vhd(128[3:14])
    input ICE_IOR_128;   // zim_main.vhd(129[3:14])
    input ICE_IOR_147;   // zim_main.vhd(130[3:14])
    input ICE_IOR_146;   // zim_main.vhd(131[3:14])
    input ICE_IOR_144;   // zim_main.vhd(132[3:14])
    input ICE_IOR_139;   // zim_main.vhd(133[3:14])
    input ICE_IOR_161;   // zim_main.vhd(135[3:14])
    input ICE_IOR_160;   // zim_main.vhd(136[3:14])
    input ICE_IOR_152;   // zim_main.vhd(137[3:14])
    input ICE_IOR_148;   // zim_main.vhd(138[3:14])
    input ICE_IOR_167;   // zim_main.vhd(139[3:14])
    input ICE_IOR_166;   // zim_main.vhd(140[3:14])
    input ICE_IOR_165;   // zim_main.vhd(141[3:14])
    input ICE_IOR_164;   // zim_main.vhd(142[3:14])
    
    wire TEST_LED /* synthesis SET_AS_NETWORK=TEST_LED, is_clock=1 */ ;   // zim_main.vhd(12[3:11])
    wire DDS_MCLK1 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(14[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(56[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(267[9:16])
    
    wire VCC_net;
    wire [7:0]comm_tx_buf;   // zim_main.vhd(239[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zim_main.vhd(241[9:20])
    wire [3:0]comm_state;   // zim_main.vhd(244[9:19])
    wire [7:0]comm_cmd;   // zim_main.vhd(246[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[1] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[2] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[3] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[4] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[5] ;   // zim_main.vhd(249[9:17])
    wire [7:0]\comm_buf[6] ;   // zim_main.vhd(249[9:17])
    wire [2:0]comm_index;   // zim_main.vhd(250[9:19])
    wire [2:0]comm_length;   // zim_main.vhd(251[9:20])
    wire [7:0]dds0_mclkcnt;   // zim_main.vhd(254[9:21])
    
    wire dds0_mclk;
    wire [15:0]buf_dds0;   // zim_main.vhd(258[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(263[9:17])
    
    wire trig_dds1;
    wire [7:0]clk_cnt;   // zim_main.vhd(268[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(269[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(270[9:20])
    
    wire acadc_trig, acadc_dtrig_i, acadc_dtrig_v;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(279[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(280[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(287[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(288[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(291[9:18])
    
    wire auxmode, tacadc_rst, acadc_rst, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(300[9:21])
    wire [47:0]buf_data_vac;
    wire [9:0]data_count;   // zim_main.vhd(305[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(306[9:20])
    wire [9:0]data_index;   // zim_main.vhd(307[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(308[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(316[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(319[9:20])
    
    wire wdtick_flag, flagcntwd;
    wire [3:0]wdtick_cnt;   // zim_main.vhd(323[9:19])
    wire [31:0]secclk_cnt;   // zim_main.vhd(327[9:19])
    
    wire clk_RTD_N_712, n8, wdtick_flag_N_301, n19392, n9, n9_adj_1415, 
        TEST_LED_N_691, n9_adj_1416, n11363, dds0_mclk_N_705, n19, 
        n21506, iac_raw_buf_N_737, iac_raw_buf_N_735, n340, n341, 
        n342, n343, n344, n345, n346, n347, n348, n349, n352, 
        n353, n354, n355, n356, n357, n358, n359, n360, n361, 
        n362, n363, n364, n365, n366, n367, n403, n404, n405, 
        n406, n407, n408, n409, n410, n411, n412, n413, n414, 
        n415, n416, n417, n418, n20812, n20154, n20156, n20158, 
        n20160, n20162, eis_end_N_725;
    wire [2:0]eis_state_2__N_171;
    
    wire n20164, n21102, n4, n20166, n16, THERMOSTAT_N_470, n21329;
    wire [2:0]comm_state_3__N_436;
    
    wire n20929, n20953, n20809, n20695;
    wire [2:0]comm_index_2__N_447;
    wire [3:0]comm_state_3__N_420;
    
    wire n1272, comm_clear_N_704, ICE_GPMI_0_N_702, n20184, n19808, 
        n19810;
    wire [3:0]comm_state_3__N_9;
    
    wire n19812, n19814, n19816, n19818, n19820, n19822, n19824, 
        n19826, n21324, n19828, n19830, n19832, n19834, n19836, 
        n19838, n19840, n19842, n19844, n19846, n19848, n19910, 
        n19912, n19914, n19916;
    wire [9:0]data_index_9__N_216;
    wire [15:0]data_idxvec_15__N_226;
    
    wire n19918, n19920, n19922, n20584, n23, n17, n20789, n7;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire n13944, n21099, DTRIG_N_919, n19924, n19926, n19928, n21320, 
        n20551;
    wire [2:0]adc_state_adj_1652;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1653;   // adc_ads127.vhd(27[8:20])
    
    wire n20951, n19391, DTRIG_N_919_adj_1451, n19930, n19932, n19934, 
        n30, n20182, n24, n2369, n21094;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1674;   // dds_ad9837.vhd(25[9:16])
    
    wire n19936;
    wire [2:0]dds_state_adj_1676;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1677;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1678;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_973_adj_1682;
    
    wire n19938;
    wire [2:0]dds_state_2__N_925_adj_1684;
    wire [3:0]adc_state_adj_1692;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1693;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n21092, n12242, n30_adj_1480, n19390, n5, n19940, n19942, 
        n19944, n19958, n19960, n19962, n19692, n19694, n19696, 
        n19698, n19700, n19702, n19890, n19688, n20919;
    wire [3:0]adc_state_adj_1697;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n19389, n20020, n20022, n20024, n21297, n21296, n30_adj_1484, 
        n22, n19_adj_1485, n13642, n20026, n20028, n20030, n20032, 
        n20034, n30_adj_1486, n26, n19_adj_1487, n16_adj_1488, n20824, 
        n20833, n22_adj_1489, n12194, n25, n20152, n30_adj_1490, 
        n19_adj_1491, n19388, n19387, n20036, n14794, n15, n45, 
        n44, n43, n42, n41, n40, n39, n38, n10, n20670, n19386, 
        n30_adj_1492, n29, n28, n27, n26_adj_1493, n21, n18, n19359, 
        n25_adj_1494, n23_adj_1495, n16_adj_1496, n19_adj_1497, n26_adj_1498, 
        n17738, n20242, n15853, n19866, n19704, n120, n119, n118, 
        n117, n116, n115, n114, n113, n112, n111, n110, n109, 
        n108, n107, n106, n105, n104, n103, n102, n101, n100, 
        n99, n98, n20244, n30_adj_1499, n14766, n20856, n26_adj_1500, 
        n23_adj_1501, n12312, n20326, n19_adj_1502, n16_adj_1503, 
        n20970, n30_adj_1504, n19358, n15830, n22241, n22238, n22235, 
        n16763, n26_adj_1505, n19908, n17430, n31, n17411, n20879, 
        n19385, n22232, n17409, n19878, n17404, n14, n22229, n21270, 
        n20801, n20883, n12875, n20098, n20889, n22226, n22223, 
        n11354, n14731, n17485, n22220, n20573, n19384, n14_adj_1506, 
        n1, n2, n4_adj_1507, n20038, n16_adj_1508, n19_adj_1509, 
        n20839, n26_adj_1510, n22214, n30_adj_1511, n16_adj_1512, 
        n19_adj_1513, n26_adj_1514, n22211, n16_adj_1515, n19_adj_1516, 
        n26_adj_1517, n30_adj_1518, n16_adj_1519, n19_adj_1520, n21_adj_1521, 
        n26_adj_1522, n30_adj_1523, n16_adj_1524, n17_adj_1525, n19_adj_1526, 
        n20, n23_adj_1527, n22208, n26_adj_1528, n22205, n30_adj_1529, 
        n8_adj_1530, n3, n20884, n13564, n13568, n13572, n13576, 
        n13580, n13584, n7_adj_1531, n8_adj_1532, n22202, n14_adj_1533, 
        n22196, n23_adj_1534, n22193, n30_adj_1535, n23_adj_1536, 
        n22190, n24_adj_1537, n20132, n23_adj_1538, n22184, n22181, 
        n30_adj_1539, n23_adj_1540, n26_adj_1541, n20040, n14090, 
        n19956, n20042, n20917, n22178, n20836, n19357, n22175, 
        n19383, n20881, n22172, n30_adj_1542, n20802, n12244, n22169, 
        n20044, n22166, n22163, n20966, n11, n20608, n20046, n22160, 
        n19382, n22157, n22154, n22151, n20962, n19356, n21073, 
        n21072, n19381, n26_adj_1543, n22148, n22145, n22142, n22139, 
        n21067, n22136, n20957, n22133, n15193, n15192, n15191, 
        n22130, n22127, n22124, n22121, n22118, n22115, n22112, 
        n22109, n22106, n22103, n22100, n22097, n22094, n22091, 
        n22088, n22085, n15190, n15189, n15188, n15187, n15186, 
        n15185, n15184, n15183, n15182, n15181, n15180, n15179, 
        n15178, n15177, n15176, n15175, n15174, n15173, n15172, 
        n15171, n15170, n15169, n15168, n15167, n15166, n15165, 
        n15164, n15163, n15162, n15161, n15160, n15159, n15158, 
        n15157, n15156, n15155, n15154, n15153, n15152, n15151, 
        n15150, n15149, n15148, n15147, n15146, n15145, n15144, 
        n15143, n15142, n15141, n15140, n15139, n15138, n15137, 
        n15136, n15135, n15134, n15133, n15132, n15131, n15130, 
        n15129, n22082, n19380, n14_adj_1544, n22079, n20930, n14_adj_1545, 
        n14_adj_1546, n14_adj_1547, n14_adj_1548, n14_adj_1549, n14_adj_1550, 
        n22076, n22073, n22070, n22067, n22064, n27_adj_1551, n22061, 
        n22058, n22055, n22052, n22049, n20260, n7_adj_1552, n8_adj_1553, 
        n22046, n7_adj_1554, n8_adj_1555, n22043, n7_adj_1556, n8_adj_1557, 
        n7_adj_1558, n8_adj_1559, n20954, n7_adj_1560, n8_adj_1561, 
        n22040, n7_adj_1562, n8_adj_1563, n22037, n7_adj_1564, n8_adj_1565, 
        n7_adj_1566, n8_adj_1567, n13948, n13952, n13956, n13960, 
        n13964, n13968, n13972, n22034, n13976, n13980, n22031, 
        n13984, n13988, n22028, n13992, n22025, n13996, n14000, 
        n20906, n14004, n19379, n14008, n15128, n14012, n15127, 
        n14016, n19378, n14020, n22022, n22_adj_1568, n14024, n19377, 
        n14028, n15126, n14038, n22019, n14042, n14046, n14050, 
        n14545, n14054, n14058, n14062, n14066, n14070, n14074, 
        n14078, n14082, n14094, n14098, n14102, n14106, n14110, 
        n4_adj_1569, n14522, n14_adj_1570, n14_adj_1571, n14_adj_1572, 
        n14_adj_1573, n14_adj_1574, n19376, n15125, n15124, n20138, 
        n14034, n14146, n22016, n2_adj_1575, n19864, n8_adj_1576, 
        n22013, n14_adj_1577, n19375, n19374, n19355, n14_adj_1578, 
        n14_adj_1579, n1_adj_1580, n2_adj_1581, n4_adj_1582, n1_adj_1583, 
        n2_adj_1584, n6, n4_adj_1585, n19353, n19373, n1_adj_1586, 
        n2_adj_1587, n4_adj_1588, n22010, n1_adj_1589, n2_adj_1590, 
        n4_adj_1591, n22007, n14_adj_1592, n4_adj_1593, n10_adj_1594, 
        n20878, n4_adj_1595, n22004, n22001, n20_adj_1596, n13473, 
        n20984, n21230, n14753, n14780, n21998, n15793, n15790, 
        n15788, n15785, n20849, n20983, n20810, n21995, n15782, 
        n19_adj_1597, n21227, n15779, n19764, n15776, n19530, n20596, 
        n19529, n19528, n19527, n19526, n19525, n19524, n15773, 
        n13109, n14730, n19523, n15770, n19522, n19758, n19521, 
        n15767, n20018, n21992, n20014, n19520, n19372, n19519, 
        n15764, n21989, n20599, n15761, n15759, n20663, n21048, 
        n4_adj_1598, n20104, n21986, n15756, n20590, n21983, n20621, 
        n11935, n14671, n12110, n12, n19880, n20797, n21046, n16_adj_1599, 
        n13181, n21_adj_1600, n19882, n19884, n10614, n19518, n12235, 
        n19886, n20742, n19517, n21980, n20136, n19516, n19892, 
        n19515, n19514, n20844, n19513, n19512, n21971, n21038, 
        n1_adj_1601, n19511, n21037, n20010, n20096, n19708, n19510, 
        n19509, n20612, n19508, n20952, n19710, n21968, n19507, 
        n20092, n19712, n21965, n19706, n20006, n19690, n20238, 
        n21204, n19506, n19505, n12_adj_1602, n12663, n19504, n19347, 
        n19351, n19371, n21199, n19503, n19502, n21962, n19806, 
        n19501, n19370, n19346, n21959, n20002, n11_adj_1603, n19500, 
        n20615, n14_adj_1604, n21956, n19714, n11_adj_1605, n14_adj_1606, 
        n9321, n20134, n19499, n9270, n20262, n12108, n20264, 
        n19006, n20840, n20266, n20875, n11420, n20268, n11670, 
        n20270, n11412, n20673, n20272, n20274, n11406, n11977, 
        n11401, n20276, n16_adj_1607, n19608, n20278, n19998, n20280, 
        n8_adj_1608, n20837, n7_adj_1609, n19498, n8828, n20_adj_1610, 
        n19794, n19369, n14801, n19368, n19367, n12534, n19994, 
        n20282, n11377, n19366, n11918, n19365, n18_adj_1611, n20885, 
        n19364, n14773, n19990, n14663, n20284, n17_adj_1612, n20286, 
        n20288, n11931, n20290, n20772, n19407, n20292, n19856, 
        n19986, n20294, n20740, n19982, n10_adj_1613, n20672, n20568, 
        n20296, n20834, n20668, n20905, n20298, n4_adj_1614, n20300, 
        n19406, n20798, n12_adj_1615, n11876, n20302, n13309, n19405, 
        n19978, n20304, n11866, n4_adj_1616, n20306, n20_adj_1617, 
        n15117, n15116, n20681, n20876, n35, n20308, n20575, n12467, 
        n11835, n19974, n20646, n21_adj_1618, n14787, n20310, n15115, 
        n19404, n20312, n25_adj_1619, n20314, n16602, n22_adj_1620, 
        n28_adj_1621, n19403, n24_adj_1622, n12441, n19402, n20316, 
        n19970, n20318, n20697, n15114, n15113, n15112, n20320, 
        n12236, n15111, n15110, n15109, n19401, n19400, n16598, 
        n13, n12411, n20328, n16_adj_1623, n23_adj_1624, n15108, 
        n19399, n12397, n16594, n20330, n12383, n19904, n20332, 
        n14900, n20334, n20336, n11760, n11757, n20338, n20340, 
        n20717, n20342, n19350, n11730, n19_adj_1625, n22_adj_1626, 
        n30_adj_1627, n19345, n20344, n19349, n20754, n21130, n19655, 
        n21129, n20346, n19_adj_1628, n22_adj_1629, n30_adj_1630, 
        n20828, n20348, n20825, n20416, n20350, n20814, n19398, 
        n20543, n20973, n19_adj_1631, n22_adj_1632, n18_adj_1633, 
        n30_adj_1634, n14815, n20352, n19966, n29_adj_1635, n12047, 
        n20354, n19_adj_1636, n22_adj_1637, n19352, n30_adj_1638, 
        n20356, n12_adj_1639, n11503, n26_adj_1640, n20358, n20807, 
        n20362, n10534, n30_adj_1641, n19_adj_1642, n21116, n22_adj_1643, 
        n11869, n30_adj_1644, n20808, n17_adj_1645, n20364, n20366, 
        n20368, n10713, n19397, n19354, n19363, n19348, n19_adj_1646, 
        n19396, n22_adj_1647, n30_adj_1648, n19362, n19395, n19361, 
        n19360, n12_adj_1649, n10733, n12152, n19394, n19393, n14687;
    
    assign VAC_MOSI = IAC_MOSI;   // zim_main.vhd(49[3:11])
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(66[3:10])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(123[3:13])
    VCC i2 (.Y(VCC_net));
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11760), 
            .D(eis_state_2__N_171[0]), .R(acadc_rst));   // zim_main.vhd(448[3] 523[10])
    SB_DFFN dds0_mclk_304 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_705));   // zim_main.vhd(437[3] 443[10])
    SB_DFFE comm_clear_311 (.Q(comm_clear), .C(clk_32MHz), .E(n11377), 
            .D(comm_clear_N_704));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i2_2_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14545));   // zim_main.vhd(530[4] 816[13])
    defparam i2_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY add_74_12 (.CI(n19363), .I0(data_cntvec[10]), .I1(IAC_MOSI), 
            .CO(n19364));
    SB_DFFE comm_response_312 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n11401), 
            .D(ICE_GPMI_0_N_702));   // zim_main.vhd(528[3] 817[10])
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[35:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 add_74_11_lut (.I0(IAC_MOSI), .I1(data_cntvec[9]), .I2(IAC_MOSI), 
            .I3(n19362), .O(n358)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp_adj_1653[1]), .I1(cmd_rdadctmp_adj_1653[0]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20326));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut (.I0(n20551), .I1(n11420), .I2(n12235), .I3(n20717), 
            .O(n20575));
    defparam i1_4_lut.LUT_INIT = 16'h8880;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20575), 
            .D(comm_state_3__N_9[0]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_216[0]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[0]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF clk_RTD_297 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_712));   // zim_main.vhd(386[3] 393[10])
    SB_LUT4 i12_4_lut_adj_46 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19704));   // zim_main.vhd(244[9:19])
    defparam i12_4_lut_adj_46.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_3776_3777_add_4_7 (.CI(n19513), .I0(IAC_MOSI), .I1(secclk_cnt[5]), 
            .CO(n19514));
    SB_LUT4 i12_4_lut_adj_47 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19710));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_47.LUT_INIT = 16'h0aca;
    SB_LUT4 i18892_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(IAC_MOSI), .O(n21506));
    defparam i18892_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i12_4_lut_adj_48 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19708));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_48.LUT_INIT = 16'h0aca;
    SB_LUT4 i19041_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21329));
    defparam i19041_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18267_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n20881));
    defparam i18267_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 mux_143_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1585));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_49 (.I0(cmd_rdadctmp_adj_1693[13]), .I1(cmd_rdadctmp_adj_1693[12]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19830));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_49.LUT_INIT = 16'h0aca;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[43:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 i12_4_lut_adj_50 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19706));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_50.LUT_INIT = 16'h0aca;
    SB_LUT4 i18269_4_lut (.I0(n20881), .I1(n21506), .I2(comm_state[2]), 
            .I3(n14545), .O(n20883));
    defparam i18269_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_0_i15_3_lut (.I0(n20883), .I1(n9321), 
            .I2(comm_state[3]), .I3(IAC_MOSI), .O(comm_state_3__N_9[0]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_353_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp_adj_1693[12]), .I1(cmd_rdadctmp_adj_1693[11]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19828));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'h0aca;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[39:36]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp_adj_1693[11]), .I1(cmd_rdadctmp_adj_1693[10]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19826));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_53 (.I0(cmd_rdadctmp_adj_1653[2]), .I1(cmd_rdadctmp_adj_1653[1]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20328));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_53.LUT_INIT = 16'hca0a;
    SB_CARRY add_131_7 (.CI(n19388), .I0(data_index[5]), .I1(n10614), 
            .CO(n19389));
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp_adj_1653[3]), .I1(cmd_rdadctmp_adj_1653[2]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20330));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_55 (.I0(cmd_rdadctmp_adj_1653[4]), .I1(cmd_rdadctmp_adj_1653[3]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20332));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_55.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_56 (.I0(cmd_rdadctmp_adj_1653[5]), .I1(cmd_rdadctmp_adj_1653[4]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20334));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 add_131_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10614), 
            .I3(n19387), .O(n7_adj_1560)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18846_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20984));
    defparam i18846_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18739_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20983));
    defparam i18739_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19429 (.I0(comm_cmd[1]), .I1(n20983), 
            .I2(n20984), .I3(comm_cmd[2]), .O(n22028));
    defparam comm_cmd_1__bdd_4_lut_19429.LUT_INIT = 16'he4aa;
    SB_DFFN dds0_mclkcnt_i7_3783__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(439[4] 442[11])
    SB_LUT4 i12_4_lut_adj_57 (.I0(cmd_rdadctmp_adj_1653[6]), .I1(cmd_rdadctmp_adj_1653[5]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20336));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1653[7]), .I1(cmd_rdadctmp_adj_1653[6]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20338));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_59 (.I0(cmd_rdadctmp_adj_1653[8]), .I1(cmd_rdadctmp_adj_1653[7]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20340));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_59.LUT_INIT = 16'hca0a;
    SB_LUT4 i9341_1_lut (.I0(wdtick_flag), .I1(IAC_MOSI), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n11757));   // zim_main.vhd(398[3] 409[10])
    defparam i9341_1_lut.LUT_INIT = 16'h5555;
    SB_DFFER wdtick_cnt_3774_3775__i1 (.Q(wdtick_cnt[0]), .C(TEST_LED), 
            .E(n11757), .D(n25_adj_1494), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_60 (.I0(cmd_rdadctmp_adj_1693[10]), .I1(cmd_rdadctmp_adj_1693[9]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19824));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp_adj_1693[9]), .I1(cmd_rdadctmp_adj_1693[8]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19822));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'h0aca;
    SB_LUT4 i15302_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1533));   // zim_main.vhd(530[4] 816[13])
    defparam i15302_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_62 (.I0(cmd_rdadctmp_adj_1653[9]), .I1(cmd_rdadctmp_adj_1653[8]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20342));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'hca0a;
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_725), .C(clk_32MHz), .E(n11760), 
            .D(eis_state_2__N_171[2]), .R(acadc_rst));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp_adj_1693[8]), .I1(cmd_rdadctmp_adj_1693[7]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19820));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_4_lut (.I0(IAC_MOSI), .I1(data_count[2]), .I2(IAC_MOSI), 
            .I3(n19346), .O(n347)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_64 (.I0(comm_cmd[7]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[7]), .O(n19892));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp_adj_1693[7]), .I1(cmd_rdadctmp_adj_1693[6]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19818));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'h0aca;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11760), 
            .D(eis_state_2__N_171[1]), .R(acadc_rst));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i12_4_lut_adj_66 (.I0(cmd_rdadctmp_adj_1693[6]), .I1(cmd_rdadctmp_adj_1693[5]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19816));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_index[2]), .O(n20596));   // zim_main.vhd(559[5] 566[12])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0002;
    SB_LUT4 i12_4_lut_adj_67 (.I0(comm_cmd[6]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[6]), .O(n19890));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'hca0a;
    SB_LUT4 i12694_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9321), .I3(n12441), .O(n15112));   // zim_main.vhd(528[3] 817[10])
    defparam i12694_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_68 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_state[0]), .O(n20621));   // zim_main.vhd(559[5] 566[12])
    defparam i1_2_lut_3_lut_4_lut_adj_68.LUT_INIT = 16'h0002;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_69 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(n11835), .O(n16763));
    defparam i1_2_lut_3_lut_4_lut_adj_69.LUT_INIT = 16'h10ff;
    SB_LUT4 i12_4_lut_adj_70 (.I0(cmd_rdadctmp_adj_1653[10]), .I1(cmd_rdadctmp_adj_1653[9]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20344));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut (.I0(n11354), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8828));   // zim_main.vhd(530[4] 816[13])
    defparam i3_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i13343_4_lut_4_lut (.I0(n11835), .I1(comm_state[3]), .I2(n14_adj_1577), 
            .I3(buf_dds1[13]), .O(n15761));   // zim_main.vhd(528[3] 817[10])
    defparam i13343_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12_4_lut_adj_71 (.I0(cmd_rdadctmp_adj_1653[29]), .I1(cmd_rdadctmp_adj_1653[28]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20164));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_72 (.I0(cmd_rdadctmp_adj_1653[28]), .I1(cmd_rdadctmp_adj_1653[27]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20162));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_LUT4 i13367_4_lut_4_lut (.I0(n11835), .I1(comm_state[3]), .I2(n14_adj_1578), 
            .I3(buf_dds1[5]), .O(n15785));   // zim_main.vhd(528[3] 817[10])
    defparam i13367_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp_adj_1653[27]), .I1(cmd_rdadctmp_adj_1653[26]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20160));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_74 (.I0(cmd_rdadctmp_adj_1653[31]), .I1(cmd_rdadctmp_adj_1653[30]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20182));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_LUT4 i12691_3_lut_4_lut (.I0(buf_dds0[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9321), .I3(n12383), .O(n15109));   // zim_main.vhd(528[3] 817[10])
    defparam i12691_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_134_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n23_adj_1534));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1693[5]), .I1(cmd_rdadctmp_adj_1693[4]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19814));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'h0aca;
    SB_LUT4 i18828_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21048));
    defparam i18828_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1693[4]), .I1(cmd_rdadctmp_adj_1693[3]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19812));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'h0aca;
    SB_LUT4 i12696_3_lut (.I0(auxmode), .I1(\comm_buf[0] [3]), .I2(n10534), 
            .I3(IAC_MOSI), .O(n15114));   // zim_main.vhd(528[3] 817[10])
    defparam i12696_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14180_1_lut_2_lut_3_lut (.I0(eis_end_N_725), .I1(acadc_dtrig_v), 
            .I2(acadc_dtrig_i), .I3(IAC_MOSI), .O(n16598));   // zim_main.vhd(448[3] 523[10])
    defparam i14180_1_lut_2_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_CARRY add_131_6 (.CI(n19387), .I0(data_index[4]), .I1(n10614), 
            .CO(n19388));
    SB_LUT4 add_131_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10614), 
            .I3(n19386), .O(n7_adj_1562)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_74_11 (.CI(n19362), .I0(data_cntvec[9]), .I1(IAC_MOSI), 
            .CO(n19363));
    SB_CARRY add_131_5 (.CI(n19386), .I0(data_index[3]), .I1(n10614), 
            .CO(n19387));
    SB_CARRY add_73_5 (.CI(n19347), .I0(data_count[3]), .I1(IAC_MOSI), 
            .CO(n19348));
    SB_LUT4 i18840_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21038));
    defparam i18840_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 secclk_cnt_3776_3777_add_4_6_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[4]), .I3(n19512), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(DTRIG_N_919_adj_1451), .I1(adc_state_adj_1652[1]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n20584));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY secclk_cnt_3776_3777_add_4_6 (.CI(n19512), .I0(IAC_MOSI), .I1(secclk_cnt[4]), 
            .CO(n19513));
    SB_LUT4 add_74_10_lut (.I0(IAC_MOSI), .I1(data_cntvec[8]), .I2(IAC_MOSI), 
            .I3(n19361), .O(n359)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19065_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21037));
    defparam i19065_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_77 (.I0(comm_cmd[5]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[5]), .O(n19886));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n14522), .I2(n11918), .I3(comm_rx_buf[4]), 
            .O(n19884));   // zim_main.vhd(528[3] 817[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_78 (.I0(comm_cmd[3]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[3]), .O(n19882));   // zim_main.vhd(528[3] 817[10])
    defparam i11_4_lut_adj_78.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_3776_3777_add_4_5_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[3]), .I3(n19511), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_74_10 (.CI(n19361), .I0(data_cntvec[8]), .I1(IAC_MOSI), 
            .CO(n19362));
    SB_LUT4 i12_4_lut_adj_79 (.I0(buf_readRTD[15]), .I1(read_buf[15]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20046));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_134_Mux_7_i16_3_lut (.I0(buf_dds0[15]), .I1(buf_dds1[15]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1524));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14314_3_lut (.I0(VAC_FLT1), .I1(buf_adcdata_iac[23]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n17_adj_1525));   // zim_main.vhd(246[9:17])
    defparam i14314_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22028_bdd_4_lut (.I0(n22028), .I1(n21067), .I2(n23_adj_1538), 
            .I3(comm_cmd[2]), .O(n22031));
    defparam n22028_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_80 (.I0(comm_cmd[2]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[2]), .O(n19880));   // zim_main.vhd(528[3] 817[10])
    defparam i11_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19405 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22022));
    defparam comm_cmd_0__bdd_4_lut_19405.LUT_INIT = 16'he4aa;
    SB_LUT4 i6384_3_lut (.I0(\comm_buf[0] [1]), .I1(data_index[9]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1553));   // zim_main.vhd(530[4] 816[13])
    defparam i6384_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_9_i15_4_lut (.I0(n7_adj_1552), .I1(n8_adj_1553), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[9]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_9_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_81 (.I0(buf_readRTD[14]), .I1(read_buf[14]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20044));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_134_Mux_7_i20_3_lut (.I0(buf_cfgRTD[7]), .I1(buf_readRTD[15]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n20));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_7_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3776_3777_add_4_5 (.CI(n19511), .I0(IAC_MOSI), .I1(secclk_cnt[3]), 
            .CO(n19512));
    SB_LUT4 add_131_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10614), 
            .I3(n19385), .O(n7_adj_1564)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 secclk_cnt_3776_3777_add_4_4_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[2]), .I3(n19510), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_82 (.I0(buf_readRTD[13]), .I1(read_buf[13]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20042));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'h0aca;
    SB_LUT4 n22022_bdd_4_lut (.I0(n22022), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22025));
    defparam n22022_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2_3_lut (.I0(n3), .I1(n2369), .I2(n20681), .I3(IAC_MOSI), 
            .O(n19655));
    defparam i2_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i6394_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1555));   // zim_main.vhd(530[4] 816[13])
    defparam i6394_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_83 (.I0(comm_cmd[1]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[1]), .O(n19878));   // zim_main.vhd(528[3] 817[10])
    defparam i11_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_84 (.I0(n20551), .I1(n19655), .I2(n12235), .I3(n4_adj_1598), 
            .O(n20573));
    defparam i1_4_lut_adj_84.LUT_INIT = 16'h8880;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_readRTD[12]), .I1(read_buf[12]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20040));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 i6849_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n9270));   // zim_main.vhd(530[4] 816[13])
    defparam i6849_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY secclk_cnt_3776_3777_add_4_4 (.CI(n19510), .I0(IAC_MOSI), .I1(secclk_cnt[2]), 
            .CO(n19511));
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_index[2]), .I1(comm_index[1]), .I2(n20621), 
            .I3(IAC_MOSI), .O(n19006));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i1_2_lut_3_lut_adj_86 (.I0(n12242), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(IAC_MOSI), .O(n20599));
    defparam i1_2_lut_3_lut_adj_86.LUT_INIT = 16'ha8a8;
    SB_LUT4 comm_state_3__I_0_365_Mux_8_i15_4_lut (.I0(n7_adj_1554), .I1(n8_adj_1555), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[8]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19395 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22016));
    defparam comm_cmd_0__bdd_4_lut_19395.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_87 (.I0(buf_readRTD[11]), .I1(read_buf[11]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20038));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'h0aca;
    SB_LUT4 i18822_2_lut (.I0(comm_state_3__N_420[3]), .I1(comm_state[0]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n21199));   // zim_main.vhd(530[4] 816[13])
    defparam i18822_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_74_9_lut (.I0(IAC_MOSI), .I1(data_cntvec[7]), .I2(IAC_MOSI), 
            .I3(n19360), .O(n360)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_353_Mux_3_i7_4_lut (.I0(n14146), .I1(n20668), 
            .I2(comm_state[2]), .I3(n14545), .O(n17738));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_353_Mux_3_i7_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_state_3__I_0_353_Mux_3_i15_4_lut (.I0(n17738), .I1(n21199), 
            .I2(comm_state[3]), .I3(n9321), .O(comm_state_3__N_9[3]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_353_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_4_lut_adj_88 (.I0(n12242), .I1(n11869), .I2(n9270), .I3(n12235), 
            .O(n11876));
    defparam i1_4_lut_adj_88.LUT_INIT = 16'h8880;
    SB_LUT4 n22016_bdd_4_lut (.I0(n22016), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n22019));
    defparam n22016_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_readRTD[10]), .I1(read_buf[10]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20036));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19400 (.I0(comm_cmd[1]), .I1(n19_adj_1509), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22010));
    defparam comm_cmd_1__bdd_4_lut_19400.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_90 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20034));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'h0aca;
    SB_LUT4 n22010_bdd_4_lut (.I0(n22010), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1508), 
            .I3(comm_cmd[2]), .O(n22013));
    defparam n22010_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19385 (.I0(comm_cmd[1]), .I1(n19_adj_1487), 
            .I2(buf_readRTD[0]), .I3(comm_cmd[2]), .O(n22004));
    defparam comm_cmd_1__bdd_4_lut_19385.LUT_INIT = 16'he4aa;
    SB_LUT4 n22004_bdd_4_lut (.I0(n22004), .I1(buf_adcdata_iac[8]), .I2(n16_adj_1488), 
            .I3(comm_cmd[2]), .O(n22007));
    defparam n22004_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18970_2_lut (.I0(comm_state[2]), .I1(comm_cmd[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21073));   // zim_main.vhd(528[3] 817[10])
    defparam i18970_2_lut.LUT_INIT = 16'h8888;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:44]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 i15263_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1544));   // zim_main.vhd(530[4] 816[13])
    defparam i15263_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged10 (.RDATA({buf_data_vac[7:4]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_CARRY add_131_4 (.CI(n19385), .I0(data_index[2]), .I1(n10614), 
            .CO(n19386));
    SB_LUT4 i18852_4_lut (.I0(n21073), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_state[3]), .O(n21072));   // zim_main.vhd(528[3] 817[10])
    defparam i18852_4_lut.LUT_INIT = 16'h0080;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged8 (.RDATA({buf_data_vac[15:12]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20032));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'h0aca;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[27:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_216}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_735), 
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
    SB_LUT4 i12_4_lut_adj_92 (.I0(comm_length[2]), .I1(n21072), .I2(n11876), 
            .I3(comm_cmd[0]), .O(n19794));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_5_lut (.I0(IAC_MOSI), .I1(data_count[3]), .I2(IAC_MOSI), 
            .I3(n19347), .O(n346)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_74_9 (.CI(n19360), .I0(data_cntvec[7]), .I1(IAC_MOSI), 
            .CO(n19361));
    SB_LUT4 add_131_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10614), 
            .I3(n19384), .O(n7_adj_1566)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_135_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13372_4_lut_4_lut (.I0(n11835), .I1(comm_state[3]), .I2(n14_adj_1579), 
            .I3(buf_dds1[3]), .O(n15790));   // zim_main.vhd(528[3] 817[10])
    defparam i13372_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp_adj_1653[11]), .I1(cmd_rdadctmp_adj_1653[10]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20346));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_LUT4 i13338_4_lut (.I0(n16763), .I1(buf_dds1[15]), .I2(\comm_buf[0] [7]), 
            .I3(n11835), .O(n15756));   // zim_main.vhd(528[3] 817[10])
    defparam i13338_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_94 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20030));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'h0aca;
    SB_LUT4 i13341_4_lut (.I0(n16763), .I1(buf_dds1[14]), .I2(\comm_buf[0] [6]), 
            .I3(n11835), .O(n15759));   // zim_main.vhd(528[3] 817[10])
    defparam i13341_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 equal_194_i9_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n9));   // zim_main.vhd(771[11:20])
    defparam equal_194_i9_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19380 (.I0(comm_cmd[1]), .I1(n26), .I2(n20973), 
            .I3(comm_cmd[2]), .O(n21998));
    defparam comm_cmd_1__bdd_4_lut_19380.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_95 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20028));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_96 (.I0(comm_cmd[2]), .I1(comm_state_3__N_436[2]), 
            .I2(n30_adj_1480), .I3(comm_cmd[1]), .O(comm_state_3__N_420[3]));   // zim_main.vhd(747[5] 803[14])
    defparam i1_4_lut_adj_96.LUT_INIT = 16'hc0c4;
    SB_LUT4 i6404_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1557));   // zim_main.vhd(530[4] 816[13])
    defparam i6404_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_97 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20184));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_97.LUT_INIT = 16'h4444;
    SB_LUT4 comm_state_3__I_0_365_Mux_7_i15_4_lut (.I0(n7_adj_1556), .I1(n8_adj_1557), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[7]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6414_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1559));   // zim_main.vhd(530[4] 816[13])
    defparam i6414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_6_i15_4_lut (.I0(n7_adj_1558), .I1(n8_adj_1559), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[6]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13346_4_lut (.I0(n16763), .I1(buf_dds1[12]), .I2(\comm_buf[0] [4]), 
            .I3(n11835), .O(n15764));   // zim_main.vhd(528[3] 817[10])
    defparam i13346_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12697_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n10534), 
            .I3(IAC_MOSI), .O(n15115));   // zim_main.vhd(528[3] 817[10])
    defparam i12697_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15012_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n17411));
    defparam i15012_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15014_4_lut (.I0(n17409), .I1(n17411), .I2(comm_state[3]), 
            .I3(n9321), .O(data_index_9__N_216[5]));   // zim_main.vhd(244[9:19])
    defparam i15014_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6434_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1561));   // zim_main.vhd(530[4] 816[13])
    defparam i6434_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_4_i15_4_lut (.I0(n7_adj_1560), .I1(n8_adj_1561), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[4]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n21998_bdd_4_lut (.I0(n21998), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22001));
    defparam n21998_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6444_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1563));   // zim_main.vhd(530[4] 816[13])
    defparam i6444_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_3_i15_4_lut (.I0(n7_adj_1562), .I1(n8_adj_1563), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[3]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12698_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10534), 
            .I3(IAC_MOSI), .O(n15116));   // zim_main.vhd(528[3] 817[10])
    defparam i12698_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13349_4_lut (.I0(n16763), .I1(buf_dds1[11]), .I2(\comm_buf[0] [3]), 
            .I3(n11835), .O(n15767));   // zim_main.vhd(528[3] 817[10])
    defparam i13349_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 add_74_8_lut (.I0(IAC_MOSI), .I1(data_cntvec[6]), .I2(IAC_MOSI), 
            .I3(n19359), .O(n361)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(comm_state[0]), .O(n7_adj_1609));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i469_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n2369));   // zim_main.vhd(559[5] 566[12])
    defparam i469_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20026));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 i13352_4_lut (.I0(n16763), .I1(buf_dds1[10]), .I2(\comm_buf[0] [2]), 
            .I3(n11835), .O(n15770));   // zim_main.vhd(528[3] 817[10])
    defparam i13352_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 secclk_cnt_3776_3777_add_4_3_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[1]), .I3(n19509), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_131_3 (.CI(n19384), .I0(data_index[1]), .I1(n10614), 
            .CO(n19385));
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14_adj_1506), 
            .D(comm_state_3__N_9[1]));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20024));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 i13355_4_lut (.I0(n16763), .I1(buf_dds1[9]), .I2(\comm_buf[0] [1]), 
            .I3(n11835), .O(n15773));   // zim_main.vhd(528[3] 817[10])
    defparam i13355_4_lut.LUT_INIT = 16'ha088;
    SB_CARRY add_74_8 (.CI(n19359), .I0(data_cntvec[6]), .I1(IAC_MOSI), 
            .CO(n19360));
    SB_LUT4 add_74_7_lut (.I0(IAC_MOSI), .I1(data_cntvec[5]), .I2(IAC_MOSI), 
            .I3(n19358), .O(n362)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_131_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10614), 
            .I3(VCC_net), .O(n7_adj_1531)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY secclk_cnt_3776_3777_add_4_3 (.CI(n19509), .I0(IAC_MOSI), .I1(secclk_cnt[1]), 
            .CO(n19510));
    SB_CARRY add_74_7 (.CI(n19358), .I0(data_cntvec[5]), .I1(IAC_MOSI), 
            .CO(n19359));
    SB_LUT4 secclk_cnt_3776_3777_add_4_2_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_131_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10614), 
            .CO(n19384));
    SB_CARRY secclk_cnt_3776_3777_add_4_2 (.CI(VCC_net), .I0(IAC_MOSI), 
            .I1(secclk_cnt[0]), .CO(n19509));
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n20573), 
            .D(comm_state_3__N_9[3]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_216[1]));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i13358_4_lut (.I0(n16763), .I1(buf_dds1[8]), .I2(\comm_buf[0] [0]), 
            .I3(n11835), .O(n15776));   // zim_main.vhd(528[3] 817[10])
    defparam i13358_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_100 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20022));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'h0aca;
    SB_LUT4 i13361_4_lut (.I0(n16763), .I1(buf_dds1[7]), .I2(\comm_buf[1] [7]), 
            .I3(n11835), .O(n15779));   // zim_main.vhd(528[3] 817[10])
    defparam i13361_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i19055_4_lut (.I0(ICE_SPI_CE0), .I1(comm_state[1]), .I2(n2369), 
            .I3(comm_state[2]), .O(n21130));
    defparam i19055_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i13364_4_lut (.I0(n16763), .I1(buf_dds1[6]), .I2(\comm_buf[1] [6]), 
            .I3(n11835), .O(n15782));   // zim_main.vhd(528[3] 817[10])
    defparam i13364_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i15253_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1570));   // zim_main.vhd(530[4] 816[13])
    defparam i15253_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 clk_cnt_3772_3773_add_4_6_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(clk_cnt[4]), .I3(n19508), .O(n26_adj_1493)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3772_3773_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19149_4_lut (.I0(comm_state[3]), .I1(n21129), .I2(n21130), 
            .I3(comm_state[0]), .O(n14_adj_1506));
    defparam i19149_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp_adj_1653[12]), .I1(cmd_rdadctmp_adj_1653[11]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20348));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_216[2]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_216[3]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_216[4]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_216[5]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_216[6]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_216[7]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_216[8]));   // zim_main.vhd(528[3] 817[10])
    SB_DFF data_index_i9 (.Q(data_index[9]), .C(clk_32MHz), .D(data_index_9__N_216[9]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[1]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[2]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[3]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[4]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[5]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[6]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[7]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[8]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[9]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[10]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[11]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[12]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[13]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[14]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12312), 
            .D(data_idxvec_15__N_226[15]));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i3898_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(comm_index[1]), .O(comm_index_2__N_447[1]));   // zim_main.vhd(712[5] 722[12])
    defparam i3898_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19390 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(eis_start), .I3(comm_cmd[1]), .O(n21992));
    defparam comm_cmd_0__bdd_4_lut_19390.LUT_INIT = 16'he4aa;
    SB_LUT4 i13370_4_lut (.I0(n16763), .I1(buf_dds1[4]), .I2(\comm_buf[1] [4]), 
            .I3(n11835), .O(n15788));   // zim_main.vhd(528[3] 817[10])
    defparam i13370_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i6454_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1565));   // zim_main.vhd(530[4] 816[13])
    defparam i6454_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_state[1]), .I1(n10733), .I2(n20663), 
            .I3(comm_state[2]), .O(n10614));   // zim_main.vhd(530[4] 816[13])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 comm_state_3__I_0_365_Mux_2_i15_4_lut (.I0(n7_adj_1564), .I1(n8_adj_1565), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[2]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_102 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(IAC_MOSI), .O(n14_adj_1577));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_3_lut_adj_102.LUT_INIT = 16'h1010;
    SB_LUT4 i6464_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1567));   // zim_main.vhd(530[4] 816[13])
    defparam i6464_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_1_i15_4_lut (.I0(n7_adj_1566), .I1(n8_adj_1567), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[1]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20020));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'h0aca;
    SB_LUT4 i4419_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8828), 
            .I3(IAC_MOSI), .O(n8_adj_1532));   // zim_main.vhd(530[4] 816[13])
    defparam i4419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_365_Mux_0_i15_4_lut (.I0(n7_adj_1531), .I1(n8_adj_1532), 
            .I2(comm_state[3]), .I3(n9321), .O(data_index_9__N_216[0]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_365_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6988_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n9321));   // zim_main.vhd(530[4] 816[13])
    defparam i6988_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_104 (.I0(n16763), .I1(buf_dds1[2]), .I2(\comm_buf[1] [2]), 
            .I3(n11835), .O(n15793));   // zim_main.vhd(244[9:19])
    defparam i1_4_lut_adj_104.LUT_INIT = 16'ha088;
    SB_LUT4 i1_2_lut_adj_105 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20681));
    defparam i1_2_lut_adj_105.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_adj_106 (.I0(n16763), .I1(buf_dds1[1]), .I2(\comm_buf[1] [1]), 
            .I3(n11835), .O(n16_adj_1607));   // zim_main.vhd(244[9:19])
    defparam i1_4_lut_adj_106.LUT_INIT = 16'ha088;
    SB_LUT4 i18129_4_lut (.I0(acadc_rst), .I1(eis_state[0]), .I2(eis_end_N_725), 
            .I3(eis_state[1]), .O(n20742));
    defparam i18129_4_lut.LUT_INIT = 16'heefa;
    SB_LUT4 clk_cnt_3772_3773_add_4_5_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(clk_cnt[3]), .I3(n19507), .O(n27)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3772_3773_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15254_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1571));   // zim_main.vhd(530[4] 816[13])
    defparam i15254_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15255_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1572));   // zim_main.vhd(530[4] 816[13])
    defparam i15255_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15256_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1573));   // zim_main.vhd(530[4] 816[13])
    defparam i15256_2_lut_3_lut.LUT_INIT = 16'h0202;
    SPI_SLAVE comm_spi (.comm_rx_buf({comm_rx_buf}), .GND_net(IAC_MOSI), 
            .comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), .comm_clear(comm_clear), 
            .comm_tx_buf({comm_tx_buf}), .VCC_net(VCC_net), .ICE_SPI_MOSI(ICE_SPI_MOSI), 
            .ICE_SPI_SCLK(ICE_SPI_SCLK), .ICE_SPI_MISO(ICE_SPI_MISO));   // zim_main.vhd(830[13:22])
    SB_LUT4 i19053_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21094));
    defparam i19053_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 i12_4_lut_adj_107 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20018));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20014));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp_adj_1653[13]), .I1(cmd_rdadctmp_adj_1653[12]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20350));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_110 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20010));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11730), 
            .I3(adc_state_adj_1697[2]), .O(n20098));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20096));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_353_Mux_1_i15_4_lut (.I0(n22241), .I1(n8_adj_1576), 
            .I2(comm_state[3]), .I3(n9321), .O(comm_state_3__N_9[1]));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_353_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp_adj_1693[3]), .I1(cmd_rdadctmp_adj_1693[2]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19810));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_114 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20006));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 i15257_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1574));   // zim_main.vhd(530[4] 816[13])
    defparam i15257_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_115 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n20002));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_116 (.I0(cmd_rdadctmp_adj_1693[2]), .I1(cmd_rdadctmp_adj_1693[1]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19808));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'h0aca;
    SB_LUT4 i15087_2_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n17485));   // zim_main.vhd(530[4] 816[13])
    defparam i15087_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_117 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19994));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_118 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19990));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_119 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19986));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_134_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1541));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18223_4_lut (.I0(n26_adj_1541), .I1(buf_data_vac[39]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20837));
    defparam i18223_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18885_2_lut_3_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(IAC_MOSI), .O(n21129));
    defparam i18885_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n21992_bdd_4_lut (.I0(n21992), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n21995));
    defparam n21992_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_19489 (.I0(comm_index[1]), .I1(n4_adj_1585), 
            .I2(n21329), .I3(comm_index[2]), .O(n21986));
    defparam comm_index_1__bdd_4_lut_19489.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_120 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19982));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hca0a;
    SB_LUT4 n21986_bdd_4_lut (.I0(n21986), .I1(n2_adj_1584), .I2(n1_adj_1583), 
            .I3(comm_index[2]), .O(n21989));
    defparam n21986_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15266_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1545));   // zim_main.vhd(530[4] 816[13])
    defparam i15266_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_121 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19978));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n10733));   // zim_main.vhd(761[11:20])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i12_4_lut_adj_122 (.I0(cmd_rdadctmp_adj_1693[1]), .I1(cmd_rdadctmp_adj_1693[0]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19806));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_123 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19974));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_134_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n23_adj_1540));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_124 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19970));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_LUT4 i18222_4_lut (.I0(n23_adj_1540), .I1(req_data_cnt[11]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20836));
    defparam i18222_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 acadc_rst_I_0_1_lut (.I0(acadc_rst), .I1(IAC_MOSI), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(AC_ADC_SYNC));   // zim_main.vhd(348[18:31])
    defparam acadc_rst_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i18262_4_lut (.I0(data_idxvec[13]), .I1(buf_data_vac[43]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20876));
    defparam i18262_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 mux_134_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n23_adj_1536));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18261_4_lut (.I0(n23_adj_1536), .I1(req_data_cnt[13]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20875));
    defparam i18261_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd_rdadctmp_adj_1653[14]), .I1(cmd_rdadctmp_adj_1653[13]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20352));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_126 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19966));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i15258_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1546));   // zim_main.vhd(530[4] 816[13])
    defparam i15258_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11728_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14146));   // zim_main.vhd(530[4] 816[13])
    defparam i11728_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15259_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1547));   // zim_main.vhd(530[4] 816[13])
    defparam i15259_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_353_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1272), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2_adj_1575));   // zim_main.vhd(809[5] 811[12])
    defparam comm_state_3__I_0_353_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i12_4_lut_adj_127 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n20092));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_353_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1272), .I2(comm_state[0]), .I3(comm_state_3__N_420[3]), 
            .O(n8_adj_1576));   // zim_main.vhd(809[5] 811[12])
    defparam comm_state_3__I_0_353_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    SB_LUT4 i18210_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20824));
    defparam i18210_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18728_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20973));
    defparam i18728_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15244_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1578));   // zim_main.vhd(530[4] 816[13])
    defparam i15244_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY clk_cnt_3772_3773_add_4_5 (.CI(n19507), .I0(IAC_MOSI), .I1(clk_cnt[3]), 
            .CO(n19508));
    SB_LUT4 add_74_6_lut (.I0(IAC_MOSI), .I1(data_cntvec[4]), .I2(IAC_MOSI), 
            .I3(n19357), .O(n363)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 clk_cnt_3772_3773_add_4_4_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(clk_cnt[2]), .I3(n19506), .O(n28)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3772_3773_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_79_17_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[15]), .I2(IAC_MOSI), 
            .I3(n19383), .O(n403)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18211_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20825));
    defparam i18211_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY clk_cnt_3772_3773_add_4_4 (.CI(n19506), .I0(IAC_MOSI), .I1(clk_cnt[2]), 
            .CO(n19507));
    SB_LUT4 i18220_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20834));
    defparam i18220_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut_19366 (.I0(comm_index[1]), .I1(n4_adj_1507), 
            .I2(n20970), .I3(comm_index[2]), .O(n21980));
    defparam comm_index_1__bdd_4_lut_19366.LUT_INIT = 16'he4aa;
    SB_CARRY add_74_6 (.CI(n19357), .I0(data_cntvec[4]), .I1(IAC_MOSI), 
            .CO(n19358));
    SB_LUT4 i18219_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n20833));
    defparam i18219_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21980_bdd_4_lut (.I0(n21980), .I1(n2), .I2(n1), .I3(comm_index[2]), 
            .O(n21983));
    defparam n21980_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15260_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1548));   // zim_main.vhd(530[4] 816[13])
    defparam i15260_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15030_2_lut_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(CONT_SD));   // zim_main.vhd(375[13:59])
    defparam i15030_2_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_135_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1512));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18264_3_lut (.I0(n16_adj_1512), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20878));
    defparam i18264_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_135_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1513));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15243_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1579));   // zim_main.vhd(530[4] 816[13])
    defparam i15243_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i18265_3_lut (.I0(n19_adj_1513), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20879));
    defparam i18265_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd_rdadctmp_adj_1693[0]), .I1(VDC_SDO), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19866));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'h0aca;
    SB_LUT4 i15261_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1549));   // zim_main.vhd(530[4] 816[13])
    defparam i15261_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_135_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1488));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15262_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n14_adj_1550));   // zim_main.vhd(530[4] 816[13])
    defparam i15262_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.I0(comm_state[0]), .I1(comm_state_3__N_436[2]), 
            .I2(n20681), .I3(comm_state[1]), .O(n12108));   // zim_main.vhd(747[5] 803[14])
    defparam i1_2_lut_3_lut_4_lut_adj_129.LUT_INIT = 16'hfff4;
    SB_LUT4 i12760_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9321), .I3(n12441), .O(n15178));   // zim_main.vhd(528[3] 817[10])
    defparam i12760_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_130 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(IAC_MOSI), .O(n19904));   // zim_main.vhd(528[3] 817[10])
    defparam i1_2_lut_3_lut_adj_130.LUT_INIT = 16'he0e0;
    SB_LUT4 mux_133_Mux_1_i30_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n30_adj_1542));   // zim_main.vhd(583[5] 688[14])
    defparam mux_133_Mux_1_i30_4_lut_4_lut.LUT_INIT = 16'hfb6b;
    SB_LUT4 mux_135_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1514));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_135_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1487));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18271_4_lut (.I0(n26_adj_1514), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20885));
    defparam i18271_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut (.I0(adress[6]), .I1(adress[5]), .I2(n13181), .I3(n20754), 
            .O(n19700));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_1__bdd_4_lut_19361 (.I0(comm_index[1]), .I1(n4_adj_1582), 
            .I2(n20966), .I3(comm_index[2]), .O(n21968));
    defparam comm_index_1__bdd_4_lut_19361.LUT_INIT = 16'he4aa;
    SB_LUT4 i13_4_lut_adj_131 (.I0(adress[5]), .I1(adress[4]), .I2(n13181), 
            .I3(n20754), .O(n19698));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state_3__N_436[2]), 
            .I2(n20681), .I3(comm_state[1]), .O(n11869));   // zim_main.vhd(747[5] 803[14])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf0f4;
    SB_LUT4 clk_cnt_3772_3773_add_4_3_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(clk_cnt[1]), .I3(n19505), .O(n29)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3772_3773_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY clk_cnt_3772_3773_add_4_3 (.CI(n19505), .I0(IAC_MOSI), .I1(clk_cnt[1]), 
            .CO(n19506));
    SB_LUT4 i18270_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(IAC_MOSI), .O(n20884));
    defparam i18270_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(cmd_rdadctmp_adj_1653[15]), .I1(cmd_rdadctmp_adj_1653[14]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20354));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'hca0a;
    SB_LUT4 i13_4_lut_adj_133 (.I0(adress[4]), .I1(adress[3]), .I2(n13181), 
            .I3(n20754), .O(n19696));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_135_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1508));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_135_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1509));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp_adj_1653[16]), .I1(cmd_rdadctmp_adj_1653[15]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20356));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'hca0a;
    SB_LUT4 i13_4_lut_adj_135 (.I0(adress[3]), .I1(adress[2]), .I2(n13181), 
            .I3(n20754), .O(n19694));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i19021_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21297));
    defparam i19021_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_135_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1498));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13412_3_lut (.I0(n14900), .I1(bit_cnt_adj_1674[0]), .I2(dds_state[1]), 
            .I3(IAC_MOSI), .O(n15830));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13412_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i13_4_lut_adj_136 (.I0(adress[2]), .I1(adress[1]), .I2(n13181), 
            .I3(n20754), .O(n19692));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_136.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_137 (.I0(IAC_CS), .I1(adc_state_adj_1652[1]), .I2(DTRIG_N_919_adj_1451), 
            .I3(adc_state_adj_1652[0]), .O(n14_adj_1604));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_137.LUT_INIT = 16'h4554;
    SB_LUT4 n21968_bdd_4_lut (.I0(n21968), .I1(n2_adj_1581), .I2(n1_adj_1580), 
            .I3(comm_index[2]), .O(n21971));
    defparam n21968_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19424 (.I0(comm_cmd[2]), .I1(n20929), 
            .I2(n20930), .I3(comm_cmd[3]), .O(n21962));
    defparam comm_cmd_2__bdd_4_lut_19424.LUT_INIT = 16'he4aa;
    SB_LUT4 n21962_bdd_4_lut (.I0(n21962), .I1(n20954), .I2(n20953), .I3(comm_cmd[3]), 
            .O(n21965));
    defparam n21962_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19375 (.I0(comm_cmd[1]), .I1(n19_adj_1516), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n21956));
    defparam comm_cmd_1__bdd_4_lut_19375.LUT_INIT = 16'he4aa;
    SB_LUT4 n21956_bdd_4_lut (.I0(n21956), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1515), 
            .I3(comm_cmd[2]), .O(n21959));
    defparam n21956_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19156_4_lut (.I0(IAC_DRDY), .I1(n14_adj_1604), .I2(n20612), 
            .I3(adc_state_adj_1652[0]), .O(n11_adj_1603));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19156_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 mux_134_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n23_adj_1538));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_3_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(IAC_MOSI), .O(n10_adj_1613));
    defparam i17_3_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1653[0]), .I1(IAC_MISO), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20244));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_143_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n1_adj_1586));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n21_adj_1600));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h2208;
    SB_LUT4 i18827_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21067));
    defparam i18827_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1653[30]), .I1(cmd_rdadctmp_adj_1653[29]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20166));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_143_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n2_adj_1587));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(IAC_MOSI), .O(DDS_MCLK));   // zim_main.vhd(352[15:65])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18141_2_lut (.I0(adc_state_adj_1697[3]), .I1(adc_state_adj_1697[1]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n20754));
    defparam i18141_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_adj_140 (.I0(VAC_CS), .I1(adc_state[1]), .I2(DTRIG_N_919), 
            .I3(adc_state[0]), .O(n14_adj_1606));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_140.LUT_INIT = 16'h4554;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1653[26]), .I1(cmd_rdadctmp_adj_1653[25]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20158));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1653[25]), .I1(cmd_rdadctmp_adj_1653[24]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20156));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 i24_4_lut (.I0(eis_state[0]), .I1(iac_raw_buf_N_737), .I2(eis_end_N_725), 
            .I3(eis_state[1]), .O(n17_adj_1645));   // zim_main.vhd(291[9:18])
    defparam i24_4_lut.LUT_INIT = 16'h5aca;
    SB_LUT4 i1_4_lut_adj_143 (.I0(n16602), .I1(n17_adj_1645), .I2(eis_state[1]), 
            .I3(eis_state[0]), .O(eis_state_2__N_171[1]));   // zim_main.vhd(291[9:18])
    defparam i1_4_lut_adj_143.LUT_INIT = 16'hccdc;
    SB_LUT4 i19159_4_lut (.I0(VAC_DRDY), .I1(n14_adj_1606), .I2(n20615), 
            .I3(adc_state[0]), .O(n11_adj_1605));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19159_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i2_4_lut (.I0(n8), .I1(comm_state[0]), .I2(n11354), .I3(comm_state[3]), 
            .O(n10534));
    defparam i2_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i12759_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9321), .I3(n12441), .O(n15177));   // zim_main.vhd(528[3] 817[10])
    defparam i12759_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13_4_lut_adj_144 (.I0(adress[1]), .I1(adress[0]), .I2(n13181), 
            .I3(n20754), .O(n19690));   // adc_max31865.vhd(38[3] 148[10])
    defparam i13_4_lut_adj_144.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_145 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19962));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_146 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19958));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'h0aca;
    SB_LUT4 i12699_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n10534), 
            .I3(IAC_MOSI), .O(n15117));   // zim_main.vhd(528[3] 817[10])
    defparam i12699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18721_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21324));
    defparam i18721_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_4_lut (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), .I2(dds0_mclkcnt[3]), 
            .I3(dds0_mclkcnt[1]), .O(n12));   // zim_main.vhd(439[7:27])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFN dds0_mclkcnt_i7_3783__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(439[4] 442[11])
    SB_LUT4 mux_143_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1588));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_147 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19956));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_148 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19944));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3783__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(439[4] 442[11])
    SB_DFFN dds0_mclkcnt_i7_3783__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42));   // zim_main.vhd(439[4] 442[11])
    SB_DFFN dds0_mclkcnt_i7_3783__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(439[4] 442[11])
    SB_DFFN dds0_mclkcnt_i7_3783__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(439[4] 442[11])
    SB_DFFN dds0_mclkcnt_i7_3783__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(439[4] 442[11])
    SB_DFFN dds0_mclkcnt_i7_3783__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(439[4] 442[11])
    SB_DFFSR clk_cnt_3772_3773__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n29), 
            .R(n14730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3772_3773__i3 (.Q(clk_cnt[2]), .C(clk_16MHz), .D(n28), 
            .R(n14730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i1_2_lut_adj_149 (.I0(adc_state[1]), .I1(DTRIG_N_919), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20615));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_149.LUT_INIT = 16'h2222;
    SB_LUT4 clk_cnt_3772_3773_add_4_2_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(clk_cnt[0]), .I3(VCC_net), .O(n30_adj_1492)) /* synthesis syn_instantiated=1 */ ;
    defparam clk_cnt_3772_3773_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_cnt_3772_3773__i4 (.Q(clk_cnt[3]), .C(clk_16MHz), .D(n27), 
            .R(n14730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR clk_cnt_3772_3773__i5 (.Q(clk_cnt[4]), .C(clk_16MHz), .D(n26_adj_1493), 
            .R(n14730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3774_3775__i2 (.Q(wdtick_cnt[1]), .C(TEST_LED), 
            .E(n11757), .D(n20416), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3774_3775__i3 (.Q(wdtick_cnt[2]), .C(TEST_LED), 
            .E(n11757), .D(n23_adj_1495), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3776_3777__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_150 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19942));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'h0aca;
    SB_LUT4 equal_67_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n14));   // zim_main.vhd(473[10:41])
    defparam equal_67_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20_adj_1617));   // zim_main.vhd(473[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp[0]), .I1(VAC_MISO), .I2(n12534), 
            .I3(adc_state[0]), .O(n20242));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24_adj_1537));   // zim_main.vhd(473[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12758_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9321), .I2(\comm_buf[0] [5]), 
            .I3(n12441), .O(n15176));   // zim_main.vhd(528[3] 817[10])
    defparam i12758_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12_4_lut_adj_152 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19940));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'h0aca;
    SB_LUT4 i12757_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9321), .I3(n12441), .O(n15175));   // zim_main.vhd(528[3] 817[10])
    defparam i12757_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_153 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19938));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'h0aca;
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22_adj_1620));   // zim_main.vhd(473[10:41])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_154 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19936));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 i12756_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9321), .I3(n12441), .O(n15174));   // zim_main.vhd(528[3] 817[10])
    defparam i12756_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[14]), .O(n23_adj_1624));   // zim_main.vhd(473[10:41])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_3_lut (.I0(comm_state[2]), .I1(comm_index[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n8_adj_1530));   // zim_main.vhd(528[3] 817[10])
    defparam i3_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i12755_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9321), .I3(n12441), .O(n15173));   // zim_main.vhd(528[3] 817[10])
    defparam i12755_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_155 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19934));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_156 (.I0(n12242), .I1(n7), .I2(comm_state[3]), 
            .I3(n8_adj_1530), .O(n12244));
    defparam i1_4_lut_adj_156.LUT_INIT = 16'ha8a0;
    SB_LUT4 i12_4_lut_adj_157 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19932));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19702));   // zim_main.vhd(244[9:19])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19930));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp_adj_1653[18]), .I1(cmd_rdadctmp_adj_1653[17]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20362));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_161 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19928));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1653[19]), .I1(cmd_rdadctmp_adj_1653[18]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20364));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_163 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19926));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_164 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19960));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i6_4_lut_adj_165 (.I0(dds0_mclkcnt[7]), .I1(n12), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20543));   // zim_main.vhd(439[7:27])
    defparam i6_4_lut_adj_165.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_166 (.I0(n12242), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1609), .O(n11918));
    defparam i1_4_lut_adj_166.LUT_INIT = 16'h8a88;
    SB_LUT4 i1_3_lut (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20543), 
            .I3(IAC_MOSI), .O(dds0_mclk_N_705));
    defparam i1_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_167 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19924));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 add_74_5_lut (.I0(IAC_MOSI), .I1(data_cntvec[3]), .I2(IAC_MOSI), 
            .I3(n19356), .O(n364)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12112_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14522));   // zim_main.vhd(530[4] 816[13])
    defparam i12112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i5_4_lut_adj_168 (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zim_main.vhd(473[10:41])
    defparam i5_4_lut_adj_168.LUT_INIT = 16'h7bde;
    SB_LUT4 i11_4_lut_adj_169 (.I0(comm_cmd[0]), .I1(n14522), .I2(n11918), 
            .I3(comm_rx_buf[0]), .O(n19864));   // zim_main.vhd(528[3] 817[10])
    defparam i11_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_170 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1611));   // zim_main.vhd(473[10:41])
    defparam i2_4_lut_adj_170.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_171 (.I0(cmd_rdadctmp_adj_1653[20]), .I1(cmd_rdadctmp_adj_1653[19]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20366));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_CARRY clk_cnt_3772_3773_add_4_2 (.CI(VCC_net), .I0(IAC_MOSI), .I1(clk_cnt[0]), 
            .CO(n19505));
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20_adj_1617), .I2(n14), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1640));   // zim_main.vhd(473[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i12754_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9321), .I3(n12441), .O(n15172));   // zim_main.vhd(528[3] 817[10])
    defparam i12754_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12753_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9321), .I3(n12441), .O(n15171));   // zim_main.vhd(528[3] 817[10])
    defparam i12753_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_172 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28_adj_1621));   // zim_main.vhd(416[7:31])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hfffe;
    SB_LUT4 i12752_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9321), .I3(n12441), .O(n15170));   // zim_main.vhd(528[3] 817[10])
    defparam i12752_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i15172_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20543), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n10));   // zim_main.vhd(439[4] 442[11])
    defparam i15172_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10_4_lut_adj_173 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1543));   // zim_main.vhd(416[7:31])
    defparam i10_4_lut_adj_173.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_174 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27_adj_1551));   // zim_main.vhd(416[7:31])
    defparam i11_4_lut_adj_174.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25));   // zim_main.vhd(416[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_1624), .I2(n22_adj_1620), 
            .I3(n24_adj_1537), .O(n30));   // zim_main.vhd(473[10:41])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i2_2_lut_adj_175 (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n10_adj_1594));   // zim_main.vhd(416[7:31])
    defparam i2_2_lut_adj_175.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_176 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17_adj_1612));   // zim_main.vhd(473[10:41])
    defparam i1_4_lut_adj_176.LUT_INIT = 16'h7bde;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_9_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[7]), .I3(n19504), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_8_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(n10), .I3(n19503), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_8 (.CI(n19503), .I0(IAC_MOSI), .I1(n10), 
            .CO(n19504));
    SB_LUT4 i6_4_lut_adj_177 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14_adj_1592));   // zim_main.vhd(416[7:31])
    defparam i6_4_lut_adj_177.LUT_INIT = 16'h8000;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_7_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[5]), .I3(n19502), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_178 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n11363));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_adj_178.LUT_INIT = 16'heeee;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_7 (.CI(n19502), .I0(IAC_MOSI), .I1(dds0_mclkcnt[5]), 
            .CO(n19503));
    SB_LUT4 i15_4_lut (.I0(n25), .I1(n27_adj_1551), .I2(n26_adj_1543), 
            .I3(n28_adj_1621), .O(n19608));   // zim_main.vhd(416[7:31])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i15_4_lut_adj_179 (.I0(n17_adj_1612), .I1(n30), .I2(n26_adj_1640), 
            .I3(n18_adj_1611), .O(n31));   // zim_main.vhd(473[10:41])
    defparam i15_4_lut_adj_179.LUT_INIT = 16'hfffe;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_6_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[4]), .I3(n19501), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_6 (.CI(n19501), .I0(IAC_MOSI), .I1(dds0_mclkcnt[4]), 
            .CO(n19502));
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_5_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[3]), .I3(n19500), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8_4_lut_adj_180 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24));   // zim_main.vhd(506[9:35])
    defparam i8_4_lut_adj_180.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_181 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), 
            .I2(req_data_cnt[2]), .I3(req_data_cnt[7]), .O(n22_adj_1568));   // zim_main.vhd(506[9:35])
    defparam i6_4_lut_adj_181.LUT_INIT = 16'h7bde;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_5 (.CI(n19500), .I0(IAC_MOSI), .I1(dds0_mclkcnt[3]), 
            .CO(n19501));
    SB_LUT4 i7_4_lut_adj_182 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23));   // zim_main.vhd(506[9:35])
    defparam i7_4_lut_adj_182.LUT_INIT = 16'h7bde;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_4_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[2]), .I3(n19499), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_4 (.CI(n19499), .I0(IAC_MOSI), .I1(dds0_mclkcnt[2]), 
            .CO(n19500));
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_3_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[1]), .I3(n19498), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_183 (.I0(n20672), .I1(n20772), .I2(n12242), .I3(comm_state[3]), 
            .O(n11835));
    defparam i1_4_lut_adj_183.LUT_INIT = 16'hf531;
    SB_LUT4 i5_4_lut_adj_184 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1521));   // zim_main.vhd(506[9:35])
    defparam i5_4_lut_adj_184.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_185 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1596));   // zim_main.vhd(506[9:35])
    defparam i4_4_lut_adj_185.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_186 (.I0(cmd_rdadctmp_adj_1653[22]), .I1(cmd_rdadctmp_adj_1653[21]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20238));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_135_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1496));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7_4_lut_adj_187 (.I0(n19608), .I1(n14_adj_1592), .I2(n10_adj_1594), 
            .I3(secclk_cnt[20]), .O(n14731));   // zim_main.vhd(416[7:31])
    defparam i7_4_lut_adj_187.LUT_INIT = 16'h4000;
    SB_LUT4 mux_135_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1497));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18225_3_lut (.I0(SELIRNG0), .I1(acadc_skipCount[10]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20839));
    defparam i18225_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18226_3_lut (.I0(req_data_cnt[10]), .I1(tacadc_rst), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20840));
    defparam i18226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18735_2_lut (.I0(buf_data_vac[37]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20906));
    defparam i18735_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18291_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20905));
    defparam i18291_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_3_i1_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n1_adj_1589));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12751_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9321), .I3(n12441), .O(n15169));   // zim_main.vhd(528[3] 817[10])
    defparam i12751_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_143_Mux_3_i2_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[3] [3]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n2_adj_1590));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_3_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_188 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18));   // zim_main.vhd(506[9:35])
    defparam i2_4_lut_adj_188.LUT_INIT = 16'h7bde;
    SB_LUT4 i12750_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9321), .I3(n12441), .O(n15168));   // zim_main.vhd(528[3] 817[10])
    defparam i12750_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_4_lut_adj_189 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1597));   // zim_main.vhd(506[9:35])
    defparam i3_4_lut_adj_189.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_134_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n23_adj_1527));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_79_16_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[14]), .I2(IAC_MOSI), 
            .I3(n19382), .O(n404)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 ICE_GPMO_0_I_0_3_lut (.I0(tacadc_rst), .I1(ICE_GPMO_0), .I2(auxmode), 
            .I3(IAC_MOSI), .O(acadc_rst));   // zim_main.vhd(347[16:61])
    defparam ICE_GPMO_0_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_3 (.CI(n19498), .I0(IAC_MOSI), .I1(dds0_mclkcnt[1]), 
            .CO(n19499));
    SB_LUT4 i18816_2_lut (.I0(req_data_cnt[15]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21046));
    defparam i18816_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18943_2_lut (.I0(buf_data_vac[47]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21204));
    defparam i18943_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_134_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1528));   // zim_main.vhd(583[5] 688[14])
    defparam mux_134_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13309), 
            .I3(n1_adj_1601), .O(n19998));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i18953_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21230));
    defparam i18953_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_191 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17));   // zim_main.vhd(506[9:35])
    defparam i1_4_lut_adj_191.LUT_INIT = 16'h7bde;
    SB_LUT4 i15_2_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20416));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i14_4_lut_adj_192 (.I0(n21_adj_1521), .I1(n23), .I2(n22_adj_1568), 
            .I3(n24), .O(n30_adj_1641));   // zim_main.vhd(506[9:35])
    defparam i14_4_lut_adj_192.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_135_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1510));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19029_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21270));
    defparam i19029_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_193 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19922));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'h0aca;
    SB_LUT4 dds0_mclkcnt_i7_3783_add_4_2_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3783_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13_4_lut_adj_194 (.I0(n17), .I1(n19_adj_1597), .I2(n18), 
            .I3(n20_adj_1596), .O(n29_adj_1635));   // zim_main.vhd(506[9:35])
    defparam i13_4_lut_adj_194.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_195 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19920));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_196 (.I0(n29_adj_1635), .I1(eis_stop), .I2(n30_adj_1641), 
            .I3(IAC_MOSI), .O(n16_adj_1623));
    defparam i1_3_lut_adj_196.LUT_INIT = 16'hcdcd;
    SB_LUT4 i1_2_lut_adj_197 (.I0(eis_start), .I1(n31), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n16602));   // zim_main.vhd(528[3] 817[10])
    defparam i1_2_lut_adj_197.LUT_INIT = 16'hdddd;
    SB_LUT4 mux_135_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1522));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18865_2_lut (.I0(eis_state[0]), .I1(n16_adj_1623), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21099));
    defparam i18865_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12749_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9321), .I3(n12441), .O(n15167));   // zim_main.vhd(528[3] 817[10])
    defparam i12749_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i34_3_lut (.I0(n16602), .I1(iac_raw_buf_N_737), .I2(eis_state[0]), 
            .I3(IAC_MOSI), .O(n13));
    defparam i34_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i33_4_lut (.I0(n13), .I1(n21099), .I2(eis_end_N_725), .I3(eis_state[1]), 
            .O(eis_state_2__N_171[2]));
    defparam i33_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i12_4_lut_adj_198 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19918));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 i14176_4_lut (.I0(eis_start), .I1(n16_adj_1623), .I2(eis_end_N_725), 
            .I3(n31), .O(n16594));   // zim_main.vhd(299[9:16])
    defparam i14176_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 mux_135_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1515));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_135_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1516));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12748_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9321), .I3(n12441), .O(n15166));   // zim_main.vhd(528[3] 817[10])
    defparam i12748_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_135_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12747_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9321), .I3(n12441), .O(n15165));   // zim_main.vhd(528[3] 817[10])
    defparam i12747_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n20962), .I2(n14545), 
            .I3(comm_state[2]), .O(n22238));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22238_bdd_4_lut (.I0(n22238), .I1(n2_adj_1575), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n22241));
    defparam n22238_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18339_3_lut (.I0(n16), .I1(buf_adcdata_iac[14]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20953));
    defparam i18339_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n22037), .I2(n20814), 
            .I3(comm_cmd[3]), .O(n22232));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22232_bdd_4_lut (.I0(n22232), .I1(n22229), .I2(n22025), .I3(comm_cmd[3]), 
            .O(n22235));
    defparam n22232_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12746_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9321), .I3(n12441), .O(n15164));   // zim_main.vhd(528[3] 817[10])
    defparam i12746_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12745_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0] [7]), 
            .I2(n9321), .I3(n12411), .O(n15163));   // zim_main.vhd(528[3] 817[10])
    defparam i12745_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 ICE_GPMO_1_I_0_3_lut (.I0(EIS_SYNCCLK), .I1(ICE_GPMO_1), .I2(auxmode), 
            .I3(IAC_MOSI), .O(VAC_CLK));   // zim_main.vhd(346[15:61])
    defparam ICE_GPMO_1_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_133_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1490));   // zim_main.vhd(583[5] 688[14])
    defparam mux_133_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_LUT4 mux_135_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22226));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i18340_3_lut (.I0(n19), .I1(buf_readRTD[6]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20954));
    defparam i18340_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_199 (.I0(adc_state_adj_1652[1]), .I1(DTRIG_N_919_adj_1451), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n20612));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_199.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_200 (.I0(adc_state[1]), .I1(acadc_dtrig_v), .I2(DTRIG_N_919), 
            .I3(adc_state[0]), .O(n20132));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_200.LUT_INIT = 16'hcce8;
    SB_LUT4 n22226_bdd_4_lut (.I0(n22226), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n22229));
    defparam n22226_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_135_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1505));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18316_4_lut (.I0(n26_adj_1505), .I1(buf_data_vac[29]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20930));
    defparam i18316_4_lut.LUT_INIT = 16'hfaca;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15193));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15192));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15191));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15190));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15189));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15188));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15187));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15186));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15185));   // zim_main.vhd(528[3] 817[10])
    SB_CARRY dds0_mclkcnt_i7_3783_add_4_2 (.CI(VCC_net), .I0(IAC_MOSI), 
            .I1(dds0_mclkcnt[0]), .CO(n19498));
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15184));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15183));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15182));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15181));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15180));   // zim_main.vhd(528[3] 817[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15179));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15178));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15177));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15176));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15175));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15174));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15173));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15172));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15171));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15170));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15169));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15168));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i18315_3_lut (.I0(acadc_skipCount[6]), .I1(req_data_cnt[6]), 
            .I2(comm_cmd[1]), .I3(IAC_MOSI), .O(n20929));
    defparam i18315_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15167));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15166));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15165));   // zim_main.vhd(528[3] 817[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15164));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15163));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15162));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15161));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15160));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15159));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15158));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15157));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15156));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15155));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15154));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15153));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15152));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15151));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15150));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15149));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i19080_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21320));
    defparam i19080_2_lut.LUT_INIT = 16'h2222;
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15148));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15147));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15146));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15145));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15144));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15143));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15142));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15141));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15140));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15139));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15138));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15137));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_143_Mux_7_i1_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n1_adj_1580));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19567 (.I0(comm_cmd[2]), .I1(n21995), 
            .I2(n20919), .I3(comm_cmd[3]), .O(n22220));
    defparam comm_cmd_2__bdd_4_lut_19567.LUT_INIT = 16'he4aa;
    SB_LUT4 i24_4_lut_adj_201 (.I0(n17430), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n11));
    defparam i24_4_lut_adj_201.LUT_INIT = 16'hfaca;
    SB_LUT4 n22220_bdd_4_lut (.I0(n22220), .I1(n22019), .I2(n22043), .I3(comm_cmd[3]), 
            .O(n22223));
    defparam n22220_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15136));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15135));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15134));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15133));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15132));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_135_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1517));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12744_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9321), .I3(n12411), .O(n15162));   // zim_main.vhd(528[3] 817[10])
    defparam i12744_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15131));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i1_4_lut_adj_202 (.I0(adc_state_adj_1652[1]), .I1(acadc_dtrig_i), 
            .I2(DTRIG_N_919_adj_1451), .I3(adc_state_adj_1652[0]), .O(n20136));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_202.LUT_INIT = 16'hcce8;
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15130));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15129));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i19147_3_lut (.I0(eis_end_N_725), .I1(eis_state[1]), .I2(n11), 
            .I3(IAC_MOSI), .O(n11760));
    defparam i19147_3_lut.LUT_INIT = 16'h7f7f;
    SB_CARRY add_79_16 (.CI(n19382), .I0(acadc_skipcnt[14]), .I1(IAC_MOSI), 
            .CO(n19383));
    SB_LUT4 mux_143_Mux_7_i2_3_lut (.I0(\comm_buf[2] [7]), .I1(\comm_buf[3] [7]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n2_adj_1581));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_7_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_203 (.I0(cmd_rdadctmp_adj_1653[23]), .I1(cmd_rdadctmp_adj_1653[22]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20152));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_204 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19916));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_205 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19914));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'h0aca;
    SB_LUT4 i12708_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(IAC_MOSI), .O(n15126));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12708_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_206 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19912));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_207 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19910));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_LUT4 i15032_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n17430));
    defparam i15032_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19099_4_lut (.I0(eis_state[1]), .I1(eis_end_N_725), .I2(eis_state[0]), 
            .I3(n4_adj_1569), .O(n20568));
    defparam i19099_4_lut.LUT_INIT = 16'h1b13;
    SB_DFFN eis_end_309 (.Q(eis_end), .C(clk_32MHz), .D(n15127));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i12743_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9321), .I2(\comm_buf[0] [5]), 
            .I3(n12411), .O(n15161));   // zim_main.vhd(528[3] 817[10])
    defparam i12743_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12_4_lut_adj_208 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n13109), .I3(adc_state_adj_1692[2]), .O(n19908));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'h0aca;
    SB_LUT4 add_79_15_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[13]), .I2(IAC_MOSI), 
            .I3(n19381), .O(n405)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_79_15 (.CI(n19381), .I0(acadc_skipcnt[13]), .I1(IAC_MOSI), 
            .CO(n19382));
    SB_LUT4 add_79_14_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[12]), .I2(IAC_MOSI), 
            .I3(n19380), .O(n406)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19562 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[3]), 
            .I2(buf_readRTD[11]), .I3(comm_cmd[1]), .O(n22214));
    defparam comm_cmd_0__bdd_4_lut_19562.LUT_INIT = 16'he4aa;
    SB_LUT4 i18720_2_lut (.I0(\comm_buf[6] [7]), .I1(comm_index[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20966));
    defparam i18720_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n22214_bdd_4_lut (.I0(n22214), .I1(buf_adcdata_vdc[19]), .I2(buf_adcdata_vac[19]), 
            .I3(comm_cmd[1]), .O(n20828));
    defparam n22214_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_143_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1582));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_209 (.I0(cmd_rdadctmp_adj_1693[22]), .I1(cmd_rdadctmp_adj_1693[21]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19848));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'h0aca;
    SB_LUT4 i12742_3_lut_4_lut (.I0(buf_cfgRTD[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9321), .I3(n12411), .O(n15160));   // zim_main.vhd(528[3] 817[10])
    defparam i12742_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1517), 
            .I2(n21320), .I3(comm_cmd[2]), .O(n22208));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22208_bdd_4_lut (.I0(n22208), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22211));
    defparam n22208_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3890_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(ICE_SPI_CE0), 
            .I3(IAC_MOSI), .O(comm_index_2__N_447[0]));   // zim_main.vhd(712[5] 722[12])
    defparam i3890_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12710_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1677[15]), .I2(dds_state_adj_1676[1]), 
            .I3(IAC_MOSI), .O(n15128));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12710_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_0_i1_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n1));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_0_i2_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n2));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12741_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9321), .I3(n12411), .O(n15159));   // zim_main.vhd(528[3] 817[10])
    defparam i12741_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19552 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[4]), 
            .I2(buf_readRTD[12]), .I3(comm_cmd[1]), .O(n22202));
    defparam comm_cmd_0__bdd_4_lut_19552.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_210 (.I0(n9_adj_1416), .I1(comm_state[3]), .I2(n9321), 
            .I3(n20663), .O(n11931));
    defparam i1_4_lut_adj_210.LUT_INIT = 16'hc0c4;
    SB_LUT4 n22202_bdd_4_lut (.I0(n22202), .I1(buf_adcdata_vdc[20]), .I2(buf_adcdata_vac[20]), 
            .I3(comm_cmd[1]), .O(n22205));
    defparam n22202_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(n20957), .I2(n16598), 
            .I3(eis_state[0]), .O(n22196));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12740_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9321), .I3(n12411), .O(n15158));   // zim_main.vhd(528[3] 817[10])
    defparam i12740_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12739_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9321), .I3(n12411), .O(n15157));   // zim_main.vhd(528[3] 817[10])
    defparam i12739_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19547 (.I0(comm_cmd[1]), .I1(n26_adj_1522), 
            .I2(n21270), .I3(comm_cmd[2]), .O(n22190));
    defparam comm_cmd_1__bdd_4_lut_19547.LUT_INIT = 16'he4aa;
    SB_LUT4 n22190_bdd_4_lut (.I0(n22190), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22193));
    defparam n22190_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19542 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22184));
    defparam comm_cmd_0__bdd_4_lut_19542.LUT_INIT = 16'he4aa;
    SB_LUT4 n22184_bdd_4_lut (.I0(n22184), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n20849));
    defparam n22184_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19533 (.I0(comm_cmd[1]), .I1(n26_adj_1510), 
            .I2(n21230), .I3(comm_cmd[2]), .O(n22178));
    defparam comm_cmd_1__bdd_4_lut_19533.LUT_INIT = 16'he4aa;
    SB_LUT4 n22178_bdd_4_lut (.I0(n22178), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22181));
    defparam n22178_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14305_3_lut_4_lut (.I0(VAC_FLT1), .I1(\comm_buf[0] [7]), .I2(n9321), 
            .I3(n12397), .O(n15156));
    defparam i14305_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_2__bdd_4_lut (.I0(comm_index[2]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[6] [5]), .I3(comm_index[1]), .O(n22172));
    defparam comm_index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i18303_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20917));
    defparam i18303_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22172_bdd_4_lut (.I0(n22172), .I1(\comm_buf[4] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n22175));
    defparam n22172_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18807_2_lut (.I0(bit_cnt_adj_1678[3]), .I1(bit_cnt_adj_1678[0]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n21227));   // dds_ad9837.vhd(23[9:18])
    defparam i18807_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19523 (.I0(comm_cmd[1]), .I1(n26_adj_1528), 
            .I2(n21204), .I3(comm_cmd[2]), .O(n22166));
    defparam comm_cmd_1__bdd_4_lut_19523.LUT_INIT = 16'he4aa;
    SB_LUT4 i18305_4_lut (.I0(n20917), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20919));
    defparam i18305_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 n22166_bdd_4_lut (.I0(n22166), .I1(n21046), .I2(n23_adj_1527), 
            .I3(comm_cmd[2]), .O(n22169));
    defparam n22166_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12737_3_lut_4_lut (.I0(VAC_FLT0), .I1(\comm_buf[0] [6]), .I2(n9321), 
            .I3(n12397), .O(n15155));   // zim_main.vhd(528[3] 817[10])
    defparam i12737_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12736_3_lut_4_lut (.I0(VAC_OSR1), .I1(n9321), .I2(\comm_buf[0] [5]), 
            .I3(n12397), .O(n15154));   // zim_main.vhd(528[3] 817[10])
    defparam i12736_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i14361_4_lut (.I0(dds_state_adj_1676[0]), .I1(n21227), .I2(dds_state_adj_1676[1]), 
            .I3(n8_adj_1608), .O(dds_state_2__N_925_adj_1684[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i14361_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i19059_2_lut (.I0(\comm_buf[6] [3]), .I1(comm_index[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n21296));
    defparam i19059_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12735_3_lut_4_lut (.I0(VAC_OSR0), .I1(\comm_buf[0] [4]), .I2(n9321), 
            .I3(n12397), .O(n15153));   // zim_main.vhd(528[3] 817[10])
    defparam i12735_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19528 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[6]), 
            .I2(buf_readRTD[14]), .I3(comm_cmd[1]), .O(n22160));
    defparam comm_cmd_0__bdd_4_lut_19528.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_143_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1591));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22160_bdd_4_lut (.I0(n22160), .I1(buf_adcdata_vdc[22]), .I2(buf_adcdata_vac[22]), 
            .I3(comm_cmd[1]), .O(n22163));
    defparam n22160_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12734_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9321), 
            .I3(n12397), .O(n15152));   // zim_main.vhd(528[3] 817[10])
    defparam i12734_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1591), 
            .I2(n21296), .I3(comm_index[2]), .O(n22154));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i18722_2_lut (.I0(\comm_buf[6] [0]), .I1(comm_index[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20970));
    defparam i18722_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n22154_bdd_4_lut (.I0(n22154), .I1(n2_adj_1590), .I2(n1_adj_1589), 
            .I3(comm_index[2]), .O(n22157));
    defparam n22154_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_143_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1507));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_211 (.I0(cmd_rdadctmp_adj_1693[21]), .I1(cmd_rdadctmp_adj_1693[20]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19846));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_212 (.I0(cmd_rdadctmp_adj_1693[20]), .I1(cmd_rdadctmp_adj_1693[19]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19844));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_adj_213 (.I0(n20673), .I1(comm_state[3]), .I2(n9321), 
            .I3(IAC_MOSI), .O(n12383));
    defparam i1_3_lut_adj_213.LUT_INIT = 16'hc4c4;
    SB_LUT4 i12733_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9321), 
            .I3(n12397), .O(n15151));   // zim_main.vhd(528[3] 817[10])
    defparam i12733_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19514 (.I0(comm_cmd[1]), .I1(n20905), 
            .I2(n20906), .I3(comm_cmd[2]), .O(n22148));
    defparam comm_cmd_1__bdd_4_lut_19514.LUT_INIT = 16'he4aa;
    SB_LUT4 i15029_2_lut (.I0(EIS_SYNCCLK), .I1(auxmode), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(OUT_SYNCCLK));   // zim_main.vhd(343[21:60])
    defparam i15029_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_214 (.I0(eis_state[1]), .I1(eis_state[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n35));   // zim_main.vhd(448[3] 523[10])
    defparam i1_2_lut_adj_214.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_215 (.I0(TEST_LED), .I1(n14731), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(TEST_LED_N_691));
    defparam i1_2_lut_adj_215.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_216 (.I0(n9), .I1(comm_state[3]), .I2(n9321), 
            .I3(n20670), .O(n12397));
    defparam i1_4_lut_adj_216.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12732_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9321), 
            .I3(n12397), .O(n15150));   // zim_main.vhd(528[3] 817[10])
    defparam i12732_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22148_bdd_4_lut (.I0(n22148), .I1(n20840), .I2(n20839), .I3(comm_cmd[2]), 
            .O(n22151));
    defparam n22148_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12731_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9321), .I3(n12383), .O(n15149));   // zim_main.vhd(528[3] 817[10])
    defparam i12731_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_217 (.I0(n12242), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n20740), .O(n11406));
    defparam i1_4_lut_adj_217.LUT_INIT = 16'h888a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19499 (.I0(comm_cmd[1]), .I1(n19_adj_1497), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22142));
    defparam comm_cmd_1__bdd_4_lut_19499.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_3_lut_adj_218 (.I0(comm_state[0]), .I1(comm_cmd[3]), .I2(n20646), 
            .I3(IAC_MOSI), .O(n20670));   // zim_main.vhd(530[4] 816[13])
    defparam i1_3_lut_adj_218.LUT_INIT = 16'hfefe;
    SB_CARRY add_79_14 (.CI(n19380), .I0(acadc_skipcnt[12]), .I1(IAC_MOSI), 
            .CO(n19381));
    SB_LUT4 i1_4_lut_adj_219 (.I0(n10733), .I1(comm_state[3]), .I2(n9321), 
            .I3(n20670), .O(n12411));
    defparam i1_4_lut_adj_219.LUT_INIT = 16'hc0c4;
    SB_LUT4 i11148_3_lut (.I0(n22223), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13564));   // zim_main.vhd(530[4] 816[13])
    defparam i11148_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1548473_i1_3_lut (.I0(n22007), .I1(n22001), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1486));
    defparam i1548473_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_79_13_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[11]), .I2(IAC_MOSI), 
            .I3(n19379), .O(n407)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11152_3_lut (.I0(n30_adj_1486), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13568));   // zim_main.vhd(530[4] 816[13])
    defparam i11152_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_74_5 (.CI(n19356), .I0(data_cntvec[3]), .I1(IAC_MOSI), 
            .CO(n19357));
    SB_LUT4 n22142_bdd_4_lut (.I0(n22142), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1496), 
            .I3(comm_cmd[2]), .O(n22145));
    defparam n22142_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_136_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1485));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1485), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_0_i30_3_lut (.I0(n22), .I1(buf_data_vac[1]), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1484));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11156_3_lut (.I0(n30_adj_1484), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13572));   // zim_main.vhd(530[4] 816[13])
    defparam i11156_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_220 (.I0(cmd_rdadctmp_adj_1693[19]), .I1(cmd_rdadctmp_adj_1693[18]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19842));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'h0aca;
    SB_LUT4 i11160_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13576));   // zim_main.vhd(530[4] 816[13])
    defparam i11160_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11164_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13580));   // zim_main.vhd(530[4] 816[13])
    defparam i11164_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11168_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13584));   // zim_main.vhd(530[4] 816[13])
    defparam i11168_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_79_13 (.CI(n19379), .I0(acadc_skipcnt[11]), .I1(IAC_MOSI), 
            .CO(n19380));
    SB_LUT4 i19118_2_lut (.I0(n11670), .I1(eis_end_N_725), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14687));
    defparam i19118_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(n20670), .O(n20673));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_74_4_lut (.I0(IAC_MOSI), .I1(data_cntvec[2]), .I2(IAC_MOSI), 
            .I3(n19355), .O(n365)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_79_12_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[10]), .I2(IAC_MOSI), 
            .I3(n19378), .O(n408)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_221 (.I0(cmd_rdadctmp_adj_1693[18]), .I1(cmd_rdadctmp_adj_1693[17]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19840));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'h0aca;
    SB_LUT4 i12730_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9321), .I3(n12383), .O(n15148));   // zim_main.vhd(528[3] 817[10])
    defparam i12730_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_222 (.I0(n16763), .I1(buf_dds1[0]), .I2(\comm_buf[1] [0]), 
            .I3(n11835), .O(n15853));   // zim_main.vhd(244[9:19])
    defparam i1_4_lut_adj_222.LUT_INIT = 16'ha088;
    SB_LUT4 i12729_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9321), .I2(\comm_buf[0] [5]), 
            .I3(n12383), .O(n15147));   // zim_main.vhd(528[3] 817[10])
    defparam i12729_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_CARRY add_79_12 (.CI(n19378), .I0(acadc_skipcnt[10]), .I1(IAC_MOSI), 
            .CO(n19379));
    SB_CARRY add_74_4 (.CI(n19355), .I0(data_cntvec[2]), .I1(IAC_MOSI), 
            .CO(n19356));
    SB_LUT4 add_74_3_lut (.I0(IAC_MOSI), .I1(data_cntvec[1]), .I2(IAC_MOSI), 
            .I3(n19354), .O(n366)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_223 (.I0(cmd_rdadctmp_adj_1653[21]), .I1(cmd_rdadctmp_adj_1653[20]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20368));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_CARRY add_73_3 (.CI(n19345), .I0(data_count[1]), .I1(IAC_MOSI), 
            .CO(n19346));
    SB_LUT4 i12728_3_lut_4_lut (.I0(buf_dds0[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9321), .I3(n12383), .O(n15146));   // zim_main.vhd(528[3] 817[10])
    defparam i12728_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_224 (.I0(comm_state[2]), .I1(ICE_SPI_CE0), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20608));
    defparam i1_2_lut_adj_224.LUT_INIT = 16'h2222;
    SB_LUT4 add_79_11_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[9]), .I2(IAC_MOSI), 
            .I3(n19377), .O(n409)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i46_2_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n23_adj_1501));
    defparam i46_2_lut.LUT_INIT = 16'h6666;
    SB_CARRY add_79_11 (.CI(n19377), .I0(acadc_skipcnt[9]), .I1(IAC_MOSI), 
            .CO(n19378));
    SB_LUT4 add_79_10_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[8]), .I2(IAC_MOSI), 
            .I3(n19376), .O(n410)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19152_4_lut (.I0(n21_adj_1600), .I1(n17485), .I2(comm_state[2]), 
            .I3(n23_adj_1501), .O(n18_adj_1633));
    defparam i19152_4_lut.LUT_INIT = 16'h7377;
    SB_CARRY add_79_10 (.CI(n19376), .I0(acadc_skipcnt[8]), .I1(IAC_MOSI), 
            .CO(n19377));
    SB_LUT4 add_79_9_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[7]), .I2(IAC_MOSI), 
            .I3(n19375), .O(n411)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_79_9 (.CI(n19375), .I0(acadc_skipcnt[7]), .I1(IAC_MOSI), 
            .CO(n19376));
    SB_LUT4 add_73_3_lut (.I0(IAC_MOSI), .I1(data_count[1]), .I2(IAC_MOSI), 
            .I3(n19345), .O(n348)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_79_8_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[6]), .I2(IAC_MOSI), 
            .I3(n19374), .O(n412)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15853));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i32_4_lut (.I0(comm_state_3__N_436[2]), .I1(n2369), .I2(comm_state[1]), 
            .I3(comm_state[2]), .O(n15));   // zim_main.vhd(530[4] 816[13])
    defparam i32_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i33_3_lut (.I0(comm_state[1]), .I1(n20668), .I2(comm_state[0]), 
            .I3(IAC_MOSI), .O(n12_adj_1649));   // zim_main.vhd(530[4] 816[13])
    defparam i33_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_225 (.I0(n12_adj_1649), .I1(comm_state[0]), .I2(n20608), 
            .I3(n15), .O(n19856));   // zim_main.vhd(530[4] 816[13])
    defparam i1_4_lut_adj_225.LUT_INIT = 16'hb3a0;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19864));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12727_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9321), .I3(n12383), .O(n15145));   // zim_main.vhd(528[3] 817[10])
    defparam i12727_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12726_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9321), .I3(n12383), .O(n15144));   // zim_main.vhd(528[3] 817[10])
    defparam i12726_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12725_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9321), .I3(n12383), .O(n15143));   // zim_main.vhd(528[3] 817[10])
    defparam i12725_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_226 (.I0(n12242), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9270), .O(n14753));   // zim_main.vhd(528[3] 817[10])
    defparam i1_4_lut_adj_226.LUT_INIT = 16'ha2a0;
    SB_LUT4 i1_3_lut_adj_227 (.I0(n12242), .I1(comm_state[3]), .I2(n10_adj_1613), 
            .I3(IAC_MOSI), .O(n11866));
    defparam i1_3_lut_adj_227.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_4_lut_adj_228 (.I0(n9_adj_1415), .I1(comm_state[3]), .I2(n9321), 
            .I3(n20663), .O(n12441));
    defparam i1_4_lut_adj_228.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12253_3_lut (.I0(n11876), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(IAC_MOSI), .O(n14671));   // zim_main.vhd(528[3] 817[10])
    defparam i12253_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19702));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i1_4_lut_adj_229 (.I0(n12242), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11363), .O(n11935));
    defparam i1_4_lut_adj_229.LUT_INIT = 16'ha0a8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(IAC_MOSI), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(THERMOSTAT_N_470));   // zim_main.vhd(557[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 comm_index_1__bdd_4_lut_19504 (.I0(comm_index[1]), .I1(n4_adj_1588), 
            .I2(n21324), .I3(comm_index[2]), .O(n22136));
    defparam comm_index_1__bdd_4_lut_19504.LUT_INIT = 16'he4aa;
    SB_LUT4 i11692_3_lut (.I0(n22235), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14110));   // zim_main.vhd(530[4] 816[13])
    defparam i11692_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_start_340 (.Q(eis_start), .C(clk_32MHz), .D(n15117));   // zim_main.vhd(528[3] 817[10])
    SB_CARRY add_74_3 (.CI(n19354), .I0(data_cntvec[1]), .I1(IAC_MOSI), 
            .CO(n19355));
    SB_CARRY add_79_8 (.CI(n19374), .I0(acadc_skipcnt[6]), .I1(IAC_MOSI), 
            .CO(n19375));
    SB_LUT4 add_74_2_lut (.I0(IAC_MOSI), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_737), 
            .I3(IAC_MOSI), .O(n367)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_132_17_lut (.I0(n14_adj_1544), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19407), .O(data_idxvec_15__N_226[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_230 (.I0(cmd_rdadctmp_adj_1653[17]), .I1(cmd_rdadctmp_adj_1653[16]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20358));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_230.LUT_INIT = 16'hca0a;
    SB_LUT4 add_132_16_lut (.I0(n14_adj_1570), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19406), .O(data_idxvec_15__N_226[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_16_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_16 (.CI(n19406), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19407));
    SB_LUT4 add_79_7_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[5]), .I2(IAC_MOSI), 
            .I3(n19373), .O(n413)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_132_15_lut (.I0(n14_adj_1577), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19405), .O(data_idxvec_15__N_226[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_15_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_79_7 (.CI(n19373), .I0(acadc_skipcnt[5]), .I1(IAC_MOSI), 
            .CO(n19374));
    SB_LUT4 add_79_6_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[4]), .I2(IAC_MOSI), 
            .I3(n19372), .O(n414)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_132_15 (.CI(n19405), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19406));
    SB_CARRY add_74_2 (.CI(IAC_MOSI), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_737), 
            .CO(n19354));
    SB_LUT4 i18275_3_lut (.I0(n22121), .I1(n22151), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n20889));
    defparam i18275_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_132_14_lut (.I0(n14_adj_1571), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19404), .O(data_idxvec_15__N_226[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_14_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_73_11_lut (.I0(IAC_MOSI), .I1(data_count[9]), .I2(IAC_MOSI), 
            .I3(n19353), .O(n340)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_79_6 (.CI(n19372), .I0(acadc_skipcnt[4]), .I1(IAC_MOSI), 
            .CO(n19373));
    SB_LUT4 add_79_5_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[3]), .I2(IAC_MOSI), 
            .I3(n19371), .O(n415)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_79_5 (.CI(n19371), .I0(acadc_skipcnt[3]), .I1(IAC_MOSI), 
            .CO(n19372));
    SB_LUT4 add_79_4_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[2]), .I2(IAC_MOSI), 
            .I3(n19370), .O(n416)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22136_bdd_4_lut (.I0(n22136), .I1(n2_adj_1587), .I2(n1_adj_1586), 
            .I3(comm_index[2]), .O(n22139));
    defparam n22136_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_132_14 (.CI(n19404), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19405));
    SB_LUT4 i11688_3_lut (.I0(n20889), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14106));   // zim_main.vhd(530[4] 816[13])
    defparam i11688_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_10_lut (.I0(IAC_MOSI), .I1(data_count[8]), .I2(IAC_MOSI), 
            .I3(n19352), .O(n341)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_132_13_lut (.I0(n14_adj_1572), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19403), .O(data_idxvec_15__N_226[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_13_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_13 (.CI(n19403), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19404));
    SB_CARRY add_79_4 (.CI(n19370), .I0(acadc_skipcnt[2]), .I1(IAC_MOSI), 
            .CO(n19371));
    SB_LUT4 i11684_3_lut (.I0(n22097), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14102));   // zim_main.vhd(530[4] 816[13])
    defparam i11684_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18230_3_lut (.I0(n22091), .I1(n22205), .I2(comm_cmd[2]), 
            .I3(IAC_MOSI), .O(n20844));
    defparam i18230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1543649_i1_3_lut (.I0(n20844), .I1(n22031), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1539));
    defparam i1543649_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_73_10 (.CI(n19352), .I0(data_count[8]), .I1(IAC_MOSI), 
            .CO(n19353));
    SB_LUT4 add_132_12_lut (.I0(n14_adj_1573), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19402), .O(data_idxvec_15__N_226[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12761_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1550), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15179));   // zim_main.vhd(528[3] 817[10])
    defparam i12761_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11680_3_lut (.I0(n30_adj_1539), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14098));   // zim_main.vhd(530[4] 816[13])
    defparam i11680_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19494 (.I0(comm_cmd[1]), .I1(n26_adj_1498), 
            .I2(n21297), .I3(comm_cmd[2]), .O(n22130));
    defparam comm_cmd_1__bdd_4_lut_19494.LUT_INIT = 16'he4aa;
    SB_LUT4 i11676_3_lut (.I0(n22109), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14094));   // zim_main.vhd(530[4] 816[13])
    defparam i11676_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18242_3_lut (.I0(n22115), .I1(n22163), .I2(comm_cmd[2]), 
            .I3(IAC_MOSI), .O(n20856));
    defparam i18242_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22130_bdd_4_lut (.I0(n22130), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22133));
    defparam n22130_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12762_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1549), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15180));   // zim_main.vhd(528[3] 817[10])
    defparam i12762_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_9_lut (.I0(IAC_MOSI), .I1(data_count[7]), .I2(IAC_MOSI), 
            .I3(n19351), .O(n342)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_9 (.CI(n19351), .I0(data_count[7]), .I1(IAC_MOSI), 
            .CO(n19352));
    SB_CARRY add_132_12 (.CI(n19402), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19403));
    SB_LUT4 i1544855_i1_3_lut (.I0(n20856), .I1(n22073), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1535));
    defparam i1544855_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19557 (.I0(comm_cmd[2]), .I1(n20884), 
            .I2(n20885), .I3(comm_cmd[3]), .O(n22124));
    defparam comm_cmd_2__bdd_4_lut_19557.LUT_INIT = 16'he4aa;
    SB_LUT4 i12763_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1579), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15181));   // zim_main.vhd(528[3] 817[10])
    defparam i12763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22124_bdd_4_lut (.I0(n22124), .I1(n20879), .I2(n20878), .I3(comm_cmd[3]), 
            .O(n22127));
    defparam n22124_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19484 (.I0(comm_cmd[1]), .I1(n20833), 
            .I2(n20834), .I3(comm_cmd[2]), .O(n22118));
    defparam comm_cmd_1__bdd_4_lut_19484.LUT_INIT = 16'he4aa;
    SB_LUT4 i11672_3_lut (.I0(n30_adj_1535), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14090));   // zim_main.vhd(530[4] 816[13])
    defparam i11672_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22118_bdd_4_lut (.I0(n22118), .I1(n20825), .I2(n20824), .I3(comm_cmd[2]), 
            .O(n22121));
    defparam n22118_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_132_11_lut (.I0(n14_adj_1574), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19401), .O(data_idxvec_15__N_226[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12353_2_lut (.I0(n11977), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14766));   // zim_main.vhd(528[3] 817[10])
    defparam i12353_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_132_11 (.CI(n19401), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19402));
    SB_LUT4 add_132_10_lut (.I0(n14_adj_1545), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19400), .O(data_idxvec_15__N_226[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_10 (.CI(n19400), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19401));
    SB_LUT4 i12764_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1548), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15182));   // zim_main.vhd(528[3] 817[10])
    defparam i12764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19509 (.I0(comm_cmd[0]), .I1(VAC_FLT0), 
            .I2(buf_adcdata_iac[22]), .I3(comm_cmd[1]), .O(n22112));
    defparam comm_cmd_0__bdd_4_lut_19509.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_231 (.I0(comm_index[0]), .I1(comm_state[1]), .I2(comm_index[2]), 
            .I3(n25_adj_1619), .O(n4_adj_1616));
    defparam i1_4_lut_adj_231.LUT_INIT = 16'h3733;
    SB_LUT4 add_132_9_lut (.I0(n14_adj_1546), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19399), .O(data_idxvec_15__N_226[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_9 (.CI(n19399), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19400));
    SB_LUT4 i1_2_lut_adj_232 (.I0(clk_cnt[0]), .I1(clk_cnt[4]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n6));
    defparam i1_2_lut_adj_232.LUT_INIT = 16'h8888;
    SB_LUT4 add_132_8_lut (.I0(n14_adj_1547), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19398), .O(data_idxvec_15__N_226[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_8 (.CI(n19398), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19399));
    SB_LUT4 add_79_3_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[1]), .I2(IAC_MOSI), 
            .I3(n19369), .O(n417)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12724_3_lut_4_lut (.I0(buf_dds0[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9321), .I3(n12383), .O(n15142));   // zim_main.vhd(528[3] 817[10])
    defparam i12724_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_132_7_lut (.I0(n14_adj_1578), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19397), .O(data_idxvec_15__N_226[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 n22112_bdd_4_lut (.I0(n22112), .I1(buf_dds1[14]), .I2(buf_dds0[14]), 
            .I3(comm_cmd[1]), .O(n22115));
    defparam n22112_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_233 (.I0(n20681), .I1(n20599), .I2(n12108), .I3(n4_adj_1616), 
            .O(n11977));
    defparam i1_4_lut_adj_233.LUT_INIT = 16'hc080;
    SB_CARRY add_132_7 (.CI(n19397), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19398));
    SB_LUT4 add_132_6_lut (.I0(n14_adj_1548), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19396), .O(data_idxvec_15__N_226[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i4_4_lut_adj_234 (.I0(clk_cnt[2]), .I1(clk_cnt[3]), .I2(clk_cnt[1]), 
            .I3(n6), .O(n14730));
    defparam i4_4_lut_adj_234.LUT_INIT = 16'h8000;
    SB_CARRY add_132_6 (.CI(n19396), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19397));
    SB_LUT4 i1545458_i1_3_lut (.I0(n22079), .I1(n22169), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1529));
    defparam i1545458_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12765_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1578), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15183));   // zim_main.vhd(528[3] 817[10])
    defparam i12765_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_235 (.I0(clk_RTD), .I1(n14730), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(clk_RTD_N_712));
    defparam i1_2_lut_adj_235.LUT_INIT = 16'h6666;
    SB_LUT4 i11664_3_lut (.I0(n30_adj_1529), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14082));   // zim_main.vhd(530[4] 816[13])
    defparam i11664_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19479 (.I0(comm_cmd[2]), .I1(n20875), 
            .I2(n20876), .I3(comm_cmd[3]), .O(n22106));
    defparam comm_cmd_2__bdd_4_lut_19479.LUT_INIT = 16'he4aa;
    SB_LUT4 n22106_bdd_4_lut (.I0(n22106), .I1(n20849), .I2(n22103), .I3(comm_cmd[3]), 
            .O(n22109));
    defparam n22106_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12766_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1547), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15184));   // zim_main.vhd(528[3] 817[10])
    defparam i12766_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1546061_i1_3_lut (.I0(n22067), .I1(n22193), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1523));
    defparam i1546061_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11660_3_lut (.I0(n30_adj_1523), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14078));   // zim_main.vhd(530[4] 816[13])
    defparam i11660_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19469 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22100));
    defparam comm_cmd_0__bdd_4_lut_19469.LUT_INIT = 16'he4aa;
    SB_LUT4 n22100_bdd_4_lut (.I0(n22100), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22103));
    defparam n22100_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12723_3_lut_4_lut (.I0(buf_dds0[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9321), .I3(n12383), .O(n15141));   // zim_main.vhd(528[3] 817[10])
    defparam i12723_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19464 (.I0(comm_cmd[2]), .I1(n20836), 
            .I2(n20837), .I3(comm_cmd[3]), .O(n22094));
    defparam comm_cmd_2__bdd_4_lut_19464.LUT_INIT = 16'he4aa;
    SB_LUT4 i12767_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1546), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15185));   // zim_main.vhd(528[3] 817[10])
    defparam i12767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22094_bdd_4_lut (.I0(n22094), .I1(n20828), .I2(n22085), .I3(comm_cmd[3]), 
            .O(n22097));
    defparam n22094_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1546664_i1_3_lut (.I0(n21959), .I1(n22211), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1518));
    defparam i1546664_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11656_3_lut (.I0(n30_adj_1518), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14074));   // zim_main.vhd(530[4] 816[13])
    defparam i11656_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11652_3_lut (.I0(n22127), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14070));   // zim_main.vhd(530[4] 816[13])
    defparam i11652_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1547870_i1_3_lut (.I0(n22013), .I1(n22181), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1511));
    defparam i1547870_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11648_3_lut (.I0(n30_adj_1511), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14066));   // zim_main.vhd(530[4] 816[13])
    defparam i11648_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14208_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1545), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15186));
    defparam i14208_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19459 (.I0(comm_cmd[0]), .I1(VAC_OSR0), 
            .I2(buf_adcdata_iac[20]), .I3(comm_cmd[1]), .O(n22088));
    defparam comm_cmd_0__bdd_4_lut_19459.LUT_INIT = 16'he4aa;
    SB_LUT4 i1549076_i1_3_lut (.I0(n22145), .I1(n22133), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n30_adj_1499));
    defparam i1549076_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11644_3_lut (.I0(n30_adj_1499), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14062));   // zim_main.vhd(530[4] 816[13])
    defparam i11644_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22088_bdd_4_lut (.I0(n22088), .I1(buf_dds1[12]), .I2(buf_dds0[12]), 
            .I3(comm_cmd[1]), .O(n22091));
    defparam n22088_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11640_3_lut (.I0(n21965), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14058));   // zim_main.vhd(530[4] 816[13])
    defparam i11640_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12360_2_lut (.I0(n12047), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14773));   // zim_main.vhd(528[3] 817[10])
    defparam i12360_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18878_3_lut (.I0(comm_index[1]), .I1(n20596), .I2(comm_index[0]), 
            .I3(IAC_MOSI), .O(n21092));
    defparam i18878_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i12769_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1574), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15187));   // zim_main.vhd(528[3] 817[10])
    defparam i12769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i45_4_lut (.I0(n21094), .I1(n21092), .I2(comm_state[1]), .I3(comm_state_3__N_436[2]), 
            .O(n20_adj_1610));
    defparam i45_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_236 (.I0(comm_state[0]), .I1(n20599), .I2(n20681), 
            .I3(n20_adj_1610), .O(n12047));
    defparam i1_4_lut_adj_236.LUT_INIT = 16'hc4c0;
    SB_LUT4 i11636_3_lut (.I0(n22061), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14054));   // zim_main.vhd(530[4] 816[13])
    defparam i11636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1491));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1491), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1489));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_1_i30_3_lut (.I0(n22_adj_1489), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1504));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11632_3_lut (.I0(n30_adj_1504), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14050));   // zim_main.vhd(530[4] 816[13])
    defparam i11632_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1646));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12770_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1573), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15188));   // zim_main.vhd(528[3] 817[10])
    defparam i12770_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE acadc_trig_310 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20104));   // zim_main.vhd(448[3] 523[10])
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16_adj_1607));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1646), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1647));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15793));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_19449 (.I0(comm_cmd[0]), .I1(IAC_FLT1), 
            .I2(buf_adcdata_iac[19]), .I3(comm_cmd[1]), .O(n22082));
    defparam comm_cmd_0__bdd_4_lut_19449.LUT_INIT = 16'he4aa;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15790));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_2_i30_3_lut (.I0(n22_adj_1647), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1648));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12771_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1572), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15189));   // zim_main.vhd(528[3] 817[10])
    defparam i12771_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15788));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i11628_3_lut (.I0(n30_adj_1648), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14046));   // zim_main.vhd(530[4] 816[13])
    defparam i11628_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15785));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15782));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 n22082_bdd_4_lut (.I0(n22082), .I1(buf_dds1[11]), .I2(buf_dds0[11]), 
            .I3(comm_cmd[1]), .O(n22085));
    defparam n22082_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15779));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15776));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15773));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i1_2_lut_adj_237 (.I0(n10733), .I1(n20663), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n10713));   // zim_main.vhd(775[11:20])
    defparam i1_2_lut_adj_237.LUT_INIT = 16'heeee;
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15770));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15767));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1642));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12772_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1571), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15190));   // zim_main.vhd(528[3] 817[10])
    defparam i12772_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_stop_339 (.Q(eis_stop), .C(clk_32MHz), .D(n15116));   // zim_main.vhd(528[3] 817[10])
    SB_DFF tacadc_rst_338 (.Q(tacadc_rst), .C(clk_32MHz), .D(n15115));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15764));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15761));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1642), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1643));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_3_i30_3_lut (.I0(n22_adj_1643), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1644));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15759));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i11624_3_lut (.I0(n30_adj_1644), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14042));   // zim_main.vhd(530[4] 816[13])
    defparam i11624_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1636));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15756));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1636), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1637));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19878));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19474 (.I0(comm_cmd[1]), .I1(n19_adj_1526), 
            .I2(n20), .I3(comm_cmd[2]), .O(n22076));
    defparam comm_cmd_1__bdd_4_lut_19474.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_136_Mux_4_i30_3_lut (.I0(n22_adj_1637), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1638));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19880));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 n22076_bdd_4_lut (.I0(n22076), .I1(n17_adj_1525), .I2(n16_adj_1524), 
            .I3(comm_cmd[2]), .O(n22079));
    defparam n22076_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19882));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i11620_3_lut (.I0(n30_adj_1638), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14038));   // zim_main.vhd(530[4] 816[13])
    defparam i11620_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12773_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1577), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15191));   // zim_main.vhd(528[3] 817[10])
    defparam i12773_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1631));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19884));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1631), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1632));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19886));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19439 (.I0(comm_cmd[1]), .I1(n21037), 
            .I2(n21038), .I3(comm_cmd[2]), .O(n22070));
    defparam comm_cmd_1__bdd_4_lut_19439.LUT_INIT = 16'he4aa;
    SB_DFF auxmode_337 (.Q(auxmode), .C(clk_32MHz), .D(n15114));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i3905_3_lut_4_lut (.I0(comm_index[0]), .I1(n2369), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(comm_index_2__N_447[2]));   // zim_main.vhd(712[5] 722[12])
    defparam i3905_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 mux_136_Mux_5_i30_3_lut (.I0(n22_adj_1632), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1634));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12774_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1570), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15192));   // zim_main.vhd(528[3] 817[10])
    defparam i12774_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_6__I_0_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(n8));   // zim_main.vhd(775[11:20])
    defparam comm_cmd_6__I_0_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 n22070_bdd_4_lut (.I0(n22070), .I1(n21048), .I2(n23_adj_1534), 
            .I3(comm_cmd[2]), .O(n22073));
    defparam n22070_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_6__I_0_376_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n9_adj_1416));
    defparam comm_cmd_6__I_0_376_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 equal_193_i9_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n9_adj_1415));
    defparam equal_193_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i19175_2_lut_3_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_end_N_725), 
            .I3(IAC_MOSI), .O(n20789));
    defparam i19175_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i19179_3_lut_4_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_end_N_725), 
            .I3(eis_state[0]), .O(n11670));
    defparam i19179_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19890));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i11616_3_lut (.I0(n30_adj_1634), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14034));   // zim_main.vhd(530[4] 816[13])
    defparam i11616_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19892));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_136_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1628));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1628), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1629));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_6_i30_3_lut (.I0(n22_adj_1629), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1630));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11610_3_lut (.I0(n30_adj_1630), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14028));   // zim_main.vhd(530[4] 816[13])
    defparam i11610_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19706));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19708));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12722_3_lut_4_lut (.I0(buf_dds0[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9321), .I3(n12383), .O(n15140));   // zim_main.vhd(528[3] 817[10])
    defparam i12722_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19710));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i1_4_lut_adj_238 (.I0(n9), .I1(comm_state[3]), .I2(n9321), 
            .I3(n20663), .O(n12467));
    defparam i1_4_lut_adj_238.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12367_2_lut (.I0(n12110), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14780));   // zim_main.vhd(528[3] 817[10])
    defparam i12367_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19704));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19688));   // zim_main.vhd(528[3] 817[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19712));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i39_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n24_adj_1622));
    defparam i39_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i18879_3_lut (.I0(comm_index[0]), .I1(n20596), .I2(comm_index[1]), 
            .I3(IAC_MOSI), .O(n21102));
    defparam i18879_3_lut.LUT_INIT = 16'h4040;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19714));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i41_3_lut (.I0(n24_adj_1622), .I1(n10733), .I2(comm_cmd[3]), 
            .I3(IAC_MOSI), .O(n21_adj_1618));
    defparam i41_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19434 (.I0(comm_cmd[1]), .I1(n19_adj_1520), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22064));
    defparam comm_cmd_1__bdd_4_lut_19434.LUT_INIT = 16'he4aa;
    SB_LUT4 n22064_bdd_4_lut (.I0(n22064), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1519), 
            .I3(comm_cmd[2]), .O(n22067));
    defparam n22064_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15113));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i15_4_lut_adj_239 (.I0(n10614), .I1(n8828), .I2(comm_state[3]), 
            .I3(n9321), .O(n12312));
    defparam i15_4_lut_adj_239.LUT_INIT = 16'hf535;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15112));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_19454 (.I0(comm_cmd[2]), .I1(n20809), 
            .I2(n20810), .I3(comm_cmd[3]), .O(n22058));
    defparam comm_cmd_2__bdd_4_lut_19454.LUT_INIT = 16'he4aa;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15111));   // zim_main.vhd(528[3] 817[10])
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15110));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 n22058_bdd_4_lut (.I0(n22058), .I1(n20798), .I2(n20797), .I3(comm_cmd[3]), 
            .O(n22061));
    defparam n22058_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_240 (.I0(comm_cmd[3]), .I1(n20646), .I2(comm_state[0]), 
            .I3(IAC_MOSI), .O(n20663));
    defparam i1_2_lut_3_lut_adj_240.LUT_INIT = 16'hfdfd;
    SB_LUT4 add_73_2_lut (.I0(IAC_MOSI), .I1(data_count[0]), .I2(iac_raw_buf_N_737), 
            .I3(IAC_MOSI), .O(n349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_8_lut (.I0(IAC_MOSI), .I1(data_count[6]), .I2(IAC_MOSI), 
            .I3(n19350), .O(n343)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_79_3 (.CI(n19369), .I0(acadc_skipcnt[1]), .I1(IAC_MOSI), 
            .CO(n19370));
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n22052));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_241 (.I0(cmd_rdadctmp_adj_1693[17]), .I1(cmd_rdadctmp_adj_1693[16]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19838));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_241.LUT_INIT = 16'h0aca;
    SB_LUT4 i40_4_lut (.I0(n21_adj_1618), .I1(n21102), .I2(comm_state[1]), 
            .I3(comm_state_3__N_436[2]), .O(n16_adj_1599));
    defparam i40_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_242 (.I0(comm_state[0]), .I1(n20599), .I2(n20681), 
            .I3(n16_adj_1599), .O(n12110));
    defparam i1_4_lut_adj_242.LUT_INIT = 16'hc4c0;
    SB_LUT4 add_79_2_lut (.I0(IAC_MOSI), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_737), 
            .I3(IAC_MOSI), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_79_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_2 (.CI(IAC_MOSI), .I0(data_count[0]), .I1(iac_raw_buf_N_737), 
            .CO(n19345));
    SB_CARRY add_79_2 (.CI(IAC_MOSI), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_737), 
            .CO(n19369));
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15109));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 add_74_17_lut (.I0(IAC_MOSI), .I1(data_cntvec[15]), .I2(IAC_MOSI), 
            .I3(n19368), .O(n352)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_132_5_lut (.I0(n14_adj_1579), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19395), .O(data_idxvec_15__N_226[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_74_16_lut (.I0(IAC_MOSI), .I1(data_cntvec[14]), .I2(IAC_MOSI), 
            .I3(n19367), .O(n353)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_74_16 (.CI(n19367), .I0(data_cntvec[14]), .I1(IAC_MOSI), 
            .CO(n19368));
    SB_CARRY add_132_5 (.CI(n19395), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19396));
    SB_LUT4 add_132_4_lut (.I0(n14_adj_1549), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19394), .O(data_idxvec_15__N_226[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_4_lut.LUT_INIT = 16'hA3AC;
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n13473), 
            .D(n352), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_CARRY add_73_8 (.CI(n19350), .I0(data_count[6]), .I1(IAC_MOSI), 
            .CO(n19351));
    SB_LUT4 add_73_7_lut (.I0(IAC_MOSI), .I1(data_count[5]), .I2(IAC_MOSI), 
            .I3(n19349), .O(n344)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_7 (.CI(n19349), .I0(data_count[5]), .I1(IAC_MOSI), 
            .CO(n19350));
    SB_CARRY add_132_4 (.CI(n19394), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19395));
    SB_LUT4 add_132_3_lut (.I0(n14_adj_1550), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19393), .O(data_idxvec_15__N_226[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_74_15_lut (.I0(IAC_MOSI), .I1(data_cntvec[13]), .I2(IAC_MOSI), 
            .I3(n19366), .O(n354)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n13473), 
            .D(n353), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n13473), 
            .D(n354), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n13473), 
            .D(n355), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n13473), 
            .D(n356), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15108));   // zim_main.vhd(528[3] 817[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n13473), 
            .D(n357), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n13473), 
            .D(n358), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n13473), 
            .D(n359), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n13473), 
            .D(n360), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n13473), 
            .D(n361), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n13473), 
            .D(n362), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n13473), 
            .D(n363), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n13473), 
            .D(n364), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n13473), 
            .D(n365), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n13473), 
            .D(n366), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_CARRY add_74_15 (.CI(n19366), .I0(data_cntvec[13]), .I1(IAC_MOSI), 
            .CO(n19367));
    SB_LUT4 i12775_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1544), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15193));   // zim_main.vhd(528[3] 817[10])
    defparam i12775_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_243 (.I0(comm_cmd[3]), .I1(n20646), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n11354));
    defparam i1_2_lut_3_lut_adj_243.LUT_INIT = 16'hdfdf;
    SB_LUT4 i12721_3_lut_4_lut (.I0(buf_dds0[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9321), .I3(n12383), .O(n15139));   // zim_main.vhd(528[3] 817[10])
    defparam i12721_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12720_3_lut_4_lut (.I0(buf_dds0[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9321), .I3(n12383), .O(n15138));   // zim_main.vhd(528[3] 817[10])
    defparam i12720_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_136_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1625));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_244 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4));   // zim_main.vhd(731[9:33])
    defparam i1_4_lut_adj_244.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_136_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1625), 
            .I2(comm_cmd[2]), .I3(IAC_MOSI), .O(n22_adj_1626));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_Mux_7_i30_3_lut (.I0(n22_adj_1626), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(IAC_MOSI), .O(n30_adj_1627));   // zim_main.vhd(583[5] 688[14])
    defparam mux_136_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF trig_dds1_315 (.Q(trig_dds1), .C(clk_32MHz), .D(n19758));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i11606_3_lut (.I0(n30_adj_1627), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14024));   // zim_main.vhd(530[4] 816[13])
    defparam i11606_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11602_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14020));   // zim_main.vhd(530[4] 816[13])
    defparam i11602_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11598_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14016));   // zim_main.vhd(530[4] 816[13])
    defparam i11598_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11594_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14012));   // zim_main.vhd(530[4] 816[13])
    defparam i11594_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11224_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13642));   // zim_main.vhd(530[4] 816[13])
    defparam i11224_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11590_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14008));   // zim_main.vhd(530[4] 816[13])
    defparam i11590_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_132_3 (.CI(n19393), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19394));
    SB_LUT4 i11586_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14004));   // zim_main.vhd(530[4] 816[13])
    defparam i11586_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12374_2_lut (.I0(n12152), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14787));   // zim_main.vhd(528[3] 817[10])
    defparam i12374_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12719_3_lut_4_lut (.I0(buf_dds0[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9321), .I3(n12383), .O(n15137));   // zim_main.vhd(528[3] 817[10])
    defparam i12719_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19_4_lut (.I0(n10713), .I1(n21116), .I2(comm_state[1]), .I3(comm_index[0]), 
            .O(n12_adj_1602));
    defparam i19_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_245 (.I0(n12_adj_1602), .I1(n20599), .I2(n20681), 
            .I3(IAC_MOSI), .O(n12152));
    defparam i1_3_lut_adj_245.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11582_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n14000));   // zim_main.vhd(530[4] 816[13])
    defparam i11582_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11578_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13996));   // zim_main.vhd(530[4] 816[13])
    defparam i11578_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11574_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13992));   // zim_main.vhd(530[4] 816[13])
    defparam i11574_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11570_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13988));   // zim_main.vhd(530[4] 816[13])
    defparam i11570_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11566_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13984));   // zim_main.vhd(530[4] 816[13])
    defparam i11566_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11562_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13980));   // zim_main.vhd(530[4] 816[13])
    defparam i11562_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11558_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13976));   // zim_main.vhd(530[4] 816[13])
    defparam i11558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12381_2_lut (.I0(n12194), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14794));   // zim_main.vhd(528[3] 817[10])
    defparam i12381_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_246 (.I0(n10713), .I1(n19006), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1639));
    defparam i19_4_lut_adj_246.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_3_lut_adj_247 (.I0(n12_adj_1639), .I1(n20599), .I2(n20681), 
            .I3(IAC_MOSI), .O(n12194));
    defparam i1_3_lut_adj_247.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11554_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13972));   // zim_main.vhd(530[4] 816[13])
    defparam i11554_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11550_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13968));   // zim_main.vhd(530[4] 816[13])
    defparam i11550_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11546_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13964));   // zim_main.vhd(530[4] 816[13])
    defparam i11546_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11542_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13960));   // zim_main.vhd(530[4] 816[13])
    defparam i11542_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11538_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13956));   // zim_main.vhd(530[4] 816[13])
    defparam i11538_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11534_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13952));   // zim_main.vhd(530[4] 816[13])
    defparam i11534_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11530_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13948));   // zim_main.vhd(530[4] 816[13])
    defparam i11530_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12718_3_lut_4_lut (.I0(buf_dds0[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9321), .I3(n12383), .O(n15136));   // zim_main.vhd(528[3] 817[10])
    defparam i12718_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12717_3_lut_4_lut (.I0(buf_dds0[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9321), .I3(n12383), .O(n15135));   // zim_main.vhd(528[3] 817[10])
    defparam i12717_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_248 (.I0(comm_index[1]), .I1(n20621), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n25_adj_1619));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_adj_248.LUT_INIT = 16'h4444;
    SB_LUT4 i12716_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9321), .I3(n11931), .O(n15134));   // zim_main.vhd(528[3] 817[10])
    defparam i12716_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12715_3_lut_4_lut (.I0(AMPV_POW), .I1(n9321), .I2(\comm_buf[0] [5]), 
            .I3(n11931), .O(n15133));   // zim_main.vhd(528[3] 817[10])
    defparam i12715_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12388_2_lut (.I0(n12236), .I1(comm_state[3]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14801));   // zim_main.vhd(528[3] 817[10])
    defparam i12388_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_249 (.I0(n10713), .I1(n19006), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1615));
    defparam i19_4_lut_adj_249.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_250 (.I0(n12_adj_1615), .I1(n20599), .I2(n20681), 
            .I3(IAC_MOSI), .O(n12236));
    defparam i1_3_lut_adj_250.LUT_INIT = 16'hc8c8;
    SB_LUT4 i12714_3_lut_4_lut (.I0(VDC_RNG0), .I1(\comm_buf[0] [4]), .I2(n9321), 
            .I3(n11931), .O(n15132));   // zim_main.vhd(528[3] 817[10])
    defparam i12714_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i11526_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(IAC_MOSI), .O(n13944));   // zim_main.vhd(530[4] 816[13])
    defparam i11526_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1595));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18193_4_lut (.I0(n4_adj_1595), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n20807));
    defparam i18193_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18194_3_lut (.I0(n22055), .I1(n20807), .I2(comm_index[2]), 
            .I3(IAC_MOSI), .O(n20808));
    defparam i18194_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n4_adj_1593));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18187_4_lut (.I0(n4_adj_1593), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n20801));
    defparam i18187_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18188_3_lut (.I0(n22049), .I1(n20801), .I2(comm_index[2]), 
            .I3(IAC_MOSI), .O(n20802));
    defparam i18188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15005_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(IAC_MOSI), .O(n17404));   // zim_main.vhd(250[9:19])
    defparam i15005_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18337_4_lut (.I0(n17404), .I1(\comm_buf[3] [5]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n20951));
    defparam i18337_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18338_3_lut (.I0(n22175), .I1(n20951), .I2(comm_index[0]), 
            .I3(IAC_MOSI), .O(n20952));
    defparam i18338_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12402_3_lut (.I0(n11503), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(IAC_MOSI), .O(n14815));   // zim_main.vhd(528[3] 817[10])
    defparam i12402_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i1_2_lut_3_lut_adj_251 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(IAC_MOSI), .O(n20646));   // zim_main.vhd(781[11:20])
    defparam i1_2_lut_3_lut_adj_251.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_252 (.I0(n12242), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9270), .O(n11503));
    defparam i1_4_lut_adj_252.LUT_INIT = 16'ha8a0;
    SB_LUT4 i1_4_lut_adj_253 (.I0(n20673), .I1(n9321), .I2(n12242), .I3(comm_state[3]), 
            .O(n11412));
    defparam i1_4_lut_adj_253.LUT_INIT = 16'hf531;
    SB_LUT4 i12713_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9321), 
            .I3(n11931), .O(n15131));   // zim_main.vhd(528[3] 817[10])
    defparam i12713_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2_3_lut_adj_254 (.I0(comm_index[1]), .I1(n4), .I2(comm_length[1]), 
            .I3(IAC_MOSI), .O(n5));   // zim_main.vhd(731[9:33])
    defparam i2_3_lut_adj_254.LUT_INIT = 16'hdede;
    SB_LUT4 i12712_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9321), 
            .I3(n11931), .O(n15130));   // zim_main.vhd(528[3] 817[10])
    defparam i12712_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12711_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9321), 
            .I3(n11931), .O(n15129));   // zim_main.vhd(528[3] 817[10])
    defparam i12711_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_255 (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), 
            .I2(wdtick_cnt[0]), .I3(IAC_MOSI), .O(n25_adj_1494));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_255.LUT_INIT = 16'h0b0b;
    SB_LUT4 i1_4_lut_4_lut_3_lut (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), 
            .I2(wdtick_cnt[0]), .I3(IAC_MOSI), .O(n23_adj_1495));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_4_lut_4_lut_3_lut.LUT_INIT = 16'h6868;
    SB_LUT4 i12_4_lut_adj_256 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20316));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_256.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_257 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20314));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 i15091_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n3));   // zim_main.vhd(530[4] 816[13])
    defparam i15091_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1678[1]), .I1(bit_cnt_adj_1678[0]), 
            .I2(IAC_MOSI), .I3(IAC_MOSI), .O(bit_cnt_3__N_973_adj_1682[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i19095_3_lut (.I0(bit_cnt_adj_1678[2]), .I1(bit_cnt_adj_1678[1]), 
            .I2(bit_cnt_adj_1678[0]), .I3(IAC_MOSI), .O(bit_cnt_3__N_973_adj_1682[2]));
    defparam i19095_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i19096_4_lut (.I0(bit_cnt_adj_1678[3]), .I1(bit_cnt_adj_1678[2]), 
            .I2(bit_cnt_adj_1678[1]), .I3(bit_cnt_adj_1678[0]), .O(bit_cnt_3__N_973_adj_1682[3]));
    defparam i19096_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 i12_4_lut_adj_258 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20312));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_259 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20310));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    ADC_ADS1252 ADC_VDC (.\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), .cmd_rdadctmp({Open_0, 
            cmd_rdadctmp_adj_1693[22:0]}), .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), 
            .GND_net(IAC_MOSI), .\adc_state[2] (adc_state_adj_1692[2]), 
            .\adc_state[3] (adc_state_adj_1692[3]), .n13109(n13109), .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), 
            .n12875(n12875), .\buf_adcdata_vac[23] (buf_adcdata_vac[23]), 
            .buf_adcdata_vdc({buf_adcdata_vdc}), .\comm_cmd[0] (comm_cmd[0]), 
            .n19(n19_adj_1526), .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .n19806(n19806), .VCC_net(VCC_net), .VDC_CLK(VDC_CLK), .n19808(n19808), 
            .n19810(n19810), .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .n19812(n19812), 
            .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), .n19814(n19814), .n19816(n19816), 
            .n19818(n19818), .n19820(n19820), .n19822(n19822), .n19824(n19824), 
            .n19826(n19826), .n19828(n19828), .n19830(n19830), .n19832(n19832), 
            .n19834(n19834), .n19836(n19836), .n19838(n19838), .VDC_SCLK(VDC_SCLK), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .n19840(n19840), .n19842(n19842), 
            .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), .n19844(n19844), .n19846(n19846), 
            .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), .n19848(n19848), .n19908(n19908), 
            .n19910(n19910), .n19912(n19912), .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), 
            .n19914(n19914), .n19916(n19916), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .n19918(n19918), .n19920(n19920), .n19922(n19922), .n19924(n19924), 
            .n19926(n19926), .n19928(n19928), .n19930(n19930), .n19932(n19932), 
            .n19934(n19934), .n19936(n19936), .n19938(n19938), .n19940(n19940), 
            .n19942(n19942), .n19944(n19944), .n19956(n19956), .n19958(n19958), 
            .n19960(n19960), .n19962(n19962), .\adc_state_3__N_1131[0] (VDC_SDO), 
            .n19866(n19866), .n20092(n20092), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), 
            .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), 
            .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), 
            .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), 
            .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), .clk_16MHz(clk_16MHz));   // zim_main.vhd(891[12:23])
    SB_LUT4 i12_4_lut_adj_260 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20308));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 add_74_14_lut (.I0(IAC_MOSI), .I1(data_cntvec[12]), .I2(IAC_MOSI), 
            .I3(n19365), .O(n355)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_14_lut.LUT_INIT = 16'hC33C;
    ADC_MAX31865 RTD (.\adc_state[2] (adc_state_adj_1697[2]), .GND_net(IAC_MOSI), 
            .\adc_state[3] (adc_state_adj_1697[3]), .RTD_CS(RTD_CS), .clk_RTD(clk_RTD), 
            .RTD_SCLK(RTD_SCLK), .\adc_state[1] (adc_state_adj_1697[1]), 
            .buf_readRTD({buf_readRTD}), .read_buf({read_buf}), .n11730(n11730), 
            .n13309(n13309), .n1(n1_adj_1601), .RTD_DRDY(RTD_DRDY), .buf_cfgRTD({buf_cfgRTD}), 
            .n19690(n19690), .VCC_net(VCC_net), .adress({Open_1, Open_2, 
            adress[5:1], Open_3}), .n19692(n19692), .n19694(n19694), 
            .n19696(n19696), .n19698(n19698), .n19700(n19700), .\adress[6] (adress[6]), 
            .n19966(n19966), .n19970(n19970), .n19974(n19974), .n19978(n19978), 
            .n19982(n19982), .n19986(n19986), .n19990(n19990), .n19994(n19994), 
            .n19998(n19998), .n20002(n20002), .n20006(n20006), .n20010(n20010), 
            .n20014(n20014), .n20018(n20018), .n20020(n20020), .n20022(n20022), 
            .n20024(n20024), .n20026(n20026), .n20028(n20028), .n20030(n20030), 
            .n20032(n20032), .n20034(n20034), .n20036(n20036), .n20038(n20038), 
            .n20040(n20040), .n20042(n20042), .n20044(n20044), .n20046(n20046), 
            .n20096(n20096), .n20098(n20098), .n13181(n13181), .RTD_SDI(RTD_SDI), 
            .\adress[0] (adress[0]));   // zim_main.vhd(900[8:20])
    SB_LUT4 i12_4_lut_adj_261 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20306));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_261.LUT_INIT = 16'hca0a;
    SB_LUT4 add_132_2_lut (.I0(n14_adj_1533), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_226[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_132_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_132_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19393));
    SB_CARRY add_74_14 (.CI(n19365), .I0(data_cntvec[12]), .I1(IAC_MOSI), 
            .CO(n19366));
    SB_LUT4 add_131_11_lut (.I0(data_index[9]), .I1(data_index[9]), .I2(n10614), 
            .I3(n19392), .O(n7_adj_1552)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_131_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10614), 
            .I3(n19391), .O(n7_adj_1554)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_262 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20304));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_262.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_263 (.I0(n16_adj_1623), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(IAC_MOSI), .O(n4_adj_1569));
    defparam i1_2_lut_3_lut_adj_263.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_264 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20302));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_264.LUT_INIT = 16'hca0a;
    SB_LUT4 i12707_3_lut_4_lut (.I0(dds_state_adj_1676[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1676[1]), .I3(dds_state_adj_1676[0]), .O(n15125));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12707_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i12_4_lut_adj_265 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20300));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_265.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_266 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20298));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_267 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20296));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_268 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20318));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_268.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_269 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20294));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_269.LUT_INIT = 16'hca0a;
    SB_LUT4 i12706_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15124));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12706_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i19_4_lut_adj_270 (.I0(trig_dds1), .I1(n20672), .I2(comm_state[3]), 
            .I3(n9321), .O(n19758));
    defparam i19_4_lut_adj_270.LUT_INIT = 16'h0ab0;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_271 (.I0(wdtick_cnt[1]), .I1(wdtick_cnt[2]), 
            .I2(wdtick_flag), .I3(wdtick_cnt[0]), .O(wdtick_flag_N_301));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_4_lut_adj_271.LUT_INIT = 16'hf0f4;
    SB_LUT4 i12_4_lut_adj_272 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20292));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_272.LUT_INIT = 16'hca0a;
    SB_DFF trig_dds0_314 (.Q(trig_dds0), .C(clk_32MHz), .D(n19764));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12_4_lut_adj_273 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20290));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_273.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_274 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20288));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_275 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20286));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_275.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_4_lut_adj_276 (.I0(adc_state_adj_1652[0]), .I1(IAC_SCLK), 
            .I2(DTRIG_N_919_adj_1451), .I3(adc_state_adj_1652[1]), .O(n20138));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_276.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_4_lut_4_lut_adj_277 (.I0(adc_state[0]), .I1(VAC_SCLK), .I2(DTRIG_N_919), 
            .I3(adc_state[1]), .O(n20134));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_277.LUT_INIT = 16'hc4d8;
    SB_LUT4 i18743_2_lut_3_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), 
            .I2(eis_end_N_725), .I3(IAC_MOSI), .O(n20957));
    defparam i18743_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 secclk_cnt_3776_3777_add_4_24_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[22]), .I3(n19530), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3776_3777_add_4_23_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[21]), .I3(n19529), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3798_3_lut_3_lut_4_lut (.I0(eis_end_N_725), .I1(iac_raw_buf_N_737), 
            .I2(n35), .I3(acadc_rst), .O(iac_raw_buf_N_735));   // zim_main.vhd(448[3] 523[10])
    defparam i3798_3_lut_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i18158_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(IAC_MOSI), .O(n20772));
    defparam i18158_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 n22196_bdd_4_lut_4_lut (.I0(eis_end_N_725), .I1(eis_state[0]), 
            .I2(n16594), .I3(n22196), .O(eis_state_2__N_171[0]));   // zim_main.vhd(448[3] 523[10])
    defparam n22196_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 i2_4_lut_4_lut_4_lut (.I0(eis_end_N_725), .I1(eis_state[0]), 
            .I2(eis_state[1]), .I3(acadc_rst), .O(n13473));   // zim_main.vhd(448[3] 523[10])
    defparam i2_4_lut_4_lut_4_lut.LUT_INIT = 16'h0045;
    SB_CARRY secclk_cnt_3776_3777_add_4_23 (.CI(n19529), .I0(IAC_MOSI), 
            .I1(secclk_cnt[21]), .CO(n19530));
    SB_LUT4 i12_4_lut_4_lut (.I0(eis_end_N_725), .I1(eis_state[1]), .I2(n20742), 
            .I3(acadc_trig), .O(n20104));   // zim_main.vhd(448[3] 523[10])
    defparam i12_4_lut_4_lut.LUT_INIT = 16'hf404;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n11503), 
            .D(n21971), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n11503), 
            .D(n21989), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n11503), 
            .D(n20952), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n11503), 
            .D(n22139), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n11503), 
            .D(n22157), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n11503), 
            .D(n20802), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i1_2_lut_4_lut_adj_278 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[0]), .I3(n20670), .O(n20672));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_4_lut_adj_278.LUT_INIT = 16'hffef;
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n11503), 
            .D(n20808), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12236), 
            .D(n13944), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12_4_lut_adj_279 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20284));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_280 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20282));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_280.LUT_INIT = 16'hca0a;
    SB_LUT4 i12690_3_lut (.I0(buf_control[0]), .I1(n14_adj_1545), .I2(n11931), 
            .I3(IAC_MOSI), .O(n15108));   // zim_main.vhd(528[3] 817[10])
    defparam i12690_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_281 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20280));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_281.LUT_INIT = 16'hca0a;
    SB_LUT4 i12241_2_lut (.I0(n13473), .I1(eis_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n14663));   // zim_main.vhd(448[3] 523[10])
    defparam i12241_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12236), 
            .D(n13948), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12236), 
            .D(n13952), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i15088_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(IAC_MOSI), .O(comm_clear_N_704));   // zim_main.vhd(530[4] 816[13])
    defparam i15088_2_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12236), 
            .D(n13956), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12236), 
            .D(n13960), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12236), 
            .D(n13964), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12236), 
            .D(n13968), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12194), 
            .D(n13972), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12194), 
            .D(n13976), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12194), 
            .D(n13980), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12194), 
            .D(n13984), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12194), 
            .D(n13988), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i15049_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(IAC_MOSI), .O(comm_state_3__N_436[2]));   // zim_main.vhd(781[11:20])
    defparam i15049_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12194), 
            .D(n13992), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12194), 
            .D(n13996), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_CARRY add_131_10 (.CI(n19391), .I0(data_index[8]), .I1(n10614), 
            .CO(n19392));
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12152), 
            .D(n14000), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12152), 
            .D(n14004), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12152), 
            .D(n14008), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12152), 
            .D(n13642), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12152), 
            .D(n14012), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12152), 
            .D(n14016), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12152), 
            .D(n14020), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12110), 
            .D(n14024), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12110), 
            .D(n14028), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12110), 
            .D(n14034), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12110), 
            .D(n14038), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 add_131_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10614), 
            .I3(n19390), .O(n7_adj_1556)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_9_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12110), 
            .D(n14042), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12110), 
            .D(n14046), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12110), 
            .D(n14050), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12047), 
            .D(n14054), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12047), 
            .D(n14058), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12047), 
            .D(n14062), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12047), 
            .D(n14066), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12047), 
            .D(n14070), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12047), 
            .D(n14074), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12047), 
            .D(n14078), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n11977), 
            .D(n14082), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n11977), 
            .D(n14090), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n11977), 
            .D(n14094), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n11977), 
            .D(n14098), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n11977), 
            .D(n14102), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n11977), 
            .D(n14106), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n11977), 
            .D(n14110), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n11935), 
            .D(THERMOSTAT_N_470), .R(n19904));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n11876), 
            .D(n30_adj_1542), .R(n14671));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i2_2_lut_3_lut_adj_282 (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(IAC_MOSI), .O(n11377));
    defparam i2_2_lut_3_lut_adj_282.LUT_INIT = 16'hfdfd;
    SB_LUT4 secclk_cnt_3776_3777_add_4_22_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[20]), .I3(n19528), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_283 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20278));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_283.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_3776_3777_add_4_22 (.CI(n19528), .I0(IAC_MOSI), 
            .I1(secclk_cnt[20]), .CO(n19529));
    SB_LUT4 secclk_cnt_3776_3777_add_4_21_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[19]), .I3(n19527), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_284 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20276));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_284.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_3776_3777_add_4_21 (.CI(n19527), .I0(IAC_MOSI), 
            .I1(secclk_cnt[19]), .CO(n19528));
    SB_CARRY add_131_9 (.CI(n19390), .I0(data_index[7]), .I1(n10614), 
            .CO(n19391));
    SB_LUT4 i12_4_lut_adj_285 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20274));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_285.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_286 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20272));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_286.LUT_INIT = 16'hca0a;
    SB_LUT4 n22052_bdd_4_lut (.I0(n22052), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n22055));
    defparam n22052_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_287 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20270));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_287.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_288 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20268));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_288.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_3_lut_4_lut (.I0(n9321), .I1(comm_state[3]), .I2(n11412), 
            .I3(trig_dds0), .O(n19764));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n11866), 
            .D(comm_index_2__N_447[2]), .R(n14753));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n11866), 
            .D(comm_index_2__N_447[1]), .R(n14753));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18_adj_1633), 
            .D(n19856), .R(comm_state[3]));   // zim_main.vhd(528[3] 817[10])
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n13473), 
            .D(n367), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 secclk_cnt_3776_3777_add_4_20_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[18]), .I3(n19526), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3776_3777_add_4_20 (.CI(n19526), .I0(IAC_MOSI), 
            .I1(secclk_cnt[18]), .CO(n19527));
    SB_LUT4 secclk_cnt_3776_3777_add_4_19_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[17]), .I3(n19525), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3776_3777_add_4_19 (.CI(n19525), .I0(IAC_MOSI), 
            .I1(secclk_cnt[17]), .CO(n19526));
    SB_LUT4 secclk_cnt_3776_3777_add_4_18_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[16]), .I3(n19524), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3776_3777_add_4_18 (.CI(n19524), .I0(IAC_MOSI), 
            .I1(secclk_cnt[16]), .CO(n19525));
    SB_LUT4 secclk_cnt_3776_3777_add_4_17_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[15]), .I3(n19523), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_289 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20266));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_289.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_290 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n12235));
    defparam i1_2_lut_adj_290.LUT_INIT = 16'heeee;
    SB_CARRY secclk_cnt_3776_3777_add_4_17 (.CI(n19523), .I0(IAC_MOSI), 
            .I1(secclk_cnt[15]), .CO(n19524));
    SB_LUT4 secclk_cnt_3776_3777_add_4_16_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[14]), .I3(n19522), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_74_13_lut (.I0(IAC_MOSI), .I1(data_cntvec[11]), .I2(IAC_MOSI), 
            .I3(n19364), .O(n356)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_291 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20264));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_291.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_3_lut_4_lut_adj_292 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(n20681), .I3(n20695), .O(n20697));   // zim_main.vhd(712[5] 722[12])
    defparam i2_3_lut_4_lut_adj_292.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_135_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1503));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_19419 (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n22046));
    defparam comm_index_0__bdd_4_lut_19419.LUT_INIT = 16'he4aa;
    SB_LUT4 n22046_bdd_4_lut (.I0(n22046), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n22049));
    defparam n22046_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18198_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(IAC_MOSI), .O(n20812));
    defparam i18198_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18200_4_lut (.I0(n20812), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20814));
    defparam i18200_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18183_3_lut (.I0(n16_adj_1503), .I1(buf_adcdata_iac[15]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20797));
    defparam i18183_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR secclk_cnt_3776_3777__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n14731));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_CARRY secclk_cnt_3776_3777_add_4_16 (.CI(n19522), .I0(IAC_MOSI), 
            .I1(secclk_cnt[14]), .CO(n19523));
    SB_DFFSR clk_cnt_3772_3773__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n30_adj_1492), 
            .R(n14730));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 mux_135_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1502));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18184_3_lut (.I0(n19_adj_1502), .I1(buf_readRTD[7]), .I2(comm_cmd[1]), 
            .I3(IAC_MOSI), .O(n20798));
    defparam i18184_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_293 (.I0(cmd_rdadctmp_adj_1693[16]), .I1(cmd_rdadctmp_adj_1693[15]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19836));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_293.LUT_INIT = 16'h0aca;
    SB_LUT4 i12692_3_lut (.I0(IAC_OSR0), .I1(n14_adj_1545), .I2(n12397), 
            .I3(IAC_MOSI), .O(n15110));   // zim_main.vhd(528[3] 817[10])
    defparam i12692_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19011_2_lut_3_lut (.I0(comm_index[1]), .I1(n20621), .I2(comm_index[2]), 
            .I3(IAC_MOSI), .O(n21116));   // zim_main.vhd(530[4] 816[13])
    defparam i19011_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 secclk_cnt_3776_3777_add_4_15_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[13]), .I3(n19521), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3776_3777_add_4_15 (.CI(n19521), .I0(IAC_MOSI), 
            .I1(secclk_cnt[13]), .CO(n19522));
    SB_LUT4 secclk_cnt_3776_3777_add_4_14_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[12]), .I3(n19520), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_131_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10614), 
            .I3(n19389), .O(n7_adj_1558)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_131_8 (.CI(n19389), .I0(data_index[6]), .I1(n10614), 
            .CO(n19390));
    SB_LUT4 i12693_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1545), .I2(n12411), 
            .I3(IAC_MOSI), .O(n15111));   // zim_main.vhd(528[3] 817[10])
    defparam i12693_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_131_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10614), 
            .I3(n19388), .O(n17409)) /* synthesis syn_instantiated=1 */ ;
    defparam add_131_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY secclk_cnt_3776_3777_add_4_14 (.CI(n19520), .I0(IAC_MOSI), 
            .I1(secclk_cnt[12]), .CO(n19521));
    SB_LUT4 i12_4_lut_adj_294 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20262));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_294.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19444 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22040));
    defparam comm_cmd_0__bdd_4_lut_19444.LUT_INIT = 16'he4aa;
    SB_LUT4 secclk_cnt_3776_3777_add_4_13_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[11]), .I3(n19519), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11670), .D(n417), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11670), .D(n416), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 mux_135_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n26_adj_1500));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_3_lut_adj_295 (.I0(comm_index[1]), .I1(n20621), .I2(comm_index[2]), 
            .I3(IAC_MOSI), .O(n7));   // zim_main.vhd(530[4] 816[13])
    defparam i2_2_lut_3_lut_adj_295.LUT_INIT = 16'h8080;
    SB_LUT4 n22040_bdd_4_lut (.I0(n22040), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n22043));
    defparam n22040_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY secclk_cnt_3776_3777_add_4_13 (.CI(n19519), .I0(IAC_MOSI), 
            .I1(secclk_cnt[11]), .CO(n19520));
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11670), .D(n415), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i18196_4_lut (.I0(n26_adj_1500), .I1(buf_data_vac[31]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n20810));
    defparam i18196_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11670), .D(n414), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11670), .D(n413), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 comm_state_3__I_0_374_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_702));   // zim_main.vhd(530[4] 816[13])
    defparam comm_state_3__I_0_374_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11670), .D(n412), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    GND i1 (.Y(IAC_MOSI));
    SB_LUT4 i1_4_lut_adj_296 (.I0(n12242), .I1(n20697), .I2(n1272), .I3(comm_state[0]), 
            .O(n4_adj_1614));
    defparam i1_4_lut_adj_296.LUT_INIT = 16'hc8cc;
    SB_LUT4 i18195_3_lut (.I0(acadc_skipCount[7]), .I1(req_data_cnt[7]), 
            .I2(comm_cmd[1]), .I3(IAC_MOSI), .O(n20809));
    defparam i18195_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18755_2_lut (.I0(n20646), .I1(comm_state[0]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20962));
    defparam i18755_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12695_3_lut (.I0(req_data_cnt[0]), .I1(n14_adj_1533), .I2(n12467), 
            .I3(IAC_MOSI), .O(n15113));   // zim_main.vhd(528[3] 817[10])
    defparam i12695_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_297 (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n12242), .O(n11401));
    defparam i1_3_lut_4_lut_adj_297.LUT_INIT = 16'hcf8a;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11670), .D(n411), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i12_4_lut_adj_298 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20260));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_298.LUT_INIT = 16'hca0a;
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11670), .D(n410), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    zim_pll pll_main (.GND_net(IAC_MOSI), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_692(DDS_MCLK1));   // zim_main.vhd(820[13:20])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11670), .D(n409), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    ADC_ADS127_U1 ADC_IAC (.\adc_state[1] (adc_state_adj_1652[1]), .\adc_state[0] (adc_state_adj_1652[0]), 
            .DTRIG_N_919(DTRIG_N_919_adj_1451), .clk_32MHz(clk_32MHz), .n20152(n20152), 
            .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1653}), .n20154(n20154), 
            .n20156(n20156), .n20158(n20158), .n20160(n20160), .n20162(n20162), 
            .n20164(n20164), .n20166(n20166), .n20182(n20182), .n20584(n20584), 
            .buf_adcdata_iac({buf_adcdata_iac}), .IAC_DRDY(IAC_DRDY), .n20612(n20612), 
            .n12663(n12663), .GND_net(IAC_MOSI), .n20138(n20138), .IAC_SCLK(IAC_SCLK), 
            .n20136(n20136), .acadc_dtrig_i(acadc_dtrig_i), .acadc_trig(acadc_trig), 
            .n20238(n20238), .n20368(n20368), .n20366(n20366), .n20364(n20364), 
            .n20362(n20362), .n20358(n20358), .n20244(n20244), .n11(n11_adj_1603), 
            .IAC_CS(IAC_CS), .n20356(n20356), .n20354(n20354), .n20352(n20352), 
            .n20350(n20350), .n20348(n20348), .n20346(n20346), .n20344(n20344), 
            .n20342(n20342), .n20340(n20340), .n20338(n20338), .n20336(n20336), 
            .n20334(n20334), .n20332(n20332), .n20330(n20330), .n20328(n20328), 
            .n20326(n20326));   // zim_main.vhd(857[12:22])
    SB_LUT4 comm_cmd_0__bdd_4_lut_19410 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22034));
    defparam comm_cmd_0__bdd_4_lut_19410.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_135_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n16_adj_1519));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11670), .D(n408), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i2_4_lut_adj_299 (.I0(n3), .I1(n4_adj_1614), .I2(ICE_SPI_CE0), 
            .I3(n12235), .O(n20551));
    defparam i2_4_lut_adj_299.LUT_INIT = 16'hcc8c;
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11670), .D(n407), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11670), .D(n406), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11670), .D(n405), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11670), .D(n404), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 secclk_cnt_3776_3777_add_4_12_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[10]), .I3(n19518), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11670), .D(n403), .R(n14687));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n13473), 
            .D(n348), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_CARRY secclk_cnt_3776_3777_add_4_12 (.CI(n19518), .I0(IAC_MOSI), 
            .I1(secclk_cnt[10]), .CO(n19519));
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n13473), 
            .D(n347), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n11503), 
            .D(n21983), .R(n14815));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12236), 
            .D(n13584), .R(n14801));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 add_73_6_lut (.I0(IAC_MOSI), .I1(data_count[4]), .I2(IAC_MOSI), 
            .I3(n19348), .O(n345)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_300 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12534), .I3(adc_state[0]), .O(n20320));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_300.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_301 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(IAC_MOSI), .O(n12242));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_3_lut_adj_301.LUT_INIT = 16'hfdfd;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12194), 
            .D(n13580), .R(n14794));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 mux_135_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(IAC_MOSI), .O(n19_adj_1520));   // zim_main.vhd(583[5] 688[14])
    defparam mux_135_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12152), 
            .D(n13576), .R(n14787));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12110), 
            .D(n13572), .R(n14780));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12047), 
            .D(n13568), .R(n14773));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n11977), 
            .D(n13564), .R(n14766));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12_4_lut_adj_302 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19714));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_302.LUT_INIT = 16'h0aca;
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n11876), 
            .D(n30_adj_1490), .R(n14671));   // zim_main.vhd(528[3] 817[10])
    SB_CARRY add_73_6 (.CI(n19348), .I0(data_count[4]), .I1(IAC_MOSI), 
            .CO(n19349));
    SB_LUT4 i1_2_lut_adj_303 (.I0(DTRIG_N_919), .I1(adc_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20590));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_303.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_304 (.I0(cmd_rdadctmp_adj_1693[15]), .I1(cmd_rdadctmp_adj_1693[14]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19834));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_304.LUT_INIT = 16'h0aca;
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30_adj_1480));   // zim_main.vhd(747[5] 803[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_LUT4 n22034_bdd_4_lut (.I0(n22034), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22037));
    defparam n22034_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n11866), 
            .D(comm_index_2__N_447[0]), .R(n14753));   // zim_main.vhd(528[3] 817[10])
    SB_DFFESR flagcntwd_313 (.Q(flagcntwd), .C(clk_32MHz), .E(n11406), 
            .D(n3), .R(n19904));   // zim_main.vhd(528[3] 817[10])
    SB_LUT4 i12_4_lut_adj_305 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19712));   // zim_main.vhd(528[3] 817[10])
    defparam i12_4_lut_adj_305.LUT_INIT = 16'h0aca;
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n13473), 
            .D(n346), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i2_3_lut_4_lut_adj_306 (.I0(comm_state[1]), .I1(n20681), .I2(n14545), 
            .I3(comm_data_vld), .O(n11420));
    defparam i2_3_lut_4_lut_adj_306.LUT_INIT = 16'hfeff;
    SB_LUT4 secclk_cnt_3776_3777_add_4_11_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[9]), .I3(n19517), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_74_13 (.CI(n19364), .I0(data_cntvec[11]), .I1(IAC_MOSI), 
            .CO(n19365));
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n13473), 
            .D(n345), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n13473), 
            .D(n344), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n13473), 
            .D(n343), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n13473), 
            .D(n342), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n13473), 
            .D(n341), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR data_count_i0_i9 (.Q(data_count[9]), .C(clk_32MHz), .E(n13473), 
            .D(n340), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_LUT4 i235_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n1272));   // zim_main.vhd(809[8:49])
    defparam i235_2_lut.LUT_INIT = 16'h4444;
    ADC_ADS127 ADC_VAC (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .\adc_state[1] (adc_state[1]), .DTRIG_N_919(DTRIG_N_919), .GND_net(IAC_MOSI), 
            .VAC_DRDY(VAC_DRDY), .acadc_trig(acadc_trig), .n20615(n20615), 
            .n12534(n12534), .acadc_dtrig_v(acadc_dtrig_v), .acadc_dtrig_i(acadc_dtrig_i), 
            .iac_raw_buf_N_737(iac_raw_buf_N_737), .buf_adcdata_vac({buf_adcdata_vac}), 
            .n20134(n20134), .VAC_SCLK(VAC_SCLK), .n20132(n20132), .n20242(n20242), 
            .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), .n11(n11_adj_1605), 
            .VAC_CS(VAC_CS), .n20590(n20590), .n20320(n20320), .n20260(n20260), 
            .n20262(n20262), .n20264(n20264), .n20266(n20266), .n20268(n20268), 
            .n20270(n20270), .n20272(n20272), .n20274(n20274), .n20276(n20276), 
            .n20278(n20278), .n20280(n20280), .n20282(n20282), .n20284(n20284), 
            .n20286(n20286), .n20288(n20288), .n20290(n20290), .n20292(n20292), 
            .n20294(n20294), .n20318(n20318), .n20296(n20296), .n20298(n20298), 
            .n20300(n20300), .n20302(n20302), .n20304(n20304), .n20306(n20306), 
            .n20308(n20308), .n20310(n20310), .n20312(n20312), .n20314(n20314), 
            .n20316(n20316));   // zim_main.vhd(843[12:22])
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n13473), 
            .D(n349), .R(n14663));   // zim_main.vhd(448[3] 523[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11670), .D(n418), .R(n20789));   // zim_main.vhd(448[3] 523[10])
    SB_DFFR wdtick_flag_299 (.Q(wdtick_flag), .C(TEST_LED), .D(wdtick_flag_N_301), 
            .R(flagcntwd));   // zim_main.vhd(398[3] 409[10])
    SB_LUT4 mux_143_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n1_adj_1583));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_143_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(IAC_MOSI), .O(n2_adj_1584));   // zim_main.vhd(695[30:40])
    defparam mux_143_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_307 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n4_adj_1598));
    defparam i1_4_lut_4_lut_adj_307.LUT_INIT = 16'h4fef;
    SB_CARRY secclk_cnt_3776_3777_add_4_11 (.CI(n19517), .I0(IAC_MOSI), 
            .I1(secclk_cnt[9]), .CO(n19518));
    SB_LUT4 i1_2_lut_adj_308 (.I0(comm_state[0]), .I1(comm_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20695));
    defparam i1_2_lut_adj_308.LUT_INIT = 16'hbbbb;
    SB_LUT4 secclk_cnt_3776_3777_add_4_10_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[8]), .I3(n19516), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_309 (.I0(comm_state[1]), .I1(comm_index[1]), 
            .I2(n4), .I3(comm_length[1]), .O(n20668));   // zim_main.vhd(530[4] 816[13])
    defparam i1_2_lut_4_lut_adj_309.LUT_INIT = 16'hf7fd;
    SB_LUT4 i12_4_lut_adj_310 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12244), .I3(comm_state[3]), .O(n19688));   // zim_main.vhd(244[9:19])
    defparam i12_4_lut_adj_310.LUT_INIT = 16'h0aca;
    DDS_AD9837_U0 CLK_DDS (.\dds_state_2__N_925[0] (dds_state_2__N_925_adj_1684[0]), 
            .dds_state({dds_state_adj_1676}), .clk_32MHz(clk_32MHz), .DDS_CS1(DDS_CS1), 
            .VCC_net(VCC_net), .GND_net(IAC_MOSI), .\tmp_buf[15] (tmp_buf_adj_1677[15]), 
            .n15128(n15128), .DDS_MOSI1(DDS_MOSI1), .n15125(n15125), .DDS_SCK1(DDS_SCK1), 
            .trig_dds1(trig_dds1), .buf_dds1({buf_dds1}), .bit_cnt({bit_cnt_adj_1678}), 
            .n8(n8_adj_1608), .\bit_cnt_3__N_973[3] (bit_cnt_3__N_973_adj_1682[3]), 
            .\bit_cnt_3__N_973[2] (bit_cnt_3__N_973_adj_1682[2]), .\bit_cnt_3__N_973[1] (bit_cnt_3__N_973_adj_1682[1]));   // zim_main.vhd(881[12:22])
    SB_CARRY secclk_cnt_3776_3777_add_4_10 (.CI(n19516), .I0(IAC_MOSI), 
            .I1(secclk_cnt[8]), .CO(n19517));
    SB_LUT4 secclk_cnt_3776_3777_add_4_9_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[7]), .I3(n19515), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n20717));
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h4eff;
    DDS_AD9837 SIG_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .DDS_CS(DDS_CS), .n20184(n20184), .VCC_net(VCC_net), .buf_dds0({buf_dds0}), 
            .\tmp_buf[15] (tmp_buf[15]), .n14900(n14900), .GND_net(IAC_MOSI), 
            .n15126(n15126), .DDS_MOSI(DDS_MOSI), .n15124(n15124), .DDS_SCK(DDS_SCK), 
            .trig_dds0(trig_dds0), .bit_cnt({Open_4, Open_5, Open_6, 
            bit_cnt_adj_1674[0]}), .n15830(n15830));   // zim_main.vhd(871[12:22])
    SB_LUT4 i18127_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(IAC_MOSI), 
            .I3(IAC_MOSI), .O(n20740));
    defparam i18127_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_74_12_lut (.I0(IAC_MOSI), .I1(data_cntvec[10]), .I2(IAC_MOSI), 
            .I3(n19363), .O(n357)) /* synthesis syn_instantiated=1 */ ;
    defparam add_74_12_lut.LUT_INIT = 16'hC33C;
    SB_DFF SecClk_302 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_691));   // zim_main.vhd(414[3] 420[10])
    SB_CARRY secclk_cnt_3776_3777_add_4_9 (.CI(n19515), .I0(IAC_MOSI), .I1(secclk_cnt[7]), 
            .CO(n19516));
    SB_CARRY add_73_4 (.CI(n19346), .I0(data_count[2]), .I1(IAC_MOSI), 
            .CO(n19347));
    SB_LUT4 i12709_4_lut_4_lut (.I0(acadc_rst), .I1(n20568), .I2(eis_end_N_725), 
            .I3(eis_end), .O(n15127));   // zim_main.vhd(348[18:31])
    defparam i12709_4_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i12_4_lut_adj_311 (.I0(cmd_rdadctmp_adj_1693[14]), .I1(cmd_rdadctmp_adj_1693[13]), 
            .I2(n12875), .I3(adc_state_adj_1692[3]), .O(n19832));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_311.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_312 (.I0(cmd_rdadctmp_adj_1653[24]), .I1(cmd_rdadctmp_adj_1653[23]), 
            .I2(n12663), .I3(adc_state_adj_1652[0]), .O(n20154));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_312.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_3776_3777_add_4_8_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[6]), .I3(n19514), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3776_3777_add_4_8 (.CI(n19514), .I0(IAC_MOSI), .I1(secclk_cnt[6]), 
            .CO(n19515));
    SB_LUT4 secclk_cnt_3776_3777_add_4_7_lut (.I0(IAC_MOSI), .I1(IAC_MOSI), 
            .I2(secclk_cnt[5]), .I3(n19513), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3776_3777_add_4_7_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_rx_buf, GND_net, comm_data_vld, clk_32MHz, comm_clear, 
            comm_tx_buf, VCC_net, ICE_SPI_MOSI, ICE_SPI_SCLK, ICE_SPI_MISO);
    output [7:0]comm_rx_buf;
    input GND_net;
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input [7:0]comm_tx_buf;
    input VCC_net;
    input ICE_SPI_MOSI;
    input ICE_SPI_SCLK;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire n16869, DOUT_7__N_744, DATA_VLD_N_799;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n14623, data_tx_7__N_767, imiso, n14621, data_tx_7__N_775, 
        n14619;
    wire [3:0]n21;
    
    wire n14631, n14630, n22667, n14624, n14626, DOUT_7__N_746, 
        DOUT_7__N_745, DOUT_7__N_743, DOUT_7__N_742, DOUT_7__N_741, 
        DOUT_7__N_739, data_tx_7__N_796, n14608, data_tx_7__N_774, n14620, 
        n14617, imosi_N_754, n14616, imosi_N_753, n14613, iclk_N_764, 
        n14612, iclk_N_763, imosi, data_tx_7__N_781, data_tx_7__N_769, 
        data_tx_7__N_784, data_tx_7__N_770, n14609, n22673, n22664, 
        n22661, n14627, data_tx_7__N_790, data_tx_7__N_772, data_tx_7__N_793, 
        data_tx_7__N_773, n22676, data_tx_7__N_787, data_tx_7__N_771, 
        n22688, n14635, n14634, n22685, n14639, n14638, n22682, 
        n14643, n14642, n22679, n14647, n14646, data_tx_7__N_768, 
        data_tx_7__N_778, n14651, n14650, n22670, DOUT_7__N_748, DOUT_7__N_747, 
        n14655, n14654;
    
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_744));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_799), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_DFFS data_tx_i7_12205_12206_set (.Q(n14623), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_767));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR MISO_48_12202_12203_reset (.Q(n14621), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_775));   // spi_slave.vhd(60[3] 64[10])
    SB_LUT4 i19194_4_lut_3_lut (.I0(n14619), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14619));   // spi_slave.vhd(60[3] 64[10])
    defparam i19194_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR bit_cnt_3778__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12214_3_lut (.I0(n14631), .I1(n14630), .I2(n22667), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12207_3_lut (.I0(n14624), .I1(n14623), .I2(n14619), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12207_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNS imiso_83_12208_12209_set (.Q(n14626), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_767));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_746), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_745), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_744), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_743), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_742), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_741), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_739), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_796));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_DFFS data_tx_i0_12190_12191_set (.Q(n14608), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_774));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNS MISO_48_12202_12203_set (.Q(n14620), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_767));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_12198_12199_reset (.Q(n14617), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_754));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS imosi_44_12198_12199_set (.Q(n14616), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_753));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFR iclk_40_12194_12195_reset (.Q(n14613), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_764));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS iclk_40_12194_12195_set (.Q(n14612), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_763));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 i19204_4_lut_3_lut (.I0(n22667), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n22667));   // spi_slave.vhd(70[3] 80[10])
    defparam i19204_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR bit_cnt_3778__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3778__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3778__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i16909_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16909_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_781));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_784));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_770));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i0_12190_12191_reset (.Q(n14609), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_796));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i16907_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16907_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i19224_4_lut_3_lut (.I0(n22673), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22673));   // spi_slave.vhd(70[3] 80[10])
    defparam i19224_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19184_4_lut_3_lut (.I0(n22664), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n22664));   // spi_slave.vhd(47[3] 55[10])
    defparam i19184_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_775));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19229_4_lut_3_lut (.I0(n22661), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22661));   // spi_slave.vhd(70[3] 80[10])
    defparam i19229_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12210_3_lut (.I0(n14627), .I1(n14626), .I2(n14619), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i12210_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_790));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_793));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_773));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19219_4_lut_3_lut (.I0(n22676), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22676));   // spi_slave.vhd(70[3] 80[10])
    defparam i19219_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_771));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12192_3_lut (.I0(n14609), .I1(n14608), .I2(n22688), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12192_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12218_3_lut (.I0(n14635), .I1(n14634), .I2(n22685), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12218_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12222_3_lut (.I0(n14639), .I1(n14638), .I2(n22682), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12222_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12226_3_lut (.I0(n14643), .I1(n14642), .I2(n22679), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12226_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12230_3_lut (.I0(n14647), .I1(n14646), .I2(n22676), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_768));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_40 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_739));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_40.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_41 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_741));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_41.LUT_INIT = 16'he0e0;
    SB_LUT4 i12204_3_lut (.I0(n14621), .I1(n14620), .I2(n14619), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i12204_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_778));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12234_3_lut (.I0(n14651), .I1(n14650), .I2(n22673), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12234_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19214_4_lut_3_lut (.I0(n22679), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22679));   // spi_slave.vhd(70[3] 80[10])
    defparam i19214_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_763));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_42 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_742));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_42.LUT_INIT = 16'he0e0;
    SB_LUT4 i12200_3_lut (.I0(n14617), .I1(n14616), .I2(n22670), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i12200_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_748));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_747));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_43 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_745));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_43.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_44 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_743));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_44.LUT_INIT = 16'he0e0;
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_767));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12196_3_lut (.I0(n14613), .I1(n14612), .I2(n22664), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i12196_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12238_3_lut (.I0(n14655), .I1(n14654), .I2(n22661), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12238_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n16869));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n16869), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_799));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_adj_45 (.I0(bit_cnt[3]), .I1(n16869), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_746));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_45.LUT_INIT = 16'he0e0;
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_764));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_753));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_754));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_774));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19234_4_lut_3_lut (.I0(n22688), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n22688));   // spi_slave.vhd(70[3] 80[10])
    defparam i19234_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19199_4_lut_3_lut (.I0(n22685), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22685));   // spi_slave.vhd(70[3] 80[10])
    defparam i19199_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19209_4_lut_3_lut (.I0(n22682), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22682));   // spi_slave.vhd(70[3] 80[10])
    defparam i19209_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19189_4_lut_3_lut (.I0(n22670), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n22670));   // spi_slave.vhd(47[3] 55[10])
    defparam i19189_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i16923_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16923_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i16916_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i16916_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFFR data_tx_i6_12236_12237_reset (.Q(n14655), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_778));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i6_12236_12237_set (.Q(n14654), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_768));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i5_12232_12233_reset (.Q(n14651), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_781));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_12232_12233_set (.Q(n14650), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_769));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i4_12228_12229_reset (.Q(n14647), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_784));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i4_12228_12229_set (.Q(n14646), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_770));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i3_12224_12225_reset (.Q(n14643), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i3_12224_12225_set (.Q(n14642), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_771));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_12220_12221_reset (.Q(n14639), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_790));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i2_12220_12221_set (.Q(n14638), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_772));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i1_12216_12217_reset (.Q(n14635), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_793));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i1_12216_12217_set (.Q(n14634), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_773));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_12212_12213_reset (.Q(n14631), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_748));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_12212_12213_set (.Q(n14630), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_747));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR imiso_83_12208_12209_reset (.Q(n14627), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_775));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_tx_i7_12205_12206_reset (.Q(n14624), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_775));   // spi_slave.vhd(70[3] 80[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (\cmd_rdadcbuf[21] , cmd_rdadctmp, \cmd_rdadcbuf[20] , 
            GND_net, \adc_state[2] , \adc_state[3] , n13109, \cmd_rdadcbuf[19] , 
            n12875, \buf_adcdata_vac[23] , buf_adcdata_vdc, \comm_cmd[0] , 
            n19, \cmd_rdadcbuf[18] , \cmd_rdadcbuf[17] , n19806, VCC_net, 
            VDC_CLK, n19808, n19810, \cmd_rdadcbuf[16] , n19812, \cmd_rdadcbuf[15] , 
            n19814, n19816, n19818, n19820, n19822, n19824, n19826, 
            n19828, n19830, n19832, n19834, n19836, n19838, VDC_SCLK, 
            \cmd_rdadcbuf[14] , n19840, n19842, \cmd_rdadcbuf[13] , 
            n19844, n19846, \cmd_rdadcbuf[34] , n19848, n19908, n19910, 
            n19912, \cmd_rdadcbuf[12] , n19914, n19916, \cmd_rdadcbuf[11] , 
            n19918, n19920, n19922, n19924, n19926, n19928, n19930, 
            n19932, n19934, n19936, n19938, n19940, n19942, n19944, 
            n19956, n19958, n19960, n19962, \adc_state_3__N_1131[0] , 
            n19866, n20092, \cmd_rdadcbuf[33] , \cmd_rdadcbuf[32] , 
            \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , \cmd_rdadcbuf[29] , 
            \cmd_rdadcbuf[28] , \cmd_rdadcbuf[27] , \cmd_rdadcbuf[26] , 
            \cmd_rdadcbuf[25] , \cmd_rdadcbuf[24] , \cmd_rdadcbuf[23] , 
            \cmd_rdadcbuf[22] , clk_16MHz);
    output \cmd_rdadcbuf[21] ;
    output [23:0]cmd_rdadctmp;
    output \cmd_rdadcbuf[20] ;
    input GND_net;
    output \adc_state[2] ;
    output \adc_state[3] ;
    output n13109;
    output \cmd_rdadcbuf[19] ;
    output n12875;
    input \buf_adcdata_vac[23] ;
    output [23:0]buf_adcdata_vdc;
    input \comm_cmd[0] ;
    output n19;
    output \cmd_rdadcbuf[18] ;
    output \cmd_rdadcbuf[17] ;
    input n19806;
    input VCC_net;
    output VDC_CLK;
    input n19808;
    input n19810;
    output \cmd_rdadcbuf[16] ;
    input n19812;
    output \cmd_rdadcbuf[15] ;
    input n19814;
    input n19816;
    input n19818;
    input n19820;
    input n19822;
    input n19824;
    input n19826;
    input n19828;
    input n19830;
    input n19832;
    input n19834;
    input n19836;
    input n19838;
    output VDC_SCLK;
    output \cmd_rdadcbuf[14] ;
    input n19840;
    input n19842;
    output \cmd_rdadcbuf[13] ;
    input n19844;
    input n19846;
    output \cmd_rdadcbuf[34] ;
    input n19848;
    input n19908;
    input n19910;
    input n19912;
    output \cmd_rdadcbuf[12] ;
    input n19914;
    input n19916;
    output \cmd_rdadcbuf[11] ;
    input n19918;
    input n19920;
    input n19922;
    input n19924;
    input n19926;
    input n19928;
    input n19930;
    input n19932;
    input n19934;
    input n19936;
    input n19938;
    input n19940;
    input n19942;
    input n19944;
    input n19956;
    input n19958;
    input n19960;
    input n19962;
    input \adc_state_3__N_1131[0] ;
    input n19866;
    input n20092;
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
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(56[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire n19442, n19443;
    wire [35:0]cmd_rdadcbuf_35__N_1139;
    
    wire n19441;
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n19440, n7, n13050, n13038, n19439, n19438, n19437, n19436, 
        n21718, n11692, n15816, n19435;
    wire [3:0]adc_state_3__N_1007;
    
    wire n20555, n19434, n12823;
    wire [35:0]cmd_rdadcbuf_35__N_1055;
    
    wire n19433, n19432;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19431, n19430, n19429, n19428, n19427, n19426;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n21082, n20534, n21079, n6, n10552, n18479, n21145, n11281, 
        n6_adj_1410, n15, n7_adj_1411, n20659, n20750, n19425;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n20, n19_adj_1412, n21, n10, n20562, n21224, n20748, 
        n31, n19424, n18482, n19423, n21977, n19422, n12, n72, 
        n20746, n47, n10132;
    wire [11:0]avg_cnt_11__N_1175;
    
    wire n19467, n19466, n19465, n19464, n19463, n19462, n19461, 
        n19460, n19459, n19458, n19457, n19_adj_1413;
    wire [7:0]n37;
    
    wire n19537, n19536, n19535, n19534, n19533, n19532, n19531, 
        n19455, n11766, n18466, n21974, n19454, n19453, n17432, 
        n11, n14931, n6_adj_1414, n12915;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n20392, n17, n4, n19452, n19451, n62, n19450, n19449, 
        n19448, n19447, n19446, n19445, n19444;
    
    SB_CARRY add_23_23 (.CI(n19442), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19443));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19441), .O(cmd_rdadcbuf_35__N_1139[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19441), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19442));
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n13109));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf200;
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19440), .O(cmd_rdadcbuf_35__N_1139[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19440), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19441));
    SB_LUT4 i1_3_lut_4_lut_adj_27 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n12875));
    defparam i1_3_lut_4_lut_adj_27.LUT_INIT = 16'hf200;
    SB_LUT4 i12085_2_lut_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i12085_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(n13050));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hdd80;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13038));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hf840;
    SB_LUT4 i16108_3_lut (.I0(\buf_adcdata_vac[23] ), .I1(buf_adcdata_vdc[23]), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n19));   // zim_main.vhd(246[9:17])
    defparam i16108_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19439), .O(cmd_rdadcbuf_35__N_1139[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_20 (.CI(n19439), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19440));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19438), .O(cmd_rdadcbuf_35__N_1139[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19806));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19808));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19810));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_19 (.CI(n19438), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19439));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19437), .O(cmd_rdadcbuf_35__N_1139[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19437), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19438));
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19812));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19436), .O(cmd_rdadcbuf_35__N_1139[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19814));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19816));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19818));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19820));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19822));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19824));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19826));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19828));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19830));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19832));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19834));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19836));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_17 (.CI(n19436), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19437));
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19838));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i19104_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21718));   // adc_ads1252u.vhd(31[8:17])
    defparam i19104_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16082_4_lut (.I0(n11692), .I1(adc_state[1]), .I2(VDC_SCLK), 
            .I3(n21718), .O(n15816));   // adc_ads1252u.vhd(31[8:17])
    defparam i16082_4_lut.LUT_INIT = 16'h7250;
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19435), .O(cmd_rdadcbuf_35__N_1139[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n19435), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19436));
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19840));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19842));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(VDC_CLK), .E(n20555), .D(adc_state_3__N_1007[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19434), .O(cmd_rdadcbuf_35__N_1139[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19844));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_15 (.CI(n19434), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19435));
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19846));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n12823), 
            .D(adc_state_3__N_1007[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13050), 
            .D(cmd_rdadcbuf_35__N_1055[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19848));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19908));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19910));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19912));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19433), .O(cmd_rdadcbuf_35__N_1139[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19914));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19916));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_14 (.CI(n19433), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19434));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19432), .O(cmd_rdadcbuf_35__N_1139[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19432), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19433));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19431), .O(cmd_rdadcbuf_35__N_1139[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19431), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19432));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19430), .O(cmd_rdadcbuf_35__N_1139[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n19430), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19431));
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19918));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19920));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19922));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19924));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19926));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19928));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19930));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19932));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19934));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19936));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19938));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19940));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19942));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19944));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19956));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19958));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19429), .O(cmd_rdadcbuf_35__N_1139[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19960));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19962));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_10 (.CI(n19429), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19430));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19428), .O(cmd_rdadcbuf_35__N_1139[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19428), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19429));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19427), .O(cmd_rdadcbuf_35__N_1139[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_8 (.CI(n19427), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19428));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19426), .O(cmd_rdadcbuf_35__N_1139[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19094_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n21082));
    defparam i19094_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i18857_4_lut (.I0(n21082), .I1(adc_state[0]), .I2(n20534), 
            .I3(bit_cnt[4]), .O(n21079));
    defparam i18857_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6), .O(n10552));
    defparam i4_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i18888_3_lut (.I0(n18479), .I1(\adc_state[2] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n21145));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i18888_3_lut.LUT_INIT = 16'h2121;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1139[34]), 
            .I1(n21145), .I2(\adc_state[3] ), .I3(adc_state[1]), .O(cmd_rdadcbuf_35__N_1055[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20534));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[1]), .I1(n20534), .I2(GND_net), .I3(GND_net), 
            .O(n11281));   // adc_ads1252u.vhd(89[8:24])
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_28 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1410));   // adc_ads1252u.vhd(72[8:24])
    defparam i1_2_lut_adj_28.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut_adj_29 (.I0(n11281), .I1(bit_cnt[4]), .I2(bit_cnt[0]), 
            .I3(n6_adj_1410), .O(n15));   // adc_ads1252u.vhd(72[8:24])
    defparam i4_4_lut_adj_29.LUT_INIT = 16'hffef;
    SB_LUT4 i15177_2_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7_adj_1411));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i15177_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_30 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n20659));
    defparam i1_2_lut_adj_30.LUT_INIT = 16'heeee;
    SB_LUT4 i18137_2_lut (.I0(\adc_state_3__N_1131[0] ), .I1(n7_adj_1411), 
            .I2(GND_net), .I3(GND_net), .O(n20750));
    defparam i18137_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_23_7 (.CI(n19426), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19427));
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19425), .O(cmd_rdadcbuf_35__N_1139[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[7]), .I2(avg_cnt[4]), 
            .I3(avg_cnt[3]), .O(n20));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[10]), .I1(avg_cnt[0]), .I2(avg_cnt[9]), 
            .I3(avg_cnt[8]), .O(n19_adj_1412));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[6]), .I1(avg_cnt[2]), .I2(avg_cnt[11]), 
            .I3(avg_cnt[1]), .O(n21));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i9_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19_adj_1412), .I2(n20), .I3(GND_net), 
            .O(n18479));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i4_4_lut_adj_31 (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(bit_cnt[5]), .O(n10));
    defparam i4_4_lut_adj_31.LUT_INIT = 16'h0008;
    SB_LUT4 i5_3_lut (.I0(bit_cnt[6]), .I1(n10), .I2(bit_cnt[7]), .I3(GND_net), 
            .O(n20562));
    defparam i5_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i18952_4_lut (.I0(bit_cnt[4]), .I1(\adc_state[3] ), .I2(bit_cnt[3]), 
            .I3(n20562), .O(n21224));
    defparam i18952_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i18135_2_lut (.I0(\adc_state_3__N_1131[0] ), .I1(adc_state[1]), 
            .I2(GND_net), .I3(GND_net), .O(n20748));
    defparam i18135_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i37_4_lut (.I0(\adc_state_3__N_1131[0] ), .I1(adc_state[0]), 
            .I2(n21224), .I3(adc_state[1]), .O(n31));
    defparam i37_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 i1_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(n31), 
            .I3(n20748), .O(n20555));
    defparam i1_4_lut.LUT_INIT = 16'hfafe;
    SB_CARRY add_23_6 (.CI(n19425), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19426));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19424), .O(cmd_rdadcbuf_35__N_1139[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_5 (.CI(n19424), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19425));
    SB_LUT4 i16053_3_lut (.I0(n18479), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n18482));   // adc_ads1252u.vhd(31[8:17])
    defparam i16053_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19423), .O(cmd_rdadcbuf_35__N_1139[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i16055_4_lut (.I0(n21977), .I1(n18482), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1007[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16055_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_23_4 (.CI(n19423), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19424));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19422), .O(cmd_rdadcbuf_35__N_1139[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19422), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19423));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(cmd_rdadctmp[0]), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1139[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(cmd_rdadctmp[0]), 
            .CO(n19422));
    SB_LUT4 i16066_3_lut (.I0(\adc_state_3__N_1131[0] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n12));   // adc_ads1252u.vhd(31[8:17])
    defparam i16066_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i1_4_lut_adj_32 (.I0(\adc_state[2] ), .I1(n12), .I2(n20750), 
            .I3(\adc_state[3] ), .O(n72));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_32.LUT_INIT = 16'hafee;
    SB_LUT4 i18133_2_lut (.I0(n15), .I1(adc_state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n20746));
    defparam i18133_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n20746), .I1(n72), .I2(adc_state[1]), 
            .I3(n20659), .O(n47));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_33.LUT_INIT = 16'hcc4c;
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(n10132), 
            .I3(n20750), .O(n12823));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdcfe;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19467), .O(avg_cnt_11__N_1175[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19466), .O(avg_cnt_11__N_1175[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19466), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19467));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19465), .O(avg_cnt_11__N_1175[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n19465), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19466));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19464), .O(avg_cnt_11__N_1175[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19464), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19465));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19463), .O(avg_cnt_11__N_1175[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n19463), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19464));
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n19866));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19462), .O(avg_cnt_11__N_1175[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20092));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_24_8 (.CI(n19462), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19463));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19461), .O(avg_cnt_11__N_1175[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19461), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19462));
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n15816));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19460), .O(avg_cnt_11__N_1175[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19460), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19461));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19459), .O(avg_cnt_11__N_1175[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19459), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19460));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19458), .O(avg_cnt_11__N_1175[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19458), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19459));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19457), .O(avg_cnt_11__N_1175[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19457), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19458));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1175[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i40_3_lut_4_lut (.I0(\adc_state_3__N_1131[0] ), .I1(n15), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n19_adj_1413));
    defparam i40_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_LUT4 bit_cnt_3780_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19537), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3780_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19536), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_8 (.CI(n19536), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19537));
    SB_LUT4 bit_cnt_3780_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19535), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_7 (.CI(n19535), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19536));
    SB_LUT4 bit_cnt_3780_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19534), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_6 (.CI(n19534), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19535));
    SB_LUT4 bit_cnt_3780_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19533), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_5 (.CI(n19533), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19534));
    SB_LUT4 bit_cnt_3780_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19532), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7717_3_lut_4_lut (.I0(\adc_state_3__N_1131[0] ), .I1(n15), 
            .I2(adc_state[1]), .I3(adc_state[0]), .O(n10132));
    defparam i7717_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_CARRY bit_cnt_3780_add_4_4 (.CI(n19532), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19533));
    SB_LUT4 bit_cnt_3780_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19531), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_3 (.CI(n19531), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19532));
    SB_LUT4 bit_cnt_3780_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3780_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19457));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19455), .O(cmd_rdadcbuf_35__N_1139[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_cnt_3780__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11766), 
            .D(n37[7]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11766), 
            .D(n37[6]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11766), 
            .D(n37[5]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11766), 
            .D(n37[4]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11766), 
            .D(n37[3]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11766), 
            .D(n37[2]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3780__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11766), 
            .D(n37[1]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10552), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n21974));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19454), .O(cmd_rdadcbuf_35__N_1139[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n21974_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21079), .I3(n21974), .O(n21977));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam n21974_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_CARRY add_23_35 (.CI(n19454), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19455));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19453), .O(cmd_rdadcbuf_35__N_1139[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3780_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19531));
    SB_LUT4 i1_4_lut_4_lut_adj_34 (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1131[0] ), .O(adc_state_3__N_1007[0]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_4_lut_4_lut_adj_34.LUT_INIT = 16'h1514;
    SB_LUT4 i1_4_lut_4_lut_adj_35 (.I0(adc_state[0]), .I1(n17432), .I2(n11), 
            .I3(\adc_state[3] ), .O(n18466));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_4_lut_4_lut_adj_35.LUT_INIT = 16'hf0d0;
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[11]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[10]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[9]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[8]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[7]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[6]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[5]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[4]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[3]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[2]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[1]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[33]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[32]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[31]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[30]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[29]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[28]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[27]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[26]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[25]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[24]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[23]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[22]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[21]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[20]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[19]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[18]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[17]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[16]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[15]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[14]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[13]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[12]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[11]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[10]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[9]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[8]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[7]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[6]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[5]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[4]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[3]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[2]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[1]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n12915), 
            .D(n6_adj_1414), .R(n20392));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n17), 
            .D(n7), .R(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i19168_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1131[0] ), 
            .I2(n7_adj_1411), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i19168_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(n20534), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i19163_4_lut (.I0(\adc_state[2] ), .I1(n19_adj_1413), .I2(n20750), 
            .I3(\adc_state[3] ), .O(n17));
    defparam i19163_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i1_2_lut_adj_36 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n20392));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut_adj_36.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_37 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n12915));
    defparam i1_4_lut_adj_37.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state[1]), .I3(n10552), .O(n6_adj_1414));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_CARRY add_23_34 (.CI(n19453), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19454));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19452), .O(cmd_rdadcbuf_35__N_1139[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12557_2_lut (.I0(n13038), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12557_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_23_33 (.CI(n19452), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19453));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19451), .O(cmd_rdadcbuf_35__N_1139[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_adj_38 (.I0(\adc_state[2] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(adc_state_3__N_1007[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_adj_38.LUT_INIT = 16'h1580;
    SB_LUT4 i1_2_lut_adj_39 (.I0(adc_state[0]), .I1(\adc_state_3__N_1131[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n62));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_2_lut_adj_39.LUT_INIT = 16'heeee;
    SB_LUT4 i15034_2_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n17432));
    defparam i15034_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i24_4_lut (.I0(n62), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n11));   // adc_ads1252u.vhd(31[8:17])
    defparam i24_4_lut.LUT_INIT = 16'hf03a;
    SB_LUT4 i16075_4_lut (.I0(n62), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(adc_state[1]), .O(n11766));   // adc_ads1252u.vhd(31[8:17])
    defparam i16075_4_lut.LUT_INIT = 16'hc2ce;
    SB_CARRY add_23_32 (.CI(n19451), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19452));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19450), .O(cmd_rdadcbuf_35__N_1139[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19450), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19451));
    SB_LUT4 i19101_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n11692));
    defparam i19101_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19449), .O(cmd_rdadcbuf_35__N_1139[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_cnt_3780__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11766), 
            .D(n37[0]), .R(n18466));   // adc_ads1252u.vhd(84[17:24])
    SB_CARRY add_23_30 (.CI(n19449), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19450));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19448), .O(cmd_rdadcbuf_35__N_1139[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19448), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19449));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19447), .O(cmd_rdadcbuf_35__N_1139[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13038), .D(avg_cnt_11__N_1175[0]), 
            .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13038), 
            .D(cmd_rdadcbuf_35__N_1139[0]), .R(n14931));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n47), .D(adc_state_3__N_1007[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_28 (.CI(n19447), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19448));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19446), .O(cmd_rdadcbuf_35__N_1139[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n19446), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19447));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19445), .O(cmd_rdadcbuf_35__N_1139[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19445), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19446));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19444), .O(cmd_rdadcbuf_35__N_1139[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19444), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19445));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19443), .O(cmd_rdadcbuf_35__N_1139[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19443), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19444));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19442), .O(cmd_rdadcbuf_35__N_1139[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
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
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(56[3:10])
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire div_state_1__N_1275;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n28, n26, n27, n21208;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1407, n26_adj_1408, n27_adj_1409, n21211, n21206, 
        n21205, n2, n15067;
    wire [1:0]div_state_1__N_1188;
    
    wire n6;
    wire [16:0]t0on_15__N_1222;
    
    wire n19497, n19496, n19495, n19494, n19493, n19492, n19491, 
        n19490, n19489, n19488, n19487, n19486, n19485, n19484, 
        n19483;
    wire [16:0]t0off_15__N_1238;
    
    wire n19482, n19481, n19480, n19479, n19478, n19477, n19476, 
        n19475, n19474, n19473, n19472, n19471, n19470, n19469, 
        n19468, n11751;
    
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1275));   // vdc_gen_clk.vhd(31[4] 55[13])
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
    SB_LUT4 i19076_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21208));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19076_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_24 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1407));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_24.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_25 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1408));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_25.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_26 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1409));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_26.LUT_INIT = 16'hfffe;
    SB_LUT4 i18784_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21211));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18784_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i18779_4_lut (.I0(n21208), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21206));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18779_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18825_4_lut (.I0(n21211), .I1(n27_adj_1409), .I2(n26_adj_1408), 
            .I3(n28_adj_1407), .O(n21205));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i18825_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1275));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i12662_2_lut_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    defparam i12662_2_lut_2_lut.LUT_INIT = 16'h1111;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1188[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i11997_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1188[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i11997_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19497), .O(t0on_15__N_1222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19496), .O(t0on_15__N_1222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19496), .I0(t0on[14]), .I1(VCC_net), .CO(n19497));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19495), .O(t0on_15__N_1222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19495), .I0(t0on[13]), .I1(VCC_net), .CO(n19496));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19494), .O(t0on_15__N_1222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19494), .I0(t0on[12]), .I1(VCC_net), .CO(n19495));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19493), .O(t0on_15__N_1222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19493), .I0(t0on[11]), .I1(VCC_net), .CO(n19494));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19492), .O(t0on_15__N_1222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19492), .I0(t0on[10]), .I1(VCC_net), .CO(n19493));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19491), 
            .O(t0on_15__N_1222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19491), .I0(t0on[9]), .I1(VCC_net), .CO(n19492));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19490), 
            .O(t0on_15__N_1222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19490), .I0(t0on[8]), .I1(VCC_net), .CO(n19491));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19489), 
            .O(t0on_15__N_1222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19489), .I0(t0on[7]), .I1(VCC_net), .CO(n19490));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19488), 
            .O(t0on_15__N_1222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19488), .I0(t0on[6]), .I1(VCC_net), .CO(n19489));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19487), 
            .O(t0on_15__N_1222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19487), .I0(t0on[5]), .I1(VCC_net), .CO(n19488));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19486), 
            .O(t0on_15__N_1222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19486), .I0(t0on[4]), .I1(VCC_net), .CO(n19487));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19485), 
            .O(t0on_15__N_1222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19485), .I0(t0on[3]), .I1(VCC_net), .CO(n19486));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19484), 
            .O(t0on_15__N_1222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19484), .I0(t0on[2]), .I1(VCC_net), .CO(n19485));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19483), 
            .O(t0on_15__N_1222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19483), .I0(t0on[1]), .I1(VCC_net), .CO(n19484));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19483));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19482), .O(t0off_15__N_1238[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19481), .O(t0off_15__N_1238[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19481), .I0(t0off[14]), .I1(VCC_net), .CO(n19482));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19480), .O(t0off_15__N_1238[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19480), .I0(t0off[13]), .I1(VCC_net), .CO(n19481));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19479), .O(t0off_15__N_1238[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19479), .I0(t0off[12]), .I1(VCC_net), .CO(n19480));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19478), .O(t0off_15__N_1238[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19478), .I0(t0off[11]), .I1(VCC_net), .CO(n19479));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19477), .O(t0off_15__N_1238[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19477), .I0(t0off[10]), .I1(VCC_net), .CO(n19478));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19476), .O(t0off_15__N_1238[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19476), .I0(t0off[9]), .I1(VCC_net), .CO(n19477));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19475), .O(t0off_15__N_1238[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19475), .I0(t0off[8]), .I1(VCC_net), .CO(n19476));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19474), 
            .O(t0off_15__N_1238[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19474), .I0(t0off[7]), .I1(VCC_net), .CO(n19475));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19473), 
            .O(t0off_15__N_1238[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19473), .I0(t0off[6]), .I1(VCC_net), .CO(n19474));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19472), 
            .O(t0off_15__N_1238[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19472), .I0(t0off[5]), .I1(VCC_net), .CO(n19473));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19471), 
            .O(t0off_15__N_1238[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19471), .I0(t0off[4]), .I1(VCC_net), .CO(n19472));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19470), 
            .O(t0off_15__N_1238[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19470), .I0(t0off[3]), .I1(VCC_net), .CO(n19471));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19469), 
            .O(t0off_15__N_1238[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19469), .I0(t0off[2]), .I1(VCC_net), .CO(n19470));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19468), 
            .O(t0off_15__N_1238[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19468), .I0(t0off[1]), .I1(VCC_net), .CO(n19469));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1238[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19468));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[15]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[14]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[13]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[12]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[11]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[10]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[9]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[8]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[7]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[6]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[5]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[4]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[3]), 
            .S(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[2]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[1]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[15]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[14]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[13]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[12]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[11]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[10]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[9]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[8]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[7]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[6]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[5]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[4]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[3]), .S(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[2]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[1]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19102_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11751));
    defparam i19102_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i19182_2_lut_4_lut (.I0(n21205), .I1(n21206), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19182_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11751), .D(t0off_15__N_1238[0]), 
            .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1275), 
            .D(t0on_15__N_1222[0]), .R(n15067));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19161_2_lut_4_lut (.I0(n21205), .I1(n21206), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19161_2_lut_4_lut.LUT_INIT = 16'hcaff;
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (\adc_state[2] , GND_net, \adc_state[3] , RTD_CS, 
            clk_RTD, RTD_SCLK, \adc_state[1] , buf_readRTD, read_buf, 
            n11730, n13309, n1, RTD_DRDY, buf_cfgRTD, n19690, VCC_net, 
            adress, n19692, n19694, n19696, n19698, n19700, \adress[6] , 
            n19966, n19970, n19974, n19978, n19982, n19986, n19990, 
            n19994, n19998, n20002, n20006, n20010, n20014, n20018, 
            n20020, n20022, n20024, n20026, n20028, n20030, n20032, 
            n20034, n20036, n20038, n20040, n20042, n20044, n20046, 
            n20096, n20098, n13181, RTD_SDI, \adress[0] );
    output \adc_state[2] ;
    input GND_net;
    output \adc_state[3] ;
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    output \adc_state[1] ;
    output [15:0]buf_readRTD;
    output [15:0]read_buf;
    output n11730;
    output n13309;
    output n1;
    input RTD_DRDY;
    input [7:0]buf_cfgRTD;
    input n19690;
    input VCC_net;
    output [7:0]adress;
    input n19692;
    input n19694;
    input n19696;
    input n19698;
    input n19700;
    output \adress[6] ;
    input n19966;
    input n19970;
    input n19974;
    input n19978;
    input n19982;
    input n19986;
    input n19990;
    input n19994;
    input n19998;
    input n20002;
    input n20006;
    input n20010;
    input n20014;
    input n20018;
    input n20020;
    input n20022;
    input n20024;
    input n20026;
    input n20028;
    input n20030;
    input n20032;
    input n20034;
    input n20036;
    input n20038;
    input n20040;
    input n20042;
    input n20044;
    input n20046;
    input n20096;
    input n20098;
    output n13181;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(267[9:16])
    
    wire mode;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    
    wire n20762, n20656;
    wire [3:0]adc_state_3__N_1292;
    wire [3:0]adc_state_3__N_1368;
    
    wire n4, n21325, CS_N_1385, n11703, SCLK_N_1384, n8, n11742, 
        n1_c, n14717, n11756, n15081, n7, n7333;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    
    wire n17720, n16669, n20072, n21323, n21276, n26, n21275, 
        n22370, n13, n20070, n21309, n12, n20631;
    wire [7:0]adress_7__N_1340;
    
    wire n19876;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n13192, n19888, n19874, n12_adj_1397, n10, n11734, n11;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n3, n15350, n9, n15347, n15341, n15335, n15332;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7_adj_1398, n16695;
    wire [3:0]n21;
    
    wire n15809, n7_adj_1399, n13228, n15015, n7_adj_1400, n7_adj_1401, 
        n7_adj_1402, n7_adj_1403, n7_adj_1404, n7_adj_1405, n3_adj_1406, 
        n20587, n19;
    
    SB_LUT4 i16303_3_lut (.I0(mode), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n20762));   // adc_max31865.vhd(24[8:17])
    defparam i16303_3_lut.LUT_INIT = 16'hcbcb;
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n20762), .I1(\adc_state[2] ), 
            .I2(\adc_state[3] ), .I3(n20656), .O(adc_state_3__N_1292[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h3035;
    SB_LUT4 i19023_4_lut (.I0(adc_state_3__N_1368[1]), .I1(n4), .I2(\adc_state[3] ), 
            .I3(mode), .O(n21325));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19023_4_lut.LUT_INIT = 16'hccc8;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11703), .D(CS_N_1385));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1384));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(clk_RTD), .E(n11742), .D(adc_state_3__N_1292[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19_4_lut (.I0(n21325), .I1(\adc_state[3] ), .I2(\adc_state[2] ), 
            .I3(n1_c), .O(adc_state_3__N_1292[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19_4_lut.LUT_INIT = 16'h3a0a;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_RTD), .E(n11742), 
            .D(adc_state_3__N_1292[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11742), 
            .D(adc_state_3__N_1292[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(clk_RTD), .E(n11742), 
            .D(adc_state_3__N_1292[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(\adc_state[3] ), .O(n14717));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_LUT4 i19171_4_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state[1] ), 
            .I2(adc_state[0]), .I3(\adc_state[2] ), .O(n11756));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19171_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_LUT4 i1_3_lut_4_lut (.I0(\adc_state[1] ), .I1(adc_state[0]), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n15081));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'he412;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7), .I1(n7333), .I2(\adc_state[3] ), 
            .I3(adc_state[0]), .O(adc_state_3__N_1292[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17720));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17720), .I2(GND_net), .I3(GND_net), 
            .O(adc_state_3__N_1368[1]));   // adc_max31865.vhd(104[8:23])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_4_lut (.I0(\adc_state[3] ), .I1(adc_state[0]), .I2(n7333), 
            .I3(n16669), .O(n11742));
    defparam i3_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11730), 
            .I3(\adc_state[2] ), .O(n20072));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19088_2_lut (.I0(bit_cnt[3]), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n21323));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19088_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18725_4_lut (.I0(\adc_state[1] ), .I1(mode), .I2(\adc_state[2] ), 
            .I3(adc_state_3__N_1368[1]), .O(n21276));   // adc_max31865.vhd(39[4] 147[13])
    defparam i18725_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i45_4_lut (.I0(n21323), .I1(n1_c), .I2(\adc_state[2] ), .I3(n17720), 
            .O(n26));   // adc_max31865.vhd(39[4] 147[13])
    defparam i45_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i19037_3_lut (.I0(n21276), .I1(adc_state[0]), .I2(n20656), 
            .I3(GND_net), .O(n21275));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19037_3_lut.LUT_INIT = 16'hbaba;
    SB_LUT4 i18150_rep_64_2_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n22370));
    defparam i18150_rep_64_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(n22370), .I1(n21275), .I2(n26), .I3(\adc_state[3] ), 
            .O(adc_state_3__N_1292[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i30_3_lut_4_lut_3_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state[3] ), .I3(GND_net), .O(n13));   // adc_max31865.vhd(39[4] 147[13])
    defparam i30_3_lut_4_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i12_4_lut_adj_6 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13309), 
            .I3(n1), .O(n20070));
    defparam i12_4_lut_adj_6.LUT_INIT = 16'hca0a;
    SB_LUT4 i19089_3_lut (.I0(RTD_DRDY), .I1(n7333), .I2(adc_state[0]), 
            .I3(GND_net), .O(n21309));   // adc_max31865.vhd(24[8:17])
    defparam i19089_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i1_4_lut_adj_7 (.I0(mode), .I1(n21309), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n12));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_7.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_8 (.I0(n20631), .I1(n12), .I2(adress_7__N_1340[7]), 
            .I3(n7333), .O(n19876));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_8.LUT_INIT = 16'hccec;
    SB_LUT4 i2_3_lut_adj_9 (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(\adc_state[3] ), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut_adj_9.LUT_INIT = 16'h4040;
    SB_LUT4 i11_4_lut (.I0(cfg_buf[5]), .I1(n20631), .I2(n13192), .I3(buf_cfgRTD[5]), 
            .O(n19888));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_10 (.I0(cfg_buf[3]), .I1(n20631), .I2(n13192), 
            .I3(buf_cfgRTD[3]), .O(n19874));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut_adj_10.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_11 (.I0(adc_state[0]), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n20631));   // adc_max31865.vhd(24[8:17])
    defparam i1_2_lut_adj_11.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_12 (.I0(adc_state[0]), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_adj_12.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state[1] ), .O(SCLK_N_1384));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12_adj_1397));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n11734));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'heb04;
    SB_LUT4 i3_4_lut_adj_13 (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut_adj_13.LUT_INIT = 16'h7bde;
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n19690));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n19692));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n19694));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n19696));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n19698));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut (.I0(adress_7__N_1340[7]), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(adress_c[7]), .O(n3));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf707;
    SB_DFFE adress_i6 (.Q(\adress[6] ), .C(clk_RTD), .E(VCC_net), .D(n19700));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15350));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_adj_14 (.I0(cfg_buf[0]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11), .I2(n10), .I3(n12_adj_1397), 
            .O(adress_7__N_1340[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_15 (.I0(adress_7__N_1340[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16669));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_15.LUT_INIT = 16'hbbbb;
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15347));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n19874));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15341));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n19888));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15335));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15332));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n19966));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n19970));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n19974));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n19978));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n19982));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n19986));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n19990));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n19994));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20070));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4948_2_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), .I2(GND_net), 
            .I3(GND_net), .O(n1_c));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4948_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n19998));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20002));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20006));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20010));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20014));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20018));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20020));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20022));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20024));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20026));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20028));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20030));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20032));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20072));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20034));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20036));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20038));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20040));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20042));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20044));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20046));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4918_2_lut (.I0(\adc_state[1] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n7333));   // adc_max31865.vhd(39[4] 147[13])
    defparam i4918_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i14264_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state[0]), .O(n7_adj_1398));   // adc_max31865.vhd(24[8:17])
    defparam i14264_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15252_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n16695));
    defparam i15252_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i16856_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // adc_max31865.vhd(125[17:24])
    defparam i16856_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n19876));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n15809));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20096));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20098));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i16865_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // adc_max31865.vhd(125[17:24])
    defparam i16865_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i16872_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // adc_max31865.vhd(125[17:24])
    defparam i16872_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR bit_cnt_3782__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11756), 
            .D(n21[3]), .R(n15081));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3782__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11756), 
            .D(n21[2]), .R(n15081));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3782__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11756), 
            .D(n21[1]), .R(n15081));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13228), .D(n7_adj_1399), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13228), .D(n7_adj_1400), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13228), .D(n7_adj_1401), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13228), .D(n7_adj_1402), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13228), .D(n7_adj_1403), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13228), .D(n7_adj_1404), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13228), .D(n7_adj_1405), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13181), .D(n3_adj_1406), 
            .R(n14717));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1340[7]), 
            .I1(\adress[6] ), .I2(\adc_state[1] ), .I3(adc_state[0]), 
            .O(n3_adj_1406));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1405));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1404));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1403));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1402));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1401));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1400));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12602_2_lut (.I0(n13228), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n15015));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12602_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i29_4_lut (.I0(n20587), .I1(n13), .I2(\adc_state[2] ), .I3(\adc_state[3] ), 
            .O(n13228));
    defparam i29_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1399));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i16858_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // adc_max31865.vhd(125[17:24])
    defparam i16858_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i19166_4_lut_4_lut (.I0(\adc_state[3] ), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(n16669), .O(CS_N_1385));
    defparam i19166_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i19100_3_lut_3_lut (.I0(\adc_state[1] ), .I1(\adc_state[2] ), 
            .I2(\adc_state[3] ), .I3(GND_net), .O(n11703));
    defparam i19100_3_lut_3_lut.LUT_INIT = 16'hc1c1;
    SB_LUT4 i19144_4_lut_4_lut (.I0(\adc_state[3] ), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(\adc_state[2] ), .O(n8));
    defparam i19144_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i1_4_lut_4_lut_adj_16 (.I0(\adc_state[1] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(\adc_state[2] ), .O(n13309));
    defparam i1_4_lut_4_lut_adj_16.LUT_INIT = 16'hc845;
    SB_DFFESR bit_cnt_3782__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11756), 
            .D(n21[0]), .R(n15081));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11734), .D(n16695), 
            .R(n14717));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13228), .D(n7_adj_1398), 
            .R(n15015));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13181), .D(n3), 
            .R(n14717));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i34_4_lut_4_lut (.I0(adc_state[0]), .I1(adress_7__N_1340[7]), 
            .I2(\adc_state[1] ), .I3(RTD_DRDY), .O(n19));
    defparam i34_4_lut_4_lut.LUT_INIT = 16'hadaf;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[0]), .I1(adress_7__N_1340[7]), 
            .I2(\adc_state[1] ), .I3(GND_net), .O(n20587));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i1_4_lut_4_lut_adj_17 (.I0(\adc_state[3] ), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(\adc_state[2] ), .O(n11730));
    defparam i1_4_lut_4_lut_adj_17.LUT_INIT = 16'ha880;
    SB_LUT4 i22_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n1_c), .I2(\adc_state[3] ), 
            .I3(n20587), .O(n13192));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i36_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n1_c), .I2(\adc_state[3] ), 
            .I3(n19), .O(n13181));
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i13391_4_lut_4_lut (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n15809));   // adc_max31865.vhd(24[8:17])
    defparam i13391_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_18 (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[7]), 
            .I3(cfg_buf[7]), .O(n15332));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_18.LUT_INIT = 16'hb380;
    SB_LUT4 i1_2_lut_3_lut_adj_19 (.I0(\adc_state[1] ), .I1(bit_cnt[3]), 
            .I2(n17720), .I3(GND_net), .O(n20656));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_3_lut_adj_19.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_4_lut_4_lut_adj_20 (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15335));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_20.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_21 (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15341));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_21.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_22 (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n15347));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_22.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(n20631), .I1(n13192), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15350));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hb380;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut_4_lut (.I0(\adc_state[1] ), 
            .I1(adc_state_3__N_1368[1]), .I2(\adc_state[2] ), .I3(adc_state[0]), 
            .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut_4_lut.LUT_INIT = 16'hf5da;
    
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
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire clk_16MHz_N_692 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(14[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=820, LSE_RLINE=820 */ ;   // zim_main.vhd(820[13:20])
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
    SB_LUT4 i19670_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_692));   // zim_main.vhd(820[13:20])
    defparam i19670_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[1] , \adc_state[0] , DTRIG_N_919, clk_32MHz, 
            n20152, VCC_net, cmd_rdadctmp, n20154, n20156, n20158, 
            n20160, n20162, n20164, n20166, n20182, n20584, buf_adcdata_iac, 
            IAC_DRDY, n20612, n12663, GND_net, n20138, IAC_SCLK, 
            n20136, acadc_dtrig_i, acadc_trig, n20238, n20368, n20366, 
            n20364, n20362, n20358, n20244, n11, IAC_CS, n20356, 
            n20354, n20352, n20350, n20348, n20346, n20344, n20342, 
            n20340, n20338, n20336, n20334, n20332, n20330, n20328, 
            n20326);
    output \adc_state[1] ;
    output \adc_state[0] ;
    output DTRIG_N_919;
    input clk_32MHz;
    input n20152;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n20154;
    input n20156;
    input n20158;
    input n20160;
    input n20162;
    input n20164;
    input n20166;
    input n20182;
    input n20584;
    output [23:0]buf_adcdata_iac;
    input IAC_DRDY;
    input n20612;
    output n12663;
    input GND_net;
    input n20138;
    output IAC_SCLK;
    input n20136;
    output acadc_dtrig_i;
    input acadc_trig;
    input n20238;
    input n20368;
    input n20366;
    input n20364;
    input n20362;
    input n20358;
    input n20244;
    input n11;
    output IAC_CS;
    input n20356;
    input n20354;
    input n20352;
    input n20350;
    input n20348;
    input n20346;
    input n20344;
    input n20342;
    input n20340;
    input n20338;
    input n20336;
    input n20334;
    input n20332;
    input n20330;
    input n20328;
    input n20326;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n20783, n20795, n21068;
    wire [2:0]adc_state_2__N_824;
    
    wire n20714, n12, n15239, n15231, n15222, n15234, n15219, 
        n15228, n15225, n15237, n15121, n15230, n15223, n15235, 
        n15238, n15236, n15233, n15232, n15229, n15227, n15226, 
        n15224, n15221, n15220, n15218, n15217, n20713;
    wire [7:0]n63;
    
    wire n19421, n19420, n19419, n19418, n19417, n19416, n19415, 
        n12586, n14860, n17;
    
    SB_LUT4 i18169_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n20783));
    defparam i18169_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18181_4_lut (.I0(bit_cnt[7]), .I1(n20783), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n20795));
    defparam i18181_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18845_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n20795), .O(n21068));   // adc_ads127.vhd(44[4] 88[13])
    defparam i18845_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21068), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_919), .I3(\adc_state[1] ), .O(adc_state_2__N_824[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20714), 
            .D(adc_state_2__N_824[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20152));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20154));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20156));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20158));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20160));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20162));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20164));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20166));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20182));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_824[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_919), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_824[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i14312_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15239));   // adc_ads127.vhd(44[4] 88[13])
    defparam i14312_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12813_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15231));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12813_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12804_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15222));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12804_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12816_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15234));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12816_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12801_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15219));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12801_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12810_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15228));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12810_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12807_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15225));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12807_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12819_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15237));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12819_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12703_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15121));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12703_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12812_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15230));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12812_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12805_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15223));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12805_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12817_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15235));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12817_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15239));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15238));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15237));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15236));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15235));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15234));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15233));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15232));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15231));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15230));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15229));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15228));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15227));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15226));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15225));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15224));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15223));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15222));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15221));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15220));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15219));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15218));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15217));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12800_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15218));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12800_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12811_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15229));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12811_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut (.I0(IAC_DRDY), .I1(n20612), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12663));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i12806_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15224));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12806_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12818_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15236));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12818_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12799_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15217));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12799_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20138));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20136));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15121));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12814_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15232));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12814_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12803_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15221));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12803_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12815_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15233));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12815_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12802_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15220));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12802_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12809_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15227));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12809_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12808_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15226));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12808_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(IAC_DRDY), 
            .I3(DTRIG_N_919), .O(n20713));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n20713), .I2(GND_net), 
            .I3(GND_net), .O(n20714));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i12820_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20584), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15238));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12820_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19421), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19420), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19420), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19421));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19419), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19419), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19420));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19418), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19418), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19419));
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20238));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19417), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19417), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19418));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19416), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19416), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19417));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19415), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19415), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19416));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19415));
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20368));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20366));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20364));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20362));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20358));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20244));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20356));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20354));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20352));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20350));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20348));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20346));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20344));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .D(n20342));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .D(n20340));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .D(n20338));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .D(n20336));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .D(n20334));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .D(n20332));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .D(n20330));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .D(n20328));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .D(n20326));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12447_2_lut (.I0(n12586), .I1(DTRIG_N_919), .I2(GND_net), 
            .I3(GND_net), .O(n14860));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12447_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_5 (.I0(\adc_state[0] ), .I1(IAC_DRDY), .I2(DTRIG_N_919), 
            .I3(\adc_state[1] ), .O(n12586));
    defparam i1_4_lut_adj_5.LUT_INIT = 16'h0150;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12586), .D(n63[7]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12586), .D(n63[6]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12586), .D(n63[5]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12586), .D(n63[4]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12586), .D(n63[3]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12586), .D(n63[2]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12586), .D(n63[1]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_919), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_824[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(IAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_919), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19132_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19132_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15225_3_lut (.I0(DTRIG_N_919), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_824[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15225_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12586), .D(n63[0]), 
            .R(n14860));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (\adc_state[0] , clk_32MHz, \adc_state[1] , DTRIG_N_919, 
            GND_net, VAC_DRDY, acadc_trig, n20615, n12534, acadc_dtrig_v, 
            acadc_dtrig_i, iac_raw_buf_N_737, buf_adcdata_vac, n20134, 
            VAC_SCLK, n20132, n20242, VCC_net, cmd_rdadctmp, n11, 
            VAC_CS, n20590, n20320, n20260, n20262, n20264, n20266, 
            n20268, n20270, n20272, n20274, n20276, n20278, n20280, 
            n20282, n20284, n20286, n20288, n20290, n20292, n20294, 
            n20318, n20296, n20298, n20300, n20302, n20304, n20306, 
            n20308, n20310, n20312, n20314, n20316);
    output \adc_state[0] ;
    input clk_32MHz;
    output \adc_state[1] ;
    output DTRIG_N_919;
    input GND_net;
    input VAC_DRDY;
    input acadc_trig;
    input n20615;
    output n12534;
    output acadc_dtrig_v;
    input acadc_dtrig_i;
    output iac_raw_buf_N_737;
    output [23:0]buf_adcdata_vac;
    input n20134;
    output VAC_SCLK;
    input n20132;
    input n20242;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n11;
    output VAC_CS;
    input n20590;
    input n20320;
    input n20260;
    input n20262;
    input n20264;
    input n20266;
    input n20268;
    input n20270;
    input n20272;
    input n20274;
    input n20276;
    input n20278;
    input n20280;
    input n20282;
    input n20284;
    input n20286;
    input n20288;
    input n20290;
    input n20292;
    input n20294;
    input n20318;
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
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire [2:0]adc_state_2__N_824;
    
    wire n20716, n17, n12, n15216, n15215, n15214, n15213, n15212, 
        n15211, n15210, n15209, n15208, n15207, n15206, n15205, 
        n15204, n15203, n15202, n15201, n15200, n15199, n15198, 
        n15197, n15196, n15195, n15194, n15118, n20715;
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19414, n19413, n19412, n19411, n19410, n19409, n19408, 
        n16, n21054, n21053, n12489, n14822;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n20716), 
            .D(adc_state_2__N_824[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_919), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_824[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(VAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_919), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19134_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19134_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15228_3_lut (.I0(DTRIG_N_919), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_824[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15228_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_824[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_919), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_824[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_3_lut (.I0(VAC_DRDY), .I1(n20615), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12534));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i1_2_lut (.I0(acadc_dtrig_v), .I1(acadc_dtrig_i), .I2(GND_net), 
            .I3(GND_net), .O(iac_raw_buf_N_737));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15216));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15215));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15214));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15213));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15212));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15211));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15210));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15209));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15208));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15207));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15206));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15205));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15204));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15203));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15202));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15201));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15200));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15199));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15198));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15197));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15196));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15195));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15194));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20134));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20132));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15118));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(DTRIG_N_919), .I2(VAC_DRDY), 
            .I3(\adc_state[0] ), .O(n20715));
    defparam i1_4_lut.LUT_INIT = 16'hff47;
    SB_LUT4 i1_2_lut_adj_3 (.I0(\adc_state[1] ), .I1(n20715), .I2(GND_net), 
            .I3(GND_net), .O(n20716));
    defparam i1_2_lut_adj_3.LUT_INIT = 16'hdddd;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19414), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19413), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19413), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19414));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19412), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19412), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19413));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19411), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20242));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_6 (.CI(n19411), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19412));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19410), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19410), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19411));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19409), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19409), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19410));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19408), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19408), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19409));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19408));
    SB_DFFE CS_37 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12798_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15216));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12798_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12791_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15209));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12791_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12782_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15200));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12782_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12794_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15212));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12794_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i12779_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15197));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12779_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12788_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15206));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12788_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12785_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15203));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12785_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i19039_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n21054));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19039_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i12797_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15215));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12797_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12776_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15194));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12776_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i18824_4_lut (.I0(n21054), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n21053));   // adc_ads127.vhd(44[4] 88[13])
    defparam i18824_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i12790_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15208));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12790_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21053), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_919), .I3(\adc_state[1] ), .O(adc_state_2__N_824[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12783_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15201));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12783_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12795_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15213));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12795_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12778_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15196));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12778_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12789_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15207));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12789_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12784_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15202));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12784_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12796_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15214));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12796_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12777_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15195));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12777_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12792_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15210));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12792_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12781_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15199));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12781_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12793_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15211));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12793_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12780_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15198));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12780_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12787_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15205));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12787_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12786_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15204));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12786_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12700_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n20590), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15118));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12700_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n20320));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20260));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20262));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20264));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20266));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20268));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20270));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20272));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20274));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20276));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20278));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20280));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20282));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20284));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20286));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20288));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20290));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20292));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20294));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .D(n20318));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20296));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20298));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20300));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20302));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20304));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12409_2_lut (.I0(n12489), .I1(DTRIG_N_919), .I2(GND_net), 
            .I3(GND_net), .O(n14822));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12409_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_4 (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(DTRIG_N_919), 
            .I3(\adc_state[1] ), .O(n12489));
    defparam i1_4_lut_adj_4.LUT_INIT = 16'h0150;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20306));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20308));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20310));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20312));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20314));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20316));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12489), .D(n63[7]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12489), .D(n63[6]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12489), .D(n63[5]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12489), .D(n63[4]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12489), .D(n63[3]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12489), .D(n63[2]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12489), .D(n63[1]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12489), .D(n63[0]), 
            .R(n14822));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (\dds_state_2__N_925[0] , dds_state, clk_32MHz, DDS_CS1, 
            VCC_net, GND_net, \tmp_buf[15] , n15128, DDS_MOSI1, n15125, 
            DDS_SCK1, trig_dds1, buf_dds1, bit_cnt, n8, \bit_cnt_3__N_973[3] , 
            \bit_cnt_3__N_973[2] , \bit_cnt_3__N_973[1] );
    input \dds_state_2__N_925[0] ;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input VCC_net;
    input GND_net;
    output \tmp_buf[15] ;
    input n15128;
    output DDS_MOSI1;
    input n15125;
    output DDS_SCK1;
    input trig_dds1;
    input [15:0]buf_dds1;
    output [3:0]bit_cnt;
    output n8;
    input \bit_cnt_3__N_973[3] ;
    input \bit_cnt_3__N_973[2] ;
    input \bit_cnt_3__N_973[1] ;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    
    wire n9, CS_N_978, n9_adj_1395;
    wire [15:0]tmp_buf_15__N_928;
    
    wire n12800;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n3, n16798, n7916, n16766;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_925[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1395), .D(CS_N_978));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12800), .D(tmp_buf_15__N_928[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12800), 
            .D(tmp_buf_15__N_928[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15128));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15125));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19097_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n12800));
    defparam i19097_4_lut.LUT_INIT = 16'hf034;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1395));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_978));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19153_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19153_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n16798));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i14383_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(dds_state[1]), 
            .I3(bit_cnt[0]), .O(n16798));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i14383_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i3_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n8));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 i12158_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7916));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12158_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(dds_state[0]), 
            .I3(GND_net), .O(n16766));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_973[3] ), .R(n16766));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_973[2] ), .R(n16766));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_973[1] ), .R(n16766));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7916), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, DDS_CS, n20184, VCC_net, 
            buf_dds0, \tmp_buf[15] , n14900, GND_net, n15126, DDS_MOSI, 
            n15124, DDS_SCK, trig_dds0, bit_cnt, n15830);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input n20184;
    input VCC_net;
    input [15:0]buf_dds0;
    output \tmp_buf[15] ;
    output n14900;
    input GND_net;
    input n15126;
    output DDS_MOSI;
    input n15124;
    output DDS_SCK;
    input trig_dds0;
    output [3:0]bit_cnt;
    input n15830;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(227[9:18])
    wire [2:0]dds_state_2__N_925;
    
    wire n9, CS_N_978, n9_adj_1394;
    wire [15:0]tmp_buf_15__N_928;
    
    wire n12738;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21331;
    wire [3:0]bit_cnt_3__N_973;
    
    wire n7954;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_925[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1394), .D(CS_N_978));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20184));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12738), .D(tmp_buf_15__N_928[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12738), 
            .D(tmp_buf_15__N_928[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12483_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n14900));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12483_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15126));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15124));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19098_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n12738));
    defparam i19098_4_lut.LUT_INIT = 16'hcc46;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1394));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_978));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19135_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19135_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[1]), .I2(dds_state[0]), 
            .I3(bit_cnt_c[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i18809_2_lut (.I0(bit_cnt_c[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21331));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i18809_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12179_4_lut (.I0(dds_state[0]), .I1(n21331), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_925[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12179_4_lut.LUT_INIT = 16'hc505;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n15830));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3848_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_973[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3848_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i3855_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_973[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3855_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_928[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12157_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7954));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12157_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3841_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_973[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3841_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_973[3]), .R(n14900));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_973[2]), .R(n14900));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_973[1]), .R(n14900));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7954), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
