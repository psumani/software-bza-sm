// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Tue Dec 07 19:18:38 2021
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
    
    wire DDS_MCLK1 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(265[9:16])
    
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
    wire [15:0]buf_dds0;   // zim_main.vhd(256[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(261[9:17])
    
    wire trig_dds1;
    wire [3:0]clk_cnt;   // zim_main.vhd(266[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(267[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(268[9:20])
    
    wire acadc_trig, acadc_dtrig_i, acadc_dtrig_v;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(277[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(278[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(285[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(286[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(289[9:18])
    
    wire acadc_rst, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(296[9:21])
    wire [47:0]buf_data_vac;
    wire [9:0]data_count;   // zim_main.vhd(301[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(302[9:20])
    wire [9:0]data_index;   // zim_main.vhd(303[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(304[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(312[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(315[9:20])
    
    wire wdtick_flag, flagcntwd, n26;
    wire [27:0]wdtick_cnt;   // zim_main.vhd(319[9:19])
    
    wire n11570, n13324;
    wire [31:0]secclk_cnt;   // zim_main.vhd(322[9:19])
    
    wire clk_RTD_N_756, n21501, n12, n8, n12_adj_1454, n9, n11, 
        wdtick_flag_N_341, n20696, n21041, n19, TEST_LED_N_731, n21714, 
        n21497, dds0_mclk_N_749, n49, iac_raw_buf_N_776, iac_raw_buf_N_774, 
        n418, n419, n420, n421, n422, n423, n424, n425, n426, 
        n427, n430, n431, n432, n433, n434, n435, n436, n437, 
        n438, n439, n440, n441, n442, n443, n444, n445, n481, 
        n482, n483, n484, n485, n486, n487, n488, n489, n490, 
        n491, n492, n493, n494, n495, n496;
    wire [2:0]eis_state_2__N_392;
    
    wire n20638, n20640, n20642;
    wire [2:0]eis_state_2__N_167;
    
    wire n20724, n16, n20168, n4, n7, n4_adj_1455, THERMOSTAT_N_510, 
        n8_adj_1456, n4_adj_1457, n7_adj_1458;
    wire [2:0]comm_index_2__N_487;
    
    wire n44;
    wire [3:0]comm_state_3__N_460;
    
    wire n1348, comm_clear_N_748, ICE_GPMI_0_N_746, n20644, n20646, 
        n20670, n20140;
    wire [3:0]comm_state_3__N_9;
    
    wire n20142, n20144, n20146, n20148, n20150, n20340;
    wire [9:0]data_index_9__N_212;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n20452, n21705, n21703, n21702, n20818, n30, n15092;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire DTRIG_N_958, n20454, n20456, n20458, n20690, n21330;
    wire [2:0]adc_state_adj_1699;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1700;   // adc_ads127.vhd(27[8:20])
    
    wire DTRIG_N_958_adj_1493, n20460, n20462, n20464, n20668, n28, 
        n66, n69, n80, n21237, n68;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1720;   // dds_ad9837.vhd(25[9:16])
    
    wire n21260, n20466;
    wire [2:0]dds_state_adj_1722;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1723;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1724;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_1012_adj_1728;
    wire [2:0]dds_state_2__N_964_adj_1730;
    
    wire n21324;
    wire [3:0]adc_state_adj_1737;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n30_adj_1499, n20468, n20470, n20472, n20474, n20476, n20478, 
        n20260, n20262, n20264, n20266, n20268, n20270;
    wire [3:0]adc_state_adj_1741;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1742;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19774, n27, n19783, n5, n19816, n20272, n5_adj_1524, 
        n20274, n20276, n20278, n20280, n20282, n20284, n20286, 
        n20288, n20300, n20302, n20304, n20306, n20308, n20490, 
        n20492, n20494, n20496, n20498, n20500, n20136, n20502, 
        n20504, n29, n23, n22, n26_adj_1525, n20636, n21, n20630, 
        n20506, n20508, n20510, n20512, n20514, n20516, n13212, 
        n19_adj_1526, n14, n20518, n20520, n20522, n10, n45, n44_adj_1527, 
        n43, n42, n41, n40, n39, n38, n10_adj_1528, n34, n15, 
        n14_adj_1529, n33, n32, n31, n30_adj_1530, n19815, n157, 
        n156, n155, n154, n153, n152, n151, n150, n149, n148, 
        n147, n146, n145, n144, n143, n142, n141, n140, n139, 
        n138, n137, n136, n135, n134, n133, n30_adj_1531, n19782, 
        n20698, n120, n119, n118, n117, n116, n115, n114, n113, 
        n112, n111, n110, n109, n108, n107, n106, n105, n104, 
        n103, n102, n101, n100, n99, n98, n22_adj_1532, n16039, 
        n26_adj_1533, n20616, n19_adj_1534, n30_adj_1535, n6541, n2, 
        n21043, n19814, n21035, n20154, n21481, n21187, n5_adj_1536, 
        n17703, n20702, n21479, n21266, n21672, n19781, n21671, 
        n17773, n31_adj_1537, n24, n19813, n16018, n14_adj_1538, 
        n20524, n21477, n3, n21033, n6401, n19772, n20526, n13783, 
        n13787, n13791, n13795, n13799, n13803, n7_adj_1539, n8_adj_1540, 
        n14_adj_1541, n22644, n20528, n19812, n19780, n22641, n19811, 
        n22635, n19810, n12431, n20530, n20532, n12_adj_1542, n22629, 
        n21226, n21474, n21076, n22626, n30_adj_1543, n22623, n17, 
        n22620, n21385, n22617, n22614, n22611, n22608, n14692, 
        n14148, n22605, n22602, n22599, n22593, n22584, n19809, 
        n22581, n22578, n22575, n22572, n22569, n22566, n22563, 
        n22560, n15384, n15383, n15382, n15381, n15380, n15379, 
        n15378, n15377, n15376, n15375, n15374, n15373, n15372, 
        n15371, n15370, n15369, n15368, n15367, n15366, n15365, 
        n15364, n15363, n15362, n15361, n15360, n15359, n15358, 
        n15357, n15356, n15355, n15354, n15353, n15352, n15351, 
        n15350, n15349, n15348, n15347, n15346, n15345, n15344, 
        n15343, n15342, n15341, n15340, n15339, n15338, n15337, 
        n15336, n15335, n15334, n15333, n15332, n15331, n15330, 
        n15329, n15328, n15327, n15326, n15324, n22557, n14_adj_1544, 
        n16_adj_1545, n14_adj_1546, n14_adj_1547, n14_adj_1548, n14_adj_1549, 
        n22554, n14_adj_1550, n14_adj_1551, n14_adj_1552, n17_adj_1553, 
        n16824, n22551, n16971, n22548, n28_adj_1554, n7_adj_1555, 
        n8_adj_1556, n7_adj_1557, n8_adj_1558, n7_adj_1559, n8_adj_1560, 
        n22545, n7_adj_1561, n8_adj_1562, n22542, n7_adj_1563, n8_adj_1564, 
        n7_adj_1565, n8_adj_1566, n7_adj_1567, n8_adj_1568, n22539, 
        n7_adj_1569, n8_adj_1570, n22536, n14152, n14156, n22533, 
        n14160, n19808, n22530, n14164, n14168, n14172, n14176, 
        n19807, n14180, n14184, n14188, n14192, n14196, n21089, 
        n14200, n14204, n14208, n14212, n14216, n14220, n14224, 
        n14228, n14232, n14236, n14240, n21460, n14244, n14248, 
        n14252, n14256, n22527, n14260, n14264, n14268, n14272, 
        n14276, n22524, n14280, n14284, n14288, n14292, n14296, 
        n14300, n14304, n14308, n14312, n14_adj_1571, n14_adj_1572, 
        n14_adj_1573, n14_adj_1574, n14_adj_1575, n14716, n21456, 
        n22521, n21454, n20316, n2_adj_1576, n21240, n21368, n8_adj_1577, 
        n22518, n21246, n14_adj_1578, n19806, n14_adj_1579, n19805, 
        n19779, n4_adj_1580, n4_adj_1581, n4_adj_1582, n22515, n21625, 
        n4_adj_1583, n22512, n21257, n1, n2_adj_1584, n4_adj_1585, 
        n1_adj_1586, n2_adj_1587, n4_adj_1588, n22509, n14350, n22506, 
        n22503, n16821, n16818, n22500, n21453, n20554, n22497, 
        n18070, n20556, n12541, n22494, n4_adj_1589, n22_adj_1590, 
        n23_adj_1591, n22491, n1_adj_1592, n20450, n19977, n19976, 
        n19975, n22488, n19974, n19973, n19972, n20600, n15980, 
        n12493, n17728, n24_adj_1593, n20446, n19971, n19970, n15977, 
        n12314, n19969, n15975, n21_adj_1594, n15972, n19804, n19968, 
        n15970, n15967, n19967, n22485, n14965, n15964, n15961, 
        n26_adj_1595, n20442, n15958, n19966, n15955, n19965, n12082, 
        n12079, n15952, n15948, n17698, n15946, n21447, n10756, 
        n15943, n22479, n12148, n22476, n12144, n19964, n19963, 
        n19962, n19961, n11652, n19803, n19960, n19959, n19958, 
        n20438, n20342, n12477, n19957, n20344, n19956, n21147, 
        n22473, n22470, n19955, n19954, n10804, n20356, n19953, 
        n19952, n20434, n19951, n21143, n13054, n20358, n19950, 
        n19949, n20360, n19948, n19947, n19946, n22467, n20428, 
        n22464, n19945, n20170, n19944, n22461, n19943, n19942, 
        n20172, n19941, n22458, n21079, n20174, n19940, n19939, 
        n20424, n20138, n19802, n19938, n22455, n22452, n21082, 
        n20156, n21588, n21586, n15007, n20726, n14915, n20728, 
        n20258, n20730, n12_adj_1596, n20732, n19778, n19801, n19937, 
        n19936, n19800, n14993, n12850, n19_adj_1597, n22_adj_1598, 
        n19799, n30_adj_1599, n20298, n20230, n19935, n20734, n22449, 
        n14899, n20416, n22446, n20586, n12260, n19934, n20736, 
        n9342, n19798, n19797, n19933, n22443, n19932, n19_adj_1600, 
        n22_adj_1601, n30_adj_1602, n20412, n19931, n9269, n20738, 
        n19_adj_1603, n22_adj_1604, n30_adj_1605, n20740, n18, n20578, 
        n20742, n22437, n20744, n22434, n11619, n19_adj_1606, n22_adj_1607, 
        n19796, n30_adj_1608, n19795, n20746, n19769, n22431, n19767, 
        n20748, n19930, n19777, n19794, n11611, n20750, n19929, 
        n22428, n19776, n20752, n19793, n22425, n19_adj_1609, n11605, 
        n22_adj_1610, n19928, n30_adj_1611, n19766, n19775, n19792, 
        n20754, n11600, n19927, n19926, n19791, n19925, n21289, 
        n22422, n12771, n20756, n20408, n19790, n20758, n19_adj_1612, 
        n22_adj_1613, n19789, n30_adj_1614, n21434, n18_adj_1615, 
        n8841, n14907, n20760, n11590, n21433, n19773, n11856, 
        n20404, n22419, n19_adj_1616, n22_adj_1617, n19788, n19787, 
        n30_adj_1618, n20762, n22416, n20764, n19827, n19786, n19826, 
        n20766, n12089, n19825, n21369, n19986, n20768, n21050, 
        n20770, n10_adj_1619, n16_adj_1620, n19_adj_1621, n26_adj_1622, 
        n22413, n4_adj_1623, n20772, n20774, n19824, n16_adj_1624, 
        n19_adj_1625, n26_adj_1626, n22410, n30_adj_1627, n12048, 
        n20776, n21122, n21154, n20778, n22407, n21219, n12184, 
        n20780, n22404, n20562, n16_adj_1628, n19_adj_1629, n26_adj_1630, 
        n30_adj_1631, n21557, n20, n21042, n20782, n21556, n22401, 
        n11_adj_1632, n22398, n20784, n16_adj_1633, n19_adj_1634, 
        n26_adj_1635, n30_adj_1636, n21323, n20786, n14979, n21288, 
        n19188, n20788, n19193, n4_adj_1637, n22395, n22392, n14_adj_1638, 
        n24_adj_1639, n16_adj_1640, n19_adj_1641, n26_adj_1642, n22389, 
        n30_adj_1643, n22386, n20236, n19823, n20790, n12662, n11989, 
        n21139, n17705, n20996, n12654, n22383, n21547, n22380, 
        n18_adj_1644, n16_adj_1645, n20552, n19_adj_1646, n26_adj_1647, 
        n30_adj_1648, n20354, n22377, n20792, n34_adj_1649, n21543, 
        n20400, n7_adj_1650, n19822, n19785, n22374, n16_adj_1651, 
        n19_adj_1652, n26_adj_1653, n30_adj_1654, n11_adj_1655, n21053, 
        n26_adj_1656, n12407, n22371, n22368, n19821, n14_adj_1657, 
        n15323, n15322, n15321, n20794, n22365, n15320, n15319, 
        n15318, n20796, n23_adj_1658, n26_adj_1659, n21030, n20798, 
        n11_adj_1660, n21085, n23_adj_1661, n14_adj_1662, n12624, 
        n11910, n21286, n20800, n21363, n14972, n12_adj_1663, n19820, 
        n20396, n19819, n19818, n16_adj_1664, n17_adj_1665, n19_adj_1666, 
        n20_adj_1667, n23_adj_1668, n30_adj_1669, n20802, n11908, 
        n19817, n21528, n12610, n20_adj_1670, n20804, n16_adj_1671, 
        n17_adj_1672, n21329, n19_adj_1673, n20_adj_1674, n21285, 
        n23_adj_1675, n21283, n30_adj_1676, n20011, n12596, n25, 
        n15317, n11576, n14958, n20806, n21282, n23_adj_1677, n26_adj_1678, 
        n30_adj_1679, n21277, n21276, n20320, n14986, n20808, n8_adj_1680, 
        n19771, n19770, n20810, n16_adj_1681, n17_adj_1682, n21362, 
        n19_adj_1683, n20_adj_1684, n23_adj_1685, n24_adj_1686, n26_adj_1687, 
        n30_adj_1688, n20095, n20812, n21274, n21273, n8_adj_1689, 
        n21271, n12353, n21270, n21268, n11891, n16_adj_1690, n17_adj_1691, 
        n19_adj_1692, n20_adj_1693, n26_adj_1694, n30_adj_1695, n20488, 
        n20814, n21261, n21258, n19784, n20048, n20314, n20392, 
        n19768, n20820, n11933, n20822, n15316, n15315, n22094, 
        n21512, n21334, n21236, n10695, n12107, n10902, n20824, 
        n2_adj_1696, n19765, n20826, n21110, n20592, n20590, n20588, 
        n15308, n15307, n21013, n15306, n15305, n21361, n15304, 
        n15303, n15302, n15301, n15300, n21360, n20152, n12433, 
        n12442;
    
    assign VAC_CLK = IAC_CLK;   // zim_main.vhd(45[3:10])
    assign IAC_MOSI = VAC_MOSI;   // zim_main.vhd(68[3:11])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i1_4_lut (.I0(n21013), .I1(n11619), .I2(n12442), .I3(n21154), 
            .O(n21035));
    defparam i1_4_lut.LUT_INIT = 16'h8880;
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11908), 
            .D(eis_state_2__N_167[0]), .R(acadc_rst));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i1_3_lut (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n20996), 
            .I3(VAC_MOSI), .O(dds0_mclk_N_749));
    defparam i1_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 secclk_cnt_3765_3766_add_4_13_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[11]), .I3(n19966), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_DFFN dds0_mclk_294 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_749));   // zim_main.vhd(438[3] 444[10])
    SB_DFFE comm_clear_301 (.Q(comm_clear), .C(clk_32MHz), .E(n11590), 
            .D(comm_clear_N_748));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19711 (.I0(comm_cmd[1]), .I1(n26_adj_1630), 
            .I2(n21456), .I3(comm_cmd[2]), .O(n22449));
    defparam comm_cmd_1__bdd_4_lut_19711.LUT_INIT = 16'he4aa;
    SB_LUT4 n22449_bdd_4_lut (.I0(n22449), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22452));
    defparam n22449_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19367_3_lut (.I0(comm_state[1]), .I1(n5_adj_1524), .I2(comm_cmd[7]), 
            .I3(VAC_MOSI), .O(n22094));
    defparam i19367_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i12491_3_lut (.I0(n12541), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(VAC_MOSI), .O(n15007));   // zim_main.vhd(529[3] 816[10])
    defparam i12491_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFE comm_response_302 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n11600), 
            .D(ICE_GPMI_0_N_746));   // zim_main.vhd(529[3] 816[10])
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[35:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
    SB_CARRY secclk_cnt_3765_3766_add_4_13 (.CI(n19966), .I0(VAC_MOSI), 
            .I1(secclk_cnt[11]), .CO(n19967));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19706 (.I0(comm_cmd[1]), .I1(n26_adj_1635), 
            .I2(n21447), .I3(comm_cmd[2]), .O(n22443));
    defparam comm_cmd_1__bdd_4_lut_19706.LUT_INIT = 16'he4aa;
    SB_LUT4 n22443_bdd_4_lut (.I0(n22443), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22446));
    defparam n22443_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18539_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n21266));
    defparam i18539_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 mux_137_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1580));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18541_4_lut (.I0(n21266), .I1(n22094), .I2(comm_state[2]), 
            .I3(n14350), .O(n21268));
    defparam i18541_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18549_4_lut (.I0(n4_adj_1580), .I1(\comm_buf[6] [7]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21276));
    defparam i18549_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18550_3_lut (.I0(n22542), .I1(n21276), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21277));
    defparam i18550_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n21035), 
            .D(comm_state_3__N_9[0]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_212[0]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF clk_RTD_287 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_756));   // zim_main.vhd(387[3] 394[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_12_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[10]), .I3(n19965), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12541));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hb8a8;
    SB_CARRY secclk_cnt_3765_3766_add_4_12 (.CI(n19965), .I0(VAC_MOSI), 
            .I1(secclk_cnt[10]), .CO(n19966));
    SB_LUT4 comm_state_3__I_0_342_Mux_0_i15_3_lut (.I0(n21268), .I1(n9342), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(comm_state_3__N_9[0]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_342_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i2_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n21154));
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h4eff;
    SB_LUT4 i12795_3_lut_4_lut (.I0(dds_state_adj_1722[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1722[1]), .I3(dds_state_adj_1722[0]), .O(n15316));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12795_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 secclk_cnt_3765_3766_add_4_11_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[9]), .I3(n19964), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_137_Mux_1_i1_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[1] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1_adj_1586));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_1_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15469_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1544));   // zim_main.vhd(531[4] 815[13])
    defparam i15469_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[43:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1677));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3765_3766_add_4_11 (.CI(n19964), .I0(VAC_MOSI), 
            .I1(secclk_cnt[9]), .CO(n19965));
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[39:36]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
    SB_LUT4 i19316_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21705));
    defparam i19316_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_126_7 (.CI(n19817), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19818));
    SB_LUT4 n22437_bdd_4_lut (.I0(n22437), .I1(n2_adj_1696), .I2(eis_state[0]), 
            .I3(eis_state[2]), .O(eis_state_2__N_167[1]));
    defparam n22437_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[2]), 
            .I3(comm_state[0]), .O(n4_adj_1637));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 mux_137_Mux_1_i2_3_lut (.I0(\comm_buf[2] [1]), .I1(\comm_buf[3] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1587));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19701 (.I0(comm_cmd[1]), .I1(n19_adj_1652), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22431));
    defparam comm_cmd_1__bdd_4_lut_19701.LUT_INIT = 16'he4aa;
    SB_LUT4 equal_188_i9_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n9));   // zim_main.vhd(771[11:20])
    defparam equal_188_i9_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 add_126_6_lut (.I0(n14_adj_1546), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19816), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_67_7_lut (.I0(VAC_MOSI), .I1(data_count[5]), .I2(VAC_MOSI), 
            .I3(n19769), .O(n422)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11908), 
            .D(eis_state_2__N_167[1]), .R(acadc_rst));   // zim_main.vhd(449[3] 524[10])
    SB_DFFN dds0_mclkcnt_i7_3772__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(440[4] 443[11])
    SB_LUT4 i19161_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21543));
    defparam i19161_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_68_14_lut (.I0(VAC_MOSI), .I1(data_cntvec[12]), .I2(VAC_MOSI), 
            .I3(n19785), .O(n433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_14_lut.LUT_INIT = 16'hC33C;
    SB_DFFER wdtick_cnt_3763_3764__i1 (.Q(wdtick_cnt[0]), .C(clk_16MHz), 
            .E(n11910), .D(n157), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n11908), 
            .D(eis_state_2__N_167[2]), .R(acadc_rst));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i15461_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1571));   // zim_main.vhd(531[4] 815[13])
    defparam i15461_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(\comm_buf[0] [5]), 
            .I3(VAC_MOSI), .O(n14_adj_1578));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i15462_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1572));   // zim_main.vhd(531[4] 815[13])
    defparam i15462_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_128_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1678));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_44 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n21147));
    defparam i1_2_lut_3_lut_adj_44.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_3_lut_adj_45 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n21143));
    defparam i1_2_lut_3_lut_adj_45.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_4_lut_adj_46 (.I0(n21013), .I1(n20095), .I2(n12442), .I3(n4_adj_1589), 
            .O(n21033));
    defparam i1_4_lut_adj_46.LUT_INIT = 16'h8880;
    SB_LUT4 i19099_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21447));
    defparam i19099_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp_adj_1700[29]), .I1(cmd_rdadctmp_adj_1700[28]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20642));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_47 (.I0(cmd_rdadctmp_adj_1700[28]), .I1(cmd_rdadctmp_adj_1700[27]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20640));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_47.LUT_INIT = 16'hca0a;
    SB_CARRY add_67_7 (.CI(n19769), .I0(data_count[5]), .I1(VAC_MOSI), 
            .CO(n19770));
    SB_LUT4 mux_129_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1635));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(VAC_MOSI), .O(n16818));   // zim_main.vhd(529[3] 816[10])
    defparam i2_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i12_4_lut_adj_48 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20776));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_48.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_49 (.I0(n12433), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n21043));
    defparam i1_2_lut_3_lut_adj_49.LUT_INIT = 16'ha8a8;
    SB_LUT4 i15463_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1573));   // zim_main.vhd(531[4] 815[13])
    defparam i15463_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19121_2_lut (.I0(comm_state_3__N_460[3]), .I1(comm_state[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21588));   // zim_main.vhd(531[4] 815[13])
    defparam i19121_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15464_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1574));   // zim_main.vhd(531[4] 815[13])
    defparam i15464_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut (.I0(n16818), .I1(comm_cmd[3]), .I2(VAC_MOSI), .I3(VAC_MOSI), 
            .O(n12));
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12_4_lut_adj_50 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20774));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_50.LUT_INIT = 16'hca0a;
    SB_CARRY add_126_6 (.CI(n19816), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19817));
    SB_LUT4 i3_4_lut (.I0(n11570), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8841));   // zim_main.vhd(531[4] 815[13])
    defparam i3_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i15470_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1575));   // zim_main.vhd(531[4] 815[13])
    defparam i15470_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i15_4_lut (.I0(n18070), .I1(n21588), 
            .I2(comm_state[3]), .I3(n9342), .O(comm_state_3__N_9[3]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_342_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 secclk_cnt_3765_3766_add_4_10_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[8]), .I3(n19963), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22431_bdd_4_lut (.I0(n22431), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1651), 
            .I3(comm_cmd[2]), .O(n22434));
    defparam n22431_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19692 (.I0(comm_cmd[1]), .I1(n26_adj_1642), 
            .I2(n21434), .I3(comm_cmd[2]), .O(n22425));
    defparam comm_cmd_1__bdd_4_lut_19692.LUT_INIT = 16'he4aa;
    SB_CARRY secclk_cnt_3765_3766_add_4_10 (.CI(n19963), .I0(VAC_MOSI), 
            .I1(secclk_cnt[8]), .CO(n19964));
    SB_LUT4 add_126_5_lut (.I0(n14_adj_1547), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19815), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 secclk_cnt_3765_3766_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[7]), .I3(n19962), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_5 (.CI(n19815), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19816));
    SB_LUT4 add_126_4_lut (.I0(n14_adj_1548), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19814), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_67_3_lut (.I0(VAC_MOSI), .I1(data_count[1]), .I2(VAC_MOSI), 
            .I3(n19765), .O(n426)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_14 (.CI(n19785), .I0(data_cntvec[12]), .I1(VAC_MOSI), 
            .CO(n19786));
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20772));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_3765_3766_add_4_9 (.CI(n19962), .I0(VAC_MOSI), .I1(secclk_cnt[7]), 
            .CO(n19963));
    SB_CARRY add_126_4 (.CI(n19814), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19815));
    SB_LUT4 add_126_3_lut (.I0(n14_adj_1549), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19813), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_13_lut (.I0(VAC_MOSI), .I1(data_cntvec[11]), .I2(VAC_MOSI), 
            .I3(n19784), .O(n434)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_3 (.CI(n19813), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19814));
    SB_LUT4 i15473_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1550));   // zim_main.vhd(531[4] 815[13])
    defparam i15473_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15471_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1551));   // zim_main.vhd(531[4] 815[13])
    defparam i15471_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15472_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1552));   // zim_main.vhd(531[4] 815[13])
    defparam i15472_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i15452_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1579));   // zim_main.vhd(531[4] 815[13])
    defparam i15452_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY add_68_13 (.CI(n19784), .I0(data_cntvec[11]), .I1(VAC_MOSI), 
            .CO(n19785));
    SB_LUT4 i6294_3_lut (.I0(\comm_buf[0] [1]), .I1(data_index[9]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1556));   // zim_main.vhd(531[4] 815[13])
    defparam i6294_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12848_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9342), .I3(n12654), .O(n15369));   // zim_main.vhd(529[3] 816[10])
    defparam i12848_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_68_12_lut (.I0(VAC_MOSI), .I1(data_cntvec[10]), .I2(VAC_MOSI), 
            .I3(n19783), .O(n435)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19282_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21479));
    defparam i19282_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 i1_2_lut_adj_52 (.I0(DTRIG_N_958), .I1(adc_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21079));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_52.LUT_INIT = 16'h2222;
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1724[1]), .I1(bit_cnt_adj_1724[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(bit_cnt_3__N_1012_adj_1728[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i19246_3_lut (.I0(bit_cnt_adj_1724[2]), .I1(bit_cnt_adj_1724[1]), 
            .I2(bit_cnt_adj_1724[0]), .I3(VAC_MOSI), .O(bit_cnt_3__N_1012_adj_1728[2]));
    defparam i19246_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1_2_lut_3_lut_adj_53 (.I0(comm_cmd[0]), .I1(n16818), .I2(comm_state[0]), 
            .I3(VAC_MOSI), .O(n28));
    defparam i1_2_lut_3_lut_adj_53.LUT_INIT = 16'hfdfd;
    SB_LUT4 i5_4_lut (.I0(wdtick_cnt[21]), .I1(wdtick_cnt[23]), .I2(wdtick_cnt[22]), 
            .I3(wdtick_cnt[19]), .O(n12_adj_1542));
    defparam i5_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i6_4_lut (.I0(wdtick_cnt[11]), .I1(n12_adj_1542), .I2(wdtick_cnt[24]), 
            .I3(wdtick_cnt[14]), .O(n19986));
    defparam i6_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i11_4_lut (.I0(wdtick_cnt[17]), .I1(wdtick_cnt[5]), .I2(wdtick_cnt[2]), 
            .I3(wdtick_cnt[20]), .O(n30_adj_1530));   // zim_main.vhd(405[8:31])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 secclk_cnt_3765_3766_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[6]), .I3(n19961), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15_4_lut (.I0(wdtick_cnt[9]), .I1(n30_adj_1530), .I2(wdtick_cnt[13]), 
            .I3(n19986), .O(n34));   // zim_main.vhd(405[8:31])
    defparam i15_4_lut.LUT_INIT = 16'hfeff;
    SB_CARRY secclk_cnt_3765_3766_add_4_8 (.CI(n19961), .I0(VAC_MOSI), .I1(secclk_cnt[6]), 
            .CO(n19962));
    SB_LUT4 i13_4_lut (.I0(wdtick_cnt[7]), .I1(wdtick_cnt[15]), .I2(wdtick_cnt[16]), 
            .I3(wdtick_cnt[18]), .O(n32));   // zim_main.vhd(405[8:31])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_126_2_lut (.I0(n14_adj_1541), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_68_12 (.CI(n19783), .I0(data_cntvec[10]), .I1(VAC_MOSI), 
            .CO(n19784));
    SB_LUT4 i14643_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9342), .I3(n12654), .O(n15368));
    defparam i14643_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i14_4_lut (.I0(wdtick_cnt[3]), .I1(wdtick_cnt[4]), .I2(wdtick_cnt[0]), 
            .I3(wdtick_cnt[8]), .O(n33));   // zim_main.vhd(405[8:31])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 secclk_cnt_3765_3766_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[5]), .I3(n19960), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19392_4_lut (.I0(bit_cnt_adj_1724[3]), .I1(bit_cnt_adj_1724[2]), 
            .I2(bit_cnt_adj_1724[1]), .I3(bit_cnt_adj_1724[0]), .O(bit_cnt_3__N_1012_adj_1728[3]));
    defparam i19392_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 add_68_11_lut (.I0(VAC_MOSI), .I1(data_cntvec[9]), .I2(VAC_MOSI), 
            .I3(n19782), .O(n436)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_126_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19813));
    SB_LUT4 i12846_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9342), .I2(\comm_buf[0] [5]), 
            .I3(n12654), .O(n15367));   // zim_main.vhd(529[3] 816[10])
    defparam i12846_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_CARRY secclk_cnt_3765_3766_add_4_7 (.CI(n19960), .I0(VAC_MOSI), .I1(secclk_cnt[5]), 
            .CO(n19961));
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20770));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i12845_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9342), .I3(n12654), .O(n15366));   // zim_main.vhd(529[3] 816[10])
    defparam i12845_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12844_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9342), .I3(n12654), .O(n15365));   // zim_main.vhd(529[3] 816[10])
    defparam i12844_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i11_4_lut_adj_55 (.I0(adress[1]), .I1(adress[0]), .I2(n13054), 
            .I3(n14692), .O(n20138));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_55.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_56 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(n20578));   // zim_main.vhd(529[3] 816[10])
    defparam i1_2_lut_3_lut_adj_56.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_57 (.I0(comm_state[2]), .I1(comm_state[3]), 
            .I2(n12089), .I3(VAC_MOSI), .O(n16824));   // zim_main.vhd(243[9:19])
    defparam i1_2_lut_3_lut_adj_57.LUT_INIT = 16'hd0d0;
    SB_LUT4 secclk_cnt_3765_3766_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[4]), .I3(n19959), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_58 (.I0(wdtick_cnt[12]), .I1(wdtick_cnt[10]), 
            .I2(wdtick_cnt[1]), .I3(wdtick_cnt[6]), .O(n31));   // zim_main.vhd(405[8:31])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hfffe;
    SB_LUT4 i18_4_lut (.I0(n31), .I1(n33), .I2(n32), .I3(n34), .O(n49));   // zim_main.vhd(405[8:31])
    defparam i18_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i17_3_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(VAC_MOSI), .O(n10_adj_1619));
    defparam i17_3_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i19086_2_lut (.I0(\comm_buf[6] [1]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21433));
    defparam i19086_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_137_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1588));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3887_2_lut_4_lut (.I0(comm_index[1]), .I1(comm_data_vld), .I2(ICE_SPI_CE0), 
            .I3(comm_index[0]), .O(comm_index_2__N_487[1]));   // zim_main.vhd(712[5] 722[12])
    defparam i3887_2_lut_4_lut.LUT_INIT = 16'ha6aa;
    SB_LUT4 i2_2_lut_4_lut (.I0(comm_state[0]), .I1(comm_cmd[2]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n7_adj_1650));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_2_lut_adj_59 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n5));   // zim_main.vhd(747[5] 802[14])
    defparam i1_2_lut_adj_59.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(n12048), .O(n16971));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h10ff;
    SB_LUT4 comm_state_3__I_0_354_Mux_9_i15_4_lut (.I0(n7_adj_1555), .I1(n8_adj_1556), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[9]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_9_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12843_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9342), .I3(n12654), .O(n15364));   // zim_main.vhd(529[3] 816[10])
    defparam i12843_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i6304_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1558));   // zim_main.vhd(531[4] 815[13])
    defparam i6304_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_8_i15_4_lut (.I0(n7_adj_1557), .I1(n8_adj_1558), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[8]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_3765_3766_add_4_6 (.CI(n19959), .I0(VAC_MOSI), .I1(secclk_cnt[4]), 
            .CO(n19960));
    SB_LUT4 secclk_cnt_3765_3766_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[3]), .I3(n19958), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12842_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9342), .I3(n12654), .O(n15363));   // zim_main.vhd(529[3] 816[10])
    defparam i12842_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12841_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9342), .I3(n12654), .O(n15362));   // zim_main.vhd(529[3] 816[10])
    defparam i12841_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_60 (.I0(n16818), .I1(comm_cmd[2]), .I2(n30_adj_1499), 
            .I3(comm_cmd[1]), .O(comm_state_3__N_460[3]));   // zim_main.vhd(747[5] 802[14])
    defparam i1_4_lut_adj_60.LUT_INIT = 16'h5051;
    SB_LUT4 i12840_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9342), .I3(n12654), .O(n15361));   // zim_main.vhd(529[3] 816[10])
    defparam i12840_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12839_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9342), .I3(n12654), .O(n15360));   // zim_main.vhd(529[3] 816[10])
    defparam i12839_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12838_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9342), .I3(n12654), .O(n15359));   // zim_main.vhd(529[3] 816[10])
    defparam i12838_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY secclk_cnt_3765_3766_add_4_5 (.CI(n19958), .I0(VAC_MOSI), .I1(secclk_cnt[3]), 
            .CO(n19959));
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:44]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
    SB_LUT4 i12833_3_lut_4_lut (.I0(buf_cfgRTD[7]), .I1(\comm_buf[0] [7]), 
            .I2(n9342), .I3(n12624), .O(n15354));   // zim_main.vhd(529[3] 816[10])
    defparam i12833_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged10 (.RDATA({buf_data_vac[7:4]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n10902));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hf7f7;
    SB_RAM1024x4NW iac_raw_buf_vac_raw_buf_merged8 (.RDATA({buf_data_vac[15:12]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_212}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_774), 
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
    SB_LUT4 n22425_bdd_4_lut (.I0(n22425), .I1(req_data_cnt[3]), .I2(acadc_skipCount[3]), 
            .I3(comm_cmd[2]), .O(n22428));
    defparam n22425_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_125_11_lut (.I0(data_index[9]), .I1(data_index[9]), .I2(n10756), 
            .I3(n19812), .O(n7_adj_1555)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i6314_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1560));   // zim_main.vhd(531[4] 815[13])
    defparam i6314_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_3765_3766_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[2]), .I3(n19957), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_354_Mux_7_i15_4_lut (.I0(n7_adj_1559), .I1(n8_adj_1560), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[7]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_3765_3766_add_4_4 (.CI(n19957), .I0(VAC_MOSI), .I1(secclk_cnt[2]), 
            .CO(n19958));
    SB_LUT4 secclk_cnt_3765_3766_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[1]), .I3(n19956), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_61 (.I0(DTRIG_N_958_adj_1493), .I1(adc_state_adj_1699[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21076));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_61.LUT_INIT = 16'h2222;
    SB_CARRY secclk_cnt_3765_3766_add_4_3 (.CI(n19956), .I0(VAC_MOSI), .I1(secclk_cnt[1]), 
            .CO(n19957));
    SB_LUT4 i15227_2_lut_3_lut (.I0(eis_state[0]), .I1(acadc_dtrig_i), .I2(acadc_dtrig_v), 
            .I3(VAC_MOSI), .O(eis_state_2__N_392[0]));   // zim_main.vhd(500[5] 502[12])
    defparam i15227_2_lut_3_lut.LUT_INIT = 16'h2a2a;
    SB_CARRY add_68_11 (.CI(n19782), .I0(data_cntvec[9]), .I1(VAC_MOSI), 
            .CO(n19783));
    SB_LUT4 i12832_3_lut_4_lut (.I0(buf_cfgRTD[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9342), .I3(n12624), .O(n15353));   // zim_main.vhd(529[3] 816[10])
    defparam i12832_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 secclk_cnt_3765_3766_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 equal_61_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n14_adj_1538));   // zim_main.vhd(474[10:41])
    defparam equal_61_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20_adj_1670));   // zim_main.vhd(474[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_62 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20532));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_3765_3766_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(secclk_cnt[0]), .CO(n19956));
    SB_LUT4 i12831_3_lut_4_lut (.I0(buf_cfgRTD[5]), .I1(n9342), .I2(\comm_buf[0] [5]), 
            .I3(n12624), .O(n15352));   // zim_main.vhd(529[3] 816[10])
    defparam i12831_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i6324_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1562));   // zim_main.vhd(531[4] 815[13])
    defparam i6324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19164_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21547));
    defparam i19164_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24_adj_1593));   // zim_main.vhd(474[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_129_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1626));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_63 (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22_adj_1590));   // zim_main.vhd(474[10:41])
    defparam i6_4_lut_adj_63.LUT_INIT = 16'h7bde;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14_adj_1638), 
            .D(comm_state_3__N_9[1]));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipcnt[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipCount[14]), .O(n23_adj_1591));   // zim_main.vhd(474[10:41])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_1__bdd_4_lut_19741 (.I0(comm_index[1]), .I1(n4_adj_1588), 
            .I2(n21433), .I3(comm_index[2]), .O(n22419));
    defparam comm_index_1__bdd_4_lut_19741.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_64 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20530));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'h0aca;
    SB_LUT4 i5_4_lut_adj_65 (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zim_main.vhd(474[10:41])
    defparam i5_4_lut_adj_65.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18));   // zim_main.vhd(474[10:41])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_26_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[24]), .I3(n19955), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_26_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_67_6_lut (.I0(VAC_MOSI), .I1(data_count[4]), .I2(VAC_MOSI), 
            .I3(n19768), .O(n423)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_10_lut (.I0(VAC_MOSI), .I1(data_cntvec[8]), .I2(VAC_MOSI), 
            .I3(n19781), .O(n437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_25_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[23]), .I3(n19954), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_25_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12_4_lut_adj_66 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20528));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'h0aca;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n21033), 
            .D(comm_state_3__N_9[3]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_212[1]));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_state_3__I_0_354_Mux_6_i15_4_lut (.I0(n7_adj_1561), .I1(n8_adj_1562), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[6]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20_adj_1670), .I2(n14_adj_1538), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1525));   // zim_main.vhd(474[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 n22419_bdd_4_lut (.I0(n22419), .I1(n2_adj_1587), .I2(n1_adj_1586), 
            .I3(comm_index[2]), .O(n22422));
    defparam n22419_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_128_Mux_4_i23_3_lut (.I0(VDC_RNG0), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1675));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19343_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21703));
    defparam i19343_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_67 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20526));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20778));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i19347_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21557));
    defparam i19347_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_69 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20524));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'h0aca;
    SB_LUT4 eis_state_2__I_0_371_Mux_0_i2_4_lut_4_lut (.I0(n31_adj_1537), 
            .I1(eis_state[0]), .I2(iac_raw_buf_N_776), .I3(eis_start), 
            .O(n2));   // zim_main.vhd(452[4] 523[13])
    defparam eis_state_2__I_0_371_Mux_0_i2_4_lut_4_lut.LUT_INIT = 16'h1d3f;
    SB_LUT4 i12830_3_lut_4_lut (.I0(buf_cfgRTD[4]), .I1(\comm_buf[0] [4]), 
            .I2(n9342), .I3(n12624), .O(n15351));   // zim_main.vhd(529[3] 816[10])
    defparam i12830_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_70 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20522));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'h0aca;
    SB_LUT4 i19172_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21556));
    defparam i19172_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_212[2]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_212[3]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_212[4]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_212[5]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_212[6]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_212[7]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_212[8]));   // zim_main.vhd(529[3] 816[10])
    SB_DFF data_index_i9 (.Q(data_index[9]), .C(clk_32MHz), .D(data_index_9__N_212[9]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12493), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12_4_lut_adj_71 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20768));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_72 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20520));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'h0aca;
    SB_LUT4 i19433_4_lut (.I0(comm_state[3]), .I1(n21453), .I2(n21454), 
            .I3(comm_state[0]), .O(n14_adj_1638));
    defparam i19433_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i12829_3_lut_4_lut (.I0(buf_cfgRTD[3]), .I1(\comm_buf[0] [3]), 
            .I2(n9342), .I3(n12624), .O(n15350));   // zim_main.vhd(529[3] 816[10])
    defparam i12829_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_127_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1535));   // zim_main.vhd(584[5] 688[14])
    defparam mux_127_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SPI_SLAVE comm_spi (.comm_rx_buf({comm_rx_buf}), .GND_net(VAC_MOSI), 
            .comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), .comm_clear(comm_clear), 
            .comm_tx_buf({comm_tx_buf}), .ICE_SPI_SCLK(ICE_SPI_SCLK), .VCC_net(VCC_net), 
            .ICE_SPI_MOSI(ICE_SPI_MOSI), .ICE_SPI_MISO(ICE_SPI_MISO));   // zim_main.vhd(829[13:22])
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i15_4_lut (.I0(n22614), .I1(n8_adj_1577), 
            .I2(comm_state[3]), .I3(n9342), .O(comm_state_3__N_9[1]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_342_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_25 (.CI(n19954), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[23]), .CO(n19955));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_24_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[22]), .I3(n19953), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_24_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12828_3_lut_4_lut (.I0(buf_cfgRTD[2]), .I1(\comm_buf[0] [2]), 
            .I2(n9342), .I3(n12624), .O(n15349));   // zim_main.vhd(529[3] 816[10])
    defparam i12828_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20766));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3763_3764_add_4_24 (.CI(n19953), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[22]), .CO(n19954));
    SB_LUT4 i12_4_lut_adj_74 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20518));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'h0aca;
    SB_LUT4 i15204_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n17705));
    defparam i15204_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14_4_lut_adj_75 (.I0(n21), .I1(n23_adj_1591), .I2(n22_adj_1590), 
            .I3(n24_adj_1593), .O(n30_adj_1543));   // zim_main.vhd(474[10:41])
    defparam i14_4_lut_adj_75.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19687 (.I0(comm_cmd[1]), .I1(n19_adj_1666), 
            .I2(n20_adj_1667), .I3(comm_cmd[2]), .O(n22413));
    defparam comm_cmd_1__bdd_4_lut_19687.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_76 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20516));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_77 (.I0(adress[5]), .I1(adress[4]), .I2(n13054), 
            .I3(n14692), .O(n20146));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_78 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17_adj_1553));   // zim_main.vhd(474[10:41])
    defparam i1_4_lut_adj_78.LUT_INIT = 16'h7bde;
    SB_LUT4 i15_4_lut_adj_79 (.I0(n17_adj_1553), .I1(n30_adj_1543), .I2(n26_adj_1525), 
            .I3(n18), .O(n31_adj_1537));   // zim_main.vhd(474[10:41])
    defparam i15_4_lut_adj_79.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_80 (.I0(adress[4]), .I1(adress[3]), .I2(n13054), 
            .I3(n14692), .O(n20144));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_81 (.I0(adress[3]), .I1(adress[2]), .I2(n13054), 
            .I3(n14692), .O(n20142));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1624));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_82 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20514));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_23_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[21]), .I3(n19952), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_23_lut.LUT_INIT = 16'h8228;
    SB_LUT4 n22413_bdd_4_lut (.I0(n22413), .I1(n17_adj_1665), .I2(n16_adj_1664), 
            .I3(comm_cmd[2]), .O(n22416));
    defparam n22413_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_83 (.I0(adress[2]), .I1(adress[1]), .I2(n13054), 
            .I3(n14692), .O(n20140));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 eis_state_2__I_0_371_Mux_1_i2_4_lut (.I0(n31_adj_1537), .I1(eis_state_2__N_392[1]), 
            .I2(eis_state[0]), .I3(eis_start), .O(n2_adj_1696));   // zim_main.vhd(452[4] 523[13])
    defparam eis_state_2__I_0_371_Mux_1_i2_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i12_4_lut_adj_84 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20512));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_84.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_23 (.CI(n19952), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[21]), .CO(n19953));
    SB_LUT4 comm_cmd_1__bdd_4_lut_19678 (.I0(comm_cmd[1]), .I1(n19_adj_1692), 
            .I2(n20_adj_1693), .I3(comm_cmd[2]), .O(n22407));
    defparam comm_cmd_1__bdd_4_lut_19678.LUT_INIT = 16'he4aa;
    SB_LUT4 n22407_bdd_4_lut (.I0(n22407), .I1(n17_adj_1691), .I2(n16_adj_1690), 
            .I3(comm_cmd[2]), .O(n22410));
    defparam n22407_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_22_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[20]), .I3(n19951), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_22_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20510));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19799 (.I0(comm_cmd[2]), .I1(n21323), 
            .I2(n21324), .I3(comm_cmd[3]), .O(n22401));
    defparam comm_cmd_2__bdd_4_lut_19799.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_86 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20764));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_87 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20508));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_88 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20762));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20506));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1625));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_90 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20504));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_22 (.CI(n19951), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[20]), .CO(n19952));
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20502));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_92 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20760));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 n22401_bdd_4_lut (.I0(n22401), .I1(n21240), .I2(n22374), .I3(comm_cmd[3]), 
            .O(n22404));
    defparam n22401_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15206_4_lut (.I0(n17703), .I1(n17705), .I2(comm_state[3]), 
            .I3(n9342), .O(data_index_9__N_212[5]));   // zim_main.vhd(243[9:19])
    defparam i15206_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20758));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_94 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20756));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(IAC_CLK));   // zim_main.vhd(334[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_95 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20500));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 i12827_3_lut_4_lut (.I0(buf_cfgRTD[1]), .I1(\comm_buf[0] [1]), 
            .I2(n9342), .I3(n12624), .O(n15348));   // zim_main.vhd(529[3] 816[10])
    defparam i12827_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20498));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_97 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20754));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19726 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(eis_start), .I3(comm_cmd[1]), .O(n22395));
    defparam comm_cmd_0__bdd_4_lut_19726.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20496));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_99 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20752));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_100 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20750));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20748));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_102 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20494));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20492));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_104 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20746));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20744));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20780));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 n22395_bdd_4_lut (.I0(n22395), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n22398));
    defparam n22395_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_107 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20490));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_108 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20742));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19663 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22389));
    defparam comm_cmd_0__bdd_4_lut_19663.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20740));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i12826_3_lut_4_lut (.I0(VAC_FLT1), .I1(\comm_buf[0] [7]), .I2(n9342), 
            .I3(n12610), .O(n15347));   // zim_main.vhd(529[3] 816[10])
    defparam i12826_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_21_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[19]), .I3(n19950), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_21_lut.LUT_INIT = 16'h8228;
    SB_LUT4 n22389_bdd_4_lut (.I0(n22389), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n22392));
    defparam n22389_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_110 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20738));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_111 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20736));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_112 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20488));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'h0aca;
    SB_LUT4 i19302_2_lut (.I0(buf_data_vac[23]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21434));
    defparam i19302_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20734));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19673 (.I0(comm_cmd[1]), .I1(n26_adj_1647), 
            .I2(n21385), .I3(comm_cmd[2]), .O(n22383));
    defparam comm_cmd_1__bdd_4_lut_19673.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_114 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20732));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 n22383_bdd_4_lut (.I0(n22383), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22386));
    defparam n22383_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_115 (.I0(cmd_rdadctmp_adj_1742[22]), .I1(cmd_rdadctmp_adj_1742[21]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20308));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19668 (.I0(comm_cmd[2]), .I1(n21329), 
            .I2(n21330), .I3(comm_cmd[3]), .O(n22377));
    defparam comm_cmd_2__bdd_4_lut_19668.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_116 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20690));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_117 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20730));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_118 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20728));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_119 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20726));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_120 (.I0(cmd_rdadctmp_adj_1742[21]), .I1(cmd_rdadctmp_adj_1742[20]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20306));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1642));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_121 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20724));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_122 (.I0(cmd_rdadctmp_adj_1742[20]), .I1(cmd_rdadctmp_adj_1742[19]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20304));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1651));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_123 (.I0(dds_state_adj_1722[2]), .I1(dds_state_adj_1722[1]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n20670));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_123.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12771), .I3(adc_state[0]), .O(n20782));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd_rdadctmp_adj_1742[19]), .I1(cmd_rdadctmp_adj_1742[18]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20302));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp_adj_1700[1]), .I1(cmd_rdadctmp_adj_1700[0]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20784));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_127 (.I0(cmd_rdadctmp_adj_1742[18]), .I1(cmd_rdadctmp_adj_1742[17]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20300));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_128 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20154));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp_adj_1742[17]), .I1(cmd_rdadctmp_adj_1742[16]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20298));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_130 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20174));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_131 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20136));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(cmd_rdadctmp_adj_1742[16]), .I1(cmd_rdadctmp_adj_1742[15]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20288));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20156));   // zim_main.vhd(243[9:19])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp_adj_1742[15]), .I1(cmd_rdadctmp_adj_1742[14]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20286));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_135 (.I0(cmd_rdadctmp_adj_1742[14]), .I1(cmd_rdadctmp_adj_1742[13]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20284));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20172));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'h0aca;
    SB_LUT4 i14642_3_lut_4_lut (.I0(VAC_FLT0), .I1(\comm_buf[0] [6]), .I2(n9342), 
            .I3(n12610), .O(n15346));
    defparam i14642_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1742[13]), .I1(cmd_rdadctmp_adj_1742[12]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20282));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1742[12]), .I1(cmd_rdadctmp_adj_1742[11]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20280));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_adj_139 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n20668));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_139.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1700[31]), .I1(cmd_rdadctmp_adj_1700[30]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20646));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1700[30]), .I1(cmd_rdadctmp_adj_1700[29]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20644));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1700[27]), .I1(cmd_rdadctmp_adj_1700[26]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20638));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_DFFN dds0_mclkcnt_i7_3772__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44_adj_1527));   // zim_main.vhd(440[4] 443[11])
    SB_LUT4 i6344_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1564));   // zim_main.vhd(531[4] 815[13])
    defparam i6344_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp_adj_1742[11]), .I1(cmd_rdadctmp_adj_1742[10]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20278));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp_adj_1700[26]), .I1(cmd_rdadctmp_adj_1700[25]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20636));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 n22377_bdd_4_lut (.I0(n22377), .I1(n21237), .I2(n21236), .I3(comm_cmd[3]), 
            .O(n22380));
    defparam n22377_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp_adj_1742[10]), .I1(cmd_rdadctmp_adj_1742[9]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20276));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'h0aca;
    SB_LUT4 i8_4_lut_adj_146 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24));   // zim_main.vhd(507[9:35])
    defparam i8_4_lut_adj_146.LUT_INIT = 16'h7bde;
    SB_DFFN dds0_mclkcnt_i7_3772__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(440[4] 443[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42));   // zim_main.vhd(440[4] 443[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(440[4] 443[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(440[4] 443[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(440[4] 443[11])
    SB_DFFN dds0_mclkcnt_i7_3772__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(440[4] 443[11])
    SB_DFFSR clk_cnt_3761_3762__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14_adj_1529), 
            .R(n17773));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i2 (.Q(wdtick_cnt[1]), .C(clk_16MHz), 
            .E(n11910), .D(n156), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12824_3_lut_4_lut (.I0(VAC_OSR1), .I1(n9342), .I2(\comm_buf[0] [5]), 
            .I3(n12610), .O(n15345));   // zim_main.vhd(529[3] 816[10])
    defparam i12824_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_DFFER wdtick_cnt_3763_3764__i3 (.Q(wdtick_cnt[2]), .C(clk_16MHz), 
            .E(n11910), .D(n155), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 comm_cmd_0__bdd_4_lut_19658 (.I0(comm_cmd[0]), .I1(VAC_FLT1), 
            .I2(buf_adcdata_iac[23]), .I3(comm_cmd[1]), .O(n22371));
    defparam comm_cmd_0__bdd_4_lut_19658.LUT_INIT = 16'he4aa;
    SB_DFFER wdtick_cnt_3763_3764__i4 (.Q(wdtick_cnt[3]), .C(clk_16MHz), 
            .E(n11910), .D(n154), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i5 (.Q(wdtick_cnt[4]), .C(clk_16MHz), 
            .E(n11910), .D(n153), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i6 (.Q(wdtick_cnt[5]), .C(clk_16MHz), 
            .E(n11910), .D(n152), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i7 (.Q(wdtick_cnt[6]), .C(clk_16MHz), 
            .E(n11910), .D(n151), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i8 (.Q(wdtick_cnt[7]), .C(clk_16MHz), 
            .E(n11910), .D(n150), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i9 (.Q(wdtick_cnt[8]), .C(clk_16MHz), 
            .E(n11910), .D(n149), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i10 (.Q(wdtick_cnt[9]), .C(clk_16MHz), 
            .E(n11910), .D(n148), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i11 (.Q(wdtick_cnt[10]), .C(clk_16MHz), 
            .E(n11910), .D(n147), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i12 (.Q(wdtick_cnt[11]), .C(clk_16MHz), 
            .E(n11910), .D(n146), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i13 (.Q(wdtick_cnt[12]), .C(clk_16MHz), 
            .E(n11910), .D(n145), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i14 (.Q(wdtick_cnt[13]), .C(clk_16MHz), 
            .E(n11910), .D(n144), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i15 (.Q(wdtick_cnt[14]), .C(clk_16MHz), 
            .E(n11910), .D(n143), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i16 (.Q(wdtick_cnt[15]), .C(clk_16MHz), 
            .E(n11910), .D(n142), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i17 (.Q(wdtick_cnt[16]), .C(clk_16MHz), 
            .E(n11910), .D(n141), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i18 (.Q(wdtick_cnt[17]), .C(clk_16MHz), 
            .E(n11910), .D(n140), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i19 (.Q(wdtick_cnt[18]), .C(clk_16MHz), 
            .E(n11910), .D(n139), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i20 (.Q(wdtick_cnt[19]), .C(clk_16MHz), 
            .E(n11910), .D(n138), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i21 (.Q(wdtick_cnt[20]), .C(clk_16MHz), 
            .E(n11910), .D(n137), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i22 (.Q(wdtick_cnt[21]), .C(clk_16MHz), 
            .E(n11910), .D(n136), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i23 (.Q(wdtick_cnt[22]), .C(clk_16MHz), 
            .E(n11910), .D(n135), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i24 (.Q(wdtick_cnt[23]), .C(clk_16MHz), 
            .E(n11910), .D(n134), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER wdtick_cnt_3763_3764__i25 (.Q(wdtick_cnt[24]), .C(clk_16MHz), 
            .E(n11910), .D(n133), .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd_rdadctmp_adj_1742[9]), .I1(cmd_rdadctmp_adj_1742[8]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20274));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'h0aca;
    SB_LUT4 n22371_bdd_4_lut (.I0(n22371), .I1(buf_dds1[15]), .I2(buf_dds0[15]), 
            .I3(comm_cmd[1]), .O(n22374));
    defparam n22371_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6_4_lut_adj_148 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), 
            .I2(req_data_cnt[2]), .I3(req_data_cnt[7]), .O(n22));   // zim_main.vhd(507[9:35])
    defparam i6_4_lut_adj_148.LUT_INIT = 16'h7bde;
    SB_LUT4 i11_3_lut_4_lut (.I0(buf_control[6]), .I1(\comm_buf[0] [6]), 
            .I2(n9342), .I3(n12144), .O(n20316));
    defparam i11_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7_4_lut_adj_149 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23));   // zim_main.vhd(507[9:35])
    defparam i7_4_lut_adj_149.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_150 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1594));   // zim_main.vhd(507[9:35])
    defparam i5_4_lut_adj_150.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_state_3__I_0_354_Mux_4_i15_4_lut (.I0(n7_adj_1563), .I1(n8_adj_1564), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[4]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_151 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20450));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i12823_3_lut_4_lut (.I0(VAC_OSR0), .I1(\comm_buf[0] [4]), .I2(n9342), 
            .I3(n12610), .O(n15344));   // zim_main.vhd(529[3] 816[10])
    defparam i12823_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12822_3_lut_4_lut (.I0(IAC_FLT1), .I1(\comm_buf[0] [3]), .I2(n9342), 
            .I3(n12610), .O(n15343));   // zim_main.vhd(529[3] 816[10])
    defparam i12822_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12821_3_lut_4_lut (.I0(IAC_FLT0), .I1(\comm_buf[0] [2]), .I2(n9342), 
            .I3(n12610), .O(n15342));   // zim_main.vhd(529[3] 816[10])
    defparam i12821_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFSR secclk_cnt_3765_3766__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_3765_3766__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp_adj_1742[8]), .I1(cmd_rdadctmp_adj_1742[7]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20272));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'h0aca;
    SB_LUT4 i4_4_lut_adj_153 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20));   // zim_main.vhd(507[9:35])
    defparam i4_4_lut_adj_153.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_154 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18_adj_1644));   // zim_main.vhd(507[9:35])
    defparam i2_4_lut_adj_154.LUT_INIT = 16'h7bde;
    SB_LUT4 add_125_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10756), 
            .I3(n19811), .O(n7_adj_1557)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19653 (.I0(comm_cmd[1]), .I1(n19_adj_1629), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22365));
    defparam comm_cmd_1__bdd_4_lut_19653.LUT_INIT = 16'he4aa;
    SB_LUT4 i3_4_lut_adj_155 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1526));   // zim_main.vhd(507[9:35])
    defparam i3_4_lut_adj_155.LUT_INIT = 16'h7bde;
    SB_LUT4 n22365_bdd_4_lut (.I0(n22365), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1628), 
            .I3(comm_cmd[2]), .O(n22368));
    defparam n22365_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp_adj_1742[7]), .I1(cmd_rdadctmp_adj_1742[6]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20270));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_157 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17));   // zim_main.vhd(507[9:35])
    defparam i1_4_lut_adj_157.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1348), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2_adj_1576));   // zim_main.vhd(808[5] 810[12])
    defparam comm_state_3__I_0_342_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i14_4_lut_adj_158 (.I0(n21_adj_1594), .I1(n23), .I2(n22), 
            .I3(n24), .O(n30));   // zim_main.vhd(507[9:35])
    defparam i14_4_lut_adj_158.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1742[6]), .I1(cmd_rdadctmp_adj_1742[5]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20268));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_LUT4 i13_4_lut_adj_160 (.I0(n17), .I1(n19_adj_1526), .I2(n18_adj_1644), 
            .I3(n20), .O(n29));   // zim_main.vhd(507[9:35])
    defparam i13_4_lut_adj_160.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_4_lut_adj_161 (.I0(comm_cmd[0]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[1]), .O(n5_adj_1536));
    defparam i1_2_lut_4_lut_adj_161.LUT_INIT = 16'h0010;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1742[5]), .I1(cmd_rdadctmp_adj_1742[4]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20266));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_163 (.I0(cmd_rdadctmp_adj_1742[4]), .I1(cmd_rdadctmp_adj_1742[3]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20264));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'h0aca;
    SB_LUT4 i12803_3_lut_4_lut (.I0(AMPV_POW), .I1(n9342), .I2(\comm_buf[0] [5]), 
            .I3(n12144), .O(n15324));   // zim_main.vhd(529[3] 816[10])
    defparam i12803_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i29_4_lut (.I0(eis_start), .I1(iac_raw_buf_N_776), .I2(eis_state[0]), 
            .I3(n31_adj_1537), .O(n11_adj_1632));   // zim_main.vhd(452[4] 523[13])
    defparam i29_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1348), .I2(comm_state[0]), .I3(comm_state_3__N_460[3]), 
            .O(n8_adj_1577));   // zim_main.vhd(808[5] 810[12])
    defparam comm_state_3__I_0_342_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1742[3]), .I1(cmd_rdadctmp_adj_1742[2]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20262));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i6354_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1566));   // zim_main.vhd(531[4] 815[13])
    defparam i6354_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12802_3_lut_4_lut (.I0(VDC_RNG0), .I1(\comm_buf[0] [4]), .I2(n9342), 
            .I3(n12144), .O(n15323));   // zim_main.vhd(529[3] 816[10])
    defparam i12802_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_165 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20170));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_166 (.I0(cmd_rdadctmp_adj_1742[2]), .I1(cmd_rdadctmp_adj_1742[1]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20260));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'h0aca;
    SB_LUT4 i28_4_lut (.I0(n11_adj_1632), .I1(n21041), .I2(eis_state[2]), 
            .I3(eis_state[1]), .O(eis_state_2__N_167[2]));   // zim_main.vhd(452[4] 523[13])
    defparam i28_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i12_4_lut_adj_167 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20168));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 i12819_3_lut_4_lut (.I0(buf_dds0[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9342), .I3(n12596), .O(n15340));   // zim_main.vhd(529[3] 816[10])
    defparam i12819_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_168 (.I0(cmd_rdadctmp_adj_1700[2]), .I1(cmd_rdadctmp_adj_1700[1]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20786));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_169 (.I0(cmd_rdadctmp_adj_1700[3]), .I1(cmd_rdadctmp_adj_1700[2]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20788));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_170 (.I0(cmd_rdadctmp_adj_1700[4]), .I1(cmd_rdadctmp_adj_1700[3]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20790));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_171 (.I0(cmd_rdadctmp_adj_1700[5]), .I1(cmd_rdadctmp_adj_1700[4]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20792));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_172 (.I0(comm_cmd[7]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[7]), .O(n20360));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 i12801_3_lut_4_lut (.I0(SELIRNG1), .I1(\comm_buf[0] [3]), .I2(n9342), 
            .I3(n12144), .O(n15322));   // zim_main.vhd(529[3] 816[10])
    defparam i12801_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_173 (.I0(cmd_rdadctmp_adj_1742[1]), .I1(cmd_rdadctmp_adj_1742[0]), 
            .I2(n13324), .I3(adc_state_adj_1741[3]), .O(n20258));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_173.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_174 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20478));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_175 (.I0(comm_cmd[6]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[6]), .O(n20358));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'hca0a;
    SB_LUT4 i9391_1_lut (.I0(wdtick_flag), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11910));   // zim_main.vhd(399[3] 410[10])
    defparam i9391_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_176 (.I0(cmd_rdadctmp_adj_1700[25]), .I1(cmd_rdadctmp_adj_1700[24]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20630));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'hca0a;
    SB_CARRY add_125_10 (.CI(n19811), .I0(data_index[8]), .I1(n10756), 
            .CO(n19812));
    SB_LUT4 comm_state_3__I_0_354_Mux_3_i15_4_lut (.I0(n7_adj_1565), .I1(n8_adj_1566), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[3]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_21 (.CI(n19950), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[19]), .CO(n19951));
    SB_LUT4 i12_4_lut_adj_177 (.I0(comm_cmd[5]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[5]), .O(n20356));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_178 (.I0(comm_cmd[4]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[4]), .O(n20354));   // zim_main.vhd(529[3] 816[10])
    defparam i11_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_179 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20476));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_180 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20474));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_181 (.I0(comm_cmd[3]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[3]), .O(n20344));   // zim_main.vhd(529[3] 816[10])
    defparam i11_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_182 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20472));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_183 (.I0(comm_cmd[2]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[2]), .O(n20342));   // zim_main.vhd(529[3] 816[10])
    defparam i11_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_184 (.I0(comm_cmd[1]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[1]), .O(n20340));   // zim_main.vhd(529[3] 816[10])
    defparam i11_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 i12382_2_lut (.I0(n11933), .I1(eis_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14907));   // zim_main.vhd(449[3] 524[10])
    defparam i12382_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12800_3_lut_4_lut (.I0(SELIRNG0), .I1(\comm_buf[0] [2]), .I2(n9342), 
            .I3(n12144), .O(n15321));   // zim_main.vhd(529[3] 816[10])
    defparam i12800_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_185 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20470));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'h0aca;
    SB_LUT4 i6751_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9269));   // zim_main.vhd(531[4] 815[13])
    defparam i6751_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12799_3_lut_4_lut (.I0(DDS_RNG_0), .I1(\comm_buf[0] [1]), .I2(n9342), 
            .I3(n12144), .O(n15320));   // zim_main.vhd(529[3] 816[10])
    defparam i12799_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_68_10 (.CI(n19781), .I0(data_cntvec[8]), .I1(VAC_MOSI), 
            .CO(n19782));
    SB_LUT4 i1_2_lut_adj_186 (.I0(comm_state[2]), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n80));   // zim_main.vhd(245[9:17])
    defparam i1_2_lut_adj_186.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_187 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n11856), .I3(adc_state_adj_1737[2]), .O(n20468));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_188 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20466));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1628));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_189 (.I0(n12433), .I1(n12082), .I2(n9269), .I3(n12442), 
            .O(n12089));
    defparam i1_4_lut_adj_189.LUT_INIT = 16'h8880;
    SB_LUT4 i19131_4_lut (.I0(n80), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(n5), .O(n21481));
    defparam i19131_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i12_3_lut (.I0(comm_length[2]), .I1(n21481), .I2(n12089), 
            .I3(VAC_MOSI), .O(n20236));
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19325_2_lut (.I0(bit_cnt_adj_1724[3]), .I1(bit_cnt_adj_1724[0]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n21625));   // dds_ad9837.vhd(23[9:18])
    defparam i19325_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i14466_4_lut (.I0(dds_state_adj_1722[0]), .I1(n21625), .I2(dds_state_adj_1722[1]), 
            .I3(n8_adj_1680), .O(dds_state_2__N_964_adj_1730[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i14466_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i6364_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1568));   // zim_main.vhd(531[4] 815[13])
    defparam i6364_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_2_i15_4_lut (.I0(n7_adj_1567), .I1(n8_adj_1568), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[2]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13422_4_lut (.I0(n16971), .I1(buf_dds1[15]), .I2(\comm_buf[0] [7]), 
            .I3(n12048), .O(n15943));   // zim_main.vhd(529[3] 816[10])
    defparam i13422_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13425_4_lut (.I0(n16971), .I1(buf_dds1[14]), .I2(\comm_buf[0] [6]), 
            .I3(n12048), .O(n15946));   // zim_main.vhd(529[3] 816[10])
    defparam i13425_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12794_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15315));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12794_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i12_4_lut_adj_190 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20464));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1700[6]), .I1(cmd_rdadctmp_adj_1700[5]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20794));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_192 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20462));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'h0aca;
    SB_LUT4 i13431_4_lut (.I0(n16971), .I1(buf_dds1[12]), .I2(\comm_buf[0] [4]), 
            .I3(n12048), .O(n15952));   // zim_main.vhd(529[3] 816[10])
    defparam i13431_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13434_4_lut (.I0(n16971), .I1(buf_dds1[11]), .I2(\comm_buf[0] [3]), 
            .I3(n12048), .O(n15955));   // zim_main.vhd(529[3] 816[10])
    defparam i13434_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13437_4_lut (.I0(n16971), .I1(buf_dds1[10]), .I2(\comm_buf[0] [2]), 
            .I3(n12048), .O(n15958));   // zim_main.vhd(529[3] 816[10])
    defparam i13437_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 mux_129_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1629));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_193 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20460));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'h0aca;
    SB_LUT4 i13440_4_lut (.I0(n16971), .I1(buf_dds1[9]), .I2(\comm_buf[0] [1]), 
            .I3(n12048), .O(n15961));   // zim_main.vhd(529[3] 816[10])
    defparam i13440_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_194 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20458));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'h0aca;
    SB_LUT4 i13443_4_lut (.I0(n16971), .I1(buf_dds1[8]), .I2(\comm_buf[0] [0]), 
            .I3(n12048), .O(n15964));   // zim_main.vhd(529[3] 816[10])
    defparam i13443_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_195 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20456));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'h0aca;
    SB_LUT4 i13446_4_lut (.I0(n16971), .I1(buf_dds1[7]), .I2(\comm_buf[1] [7]), 
            .I3(n12048), .O(n15967));   // zim_main.vhd(529[3] 816[10])
    defparam i13446_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13449_4_lut (.I0(n16971), .I1(buf_dds1[6]), .I2(\comm_buf[1] [6]), 
            .I3(n12048), .O(n15970));   // zim_main.vhd(529[3] 816[10])
    defparam i13449_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i13454_4_lut (.I0(n16971), .I1(buf_dds1[4]), .I2(\comm_buf[1] [4]), 
            .I3(n12048), .O(n15975));   // zim_main.vhd(529[3] 816[10])
    defparam i13454_4_lut.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_196 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20454));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_196.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_129_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18530_3_lut (.I0(n16), .I1(buf_adcdata_iac[8]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21257));
    defparam i18530_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18531_3_lut (.I0(n19), .I1(buf_readRTD[0]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21258));
    defparam i18531_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18534_4_lut (.I0(n26), .I1(buf_data_vac[17]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21261));
    defparam i18534_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_adj_1699[0]), .I1(VAC_SCLK), .I2(DTRIG_N_958_adj_1493), 
            .I3(adc_state_adj_1699[1]), .O(n20592));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc4d8;
    SB_LUT4 i12_4_lut_adj_197 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20452));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'h0aca;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15384));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15383));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(VAC_MOSI), .O(DDS_MCLK));   // zim_main.vhd(330[16:66])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15382));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15381));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15380));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12_4_lut_adj_198 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28_adj_1554));   // zim_main.vhd(417[7:31])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'hfffe;
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15379));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15378));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15377));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i10_4_lut_adj_199 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1656));   // zim_main.vhd(417[7:31])
    defparam i10_4_lut_adj_199.LUT_INIT = 16'hfffe;
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15376));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15375));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15374));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12818_3_lut_4_lut (.I0(buf_dds0[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9342), .I3(n12596), .O(n15339));   // zim_main.vhd(529[3] 816[10])
    defparam i12818_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15373));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i11_4_lut_adj_200 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27));   // zim_main.vhd(417[7:31])
    defparam i11_4_lut_adj_200.LUT_INIT = 16'hfffe;
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15372));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 mux_128_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1668));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15371));   // zim_main.vhd(529[3] 816[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15370));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15369));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25));   // zim_main.vhd(417[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15368));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15367));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15366));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i2_2_lut (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10));   // zim_main.vhd(417[7:31])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15365));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15364));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15363));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15362));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15361));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15360));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 mux_129_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1652));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15359));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15358));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15357));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19332_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21702));
    defparam i19332_2_lut.LUT_INIT = 16'h2222;
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15356));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15355));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15354));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15353));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15352));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15351));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15350));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15349));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15348));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15347));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15346));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15345));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15344));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15343));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15342));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i6_4_lut_adj_201 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14));   // zim_main.vhd(417[7:31])
    defparam i6_4_lut_adj_201.LUT_INIT = 16'h8000;
    SB_LUT4 i12_4_lut_adj_202 (.I0(cmd_rdadctmp_adj_1700[24]), .I1(cmd_rdadctmp_adj_1700[23]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20616));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 i15_4_lut_adj_203 (.I0(n25), .I1(n27), .I2(n26_adj_1656), 
            .I3(n28_adj_1554), .O(n20048));   // zim_main.vhd(417[7:31])
    defparam i15_4_lut_adj_203.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_204 (.I0(n20048), .I1(n14), .I2(n10), .I3(secclk_cnt[20]), 
            .O(n14899));   // zim_main.vhd(417[7:31])
    defparam i7_4_lut_adj_204.LUT_INIT = 16'h4000;
    SB_LUT4 i19344_2_lut (.I0(buf_data_vac[43]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21672));
    defparam i19344_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i17191_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14_adj_1529));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17191_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_205 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20446));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_206 (.I0(n16971), .I1(buf_dds1[2]), .I2(\comm_buf[1] [2]), 
            .I3(n12048), .O(n15980));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_206.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_207 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20442));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp_adj_1700[7]), .I1(cmd_rdadctmp_adj_1700[6]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20796));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_209 (.I0(eis_state[1]), .I1(eis_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21053));   // zim_main.vhd(449[3] 524[10])
    defparam i1_2_lut_adj_209.LUT_INIT = 16'h2222;
    SB_LUT4 i18_3_lut (.I0(eis_state[0]), .I1(eis_state[2]), .I2(eis_state[1]), 
            .I3(VAC_MOSI), .O(n12_adj_1454));
    defparam i18_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_210 (.I0(n21053), .I1(acadc_trig), .I2(acadc_rst), 
            .I3(n12_adj_1454), .O(n20562));   // zim_main.vhd(449[3] 524[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hccca;
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15341));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i6374_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1570));   // zim_main.vhd(531[4] 815[13])
    defparam i6374_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_1_i15_4_lut (.I0(n7_adj_1569), .I1(n8_adj_1570), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[1]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15340));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15339));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i4379_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8841), 
            .I3(VAC_MOSI), .O(n8_adj_1540));   // zim_main.vhd(531[4] 815[13])
    defparam i4379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_354_Mux_0_i15_4_lut (.I0(n7_adj_1539), .I1(n8_adj_1540), 
            .I2(comm_state[3]), .I3(n9342), .O(data_index_9__N_212[0]));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_354_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_211 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20438));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_20_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[18]), .I3(n19949), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_20_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_125_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10756), 
            .I3(n19810), .O(n7_adj_1559)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_212 (.I0(cmd_rdadctmp_adj_1700[8]), .I1(cmd_rdadctmp_adj_1700[7]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20798));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3763_3764_add_4_20 (.CI(n19949), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[18]), .CO(n19950));
    SB_LUT4 i4272_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n9342));   // zim_main.vhd(531[4] 815[13])
    defparam i4272_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_213 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21110));
    defparam i1_2_lut_adj_213.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_4_lut_adj_214 (.I0(adc_state[0]), .I1(IAC_SCLK), .I2(DTRIG_N_958), 
            .I3(adc_state[1]), .O(n20588));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_214.LUT_INIT = 16'hc4d8;
    SB_LUT4 i12_4_lut_adj_215 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20434));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 add_68_9_lut (.I0(VAC_MOSI), .I1(data_cntvec[7]), .I2(VAC_MOSI), 
            .I3(n19780), .O(n438)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n11891), .I3(adc_state_adj_1741[2]), .O(n20556));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'h0aca;
    SB_LUT4 i18603_4_lut (.I0(data_idxvec[14]), .I1(buf_data_vac[45]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21330));
    defparam i18603_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i12817_3_lut_4_lut (.I0(buf_dds0[13]), .I1(n9342), .I2(\comm_buf[0] [5]), 
            .I3(n12596), .O(n15338));   // zim_main.vhd(529[3] 816[10])
    defparam i12817_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i14639_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1661));   // zim_main.vhd(245[9:17])
    defparam i14639_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18602_4_lut (.I0(n23_adj_1661), .I1(req_data_cnt[14]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21329));
    defparam i18602_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_19_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[17]), .I3(n19948), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_19_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i19029_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21385));
    defparam i19029_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_129_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1647));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12816_3_lut_4_lut (.I0(buf_dds0[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9342), .I3(n12596), .O(n15337));   // zim_main.vhd(529[3] 816[10])
    defparam i12816_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12815_3_lut_4_lut (.I0(buf_dds0[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9342), .I3(n12596), .O(n15336));   // zim_main.vhd(529[3] 816[10])
    defparam i12815_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12814_3_lut_4_lut (.I0(buf_dds0[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9342), .I3(n12596), .O(n15335));   // zim_main.vhd(529[3] 816[10])
    defparam i12814_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_217 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11856), 
            .I3(adc_state_adj_1737[2]), .O(n20554));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_218 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20552));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_219 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(VAC_MOSI), .O(clk_RTD_N_756));
    defparam i1_2_lut_3_lut_adj_219.LUT_INIT = 16'h6a6a;
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15338));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15337));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15336));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_125_9 (.CI(n19810), .I0(data_index[7]), .I1(n10756), 
            .CO(n19811));
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15335));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15334));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12813_3_lut_4_lut (.I0(buf_dds0[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9342), .I3(n12596), .O(n15334));   // zim_main.vhd(529[3] 816[10])
    defparam i12813_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_125_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10756), 
            .I3(n19809), .O(n7_adj_1561)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3763_3764_add_4_19 (.CI(n19948), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[17]), .CO(n19949));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_18_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[16]), .I3(n19947), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_18_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_68_9 (.CI(n19780), .I0(data_cntvec[7]), .I1(VAC_MOSI), 
            .CO(n19781));
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n19_adj_1646), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22641));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22641_bdd_4_lut (.I0(n22641), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1645), 
            .I3(comm_cmd[2]), .O(n22644));
    defparam n22641_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(VAC_FLT0), .I2(buf_adcdata_iac[22]), 
            .I3(comm_cmd[1]), .O(n22635));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12812_3_lut_4_lut (.I0(buf_dds0[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9342), .I3(n12596), .O(n15333));   // zim_main.vhd(529[3] 816[10])
    defparam i12812_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n22635_bdd_4_lut (.I0(n22635), .I1(buf_dds1[14]), .I2(buf_dds0[14]), 
            .I3(comm_cmd[1]), .O(n21236));
    defparam n22635_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_220 (.I0(cmd_rdadctmp_adj_1700[23]), .I1(cmd_rdadctmp_adj_1700[22]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20600));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1641));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12811_3_lut_4_lut (.I0(buf_dds0[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9342), .I3(n12596), .O(n15332));   // zim_main.vhd(529[3] 816[10])
    defparam i12811_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_221 (.I0(cmd_rdadctmp_adj_1700[11]), .I1(cmd_rdadctmp_adj_1700[10]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20804));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_LUT4 acadc_dtrig_i_I_0_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(iac_raw_buf_N_776));   // zim_main.vhd(500[8:51])
    defparam acadc_dtrig_i_I_0_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12781_3_lut_4_lut (.I0(IAC_OSR0), .I1(\comm_buf[0] [0]), .I2(n9342), 
            .I3(n12610), .O(n15302));   // zim_main.vhd(529[3] 816[10])
    defparam i12781_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_222 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20428));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19857 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[6]), 
            .I2(buf_readRTD[14]), .I3(comm_cmd[1]), .O(n22629));
    defparam comm_cmd_0__bdd_4_lut_19857.LUT_INIT = 16'he4aa;
    SB_LUT4 n22629_bdd_4_lut (.I0(n22629), .I1(buf_adcdata_vdc[22]), .I2(buf_adcdata_vac[22]), 
            .I3(comm_cmd[1]), .O(n21237));
    defparam n22629_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19862 (.I0(comm_cmd[1]), .I1(n19_adj_1641), 
            .I2(buf_readRTD[3]), .I3(comm_cmd[2]), .O(n22623));
    defparam comm_cmd_1__bdd_4_lut_19862.LUT_INIT = 16'he4aa;
    SB_LUT4 n22623_bdd_4_lut (.I0(n22623), .I1(buf_adcdata_iac[11]), .I2(n16_adj_1640), 
            .I3(comm_cmd[2]), .O(n22626));
    defparam n22623_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13497_3_lut (.I0(n15092), .I1(bit_cnt_adj_1720[0]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n16018));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13497_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_4_lut_adj_223 (.I0(VAC_CS), .I1(adc_state_adj_1699[1]), .I2(DTRIG_N_958_adj_1493), 
            .I3(adc_state_adj_1699[0]), .O(n14_adj_1657));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_223.LUT_INIT = 16'h4554;
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15333));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15332));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19448_4_lut (.I0(VAC_DRDY), .I1(n14_adj_1657), .I2(n21050), 
            .I3(adc_state_adj_1699[0]), .O(n11_adj_1655));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19448_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 i14641_3_lut_4_lut (.I0(buf_control[0]), .I1(\comm_buf[0] [0]), 
            .I2(n9342), .I3(n12144), .O(n15300));
    defparam i14641_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_224 (.I0(cmd_rdadctmp_adj_1700[0]), .I1(VAC_MISO), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20702));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_225 (.I0(IAC_CS), .I1(adc_state[1]), .I2(DTRIG_N_958), 
            .I3(adc_state[0]), .O(n14_adj_1662));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_225.LUT_INIT = 16'h4554;
    SB_LUT4 i19451_4_lut (.I0(IAC_DRDY), .I1(n14_adj_1662), .I2(n21082), 
            .I3(adc_state[0]), .O(n11_adj_1660));   // adc_ads127.vhd(34[3] 89[10])
    defparam i19451_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19852 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22617));
    defparam comm_cmd_0__bdd_4_lut_19852.LUT_INIT = 16'he4aa;
    SB_LUT4 n22617_bdd_4_lut (.I0(n22617), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n22620));
    defparam n22617_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_226 (.I0(adc_state[1]), .I1(DTRIG_N_958), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21082));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_226.LUT_INIT = 16'h2222;
    SB_LUT4 mux_129_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1622));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18642_4_lut (.I0(n26_adj_1622), .I1(buf_data_vac[31]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21369));
    defparam i18642_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_18 (.CI(n19947), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[16]), .CO(n19948));
    SB_LUT4 i1_2_lut_3_lut_adj_227 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(VAC_MOSI), .O(n10804));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_3_lut_adj_227.LUT_INIT = 16'hfefe;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_17_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[15]), .I3(n19946), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_17_lut.LUT_INIT = 16'h8228;
    SB_LUT4 i12_4_lut_adj_228 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12771), 
            .I3(adc_state[0]), .O(n20698));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_228.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n11652), .I2(n14350), 
            .I3(comm_state[2]), .O(n22611));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_229 (.I0(cmd_rdadctmp_adj_1700[12]), .I1(cmd_rdadctmp_adj_1700[11]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20806));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_4_lut_adj_230 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[1]), .I3(n28), .O(n68));
    defparam i1_2_lut_4_lut_adj_230.LUT_INIT = 16'hfffe;
    SB_LUT4 i15247_2_lut_3_lut (.I0(eis_state[1]), .I1(acadc_dtrig_i), .I2(acadc_dtrig_v), 
            .I3(VAC_MOSI), .O(eis_state_2__N_392[1]));   // zim_main.vhd(500[5] 502[12])
    defparam i15247_2_lut_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 n22611_bdd_4_lut (.I0(n22611), .I1(n2_adj_1576), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n22614));
    defparam n22611_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_125_8 (.CI(n19809), .I0(data_index[6]), .I1(n10756), 
            .CO(n19810));
    SB_LUT4 i18641_3_lut (.I0(acadc_skipCount[7]), .I1(req_data_cnt[7]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n21368));
    defparam i18641_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3763_3764_add_4_17 (.CI(n19946), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[15]), .CO(n19947));
    SB_LUT4 i3_3_lut (.I0(comm_state[2]), .I1(comm_index[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n8_adj_1456));   // zim_main.vhd(529[3] 816[10])
    defparam i3_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i19378_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21456));
    defparam i19378_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19842 (.I0(comm_cmd[0]), .I1(IAC_FLT1), 
            .I2(buf_adcdata_iac[19]), .I3(comm_cmd[1]), .O(n22605));
    defparam comm_cmd_0__bdd_4_lut_19842.LUT_INIT = 16'he4aa;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_16_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[14]), .I3(n19945), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_16_lut.LUT_INIT = 16'h8228;
    SB_LUT4 add_125_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10756), 
            .I3(n19808), .O(n17703)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3763_3764_add_4_16 (.CI(n19945), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[14]), .CO(n19946));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_15_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[13]), .I3(n19944), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_15_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_15 (.CI(n19944), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[13]), .CO(n19945));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_14_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[12]), .I3(n19943), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_14_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_14 (.CI(n19943), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[12]), .CO(n19944));
    SB_LUT4 i12_4_lut_adj_231 (.I0(cmd_rdadctmp_adj_1700[20]), .I1(cmd_rdadctmp_adj_1700[19]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20824));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_CARRY add_125_7 (.CI(n19808), .I0(data_index[5]), .I1(n10756), 
            .CO(n19809));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_13_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[11]), .I3(n19942), .O(n146)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_13_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_13 (.CI(n19942), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[11]), .CO(n19943));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_12_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[10]), .I3(n19941), .O(n147)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_12_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_12 (.CI(n19941), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[10]), .CO(n19942));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_11_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[9]), .I3(n19940), .O(n148)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_11_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_11 (.CI(n19940), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[9]), .CO(n19941));
    SB_LUT4 add_125_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10756), 
            .I3(n19807), .O(n7_adj_1563)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_10_lut (.I0(n49), .I1(VAC_MOSI), 
            .I2(wdtick_cnt[8]), .I3(n19939), .O(n149)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_10_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_10 (.CI(n19939), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[8]), .CO(n19940));
    SB_CARRY add_125_6 (.CI(n19807), .I0(data_index[4]), .I1(n10756), 
            .CO(n19808));
    SB_LUT4 add_125_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10756), 
            .I3(n19806), .O(n7_adj_1565)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_232 (.I0(n12433), .I1(n7_adj_1458), .I2(comm_state[3]), 
            .I3(n8_adj_1456), .O(n12477));
    defparam i1_4_lut_adj_232.LUT_INIT = 16'ha8a0;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_9_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[7]), 
            .I3(n19938), .O(n150)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_9_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_9 (.CI(n19938), .I0(VAC_MOSI), .I1(wdtick_cnt[7]), 
            .CO(n19939));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_8_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[6]), 
            .I3(n19937), .O(n151)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_8_lut.LUT_INIT = 16'h8228;
    SB_CARRY add_125_5 (.CI(n19806), .I0(data_index[3]), .I1(n10756), 
            .CO(n19807));
    SB_CARRY wdtick_cnt_3763_3764_add_4_8 (.CI(n19937), .I0(VAC_MOSI), .I1(wdtick_cnt[6]), 
            .CO(n19938));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_7_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[5]), 
            .I3(n19936), .O(n152)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_7_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_7 (.CI(n19936), .I0(VAC_MOSI), .I1(wdtick_cnt[5]), 
            .CO(n19937));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_6_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[4]), 
            .I3(n19935), .O(n153)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_6_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_6 (.CI(n19935), .I0(VAC_MOSI), .I1(wdtick_cnt[4]), 
            .CO(n19936));
    SB_LUT4 add_125_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10756), 
            .I3(n19805), .O(n7_adj_1567)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_5_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[3]), 
            .I3(n19934), .O(n154)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_5_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_5 (.CI(n19934), .I0(VAC_MOSI), .I1(wdtick_cnt[3]), 
            .CO(n19935));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_4_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[2]), 
            .I3(n19933), .O(n155)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_4_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_4 (.CI(n19933), .I0(VAC_MOSI), .I1(wdtick_cnt[2]), 
            .CO(n19934));
    SB_LUT4 i12_4_lut_adj_233 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12477), .I3(comm_state[3]), .O(n20152));   // zim_main.vhd(529[3] 816[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_234 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20424));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_235 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20416));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_LUT4 i15361_2_lut (.I0(dds0_mclkcnt[6]), .I1(n20996), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n10_adj_1528));   // zim_main.vhd(440[4] 443[11])
    defparam i15361_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_236 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20412));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_CARRY add_125_4 (.CI(n19805), .I0(data_index[2]), .I1(n10756), 
            .CO(n19806));
    SB_LUT4 wdtick_cnt_3763_3764_add_4_3_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[1]), 
            .I3(n19932), .O(n156)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_3_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_3 (.CI(n19932), .I0(VAC_MOSI), .I1(wdtick_cnt[1]), 
            .CO(n19933));
    SB_LUT4 i12_4_lut_adj_237 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20408));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_128_Mux_0_i26_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1533));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_125_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10756), 
            .I3(n19804), .O(n7_adj_1569)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3763_3764_add_4_2_lut (.I0(n49), .I1(VAC_MOSI), .I2(wdtick_cnt[0]), 
            .I3(VCC_net), .O(n157)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3763_3764_add_4_2_lut.LUT_INIT = 16'h8228;
    SB_CARRY wdtick_cnt_3763_3764_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(wdtick_cnt[0]), .CO(n19932));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_9_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[7]), .I3(n19931), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_125_3 (.CI(n19804), .I0(data_index[1]), .I1(n10756), 
            .CO(n19805));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_8_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(n10_adj_1528), .I3(n19930), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_8 (.CI(n19930), .I0(VAC_MOSI), .I1(n10_adj_1528), 
            .CO(n19931));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_7_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[5]), .I3(n19929), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_7 (.CI(n19929), .I0(VAC_MOSI), .I1(dds0_mclkcnt[5]), 
            .CO(n19930));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_6_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[4]), .I3(n19928), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_6 (.CI(n19928), .I0(VAC_MOSI), .I1(dds0_mclkcnt[4]), 
            .CO(n19929));
    SB_LUT4 add_68_8_lut (.I0(VAC_MOSI), .I1(data_cntvec[6]), .I2(VAC_MOSI), 
            .I3(n19779), .O(n439)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_125_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10756), 
            .I3(VCC_net), .O(n7_adj_1539)) /* synthesis syn_instantiated=1 */ ;
    defparam add_125_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_5_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[3]), .I3(n19927), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_238 (.I0(cmd_rdadctmp_adj_1700[21]), .I1(cmd_rdadctmp_adj_1700[20]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20826));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_5 (.CI(n19927), .I0(VAC_MOSI), .I1(dds0_mclkcnt[3]), 
            .CO(n19928));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_4_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[2]), .I3(n19926), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_4 (.CI(n19926), .I0(VAC_MOSI), .I1(dds0_mclkcnt[2]), 
            .CO(n19927));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_3_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[1]), .I3(n19925), .O(n44_adj_1527)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_3 (.CI(n19925), .I0(VAC_MOSI), .I1(dds0_mclkcnt[1]), 
            .CO(n19926));
    SB_LUT4 dds0_mclkcnt_i7_3772_add_4_2_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3772_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3772_add_4_2 (.CI(VCC_net), .I0(VAC_MOSI), 
            .I1(dds0_mclkcnt[0]), .CO(n19925));
    SB_LUT4 n22605_bdd_4_lut (.I0(n22605), .I1(buf_dds1[11]), .I2(buf_dds0[11]), 
            .I3(comm_cmd[1]), .O(n22608));
    defparam n22605_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_67_4 (.CI(n19766), .I0(data_count[2]), .I1(VAC_MOSI), 
            .CO(n19767));
    SB_LUT4 i12_4_lut_adj_239 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20404));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'hca0a;
    SB_LUT4 i18519_4_lut (.I0(n26_adj_1533), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21246));
    defparam i18519_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_240 (.I0(cmd_rdadctmp_adj_1700[13]), .I1(cmd_rdadctmp_adj_1700[12]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20808));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_240.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_241 (.I0(n12433), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7), .O(n12107));
    defparam i1_4_lut_adj_241.LUT_INIT = 16'h8a88;
    SB_CARRY add_125_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10756), 
            .CO(n19804));
    SB_LUT4 i12205_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14716));   // zim_main.vhd(531[4] 815[13])
    defparam i12205_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n21368), .I2(n21369), 
            .I3(comm_cmd[3]), .O(n22599));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22599_bdd_4_lut (.I0(n22599), .I1(n21363), .I2(n21362), .I3(comm_cmd[3]), 
            .O(n22602));
    defparam n22599_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19833 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[7]), 
            .I2(buf_readRTD[15]), .I3(comm_cmd[1]), .O(n22593));
    defparam comm_cmd_0__bdd_4_lut_19833.LUT_INIT = 16'he4aa;
    SB_LUT4 n22593_bdd_4_lut (.I0(n22593), .I1(buf_adcdata_vdc[23]), .I2(buf_adcdata_vac[23]), 
            .I3(comm_cmd[1]), .O(n21240));
    defparam n22593_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_73_17_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[15]), .I2(VAC_MOSI), 
            .I3(n19803), .O(n481)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_242 (.I0(comm_cmd[0]), .I1(n14716), .I2(n12107), 
            .I3(comm_rx_buf[0]), .O(n20320));   // zim_main.vhd(529[3] 816[10])
    defparam i11_4_lut_adj_242.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_16_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[14]), .I2(VAC_MOSI), 
            .I3(n19802), .O(n482)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_243 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11576));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_adj_243.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_244 (.I0(cmd_rdadctmp_adj_1700[14]), .I1(cmd_rdadctmp_adj_1700[13]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20810));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_244.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_366_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_746));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_366_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16039));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20320));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_4_lut_adj_245 (.I0(n68), .I1(n10804), .I2(n12433), .I3(comm_state[3]), 
            .O(n12048));
    defparam i1_4_lut_adj_245.LUT_INIT = 16'hf531;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19828 (.I0(comm_cmd[2]), .I1(n22398), 
            .I2(n21246), .I3(comm_cmd[3]), .O(n22581));
    defparam comm_cmd_2__bdd_4_lut_19828.LUT_INIT = 16'he4aa;
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20152));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_73_16 (.CI(n19802), .I0(acadc_skipcnt[14]), .I1(VAC_MOSI), 
            .CO(n19803));
    SB_LUT4 add_73_15_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[13]), .I2(VAC_MOSI), 
            .I3(n19801), .O(n483)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_15 (.CI(n19801), .I0(acadc_skipcnt[13]), .I1(VAC_MOSI), 
            .CO(n19802));
    SB_LUT4 add_73_14_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[12]), .I2(VAC_MOSI), 
            .I3(n19800), .O(n484)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_8 (.CI(n19779), .I0(data_cntvec[6]), .I1(VAC_MOSI), 
            .CO(n19780));
    SB_LUT4 add_68_7_lut (.I0(VAC_MOSI), .I1(data_cntvec[5]), .I2(VAC_MOSI), 
            .I3(n19778), .O(n440)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_14 (.CI(n19800), .I0(acadc_skipcnt[12]), .I1(VAC_MOSI), 
            .CO(n19801));
    SB_CARRY add_68_7 (.CI(n19778), .I0(data_cntvec[5]), .I1(VAC_MOSI), 
            .CO(n19779));
    SB_LUT4 add_73_13_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[11]), .I2(VAC_MOSI), 
            .I3(n19799), .O(n485)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_6_lut (.I0(VAC_MOSI), .I1(data_cntvec[4]), .I2(VAC_MOSI), 
            .I3(n19777), .O(n441)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_13 (.CI(n19799), .I0(acadc_skipcnt[11]), .I1(VAC_MOSI), 
            .CO(n19800));
    SB_CARRY add_68_6 (.CI(n19777), .I0(data_cntvec[4]), .I1(VAC_MOSI), 
            .CO(n19778));
    SB_LUT4 add_68_5_lut (.I0(VAC_MOSI), .I1(data_cntvec[3]), .I2(VAC_MOSI), 
            .I3(n19776), .O(n442)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_5 (.CI(n19776), .I0(data_cntvec[3]), .I1(VAC_MOSI), 
            .CO(n19777));
    SB_LUT4 add_73_12_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[10]), .I2(VAC_MOSI), 
            .I3(n19798), .O(n486)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_67_5_lut (.I0(VAC_MOSI), .I1(data_count[3]), .I2(VAC_MOSI), 
            .I3(n19767), .O(n424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_4_lut (.I0(VAC_MOSI), .I1(data_cntvec[2]), .I2(VAC_MOSI), 
            .I3(n19775), .O(n443)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_12 (.CI(n19798), .I0(acadc_skipcnt[10]), .I1(VAC_MOSI), 
            .CO(n19799));
    SB_CARRY add_67_3 (.CI(n19765), .I0(data_count[1]), .I1(VAC_MOSI), 
            .CO(n19766));
    SB_LUT4 n22581_bdd_4_lut (.I0(n22581), .I1(n22578), .I2(n22392), .I3(comm_cmd[3]), 
            .O(n22584));
    defparam n22581_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_67_5 (.CI(n19767), .I0(data_count[3]), .I1(VAC_MOSI), 
            .CO(n19768));
    SB_CARRY add_68_4 (.CI(n19775), .I0(data_cntvec[2]), .I1(VAC_MOSI), 
            .CO(n19776));
    SB_LUT4 add_73_11_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[9]), .I2(VAC_MOSI), 
            .I3(n19797), .O(n487)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_11 (.CI(n19797), .I0(acadc_skipcnt[9]), .I1(VAC_MOSI), 
            .CO(n19798));
    SB_LUT4 add_68_3_lut (.I0(VAC_MOSI), .I1(data_cntvec[1]), .I2(VAC_MOSI), 
            .I3(n19774), .O(n444)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_246 (.I0(cmd_rdadctmp_adj_1700[10]), .I1(cmd_rdadctmp_adj_1700[9]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20802));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_3 (.CI(n19774), .I0(data_cntvec[1]), .I1(VAC_MOSI), 
            .CO(n19775));
    SB_LUT4 add_73_10_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[8]), .I2(VAC_MOSI), 
            .I3(n19796), .O(n488)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_10 (.CI(n19796), .I0(acadc_skipcnt[8]), .I1(VAC_MOSI), 
            .CO(n19797));
    SB_LUT4 add_67_2_lut (.I0(VAC_MOSI), .I1(data_count[0]), .I2(iac_raw_buf_N_776), 
            .I3(VAC_MOSI), .O(n427)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_9_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[7]), .I2(VAC_MOSI), 
            .I3(n19795), .O(n489)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_9 (.CI(n19795), .I0(acadc_skipcnt[7]), .I1(VAC_MOSI), 
            .CO(n19796));
    SB_LUT4 add_73_8_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[6]), .I2(VAC_MOSI), 
            .I3(n19794), .O(n490)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_8 (.CI(n19794), .I0(acadc_skipcnt[6]), .I1(VAC_MOSI), 
            .CO(n19795));
    SB_LUT4 add_126_17_lut (.I0(n14_adj_1544), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19827), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_126_16_lut (.I0(n14_adj_1571), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19826), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_73_7_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[5]), .I2(VAC_MOSI), 
            .I3(n19793), .O(n491)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_7 (.CI(n19793), .I0(acadc_skipcnt[5]), .I1(VAC_MOSI), 
            .CO(n19794));
    SB_LUT4 add_73_6_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[4]), .I2(VAC_MOSI), 
            .I3(n19792), .O(n492)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_2_lut (.I0(VAC_MOSI), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_776), 
            .I3(VAC_MOSI), .O(n445)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_2 (.CI(VAC_MOSI), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_776), 
            .CO(n19774));
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n12433), .O(n11600));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hcf8a;
    SB_LUT4 add_67_11_lut (.I0(VAC_MOSI), .I1(data_count[9]), .I2(VAC_MOSI), 
            .I3(n19773), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_247 (.I0(cmd_rdadctmp_adj_1700[9]), .I1(cmd_rdadctmp_adj_1700[8]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20800));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_248 (.I0(n16971), .I1(buf_dds1[0]), .I2(\comm_buf[1] [0]), 
            .I3(n12048), .O(n16039));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_248.LUT_INIT = 16'ha088;
    SB_CARRY add_126_16 (.CI(n19826), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19827));
    SB_CARRY add_73_6 (.CI(n19792), .I0(acadc_skipcnt[4]), .I1(VAC_MOSI), 
            .CO(n19793));
    SB_LUT4 add_67_10_lut (.I0(VAC_MOSI), .I1(data_count[8]), .I2(VAC_MOSI), 
            .I3(n19772), .O(n419)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_5_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[3]), .I2(VAC_MOSI), 
            .I3(n19791), .O(n493)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_15_lut (.I0(n14_adj_1578), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19825), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_15_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_15 (.CI(n19825), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19826));
    SB_CARRY add_73_5 (.CI(n19791), .I0(acadc_skipcnt[3]), .I1(VAC_MOSI), 
            .CO(n19792));
    SB_DFFNE acadc_trig_300 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20562));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i12_4_lut_adj_249 (.I0(cmd_rdadctmp_adj_1700[15]), .I1(cmd_rdadctmp_adj_1700[14]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20812));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_249.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1630));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_250 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n12433));
    defparam i1_2_lut_3_lut_adj_250.LUT_INIT = 16'hfdfd;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19823 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22575));
    defparam comm_cmd_0__bdd_4_lut_19823.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_251 (.I0(cmd_rdadctmp_adj_1700[16]), .I1(cmd_rdadctmp_adj_1700[15]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20814));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_251.LUT_INIT = 16'hca0a;
    SB_LUT4 n22575_bdd_4_lut (.I0(n22575), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n22578));
    defparam n22575_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_252 (.I0(n16971), .I1(buf_dds1[1]), .I2(\comm_buf[1] [1]), 
            .I3(n12048), .O(n16_adj_1545));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_252.LUT_INIT = 16'ha088;
    SB_LUT4 i12_4_lut_adj_253 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20400));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_253.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_254 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20396));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_254.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16_adj_1545));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15980));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19285_2_lut (.I0(data_idxvec[13]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21671));
    defparam i19285_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19847 (.I0(comm_cmd[1]), .I1(n21671), 
            .I2(n21672), .I3(comm_cmd[2]), .O(n22569));
    defparam comm_cmd_1__bdd_4_lut_19847.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_255 (.I0(cmd_rdadctmp_adj_1700[17]), .I1(cmd_rdadctmp_adj_1700[16]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20818));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_255.LUT_INIT = 16'hca0a;
    SB_LUT4 n22569_bdd_4_lut (.I0(n22569), .I1(n21702), .I2(n23_adj_1668), 
            .I3(comm_cmd[2]), .O(n22572));
    defparam n22569_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_256 (.I0(n20011), .I1(n9342), .I2(n12433), .I3(comm_state[3]), 
            .O(n11611));
    defparam i1_4_lut_adj_256.LUT_INIT = 16'hf531;
    SB_LUT4 i12_4_lut_adj_257 (.I0(cmd_rdadctmp_adj_1700[18]), .I1(cmd_rdadctmp_adj_1700[17]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20820));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 i12820_3_lut_4_lut (.I0(IAC_OSR1), .I1(\comm_buf[0] [1]), .I2(n9342), 
            .I3(n12610), .O(n15341));   // zim_main.vhd(529[3] 816[10])
    defparam i12820_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_258 (.I0(TEST_LED), .I1(n14899), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(TEST_LED_N_731));
    defparam i1_2_lut_adj_258.LUT_INIT = 16'h6666;
    SB_LUT4 i19_4_lut (.I0(trig_dds1), .I1(n68), .I2(comm_state[3]), .I3(n9342), 
            .O(n20150));
    defparam i19_4_lut.LUT_INIT = 16'h0ab0;
    SB_LUT4 i18533_3_lut (.I0(acadc_skipCount[0]), .I1(req_data_cnt[0]), 
            .I2(comm_cmd[1]), .I3(VAC_MOSI), .O(n21260));
    defparam i18533_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_259 (.I0(cmd_rdadctmp_adj_1700[19]), .I1(cmd_rdadctmp_adj_1700[18]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20822));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_129_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1620));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12780_3_lut (.I0(buf_dds0[0]), .I1(n14_adj_1541), .I2(n12596), 
            .I3(VAC_MOSI), .O(n15301));   // zim_main.vhd(529[3] 816[10])
    defparam i12780_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18635_3_lut (.I0(n16_adj_1620), .I1(buf_adcdata_iac[15]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21362));
    defparam i18635_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_4_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[2]), .I2(VAC_MOSI), 
            .I3(n19790), .O(n494)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_129_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1621));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_67_10 (.CI(n19772), .I0(data_count[8]), .I1(VAC_MOSI), 
            .CO(n19773));
    SB_LUT4 i18636_3_lut (.I0(n19_adj_1621), .I1(buf_readRTD[7]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n21363));
    defparam i18636_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_260 (.I0(cmd_rdadctmp_adj_1700[22]), .I1(cmd_rdadctmp_adj_1700[21]), 
            .I2(n12850), .I3(adc_state_adj_1699[0]), .O(n20696));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 i12783_3_lut (.I0(acadc_skipCount[0]), .I1(n14_adj_1541), .I2(n12654), 
            .I3(VAC_MOSI), .O(n15304));   // zim_main.vhd(529[3] 816[10])
    defparam i12783_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12784_3_lut (.I0(req_data_cnt[0]), .I1(n14_adj_1541), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15305));   // zim_main.vhd(529[3] 816[10])
    defparam i12784_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12785_3_lut (.I0(acadc_rst), .I1(\comm_buf[0] [2]), .I2(n10695), 
            .I3(VAC_MOSI), .O(n15306));   // zim_main.vhd(529[3] 816[10])
    defparam i12785_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_19814 (.I0(comm_cmd[2]), .I1(n21260), 
            .I2(n21261), .I3(comm_cmd[3]), .O(n22563));
    defparam comm_cmd_2__bdd_4_lut_19814.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_129_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1640));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12786_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10695), 
            .I3(VAC_MOSI), .O(n15307));   // zim_main.vhd(529[3] 816[10])
    defparam i12786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1645));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_126_14_lut (.I0(n14_adj_1572), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19824), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_14 (.CI(n19824), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19825));
    SB_LUT4 i2_4_lut_adj_261 (.I0(n8), .I1(comm_state[0]), .I2(n11570), 
            .I3(comm_state[3]), .O(n10695));
    defparam i2_4_lut_adj_261.LUT_INIT = 16'h0100;
    SB_LUT4 add_126_13_lut (.I0(n14_adj_1573), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19823), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_13_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_13 (.CI(n19823), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19824));
    SB_LUT4 mux_129_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1646));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22563_bdd_4_lut (.I0(n22563), .I1(n21258), .I2(n21257), .I3(comm_cmd[3]), 
            .O(n22566));
    defparam n22563_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_126_12_lut (.I0(n14_adj_1574), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19822), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_12_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_126_12 (.CI(n19822), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19823));
    SB_CARRY add_73_4 (.CI(n19790), .I0(acadc_skipcnt[2]), .I1(VAC_MOSI), 
            .CO(n19791));
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n22557));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22557_bdd_4_lut (.I0(n22557), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n22560));
    defparam n22557_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_0__bdd_4_lut_19794 (.I0(comm_index[0]), .I1(\comm_buf[2] [4]), 
            .I2(\comm_buf[3] [4]), .I3(comm_index[1]), .O(n22551));
    defparam comm_index_0__bdd_4_lut_19794.LUT_INIT = 16'he4aa;
    SB_LUT4 n22551_bdd_4_lut (.I0(n22551), .I1(\comm_buf[1] [4]), .I2(\comm_buf[0] [4]), 
            .I3(comm_index[1]), .O(n22554));
    defparam n22551_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19295_2_lut_3_lut (.I0(comm_index[1]), .I1(n21085), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21474));   // zim_main.vhd(531[4] 815[13])
    defparam i19295_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 comm_index_0__bdd_4_lut_19789 (.I0(comm_index[0]), .I1(\comm_buf[2] [6]), 
            .I2(\comm_buf[3] [6]), .I3(comm_index[1]), .O(n22545));
    defparam comm_index_0__bdd_4_lut_19789.LUT_INIT = 16'he4aa;
    SB_LUT4 n22545_bdd_4_lut (.I0(n22545), .I1(\comm_buf[1] [6]), .I2(\comm_buf[0] [6]), 
            .I3(comm_index[1]), .O(n22548));
    defparam n22545_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_262 (.I0(comm_index[1]), .I1(n21085), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n19188));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_3_lut_adj_262.LUT_INIT = 16'h4040;
    SB_LUT4 i15273_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17773));
    defparam i15273_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_index_0__bdd_4_lut_19784 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22539));
    defparam comm_index_0__bdd_4_lut_19784.LUT_INIT = 16'he4aa;
    SB_LUT4 i12787_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n10695), 
            .I3(VAC_MOSI), .O(n15308));   // zim_main.vhd(529[3] 816[10])
    defparam i12787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22539_bdd_4_lut (.I0(n22539), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22542));
    defparam n22539_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_0__bdd_4_lut_19779 (.I0(comm_index[0]), .I1(\comm_buf[2] [0]), 
            .I2(\comm_buf[3] [0]), .I3(comm_index[1]), .O(n22533));
    defparam comm_index_0__bdd_4_lut_19779.LUT_INIT = 16'he4aa;
    SB_LUT4 i15221_2_lut_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(CONT_SD));   // zim_main.vhd(376[13:59])
    defparam i15221_2_lut_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut_4_lut_adj_263 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(n11652), .O(n12082));
    defparam i1_3_lut_4_lut_adj_263.LUT_INIT = 16'hcfdf;
    SB_LUT4 i1_4_lut_adj_264 (.I0(adc_state[1]), .I1(acadc_dtrig_i), .I2(DTRIG_N_958), 
            .I3(adc_state[0]), .O(n20586));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_264.LUT_INIT = 16'hcce8;
    SB_LUT4 i19129_3_lut_4_lut (.I0(comm_index[2]), .I1(n21085), .I2(comm_index[0]), 
            .I3(comm_index[1]), .O(n21477));
    defparam i19129_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 n22533_bdd_4_lut (.I0(n22533), .I1(\comm_buf[1] [0]), .I2(\comm_buf[0] [0]), 
            .I3(comm_index[1]), .O(n22536));
    defparam n22533_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15465_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1546));   // zim_main.vhd(531[4] 815[13])
    defparam i15465_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15977));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_4_lut_adj_265 (.I0(adc_state_adj_1699[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_958_adj_1493), .I3(adc_state_adj_1699[0]), .O(n20590));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_265.LUT_INIT = 16'hcce8;
    SB_LUT4 i2_3_lut_adj_266 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n66));
    defparam i2_3_lut_adj_266.LUT_INIT = 16'hfefe;
    SB_LUT4 i19137_3_lut_4_lut (.I0(comm_index[2]), .I1(n21085), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21497));
    defparam i19137_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i2_3_lut_adj_267 (.I0(n66), .I1(n11652), .I2(comm_cmd[0]), 
            .I3(VAC_MOSI), .O(n20011));
    defparam i2_3_lut_adj_267.LUT_INIT = 16'hfefe;
    SB_LUT4 i19459_2_lut_3_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(VAC_MOSI), .O(n21226));
    defparam i19459_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15975));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19465_3_lut_4_lut (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(eis_state[0]), .O(n11989));
    defparam i19465_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15972));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15970));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12796_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(VAC_MOSI), .O(n15317));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12796_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15967));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i15228_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n17728));
    defparam i15228_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15964));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_3_lut_adj_268 (.I0(n20011), .I1(comm_state[3]), .I2(n9342), 
            .I3(VAC_MOSI), .O(n12596));
    defparam i1_3_lut_adj_268.LUT_INIT = 16'hc4c4;
    SB_LUT4 i2_3_lut_adj_269 (.I0(n21041), .I1(n17728), .I2(eis_state[1]), 
            .I3(VAC_MOSI), .O(n21042));
    defparam i2_3_lut_adj_269.LUT_INIT = 16'h2020;
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15961));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15955));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15952));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i3_4_lut_4_lut (.I0(acadc_rst), .I1(n21053), .I2(eis_state[0]), 
            .I3(iac_raw_buf_N_776), .O(iac_raw_buf_N_774));   // zim_main.vhd(349[18:31])
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h4000;
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15948));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15946));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15943));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20236));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n11933), 
            .D(n430), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20340));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i2_4_lut_4_lut_adj_270 (.I0(acadc_rst), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(eis_state[0]), .O(n11933));   // zim_main.vhd(349[18:31])
    defparam i2_4_lut_4_lut_adj_270.LUT_INIT = 16'h0501;
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n11933), 
            .D(n431), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i12798_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1723[15]), .I2(dds_state_adj_1722[1]), 
            .I3(VAC_MOSI), .O(n15319));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12798_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20342));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n11933), 
            .D(n432), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n11933), 
            .D(n433), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n11933), 
            .D(n434), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20344));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20354));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n11933), 
            .D(n435), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20356));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n11933), 
            .D(n436), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20358));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12797_4_lut_4_lut (.I0(acadc_rst), .I1(n21030), .I2(eis_state[2]), 
            .I3(eis_end), .O(n15318));   // zim_main.vhd(349[18:31])
    defparam i12797_4_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n11933), 
            .D(n437), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 mux_128_Mux_2_i23_3_lut (.I0(SELIRNG0), .I1(acadc_skipCount[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1685));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n11933), 
            .D(n438), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 mux_128_Mux_2_i24_3_lut (.I0(req_data_cnt[10]), .I1(acadc_rst), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n24_adj_1686));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20360));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n11933), 
            .D(n439), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n11933), 
            .D(n440), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n11933), 
            .D(n441), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i19106_2_lut (.I0(buf_data_vac[37]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21460));
    defparam i19106_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n11933), 
            .D(n442), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20168));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 mux_128_Mux_2_i26_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1687));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n11933), 
            .D(n443), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n11933), 
            .D(n444), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20170));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20172));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_state_3__I_0_342_Mux_3_i7_4_lut_4_lut (.I0(comm_state[0]), 
            .I1(comm_state[1]), .I2(comm_state[2]), .I3(n21586), .O(n18070));   // zim_main.vhd(531[4] 815[13])
    defparam comm_state_3__I_0_342_Mux_3_i7_4_lut_4_lut.LUT_INIT = 16'hfe3e;
    SB_LUT4 i1_4_lut_adj_271 (.I0(n5_adj_1536), .I1(comm_state[3]), .I2(n9342), 
            .I3(n11652), .O(n12144));
    defparam i1_4_lut_adj_271.LUT_INIT = 16'hc0c8;
    SB_LUT4 i2_2_lut_3_lut_adj_272 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[3]), .I3(VAC_MOSI), .O(n11590));   // zim_main.vhd(531[4] 815[13])
    defparam i2_2_lut_3_lut_adj_272.LUT_INIT = 16'hefef;
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20156));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 acadc_rst_I_0_1_lut (.I0(acadc_rst), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(AC_ADC_SYNC));   // zim_main.vhd(349[18:31])
    defparam acadc_rst_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20136));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20174));   // zim_main.vhd(529[3] 816[10])
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20154));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i5_4_lut_adj_273 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1663));   // zim_main.vhd(440[7:27])
    defparam i5_4_lut_adj_273.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_274 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1663), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n20996));   // zim_main.vhd(440[7:27])
    defparam i6_4_lut_adj_274.LUT_INIT = 16'hfffe;
    SB_LUT4 i24_4_lut (.I0(n17728), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n11));
    defparam i24_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_128_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1671));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19423_3_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n11), 
            .I3(VAC_MOSI), .O(n11908));
    defparam i19423_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 mux_128_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1672));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12805_3_lut (.I0(buf_dds0[1]), .I1(n14_adj_1549), .I2(n12596), 
            .I3(VAC_MOSI), .O(n15326));   // zim_main.vhd(529[3] 816[10])
    defparam i12805_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12806_3_lut (.I0(buf_dds0[2]), .I1(n14_adj_1548), .I2(n12596), 
            .I3(VAC_MOSI), .O(n15327));   // zim_main.vhd(529[3] 816[10])
    defparam i12806_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19442_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(n26_adj_1595), .I3(VAC_MOSI), .O(n18_adj_1615));   // zim_main.vhd(531[4] 815[13])
    defparam i19442_2_lut_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i12807_3_lut (.I0(buf_dds0[3]), .I1(n14_adj_1547), .I2(n12596), 
            .I3(VAC_MOSI), .O(n15328));   // zim_main.vhd(529[3] 816[10])
    defparam i12807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_275 (.I0(n49), .I1(wdtick_flag), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(wdtick_flag_N_341));   // zim_main.vhd(405[8:31])
    defparam i1_2_lut_adj_275.LUT_INIT = 16'hdddd;
    SB_LUT4 i15285_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(VAC_MOSI), .O(comm_clear_N_748));   // zim_main.vhd(531[4] 815[13])
    defparam i15285_2_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_LUT4 i1_4_lut_adj_276 (.I0(n9), .I1(comm_state[3]), .I2(n9342), 
            .I3(n21122), .O(n12610));
    defparam i1_4_lut_adj_276.LUT_INIT = 16'hc0c4;
    SB_LUT4 add_67_9_lut (.I0(VAC_MOSI), .I1(data_count[7]), .I2(VAC_MOSI), 
            .I3(n19771), .O(n420)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_67_4_lut (.I0(VAC_MOSI), .I1(data_count[2]), .I2(VAC_MOSI), 
            .I3(n19766), .O(n425)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_277 (.I0(n12433), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n21187), .O(n11605));
    defparam i1_4_lut_adj_277.LUT_INIT = 16'h888a;
    SB_LUT4 i11264_3_lut (.I0(n22584), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13783));   // zim_main.vhd(531[4] 815[13])
    defparam i11264_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11268_3_lut (.I0(n22566), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13787));   // zim_main.vhd(531[4] 815[13])
    defparam i11268_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1534));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_0_i22_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1534), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1532));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_0_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_0_i30_3_lut (.I0(n22_adj_1532), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1531));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11272_3_lut (.I0(n30_adj_1531), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13791));   // zim_main.vhd(531[4] 815[13])
    defparam i11272_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1674));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_126_11_lut (.I0(n14_adj_1575), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19821), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_128_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1673));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11284_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13803));   // zim_main.vhd(531[4] 815[13])
    defparam i11284_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_3_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[1]), .I2(VAC_MOSI), 
            .I3(n19789), .O(n495)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_137_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1457));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_67_9 (.CI(n19771), .I0(data_count[7]), .I1(VAC_MOSI), 
            .CO(n19772));
    SB_LUT4 i18546_4_lut (.I0(n4_adj_1457), .I1(\comm_buf[6] [0]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21273));
    defparam i18546_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18547_3_lut (.I0(n22536), .I1(n21273), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21274));
    defparam i18547_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1633));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_129_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1634));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15331));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_73_3 (.CI(n19789), .I0(acadc_skipcnt[1]), .I1(VAC_MOSI), 
            .CO(n19790));
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15330));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_3_lut_adj_278 (.I0(comm_state[0]), .I1(comm_cmd[3]), .I2(n16818), 
            .I3(VAC_MOSI), .O(n21122));   // zim_main.vhd(531[4] 815[13])
    defparam i1_3_lut_adj_278.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_279 (.I0(n10902), .I1(comm_state[3]), .I2(n9342), 
            .I3(n21122), .O(n12624));
    defparam i1_4_lut_adj_279.LUT_INIT = 16'hc0c4;
    SB_LUT4 i17189_1_lut (.I0(clk_cnt[0]), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n15));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17189_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12834_3_lut (.I0(acadc_skipCount[1]), .I1(n14_adj_1549), .I2(n12654), 
            .I3(VAC_MOSI), .O(n15355));   // zim_main.vhd(529[3] 816[10])
    defparam i12834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12835_3_lut (.I0(acadc_skipCount[2]), .I1(n14_adj_1548), .I2(n12654), 
            .I3(VAC_MOSI), .O(n15356));   // zim_main.vhd(529[3] 816[10])
    defparam i12835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19804 (.I0(comm_cmd[1]), .I1(n19_adj_1625), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n22527));
    defparam comm_cmd_1__bdd_4_lut_19804.LUT_INIT = 16'he4aa;
    SB_LUT4 i12836_3_lut (.I0(acadc_skipCount[3]), .I1(n14_adj_1547), .I2(n12654), 
            .I3(VAC_MOSI), .O(n15357));   // zim_main.vhd(529[3] 816[10])
    defparam i12836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12837_3_lut (.I0(acadc_skipCount[4]), .I1(n14_adj_1546), .I2(n12654), 
            .I3(VAC_MOSI), .O(n15358));   // zim_main.vhd(529[3] 816[10])
    defparam i12837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_3_lut_4_lut_adj_280 (.I0(n9342), .I1(comm_state[3]), .I2(n11611), 
            .I3(trig_dds0), .O(n20230));
    defparam i11_3_lut_4_lut_adj_280.LUT_INIT = 16'h4f40;
    SB_LUT4 mux_128_Mux_2_i16_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1681));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_2_i17_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1682));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_2_i20_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1684));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_126_11 (.CI(n19821), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19822));
    SB_LUT4 mux_128_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1683));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_281 (.I0(comm_index[1]), .I1(n21085), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n19193));   // zim_main.vhd(531[4] 815[13])
    defparam i1_2_lut_3_lut_adj_281.LUT_INIT = 16'h0808;
    SB_LUT4 n22527_bdd_4_lut (.I0(n22527), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1624), 
            .I3(comm_cmd[2]), .O(n22530));
    defparam n22527_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_282 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13212), 
            .I3(n1_adj_1592), .O(n20392));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_282.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_283 (.I0(n7_adj_1650), .I1(n12), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n10756));   // zim_main.vhd(531[4] 815[13])
    defparam i3_4_lut_adj_283.LUT_INIT = 16'hffef;
    SB_LUT4 i2_2_lut_3_lut_adj_284 (.I0(comm_index[1]), .I1(n21085), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n7_adj_1458));   // zim_main.vhd(531[4] 815[13])
    defparam i2_2_lut_3_lut_adj_284.LUT_INIT = 16'h8080;
    SB_LUT4 mux_137_Mux_2_i1_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n1));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_2_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_137_Mux_2_i2_3_lut (.I0(\comm_buf[2] [2]), .I1(\comm_buf[3] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n2_adj_1584));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_2_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15466_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1547));   // zim_main.vhd(531[4] 815[13])
    defparam i15466_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19431_2_lut (.I0(n11989), .I1(eis_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14915));
    defparam i19431_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15467_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1548));   // zim_main.vhd(531[4] 815[13])
    defparam i15467_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_285 (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n26_adj_1595));
    defparam i1_4_lut_adj_285.LUT_INIT = 16'h2338;
    SB_LUT4 i15468_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1549));   // zim_main.vhd(531[4] 815[13])
    defparam i15468_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i22_4_lut (.I0(comm_data_vld), .I1(n5_adj_1524), .I2(comm_state[2]), 
            .I3(comm_state[0]), .O(n8_adj_1689));   // zim_main.vhd(531[4] 815[13])
    defparam i22_4_lut.LUT_INIT = 16'hc0fa;
    SB_LUT4 i19360_4_lut (.I0(n16818), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[0]), .O(n21714));   // zim_main.vhd(531[4] 815[13])
    defparam i19360_4_lut.LUT_INIT = 16'h0c44;
    SB_LUT4 i21_4_lut (.I0(n21714), .I1(n8_adj_1689), .I2(comm_state[1]), 
            .I3(ICE_SPI_CE0), .O(n20314));   // zim_main.vhd(531[4] 815[13])
    defparam i21_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_4_lut_adj_286 (.I0(eis_state[0]), .I1(eis_state[2]), 
            .I2(eis_state[1]), .I3(n21042), .O(n21030));   // zim_main.vhd(452[4] 523[13])
    defparam i1_4_lut_4_lut_adj_286.LUT_INIT = 16'hdf13;
    SB_LUT4 i1_2_lut_4_lut_4_lut (.I0(eis_state[0]), .I1(n30), .I2(eis_stop), 
            .I3(n29), .O(n21041));   // zim_main.vhd(452[4] 523[13])
    defparam i1_2_lut_4_lut_4_lut.LUT_INIT = 16'h5051;
    SB_LUT4 i1_4_lut_adj_287 (.I0(n12433), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9269), .O(n16821));   // zim_main.vhd(243[9:19])
    defparam i1_4_lut_adj_287.LUT_INIT = 16'ha2a0;
    SB_LUT4 i1_3_lut_adj_288 (.I0(n12433), .I1(comm_state[3]), .I2(n10_adj_1619), 
            .I3(VAC_MOSI), .O(n12079));
    defparam i1_3_lut_adj_288.LUT_INIT = 16'ha8a8;
    SB_LUT4 i3894_3_lut (.I0(comm_index[2]), .I1(comm_index[1]), .I2(n6401), 
            .I3(VAC_MOSI), .O(comm_index_2__N_487[2]));   // zim_main.vhd(712[5] 722[12])
    defparam i3894_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i1_4_lut_adj_289 (.I0(n12433), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11576), .O(n12148));
    defparam i1_4_lut_adj_289.LUT_INIT = 16'ha0a8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(VAC_MOSI), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(THERMOSTAT_N_510));   // zim_main.vhd(558[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19770 (.I0(comm_cmd[1]), .I1(n21556), 
            .I2(n21557), .I3(comm_cmd[2]), .O(n22521));
    defparam comm_cmd_1__bdd_4_lut_19770.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_128_Mux_1_i26_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1694));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18633_4_lut (.I0(n26_adj_1694), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21360));
    defparam i18633_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18634_3_lut (.I0(n22620), .I1(n21360), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n21361));
    defparam i18634_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1563432_i1_3_lut (.I0(n22410), .I1(n21361), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1695));
    defparam i1563432_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11791_3_lut (.I0(n30_adj_1695), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14312));   // zim_main.vhd(531[4] 815[13])
    defparam i11791_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eis_state_1__bdd_4_lut_19731_4_lut (.I0(eis_state[0]), .I1(eis_state[2]), 
            .I2(eis_state_2__N_392[1]), .I3(eis_state[1]), .O(n22437));   // zim_main.vhd(452[4] 523[13])
    defparam eis_state_1__bdd_4_lut_19731_4_lut.LUT_INIT = 16'h77c0;
    SB_LUT4 n22521_bdd_4_lut (.I0(n22521), .I1(n21703), .I2(n23_adj_1675), 
            .I3(comm_cmd[2]), .O(n22524));
    defparam n22521_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1564035_i1_3_lut (.I0(n22488), .I1(n22458), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1688));
    defparam i1564035_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_2_lut (.I0(VAC_MOSI), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_776), 
            .I3(VAC_MOSI), .O(n496)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11787_3_lut (.I0(n30_adj_1688), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14308));   // zim_main.vhd(531[4] 815[13])
    defparam i11787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18607_3_lut (.I0(n22608), .I1(n22476), .I2(comm_cmd[2]), 
            .I3(VAC_MOSI), .O(n21334));
    defparam i18607_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1564638_i1_3_lut (.I0(n21334), .I1(n22512), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1679));
    defparam i1564638_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11783_3_lut (.I0(n30_adj_1679), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14304));   // zim_main.vhd(531[4] 815[13])
    defparam i11783_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1565241_i1_3_lut (.I0(n22464), .I1(n22524), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1676));
    defparam i1565241_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11779_3_lut (.I0(n30_adj_1676), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14300));   // zim_main.vhd(531[4] 815[13])
    defparam i11779_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1565844_i1_3_lut (.I0(n22416), .I1(n22572), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1669));
    defparam i1565844_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11775_3_lut (.I0(n30_adj_1669), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14296));   // zim_main.vhd(531[4] 815[13])
    defparam i11775_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18442_2_lut (.I0(n16818), .I1(comm_state[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n11652));
    defparam i18442_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19154_2_lut (.I0(\comm_buf[6] [2]), .I1(comm_index[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21528));
    defparam i19154_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n22479_bdd_4_lut_4_lut (.I0(eis_state[0]), .I1(eis_state[2]), 
            .I2(n2), .I3(n22479), .O(eis_state_2__N_167[0]));   // zim_main.vhd(452[4] 523[13])
    defparam n22479_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19765 (.I0(comm_cmd[1]), .I1(n26_adj_1626), 
            .I2(n21547), .I3(comm_cmd[2]), .O(n22515));
    defparam comm_cmd_1__bdd_4_lut_19765.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_137_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1585));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11771_3_lut (.I0(n22380), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14292));   // zim_main.vhd(531[4] 815[13])
    defparam i11771_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12442_2_lut (.I0(n12184), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14958));   // zim_main.vhd(529[3] 816[10])
    defparam i12442_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12810_3_lut_4_lut (.I0(buf_dds0[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9342), .I3(n12596), .O(n15331));   // zim_main.vhd(529[3] 816[10])
    defparam i12810_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19_4_lut_adj_290 (.I0(n11652), .I1(n21474), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n12_adj_1596));
    defparam i19_4_lut_adj_290.LUT_INIT = 16'h05c5;
    SB_LUT4 i1_3_lut_adj_291 (.I0(n12_adj_1596), .I1(n21043), .I2(n21110), 
            .I3(VAC_MOSI), .O(n12184));
    defparam i1_3_lut_adj_291.LUT_INIT = 16'hc8c8;
    SB_CARRY add_73_2 (.CI(VAC_MOSI), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_776), 
            .CO(n19789));
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(n21110), 
            .I3(n6541), .O(n21139));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i11767_3_lut (.I0(n22404), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14288));   // zim_main.vhd(531[4] 815[13])
    defparam i11767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_adj_292 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(comm_cmd[1]), 
            .I3(VAC_MOSI), .O(n69));
    defparam i2_3_lut_adj_292.LUT_INIT = 16'h0404;
    SB_LUT4 i1567653_i1_3_lut (.I0(n22434), .I1(n22500), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1654));
    defparam i1567653_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11763_3_lut (.I0(n30_adj_1654), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14284));   // zim_main.vhd(531[4] 815[13])
    defparam i11763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1568256_i1_3_lut (.I0(n22644), .I1(n22386), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1648));
    defparam i1568256_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11759_3_lut (.I0(n30_adj_1648), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14280));   // zim_main.vhd(531[4] 815[13])
    defparam i11759_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1568859_i1_3_lut (.I0(n22626), .I1(n22428), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1643));
    defparam i1568859_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_293 (.I0(n69), .I1(comm_state[3]), .I2(n9342), 
            .I3(n28), .O(n12654));
    defparam i1_4_lut_adj_293.LUT_INIT = 16'hc0c8;
    SB_LUT4 i11755_3_lut (.I0(n30_adj_1643), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14276));   // zim_main.vhd(531[4] 815[13])
    defparam i11755_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1569462_i1_3_lut (.I0(n22470), .I1(n22446), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1636));
    defparam i1569462_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11751_3_lut (.I0(n30_adj_1636), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14272));   // zim_main.vhd(531[4] 815[13])
    defparam i11751_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1570065_i1_3_lut (.I0(n22368), .I1(n22452), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1631));
    defparam i1570065_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11747_3_lut (.I0(n30_adj_1631), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14268));   // zim_main.vhd(531[4] 815[13])
    defparam i11747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1570668_i1_3_lut (.I0(n22530), .I1(n22518), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n30_adj_1627));
    defparam i1570668_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11743_3_lut (.I0(n30_adj_1627), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14264));   // zim_main.vhd(531[4] 815[13])
    defparam i11743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12449_2_lut (.I0(n12260), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14965));   // zim_main.vhd(529[3] 816[10])
    defparam i12449_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i15538_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(VAC_MOSI), .O(n14_adj_1541));   // zim_main.vhd(531[4] 815[13])
    defparam i15538_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i48_4_lut (.I0(n21479), .I1(n21477), .I2(comm_state[1]), .I3(n11652), 
            .O(n44));
    defparam i48_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_3_lut_adj_294 (.I0(n44), .I1(n21043), .I2(n21110), .I3(VAC_MOSI), 
            .O(n12260));
    defparam i1_3_lut_adj_294.LUT_INIT = 16'hc8c8;
    SB_LUT4 mux_130_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1616));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1616), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1617));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15_4_lut_adj_295 (.I0(n10756), .I1(n8841), .I2(comm_state[3]), 
            .I3(n9342), .O(n12493));
    defparam i15_4_lut_adj_295.LUT_INIT = 16'hf535;
    SB_LUT4 mux_130_Mux_1_i30_3_lut (.I0(n22_adj_1617), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1618));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11735_3_lut (.I0(n30_adj_1618), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14256));   // zim_main.vhd(531[4] 815[13])
    defparam i11735_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1659));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1612));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1612), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1613));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_2_i30_3_lut (.I0(n22_adj_1613), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1614));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11731_3_lut (.I0(n30_adj_1614), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14252));   // zim_main.vhd(531[4] 815[13])
    defparam i11731_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1609));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1609), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1610));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_3_i30_3_lut (.I0(n22_adj_1610), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1611));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11727_3_lut (.I0(n30_adj_1611), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14248));   // zim_main.vhd(531[4] 815[13])
    defparam i11727_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19145_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21512));
    defparam i19145_2_lut.LUT_INIT = 16'h2222;
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15329));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 add_126_10_lut (.I0(n14_adj_1550), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19820), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_129_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n26_adj_1653));   // zim_main.vhd(584[5] 688[14])
    defparam mux_129_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1606));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1606), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1607));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_4_i30_3_lut (.I0(n22_adj_1607), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1608));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11723_3_lut (.I0(n30_adj_1608), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14244));   // zim_main.vhd(531[4] 815[13])
    defparam i11723_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1603));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1603), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1604));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_5_i30_3_lut (.I0(n22_adj_1604), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1605));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11719_3_lut (.I0(n30_adj_1605), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14240));   // zim_main.vhd(531[4] 815[13])
    defparam i11719_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1600));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1600), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1601));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_6_i30_3_lut (.I0(n22_adj_1601), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1602));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11715_3_lut (.I0(n30_adj_1602), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14236));   // zim_main.vhd(531[4] 815[13])
    defparam i11715_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12809_3_lut_4_lut (.I0(buf_dds0[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9342), .I3(n12596), .O(n15330));   // zim_main.vhd(529[3] 816[10])
    defparam i12809_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12456_2_lut (.I0(n12314), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14972));   // zim_main.vhd(529[3] 816[10])
    defparam i12456_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i41_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[0]), .O(n24_adj_1639));
    defparam i41_4_lut.LUT_INIT = 16'h1290;
    SB_LUT4 i39_4_lut (.I0(n24_adj_1639), .I1(n21497), .I2(comm_state[1]), 
            .I3(n11652), .O(n34_adj_1649));
    defparam i39_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_3_lut_adj_296 (.I0(n34_adj_1649), .I1(n21043), .I2(n21110), 
            .I3(VAC_MOSI), .O(n12314));
    defparam i1_3_lut_adj_296.LUT_INIT = 16'hc8c8;
    SB_LUT4 i18597_4_lut (.I0(n26_adj_1659), .I1(buf_data_vac[47]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21324));
    defparam i18597_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13427_4_lut_4_lut (.I0(n12048), .I1(comm_state[3]), .I2(n14_adj_1578), 
            .I3(buf_dds1[13]), .O(n15948));   // zim_main.vhd(529[3] 816[10])
    defparam i13427_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 n22515_bdd_4_lut (.I0(n22515), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22518));
    defparam n22515_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13451_4_lut_4_lut (.I0(n12048), .I1(comm_state[3]), .I2(n14_adj_1579), 
            .I3(buf_dds1[5]), .O(n15972));   // zim_main.vhd(529[3] 816[10])
    defparam i13451_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12849_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1549), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15370));   // zim_main.vhd(529[3] 816[10])
    defparam i12849_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1597));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1597), 
            .I2(comm_cmd[2]), .I3(VAC_MOSI), .O(n22_adj_1598));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_130_Mux_7_i30_3_lut (.I0(n22_adj_1598), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(VAC_MOSI), .O(n30_adj_1599));   // zim_main.vhd(584[5] 688[14])
    defparam mux_130_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11711_3_lut (.I0(n30_adj_1599), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14232));   // zim_main.vhd(531[4] 815[13])
    defparam i11711_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_297 (.I0(comm_length[2]), .I1(comm_index[0]), .I2(comm_index[2]), 
            .I3(comm_length[0]), .O(n4_adj_1623));   // zim_main.vhd(731[9:33])
    defparam i1_4_lut_adj_297.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_3_lut_adj_298 (.I0(comm_index[1]), .I1(n4_adj_1623), .I2(comm_length[1]), 
            .I3(VAC_MOSI), .O(n5_adj_1524));   // zim_main.vhd(731[9:33])
    defparam i2_3_lut_adj_298.LUT_INIT = 16'hdede;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19760 (.I0(comm_cmd[1]), .I1(n26_adj_1678), 
            .I2(n21543), .I3(comm_cmd[2]), .O(n22509));
    defparam comm_cmd_1__bdd_4_lut_19760.LUT_INIT = 16'he4aa;
    SB_LUT4 n22509_bdd_4_lut (.I0(n22509), .I1(n21705), .I2(n23_adj_1677), 
            .I3(comm_cmd[2]), .O(n22512));
    defparam n22509_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13456_4_lut_4_lut (.I0(n12048), .I1(comm_state[3]), .I2(n14_adj_1547), 
            .I3(buf_dds1[3]), .O(n15977));   // zim_main.vhd(529[3] 816[10])
    defparam i13456_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 mux_128_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n23_adj_1658));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12541), 
            .D(n21277), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12541), 
            .D(n21283), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12541), 
            .D(n21271), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12541), 
            .D(n21286), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12541), 
            .D(n21289), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12541), 
            .D(n22494), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12541), 
            .D(n22422), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12431), 
            .D(n14148), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i11707_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14228));   // zim_main.vhd(531[4] 815[13])
    defparam i11707_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15288_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n3));   // zim_main.vhd(531[4] 815[13])
    defparam i15288_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i11703_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14224));   // zim_main.vhd(531[4] 815[13])
    defparam i11703_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11699_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14220));   // zim_main.vhd(531[4] 815[13])
    defparam i11699_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11695_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14216));   // zim_main.vhd(531[4] 815[13])
    defparam i11695_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_67_6 (.CI(n19768), .I0(data_count[4]), .I1(VAC_MOSI), 
            .CO(n19769));
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12431), 
            .D(n14152), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12431), 
            .D(n14156), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12431), 
            .D(n14160), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12431), 
            .D(n14164), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12431), 
            .D(n14168), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12431), 
            .D(n14172), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12407), 
            .D(n14176), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19138_2_lut_4_lut (.I0(n29), .I1(eis_stop), .I2(n30), .I3(eis_state[0]), 
            .O(n21501));   // zim_main.vhd(507[9:53])
    defparam i19138_2_lut_4_lut.LUT_INIT = 16'hffcd;
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12407), 
            .D(n14180), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12407), 
            .D(n14184), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12407), 
            .D(n14188), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12407), 
            .D(n14192), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12407), 
            .D(n14196), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12407), 
            .D(n14200), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_126_10 (.CI(n19820), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19821));
    SB_LUT4 i12850_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1548), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15371));   // zim_main.vhd(529[3] 816[10])
    defparam i12850_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11691_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14212));   // zim_main.vhd(531[4] 815[13])
    defparam i11691_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12353), 
            .D(n14204), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12353), 
            .D(n14208), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12851_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1547), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15372));   // zim_main.vhd(529[3] 816[10])
    defparam i12851_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12852_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1546), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15373));   // zim_main.vhd(529[3] 816[10])
    defparam i12852_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12353), 
            .D(n14212), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i18596_4_lut (.I0(n23_adj_1658), .I1(req_data_cnt[15]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21323));
    defparam i18596_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12353), 
            .D(n14216), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12353), 
            .D(n14220), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_index_2__bdd_4_lut (.I0(comm_index[2]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[6] [5]), .I3(comm_index[1]), .O(n22503));
    defparam comm_index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12353), 
            .D(n14224), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12353), 
            .D(n14228), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 n22503_bdd_4_lut (.I0(n22503), .I1(\comm_buf[4] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n22506));
    defparam n22503_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12314), 
            .D(n14232), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12314), 
            .D(n14236), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i11687_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14208));   // zim_main.vhd(531[4] 815[13])
    defparam i11687_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12314), 
            .D(n14240), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12314), 
            .D(n14244), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12853_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1579), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15374));   // zim_main.vhd(529[3] 816[10])
    defparam i12853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19755 (.I0(comm_cmd[1]), .I1(n26_adj_1653), 
            .I2(n21512), .I3(comm_cmd[2]), .O(n22497));
    defparam comm_cmd_1__bdd_4_lut_19755.LUT_INIT = 16'he4aa;
    SB_LUT4 i12463_2_lut (.I0(n12353), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14979));   // zim_main.vhd(529[3] 816[10])
    defparam i12463_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12314), 
            .D(n14248), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12314), 
            .D(n14252), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 n22497_bdd_4_lut (.I0(n22497), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22500));
    defparam n22497_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12314), 
            .D(n14256), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_4_lut_adj_299 (.I0(comm_index[0]), .I1(n21089), .I2(n21143), 
            .I3(n19193), .O(n12353));
    defparam i1_4_lut_adj_299.LUT_INIT = 16'hc8c0;
    SB_CARRY add_67_2 (.CI(VAC_MOSI), .I0(data_count[0]), .I1(iac_raw_buf_N_776), 
            .CO(n19765));
    SB_LUT4 i11739_3_lut (.I0(n22602), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14260));   // zim_main.vhd(531[4] 815[13])
    defparam i11739_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12260), 
            .D(n14260), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12260), 
            .D(n14264), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12260), 
            .D(n14268), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12260), 
            .D(n14272), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i1_2_lut_adj_300 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n12442));
    defparam i1_2_lut_adj_300.LUT_INIT = 16'heeee;
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12260), 
            .D(n14276), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12260), 
            .D(n14280), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12260), 
            .D(n14284), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12184), 
            .D(n14288), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12184), 
            .D(n14292), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1585), 
            .I2(n21528), .I3(comm_index[2]), .O(n22491));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12184), 
            .D(n14296), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12854_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1552), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15375));   // zim_main.vhd(529[3] 816[10])
    defparam i12854_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12184), 
            .D(n14300), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12184), 
            .D(n14304), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12184), 
            .D(n14308), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12184), 
            .D(n14312), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12148), 
            .D(THERMOSTAT_N_510), .R(n20578));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12089), 
            .D(n21479), .R(n16824));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i11683_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14204));   // zim_main.vhd(531[4] 815[13])
    defparam i11683_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11679_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14200));   // zim_main.vhd(531[4] 815[13])
    defparam i11679_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11675_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14196));   // zim_main.vhd(531[4] 815[13])
    defparam i11675_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11671_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14192));   // zim_main.vhd(531[4] 815[13])
    defparam i11671_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11667_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14188));   // zim_main.vhd(531[4] 815[13])
    defparam i11667_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11663_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14184));   // zim_main.vhd(531[4] 815[13])
    defparam i11663_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11659_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14180));   // zim_main.vhd(531[4] 815[13])
    defparam i11659_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_1_i16_3_lut (.I0(buf_dds0[9]), .I1(buf_dds1[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1690));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12470_2_lut (.I0(n12407), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14986));   // zim_main.vhd(529[3] 816[10])
    defparam i12470_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_128_Mux_1_i17_3_lut (.I0(IAC_OSR1), .I1(buf_adcdata_iac[17]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1691));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_1_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_17_lut (.I0(VAC_MOSI), .I1(data_cntvec[15]), .I2(VAC_MOSI), 
            .I3(n19788), .O(n430)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_17_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12079), 
            .D(comm_index_2__N_487[2]), .R(n16821));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12855_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1551), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15376));   // zim_main.vhd(529[3] 816[10])
    defparam i12855_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12079), 
            .D(comm_index_2__N_487[1]), .R(n16821));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18_adj_1615), 
            .D(n20314), .R(comm_state[3]));   // zim_main.vhd(529[3] 816[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11989), .D(n495), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 n22491_bdd_4_lut (.I0(n22491), .I1(n2_adj_1584), .I2(n1), 
            .I3(comm_index[2]), .O(n22494));
    defparam n22491_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_301 (.I0(comm_index[0]), .I1(n21089), .I2(n21143), 
            .I3(n19188), .O(n12407));
    defparam i1_4_lut_adj_301.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_128_Mux_1_i20_3_lut (.I0(buf_cfgRTD[1]), .I1(buf_readRTD[9]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1693));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_1_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_302 (.I0(n12433), .I1(n21139), .I2(n1348), .I3(comm_state[0]), 
            .O(n4));
    defparam i1_4_lut_adj_302.LUT_INIT = 16'hc8cc;
    SB_LUT4 i2_4_lut_adj_303 (.I0(n3), .I1(n4), .I2(ICE_SPI_CE0), .I3(n12442), 
            .O(n21013));
    defparam i2_4_lut_adj_303.LUT_INIT = 16'hcc8c;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19746 (.I0(comm_cmd[1]), .I1(n19_adj_1683), 
            .I2(n20_adj_1684), .I3(comm_cmd[2]), .O(n22485));
    defparam comm_cmd_1__bdd_4_lut_19746.LUT_INIT = 16'he4aa;
    SB_LUT4 add_126_9_lut (.I0(n14_adj_1551), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19819), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12856_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1550), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15377));   // zim_main.vhd(529[3] 816[10])
    defparam i12856_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11989), .D(n494), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i11655_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14176));   // zim_main.vhd(531[4] 815[13])
    defparam i11655_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11989), .D(n493), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11989), .D(n492), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11989), .D(n491), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 mux_128_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[17]), .I1(buf_adcdata_vdc[17]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1692));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11989), .D(n490), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i11651_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14172));   // zim_main.vhd(531[4] 815[13])
    defparam i11651_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11989), .D(n489), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11989), .D(n488), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11989), .D(n487), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11989), .D(n486), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11989), .D(n485), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11989), .D(n484), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i12857_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1575), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15378));   // zim_main.vhd(529[3] 816[10])
    defparam i12857_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11989), .D(n483), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11989), .D(n482), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11989), .D(n481), .R(n14915));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i11647_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14168));   // zim_main.vhd(531[4] 815[13])
    defparam i11647_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_5_i16_3_lut (.I0(buf_dds0[13]), .I1(buf_dds1[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n16_adj_1664));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11643_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14164));   // zim_main.vhd(531[4] 815[13])
    defparam i11643_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_128_Mux_5_i17_3_lut (.I0(VAC_OSR1), .I1(buf_adcdata_iac[21]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n17_adj_1665));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_5_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22485_bdd_4_lut (.I0(n22485), .I1(n17_adj_1682), .I2(n16_adj_1681), 
            .I3(comm_cmd[2]), .O(n22488));
    defparam n22485_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12858_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1574), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15379));   // zim_main.vhd(529[3] 816[10])
    defparam i12858_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n11933), 
            .D(n426), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n11933), 
            .D(n425), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n11933), 
            .D(n424), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n11933), 
            .D(n423), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n11933), 
            .D(n422), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 mux_128_Mux_5_i20_3_lut (.I0(buf_cfgRTD[5]), .I1(buf_readRTD[13]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n20_adj_1667));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_5_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11639_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14160));   // zim_main.vhd(531[4] 815[13])
    defparam i11639_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n11933), 
            .D(n421), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n11933), 
            .D(n420), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n11933), 
            .D(n419), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_DFFNESR data_count_i0_i9 (.Q(data_count[9]), .C(clk_32MHz), .E(n11933), 
            .D(n418), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i3881_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_index[0]), 
            .I3(VAC_MOSI), .O(n6401));   // zim_main.vhd(700[5] 706[12])
    defparam i3881_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n11933), 
            .D(n445), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i11635_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14156));   // zim_main.vhd(531[4] 815[13])
    defparam i11635_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_304 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(comm_state[0]), .O(n21085));   // zim_main.vhd(700[5] 706[12])
    defparam i1_3_lut_4_lut_adj_304.LUT_INIT = 16'h0002;
    SB_LUT4 i2_3_lut_4_lut_adj_305 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(n21110), .I3(n3), .O(n20095));   // zim_main.vhd(700[5] 706[12])
    defparam i2_3_lut_4_lut_adj_305.LUT_INIT = 16'hfffd;
    SB_DFFSR secclk_cnt_3765_3766__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n14899));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 mux_128_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[21]), .I1(buf_adcdata_vdc[21]), 
            .I2(comm_cmd[0]), .I3(VAC_MOSI), .O(n19_adj_1666));   // zim_main.vhd(584[5] 688[14])
    defparam mux_128_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_16_lut (.I0(VAC_MOSI), .I1(data_cntvec[14]), .I2(VAC_MOSI), 
            .I3(n19787), .O(n431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_16_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_cnt_3761_3762__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15), 
            .R(n17773));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(eis_state_2__N_392[0]), 
            .I2(n21501), .I3(eis_state[2]), .O(n22479));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 secclk_cnt_3765_3766_add_4_24_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[22]), .I3(n19977), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_3765_3766_add_4_23_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[21]), .I3(n19976), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_23 (.CI(n19976), .I0(VAC_MOSI), 
            .I1(secclk_cnt[21]), .CO(n19977));
    SB_LUT4 add_67_8_lut (.I0(VAC_MOSI), .I1(data_count[6]), .I2(VAC_MOSI), 
            .I3(n19770), .O(n421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19264_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n21454));   // zim_main.vhd(700[5] 706[12])
    defparam i19264_4_lut_4_lut.LUT_INIT = 16'h002c;
    zim_pll pll_main (.GND_net(VAC_MOSI), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_732(DDS_MCLK1));   // zim_main.vhd(819[13:20])
    SB_CARRY add_126_9 (.CI(n19819), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19820));
    SB_LUT4 i11631_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14152));   // zim_main.vhd(531[4] 815[13])
    defparam i11631_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30_adj_1499));   // zim_main.vhd(747[5] 802[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_LUT4 i3879_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_index[0]), 
            .I3(VAC_MOSI), .O(comm_index_2__N_487[0]));   // zim_main.vhd(700[5] 706[12])
    defparam i3879_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(comm_state[0]), .O(n7));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i12859_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1573), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15380));   // zim_main.vhd(529[3] 816[10])
    defparam i12859_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_adj_306 (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14350));   // zim_main.vhd(531[4] 815[13])
    defparam i2_2_lut_adj_306.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_2_lut_adj_307 (.I0(comm_cmd[3]), .I1(comm_cmd[4]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n4_adj_1455));
    defparam i1_2_lut_adj_307.LUT_INIT = 16'h8888;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19809 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[3]), 
            .I2(buf_readRTD[11]), .I3(comm_cmd[1]), .O(n22473));
    defparam comm_cmd_0__bdd_4_lut_19809.LUT_INIT = 16'he4aa;
    SB_LUT4 n22473_bdd_4_lut (.I0(n22473), .I1(buf_adcdata_vdc[19]), .I2(buf_adcdata_vac[19]), 
            .I3(comm_cmd[1]), .O(n22476));
    defparam n22473_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 secclk_cnt_3765_3766_add_4_22_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[20]), .I3(n19975), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_126_8_lut (.I0(n14_adj_1552), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19818), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19736 (.I0(comm_cmd[1]), .I1(n19_adj_1634), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22467));
    defparam comm_cmd_1__bdd_4_lut_19736.LUT_INIT = 16'he4aa;
    SB_LUT4 i227_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n1348));   // zim_main.vhd(808[8:49])
    defparam i227_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12860_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1572), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15381));   // zim_main.vhd(529[3] 816[10])
    defparam i12860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22467_bdd_4_lut (.I0(n22467), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1633), 
            .I3(comm_cmd[2]), .O(n22470));
    defparam n22467_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_126_8 (.CI(n19818), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19819));
    SB_LUT4 i18492_3_lut (.I0(comm_cmd[6]), .I1(n7_adj_1650), .I2(comm_cmd[5]), 
            .I3(VAC_MOSI), .O(n21219));
    defparam i18492_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_308 (.I0(n21219), .I1(n21043), .I2(n21147), .I3(n4_adj_1455), 
            .O(n21089));
    defparam i1_4_lut_adj_308.LUT_INIT = 16'hc4c0;
    SB_LUT4 i12477_2_lut (.I0(n12431), .I1(comm_state[3]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n14993));   // zim_main.vhd(529[3] 816[10])
    defparam i12477_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_309 (.I0(comm_index[0]), .I1(n21089), .I2(n21143), 
            .I3(n19188), .O(n12431));
    defparam i1_4_lut_adj_309.LUT_INIT = 16'hc8c0;
    SB_CARRY secclk_cnt_3765_3766_add_4_22 (.CI(n19975), .I0(VAC_MOSI), 
            .I1(secclk_cnt[20]), .CO(n19976));
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12541), 
            .D(n21274), .R(n15007));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i11627_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n14148));   // zim_main.vhd(531[4] 815[13])
    defparam i11627_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12431), 
            .D(n13803), .R(n14993));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i19104_2_lut_3_lut (.I0(comm_state[1]), .I1(ICE_SPI_CE0), .I2(comm_data_vld), 
            .I3(VAC_MOSI), .O(n21453));
    defparam i19104_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11276_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13795));   // zim_main.vhd(531[4] 815[13])
    defparam i11276_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11280_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(VAC_MOSI), .O(n13799));   // zim_main.vhd(531[4] 815[13])
    defparam i11280_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12407), 
            .D(n13799), .R(n14986));   // zim_main.vhd(529[3] 816[10])
    GND i1 (.Y(VAC_MOSI));
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12353), 
            .D(n13795), .R(n14979));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_21_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[19]), .I3(n19974), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12861_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1578), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15382));   // zim_main.vhd(529[3] 816[10])
    defparam i12861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19721 (.I0(comm_cmd[1]), .I1(n19_adj_1673), 
            .I2(n20_adj_1674), .I3(comm_cmd[2]), .O(n22461));
    defparam comm_cmd_1__bdd_4_lut_19721.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12314), 
            .D(n13791), .R(n14972));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12260), 
            .D(n13787), .R(n14965));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_68_16 (.CI(n19787), .I0(data_cntvec[14]), .I1(VAC_MOSI), 
            .CO(n19788));
    SB_CARRY secclk_cnt_3765_3766_add_4_21 (.CI(n19974), .I0(VAC_MOSI), 
            .I1(secclk_cnt[19]), .CO(n19975));
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12184), 
            .D(n13783), .R(n14958));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12089), 
            .D(n30_adj_1535), .R(n16824));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 mux_137_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1583));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12079), 
            .D(comm_index_2__N_487[0]), .R(n16821));   // zim_main.vhd(529[3] 816[10])
    SB_DFFESR flagcntwd_303 (.Q(flagcntwd), .C(clk_32MHz), .E(n11605), 
            .D(n3), .R(n20578));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_20_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[18]), .I3(n19973), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_adj_310 (.I0(comm_cmd[0]), .I1(n16818), .I2(comm_cmd[3]), 
            .I3(VAC_MOSI), .O(n11570));   // zim_main.vhd(780[11:20])
    defparam i1_2_lut_3_lut_adj_310.LUT_INIT = 16'hdfdf;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n11933), 
            .D(n427), .R(n14907));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 i18561_4_lut (.I0(n4_adj_1583), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21288));
    defparam i18561_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12862_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1571), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15383));   // zim_main.vhd(529[3] 816[10])
    defparam i12862_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_15_lut (.I0(VAC_MOSI), .I1(data_cntvec[13]), .I2(VAC_MOSI), 
            .I3(n19786), .O(n432)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_20 (.CI(n19973), .I0(VAC_MOSI), 
            .I1(secclk_cnt[18]), .CO(n19974));
    SB_LUT4 i18562_3_lut (.I0(n22560), .I1(n21288), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21289));
    defparam i18562_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11989), .D(n496), .R(n21226));   // zim_main.vhd(449[3] 524[10])
    SB_LUT4 secclk_cnt_3765_3766_add_4_19_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[17]), .I3(n19972), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_DFFR wdtick_flag_289 (.Q(wdtick_flag), .C(clk_16MHz), .D(wdtick_flag_N_341), 
            .R(flagcntwd));   // zim_main.vhd(399[3] 410[10])
    SB_LUT4 comm_cmd_6__I_0_368_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(VAC_MOSI), .I3(VAC_MOSI), .O(n8));   // zim_main.vhd(775[11:20])
    defparam comm_cmd_6__I_0_368_i8_2_lut.LUT_INIT = 16'hdddd;
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15328));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15327));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15326));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 n22461_bdd_4_lut (.I0(n22461), .I1(n17_adj_1672), .I2(n16_adj_1671), 
            .I3(comm_cmd[2]), .O(n22464));
    defparam n22461_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_137_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1582));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n20316));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15324));   // zim_main.vhd(529[3] 816[10])
    ADC_ADS127 ADC_VAC (.\adc_state[1] (adc_state_adj_1699[1]), .\adc_state[0] (adc_state_adj_1699[0]), 
            .DTRIG_N_958(DTRIG_N_958_adj_1493), .clk_32MHz(clk_32MHz), .n20600(n20600), 
            .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1700}), .n20616(n20616), 
            .n21076(n21076), .buf_adcdata_vac({buf_adcdata_vac}), .n20630(n20630), 
            .n20636(n20636), .n20638(n20638), .n20640(n20640), .n20642(n20642), 
            .n20644(n20644), .n20646(n20646), .GND_net(VAC_MOSI), .VAC_DRDY(VAC_DRDY), 
            .n21050(n21050), .n12850(n12850), .acadc_trig(acadc_trig), 
            .n20696(n20696), .n20826(n20826), .n20824(n20824), .n20822(n20822), 
            .n20820(n20820), .n20818(n20818), .n20814(n20814), .n20812(n20812), 
            .n20810(n20810), .n20808(n20808), .n20806(n20806), .n20702(n20702), 
            .n11(n11_adj_1655), .VAC_CS(VAC_CS), .n20804(n20804), .n20802(n20802), 
            .n20800(n20800), .n20798(n20798), .n20796(n20796), .n20794(n20794), 
            .n20792(n20792), .n20790(n20790), .n20788(n20788), .n20786(n20786), 
            .n20784(n20784), .n20592(n20592), .VAC_SCLK(VAC_SCLK), .n20590(n20590), 
            .acadc_dtrig_v(acadc_dtrig_v));   // zim_main.vhd(856[12:22])
    SB_DFF buf_control_i4 (.Q(VDC_RNG0), .C(clk_32MHz), .D(n15323));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_19716 (.I0(comm_cmd[1]), .I1(n26_adj_1687), 
            .I2(n21460), .I3(comm_cmd[2]), .O(n22455));
    defparam comm_cmd_1__bdd_4_lut_19716.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_311 (.I0(n12), .I1(comm_state[3]), .I2(n9342), 
            .I3(n4_adj_1637), .O(n12662));
    defparam i1_4_lut_adj_311.LUT_INIT = 16'hc0c4;
    SB_LUT4 n22455_bdd_4_lut (.I0(n22455), .I1(n24_adj_1686), .I2(n23_adj_1685), 
            .I3(comm_cmd[2]), .O(n22458));
    defparam n22455_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15322));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 add_126_7_lut (.I0(n14_adj_1579), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19817), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_126_7_lut.LUT_INIT = 16'hA3AC;
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15321));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15320));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i18558_4_lut (.I0(n4_adj_1582), .I1(\comm_buf[6] [4]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21285));
    defparam i18558_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFN eis_end_299 (.Q(eis_end), .C(clk_32MHz), .D(n15318));   // zim_main.vhd(449[3] 524[10])
    SB_CARRY secclk_cnt_3765_3766_add_4_19 (.CI(n19972), .I0(VAC_MOSI), 
            .I1(secclk_cnt[17]), .CO(n19973));
    ADC_ADS1252 ADC_VDC (.GND_net(VAC_MOSI), .VCC_net(VCC_net), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), 
            .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), .\adc_state[3] (adc_state_adj_1741[3]), 
            .\adc_state[2] (adc_state_adj_1741[2]), .cmd_rdadctmp({Open_0, 
            cmd_rdadctmp_adj_1742[22], Open_1, Open_2, Open_3, Open_4, 
            Open_5, Open_6, Open_7, Open_8, Open_9, Open_10, Open_11, 
            Open_12, Open_13, Open_14, Open_15, Open_16, Open_17, 
            Open_18, Open_19, Open_20, Open_21, Open_22}), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), .VDC_CLK(VDC_CLK), .\adc_state_3__N_1288[0] (VDC_SDO), 
            .n20258(n20258), .\cmd_rdadctmp[1] (cmd_rdadctmp_adj_1742[1]), 
            .n20260(n20260), .\cmd_rdadctmp[2] (cmd_rdadctmp_adj_1742[2]), 
            .n20262(n20262), .\cmd_rdadctmp[3] (cmd_rdadctmp_adj_1742[3]), 
            .n20264(n20264), .\cmd_rdadctmp[4] (cmd_rdadctmp_adj_1742[4]), 
            .n20266(n20266), .\cmd_rdadctmp[5] (cmd_rdadctmp_adj_1742[5]), 
            .n20268(n20268), .\cmd_rdadctmp[6] (cmd_rdadctmp_adj_1742[6]), 
            .n20270(n20270), .\cmd_rdadctmp[7] (cmd_rdadctmp_adj_1742[7]), 
            .n20272(n20272), .\cmd_rdadctmp[8] (cmd_rdadctmp_adj_1742[8]), 
            .n20274(n20274), .\cmd_rdadctmp[9] (cmd_rdadctmp_adj_1742[9]), 
            .n20276(n20276), .\cmd_rdadctmp[10] (cmd_rdadctmp_adj_1742[10]), 
            .n20278(n20278), .\cmd_rdadctmp[11] (cmd_rdadctmp_adj_1742[11]), 
            .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .n20280(n20280), .\cmd_rdadctmp[12] (cmd_rdadctmp_adj_1742[12]), 
            .n20282(n20282), .\cmd_rdadctmp[13] (cmd_rdadctmp_adj_1742[13]), 
            .n20284(n20284), .\cmd_rdadctmp[14] (cmd_rdadctmp_adj_1742[14]), 
            .n20286(n20286), .\cmd_rdadctmp[15] (cmd_rdadctmp_adj_1742[15]), 
            .n20288(n20288), .\cmd_rdadctmp[16] (cmd_rdadctmp_adj_1742[16]), 
            .n20298(n20298), .\cmd_rdadctmp[17] (cmd_rdadctmp_adj_1742[17]), 
            .n20300(n20300), .\cmd_rdadctmp[18] (cmd_rdadctmp_adj_1742[18]), 
            .n20302(n20302), .\cmd_rdadctmp[19] (cmd_rdadctmp_adj_1742[19]), 
            .n20304(n20304), .\cmd_rdadctmp[20] (cmd_rdadctmp_adj_1742[20]), 
            .n20306(n20306), .\cmd_rdadctmp[21] (cmd_rdadctmp_adj_1742[21]), 
            .n20308(n20308), .n20488(n20488), .buf_adcdata_vdc({buf_adcdata_vdc}), 
            .n20490(n20490), .n20492(n20492), .n20494(n20494), .n20496(n20496), 
            .n20498(n20498), .n20500(n20500), .n20502(n20502), .n20504(n20504), 
            .n20506(n20506), .n20508(n20508), .n20510(n20510), .n20512(n20512), 
            .n20514(n20514), .n20516(n20516), .n20518(n20518), .n20520(n20520), 
            .n20522(n20522), .n20524(n20524), .n20526(n20526), .n20528(n20528), 
            .n20530(n20530), .n20532(n20532), .VDC_SCLK(VDC_SCLK), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), 
            .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), 
            .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), 
            .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1742[0]), .n20556(n20556), 
            .n13324(n13324), .n11891(n11891), .clk_16MHz(clk_16MHz));   // zim_main.vhd(904[12:23])
    ADC_MAX31865 RTD (.\adc_state[2] (adc_state_adj_1737[2]), .RTD_CS(RTD_CS), 
            .clk_RTD(clk_RTD), .GND_net(VAC_MOSI), .RTD_SCLK(RTD_SCLK), 
            .adress({Open_23, adress[6:1], Open_24}), .buf_cfgRTD({buf_cfgRTD}), 
            .n13212(n13212), .n20138(n20138), .VCC_net(VCC_net), .n20140(n20140), 
            .n20142(n20142), .n20144(n20144), .n20146(n20146), .n20148(n20148), 
            .n20392(n20392), .read_buf({read_buf}), .n20396(n20396), .n20400(n20400), 
            .n20404(n20404), .n14692(n14692), .n20408(n20408), .n20412(n20412), 
            .RTD_DRDY(RTD_DRDY), .n13054(n13054), .n20416(n20416), .n20424(n20424), 
            .n20428(n20428), .n20434(n20434), .n20438(n20438), .n20442(n20442), 
            .n20446(n20446), .n20450(n20450), .n20452(n20452), .buf_readRTD({buf_readRTD}), 
            .n20454(n20454), .n20456(n20456), .n20458(n20458), .n20460(n20460), 
            .n20462(n20462), .n20464(n20464), .n20466(n20466), .n20468(n20468), 
            .n20470(n20470), .n20472(n20472), .n20474(n20474), .n20476(n20476), 
            .n20478(n20478), .n11856(n11856), .n1(n1_adj_1592), .n20552(n20552), 
            .n20554(n20554), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(890[8:20])
    SB_LUT4 secclk_cnt_3765_3766_add_4_18_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[16]), .I3(n19971), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_18 (.CI(n19971), .I0(VAC_MOSI), 
            .I1(secclk_cnt[16]), .CO(n19972));
    SB_LUT4 secclk_cnt_3765_3766_add_4_17_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[15]), .I3(n19970), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_DFF eis_start_329 (.Q(eis_start), .C(clk_32MHz), .D(n15308));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12863_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1544), .I2(n12662), 
            .I3(VAC_MOSI), .O(n15384));   // zim_main.vhd(529[3] 816[10])
    defparam i12863_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_stop_328 (.Q(eis_stop), .C(clk_32MHz), .D(n15307));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY secclk_cnt_3765_3766_add_4_17 (.CI(n19970), .I0(VAC_MOSI), 
            .I1(secclk_cnt[15]), .CO(n19971));
    SB_LUT4 i18559_3_lut (.I0(n22554), .I1(n21285), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21286));
    defparam i18559_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_rst_327 (.Q(acadc_rst), .C(clk_32MHz), .D(n15306));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i12808_3_lut_4_lut (.I0(buf_dds0[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9342), .I3(n12596), .O(n15329));   // zim_main.vhd(529[3] 816[10])
    defparam i12808_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15305));   // zim_main.vhd(529[3] 816[10])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15304));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i18460_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n21187));
    defparam i18460_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19054_2_lut_3_lut (.I0(n5_adj_1524), .I1(comm_state[0]), .I2(ICE_SPI_CE0), 
            .I3(VAC_MOSI), .O(n21586));   // zim_main.vhd(531[4] 815[13])
    defparam i19054_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_LUT4 i4211_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(VAC_MOSI), 
            .I3(VAC_MOSI), .O(n6541));   // zim_main.vhd(560[5] 567[12])
    defparam i4211_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15197_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(VAC_MOSI), .O(n17698));   // zim_main.vhd(249[9:19])
    defparam i15197_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_3765_3766_add_4_16_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[14]), .I3(n19969), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12782_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1550), .I2(n12624), 
            .I3(VAC_MOSI), .O(n15303));   // zim_main.vhd(529[3] 816[10])
    defparam i12782_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_3765_3766_add_4_16 (.CI(n19969), .I0(VAC_MOSI), 
            .I1(secclk_cnt[14]), .CO(n19970));
    SB_LUT4 i18543_4_lut (.I0(n17698), .I1(\comm_buf[3] [5]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n21270));
    defparam i18543_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18544_3_lut (.I0(n22506), .I1(n21270), .I2(comm_index[0]), 
            .I3(VAC_MOSI), .O(n21271));
    defparam i18544_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_312 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n4_adj_1589));
    defparam i1_4_lut_4_lut_adj_312.LUT_INIT = 16'h4fef;
    SB_LUT4 mux_137_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(VAC_MOSI), .O(n4_adj_1581));   // zim_main.vhd(695[30:40])
    defparam mux_137_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18555_4_lut (.I0(n4_adj_1581), .I1(\comm_buf[6] [6]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21282));
    defparam i18555_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15303));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15302));   // zim_main.vhd(529[3] 816[10])
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15301));   // zim_main.vhd(529[3] 816[10])
    SB_LUT4 i18556_3_lut (.I0(n22548), .I1(n21282), .I2(comm_index[2]), 
            .I3(VAC_MOSI), .O(n21283));
    defparam i18556_3_lut.LUT_INIT = 16'hcaca;
    DDS_AD9837 SIG_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .DDS_CS(DDS_CS), .n20668(n20668), .VCC_net(VCC_net), .GND_net(VAC_MOSI), 
            .\bit_cnt[0] (bit_cnt_adj_1720[0]), .\tmp_buf[15] (tmp_buf[15]), 
            .trig_dds0(trig_dds0), .buf_dds0({buf_dds0}), .n15092(n15092), 
            .n16018(n16018), .n15317(n15317), .DDS_MOSI(DDS_MOSI), .n15315(n15315), 
            .DDS_SCK(DDS_SCK));   // zim_main.vhd(870[12:22])
    SB_LUT4 secclk_cnt_3765_3766_add_4_15_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[13]), .I3(n19968), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_313 (.I0(adress[6]), .I1(adress[5]), .I2(n13054), 
            .I3(n14692), .O(n20148));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_313.LUT_INIT = 16'hca0a;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15300));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_67_8 (.CI(n19770), .I0(data_count[6]), .I1(VAC_MOSI), 
            .CO(n19771));
    DDS_AD9837_U0 CLK_DDS (.\dds_state_2__N_964[0] (dds_state_2__N_964_adj_1730[0]), 
            .dds_state({dds_state_adj_1722}), .clk_32MHz(clk_32MHz), .DDS_CS1(DDS_CS1), 
            .n20670(n20670), .VCC_net(VCC_net), .GND_net(VAC_MOSI), .\tmp_buf[15] (tmp_buf_adj_1723[15]), 
            .trig_dds1(trig_dds1), .buf_dds1({buf_dds1}), .bit_cnt({bit_cnt_adj_1724}), 
            .\bit_cnt_3__N_1012[3] (bit_cnt_3__N_1012_adj_1728[3]), .\bit_cnt_3__N_1012[2] (bit_cnt_3__N_1012_adj_1728[2]), 
            .\bit_cnt_3__N_1012[1] (bit_cnt_3__N_1012_adj_1728[1]), .n8(n8_adj_1680), 
            .n15319(n15319), .DDS_MOSI1(DDS_MOSI1), .n15316(n15316), .DDS_SCK1(DDS_SCK1));   // zim_main.vhd(880[12:22])
    SB_DFF trig_dds1_305 (.Q(trig_dds1), .C(clk_32MHz), .D(n20150));   // zim_main.vhd(529[3] 816[10])
    SB_DFF SecClk_292 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_731));   // zim_main.vhd(415[3] 421[10])
    SB_DFF trig_dds0_304 (.Q(trig_dds0), .C(clk_32MHz), .D(n20230));   // zim_main.vhd(529[3] 816[10])
    SB_CARRY add_68_15 (.CI(n19786), .I0(data_cntvec[13]), .I1(VAC_MOSI), 
            .CO(n19787));
    ADC_ADS127_U1 ADC_IAC (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .DTRIG_N_958(DTRIG_N_958), .GND_net(VAC_MOSI), .IAC_DRDY(IAC_DRDY), 
            .\adc_state[1] (adc_state[1]), .n21079(n21079), .cmd_rdadctmp({cmd_rdadctmp}), 
            .buf_adcdata_iac({buf_adcdata_iac}), .n21082(n21082), .n12771(n12771), 
            .acadc_trig(acadc_trig), .n20698(n20698), .VCC_net(VCC_net), 
            .n11(n11_adj_1660), .IAC_CS(IAC_CS), .n20782(n20782), .n20724(n20724), 
            .n20726(n20726), .n20728(n20728), .n20730(n20730), .n20690(n20690), 
            .n20732(n20732), .n20734(n20734), .n20736(n20736), .n20738(n20738), 
            .n20740(n20740), .n20742(n20742), .n20780(n20780), .n20744(n20744), 
            .n20746(n20746), .n20748(n20748), .n20750(n20750), .n20752(n20752), 
            .n20754(n20754), .n20756(n20756), .n20758(n20758), .n20760(n20760), 
            .n20762(n20762), .n20764(n20764), .n20766(n20766), .n20768(n20768), 
            .n20778(n20778), .n20770(n20770), .n20772(n20772), .n20774(n20774), 
            .n20776(n20776), .n20588(n20588), .IAC_SCLK(IAC_SCLK), .n20586(n20586), 
            .acadc_dtrig_i(acadc_dtrig_i));   // zim_main.vhd(842[12:22])
    SB_CARRY secclk_cnt_3765_3766_add_4_15 (.CI(n19968), .I0(VAC_MOSI), 
            .I1(secclk_cnt[13]), .CO(n19969));
    SB_LUT4 secclk_cnt_3765_3766_add_4_14_lut (.I0(VAC_MOSI), .I1(VAC_MOSI), 
            .I2(secclk_cnt[12]), .I3(n19967), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_3765_3766_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_3765_3766_add_4_14 (.CI(n19967), .I0(VAC_MOSI), 
            .I1(secclk_cnt[12]), .CO(n19968));
    SB_LUT4 i2_3_lut_adj_314 (.I0(n21147), .I1(comm_data_vld), .I2(n14350), 
            .I3(VAC_MOSI), .O(n11619));
    defparam i2_3_lut_adj_314.LUT_INIT = 16'hfbfb;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_rx_buf, GND_net, comm_data_vld, clk_32MHz, comm_clear, 
            comm_tx_buf, ICE_SPI_SCLK, VCC_net, ICE_SPI_MOSI, ICE_SPI_MISO);
    output [7:0]comm_rx_buf;
    input GND_net;
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input [7:0]comm_tx_buf;
    input ICE_SPI_SCLK;
    input VCC_net;
    input ICE_SPI_MOSI;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    
    wire n14823, n14822, n23089, n14809, n14808, n23092, imosi;
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire n17254, DATA_VLD_N_838;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n14815, data_tx_7__N_806, DOUT_7__N_787, DOUT_7__N_786, n14816, 
        n14811, imiso, n14813, data_tx_7__N_814;
    wire [3:0]n21;
    
    wire data_tx_7__N_820, data_tx_7__N_808, n23086, n23083, data_tx_7__N_823, 
        data_tx_7__N_809, n14818, DOUT_7__N_785, DOUT_7__N_784, DOUT_7__N_783, 
        DOUT_7__N_782, DOUT_7__N_781, DOUT_7__N_780, DOUT_7__N_778, 
        data_tx_7__N_826, data_tx_7__N_810, n14800, data_tx_7__N_813, 
        data_tx_7__N_829, data_tx_7__N_811, imosi_N_793, n14812, imosi_N_792, 
        data_tx_7__N_832, data_tx_7__N_812, iclk_N_803, n14805, n14819, 
        n14804, iclk_N_802, data_tx_7__N_835, n14801, data_tx_7__N_817, 
        n14843, n14842, n23095, n14847, n14846, n14827, n14826, 
        n23107, n14835, n14834, n23101, n14839, n14838, n23098, 
        data_tx_7__N_807, n23110, n23104, n14831, n14830;
    
    SB_LUT4 i12303_3_lut (.I0(n14823), .I1(n14822), .I2(n23089), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12303_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12289_3_lut (.I0(n14809), .I1(n14808), .I2(n23092), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i12289_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17254), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_838));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_838), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_DFFS data_tx_i7_12294_12295_set (.Q(n14815), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_806));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12296_3_lut (.I0(n14816), .I1(n14815), .I2(n14811), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12296_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNR MISO_48_12291_12292_reset (.Q(n14813), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_814));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFNR bit_cnt_3767__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_820));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_808));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19480_4_lut_3_lut (.I0(n23086), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n23086));   // spi_slave.vhd(47[3] 55[10])
    defparam i19480_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19525_4_lut_3_lut (.I0(n23083), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n23083));   // spi_slave.vhd(70[3] 80[10])
    defparam i19525_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_823));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_809));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_DFFNS imiso_83_12297_12298_set (.Q(n14818), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_806));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_785), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i19490_4_lut_3_lut (.I0(n14811), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14811));   // spi_slave.vhd(60[3] 64[10])
    defparam i19490_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_784), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_783), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_782), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_781), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_780), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_778), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_826));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_810));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS data_tx_i0_12279_12280_set (.Q(n14800), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_813));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_829));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_811));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_793));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_814));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNS MISO_48_12291_12292_set (.Q(n14812), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_806));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_12287_12288_reset (.Q(n14809), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_793));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS imosi_44_12287_12288_set (.Q(n14808), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_792));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_832));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_812));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_803));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR iclk_40_12283_12284_reset (.Q(n14805), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_803));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 i12299_3_lut (.I0(n14819), .I1(n14818), .I2(n14811), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i12299_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS iclk_40_12283_12284_set (.Q(n14804), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_802));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_835));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i17206_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17206_2_lut.LUT_INIT = 16'h6666;
    SB_DFFNR bit_cnt_3767__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_3767__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i17204_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17204_1_lut.LUT_INIT = 16'h5555;
    SB_DFFR data_tx_i0_12279_12280_reset (.Q(n14801), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_835));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_817));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12323_3_lut (.I0(n14843), .I1(n14842), .I2(n23095), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_802));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_DFFR data_tx_i6_12325_12326_reset (.Q(n14847), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_817));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_806));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12285_3_lut (.I0(n14805), .I1(n14804), .I2(n23086), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i12285_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12327_3_lut (.I0(n14847), .I1(n14846), .I2(n23083), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12327_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n17254));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12293_3_lut (.I0(n14813), .I1(n14812), .I2(n14811), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i12293_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12307_3_lut (.I0(n14827), .I1(n14826), .I2(n23107), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12307_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12315_3_lut (.I0(n14835), .I1(n14834), .I2(n23101), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12315_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12319_3_lut (.I0(n14839), .I1(n14838), .I2(n23098), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_807));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19530_4_lut_3_lut (.I0(n23110), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n23110));   // spi_slave.vhd(70[3] 80[10])
    defparam i19530_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_792));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19495_4_lut_3_lut (.I0(n23107), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n23107));   // spi_slave.vhd(70[3] 80[10])
    defparam i19495_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19505_4_lut_3_lut (.I0(n23104), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n23104));   // spi_slave.vhd(70[3] 80[10])
    defparam i19505_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i17220_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17220_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_778));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i17213_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17213_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i19510_4_lut_3_lut (.I0(n23101), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n23101));   // spi_slave.vhd(70[3] 80[10])
    defparam i19510_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19515_4_lut_3_lut (.I0(n23098), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n23098));   // spi_slave.vhd(70[3] 80[10])
    defparam i19515_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_2_lut_3_lut_adj_38 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_780));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_38.LUT_INIT = 16'he0e0;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_813));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_39 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_781));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_39.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_40 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_782));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_40.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_41 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_783));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_41.LUT_INIT = 16'he0e0;
    SB_LUT4 i19520_4_lut_3_lut (.I0(n23095), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n23095));   // spi_slave.vhd(70[3] 80[10])
    defparam i19520_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i6_12325_12326_set (.Q(n14846), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_807));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i5_12321_12322_reset (.Q(n14843), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_820));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_12321_12322_set (.Q(n14842), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_808));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i4_12317_12318_reset (.Q(n14839), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_823));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut_adj_42 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_784));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_42.LUT_INIT = 16'he0e0;
    SB_DFFS data_tx_i4_12317_12318_set (.Q(n14838), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_809));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i12311_3_lut (.I0(n14831), .I1(n14830), .I2(n23104), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12311_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i3_12313_12314_reset (.Q(n14835), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_826));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i3_12313_12314_set (.Q(n14834), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_810));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_12309_12310_reset (.Q(n14831), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_829));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i12281_3_lut (.I0(n14801), .I1(n14800), .I2(n23110), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i12281_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i2_12309_12310_set (.Q(n14830), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_811));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i1_12305_12306_reset (.Q(n14827), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_832));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i1_12305_12306_set (.Q(n14826), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_812));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_12301_12302_reset (.Q(n14823), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_787));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_12301_12302_set (.Q(n14822), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i1_2_lut_3_lut_adj_43 (.I0(bit_cnt[3]), .I1(n17254), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_785));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_43.LUT_INIT = 16'he0e0;
    SB_DFFNR imiso_83_12297_12298_reset (.Q(n14819), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_814));   // spi_slave.vhd(85[3] 91[10])
    SB_LUT4 i19485_4_lut_3_lut (.I0(n23092), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n23092));   // spi_slave.vhd(47[3] 55[10])
    defparam i19485_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFR data_tx_i7_12294_12295_reset (.Q(n14816), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_814));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i19500_4_lut_3_lut (.I0(n23089), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n23089));   // spi_slave.vhd(70[3] 80[10])
    defparam i19500_4_lut_3_lut.LUT_INIT = 16'he2e2;
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_732);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_732;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_16MHz_N_732 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=819, LSE_RLINE=819 */ ;   // zim_main.vhd(819[13:20])
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
    SB_LUT4 i19991_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_732));   // zim_main.vhd(819[13:20])
    defparam i19991_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (\adc_state[1] , \adc_state[0] , DTRIG_N_958, clk_32MHz, 
            n20600, VCC_net, cmd_rdadctmp, n20616, n21076, buf_adcdata_vac, 
            n20630, n20636, n20638, n20640, n20642, n20644, n20646, 
            GND_net, VAC_DRDY, n21050, n12850, acadc_trig, n20696, 
            n20826, n20824, n20822, n20820, n20818, n20814, n20812, 
            n20810, n20808, n20806, n20702, n11, VAC_CS, n20804, 
            n20802, n20800, n20798, n20796, n20794, n20792, n20790, 
            n20788, n20786, n20784, n20592, VAC_SCLK, n20590, acadc_dtrig_v);
    output \adc_state[1] ;
    output \adc_state[0] ;
    output DTRIG_N_958;
    input clk_32MHz;
    input n20600;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n20616;
    input n21076;
    output [23:0]buf_adcdata_vac;
    input n20630;
    input n20636;
    input n20638;
    input n20640;
    input n20642;
    input n20644;
    input n20646;
    input GND_net;
    input VAC_DRDY;
    output n21050;
    output n12850;
    input acadc_trig;
    input n20696;
    input n20826;
    input n20824;
    input n20822;
    input n20820;
    input n20818;
    input n20814;
    input n20812;
    input n20810;
    input n20808;
    input n20806;
    input n20702;
    input n11;
    output VAC_CS;
    input n20804;
    input n20802;
    input n20800;
    input n20798;
    input n20796;
    input n20794;
    input n20792;
    input n20790;
    input n20788;
    input n20786;
    input n20784;
    input n20592;
    output VAC_SCLK;
    input n20590;
    output acadc_dtrig_v;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n21224, n21234, n21468;
    wire [2:0]adc_state_2__N_863;
    
    wire n21158, n15410, n12803, n15052, n15421, n15416, n15428, 
        n15409, n15424, n15413, n15425, n15412, n15419, n15418, 
        n15312, n12, n15430, n15429, n15427, n15426, n15423, n15422, 
        n15420, n15417, n15415, n15414, n15411, n15408, n21157;
    wire [7:0]n63;
    
    wire n19841, n19840, n19839, n19838, n19837, n19836, n19835, 
        n17;
    
    SB_LUT4 i18497_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21224));
    defparam i18497_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18507_4_lut (.I0(bit_cnt[7]), .I1(n21224), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21234));
    defparam i18507_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19109_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21234), .O(n21468));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19109_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21468), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_958), .I3(\adc_state[1] ), .O(adc_state_2__N_863[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21158), 
            .D(adc_state_2__N_863[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20600));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20616));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12889_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15410));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12889_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20630));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20636));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20638));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20640));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20642));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20644));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20646));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12536_2_lut (.I0(n12803), .I1(DTRIG_N_958), .I2(GND_net), 
            .I3(GND_net), .O(n15052));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12536_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(VAC_DRDY), .I2(DTRIG_N_958), 
            .I3(\adc_state[1] ), .O(n12803));
    defparam i1_4_lut.LUT_INIT = 16'h0150;
    SB_LUT4 i12900_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15421));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12900_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12895_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15416));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12895_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12907_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15428));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12907_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12888_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15409));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12888_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12903_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15424));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12903_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12892_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15413));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12892_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12904_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15425));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12904_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12891_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15412));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12891_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12898_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15419));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12898_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12897_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15418));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12897_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12791_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15312));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12791_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_863[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_958), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_863[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15430));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15429));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15428));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15427));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15426));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15425));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15424));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15423));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15422));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15421));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15420));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15419));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15418));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15417));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15416));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15415));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15414));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15413));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15412));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15411));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15410));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15409));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15408));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_958), .I2(GND_net), 
            .I3(GND_net), .O(n21050));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_3_lut (.I0(VAC_DRDY), .I1(n21050), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12850));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i1_4_lut_adj_36 (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(VAC_DRDY), 
            .I3(DTRIG_N_958), .O(n21157));
    defparam i1_4_lut_adj_36.LUT_INIT = 16'hddcf;
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20696));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut_adj_37 (.I0(\adc_state[1] ), .I1(n21157), .I2(GND_net), 
            .I3(GND_net), .O(n21158));
    defparam i1_2_lut_adj_37.LUT_INIT = 16'hdddd;
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20826));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20824));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20822));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20820));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20818));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20814));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19841), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19840), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19840), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19841));
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20812));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20810));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19839), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19839), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19840));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19838), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19838), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19839));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19837), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19837), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19838));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19836), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20808));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20806));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_4 (.CI(n19836), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19837));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19835), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20702));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n19835), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19836));
    SB_DFFE CS_37 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19835));
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20804));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20802));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .D(n20800));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .D(n20798));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .D(n20796));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .D(n20794));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .D(n20792));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .D(n20790));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .D(n20788));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .D(n20786));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .D(n20784));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_958), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_863[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12803), .D(n63[7]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12803), .D(n63[6]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12803), .D(n63[5]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12803), .D(n63[4]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12803), .D(n63[3]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12803), .D(n63[2]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12803), .D(n63[1]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i30_4_lut (.I0(VAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_958), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19419_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19419_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15430_3_lut (.I0(DTRIG_N_958), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_863[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15430_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12803), .D(n63[0]), 
            .R(n15052));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i16312_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15430));   // adc_ads127.vhd(44[4] 88[13])
    defparam i16312_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12902_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15423));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12902_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12893_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15414));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12893_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12905_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15426));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12905_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12890_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15411));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12890_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12899_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15420));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12899_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20592));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20590));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15312));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12896_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15417));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12896_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12908_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15429));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12908_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12887_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15408));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12887_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12901_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15422));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12901_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12894_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15415));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12894_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12906_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21076), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15427));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12906_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (GND_net, VCC_net, \cmd_rdadcbuf[34] , \cmd_rdadcbuf[33] , 
            \adc_state[3] , \adc_state[2] , cmd_rdadctmp, \cmd_rdadcbuf[32] , 
            \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , \cmd_rdadcbuf[29] , 
            VDC_CLK, \adc_state_3__N_1288[0] , n20258, \cmd_rdadctmp[1] , 
            n20260, \cmd_rdadctmp[2] , n20262, \cmd_rdadctmp[3] , n20264, 
            \cmd_rdadctmp[4] , n20266, \cmd_rdadctmp[5] , n20268, \cmd_rdadctmp[6] , 
            n20270, \cmd_rdadctmp[7] , n20272, \cmd_rdadctmp[8] , n20274, 
            \cmd_rdadctmp[9] , n20276, \cmd_rdadctmp[10] , n20278, \cmd_rdadctmp[11] , 
            \cmd_rdadcbuf[28] , n20280, \cmd_rdadctmp[12] , n20282, 
            \cmd_rdadctmp[13] , n20284, \cmd_rdadctmp[14] , n20286, 
            \cmd_rdadctmp[15] , n20288, \cmd_rdadctmp[16] , n20298, 
            \cmd_rdadctmp[17] , n20300, \cmd_rdadctmp[18] , n20302, 
            \cmd_rdadctmp[19] , n20304, \cmd_rdadctmp[20] , n20306, 
            \cmd_rdadctmp[21] , n20308, n20488, buf_adcdata_vdc, n20490, 
            n20492, n20494, n20496, n20498, n20500, n20502, n20504, 
            n20506, n20508, n20510, n20512, n20514, n20516, n20518, 
            n20520, n20522, n20524, n20526, n20528, n20530, n20532, 
            VDC_SCLK, \cmd_rdadcbuf[27] , \cmd_rdadcbuf[26] , \cmd_rdadcbuf[25] , 
            \cmd_rdadcbuf[24] , \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , 
            \cmd_rdadcbuf[21] , \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , 
            \cmd_rdadcbuf[18] , \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , 
            \cmd_rdadcbuf[15] , \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , 
            \cmd_rdadcbuf[12] , \cmd_rdadcbuf[11] , \cmd_rdadctmp[0] , 
            n20556, n13324, n11891, clk_16MHz);
    input GND_net;
    input VCC_net;
    output \cmd_rdadcbuf[34] ;
    output \cmd_rdadcbuf[33] ;
    output \adc_state[3] ;
    output \adc_state[2] ;
    output [23:0]cmd_rdadctmp;
    output \cmd_rdadcbuf[32] ;
    output \cmd_rdadcbuf[31] ;
    output \cmd_rdadcbuf[30] ;
    output \cmd_rdadcbuf[29] ;
    output VDC_CLK;
    input \adc_state_3__N_1288[0] ;
    input n20258;
    output \cmd_rdadctmp[1] ;
    input n20260;
    output \cmd_rdadctmp[2] ;
    input n20262;
    output \cmd_rdadctmp[3] ;
    input n20264;
    output \cmd_rdadctmp[4] ;
    input n20266;
    output \cmd_rdadctmp[5] ;
    input n20268;
    output \cmd_rdadctmp[6] ;
    input n20270;
    output \cmd_rdadctmp[7] ;
    input n20272;
    output \cmd_rdadctmp[8] ;
    input n20274;
    output \cmd_rdadctmp[9] ;
    input n20276;
    output \cmd_rdadctmp[10] ;
    input n20278;
    output \cmd_rdadctmp[11] ;
    output \cmd_rdadcbuf[28] ;
    input n20280;
    output \cmd_rdadctmp[12] ;
    input n20282;
    output \cmd_rdadctmp[13] ;
    input n20284;
    output \cmd_rdadctmp[14] ;
    input n20286;
    output \cmd_rdadctmp[15] ;
    input n20288;
    output \cmd_rdadctmp[16] ;
    input n20298;
    output \cmd_rdadctmp[17] ;
    input n20300;
    output \cmd_rdadctmp[18] ;
    input n20302;
    output \cmd_rdadctmp[19] ;
    input n20304;
    output \cmd_rdadctmp[20] ;
    input n20306;
    output \cmd_rdadctmp[21] ;
    input n20308;
    input n20488;
    output [23:0]buf_adcdata_vdc;
    input n20490;
    input n20492;
    input n20494;
    input n20496;
    input n20498;
    input n20500;
    input n20502;
    input n20504;
    input n20506;
    input n20508;
    input n20510;
    input n20512;
    input n20514;
    input n20516;
    input n20518;
    input n20520;
    input n20522;
    input n20524;
    input n20526;
    input n20528;
    input n20530;
    input n20532;
    output VDC_SCLK;
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
    input n20556;
    output n13324;
    output n11891;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    
    wire n19883;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19884;
    wire [11:0]avg_cnt_11__N_1332;
    
    wire n19882, n19881, n19880, n19879, n19878, n19877;
    wire [35:0]cmd_rdadcbuf_35__N_1296;
    
    wire n19875, n19874;
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n13463, n21007, n4, n18, n21193, n16, n13368;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n10708, n6, n15175, n19873, n19872, n19871, n19870;
    wire [3:0]adc_state_3__N_1164;
    
    wire n16_adj_1450, n13276;
    wire [35:0]cmd_rdadcbuf_35__N_1212;
    
    wire n13503, n5, n11, n15273, n52, n11905, n19869, n22124, 
        n11895, n15990, n19868, n18780, n4_adj_1451, n21133, n19867;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n20998, n21211, n11494, n15, n20, n19, n21, n19866, 
        n18783, n22590, n19865, n19864, n19863, n19862, n19861, 
        n19860, n19859, n19858, n19857, n19856, n19855, n19854, 
        n19853, n19852;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19851, n19850, n19849, n19848, n19847;
    wire [7:0]n37;
    
    wire n19924, n19846, n19923, n19845, n19922, n19844, n10309, 
        n19843, n19842, n19921, n19920, n19919, n19918, n21593, 
        n21590, n20328, n21203, n22587, n7, n65, n21185, n42_adj_1452, 
        n7_adj_1453, n19887, n19886, n19885;
    
    SB_CARRY add_24_9 (.CI(n19883), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19884));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19882), .O(avg_cnt_11__N_1332[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19882), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19883));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19881), .O(avg_cnt_11__N_1332[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19881), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19882));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19880), .O(avg_cnt_11__N_1332[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19880), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19881));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19879), .O(avg_cnt_11__N_1332[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19879), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19880));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19878), .O(avg_cnt_11__N_1332[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19878), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19879));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19877), .O(avg_cnt_11__N_1332[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19877), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19878));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1332[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19877));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19875), .O(cmd_rdadcbuf_35__N_1296[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19874), .O(cmd_rdadcbuf_35__N_1296[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13463));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hf840;
    SB_LUT4 i19461_3_lut (.I0(\adc_state[3] ), .I1(n21007), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i19461_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i19428_4_lut (.I0(\adc_state[2] ), .I1(n18), .I2(n21193), 
            .I3(\adc_state[3] ), .O(n16));
    defparam i19428_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i1_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n13368));
    defparam i1_4_lut.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state[1]), .I3(n10708), .O(n6));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i12698_2_lut (.I0(n13463), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12698_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_23_35 (.CI(n19874), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19875));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19873), .O(cmd_rdadcbuf_35__N_1296[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_34 (.CI(n19873), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19874));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19872), .O(cmd_rdadcbuf_35__N_1296[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19872), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19873));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19871), .O(cmd_rdadcbuf_35__N_1296[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19871), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19872));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19870), .O(cmd_rdadcbuf_35__N_1296[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(VDC_CLK), .E(n16_adj_1450), 
            .D(adc_state_3__N_1164[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n13276), 
            .D(adc_state_3__N_1164[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13503), 
            .D(cmd_rdadcbuf_35__N_1212[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n5));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(adc_state[0]), .I1(n11), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n15273));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'hf444;
    SB_LUT4 i1_2_lut_adj_26 (.I0(adc_state[0]), .I1(\adc_state_3__N_1288[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n52));
    defparam i1_2_lut_adj_26.LUT_INIT = 16'heeee;
    SB_LUT4 i16282_4_lut (.I0(n52), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(adc_state[1]), .O(n11905));   // adc_ads1252u.vhd(31[8:17])
    defparam i16282_4_lut.LUT_INIT = 16'hc2ce;
    SB_DFFE cmd_rdadctmp_i1 (.Q(\cmd_rdadctmp[1] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20258));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(\cmd_rdadctmp[2] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20260));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(\cmd_rdadctmp[3] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20262));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(\cmd_rdadctmp[4] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20264));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(\cmd_rdadctmp[5] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20266));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(\cmd_rdadctmp[6] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20268));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(\cmd_rdadctmp[7] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20270));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(\cmd_rdadctmp[8] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20272));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20274));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20276));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20278));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_31 (.CI(n19870), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19871));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19869), .O(cmd_rdadcbuf_35__N_1296[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20280));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20282));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20284));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20286));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20288));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20298));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_30 (.CI(n19869), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19870));
    SB_DFFE cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20300));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(\cmd_rdadctmp[19] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20302));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(\cmd_rdadctmp[20] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20304));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(\cmd_rdadctmp[21] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20306));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20308));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20488));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20490));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20492));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20494));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20496));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20498));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20500));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20502));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20504));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20506));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20508));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20510));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20512));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20514));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20516));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20518));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20520));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20522));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20524));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20526));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20528));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20530));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20532));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i19397_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n22124));   // adc_ads1252u.vhd(31[8:17])
    defparam i19397_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16276_4_lut (.I0(n11895), .I1(adc_state[1]), .I2(VDC_SCLK), 
            .I3(n22124), .O(n15990));   // adc_ads1252u.vhd(31[8:17])
    defparam i16276_4_lut.LUT_INIT = 16'h7250;
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19868), .O(cmd_rdadcbuf_35__N_1296[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19868), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19869));
    SB_LUT4 i1_3_lut (.I0(n18780), .I1(adc_state[1]), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n4_adj_1451));
    defparam i1_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1296[34]), 
            .I1(\adc_state[2] ), .I2(\adc_state[3] ), .I3(n4_adj_1451), 
            .O(cmd_rdadcbuf_35__N_1212[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i1_2_lut_adj_27 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21133));
    defparam i1_2_lut_adj_27.LUT_INIT = 16'heeee;
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19867), .O(cmd_rdadcbuf_35__N_1296[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19867), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19868));
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n20998));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i18484_2_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21211));
    defparam i18484_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i3_4_lut (.I0(bit_cnt[3]), .I1(bit_cnt[4]), .I2(n11494), .I3(n21211), 
            .O(n15));   // adc_ads1252u.vhd(72[8:24])
    defparam i3_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[9]), .I1(avg_cnt[3]), .I2(avg_cnt[8]), 
            .I3(avg_cnt[6]), .O(n20));   // adc_ads1252u.vhd(104[8:24])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[0]), .I2(avg_cnt[10]), 
            .I3(avg_cnt[11]), .O(n19));   // adc_ads1252u.vhd(104[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[4]), .I1(avg_cnt[1]), .I2(avg_cnt[7]), 
            .I3(avg_cnt[2]), .O(n21));   // adc_ads1252u.vhd(104[8:24])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(n18780));   // adc_ads1252u.vhd(104[8:24])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i2_3_lut_adj_28 (.I0(adc_state[1]), .I1(\adc_state_3__N_1288[0] ), 
            .I2(adc_state[0]), .I3(GND_net), .O(n21007));
    defparam i2_3_lut_adj_28.LUT_INIT = 16'h8080;
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19866), .O(cmd_rdadcbuf_35__N_1296[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_27 (.CI(n19866), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19867));
    SB_LUT4 i19425_4_lut (.I0(\adc_state[2] ), .I1(n18), .I2(n21007), 
            .I3(\adc_state[3] ), .O(n16_adj_1450));
    defparam i19425_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i16257_3_lut (.I0(n18780), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n18783));   // adc_ads1252u.vhd(31[8:17])
    defparam i16257_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i16259_4_lut (.I0(n22590), .I1(n18783), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1164[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16259_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[6]), .I2(bit_cnt[7]), 
            .I3(bit_cnt[5]), .O(n11494));   // adc_ads1252u.vhd(57[9:24])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19865), .O(cmd_rdadcbuf_35__N_1296[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19865), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19866));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19864), .O(cmd_rdadcbuf_35__N_1296[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19864), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19865));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19863), .O(cmd_rdadcbuf_35__N_1296[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19863), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19864));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(\cmd_rdadctmp[21] ), 
            .I3(n19862), .O(cmd_rdadcbuf_35__N_1296[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19862), .I0(\cmd_rdadcbuf[21] ), .I1(\cmd_rdadctmp[21] ), 
            .CO(n19863));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(\cmd_rdadctmp[20] ), 
            .I3(n19861), .O(cmd_rdadcbuf_35__N_1296[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19861), .I0(\cmd_rdadcbuf[20] ), .I1(\cmd_rdadctmp[20] ), 
            .CO(n19862));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(\cmd_rdadctmp[19] ), 
            .I3(n19860), .O(cmd_rdadcbuf_35__N_1296[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19860), .I0(\cmd_rdadcbuf[19] ), .I1(\cmd_rdadctmp[19] ), 
            .CO(n19861));
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(\cmd_rdadctmp[18] ), 
            .I3(n19859), .O(cmd_rdadcbuf_35__N_1296[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(adc_state_3__N_1164[3]));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h0780;
    SB_CARRY add_23_20 (.CI(n19859), .I0(\cmd_rdadcbuf[18] ), .I1(\cmd_rdadctmp[18] ), 
            .CO(n19860));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(\cmd_rdadctmp[17] ), 
            .I3(n19858), .O(cmd_rdadcbuf_35__N_1296[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19858), .I0(\cmd_rdadcbuf[17] ), .I1(\cmd_rdadctmp[17] ), 
            .CO(n19859));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(\cmd_rdadctmp[16] ), 
            .I3(n19857), .O(cmd_rdadcbuf_35__N_1296[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19857), .I0(\cmd_rdadcbuf[16] ), .I1(\cmd_rdadctmp[16] ), 
            .CO(n19858));
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(\cmd_rdadctmp[15] ), 
            .I3(n19856), .O(cmd_rdadcbuf_35__N_1296[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19856), .I0(\cmd_rdadcbuf[15] ), .I1(\cmd_rdadctmp[15] ), 
            .CO(n19857));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(\cmd_rdadctmp[14] ), 
            .I3(n19855), .O(cmd_rdadcbuf_35__N_1296[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n19855), .I0(\cmd_rdadcbuf[14] ), .I1(\cmd_rdadctmp[14] ), 
            .CO(n19856));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(\cmd_rdadctmp[13] ), 
            .I3(n19854), .O(cmd_rdadcbuf_35__N_1296[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19854), .I0(\cmd_rdadcbuf[13] ), .I1(\cmd_rdadctmp[13] ), 
            .CO(n19855));
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(\cmd_rdadctmp[12] ), 
            .I3(n19853), .O(cmd_rdadcbuf_35__N_1296[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n19853), .I0(\cmd_rdadcbuf[12] ), .I1(\cmd_rdadctmp[12] ), 
            .CO(n19854));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(\cmd_rdadctmp[11] ), 
            .I3(n19852), .O(cmd_rdadcbuf_35__N_1296[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19852), .I0(\cmd_rdadcbuf[11] ), .I1(\cmd_rdadctmp[11] ), 
            .CO(n19853));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(\cmd_rdadctmp[10] ), 
            .I3(n19851), .O(cmd_rdadcbuf_35__N_1296[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19851), .I0(cmd_rdadcbuf[10]), .I1(\cmd_rdadctmp[10] ), 
            .CO(n19852));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(\cmd_rdadctmp[9] ), 
            .I3(n19850), .O(cmd_rdadcbuf_35__N_1296[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n19850), .I0(cmd_rdadcbuf[9]), .I1(\cmd_rdadctmp[9] ), 
            .CO(n19851));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(\cmd_rdadctmp[8] ), 
            .I3(n19849), .O(cmd_rdadcbuf_35__N_1296[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_10 (.CI(n19849), .I0(cmd_rdadcbuf[8]), .I1(\cmd_rdadctmp[8] ), 
            .CO(n19850));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(\cmd_rdadctmp[7] ), 
            .I3(n19848), .O(cmd_rdadcbuf_35__N_1296[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19848), .I0(cmd_rdadcbuf[7]), .I1(\cmd_rdadctmp[7] ), 
            .CO(n19849));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(\cmd_rdadctmp[6] ), 
            .I3(n19847), .O(cmd_rdadcbuf_35__N_1296[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3771_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n19924), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_8 (.CI(n19847), .I0(cmd_rdadcbuf[6]), .I1(\cmd_rdadctmp[6] ), 
            .CO(n19848));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(\cmd_rdadctmp[5] ), 
            .I3(n19846), .O(cmd_rdadcbuf_35__N_1296[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3771_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n19923), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19846), .I0(cmd_rdadcbuf[5]), .I1(\cmd_rdadctmp[5] ), 
            .CO(n19847));
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(\cmd_rdadctmp[4] ), 
            .I3(n19845), .O(cmd_rdadcbuf_35__N_1296[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19845), .I0(cmd_rdadcbuf[4]), .I1(\cmd_rdadctmp[4] ), 
            .CO(n19846));
    SB_CARRY bit_cnt_3771_add_4_8 (.CI(n19923), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n19924));
    SB_LUT4 bit_cnt_3771_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n19922), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(\cmd_rdadctmp[3] ), 
            .I3(n19844), .O(cmd_rdadcbuf_35__N_1296[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_5 (.CI(n19844), .I0(cmd_rdadcbuf[3]), .I1(\cmd_rdadctmp[3] ), 
            .CO(n19845));
    SB_CARRY bit_cnt_3771_add_4_7 (.CI(n19922), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n19923));
    SB_LUT4 i1_4_lut_4_lut_adj_29 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), 
            .I2(n10309), .I3(n21193), .O(n13276));
    defparam i1_4_lut_4_lut_adj_29.LUT_INIT = 16'hdcfe;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(\adc_state[3] ), .O(n13503));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf580;
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(\cmd_rdadctmp[2] ), 
            .I3(n19843), .O(cmd_rdadcbuf_35__N_1296[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19843), .I0(cmd_rdadcbuf[2]), .I1(\cmd_rdadctmp[2] ), 
            .CO(n19844));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(\cmd_rdadctmp[1] ), 
            .I3(n19842), .O(cmd_rdadcbuf_35__N_1296[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19842), .I0(cmd_rdadcbuf[1]), .I1(\cmd_rdadctmp[1] ), 
            .CO(n19843));
    SB_LUT4 bit_cnt_3771_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n19921), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1296[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n19842));
    SB_CARRY bit_cnt_3771_add_4_6 (.CI(n19921), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n19922));
    SB_LUT4 bit_cnt_3771_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n19920), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3771_add_4_5 (.CI(n19920), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n19921));
    SB_LUT4 bit_cnt_3771_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19919), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3771_add_4_4 (.CI(n19919), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n19920));
    SB_LUT4 bit_cnt_3771_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19918), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3771_add_4_3 (.CI(n19918), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19919));
    SB_LUT4 bit_cnt_3771_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3771_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3771_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19918));
    SB_LUT4 i19237_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21593));
    defparam i19237_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i19248_4_lut (.I0(n21593), .I1(adc_state[0]), .I2(n20998), 
            .I3(bit_cnt[4]), .O(n21590));
    defparam i19248_4_lut.LUT_INIT = 16'hc8c0;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20328));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20556));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n15990));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i18476_2_lut (.I0(bit_cnt[4]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21203));
    defparam i18476_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i3_4_lut_adj_30 (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(n11494), 
            .I3(n21203), .O(n10708));
    defparam i3_4_lut_adj_30.LUT_INIT = 16'hfeff;
    SB_LUT4 i19395_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n11895));
    defparam i19395_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_DFFESR bit_cnt_3771__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11905), 
            .D(n37[7]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11905), 
            .D(n37[6]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11905), 
            .D(n37[5]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11905), 
            .D(n37[4]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11905), 
            .D(n37[3]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11905), 
            .D(n37[2]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3771__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11905), 
            .D(n37[1]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10708), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n22587));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 n22587_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21590), .I3(n22587), .O(n22590));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam n22587_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i1_4_lut_4_lut_adj_31 (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1288[0] ), .O(adc_state_3__N_1164[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_4_lut_4_lut_adj_31.LUT_INIT = 16'h1514;
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[11]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i16264_3_lut (.I0(\adc_state_3__N_1288[0] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(31[8:17])
    defparam i16264_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i1_4_lut_adj_32 (.I0(\adc_state[2] ), .I1(n7), .I2(n21193), 
            .I3(\adc_state[3] ), .O(n65));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_32.LUT_INIT = 16'hafee;
    SB_LUT4 i18458_2_lut (.I0(n15), .I1(adc_state[0]), .I2(GND_net), .I3(GND_net), 
            .O(n21185));
    defparam i18458_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_33 (.I0(n21185), .I1(n65), .I2(adc_state[1]), 
            .I3(n21133), .O(n42_adj_1452));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_33.LUT_INIT = 16'hcc4c;
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[10]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[9]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[8]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[7]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[6]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[5]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[4]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[3]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[2]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[1]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[33]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[32]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[31]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[30]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[29]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[28]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[27]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[26]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[25]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[24]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[23]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[22]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[21]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[20]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[19]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[18]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[17]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[16]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[15]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[14]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[13]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[12]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[11]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[10]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[9]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[8]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[7]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[6]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[5]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[4]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[3]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[2]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[1]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13368), 
            .D(n6), .R(n5));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i7791_3_lut_4_lut (.I0(\adc_state_3__N_1288[0] ), .I1(n15), 
            .I2(adc_state[1]), .I3(adc_state[0]), .O(n10309));
    defparam i7791_3_lut_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 i39_3_lut_4_lut (.I0(\adc_state_3__N_1288[0] ), .I1(n15), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n18));
    defparam i39_3_lut_4_lut.LUT_INIT = 16'hca55;
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n16), 
            .D(n7_adj_1453), .R(n4));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i18466_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state_3__N_1288[0] ), 
            .I3(GND_net), .O(n21193));
    defparam i18466_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i12091_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n7_adj_1453));
    defparam i12091_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i24_3_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1288[0] ), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n11));
    defparam i24_3_lut_4_lut.LUT_INIT = 16'h04f4;
    SB_LUT4 i12_3_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1288[0] ), 
            .I2(n13324), .I3(\cmd_rdadctmp[0] ), .O(n20328));
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 i1_3_lut_4_lut_adj_34 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13324));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_4_lut_adj_34.LUT_INIT = 16'hf200;
    SB_LUT4 i1_3_lut_4_lut_adj_35 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[2] ), .I3(\adc_state[3] ), .O(n11891));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i1_3_lut_4_lut_adj_35.LUT_INIT = 16'hf200;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19887), .O(avg_cnt_11__N_1332[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19886), .O(avg_cnt_11__N_1332[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19886), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19887));
    SB_DFFESR bit_cnt_3771__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11905), 
            .D(n37[0]), .R(n15273));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13463), .D(avg_cnt_11__N_1332[0]), 
            .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13463), 
            .D(cmd_rdadcbuf_35__N_1296[0]), .R(n15175));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n42_adj_1452), 
            .D(adc_state_3__N_1164[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19885), .O(avg_cnt_11__N_1332[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n19885), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19886));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19884), .O(avg_cnt_11__N_1332[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19884), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19885));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19883), .O(avg_cnt_11__N_1332[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    vdc_gen_clk genclk (.clk_16MHz(clk_16MHz), .VDC_CLK(VDC_CLK), .GND_net(GND_net), 
            .VCC_net(VCC_net));   // adc_ads1252u.vhd(136[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (clk_16MHz, VDC_CLK, GND_net, VCC_net);
    input clk_16MHz;
    output VDC_CLK;
    input GND_net;
    input VCC_net;
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    
    wire n2;
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire div_state_1__N_1432, n14894, n11900;
    wire [1:0]div_state_1__N_1345;
    
    wire n6;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n28, n26, n27, n21600;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1447, n26_adj_1448, n27_adj_1449, n21603, n21598, 
        n21597;
    wire [16:0]t0on_15__N_1379;
    
    wire n19917, n19916, n19915, n19914, n19913, n19912, n19911, 
        n19910, n19909, n19908, n19907, n19906, n19905, n19904, 
        n19903;
    wire [16:0]t0off_15__N_1395;
    
    wire n19902, n19901, n19900, n19899, n19898, n19897, n19896, 
        n19895, n19894, n19893, n19892, n19891, n19890, n19889, 
        n19888;
    
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1432));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19414_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n14894));
    defparam i19414_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i19403_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11900));
    defparam i19403_2_lut.LUT_INIT = 16'h9999;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1345[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1432));   // vdc_gen_clk.vhd(31[4] 55[13])
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
    SB_LUT4 i19033_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21600));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19033_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_23 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1447));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_23.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_24 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1448));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_24.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_25 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1449));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_25.LUT_INIT = 16'hfffe;
    SB_LUT4 i19022_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21603));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19022_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19142_4_lut (.I0(n21600), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21598));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19142_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19193_4_lut (.I0(n21603), .I1(n27_adj_1449), .I2(n26_adj_1448), 
            .I3(n28_adj_1447), .O(n21597));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19193_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12090_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1345[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12090_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19917), .O(t0on_15__N_1379[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19916), .O(t0on_15__N_1379[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19916), .I0(t0on[14]), .I1(VCC_net), .CO(n19917));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19915), .O(t0on_15__N_1379[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19915), .I0(t0on[13]), .I1(VCC_net), .CO(n19916));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19914), .O(t0on_15__N_1379[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19914), .I0(t0on[12]), .I1(VCC_net), .CO(n19915));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19913), .O(t0on_15__N_1379[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19913), .I0(t0on[11]), .I1(VCC_net), .CO(n19914));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19912), .O(t0on_15__N_1379[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19912), .I0(t0on[10]), .I1(VCC_net), .CO(n19913));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19911), 
            .O(t0on_15__N_1379[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19911), .I0(t0on[9]), .I1(VCC_net), .CO(n19912));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19910), 
            .O(t0on_15__N_1379[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19910), .I0(t0on[8]), .I1(VCC_net), .CO(n19911));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19909), 
            .O(t0on_15__N_1379[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19909), .I0(t0on[7]), .I1(VCC_net), .CO(n19910));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19908), 
            .O(t0on_15__N_1379[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19908), .I0(t0on[6]), .I1(VCC_net), .CO(n19909));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19907), 
            .O(t0on_15__N_1379[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19907), .I0(t0on[5]), .I1(VCC_net), .CO(n19908));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19906), 
            .O(t0on_15__N_1379[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19906), .I0(t0on[4]), .I1(VCC_net), .CO(n19907));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19905), 
            .O(t0on_15__N_1379[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19905), .I0(t0on[3]), .I1(VCC_net), .CO(n19906));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19904), 
            .O(t0on_15__N_1379[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19904), .I0(t0on[2]), .I1(VCC_net), .CO(n19905));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19903), 
            .O(t0on_15__N_1379[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19903), .I0(t0on[1]), .I1(VCC_net), .CO(n19904));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1379[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19903));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19902), .O(t0off_15__N_1395[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19901), .O(t0off_15__N_1395[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19901), .I0(t0off[14]), .I1(VCC_net), .CO(n19902));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19900), .O(t0off_15__N_1395[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19900), .I0(t0off[13]), .I1(VCC_net), .CO(n19901));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19899), .O(t0off_15__N_1395[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19899), .I0(t0off[12]), .I1(VCC_net), .CO(n19900));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19898), .O(t0off_15__N_1395[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19898), .I0(t0off[11]), .I1(VCC_net), .CO(n19899));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19897), .O(t0off_15__N_1395[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19897), .I0(t0off[10]), .I1(VCC_net), .CO(n19898));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19896), .O(t0off_15__N_1395[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19896), .I0(t0off[9]), .I1(VCC_net), .CO(n19897));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19895), .O(t0off_15__N_1395[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19895), .I0(t0off[8]), .I1(VCC_net), .CO(n19896));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19894), 
            .O(t0off_15__N_1395[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19894), .I0(t0off[7]), .I1(VCC_net), .CO(n19895));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19893), 
            .O(t0off_15__N_1395[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19893), .I0(t0off[6]), .I1(VCC_net), .CO(n19894));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19892), 
            .O(t0off_15__N_1395[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19892), .I0(t0off[5]), .I1(VCC_net), .CO(n19893));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[15]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[14]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[13]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[12]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[11]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[10]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[9]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[8]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[7]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19891), 
            .O(t0off_15__N_1395[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19891), .I0(t0off[4]), .I1(VCC_net), .CO(n19892));
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[6]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[5]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[4]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[3]), 
            .S(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[2]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[1]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[15]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[14]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19890), 
            .O(t0off_15__N_1395[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[13]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[12]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[11]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[10]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[9]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[8]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[7]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[6]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[5]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[4]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[3]), .S(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[2]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[1]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_CARRY add_33_5 (.CI(n19890), .I0(t0off[3]), .I1(VCC_net), .CO(n19891));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19889), 
            .O(t0off_15__N_1395[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19889), .I0(t0off[2]), .I1(VCC_net), .CO(n19890));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19888), 
            .O(t0off_15__N_1395[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19468_2_lut_4_lut (.I0(n21597), .I1(n21598), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19468_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 i19445_2_lut_4_lut (.I0(n21597), .I1(n21598), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19445_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_CARRY add_33_3 (.CI(n19888), .I0(t0off[1]), .I1(VCC_net), .CO(n19889));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1395[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19888));
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11900), .D(t0off_15__N_1395[0]), 
            .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1432), 
            .D(t0on_15__N_1379[0]), .R(n14894));   // vdc_gen_clk.vhd(30[3] 56[10])
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (\adc_state[2] , RTD_CS, clk_RTD, GND_net, RTD_SCLK, 
            adress, buf_cfgRTD, n13212, n20138, VCC_net, n20140, 
            n20142, n20144, n20146, n20148, n20392, read_buf, n20396, 
            n20400, n20404, n14692, n20408, n20412, RTD_DRDY, n13054, 
            n20416, n20424, n20428, n20434, n20438, n20442, n20446, 
            n20450, n20452, buf_readRTD, n20454, n20456, n20458, 
            n20460, n20462, n20464, n20466, n20468, n20470, n20472, 
            n20474, n20476, n20478, n11856, n1, n20552, n20554, 
            RTD_SDI, \adress[0] );
    output \adc_state[2] ;
    output RTD_CS;
    input clk_RTD;
    input GND_net;
    output RTD_SCLK;
    output [7:0]adress;
    input [7:0]buf_cfgRTD;
    output n13212;
    input n20138;
    input VCC_net;
    input n20140;
    input n20142;
    input n20144;
    input n20146;
    input n20148;
    input n20392;
    output [15:0]read_buf;
    input n20396;
    input n20400;
    input n20404;
    output n14692;
    input n20408;
    input n20412;
    input RTD_DRDY;
    output n13054;
    input n20416;
    input n20424;
    input n20428;
    input n20434;
    input n20438;
    input n20442;
    input n20446;
    input n20450;
    input n20452;
    output [15:0]buf_readRTD;
    input n20454;
    input n20456;
    input n20458;
    input n20460;
    input n20462;
    input n20464;
    input n20466;
    input n20468;
    input n20470;
    input n20472;
    input n20474;
    input n20476;
    input n20478;
    output n11856;
    output n1;
    input n20552;
    input n20554;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(265[9:16])
    
    wire mode, n4;
    wire [3:0]adc_state_3__N_1114;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    
    wire n21387, n7889;
    wire [3:0]adc_state_3__N_1038;
    
    wire n7, n21199, CS_N_1131, n11829;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    
    wire n18043, SCLK_N_1130, n8, n11868, n16766, n20370, n21494, 
        n21492, n18092, n19026, n7_adj_1435;
    wire [7:0]adress_7__N_1086;
    
    wire n3;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7_adj_1436, n7_adj_1437, n7_adj_1438, n7_adj_1439, n7_adj_1440, 
        n7_adj_1441, n13137, n15115, n21181, n14, n11, n7_adj_1442, 
        n11860;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n3_adj_1443, n15676;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n20338, n15670, n15667, n20336, n15661, n15658, n12, 
        n19, n21036, n10, n11_adj_1444, n9, n20536;
    wire [3:0]n21;
    
    wire n20538, n19032, n21471, n12_adj_1445, n21061, n20246, n16008, 
        n13090, n11915, n15280, n7_adj_1446, n16792;
    
    SB_LUT4 i19032_4_lut (.I0(mode), .I1(n4), .I2(adc_state_3__N_1114[1]), 
            .I3(adc_state[3]), .O(n21387));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19032_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i21_4_lut (.I0(n21387), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(n7889), .O(adc_state_3__N_1038[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i21_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7), .I1(n21199), .I2(adc_state[3]), 
            .I3(adc_state[0]), .O(adc_state_3__N_1038[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11829), .D(CS_N_1131));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n18043), .I2(GND_net), .I3(GND_net), 
            .O(adc_state_3__N_1114[1]));   // adc_max31865.vhd(104[8:23])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1130));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(clk_RTD), .E(n11868), .D(adc_state_3__N_1038[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n11868), .D(adc_state_3__N_1038[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11868), 
            .D(adc_state_3__N_1038[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n11868), .D(adc_state_3__N_1038[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n18043));
    defparam i2_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i3_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(n21199), 
            .I3(n16766), .O(n11868));
    defparam i3_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n20370));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h8880;
    SB_LUT4 i19370_3_lut (.I0(bit_cnt[3]), .I1(n18043), .I2(adc_state[1]), 
            .I3(GND_net), .O(n21494));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19370_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i19209_4_lut (.I0(bit_cnt[3]), .I1(mode), .I2(n18043), .I3(adc_state[1]), 
            .O(n21492));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19209_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i14_4_lut (.I0(n21494), .I1(n7889), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n18092));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i14_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i7_4_lut (.I0(n21492), .I1(n19026), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1435));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i7_4_lut.LUT_INIT = 16'h0acf;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i15_3_lut (.I0(n7_adj_1435), .I1(n18092), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1038[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1_2_lut_adj_4 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_adj_4.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1086[7]), 
            .I1(adress[6]), .I2(adc_state[1]), .I3(adc_state[0]), .O(n3));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1436));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1437));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1438));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1439));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1440));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(adc_state[1]), .O(n13212));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc08d;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1441));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(SCLK_N_1130));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i12599_2_lut (.I0(n13137), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15115));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12599_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18454_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21181));
    defparam i18454_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30_4_lut (.I0(n21181), .I1(n14), .I2(\adc_state[2] ), .I3(n11), 
            .O(n13137));
    defparam i30_4_lut.LUT_INIT = 16'hc5c0;
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n20138));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n20140));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n20142));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1442));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n20144));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n20146));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n11860));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'hed02;
    SB_LUT4 i1_4_lut_4_lut_adj_5 (.I0(adress_7__N_1086[7]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(adress_c[7]), .O(n3_adj_1443));
    defparam i1_4_lut_4_lut_adj_5.LUT_INIT = 16'hf707;
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n20148));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15676));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20338));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15670));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15667));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20336));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15661));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15658));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n20392));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20396));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20400));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_adj_6 (.I0(adc_state[0]), .I1(adress_7__N_1086[7]), 
            .I2(GND_net), .I3(GND_net), .O(n11));
    defparam i1_2_lut_adj_6.LUT_INIT = 16'hdddd;
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n20404));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12177_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14692));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12177_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20408));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20412));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i34_4_lut (.I0(RTD_DRDY), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(n11), .O(n19));
    defparam i34_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 i35_4_lut (.I0(n19), .I1(n21036), .I2(adc_state[3]), .I3(\adc_state[2] ), 
            .O(n13054));
    defparam i35_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20416));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20424));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i3_4_lut_adj_7 (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11_adj_1444));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut_adj_7.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(cfg_buf[0]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11_adj_1444), .I2(n10), .I3(n12), 
            .O(adress_7__N_1086[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_8 (.I0(adress_7__N_1086[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16766));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_8.LUT_INIT = 16'hbbbb;
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20536));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20428));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_adj_9 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7889));
    defparam i1_2_lut_adj_9.LUT_INIT = 16'heeee;
    SB_LUT4 i18472_2_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21199));
    defparam i18472_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20434));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20438));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17235_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17235_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20442));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20446));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20450));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20452));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20454));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20456));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20458));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20460));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20462));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20464));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20538));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20466));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20468));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20470));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20472));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20474));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20476));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20478));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11856), 
            .I3(\adc_state[2] ), .O(n20538));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i16510_3_lut (.I0(mode), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n19032));   // adc_max31865.vhd(24[8:17])
    defparam i16510_3_lut.LUT_INIT = 16'hcbcb;
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n19032), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(n19026), .O(adc_state_3__N_1038[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h3035;
    SB_LUT4 i19122_3_lut (.I0(RTD_DRDY), .I1(n21199), .I2(adc_state[0]), 
            .I3(GND_net), .O(n21471));   // adc_max31865.vhd(24[8:17])
    defparam i19122_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i1_4_lut_adj_10 (.I0(mode), .I1(n21471), .I2(\adc_state[2] ), 
            .I3(adc_state[3]), .O(n12_adj_1445));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_10.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_11 (.I0(n21061), .I1(n12_adj_1445), .I2(adress_7__N_1086[7]), 
            .I3(n21199), .O(n20246));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_adj_11.LUT_INIT = 16'hccec;
    SB_LUT4 i12_4_lut_adj_12 (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13212), 
            .I3(n1), .O(n20536));
    defparam i12_4_lut_adj_12.LUT_INIT = 16'hca0a;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n20246));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16008));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20552));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20554));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i13487_4_lut_4_lut (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16008));   // adc_max31865.vhd(24[8:17])
    defparam i13487_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_13 (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[7]), 
            .I3(cfg_buf[7]), .O(n15658));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_13.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_14 (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15661));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_14.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_15 (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15667));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_15.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_16 (.I0(adc_state[3]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n11856));
    defparam i1_4_lut_4_lut_adj_16.LUT_INIT = 16'ha880;
    SB_LUT4 i1_4_lut_4_lut_adj_17 (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[3]), 
            .I3(cfg_buf[3]), .O(n15670));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_17.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_18 (.I0(n21061), .I1(n13090), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15676));   // adc_max31865.vhd(24[8:17])
    defparam i1_4_lut_4_lut_adj_18.LUT_INIT = 16'hb380;
    SB_LUT4 i19471_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n11915));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19471_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n15280));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'he412;
    SB_DFFESR bit_cnt_3769__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11915), 
            .D(n21[3]), .R(n15280));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3769__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11915), 
            .D(n21[2]), .R(n15280));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3769__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11915), 
            .D(n21[1]), .R(n15280));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i19456_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(n16766), .O(CS_N_1131));
    defparam i19456_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i14257_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state[0]), .O(n7_adj_1446));   // adc_max31865.vhd(24[8:17])
    defparam i14257_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15460_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n16792));
    defparam i15460_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i19396_3_lut_3_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), 
            .I2(adc_state[3]), .I3(GND_net), .O(n11829));
    defparam i19396_3_lut_3_lut.LUT_INIT = 16'ha1a1;
    SB_LUT4 i2_3_lut_adj_19 (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n1));   // adc_max31865.vhd(39[4] 147[13])
    defparam i2_3_lut_adj_19.LUT_INIT = 16'h4040;
    SB_LUT4 i17233_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17233_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13137), .D(n7_adj_1442), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13137), .D(n7_adj_1441), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13137), .D(n7_adj_1440), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13137), .D(n7_adj_1439), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13137), .D(n7_adj_1438), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13137), .D(n7_adj_1437), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13137), .D(n7_adj_1436), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13054), .D(n3), 
            .R(n20370));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n21036));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i17242_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17242_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i11_4_lut (.I0(cfg_buf[5]), .I1(n21061), .I2(n13090), .I3(buf_cfgRTD[5]), 
            .O(n20336));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i17249_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17249_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR bit_cnt_3769__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11915), 
            .D(n21[0]), .R(n15280));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i31_4_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n14));
    defparam i31_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11860), .D(n16792), 
            .R(n20370));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13137), .D(n7_adj_1446), 
            .R(n15115));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13054), .D(n3_adj_1443), 
            .R(n20370));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19474_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n8));
    defparam i19474_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i11_4_lut_adj_20 (.I0(cfg_buf[2]), .I1(n21061), .I2(n13090), 
            .I3(buf_cfgRTD[2]), .O(n20338));   // adc_max31865.vhd(24[8:17])
    defparam i11_4_lut_adj_20.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_21 (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21061));   // adc_max31865.vhd(24[8:17])
    defparam i1_2_lut_adj_21.LUT_INIT = 16'h2222;
    SB_LUT4 i22_4_lut (.I0(n11), .I1(n21036), .I2(adc_state[3]), .I3(n21199), 
            .O(n13090));
    defparam i22_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_2_lut_3_lut_adj_22 (.I0(adc_state[1]), .I1(bit_cnt[3]), .I2(n18043), 
            .I3(GND_net), .O(n19026));   // adc_max31865.vhd(39[4] 147[13])
    defparam i1_2_lut_3_lut_adj_22.LUT_INIT = 16'hdfdf;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1114[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut_4_lut.LUT_INIT = 16'hf5da;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, DDS_CS, n20668, VCC_net, 
            GND_net, \bit_cnt[0] , \tmp_buf[15] , trig_dds0, buf_dds0, 
            n15092, n16018, n15317, DDS_MOSI, n15315, DDS_SCK);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input n20668;
    input VCC_net;
    input GND_net;
    output \bit_cnt[0] ;
    output \tmp_buf[15] ;
    input trig_dds0;
    input [15:0]buf_dds0;
    output n15092;
    input n16018;
    input n15317;
    output DDS_MOSI;
    input n15315;
    output DDS_SCK;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]dds_state_2__N_964;
    
    wire n9, CS_N_1017, n9_adj_1434;
    wire [15:0]tmp_buf_15__N_967;
    
    wire n12895;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n7967;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_1012;
    
    wire n10, n21744;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_964[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1434), .D(CS_N_1017));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20668));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12246_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7967));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12246_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3830_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_1012[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3830_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12895), .D(tmp_buf_15__N_967[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12895), 
            .D(tmp_buf_15__N_967[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19394_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n12895));
    defparam i19394_4_lut.LUT_INIT = 16'hcc46;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1434));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_1017));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19478_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19478_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[1]), .I2(dds_state[0]), 
            .I3(bit_cnt[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19199_2_lut (.I0(bit_cnt[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21744));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19199_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12268_4_lut (.I0(dds_state[0]), .I1(n21744), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_964[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12268_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 i12572_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12572_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16018));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3837_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_1012[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3837_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1012[3]), .R(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1012[2]), .R(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1012[1]), .R(n15092));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7967), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i3844_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_1012[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3844_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15317));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15315));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (\dds_state_2__N_964[0] , dds_state, clk_32MHz, DDS_CS1, 
            n20670, VCC_net, GND_net, \tmp_buf[15] , trig_dds1, buf_dds1, 
            bit_cnt, \bit_cnt_3__N_1012[3] , \bit_cnt_3__N_1012[2] , \bit_cnt_3__N_1012[1] , 
            n8, n15319, DDS_MOSI1, n15316, DDS_SCK1);
    input \dds_state_2__N_964[0] ;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input n20670;
    input VCC_net;
    input GND_net;
    output \tmp_buf[15] ;
    input trig_dds1;
    input [15:0]buf_dds1;
    output [3:0]bit_cnt;
    input \bit_cnt_3__N_1012[3] ;
    input \bit_cnt_3__N_1012[2] ;
    input \bit_cnt_3__N_1012[1] ;
    output n8;
    input n15319;
    output DDS_MOSI1;
    input n15316;
    output DDS_SCK1;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    
    wire n9, CS_N_1017, n9_adj_1433;
    wire [15:0]tmp_buf_15__N_967;
    
    wire n13005;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n7929, n16974, n17006;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_964[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1433), .D(CS_N_1017));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20670));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12247_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7929));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12247_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_3_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(dds_state[0]), 
            .I3(GND_net), .O(n16974));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n13005), .D(tmp_buf_15__N_967[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n13005), 
            .D(tmp_buf_15__N_967[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19393_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n13005));
    defparam i19393_4_lut.LUT_INIT = 16'hf034;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1433));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_1017));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19409_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19409_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n17006));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_967[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1012[3] ), .R(n16974));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1012[2] ), .R(n16974));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1012[1] ), .R(n16974));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7929), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i14488_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(dds_state[1]), 
            .I3(bit_cnt[0]), .O(n17006));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i14488_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i3_3_lut_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[1]), .O(n8));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15319));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15316));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[0] , clk_32MHz, DTRIG_N_958, GND_net, 
            IAC_DRDY, \adc_state[1] , n21079, cmd_rdadctmp, buf_adcdata_iac, 
            n21082, n12771, acadc_trig, n20698, VCC_net, n11, IAC_CS, 
            n20782, n20724, n20726, n20728, n20730, n20690, n20732, 
            n20734, n20736, n20738, n20740, n20742, n20780, n20744, 
            n20746, n20748, n20750, n20752, n20754, n20756, n20758, 
            n20760, n20762, n20764, n20766, n20768, n20778, n20770, 
            n20772, n20774, n20776, n20588, IAC_SCLK, n20586, acadc_dtrig_i);
    output \adc_state[0] ;
    input clk_32MHz;
    output DTRIG_N_958;
    input GND_net;
    input IAC_DRDY;
    output \adc_state[1] ;
    input n21079;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_iac;
    input n21082;
    output n12771;
    input acadc_trig;
    input n20698;
    input VCC_net;
    input n11;
    output IAC_CS;
    input n20782;
    input n20724;
    input n20726;
    input n20728;
    input n20730;
    input n20690;
    input n20732;
    input n20734;
    input n20736;
    input n20738;
    input n20740;
    input n20742;
    input n20780;
    input n20744;
    input n20746;
    input n20748;
    input n20750;
    input n20752;
    input n20754;
    input n20756;
    input n20758;
    input n20760;
    input n20762;
    input n20764;
    input n20766;
    input n20768;
    input n20778;
    input n20770;
    input n20772;
    input n20774;
    input n20776;
    input n20588;
    output IAC_SCLK;
    input n20586;
    output acadc_dtrig_i;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]adc_state_2__N_863;
    
    wire n21160, n12698, n15014, n12, n15395, n15406, n15403, 
        n15400, n15391, n15404, n15388, n15397, n15394, n15407, 
        n15405, n15402, n15401, n15399, n15398, n15396, n15393, 
        n15392, n15390, n15389, n15387, n15386, n15385, n21159;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n16, n21458;
    wire [7:0]n63;
    
    wire n19834, n19833, n19832, n19831, n19830, n19829, n19828, 
        n21457, n15309, n17;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21160), 
            .D(adc_state_2__N_863[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12498_2_lut (.I0(n12698), .I1(DTRIG_N_958), .I2(GND_net), 
            .I3(GND_net), .O(n15014));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12498_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(IAC_DRDY), .I2(DTRIG_N_958), 
            .I3(\adc_state[1] ), .O(n12698));
    defparam i1_4_lut.LUT_INIT = 16'h0150;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_863[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_958), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_863[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12874_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15395));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12874_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i14640_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15406));   // adc_ads127.vhd(44[4] 88[13])
    defparam i14640_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12882_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15403));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12882_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12879_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15400));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12879_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12870_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15391));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12870_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12883_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15404));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12883_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12867_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15388));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12867_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12876_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15397));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12876_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12873_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15394));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12873_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12886_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15407));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12886_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15407));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15406));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15405));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15404));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15403));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15402));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15401));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15400));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15399));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15398));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15397));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15396));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15395));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15394));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15393));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15392));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15391));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15390));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15389));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15388));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15387));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15386));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15385));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12864_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15385));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12864_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12878_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15399));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12878_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_3_lut (.I0(IAC_DRDY), .I1(n21082), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n12771));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 i12871_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15392));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12871_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_4_lut_adj_3 (.I0(acadc_trig), .I1(DTRIG_N_958), .I2(IAC_DRDY), 
            .I3(\adc_state[0] ), .O(n21159));
    defparam i1_4_lut_adj_3.LUT_INIT = 16'hff47;
    SB_LUT4 i12884_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15405));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12884_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12866_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15387));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12866_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12877_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15398));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12877_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n21159), .I2(GND_net), 
            .I3(GND_net), .O(n21160));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i12872_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15393));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12872_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12865_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15386));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12865_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12880_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15401));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12880_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i19194_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n21458));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19194_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i12869_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15390));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12869_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20698));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19834), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19833), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n19833), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19834));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19832), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n19832), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19833));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19831), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n19831), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19832));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19830), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n19830), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19831));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19829), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n19829), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19830));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19828), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n19828), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19829));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19828));
    SB_LUT4 i19307_4_lut (.I0(n21458), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n21457));   // adc_ads127.vhd(44[4] 88[13])
    defparam i19307_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n21457), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_958), .I3(\adc_state[1] ), .O(adc_state_2__N_863[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12881_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15402));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12881_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12868_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15389));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12868_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n20782));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20724));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20726));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20728));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20730));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .D(n20690));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20732));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20734));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20736));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20738));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20740));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20742));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .D(n20780));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20746));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20748));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20750));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20752));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20754));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12875_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15396));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12875_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20756));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20758));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20760));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20762));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20764));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20766));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12788_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21079), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15309));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12788_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20768));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n20778));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20770));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20772));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20774));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20776));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12698), .D(n63[7]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12698), .D(n63[6]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12698), .D(n63[5]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12698), .D(n63[4]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12698), .D(n63[3]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12698), .D(n63[2]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12698), .D(n63[1]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_958), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_863[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(IAC_DRDY), .I1(acadc_trig), .I2(DTRIG_N_958), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i19411_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i19411_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15433_3_lut (.I0(DTRIG_N_958), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_863[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i15433_3_lut.LUT_INIT = 16'h2323;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12698), .D(n63[0]), 
            .R(n15014));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20588));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20586));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15309));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
