// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Nov 24 16:09:51 2025
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
    output ICE_IOB_95;   // zim_main.vhd(115[3:13])
    input ICE_IOB_94;   // zim_main.vhd(116[3:13])
    input ICE_IOB_91;   // zim_main.vhd(117[3:13])
    input ICE_IOB_82;   // zim_main.vhd(118[3:13])
    output ICE_GPMO_1;   // zim_main.vhd(121[3:13])
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
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(272[9:16])
    
    wire VCC_net, cs_sync1, cs_sync2, cs_falling_pend;
    wire [1:0]cs_mask_cnt;   // zim_main.vhd(242[9:20])
    
    wire reset_int;
    wire [7:0]comm_tx_buf;   // zim_main.vhd(245[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zim_main.vhd(247[9:20])
    wire [3:0]comm_state;   // zim_main.vhd(250[9:19])
    wire [7:0]comm_cmd;   // zim_main.vhd(252[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[1] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[2] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[3] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[4] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[5] ;   // zim_main.vhd(255[9:17])
    wire [7:0]\comm_buf[6] ;   // zim_main.vhd(255[9:17])
    wire [2:0]comm_index;   // zim_main.vhd(256[9:19])
    wire [2:0]comm_length;   // zim_main.vhd(257[9:20])
    wire [7:0]dds0_mclkcnt;   // zim_main.vhd(260[9:21])
    
    wire dds0_mclk;
    wire [15:0]buf_dds0;   // zim_main.vhd(263[9:17])
    
    wire trig_dds0;
    wire [15:0]buf_dds1;   // zim_main.vhd(268[9:17])
    
    wire trig_dds1;
    wire [3:0]clk_cnt;   // zim_main.vhd(273[9:16])
    wire [7:0]buf_cfgRTD;   // zim_main.vhd(274[9:19])
    wire [15:0]buf_readRTD;   // zim_main.vhd(275[9:20])
    
    wire acadc_dtrig_i, acadc_dtrig_v, eis_adc_trig;
    wire [15:0]acadc_skipcnt;   // zim_main.vhd(285[9:22])
    wire [15:0]acadc_skipCount;   // zim_main.vhd(286[9:24])
    wire [23:0]buf_adcdata_iac;   // zim_main.vhd(293[9:24])
    wire [23:0]buf_adcdata_vac;   // zim_main.vhd(294[9:24])
    wire [2:0]eis_state;   // zim_main.vhd(297[9:18])
    
    wire tacadc_rst, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zim_main.vhd(306[9:21])
    wire [47:0]buf_data_vac;
    wire [8:0]data_count;   // zim_main.vhd(311[9:19])
    wire [15:0]data_cntvec;   // zim_main.vhd(312[9:20])
    wire [8:0]data_index;   // zim_main.vhd(313[9:19])
    wire [15:0]data_idxvec;   // zim_main.vhd(314[9:20])
    wire [23:0]buf_adcdata_vdc;   // zim_main.vhd(322[9:24])
    wire [7:0]buf_control;   // zim_main.vhd(325[9:20])
    
    wire wdtick_flag, flagcntwd;
    wire [27:0]wdtick_cnt;   // zim_main.vhd(329[9:19])
    
    wire n5, clk_RTD_N_709, n9, n13388, n9_adj_1438, wdtick_flag_N_310, 
        n19865, n12, n19895, dds0_mclk_N_702, iac_raw_buf_N_730, iac_raw_buf_N_728, 
        n418, n419, n420, n421, n422, n423, n424, n425, n426, 
        n429, n430, n431, n432, n433, n434, n435, n436, n437, 
        n438, n439, n440, n441, n442, n443, n444, n479, n480, 
        n481, n482, n483, n484, n485, n486, n487, n488, n489, 
        n490, n491, n492, n493, n494, n4, n20660, n20662, eis_adc_trig_N_711;
    wire [2:0]eis_state_2__N_169;
    
    wire n16, n28, n13, cs_mask_cnt_1__N_378, cs_falling_pend_N_696, 
        THERMOSTAT_N_453;
    wire [3:0]comm_state_3__N_422;
    wire [2:0]comm_state_3__N_415;
    
    wire n21361, n44, n16916, n12662;
    wire [2:0]comm_index_2__N_430;
    
    wire n15, n28_adj_1439;
    wire [3:0]comm_state_3__N_399;
    wire [3:0]comm_state_3__N_11;
    
    wire n20196, n20198, n20200, n20202, n20204, n27, n15749, 
        n15746, n15743, n15740, n20484, n20208, n20486, n20488;
    wire [8:0]data_index_8__N_213;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n20490, n20852, n24;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, drdy_falling, n12_adj_1440, DTRIG_N_851, 
        n20500, n20502, n20504, n54, n21492, n11, n50, n49, 
        n22, n21, n13786;
    wire [2:0]adc_state_adj_1684;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1685;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1475, drdy_prev_adj_1476, drdy_falling_adj_1477, 
        DTRIG_N_851_adj_1478, n20466, n20510, n21080, n21348, n20512;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1706;   // dds_ad9837.vhd(25[9:16])
    wire [2:0]dds_state_adj_1708;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1709;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1710;   // dds_ad9837.vhd(25[9:16])
    
    wire n20514, sclk_sync1, sclk_sync2, n17798, n20516, n20518, 
        n22228, n13_adj_1484, n6180;
    wire [3:0]adc_state_adj_1726;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n14995, n21875, n21874, n1, n21207, n19894, n30, n20594, 
        n19, n20520, n20522, n20524, n20526, n20528, n20530, n20532, 
        n20338, n20340, n20342, n20344, n20346, n21190, n6428;
    wire [3:0]adc_state_adj_1729;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1730;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n17788, n19893, n20348, n20350, n20352, n20354, n20356, 
        n20358, n20360, n20362, n20364, n20366, n20368, n20370, 
        n20372, n20374, n21855, n20376, n20378, n20534, n20544, 
        n20546, n20548, n20550, n20552, n20656, n20554, n20556, 
        n20558, n20560, n20562, n20564, n7, n11_adj_1510, n18, 
        n30_adj_1511, n19892, n20806, n20566, n1_adj_1512, n19_adj_1513, 
        n19864, n20592, n20568, n30_adj_1514, n12403, n45, n44_adj_1515, 
        n43, n42, n41, n40, n39, n38, n15027, n10, n15_adj_1516, 
        n14, n20570, n15161, n145, n144, n143, n142, n141, n140, 
        n139, n138, n137, n136, n135, n134, n133, n132, n131, 
        n130, n129, n128, n127, n126, n125, n124, n123, n122, 
        n121, n120, n119, n118, n18187, n30_adj_1517, n30_adj_1518, 
        n26, n16_adj_1519, n20572, n20828, n15166, n6601, n11_adj_1520, 
        n13_adj_1521, n16910, n13243, n22804, n6915, n20, n22801, 
        n19863, n21839, n21167, n21214, n21838, n20472, n16904, 
        n21106, n11_adj_1522, n16155, n21503, n22798, n11648, n22795, 
        n20408, n22792, n13875, n21833, n20752, n21136, n22789, 
        n20574, n21379, n5978, n20608, n5967, n5966, n5964, n22786, 
        n16132, n22783, n16129, n9_adj_1523, n21830, n6148, n20498, 
        n13879, n13883, n13887, n13891, n13895, n22780, n7_adj_1524, 
        n22777, n21489, n14_adj_1525, n21829, n20576, n20578, n21828, 
        n22774, n21_adj_1526, n21213, n22771, n22768, n22765, n21467, 
        n19862, n20044, n19891, n10_adj_1527, n22762, n22759, n21825, 
        n15478, n15477, n15476, n15475, n15474, n15473, n15472, 
        n15471, n15470, n15469, n15468, n15467, n15466, n15465, 
        n15464, n15463, n15462, n15461, n20056, n22756, n16_adj_1528, 
        n21103, n20430, n21822, n22750, n22747, n21139, n22744, 
        n22741, n22738, n22735, n17815, n17, n17820, n17822, n14783, 
        n14240, n22732, n22729, n22726, n22720, n22711, n22708, 
        n22705, n22702, n22699, n22696, n22690, n22687, n21821, 
        n15460, n15459, n15458, n15457, n15456, n15455, n15454, 
        n15453, n15452, n15451, n15450, n15449, n15448, n15447, 
        n15446, n15445, n15444, n15443, n15442, n15441, n15440, 
        n15439, n15438, n15437, n15436, n15435, n15434, n15433, 
        n15432, n15431, n15430, n22684, n15429, n15428, n15427, 
        n15426, n15425, n15424, n15423, n15422, n15421, n15420, 
        n15419, n15418, n15417, n15416, n15415, n15414, n15413, 
        n15412, n15411, n15410, n15409, n15408, n15407, n15406, 
        n15405, n15404, n15402, n20636, n22681, n14_adj_1529, n14_adj_1530, 
        n14_adj_1531, n14_adj_1532, n14_adj_1533, n14_adj_1534, n14_adj_1535, 
        n14_adj_1536, n20590, n21240, n21359, n20800, n21816, n22678, 
        n22675, n22672, n7_adj_1537, n8, n7_adj_1538, n8_adj_1539, 
        n7_adj_1540, n8_adj_1541, n7_adj_1542, n8_adj_1543, n22666, 
        n7_adj_1544, n8_adj_1545, n22663, n7_adj_1546, n8_adj_1547, 
        n7_adj_1548, n8_adj_1549, n14244, n14248, n14252, n14256, 
        n14260, n14264, n22660, n14268, n14272, n14276, n14280, 
        n14284, n14288, n14292, n14296, n14300, n14304, n14308, 
        n14312, n14316, n14320, n14324, n14328, n14332, n14336, 
        n14340, n14344, n14348, n14352, n14356, n14360, n14364, 
        n14368, n14372, n20052, n14376, n21313, n14380, n22657, 
        n14384, n14388, n14392, n11_adj_1550, n14396, n14400, n14404, 
        n20634, n14_adj_1551, n14_adj_1552, n14_adj_1553, n14_adj_1554, 
        n14807, n12_adj_1555, n10_adj_1556, n22654, n15397, n22651, 
        n4_adj_1557, n6, n7_adj_1558, n22648, n22645, n14476, n14_adj_1559, 
        n19890, n14_adj_1560, n14_adj_1561, n19889, n19855, n1_adj_1562, 
        n2, n4_adj_1563, n1_adj_1564, n2_adj_1565, n4_adj_1566, n1_adj_1567, 
        n2_adj_1568, n4_adj_1569, n22642, n1_adj_1570, n2_adj_1571, 
        n4_adj_1572, n22639, n1_adj_1573, n2_adj_1574, n4_adj_1575, 
        n1_adj_1576, n2_adj_1577, n4_adj_1578, n20632, n20610, n13769, 
        n22636, n18_adj_1579, n9_adj_1580, n20630, n22633, n21616, 
        n22630, n22627, n40_adj_1581, n22624, n22621, n21118, n20252, 
        n21246, n22618, n22615, n12614, n12_adj_1582, n12_adj_1583, 
        n22612, n20736, n20224, n22609, n10534, n12581, n22606, 
        n12579, n12575, n20404, n16097, n22603, n21613, n16092, 
        n22600, n22597, n61, n20238, n42_adj_1584, n28_adj_1585, 
        n36, n30_adj_1586, n20240, n22594, n20242, n20244, n22591, 
        n20246, n19_adj_1587, n14982, n21611, n20248, n19860, n23, 
        n21465, n21128, n22588, n22585, n26_adj_1588, n22582, n22579, 
        n21121, n20738, n16068, n20254, n21609, n19858, n10854, 
        n20194, n21608, n22576, n20300, n19857, n20432, n22573, 
        n20434, n19888, n22570, n20436, n20438, n21498, n20440, 
        n22_adj_1589, n20442, n47, n22567, n21763, n21073, n20302, 
        n22564, n20304, n22561, n19887, n13072, n20306, n20308, 
        n22558, n22555, n20750, n15076, n20310, n20768, n20770, 
        n22552, n6_adj_1590, n20772, n20774, n22549, n20_adj_1591, 
        n22546, n22543, n20776, n20778, n19851, n20782, n22540, 
        n22537, n15014, n12361, n20784, n22534, n20786, n14934, 
        n19856, n19886, n20788, n12_adj_1592, n19_adj_1593, n22_adj_1594, 
        n22531, n30_adj_1595, n21142, n22528, n19854, n22525, n21354, 
        n9353, n22522, n17856, n22519, n20790, n15_adj_1596, n20792, 
        n19_adj_1597, n22_adj_1598, n30_adj_1599, n22833, n12_adj_1600, 
        n20794, n21145, n15_adj_1601, n21484, n12268, n9209, n21152, 
        n22516, n9_adj_1602, n19885, n19_adj_1603, n22_adj_1604, n30_adj_1605, 
        n20874, n15055, n19_adj_1606, n22_adj_1607, n30_adj_1608, 
        n21157, n19884, n27_adj_1609, n21583, n12890, n20802, n19558, 
        n11962, n20508, n8983, n21399, n21154, n21398, n31, n19_adj_1610, 
        n22_adj_1611, n30_adj_1612, n20902, n20_adj_1613, n20041, 
        n20808, n20482, n20812, n20040, n11955, n20814, n24_adj_1614, 
        n12169, n19_adj_1615, n22_adj_1616, n30_adj_1617, n20816, 
        n12186, n12820, n21211, n20039, n12182, n20818, n14979, 
        n21393, n19_adj_1618, n22_adj_1619, n20734, n30_adj_1620, 
        n20038, n20820, n20037, n20036, n20822, n19883, n20035, 
        n20034, n19882, n21170, n12225, n12228, n19881, n20033, 
        n7_adj_1621, n20824, n20032, n20230, n20031, n20030, n16_adj_1622, 
        n26_adj_1623, n30_adj_1624, n19880, n20029, n20028, n19879, 
        n20027, n20026, n20025, n20832, n20024, n20834, n12127, 
        n16_adj_1625, n19_adj_1626, n26_adj_1627, n30_adj_1628, n20336, 
        n20836, n21581, n19878, n12117, n20023, n20022, n21576, 
        n20838, n16_adj_1629, n19_adj_1630, n21367, n26_adj_1631, 
        n30_adj_1632, n21082, n21575, n20420, n20840, n21164, n20766, 
        n20268, n12097, n16_adj_1633, n21466, n19_adj_1634, n26_adj_1635, 
        n30_adj_1636, n12084, n15041, n20021, n20842, n20020, n20019, 
        n20018, n20017, n20016, n16_adj_1637, n19_adj_1638, n26_adj_1639, 
        n4_adj_1640, n20844, n20015, n20014, n20854, n4_adj_1641, 
        n20856, n20013, n19877, n16_adj_1642, n19_adj_1643, n26_adj_1644, 
        n30_adj_1645, n20858, n12507, n21217, n20860, n15393, n15392, 
        n12487, n12486, n20862, n21391, n15391, n15390, n15389, 
        n11938, n20012, n20011, n21721, n16_adj_1646, n19_adj_1647, 
        n26_adj_1648, n30_adj_1649, n20010, n19861, n20009, n20864, 
        n20008, n17842, n20866, n29, n23_adj_1650, n26_adj_1651, 
        n12001, n15034, n20236, n19859, n12014, n12_adj_1652, n19876, 
        n21_adj_1653, n23_adj_1654, n12024, n20876, n23_adj_1655, 
        n20878, n15048, n19853, n20222, n12722, n15062, n15388, 
        n23_adj_1656, n30_adj_1657, n19875, n20880, n20298, n19874, 
        n19873, n19850, n19852, n20882, n16_adj_1658, n17_adj_1659, 
        n19_adj_1660, n20_adj_1661, n23_adj_1662, n30_adj_1663, n12692, 
        n21383, n19910, n20884, n21380, n20886, n21368, n21365, 
        n20318, n21363, n16_adj_1664, n17_adj_1665, n19_adj_1666, 
        n20_adj_1667, n23_adj_1668, n26_adj_1669, n30_adj_1670, n19872, 
        n19909, n19908, n20542, n11760, n19907, n19871, n16924, 
        n20888, n19870, n16_adj_1671, n17_adj_1672, n19_adj_1673, 
        n20_adj_1674, n23_adj_1675, n24_adj_1676, n26_adj_1677, n30_adj_1678, 
        n21704, n19869, n20890, n11654, n11904, n20102, n21496, 
        n12_adj_1679, n21700, n20892, n21542, n46, n45_adj_1680, 
        n19906, n21311, n12023, n20894, n19905, n19904, n20896, 
        n21486, n15387, n19903, n15386, n10960, n48, n19868, n15385, 
        n19902, n19901, n12120, n30_adj_1681, n19867, n10789, n19900, 
        n20292, n21540, n30_adj_1682, n19899, n21360, n21382, n12445, 
        n19898, n20464, n20904, n11008, n20906, n21537, n10976, 
        n19866, n19897, n19896, n21059;
    
    assign VAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(48[3:11])
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(65[3:10])
    assign IAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(68[3:11])
    assign AC_ADC_SYNC = ICE_IOB_96;   // zim_main.vhd(114[3:13])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    SB_DFFN dds0_mclk_320 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_702));   // zim_main.vhd(457[3] 463[10])
    SB_LUT4 i11841_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14240));   // zim_main.vhd(581[4] 868[13])
    defparam i11841_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1633));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFSR reset_int_328 (.Q(reset_int), .C(clk_32MHz), .D(n6601), .R(cs_mask_cnt_1__N_378));   // zim_main.vhd(553[3] 559[10])
    SB_CARRY add_146_7 (.CI(n19900), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19901));
    SB_LUT4 i13069_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1560), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15468));   // zim_main.vhd(564[3] 869[10])
    defparam i13069_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1634));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF cs_sync1_329 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zim_main.vhd(564[3] 869[10])
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged0 (.RDATA({buf_data_vac[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_DFF cs_sync2_330 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zim_main.vhd(564[3] 869[10])
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged3 (.RDATA({buf_data_vac[23:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[12]), .I1(acadc_skipCount[2]), 
            .I2(acadc_skipcnt[12]), .I3(acadc_skipcnt[2]), .O(n22));
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i15437_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17815));   // zim_main.vhd(256[9:19])
    defparam i15437_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18806_4_lut (.I0(n17815), .I1(\comm_buf[3] [5]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n21398));
    defparam i18806_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18807_3_lut (.I0(n22699), .I1(n21398), .I2(comm_index[0]), 
            .I3(ICE_GPMO_1), .O(n21399));
    defparam i18807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[14]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[14]), .I3(acadc_skipcnt[5]), .O(n20_adj_1591));
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_DFF cs_prev_331 (.Q(comm_state_3__N_422[1]), .C(clk_32MHz), .D(cs_sync2));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[10]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[10]), .O(n21));
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i13070_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1531), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15469));   // zim_main.vhd(564[3] 869[10])
    defparam i13070_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[4]), .I1(acadc_skipCount[8]), 
            .I2(acadc_skipcnt[4]), .I3(acadc_skipcnt[8]), .O(n19));
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_1__bdd_4_lut_20042 (.I0(comm_index[1]), .I1(n4_adj_1569), 
            .I2(n21611), .I3(comm_index[2]), .O(n22654));
    defparam comm_index_1__bdd_4_lut_20042.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut (.I0(comm_state[1]), .I1(n10854), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n10960));   // zim_main.vhd(581[4] 868[13])
    defparam i2_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i13071_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1530), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15470));   // zim_main.vhd(564[3] 869[10])
    defparam i13071_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n21082), 
            .D(comm_state_3__N_11[0]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_213[0]));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 equal_60_i16_2_lut (.I0(acadc_skipCount[15]), .I1(acadc_skipcnt[15]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n16));   // zim_main.vhd(494[10:41])
    defparam equal_60_i16_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipCount[1]), 
            .I2(acadc_skipcnt[13]), .I3(acadc_skipcnt[1]), .O(n18));
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF clk_RTD_313 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_709));   // zim_main.vhd(406[3] 413[10])
    SB_LUT4 i12682_3_lut (.I0(n12579), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n15076));   // zim_main.vhd(564[3] 869[10])
    defparam i12682_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i15_4_lut (.I0(n10960), .I1(n8983), .I2(comm_state[3]), .I3(n9209), 
            .O(n12575));
    defparam i15_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 i1_4_lut (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[0]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[0]), .O(n16_adj_1528));
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i9_4_lut (.I0(acadc_skipCount[3]), .I1(n18), .I2(n16), .I3(acadc_skipcnt[3]), 
            .O(n24));
    defparam i9_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i13072_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1529), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15471));   // zim_main.vhd(564[3] 869[10])
    defparam i13072_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged1 (.RDATA({buf_data_vac[39:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_LUT4 i1_4_lut_adj_45 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4));   // zim_main.vhd(782[9:33])
    defparam i1_4_lut_adj_45.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_3_lut_adj_46 (.I0(comm_index[1]), .I1(n4), .I2(comm_length[1]), 
            .I3(ICE_GPMO_1), .O(n5));   // zim_main.vhd(782[9:33])
    defparam i2_3_lut_adj_46.LUT_INIT = 16'hdede;
    SB_LUT4 i13_4_lut (.I0(n19), .I1(n21), .I2(n20_adj_1591), .I3(n22), 
            .O(n28));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged2 (.RDATA({buf_data_vac[31:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged5 (.RDATA({buf_data_vac[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_LUT4 i13073_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1554), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15472));   // zim_main.vhd(564[3] 869[10])
    defparam i13073_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW iac_raw_buf_vac_raw_buf_merged4 (.RDATA({buf_data_vac[15:8]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_213}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(iac_raw_buf_N_728), 
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
    SB_LUT4 i12_4_lut (.I0(acadc_skipCount[9]), .I1(n24), .I2(n16_adj_1528), 
            .I3(acadc_skipcnt[9]), .O(n27));
    defparam i12_4_lut.LUT_INIT = 16'hfdfe;
    SB_CARRY wdtick_cnt_3909_add_4_21 (.CI(n20033), .I0(ICE_GPMO_1), .I1(wdtick_cnt[19]), 
            .CO(n20034));
    SB_LUT4 add_146_6_lut (.I0(n14_adj_1532), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19899), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_146_6 (.CI(n19899), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19900));
    SB_LUT4 i15253_4_lut (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n13243), 
            .I3(n1), .O(n15746));
    defparam i15253_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_47 (.I0(n27), .I1(acadc_skipcnt[6]), .I2(n28), 
            .I3(acadc_skipCount[6]), .O(n21145));
    defparam i1_4_lut_adj_47.LUT_INIT = 16'h0401;
    SB_LUT4 mux_148_Mux_2_i16_3_lut (.I0(buf_dds0[10]), .I1(buf_dds1[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1671));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_2_i17_3_lut (.I0(IAC_FLT0), .I1(buf_adcdata_iac[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1672));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_2_i20_3_lut (.I0(buf_cfgRTD[2]), .I1(buf_readRTD[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1674));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[18]), .I1(buf_adcdata_vdc[18]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1673));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_4_lut (.I0(data_cntvec[9]), .I1(data_cntvec[15]), .I2(req_data_cnt[9]), 
            .I3(req_data_cnt[15]), .O(n24_adj_1614));   // zim_main.vhd(529[9:35])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 mux_148_Mux_3_i16_3_lut (.I0(buf_dds0[11]), .I1(buf_dds1[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1664));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_6_lut (.I0(ICE_GPMO_1), .I1(data_count[4]), .I2(ICE_GPMO_1), 
            .I3(n19853), .O(n422)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n11955), 
            .D(eis_state_2__N_169[2]), .R(tacadc_rst));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 n22654_bdd_4_lut (.I0(n22654), .I1(n2_adj_1568), .I2(n1_adj_1567), 
            .I3(comm_index[2]), .O(n22657));
    defparam n22654_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3909_add_4_20_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[18]), .I3(n20032), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11955), 
            .D(eis_state_2__N_169[1]), .R(tacadc_rst));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i13074_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1553), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15473));   // zim_main.vhd(564[3] 869[10])
    defparam i13074_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_5_lut (.I0(n14_adj_1561), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19898), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_2_lut (.I0(comm_state[1]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21214));
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i6_4_lut_adj_48 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1589));   // zim_main.vhd(529[9:35])
    defparam i6_4_lut_adj_48.LUT_INIT = 16'h7bde;
    SB_CARRY add_146_5 (.CI(n19898), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19899));
    SB_LUT4 i7_4_lut_adj_49 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1654));   // zim_main.vhd(529[9:35])
    defparam i7_4_lut_adj_49.LUT_INIT = 16'h7bde;
    SB_DFFN dds0_mclkcnt_i7_3917__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(459[4] 462[11])
    SB_CARRY wdtick_cnt_3909_add_4_20 (.CI(n20032), .I0(ICE_GPMO_1), .I1(wdtick_cnt[18]), 
            .CO(n20033));
    SB_DFFR wdtick_cnt_3909__i0 (.Q(wdtick_cnt[0]), .C(clk_16MHz), .D(n145), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 mux_149_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1622));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_7_lut (.I0(ICE_GPMO_1), .I1(data_count[5]), .I2(ICE_GPMO_1), 
            .I3(n19854), .O(n421)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_146_4_lut (.I0(n14_adj_1533), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19897), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3909_add_4_19_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[17]), .I3(n20031), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_19 (.CI(n20031), .I0(ICE_GPMO_1), .I1(wdtick_cnt[17]), 
            .CO(n20032));
    SB_LUT4 i5_4_lut_adj_50 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1526));   // zim_main.vhd(529[9:35])
    defparam i5_4_lut_adj_50.LUT_INIT = 16'h7bde;
    SB_LUT4 wdtick_cnt_3909_add_4_18_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[16]), .I3(n20030), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_51 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12486));
    defparam i1_2_lut_adj_51.LUT_INIT = 16'heeee;
    SB_CARRY wdtick_cnt_3909_add_4_18 (.CI(n20030), .I0(ICE_GPMO_1), .I1(wdtick_cnt[16]), 
            .CO(n20031));
    SB_LUT4 wdtick_cnt_3909_add_4_17_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[15]), .I3(n20029), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_17 (.CI(n20029), .I0(ICE_GPMO_1), .I1(wdtick_cnt[15]), 
            .CO(n20030));
    SB_LUT4 i15250_4_lut (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n13243), 
            .I3(n1), .O(n15749));
    defparam i15250_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n9_adj_1602));   // zim_main.vhd(252[9:17])
    defparam i12_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_16_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[14]), .I3(n20028), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_16 (.CI(n20028), .I0(ICE_GPMO_1), .I1(wdtick_cnt[14]), 
            .CO(n20029));
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp_adj_1685[9]), .I1(cmd_rdadctmp_adj_1685[8]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20864));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 i19543_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21839));
    defparam i19543_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13075_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1552), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15474));   // zim_main.vhd(564[3] 869[10])
    defparam i13075_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13076_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1551), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15475));   // zim_main.vhd(564[3] 869[10])
    defparam i13076_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1635));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_15_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[13]), .I3(n20027), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_53 (.I0(comm_state[1]), .I1(comm_state_3__N_422[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21211));
    defparam i1_2_lut_adj_53.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut_adj_54 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), .I2(req_data_cnt[3]), 
            .I3(req_data_cnt[5]), .O(n20_adj_1613));   // zim_main.vhd(529[9:35])
    defparam i4_4_lut_adj_54.LUT_INIT = 16'h7bde;
    SB_CARRY wdtick_cnt_3909_add_4_15 (.CI(n20027), .I0(ICE_GPMO_1), .I1(wdtick_cnt[13]), 
            .CO(n20028));
    SB_LUT4 wdtick_cnt_3909_add_4_14_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[12]), .I3(n20026), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(data_cntvec[1]), .I1(data_cntvec[4]), .I2(req_data_cnt[1]), 
            .I3(req_data_cnt[4]), .O(n18_adj_1579));   // zim_main.vhd(529[9:35])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_CARRY wdtick_cnt_3909_add_4_14 (.CI(n20026), .I0(ICE_GPMO_1), .I1(wdtick_cnt[12]), 
            .CO(n20027));
    SB_LUT4 wdtick_cnt_3909_add_4_13_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[11]), .I3(n20025), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_146_4 (.CI(n19897), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19898));
    SB_LUT4 i12_4_lut_adj_55 (.I0(cmd_rdadctmp_adj_1685[8]), .I1(cmd_rdadctmp_adj_1685[7]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20862));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_55.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_56 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1587));   // zim_main.vhd(529[9:35])
    defparam i3_4_lut_adj_56.LUT_INIT = 16'h7bde;
    SB_LUT4 i13077_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1559), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15476));   // zim_main.vhd(564[3] 869[10])
    defparam i13077_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13078_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1536), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15477));   // zim_main.vhd(564[3] 869[10])
    defparam i13078_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1572));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_57 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21170));
    defparam i1_2_lut_adj_57.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1685[7]), .I1(cmd_rdadctmp_adj_1685[6]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20860));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_59 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), .I2(req_data_cnt[0]), 
            .I3(req_data_cnt[6]), .O(n17));   // zim_main.vhd(529[9:35])
    defparam i1_4_lut_adj_59.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_60 (.I0(n12_adj_1440), .I1(comm_state[3]), .I2(n9209), 
            .I3(n21164), .O(n12722));
    defparam i1_4_lut_adj_60.LUT_INIT = 16'hc0c4;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20047 (.I0(comm_cmd[0]), .I1(IAC_OSR0), 
            .I2(buf_adcdata_iac[16]), .I3(comm_cmd[1]), .O(n22648));
    defparam comm_cmd_0__bdd_4_lut_20047.LUT_INIT = 16'he4aa;
    SB_LUT4 n22648_bdd_4_lut (.I0(n22648), .I1(buf_dds1[8]), .I2(buf_dds0[8]), 
            .I3(comm_cmd[1]), .O(n22651));
    defparam n22648_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp_adj_1685[6]), .I1(cmd_rdadctmp_adj_1685[5]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20858));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i14_4_lut (.I0(n21_adj_1526), .I1(n23_adj_1654), .I2(n22_adj_1589), 
            .I3(n24_adj_1614), .O(n30_adj_1517));   // zim_main.vhd(529[9:35])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_index_1__bdd_4_lut_20037 (.I0(comm_index[1]), .I1(n4_adj_1572), 
            .I2(n21581), .I3(comm_index[2]), .O(n22642));
    defparam comm_index_1__bdd_4_lut_20037.LUT_INIT = 16'he4aa;
    SB_LUT4 n22642_bdd_4_lut (.I0(n22642), .I1(n2_adj_1571), .I2(n1_adj_1570), 
            .I3(comm_index[2]), .O(n22645));
    defparam n22642_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13_4_lut_adj_62 (.I0(n17), .I1(n19_adj_1587), .I2(n18_adj_1579), 
            .I3(n20_adj_1613), .O(n29));   // zim_main.vhd(529[9:35])
    defparam i13_4_lut_adj_62.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20081 (.I0(comm_cmd[1]), .I1(n19_adj_1626), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n22636));
    defparam comm_cmd_1__bdd_4_lut_20081.LUT_INIT = 16'he4aa;
    SB_LUT4 n22636_bdd_4_lut (.I0(n22636), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1625), 
            .I3(comm_cmd[2]), .O(n22639));
    defparam n22636_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut (.I0(eis_stop), .I1(n29), .I2(n30_adj_1517), .I3(ICE_GPMO_1), 
            .O(n16904));   // zim_main.vhd(564[3] 869[10])
    defparam i1_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20022 (.I0(comm_cmd[1]), .I1(n21829), 
            .I2(n21830), .I3(comm_cmd[2]), .O(n22630));
    defparam comm_cmd_1__bdd_4_lut_20022.LUT_INIT = 16'he4aa;
    SB_LUT4 n22630_bdd_4_lut (.I0(n22630), .I1(n21825), .I2(n23_adj_1656), 
            .I3(comm_cmd[2]), .O(n22633));
    defparam n22630_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_63 (.I0(AC_ADC_SYNC), .I1(n21145), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11_adj_1520));
    defparam i1_2_lut_adj_63.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_64 (.I0(cmd_rdadctmp_adj_1685[5]), .I1(cmd_rdadctmp_adj_1685[4]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20856));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_1__bdd_4_lut_20027 (.I0(comm_index[1]), .I1(n4_adj_1575), 
            .I2(n21576), .I3(comm_index[2]), .O(n22624));
    defparam comm_index_1__bdd_4_lut_20027.LUT_INIT = 16'he4aa;
    SB_LUT4 n22624_bdd_4_lut (.I0(n22624), .I1(n2_adj_1574), .I2(n1_adj_1573), 
            .I3(comm_index[2]), .O(n22627));
    defparam n22624_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15465_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17842));
    defparam i15465_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE comm_clear_334__i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n12024), 
            .D(n10534));   // zim_main.vhd(581[4] 868[13])
    SB_LUT4 mux_157_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1578));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_3_i20_3_lut (.I0(buf_cfgRTD[3]), .I1(buf_readRTD[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1667));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut_20012 (.I0(comm_index[1]), .I1(n4_adj_1578), 
            .I2(n21575), .I3(comm_index[2]), .O(n22618));
    defparam comm_index_1__bdd_4_lut_20012.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_148_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[19]), .I1(buf_adcdata_vdc[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1666));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_1_i2_3_lut (.I0(\comm_buf[2] [1]), .I1(\comm_buf[3] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1577));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22618_bdd_4_lut (.I0(n22618), .I1(n2_adj_1577), .I2(n1_adj_1576), 
            .I3(comm_index[2]), .O(n22621));
    defparam n22618_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY wdtick_cnt_3909_add_4_13 (.CI(n20025), .I0(ICE_GPMO_1), .I1(wdtick_cnt[11]), 
            .CO(n20026));
    SB_LUT4 i2_4_lut_adj_65 (.I0(n21211), .I1(comm_state[0]), .I2(n12486), 
            .I3(comm_data_vld), .O(n12097));
    defparam i2_4_lut_adj_65.LUT_INIT = 16'hfbfa;
    SB_LUT4 wdtick_cnt_3909_add_4_12_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[10]), .I3(n20024), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i24_4_lut (.I0(n17842), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(AC_ADC_SYNC), .O(n11_adj_1550));
    defparam i24_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_2_lut_adj_66 (.I0(DTRIG_N_851), .I1(adc_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21136));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_2_lut_adj_66.LUT_INIT = 16'h2222;
    SB_LUT4 i19731_3_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n11_adj_1550), 
            .I3(ICE_GPMO_1), .O(n11955));
    defparam i19731_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i4518_2_lut (.I0(comm_state_3__N_422[1]), .I1(comm_state[0]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6915));   // zim_main.vhd(581[4] 868[13])
    defparam i4518_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_3_lut (.I0(n12581), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n21121));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_4_lut_adj_67 (.I0(n21080), .I1(n21214), .I2(n12097), .I3(n4_adj_1641), 
            .O(n21106));
    defparam i1_4_lut_adj_67.LUT_INIT = 16'ha080;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n28_adj_1585), 
            .D(comm_state_3__N_11[1]));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_3_lut_adj_68 (.I0(comm_state[0]), .I1(comm_cmd[3]), 
            .I2(n21207), .I3(ICE_GPMO_1), .O(n21190));
    defparam i1_2_lut_3_lut_adj_68.LUT_INIT = 16'hfbfb;
    SB_CARRY wdtick_cnt_3909_add_4_12 (.CI(n20024), .I0(ICE_GPMO_1), .I1(wdtick_cnt[10]), 
            .CO(n20025));
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n21106), 
            .D(comm_state_3__N_11[3]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_213[1]));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_3_lut_adj_69 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(ICE_GPMO_1), .O(clk_RTD_N_709));
    defparam i1_2_lut_3_lut_adj_69.LUT_INIT = 16'h6a6a;
    SB_LUT4 i12993_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10789), 
            .I3(ICE_GPMO_1), .O(n15392));   // zim_main.vhd(564[3] 869[10])
    defparam i12993_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_70 (.I0(cmd_rdadctmp_adj_1685[4]), .I1(cmd_rdadctmp_adj_1685[3]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20854));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n11962));   // zim_main.vhd(572[8:37])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff4;
    SB_LUT4 i12580_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n14979));   // zim_main.vhd(572[8:37])
    defparam i12580_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 comm_state_3__I_0_374_Mux_3_i7_4_lut (.I0(comm_state[0]), .I1(n21700), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n18187));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_3_i7_4_lut.LUT_INIT = 16'hcffa;
    SB_LUT4 comm_cmd_6__I_0_407_i13_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12), .O(n13_adj_1484));   // zim_main.vhd(799[11:20])
    defparam comm_cmd_6__I_0_407_i13_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n12579));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hb8a8;
    SB_LUT4 comm_state_3__I_0_374_Mux_3_i15_4_lut (.I0(n18187), .I1(n14476), 
            .I2(comm_state[3]), .I3(comm_state_3__N_399[3]), .O(comm_state_3__N_11[3]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_3_i15_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(ICE_GPMO_1), .O(DDS_MCLK));   // zim_main.vhd(346[16:66])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20017 (.I0(comm_cmd[1]), .I1(n19_adj_1666), 
            .I2(n20_adj_1667), .I3(comm_cmd[2]), .O(n22612));
    defparam comm_cmd_1__bdd_4_lut_20017.LUT_INIT = 16'he4aa;
    SB_LUT4 i19535_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21875));
    defparam i19535_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 i19661_2_lut_4_lut (.I0(n31), .I1(comm_index[2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21874));
    defparam i19661_2_lut_4_lut.LUT_INIT = 16'h0200;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_213[2]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_213[3]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_213[4]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_213[5]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_213[6]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_213[7]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_213[8]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12575), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i17_3_lut (.I0(n16916), .I1(n16910), .I2(eis_state[0]), .I3(ICE_GPMO_1), 
            .O(n13_adj_1521));   // zim_main.vhd(297[9:18])
    defparam i17_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i3_4_lut_adj_71 (.I0(comm_data_vld), .I1(n21170), .I2(comm_state[0]), 
            .I3(n21211), .O(n21213));
    defparam i3_4_lut_adj_71.LUT_INIT = 16'hfffe;
    SB_LUT4 wdtick_cnt_3909_add_4_11_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[9]), .I3(n20023), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i18_3_lut (.I0(eis_state[2]), .I1(n13_adj_1521), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(eis_state_2__N_169[2]));   // zim_main.vhd(297[9:18])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3909_add_4_11 (.CI(n20023), .I0(ICE_GPMO_1), .I1(wdtick_cnt[9]), 
            .CO(n20024));
    SB_LUT4 wdtick_cnt_3909_add_4_10_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[8]), .I3(n20022), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17_4_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n10_adj_1556));
    defparam i17_4_lut_3_lut.LUT_INIT = 16'h4242;
    SB_CARRY wdtick_cnt_3909_add_4_10 (.CI(n20022), .I0(ICE_GPMO_1), .I1(wdtick_cnt[8]), 
            .CO(n20023));
    SB_LUT4 wdtick_cnt_3909_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[7]), .I3(n20021), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_9 (.CI(n20021), .I0(ICE_GPMO_1), .I1(wdtick_cnt[7]), 
            .CO(n20022));
    SB_LUT4 wdtick_cnt_3909_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[6]), .I3(n20020), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n21073));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 mux_148_Mux_3_i17_3_lut (.I0(IAC_FLT1), .I1(buf_adcdata_iac[19]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1665));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_72 (.I0(n12581), .I1(comm_data_vld), .I2(comm_state[0]), 
            .I3(comm_state_3__N_422[1]), .O(n21157));
    defparam i2_4_lut_adj_72.LUT_INIT = 16'hbfaf;
    SB_LUT4 i2_4_lut_adj_73 (.I0(n21214), .I1(n21157), .I2(n4_adj_1640), 
            .I3(n21213), .O(n21080));
    defparam i2_4_lut_adj_73.LUT_INIT = 16'hc800;
    SB_LUT4 i4038_2_lut_4_lut (.I0(comm_index[1]), .I1(comm_data_vld), .I2(comm_state_3__N_422[1]), 
            .I3(comm_index[0]), .O(comm_index_2__N_430[1]));   // zim_main.vhd(763[5] 773[12])
    defparam i4038_2_lut_4_lut.LUT_INIT = 16'ha6aa;
    SB_LUT4 i1_4_lut_adj_74 (.I0(comm_state_3__N_415[2]), .I1(comm_cmd[1]), 
            .I2(n30), .I3(comm_cmd[2]), .O(comm_state_3__N_399[3]));   // zim_main.vhd(798[5] 853[14])
    defparam i1_4_lut_adj_74.LUT_INIT = 16'ha0a2;
    SB_LUT4 n22612_bdd_4_lut (.I0(n22612), .I1(n17_adj_1665), .I2(n16_adj_1664), 
            .I3(comm_cmd[2]), .O(n22615));
    defparam n22612_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20003 (.I0(comm_cmd[1]), .I1(n19_adj_1673), 
            .I2(n20_adj_1674), .I3(comm_cmd[2]), .O(n22606));
    defparam comm_cmd_1__bdd_4_lut_20003.LUT_INIT = 16'he4aa;
    SB_LUT4 n22606_bdd_4_lut (.I0(n22606), .I1(n17_adj_1672), .I2(n16_adj_1671), 
            .I3(comm_cmd[2]), .O(n22609));
    defparam n22606_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20032 (.I0(comm_cmd[0]), .I1(VAC_FLT1), 
            .I2(buf_adcdata_iac[23]), .I3(comm_cmd[1]), .O(n22600));
    defparam comm_cmd_0__bdd_4_lut_20032.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_147_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1511));   // zim_main.vhd(637[5] 741[14])
    defparam mux_147_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_CARRY wdtick_cnt_3909_add_4_8 (.CI(n20020), .I0(ICE_GPMO_1), .I1(wdtick_cnt[6]), 
            .CO(n20021));
    SB_LUT4 i13006_3_lut_4_lut (.I0(dds_state_adj_1708[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1708[1]), .I3(dds_state_adj_1708[0]), .O(n15405));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13006_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1685[3]), .I1(cmd_rdadctmp_adj_1685[2]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20852));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'hca0a;
    SB_LUT4 n22750_bdd_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[0]), 
            .I2(n20408), .I3(n22750), .O(eis_state_2__N_169[0]));   // zim_main.vhd(468[3] 546[10])
    defparam n22750_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1685[2]), .I1(cmd_rdadctmp_adj_1685[1]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20844));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 i13005_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15404));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13005_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 n22600_bdd_4_lut (.I0(n22600), .I1(buf_dds1[15]), .I2(buf_dds0[15]), 
            .I3(comm_cmd[1]), .O(n22603));
    defparam n22600_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i30_4_lut (.I0(AC_ADC_SYNC), .I1(n16904), .I2(eis_state[2]), 
            .I3(n21145), .O(n20408));   // zim_main.vhd(297[9:18])
    defparam i30_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 i22_3_lut_4_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n7_adj_1621));   // zim_main.vhd(612[5] 620[12])
    defparam i22_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_adj_1684[0]), .I1(VAC_SCLK), .I2(DTRIG_N_851_adj_1478), 
            .I3(adc_state_adj_1684[1]), .O(n20636));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hc4d8;
    SB_LUT4 i18656_4_lut (.I0(comm_state_3__N_422[1]), .I1(comm_data_vld), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21246));
    defparam i18656_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19993 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[0]), 
            .I2(buf_readRTD[8]), .I3(comm_cmd[1]), .O(n22594));
    defparam comm_cmd_0__bdd_4_lut_19993.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_4_lut_adj_77 (.I0(adc_state[0]), .I1(IAC_SCLK), .I2(DTRIG_N_851), 
            .I3(adc_state[1]), .O(n20632));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_4_lut_adj_77.LUT_INIT = 16'hc4d8;
    SB_LUT4 i59_3_lut_4_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[2]), .I3(n36), .O(n42_adj_1584));   // zim_main.vhd(612[5] 620[12])
    defparam i59_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i1_2_lut_adj_78 (.I0(DTRIG_N_851_adj_1478), .I1(adc_state_adj_1684[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21128));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_2_lut_adj_78.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_79 (.I0(cmd_rdadctmp_adj_1685[1]), .I1(cmd_rdadctmp_adj_1685[0]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20842));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 i19345_4_lut (.I0(comm_state_3__N_422[1]), .I1(n9209), .I2(comm_data_vld), 
            .I3(comm_state[0]), .O(n21540));
    defparam i19345_4_lut.LUT_INIT = 16'h3100;
    SB_LUT4 n22594_bdd_4_lut (.I0(n22594), .I1(buf_adcdata_vdc[16]), .I2(buf_adcdata_vac[16]), 
            .I3(comm_cmd[1]), .O(n22597));
    defparam n22594_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i57_4_lut (.I0(n42_adj_1584), .I1(n21246), .I2(comm_state[1]), 
            .I3(comm_state[0]), .O(n30_adj_1586));
    defparam i57_4_lut.LUT_INIT = 16'h3a30;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(comm_state[0]), .O(n20056));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp_adj_1685[10]), .I1(cmd_rdadctmp_adj_1685[9]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20866));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20840));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20838));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_83 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20836));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_84 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20578));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_84.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_85 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20834));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_86 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20832));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3909_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[5]), .I3(n20019), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_87 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n13243), 
            .I3(n1), .O(n20490));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_88 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n13243), 
            .I3(n1), .O(n20488));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_89 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n13243), 
            .I3(n1), .O(n20486));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SPI_SLAVE comm_spi (.reset_int(reset_int), .comm_tx_buf({comm_tx_buf}), 
            .GND_net(ICE_GPMO_1), .n6180(n6180), .clk_32MHz(clk_32MHz), 
            .ICE_SPI_MISO(ICE_SPI_MISO), .comm_data_vld(comm_data_vld), 
            .VCC_net(VCC_net), .comm_rx_buf({comm_rx_buf}), .sclk_sync1(sclk_sync1), 
            .sclk_sync2(sclk_sync2), .n15409(n15409), .n15408(n15408), 
            .n15406(n15406));   // zim_main.vhd(931[13:22])
    SB_LUT4 i12_4_lut_adj_90 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n13243), 
            .I3(n1), .O(n20484));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 add_67_4_lut (.I0(ICE_GPMO_1), .I1(data_count[2]), .I2(ICE_GPMO_1), 
            .I3(n19851), .O(n424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i58_3_lut (.I0(n30_adj_1586), .I1(n21540), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n28_adj_1585));
    defparam i58_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i12_4_lut_adj_91 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n13243), 
            .I3(n1), .O(n20498));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_92 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20828));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_92.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_93 (.I0(n21217), .I1(n21080), .I2(comm_data_vld), 
            .I3(n6915), .O(n21082));
    defparam i1_4_lut_adj_93.LUT_INIT = 16'hcc8c;
    SB_LUT4 i12_4_lut_adj_94 (.I0(cmd_rdadctmp_adj_1685[11]), .I1(cmd_rdadctmp_adj_1685[10]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20874));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i12994_3_lut (.I0(ICE_IOB_95), .I1(\comm_buf[0] [0]), .I2(n10789), 
            .I3(ICE_GPMO_1), .O(n15393));   // zim_main.vhd(564[3] 869[10])
    defparam i12994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_95 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20824));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_96 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20822));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3909_add_4_7 (.CI(n20019), .I0(ICE_GPMO_1), .I1(wdtick_cnt[5]), 
            .CO(n20020));
    SB_LUT4 i12439_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(n1_adj_1512));   // zim_main.vhd(581[4] 868[13])
    defparam i12439_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i12_4_lut_adj_97 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20820));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20576));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20574));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 i18651_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n21240));
    defparam i18651_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_100 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20572));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_2__bdd_4_lut_20071 (.I0(comm_index[2]), .I1(\comm_buf[2] [0]), 
            .I2(\comm_buf[6] [0]), .I3(comm_index[1]), .O(n22588));
    defparam comm_index_2__bdd_4_lut_20071.LUT_INIT = 16'he4aa;
    SB_LUT4 n22588_bdd_4_lut (.I0(n22588), .I1(\comm_buf[4] [0]), .I2(\comm_buf[0] [0]), 
            .I3(comm_index[1]), .O(n22591));
    defparam n22588_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_101 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20570));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_374_Mux_1_i15_4_lut (.I0(n22675), .I1(comm_state_3__N_399[3]), 
            .I2(comm_state[3]), .I3(n14476), .O(comm_state_3__N_11[1]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_1_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i4030_2_lut_3_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(comm_index_2__N_430[0]));   // zim_main.vhd(612[5] 620[12])
    defparam i4030_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 i12_4_lut_adj_102 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20568));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(adress[6]), .I1(adress[5]), .I2(n13072), 
            .I3(n14783), .O(n20204));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_104 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20566));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_105 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20590));   // adc_ads1252u.vhd(31[8:17])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_106 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20594));   // adc_ads1252u.vhd(31[8:17])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_107 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20564));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20562));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_109 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20560));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_110 (.I0(eis_state[1]), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(ICE_GPMO_1), .O(n40_adj_1581));   // zim_main.vhd(297[9:18])
    defparam i1_2_lut_3_lut_adj_110.LUT_INIT = 16'hbfbf;
    SB_LUT4 i1_2_lut_adj_111 (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20102));
    defparam i1_2_lut_adj_111.LUT_INIT = 16'h9999;
    SB_LUT4 i1_4_lut_adj_112 (.I0(adc_state[1]), .I1(acadc_dtrig_i), .I2(DTRIG_N_851), 
            .I3(adc_state[0]), .O(n20630));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_adj_112.LUT_INIT = 16'hcce8;
    SB_LUT4 i4032_2_lut_3_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n6428));   // zim_main.vhd(612[5] 620[12])
    defparam i4032_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20818));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_114 (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_cmd[7]), .I3(ICE_GPMO_1), .O(n31));   // zim_main.vhd(612[5] 620[12])
    defparam i1_2_lut_3_lut_adj_114.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_115 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20816));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'hca0a;
    SB_LUT4 i19636_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(ICE_GPMO_1), .O(n22228));
    defparam i19636_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i12_4_lut_adj_116 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20814));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_117 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20812));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_118 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20808));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_119 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20558));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3917__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44_adj_1515));   // zim_main.vhd(459[4] 462[11])
    SB_LUT4 i12_4_lut_adj_120 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20806));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_121 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20556));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_122 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20554));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_123 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20802));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'hca0a;
    SB_DFFN dds0_mclkcnt_i7_3917__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(459[4] 462[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42));   // zim_main.vhd(459[4] 462[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(459[4] 462[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(459[4] 462[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(459[4] 462[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(459[4] 462[11])
    SB_DFFSR clk_cnt_3907_3908__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14), 
            .R(n17856));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i1 (.Q(wdtick_cnt[1]), .C(clk_16MHz), .D(n144), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i2 (.Q(wdtick_cnt[2]), .C(clk_16MHz), .D(n143), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i3 (.Q(wdtick_cnt[3]), .C(clk_16MHz), .D(n142), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i4 (.Q(wdtick_cnt[4]), .C(clk_16MHz), .D(n141), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i5 (.Q(wdtick_cnt[5]), .C(clk_16MHz), .D(n140), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i6 (.Q(wdtick_cnt[6]), .C(clk_16MHz), .D(n139), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i7 (.Q(wdtick_cnt[7]), .C(clk_16MHz), .D(n138), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i8 (.Q(wdtick_cnt[8]), .C(clk_16MHz), .D(n137), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i9 (.Q(wdtick_cnt[9]), .C(clk_16MHz), .D(n136), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i10 (.Q(wdtick_cnt[10]), .C(clk_16MHz), .D(n135), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i11 (.Q(wdtick_cnt[11]), .C(clk_16MHz), .D(n134), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i12 (.Q(wdtick_cnt[12]), .C(clk_16MHz), .D(n133), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i13 (.Q(wdtick_cnt[13]), .C(clk_16MHz), .D(n132), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i14 (.Q(wdtick_cnt[14]), .C(clk_16MHz), .D(n131), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i15 (.Q(wdtick_cnt[15]), .C(clk_16MHz), .D(n130), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i16 (.Q(wdtick_cnt[16]), .C(clk_16MHz), .D(n129), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i17 (.Q(wdtick_cnt[17]), .C(clk_16MHz), .D(n128), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i18 (.Q(wdtick_cnt[18]), .C(clk_16MHz), .D(n127), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i19 (.Q(wdtick_cnt[19]), .C(clk_16MHz), .D(n126), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i20 (.Q(wdtick_cnt[20]), .C(clk_16MHz), .D(n125), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i21 (.Q(wdtick_cnt[21]), .C(clk_16MHz), .D(n124), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i22 (.Q(wdtick_cnt[22]), .C(clk_16MHz), .D(n123), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i23 (.Q(wdtick_cnt[23]), .C(clk_16MHz), .D(n122), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i24 (.Q(wdtick_cnt[24]), .C(clk_16MHz), .D(n121), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i25 (.Q(wdtick_cnt[25]), .C(clk_16MHz), .D(n120), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i26 (.Q(wdtick_cnt[26]), .C(clk_16MHz), .D(n119), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i27 (.Q(wdtick_cnt[27]), .C(clk_16MHz), .D(n118), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp_adj_1685[12]), .I1(cmd_rdadctmp_adj_1685[11]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20876));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19998 (.I0(comm_cmd[1]), .I1(n26_adj_1677), 
            .I2(n21537), .I3(comm_cmd[2]), .O(n22582));
    defparam comm_cmd_1__bdd_4_lut_19998.LUT_INIT = 16'he4aa;
    SB_LUT4 n22582_bdd_4_lut (.I0(n22582), .I1(n24_adj_1676), .I2(n23_adj_1675), 
            .I3(comm_cmd[2]), .O(n22585));
    defparam n22582_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15683_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1561));   // zim_main.vhd(581[4] 868[13])
    defparam i15683_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19979 (.I0(comm_cmd[1]), .I1(n19_adj_1630), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22576));
    defparam comm_cmd_1__bdd_4_lut_19979.LUT_INIT = 16'he4aa;
    SB_LUT4 n22576_bdd_4_lut (.I0(n22576), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1629), 
            .I3(comm_cmd[2]), .O(n22579));
    defparam n22576_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19974 (.I0(comm_cmd[1]), .I1(n26_adj_1623), 
            .I2(n21583), .I3(comm_cmd[2]), .O(n22570));
    defparam comm_cmd_1__bdd_4_lut_19974.LUT_INIT = 16'he4aa;
    SB_LUT4 i18799_3_lut (.I0(comm_state[0]), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[1]), .I3(ICE_GPMO_1), .O(n21391));
    defparam i18799_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 n22570_bdd_4_lut (.I0(n22570), .I1(req_data_cnt[7]), .I2(acadc_skipCount[7]), 
            .I3(comm_cmd[2]), .O(n22573));
    defparam n22570_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20800));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20794));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(adress[5]), .I1(adress[4]), .I2(n13072), .I3(n14783), 
            .O(n20202));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_127 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20552));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_148_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1658));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20792));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_148_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1659));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12597_2_lut (.I0(n12023), .I1(eis_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14995));   // zim_main.vhd(468[3] 546[10])
    defparam i12597_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_129 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20550));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_130 (.I0(adress[4]), .I1(adress[3]), .I2(n13072), 
            .I3(n14783), .O(n20200));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_130.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_131 (.I0(adress[3]), .I1(adress[2]), .I2(n13072), 
            .I3(n14783), .O(n20198));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_131.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_132 (.I0(tacadc_rst), .I1(eis_state[0]), .I2(eis_state[2]), 
            .I3(eis_state[1]), .O(n12023));
    defparam i2_4_lut_adj_132.LUT_INIT = 16'h0405;
    SB_LUT4 i12_4_lut_adj_133 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20548));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_1_i1_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[1] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1576));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_1_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[4]), .I3(n20018), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_134 (.I0(adress[2]), .I1(adress[1]), .I2(n13072), 
            .I3(n14783), .O(n20196));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_134.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19969 (.I0(comm_cmd[1]), .I1(n26_adj_1648), 
            .I2(n21492), .I3(comm_cmd[2]), .O(n22564));
    defparam comm_cmd_1__bdd_4_lut_19969.LUT_INIT = 16'he4aa;
    SB_LUT4 n22564_bdd_4_lut (.I0(n22564), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22567));
    defparam n22564_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19964 (.I0(comm_cmd[1]), .I1(n26_adj_1644), 
            .I2(n21503), .I3(comm_cmd[2]), .O(n22558));
    defparam comm_cmd_1__bdd_4_lut_19964.LUT_INIT = 16'he4aa;
    SB_LUT4 n22558_bdd_4_lut (.I0(n22558), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22561));
    defparam n22558_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19548_2_lut (.I0(\comm_buf[6] [1]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21575));
    defparam i19548_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_135 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20546));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20790));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i19764_4_lut (.I0(n5978), .I1(n5964), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n7));
    defparam i19764_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i1_3_lut_adj_137 (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n13769));   // zim_main.vhd(581[4] 868[13])
    defparam i1_3_lut_adj_137.LUT_INIT = 16'h4040;
    SB_LUT4 i12_4_lut_adj_138 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20544));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_148_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1661));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1660));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6956_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9353));   // zim_main.vhd(581[4] 868[13])
    defparam i6956_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18769_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21361));
    defparam i18769_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_3_lut (.I0(n14_adj_1534), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19896), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18801_4_lut (.I0(n21391), .I1(n22228), .I2(comm_state[2]), 
            .I3(n6915), .O(n21393));
    defparam i18801_4_lut.LUT_INIT = 16'hfaca;
    SB_CARRY wdtick_cnt_3909_add_4_6 (.CI(n20018), .I0(ICE_GPMO_1), .I1(wdtick_cnt[4]), 
            .CO(n20019));
    SB_LUT4 comm_cmd_6__I_0_i13_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12), .O(n13));   // zim_main.vhd(804[11:20])
    defparam comm_cmd_6__I_0_i13_2_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n11008), .O(n12120));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hdfcf;
    SB_LUT4 i19753_4_lut (.I0(n5964), .I1(n5978), .I2(n9353), .I3(cs_falling_pend_N_696), 
            .O(n10534));   // zim_main.vhd(581[4] 868[13])
    defparam i19753_4_lut.LUT_INIT = 16'h2333;
    SB_LUT4 i3_4_lut_adj_139 (.I0(n13769), .I1(comm_state[0]), .I2(n5964), 
            .I3(n5978), .O(n22833));
    defparam i3_4_lut_adj_139.LUT_INIT = 16'hffef;
    SB_LUT4 i18771_4_lut (.I0(n21361), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21363));
    defparam i18771_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i19291_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21496));
    defparam i19291_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_157_Mux_2_i1_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1573));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_2_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19959 (.I0(comm_cmd[1]), .I1(n26_adj_1669), 
            .I2(n21498), .I3(comm_cmd[2]), .O(n22552));
    defparam comm_cmd_1__bdd_4_lut_19959.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_149_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1631));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22552_bdd_4_lut (.I0(n22552), .I1(n21816), .I2(n23_adj_1668), 
            .I3(comm_cmd[2]), .O(n22555));
    defparam n22552_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_157_Mux_2_i2_3_lut (.I0(\comm_buf[2] [2]), .I1(\comm_buf[3] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1574));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_2_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1519));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20788));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i19577_2_lut (.I0(\comm_buf[6] [2]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21576));
    defparam i19577_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19954 (.I0(comm_cmd[1]), .I1(n11_adj_1522), 
            .I2(buf_readRTD[0]), .I3(comm_cmd[2]), .O(n22546));
    defparam comm_cmd_1__bdd_4_lut_19954.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20786));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 n22546_bdd_4_lut (.I0(n22546), .I1(buf_adcdata_iac[8]), .I2(n16_adj_1519), 
            .I3(comm_cmd[2]), .O(n22549));
    defparam n22546_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_374_Mux_0_i15_3_lut (.I0(n21393), .I1(n9209), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(comm_state_3__N_11[0]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19988 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(ICE_IOB_95), .I3(comm_cmd[1]), .O(n22540));
    defparam comm_cmd_0__bdd_4_lut_19988.LUT_INIT = 16'he4aa;
    SB_LUT4 n22540_bdd_4_lut (.I0(n22540), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n22543));
    defparam n22540_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20784));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1575));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n11_adj_1522));   // zim_main.vhd(252[9:17])
    defparam i13_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19949 (.I0(comm_cmd[1]), .I1(n26_adj_1631), 
            .I2(n21496), .I3(comm_cmd[2]), .O(n22534));
    defparam comm_cmd_1__bdd_4_lut_19949.LUT_INIT = 16'he4aa;
    SB_LUT4 n22534_bdd_4_lut (.I0(n22534), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22537));
    defparam n22534_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20056 (.I0(comm_cmd[2]), .I1(n21354), 
            .I2(n21363), .I3(comm_cmd[3]), .O(n22528));
    defparam comm_cmd_2__bdd_4_lut_20056.LUT_INIT = 16'he4aa;
    SB_LUT4 n22528_bdd_4_lut (.I0(n22528), .I1(n21348), .I2(n21489), .I3(comm_cmd[3]), 
            .O(n22531));
    defparam n22528_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20782));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_148_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1668));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19939 (.I0(comm_cmd[1]), .I1(n19_adj_1660), 
            .I2(n20_adj_1661), .I3(comm_cmd[2]), .O(n22522));
    defparam comm_cmd_1__bdd_4_lut_19939.LUT_INIT = 16'he4aa;
    SB_LUT4 i19609_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21816));
    defparam i19609_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20778));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20776));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_148_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1656));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19292_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21498));
    defparam i19292_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19626_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21825));
    defparam i19626_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19633_2_lut (.I0(buf_data_vac[43]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21830));
    defparam i19633_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_148_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1669));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22522_bdd_4_lut (.I0(n22522), .I1(n17_adj_1659), .I2(n16_adj_1658), 
            .I3(comm_cmd[2]), .O(n22525));
    defparam n22522_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_146 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20542));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd_rdadctmp_adj_1685[13]), .I1(cmd_rdadctmp_adj_1685[12]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20878));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_19944 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22516));
    defparam comm_cmd_0__bdd_4_lut_19944.LUT_INIT = 16'he4aa;
    SB_LUT4 n22516_bdd_4_lut (.I0(n22516), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n22519));
    defparam n22516_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20774));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_149 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20534));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'h0aca;
    SB_LUT4 i19398_2_lut (.I0(\comm_buf[6] [4]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21611));
    defparam i19398_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20772));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20770));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20768));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12820), .I3(adc_state[0]), .O(n20766));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1685[14]), .I1(cmd_rdadctmp_adj_1685[13]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20880));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_155 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20532));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'h0aca;
    SB_LUT4 i19599_2_lut (.I0(data_idxvec[13]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21829));
    defparam i19599_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp_adj_1685[15]), .I1(cmd_rdadctmp_adj_1685[14]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20882));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp_adj_1730[22]), .I1(cmd_rdadctmp_adj_1730[21]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20378));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_149_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1625));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20308));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1730[21]), .I1(cmd_rdadctmp_adj_1730[20]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20376));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_149_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1626));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15702_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1533));   // zim_main.vhd(581[4] 868[13])
    defparam i15702_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i13079_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1535), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15478));   // zim_main.vhd(564[3] 869[10])
    defparam i13079_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_160 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[1] [0]), .I3(ICE_GPMO_1), .O(n14_adj_1525));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_3_lut_adj_160.LUT_INIT = 16'h1010;
    SB_LUT4 i15701_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1532));   // zim_main.vhd(581[4] 868[13])
    defparam i15701_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19297_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21828));
    defparam i19297_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_161 (.I0(comm_cmd[0]), .I1(comm_cmd[3]), 
            .I2(n21207), .I3(ICE_GPMO_1), .O(n11648));   // zim_main.vhd(831[11:20])
    defparam i1_2_lut_3_lut_adj_161.LUT_INIT = 16'hf7f7;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15478));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15477));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15476));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15475));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15474));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15473));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15472));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15471));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15470));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15469));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15468));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15467));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15466));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15465));   // zim_main.vhd(564[3] 869[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15464));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15463));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15462));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15461));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15460));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15459));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15458));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 mux_149_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1627));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15457));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15456));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15455));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15454));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15453));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15452));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15451));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15450));   // zim_main.vhd(564[3] 869[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15449));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15448));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15447));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15446));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15445));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15444));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15443));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15442));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15441));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i12_4_lut_adj_162 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20292));
    defparam i12_4_lut_adj_162.LUT_INIT = 16'h0aca;
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15440));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15439));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15438));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15437));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15436));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15435));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15434));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15433));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15432));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15431));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15430));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15429));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15428));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15427));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15426));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i12_4_lut_adj_163 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20268));   // zim_main.vhd(250[9:19])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'h0aca;
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15425));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15424));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15423));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15422));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15421));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15420));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15419));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15418));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i4 (.Q(buf_control[4]), .C(clk_32MHz), .D(n15417));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15416));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15415));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15414));   // zim_main.vhd(564[3] 869[10])
    SB_DFFN eis_end_325 (.Q(eis_end), .C(clk_32MHz), .D(n15412));   // zim_main.vhd(468[3] 546[10])
    SB_DFFN dummy_327 (.Q(TEST_LED), .C(clk_32MHz), .D(n15411));   // zim_main.vhd(468[3] 546[10])
    SB_DFFN eis_adc_trig_326 (.Q(eis_adc_trig), .C(clk_32MHz), .D(n15410));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i12_4_lut_adj_164 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20306));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp_adj_1730[20]), .I1(cmd_rdadctmp_adj_1730[19]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20374));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'h0aca;
    SB_LUT4 i15703_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1534));   // zim_main.vhd(581[4] 868[13])
    defparam i15703_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_157_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1569));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_166 (.I0(adc_state_adj_1684[1]), .I1(DTRIG_N_851_adj_1478), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21139));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_2_lut_adj_166.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_167 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20304));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_148_Mux_4_i23_3_lut (.I0(buf_control[4]), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1662));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_168 (.I0(cmd_rdadctmp_adj_1685[29]), .I1(cmd_rdadctmp_adj_1685[28]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20656));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i15705_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1535));   // zim_main.vhd(581[4] 868[13])
    defparam i15705_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_169 (.I0(comm_cmd[3]), .I1(n21207), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12_adj_1440));
    defparam i1_2_lut_adj_169.LUT_INIT = 16'hdddd;
    SB_LUT4 i3_4_lut_adj_170 (.I0(n11648), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8983));   // zim_main.vhd(581[4] 868[13])
    defparam i3_4_lut_adj_170.LUT_INIT = 16'hfeff;
    SB_LUT4 i19374_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21833));
    defparam i19374_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_171 (.I0(cmd_rdadctmp_adj_1730[19]), .I1(cmd_rdadctmp_adj_1730[18]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20372));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'h0aca;
    SB_LUT4 i15525_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9209));
    defparam i15525_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_172 (.I0(cmd_rdadctmp_adj_1730[18]), .I1(cmd_rdadctmp_adj_1730[17]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20370));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_173 (.I0(cmd_rdadctmp_adj_1730[17]), .I1(cmd_rdadctmp_adj_1730[16]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20368));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_173.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_174 (.I0(cmd_rdadctmp_adj_1730[16]), .I1(cmd_rdadctmp_adj_1730[15]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20366));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_175 (.I0(adress[1]), .I1(adress[0]), .I2(n13072), 
            .I3(n14783), .O(n20194));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_175.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_176 (.I0(cmd_rdadctmp_adj_1730[15]), .I1(cmd_rdadctmp_adj_1730[14]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20364));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_177 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20302));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'h0aca;
    SB_LUT4 i13003_2_lut (.I0(drdy_sync2_adj_1475), .I1(drdy_prev_adj_1476), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n15402));   // adc_ads127.vhd(96[3] 101[10])
    defparam i13003_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_178 (.I0(cmd_rdadctmp_adj_1730[14]), .I1(cmd_rdadctmp_adj_1730[13]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20362));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'h0aca;
    SB_LUT4 i12998_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15397));   // adc_ads127.vhd(96[3] 101[10])
    defparam i12998_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_179 (.I0(cmd_rdadctmp_adj_1730[13]), .I1(cmd_rdadctmp_adj_1730[12]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20360));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_180 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20300));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_181 (.I0(cmd_rdadctmp_adj_1730[12]), .I1(cmd_rdadctmp_adj_1730[11]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20358));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_182 (.I0(cmd_rdadctmp_adj_1730[11]), .I1(cmd_rdadctmp_adj_1730[10]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20356));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp_adj_1685[16]), .I1(cmd_rdadctmp_adj_1685[15]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20884));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_184 (.I0(cmd_rdadctmp_adj_1730[10]), .I1(cmd_rdadctmp_adj_1730[9]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20354));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'h0aca;
    SB_LUT4 i19638_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21822));
    defparam i19638_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19618_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21821));
    defparam i19618_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_185 (.I0(cmd_rdadctmp_adj_1685[18]), .I1(cmd_rdadctmp_adj_1685[17]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20888));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_3_i1_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1570));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_186 (.I0(cmd_rdadctmp_adj_1730[9]), .I1(cmd_rdadctmp_adj_1730[8]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20352));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3909_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[3]), .I3(n20017), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_146_3 (.CI(n19896), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19897));
    SB_LUT4 mux_157_Mux_3_i2_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[3] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1571));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_3_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_187 (.I0(cmd_rdadctmp_adj_1685[19]), .I1(cmd_rdadctmp_adj_1685[18]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20890));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_LUT4 i19571_2_lut (.I0(\comm_buf[6] [3]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21581));
    defparam i19571_2_lut.LUT_INIT = 16'h2222;
    SB_DFF comm_clear_334__i2 (.Q(trig_dds0), .C(clk_32MHz), .D(n20318));   // zim_main.vhd(581[4] 868[13])
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp_adj_1730[8]), .I1(cmd_rdadctmp_adj_1730[7]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20350));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'h0aca;
    SB_CARRY add_68_12 (.CI(n19867), .I0(data_cntvec[10]), .I1(ICE_GPMO_1), 
            .CO(n19868));
    SB_LUT4 add_68_11_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[9]), .I2(ICE_GPMO_1), 
            .I3(n19866), .O(n435)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_189 (.I0(cmd_rdadctmp_adj_1685[20]), .I1(cmd_rdadctmp_adj_1685[19]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20892));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_190 (.I0(comm_cmd[7]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[7]), .O(n20442));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_191 (.I0(comm_cmd[6]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[6]), .O(n20440));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_192 (.I0(cmd_rdadctmp_adj_1730[7]), .I1(cmd_rdadctmp_adj_1730[6]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20348));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'h0aca;
    SB_CARRY add_68_11 (.CI(n19866), .I0(data_cntvec[9]), .I1(ICE_GPMO_1), 
            .CO(n19867));
    SB_LUT4 add_146_2_lut (.I0(n14_adj_1525), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_193 (.I0(comm_cmd[5]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[5]), .O(n20438));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'hca0a;
    SB_LUT4 i19479_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21503));
    defparam i19479_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY wdtick_cnt_3909_add_4_5 (.CI(n20017), .I0(ICE_GPMO_1), .I1(wdtick_cnt[3]), 
            .CO(n20018));
    SB_CARRY add_146_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19896));
    SB_LUT4 mux_149_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1644));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_194 (.I0(comm_cmd[4]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[4]), .O(n20436));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 add_145_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10960), 
            .I3(n19895), .O(n7_adj_1537)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i11_4_lut_adj_195 (.I0(comm_cmd[3]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[3]), .O(n20434));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_195.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_196 (.I0(cmd_rdadctmp_adj_1730[6]), .I1(cmd_rdadctmp_adj_1730[5]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20346));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_196.LUT_INIT = 16'h0aca;
    SB_LUT4 i5_4_lut_adj_197 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1583));   // zim_main.vhd(459[7:27])
    defparam i5_4_lut_adj_197.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_198 (.I0(cmd_rdadctmp_adj_1730[5]), .I1(cmd_rdadctmp_adj_1730[4]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20344));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_199 (.I0(comm_cmd[2]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[2]), .O(n20432));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_199.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3909_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[2]), .I3(n20016), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_4 (.CI(n20016), .I0(ICE_GPMO_1), .I1(wdtick_cnt[2]), 
            .CO(n20017));
    SB_LUT4 i12_4_lut_adj_200 (.I0(cmd_rdadctmp_adj_1685[21]), .I1(cmd_rdadctmp_adj_1685[20]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20894));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'hca0a;
    SB_LUT4 i19668_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21492));
    defparam i19668_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11_4_lut_adj_201 (.I0(comm_cmd[1]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[1]), .O(n20430));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_201.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_4_lut_adj_202 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1583), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n21059));   // zim_main.vhd(459[7:27])
    defparam i6_4_lut_adj_202.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_149_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1648));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_145_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10960), 
            .I3(n19894), .O(n7_adj_1538)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_10_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[8]), .I2(ICE_GPMO_1), 
            .I3(n19865), .O(n436)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_4 (.CI(n19851), .I0(data_count[2]), .I1(ICE_GPMO_1), 
            .CO(n19852));
    SB_CARRY add_145_9 (.CI(n19894), .I0(data_index[7]), .I1(n10960), 
            .CO(n19895));
    SB_LUT4 i1_2_lut_adj_203 (.I0(comm_state[0]), .I1(comm_state_3__N_415[2]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n11008));
    defparam i1_2_lut_adj_203.LUT_INIT = 16'h4444;
    SB_LUT4 i15611_2_lut (.I0(dds0_mclkcnt[6]), .I1(n21059), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10));   // zim_main.vhd(459[4] 462[11])
    defparam i15611_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_204 (.I0(cmd_rdadctmp_adj_1730[4]), .I1(cmd_rdadctmp_adj_1730[3]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20342));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'h0aca;
    SB_LUT4 add_145_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10960), 
            .I3(n19893), .O(n7_adj_1540)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3909_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[1]), .I3(n20015), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_8 (.CI(n19893), .I0(data_index[6]), .I1(n10960), 
            .CO(n19894));
    SB_LUT4 add_145_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10960), 
            .I3(n19892), .O(n17820)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_68_10 (.CI(n19865), .I0(data_cntvec[8]), .I1(ICE_GPMO_1), 
            .CO(n19866));
    SB_LUT4 i1_4_lut_adj_205 (.I0(n12581), .I1(n12120), .I2(n9353), .I3(n12486), 
            .O(n12127));
    defparam i1_4_lut_adj_205.LUT_INIT = 16'h8880;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1730[3]), .I1(cmd_rdadctmp_adj_1730[2]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20340));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_3 (.CI(n20015), .I0(ICE_GPMO_1), .I1(wdtick_cnt[1]), 
            .CO(n20016));
    SB_LUT4 i15742_2_lut_3_lut (.I0(comm_state[0]), .I1(n5964), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5966));   // zim_main.vhd(581[4] 868[13])
    defparam i15742_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i3905_1_lut (.I0(wdtick_flag), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6148));   // zim_main.vhd(418[3] 429[10])
    defparam i3905_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_68_9_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[7]), .I2(ICE_GPMO_1), 
            .I3(n19864), .O(n437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 wdtick_cnt_3909_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n6148), .I2(wdtick_cnt[0]), 
            .I3(ICE_GPMO_1), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_207 (.I0(cmd_rdadctmp_adj_1730[2]), .I1(cmd_rdadctmp_adj_1730[1]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20338));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_CARRY add_145_7 (.CI(n19892), .I0(data_index[5]), .I1(n10960), 
            .CO(n19893));
    SB_LUT4 i19290_2_lut (.I0(comm_state[2]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21609));   // zim_main.vhd(564[3] 869[10])
    defparam i19290_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_68_9 (.CI(n19864), .I0(data_cntvec[7]), .I1(ICE_GPMO_1), 
            .CO(n19865));
    SB_LUT4 i19394_4_lut (.I0(n21609), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_state[3]), .O(n21608));   // zim_main.vhd(564[3] 869[10])
    defparam i19394_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i12_4_lut_adj_208 (.I0(comm_length[2]), .I1(n21608), .I2(n12127), 
            .I3(comm_cmd[0]), .O(n20298));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_2 (.CI(ICE_GPMO_1), .I0(n6148), .I1(wdtick_cnt[0]), 
            .CO(n20015));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[7]), .I3(n20014), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(n10), .I3(n20013), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_209 (.I0(cmd_rdadctmp_adj_1685[22]), .I1(cmd_rdadctmp_adj_1685[21]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20738));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_210 (.I0(buf_dds1[15]), .I1(\comm_buf[0] [7]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20254));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_211 (.I0(buf_dds1[14]), .I1(\comm_buf[0] [6]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20252));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'hca0a;
    SB_LUT4 i13669_4_lut (.I0(n21313), .I1(buf_dds1[13]), .I2(n14_adj_1559), 
            .I3(n12084), .O(n16068));   // zim_main.vhd(564[3] 869[10])
    defparam i13669_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i3796_3_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n5964));   // zim_main.vhd(250[9:19])
    defparam i3796_3_lut_3_lut.LUT_INIT = 16'h1a1a;
    SB_LUT4 i12_4_lut_adj_212 (.I0(cmd_rdadctmp_adj_1685[23]), .I1(cmd_rdadctmp_adj_1685[22]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20736));
    defparam i12_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_LUT4 i6517_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8));   // zim_main.vhd(581[4] 868[13])
    defparam i6517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(buf_dds1[12]), .I1(\comm_buf[0] [4]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20248));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_214 (.I0(comm_state[1]), .I1(n13), .I2(n5964), 
            .I3(n20056), .O(n6_adj_1590));
    defparam i12_4_lut_adj_214.LUT_INIT = 16'h3505;
    SB_LUT4 i13756_4_lut (.I0(trig_dds1), .I1(n5978), .I2(n6_adj_1590), 
            .I3(n5964), .O(n16155));   // zim_main.vhd(581[4] 868[13])
    defparam i13756_4_lut.LUT_INIT = 16'h3202;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_8 (.CI(n20013), .I0(ICE_GPMO_1), 
            .I1(n10), .CO(n20014));
    SB_LUT4 i12_4_lut_adj_215 (.I0(buf_dds1[11]), .I1(\comm_buf[0] [3]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20246));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 i18875_4_lut (.I0(data_idxvec[14]), .I1(buf_data_vac[45]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21467));
    defparam i18875_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i3795_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n5978));   // zim_main.vhd(564[3] 869[10])
    defparam i3795_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 mux_148_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1655));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18874_4_lut (.I0(n23_adj_1655), .I1(req_data_cnt[14]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21466));
    defparam i18874_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_216 (.I0(cmd_rdadctmp_adj_1730[1]), .I1(cmd_rdadctmp_adj_1730[0]), 
            .I2(n13388), .I3(adc_state_adj_1729[3]), .O(n20336));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'h0aca;
    SB_LUT4 i18892_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21484));
    defparam i18892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18894_4_lut (.I0(n21484), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21486));
    defparam i18894_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_217 (.I0(buf_dds1[10]), .I1(\comm_buf[0] [2]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20244));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_218 (.I0(buf_dds1[9]), .I1(\comm_buf[0] [1]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20242));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_LUT4 add_145_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10960), 
            .I3(n19891), .O(n7_adj_1542)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_145_6 (.CI(n19891), .I0(data_index[4]), .I1(n10960), 
            .CO(n19892));
    SB_LUT4 i12_4_lut_adj_219 (.I0(buf_dds1[8]), .I1(\comm_buf[0] [0]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20240));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[5]), .I3(n20012), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19372_2_lut (.I0(buf_data_vac[31]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21583));
    defparam i19372_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_220 (.I0(buf_dds1[7]), .I1(\comm_buf[1] [7]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20238));   // zim_main.vhd(564[3] 869[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_149_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1642));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_221 (.I0(buf_dds1[6]), .I1(\comm_buf[1] [6]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20236));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_7 (.CI(n20012), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[5]), .CO(n20013));
    SB_LUT4 i19660_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21855));
    defparam i19660_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_149_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1623));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_145_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10960), 
            .I3(n19890), .O(n7_adj_1544)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_145_5 (.CI(n19890), .I0(data_index[3]), .I1(n10960), 
            .CO(n19891));
    SB_LUT4 add_67_3_lut (.I0(ICE_GPMO_1), .I1(data_count[1]), .I2(ICE_GPMO_1), 
            .I3(n19850), .O(n425)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_8_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[6]), .I2(ICE_GPMO_1), 
            .I3(n19863), .O(n438)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_145_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10960), 
            .I3(n19889), .O(n7_adj_1546)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[4]), .I3(n20011), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_222 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20530));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_223 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20528));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_149_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1629));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13693_4_lut (.I0(n21313), .I1(buf_dds1[5]), .I2(n14_adj_1560), 
            .I3(n12084), .O(n16092));   // zim_main.vhd(564[3] 869[10])
    defparam i13693_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_224 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20526));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_149_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1646));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1647));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_145_4 (.CI(n19889), .I0(data_index[2]), .I1(n10960), 
            .CO(n19890));
    SB_LUT4 mux_149_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1630));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_225 (.I0(buf_dds1[4]), .I1(\comm_buf[1] [4]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20230));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_225.LUT_INIT = 16'hca0a;
    SB_DFF comm_clear_334__i1 (.Q(trig_dds1), .C(clk_32MHz), .D(n16155));   // zim_main.vhd(581[4] 868[13])
    SB_LUT4 i12_4_lut_adj_226 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20524));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_226.LUT_INIT = 16'h0aca;
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20208));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_8_i15_4_lut (.I0(n7_adj_1537), .I1(n8), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[8]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13698_4_lut (.I0(n21313), .I1(buf_dds1[3]), .I2(n14_adj_1561), 
            .I3(n12084), .O(n16097));   // zim_main.vhd(564[3] 869[10])
    defparam i13698_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i6527_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1539));   // zim_main.vhd(581[4] 868[13])
    defparam i6527_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_227 (.I0(buf_dds1[2]), .I1(\comm_buf[1] [2]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20224));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_227.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_228 (.I0(buf_dds1[1]), .I1(\comm_buf[1] [1]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20222));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_228.LUT_INIT = 16'hca0a;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20404));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i12_4_lut_adj_229 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20522));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'h0aca;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_6 (.CI(n20011), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[4]), .CO(n20012));
    SB_LUT4 i12_4_lut_adj_230 (.I0(cmd_rdadctmp_adj_1685[24]), .I1(cmd_rdadctmp_adj_1685[23]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20734));
    defparam i12_4_lut_adj_230.LUT_INIT = 16'hca0a;
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20310));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i12_4_lut_adj_231 (.I0(cmd_rdadctmp_adj_1685[25]), .I1(cmd_rdadctmp_adj_1685[24]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20896));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_148_Mux_2_i23_3_lut (.I0(SELIRNG0), .I1(acadc_skipCount[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1675));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_2_i24_3_lut (.I0(req_data_cnt[10]), .I1(tacadc_rst), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n24_adj_1676));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i24_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_145_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10960), 
            .I3(n19888), .O(n7_adj_1548)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_232 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n11904), .I3(adc_state_adj_1726[2]), .O(n20520));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_232.LUT_INIT = 16'h0aca;
    SB_LUT4 i19323_2_lut (.I0(buf_data_vac[37]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21537));
    defparam i19323_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_68_8 (.CI(n19863), .I0(data_cntvec[6]), .I1(ICE_GPMO_1), 
            .CO(n19864));
    SB_LUT4 mux_148_Mux_2_i26_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1677));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_7_i15_4_lut (.I0(n7_adj_1538), .I1(n8_adj_1539), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[7]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6537_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1541));   // zim_main.vhd(581[4] 868[13])
    defparam i6537_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_233 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20518));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'h0aca;
    SB_CARRY add_145_3 (.CI(n19888), .I0(data_index[1]), .I1(n10960), 
            .CO(n19889));
    SB_LUT4 i12_4_lut_adj_234 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n11938), .I3(adc_state_adj_1729[2]), .O(n20610));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'h0aca;
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[3]), .I3(n20010), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17405_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17405_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i14525_4_lut (.I0(iac_raw_buf_N_730), .I1(n11_adj_1520), .I2(eis_state[1]), 
            .I3(eis_state[2]), .O(n16924));   // zim_main.vhd(297[9:18])
    defparam i14525_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i14529_4_lut (.I0(n16924), .I1(n40_adj_1581), .I2(eis_state[0]), 
            .I3(eis_state[2]), .O(eis_state_2__N_169[1]));   // zim_main.vhd(297[9:18])
    defparam i14529_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i12_4_lut_adj_235 (.I0(cmd_rdadctmp_adj_1685[31]), .I1(cmd_rdadctmp_adj_1685[30]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20662));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_236 (.I0(cmd_rdadctmp_adj_1685[30]), .I1(cmd_rdadctmp_adj_1685[29]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20660));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_237 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20466));
    defparam i12_4_lut_adj_237.LUT_INIT = 16'h0aca;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_5 (.CI(n20010), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[3]), .CO(n20011));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[2]), .I3(n20009), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_4 (.CI(n20009), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[2]), .CO(n20010));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[1]), .I3(n20008), .O(n44_adj_1515)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_3 (.CI(n20008), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[1]), .CO(n20009));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_2_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_2 (.CI(VCC_net), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[0]), .CO(n20008));
    SB_LUT4 add_145_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10960), 
            .I3(VCC_net), .O(n7_adj_1524)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_145_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10960), 
            .CO(n19888));
    SB_LUT4 add_73_17_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[15]), .I2(ICE_GPMO_1), 
            .I3(n19887), .O(n479)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_386_Mux_6_i15_4_lut (.I0(n7_adj_1540), .I1(n8_adj_1541), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[6]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_16_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[14]), .I2(ICE_GPMO_1), 
            .I3(n19886), .O(n480)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_16 (.CI(n19886), .I0(acadc_skipcnt[14]), .I1(ICE_GPMO_1), 
            .CO(n19887));
    SB_LUT4 add_73_15_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[13]), .I2(ICE_GPMO_1), 
            .I3(n19885), .O(n481)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_67_7 (.CI(n19854), .I0(data_count[5]), .I1(ICE_GPMO_1), 
            .CO(n19855));
    SB_CARRY add_73_15 (.CI(n19885), .I0(acadc_skipcnt[13]), .I1(ICE_GPMO_1), 
            .CO(n19886));
    SB_LUT4 i12_4_lut_adj_238 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n13243), 
            .I3(n1), .O(n20608));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_239 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20592));
    defparam i12_4_lut_adj_239.LUT_INIT = 16'h0aca;
    SB_LUT4 i13730_3_lut (.I0(n15166), .I1(bit_cnt_adj_1710[0]), .I2(dds_state_adj_1708[1]), 
            .I3(ICE_GPMO_1), .O(n16129));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13730_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 mux_157_Mux_4_i1_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1567));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13733_3_lut (.I0(n15161), .I1(bit_cnt_adj_1706[0]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n16132));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13733_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i12_4_lut_adj_240 (.I0(cmd_rdadctmp_adj_1685[26]), .I1(cmd_rdadctmp_adj_1685[25]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20902));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_240.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_241 (.I0(VAC_CS), .I1(adc_state_adj_1684[1]), .I2(adc_state_adj_1684[0]), 
            .I3(DTRIG_N_851_adj_1478), .O(n15_adj_1596));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_adj_241.LUT_INIT = 16'h4554;
    SB_LUT4 i19742_4_lut (.I0(n21139), .I1(n15_adj_1596), .I2(drdy_falling_adj_1477), 
            .I3(adc_state_adj_1684[0]), .O(n12_adj_1592));   // adc_ads127.vhd(36[3] 91[10])
    defparam i19742_4_lut.LUT_INIT = 16'h3313;
    SB_LUT4 i12_4_lut_adj_242 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20516));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_242.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_243 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20514));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_4_i2_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1568));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_4_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_244 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20512));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_244.LUT_INIT = 16'h0aca;
    SB_LUT4 add_68_7_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[5]), .I2(ICE_GPMO_1), 
            .I3(n19862), .O(n439)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_245 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20510));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_245.LUT_INIT = 16'h0aca;
    SB_CARRY add_68_7 (.CI(n19862), .I0(data_cntvec[5]), .I1(ICE_GPMO_1), 
            .CO(n19863));
    SB_LUT4 i12_4_lut_adj_246 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20508));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'h0aca;
    SB_LUT4 add_73_14_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[12]), .I2(ICE_GPMO_1), 
            .I3(n19884), .O(n482)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_247 (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(n4_adj_1641));   // zim_main.vhd(612[5] 620[12])
    defparam i1_2_lut_3_lut_4_lut_adj_247.LUT_INIT = 16'hfdff;
    SB_LUT4 add_68_6_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[4]), .I2(ICE_GPMO_1), 
            .I3(n19861), .O(n440)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_14 (.CI(n19884), .I0(acadc_skipcnt[12]), .I1(ICE_GPMO_1), 
            .CO(n19885));
    SB_LUT4 add_73_13_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[11]), .I2(ICE_GPMO_1), 
            .I3(n19883), .O(n483)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_13 (.CI(n19883), .I0(acadc_skipcnt[11]), .I1(ICE_GPMO_1), 
            .CO(n19884));
    SB_CARRY add_68_6 (.CI(n19861), .I0(data_cntvec[4]), .I1(ICE_GPMO_1), 
            .CO(n19862));
    SB_LUT4 add_73_12_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[10]), .I2(ICE_GPMO_1), 
            .I3(n19882), .O(n484)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_12 (.CI(n19882), .I0(acadc_skipcnt[10]), .I1(ICE_GPMO_1), 
            .CO(n19883));
    SB_LUT4 add_68_5_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[3]), .I2(ICE_GPMO_1), 
            .I3(n19860), .O(n441)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_11_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[9]), .I2(ICE_GPMO_1), 
            .I3(n19881), .O(n485)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_5 (.CI(n19860), .I0(data_cntvec[3]), .I1(ICE_GPMO_1), 
            .CO(n19861));
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20222));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_73_11 (.CI(n19881), .I0(acadc_skipcnt[9]), .I1(ICE_GPMO_1), 
            .CO(n19882));
    SB_LUT4 add_68_4_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[2]), .I2(ICE_GPMO_1), 
            .I3(n19859), .O(n442)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_10_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[8]), .I2(ICE_GPMO_1), 
            .I3(n19880), .O(n486)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20224));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_73_10 (.CI(n19880), .I0(acadc_skipcnt[8]), .I1(ICE_GPMO_1), 
            .CO(n19881));
    SB_LUT4 add_73_9_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[7]), .I2(ICE_GPMO_1), 
            .I3(n19879), .O(n487)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_248 (.I0(cmd_rdadctmp_adj_1685[0]), .I1(VAC_MISO), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20752));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_248.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_249 (.I0(IAC_CS), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(DTRIG_N_851), .O(n15_adj_1601));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_adj_249.LUT_INIT = 16'h4554;
    SB_LUT4 i19646_2_lut_3_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), 
            .I2(eis_state[2]), .I3(ICE_GPMO_1), .O(n21838));
    defparam i19646_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_CARRY add_68_4 (.CI(n19859), .I0(data_cntvec[2]), .I1(ICE_GPMO_1), 
            .CO(n19860));
    SB_LUT4 i19745_4_lut (.I0(n21142), .I1(n15_adj_1601), .I2(drdy_falling), 
            .I3(adc_state[0]), .O(n12_adj_1600));   // adc_ads127.vhd(36[3] 91[10])
    defparam i19745_4_lut.LUT_INIT = 16'h3313;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16097));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_adj_250 (.I0(adc_state[1]), .I1(DTRIG_N_851), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21142));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_2_lut_adj_250.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[7]), 
            .I2(buf_readRTD[15]), .I3(comm_cmd[1]), .O(n22804));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22804_bdd_4_lut (.I0(n22804), .I1(buf_adcdata_vdc[23]), .I2(buf_adcdata_vac[23]), 
            .I3(comm_cmd[1]), .O(n21365));
    defparam n22804_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_251 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12820), 
            .I3(adc_state[0]), .O(n20750));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_251.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20230));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_3_lut_adj_252 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n21217));
    defparam i1_2_lut_3_lut_adj_252.LUT_INIT = 16'hefef;
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n19_adj_1647), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22798));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22798_bdd_4_lut (.I0(n22798), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1646), 
            .I3(comm_cmd[2]), .O(n22801));
    defparam n22798_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i4_4_lut_adj_253 (.I0(comm_index[1]), .I1(comm_index[0]), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n10_adj_1527));   // zim_main.vhd(564[3] 869[10])
    defparam i4_4_lut_adj_253.LUT_INIT = 16'h2000;
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16092));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30));   // zim_main.vhd(798[5] 853[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_LUT4 i12077_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14476));   // zim_main.vhd(581[4] 868[13])
    defparam i12077_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_254 (.I0(n12581), .I1(n9_adj_1438), .I2(comm_state[3]), 
            .I3(n10_adj_1527), .O(n12507));
    defparam i1_4_lut_adj_254.LUT_INIT = 16'ha8a0;
    SB_LUT4 i1_2_lut_4_lut_adj_255 (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(n12486), .O(n4_adj_1640));
    defparam i1_2_lut_4_lut_adj_255.LUT_INIT = 16'hff02;
    SB_LUT4 i1_2_lut_3_lut_adj_256 (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), 
            .I2(cs_falling_pend), .I3(ICE_GPMO_1), .O(n36));
    defparam i1_2_lut_3_lut_adj_256.LUT_INIT = 16'hefef;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20154 (.I0(comm_cmd[1]), .I1(n26), .I2(n21855), 
            .I3(comm_cmd[2]), .O(n22792));
    defparam comm_cmd_1__bdd_4_lut_20154.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_257 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12507), .I3(comm_state[3]), .O(n20310));   // zim_main.vhd(250[9:19])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'h0aca;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20236));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(VAC_CLK));   // zim_main.vhd(350[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 n22792_bdd_4_lut (.I0(n22792), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22795));
    defparam n22792_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19512_2_lut_3_lut (.I0(n5), .I1(comm_state_3__N_422[1]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n21700));   // zim_main.vhd(581[4] 868[13])
    defparam i19512_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 mux_149_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1643));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14517_3_lut_4_lut (.I0(AC_ADC_SYNC), .I1(n21145), .I2(n16904), 
            .I3(eis_state[2]), .O(n16916));   // zim_main.vhd(297[9:18])
    defparam i14517_3_lut_4_lut.LUT_INIT = 16'hf077;
    SB_CARRY add_73_9 (.CI(n19879), .I0(acadc_skipcnt[7]), .I1(ICE_GPMO_1), 
            .CO(n19880));
    SB_LUT4 comm_cmd_1__bdd_4_lut_20149 (.I0(comm_cmd[1]), .I1(n19_adj_1643), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22786));
    defparam comm_cmd_1__bdd_4_lut_20149.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_258 (.I0(n12581), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1621), .O(n12169));
    defparam i1_4_lut_adj_258.LUT_INIT = 16'h8a88;
    SB_LUT4 n22786_bdd_4_lut (.I0(n22786), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1642), 
            .I3(comm_cmd[2]), .O(n22789));
    defparam n22786_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15444_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n17822));
    defparam i15444_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_73_8_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[6]), .I2(ICE_GPMO_1), 
            .I3(n19878), .O(n488)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20238));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_73_8 (.CI(n19878), .I0(acadc_skipcnt[6]), .I1(ICE_GPMO_1), 
            .CO(n19879));
    SB_LUT4 add_73_7_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[5]), .I2(ICE_GPMO_1), 
            .I3(n19877), .O(n489)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_7 (.CI(n19877), .I0(acadc_skipcnt[5]), .I1(ICE_GPMO_1), 
            .CO(n19878));
    SB_CARRY add_67_6 (.CI(n19853), .I0(data_count[4]), .I1(ICE_GPMO_1), 
            .CO(n19854));
    SB_LUT4 i12418_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14807));   // zim_main.vhd(581[4] 868[13])
    defparam i12418_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20240));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 add_73_6_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[4]), .I2(ICE_GPMO_1), 
            .I3(n19876), .O(n490)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_6 (.CI(n19876), .I0(acadc_skipcnt[4]), .I1(ICE_GPMO_1), 
            .CO(n19877));
    SB_LUT4 i11_4_lut_adj_259 (.I0(comm_cmd[0]), .I1(n14807), .I2(n12169), 
            .I3(comm_rx_buf[0]), .O(n20404));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_260 (.I0(cmd_rdadctmp_adj_1685[27]), .I1(cmd_rdadctmp_adj_1685[26]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20904));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 add_73_5_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[3]), .I2(ICE_GPMO_1), 
            .I3(n19875), .O(n491)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_261 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11654));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_adj_261.LUT_INIT = 16'heeee;
    SB_CARRY add_73_5 (.CI(n19875), .I0(acadc_skipcnt[3]), .I1(ICE_GPMO_1), 
            .CO(n19876));
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20242));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i18719_2_lut (.I0(n13), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21311));
    defparam i18719_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_73_4_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[2]), .I2(ICE_GPMO_1), 
            .I3(n19874), .O(n492)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_73_4 (.CI(n19874), .I0(acadc_skipcnt[2]), .I1(ICE_GPMO_1), 
            .CO(n19875));
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20244));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i20_4_lut (.I0(n21240), .I1(n21311), .I2(comm_state[3]), .I3(n9209), 
            .O(n12084));
    defparam i20_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 add_68_3_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[1]), .I2(ICE_GPMO_1), 
            .I3(n19858), .O(n443)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n22543), .I2(n21486), 
            .I3(comm_cmd[3]), .O(n22780));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22780_bdd_4_lut (.I0(n22780), .I1(n22597), .I2(n22651), .I3(comm_cmd[3]), 
            .O(n22783));
    defparam n22780_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_262 (.I0(buf_dds1[0]), .I1(\comm_buf[1] [0]), 
            .I2(n12084), .I3(n1_adj_1512), .O(n20208));   // zim_main.vhd(564[3] 869[10])
    defparam i11_4_lut_adj_262.LUT_INIT = 16'hca0a;
    SB_LUT4 i15446_4_lut (.I0(n17820), .I1(n17822), .I2(comm_state[3]), 
            .I3(n9209), .O(data_index_8__N_213[5]));   // zim_main.vhd(250[9:19])
    defparam i15446_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20139 (.I0(comm_cmd[2]), .I1(n21466), 
            .I2(n21467), .I3(comm_cmd[3]), .O(n22774));
    defparam comm_cmd_2__bdd_4_lut_20139.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_263 (.I0(cmd_rdadctmp_adj_1685[28]), .I1(cmd_rdadctmp_adj_1685[27]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20906));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_263.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_264 (.I0(comm_state[3]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21118));
    defparam i1_2_lut_adj_264.LUT_INIT = 16'h2222;
    SB_LUT4 i6557_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1543));   // zim_main.vhd(581[4] 868[13])
    defparam i6557_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_68_3 (.CI(n19858), .I0(data_cntvec[1]), .I1(ICE_GPMO_1), 
            .CO(n19859));
    SB_LUT4 add_68_2_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n444)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_73_3_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[1]), .I2(ICE_GPMO_1), 
            .I3(n19873), .O(n493)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20246));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_73_3 (.CI(n19873), .I0(acadc_skipcnt[1]), .I1(ICE_GPMO_1), 
            .CO(n19874));
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20248));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22774_bdd_4_lut (.I0(n22774), .I1(n22747), .I2(n22759), .I3(comm_cmd[3]), 
            .O(n22777));
    defparam n22774_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16068));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20252));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20254));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_adj_265 (.I0(n5964), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11_adj_1510));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_adj_265.LUT_INIT = 16'heeee;
    SB_LUT4 comm_state_3__I_0_386_Mux_4_i15_4_lut (.I0(n7_adj_1542), .I1(n8_adj_1543), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[4]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20298));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20430));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i6567_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1545));   // zim_main.vhd(581[4] 868[13])
    defparam i6567_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20432));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20434));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i2_3_lut_adj_266 (.I0(n20056), .I1(n5964), .I2(n13_adj_1484), 
            .I3(ICE_GPMO_1), .O(n9_adj_1580));   // zim_main.vhd(581[4] 868[13])
    defparam i2_3_lut_adj_266.LUT_INIT = 16'h0808;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20436));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20438));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_4_lut_adj_267 (.I0(n5978), .I1(n9_adj_1580), .I2(trig_dds0), 
            .I3(n11_adj_1510), .O(n20318));   // zim_main.vhd(581[4] 868[13])
    defparam i1_4_lut_adj_267.LUT_INIT = 16'h5444;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20440));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_68_2 (.CI(ICE_GPMO_1), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19858));
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20442));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i12_4_lut_adj_268 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11904), 
            .I3(adc_state_adj_1726[2]), .O(n20464));
    defparam i12_4_lut_adj_268.LUT_INIT = 16'h0aca;
    SB_LUT4 buf_control_4__I_0_1_lut (.I0(buf_control[4]), .I1(ICE_GPMO_1), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(VDC_RNG0));   // zim_main.vhd(390[16:34])
    defparam buf_control_4__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_269 (.I0(cmd_rdadctmp_adj_1685[17]), .I1(cmd_rdadctmp_adj_1685[16]), 
            .I2(n12890), .I3(adc_state_adj_1684[0]), .O(n20886));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12_4_lut_adj_269.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20144 (.I0(comm_cmd[1]), .I1(n21821), 
            .I2(n21822), .I3(comm_cmd[2]), .O(n22768));
    defparam comm_cmd_1__bdd_4_lut_20144.LUT_INIT = 16'he4aa;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20300));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20302));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22768_bdd_4_lut (.I0(n22768), .I1(n21833), .I2(n23_adj_1662), 
            .I3(comm_cmd[2]), .O(n22771));
    defparam n22768_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20304));   // zim_main.vhd(564[3] 869[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20306));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 add_73_2_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n494)) /* synthesis syn_instantiated=1 */ ;
    defparam add_73_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20268));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_3_i15_4_lut (.I0(n7_adj_1544), .I1(n8_adj_1545), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[3]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20292));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20129 (.I0(comm_cmd[1]), .I1(n26_adj_1627), 
            .I2(n21828), .I3(comm_cmd[2]), .O(n22762));
    defparam comm_cmd_1__bdd_4_lut_20129.LUT_INIT = 16'he4aa;
    SB_LUT4 i15706_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1536));   // zim_main.vhd(581[4] 868[13])
    defparam i15706_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20308));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_4_lut_adj_270 (.I0(adc_state_adj_1684[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_851_adj_1478), .I3(adc_state_adj_1684[0]), .O(n20634));   // adc_ads127.vhd(36[3] 91[10])
    defparam i1_4_lut_adj_270.LUT_INIT = 16'hcce8;
    SB_LUT4 n22762_bdd_4_lut (.I0(n22762), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22765));
    defparam n22762_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15461_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(CONT_SD));   // zim_main.vhd(395[13:59])
    defparam i15461_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_73_2 (.CI(ICE_GPMO_1), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19873));
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(n11648), 
            .I3(n21118), .O(n10789));   // zim_main.vhd(826[11:20])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0200;
    SB_DFFESR comm_clear_334__i5 (.Q(comm_clear), .C(clk_32MHz), .E(n22833), 
            .D(n5966), .R(n5978));   // zim_main.vhd(581[4] 868[13])
    SB_DFFESR comm_clear_334__i3 (.Q(flagcntwd), .C(clk_32MHz), .E(n7), 
            .D(n21214), .R(n5978));   // zim_main.vhd(581[4] 868[13])
    SB_LUT4 i6577_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1547));   // zim_main.vhd(581[4] 868[13])
    defparam i6577_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_2_i15_4_lut (.I0(n7_adj_1546), .I1(n8_adj_1547), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[2]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n12023), 
            .D(n429), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n12023), 
            .D(n430), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n12023), 
            .D(n431), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n12023), 
            .D(n432), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n12023), 
            .D(n433), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n12023), 
            .D(n434), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n12023), 
            .D(n435), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n12023), 
            .D(n436), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n12023), 
            .D(n437), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n12023), 
            .D(n438), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n12023), 
            .D(n439), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n12023), 
            .D(n440), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n12023), 
            .D(n441), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n12023), 
            .D(n442), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n12023), 
            .D(n443), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n12023), 
            .D(n418), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n12023), 
            .D(n419), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n12023), 
            .D(n420), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 add_146_17_lut (.I0(n14_adj_1535), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19910), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_17_lut.LUT_INIT = 16'hA3AC;
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n12023), 
            .D(n421), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n12023), 
            .D(n422), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 add_68_17_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[15]), .I2(ICE_GPMO_1), 
            .I3(n19872), .O(n429)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_17_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n12023), 
            .D(n423), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 add_67_10_lut (.I0(ICE_GPMO_1), .I1(data_count[8]), .I2(ICE_GPMO_1), 
            .I3(n19857), .O(n418)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n12023), 
            .D(n424), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 add_67_2_lut (.I0(ICE_GPMO_1), .I1(data_count[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n426)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n12023), 
            .D(n425), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFESS cs_mask_cnt_3911__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n11962), 
            .D(n20102), .S(n14979));   // zim_main.vhd(578[20:31])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20159 (.I0(comm_cmd[0]), .I1(VAC_FLT0), 
            .I2(buf_adcdata_iac[22]), .I3(comm_cmd[1]), .O(n22756));
    defparam comm_cmd_0__bdd_4_lut_20159.LUT_INIT = 16'he4aa;
    SB_LUT4 i6587_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n8_adj_1549));   // zim_main.vhd(581[4] 868[13])
    defparam i6587_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22756_bdd_4_lut (.I0(n22756), .I1(buf_dds1[14]), .I2(buf_dds0[14]), 
            .I3(comm_cmd[1]), .O(n22759));
    defparam n22756_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13007_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n6180), 
            .I3(ICE_GPMO_1), .O(n15406));   // spi_slave.vhd(47[3] 84[10])
    defparam i13007_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i13008_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1709[15]), .I2(dds_state_adj_1708[1]), 
            .I3(ICE_GPMO_1), .O(n15407));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13008_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_start_cmd_362 (.Q(ICE_IOB_95), .C(clk_32MHz), .D(n15393));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_1_i15_4_lut (.I0(n7_adj_1548), .I1(n8_adj_1549), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[1]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13009_3_lut (.I0(sclk_sync1), .I1(ICE_SPI_SCLK), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15408));   // spi_slave.vhd(47[3] 84[10])
    defparam i13009_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(n21838), .I2(n16910), 
            .I3(eis_state[0]), .O(n22750));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i15743_3_lut (.I0(comm_state[0]), .I1(n5964), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5967));   // zim_main.vhd(581[4] 868[13])
    defparam i15743_3_lut.LUT_INIT = 16'hdcdc;
    SB_LUT4 mux_157_Mux_6_i1_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1564));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_6_i2_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2_adj_1565));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_6_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12986_3_lut (.I0(buf_control[0]), .I1(n14_adj_1529), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15385));   // zim_main.vhd(564[3] 869[10])
    defparam i12986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12987_3_lut (.I0(buf_dds0[0]), .I1(n14_adj_1525), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15386));   // zim_main.vhd(564[3] 869[10])
    defparam i12987_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12988_3_lut (.I0(IAC_OSR0), .I1(n14_adj_1529), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15387));   // zim_main.vhd(564[3] 869[10])
    defparam i12988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12989_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1529), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15388));   // zim_main.vhd(564[3] 869[10])
    defparam i12989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13010_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15409));   // spi_slave.vhd(47[3] 84[10])
    defparam i13010_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12990_3_lut (.I0(acadc_skipCount[0]), .I1(n14_adj_1525), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15389));   // zim_main.vhd(564[3] 869[10])
    defparam i12990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12991_3_lut (.I0(req_data_cnt[0]), .I1(n14_adj_1525), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15390));   // zim_main.vhd(564[3] 869[10])
    defparam i12991_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19400_2_lut (.I0(\comm_buf[6] [6]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21613));
    defparam i19400_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_157_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1566));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18_3_lut_adj_271 (.I0(eis_state[0]), .I1(eis_state[2]), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n12_adj_1555));
    defparam i18_3_lut_adj_271.LUT_INIT = 16'hacac;
    SB_LUT4 i13011_4_lut (.I0(eis_adc_trig_N_711), .I1(eis_adc_trig), .I2(tacadc_rst), 
            .I3(n12_adj_1555), .O(n15410));   // zim_main.vhd(468[3] 546[10])
    defparam i13011_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i2_2_lut (.I0(wdtick_cnt[0]), .I1(wdtick_cnt[13]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n30_adj_1681));
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i16_4_lut (.I0(wdtick_cnt[20]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[18]), 
            .I3(wdtick_cnt[5]), .O(n44));
    defparam i16_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i20_4_lut_adj_272 (.I0(wdtick_cnt[21]), .I1(wdtick_cnt[26]), 
            .I2(wdtick_cnt[3]), .I3(wdtick_cnt[6]), .O(n48));
    defparam i20_4_lut_adj_272.LUT_INIT = 16'h8000;
    SB_LUT4 i18_4_lut (.I0(wdtick_cnt[27]), .I1(wdtick_cnt[12]), .I2(wdtick_cnt[9]), 
            .I3(wdtick_cnt[16]), .O(n46));
    defparam i18_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19_4_lut (.I0(wdtick_cnt[22]), .I1(wdtick_cnt[4]), .I2(wdtick_cnt[24]), 
            .I3(wdtick_cnt[17]), .O(n47));
    defparam i19_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i17_4_lut (.I0(wdtick_cnt[8]), .I1(wdtick_cnt[7]), .I2(wdtick_cnt[1]), 
            .I3(wdtick_cnt[14]), .O(n45_adj_1680));
    defparam i17_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i22_4_lut (.I0(wdtick_cnt[23]), .I1(n44), .I2(n30_adj_1681), 
            .I3(wdtick_cnt[10]), .O(n50));
    defparam i22_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i26_4_lut (.I0(n45_adj_1680), .I1(n47), .I2(n46), .I3(n48), 
            .O(n54));
    defparam i26_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i21_4_lut (.I0(wdtick_cnt[11]), .I1(wdtick_cnt[15]), .I2(wdtick_cnt[19]), 
            .I3(wdtick_cnt[25]), .O(n49));
    defparam i21_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i15464_4_lut (.I0(wdtick_flag), .I1(n49), .I2(n54), .I3(n50), 
            .O(wdtick_flag_N_310));   // zim_main.vhd(424[5] 427[12])
    defparam i15464_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i15419_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8983), 
            .I3(ICE_GPMO_1), .O(n17798));
    defparam i15419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_273 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(ICE_GPMO_1), .O(n14_adj_1559));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_3_lut_adj_273.LUT_INIT = 16'h1010;
    SB_LUT4 add_146_16_lut (.I0(n14_adj_1536), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19909), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i15695_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1551));   // zim_main.vhd(581[4] 868[13])
    defparam i15695_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11403_2_lut (.I0(eis_state[1]), .I1(eis_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(eis_adc_trig_N_711));   // zim_main.vhd(471[4] 545[13])
    defparam i11403_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11478_3_lut (.I0(n22783), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13875));   // zim_main.vhd(581[4] 868[13])
    defparam i11478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1598180_i1_3_lut (.I0(n22549), .I1(n22795), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1518));
    defparam i1598180_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11482_3_lut (.I0(n30_adj_1518), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13879));   // zim_main.vhd(581[4] 868[13])
    defparam i11482_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1513));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11389_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19_adj_1513), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n13786));   // zim_main.vhd(637[5] 741[14])
    defparam i11389_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_0_i30_3_lut (.I0(n13786), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1514));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11486_3_lut (.I0(n30_adj_1514), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13883));   // zim_main.vhd(581[4] 868[13])
    defparam i11486_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11490_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13887));   // zim_main.vhd(581[4] 868[13])
    defparam i11490_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11494_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13891));   // zim_main.vhd(581[4] 868[13])
    defparam i11494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15696_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1552));   // zim_main.vhd(581[4] 868[13])
    defparam i15696_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_68_16_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[14]), .I2(ICE_GPMO_1), 
            .I3(n19871), .O(n430)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11498_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13895));   // zim_main.vhd(581[4] 868[13])
    defparam i11498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(cs_falling_pend_N_696));   // zim_main.vhd(601[20:61])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_274 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n13243), 
            .I3(n1), .O(n20504));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_386_Mux_0_i15_4_lut (.I0(n7_adj_1524), .I1(n17798), 
            .I2(comm_state[3]), .I3(n9209), .O(data_index_8__N_213[0]));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_386_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4116_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(cs_mask_cnt_1__N_378));
    defparam i4116_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_422[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6601));   // zim_main.vhd(554[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_68_16 (.CI(n19871), .I0(data_cntvec[14]), .I1(ICE_GPMO_1), 
            .CO(n19872));
    SB_LUT4 add_68_15_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[13]), .I2(ICE_GPMO_1), 
            .I3(n19870), .O(n431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15409_3_lut (.I0(\comm_buf[1] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17788));   // zim_main.vhd(256[9:19])
    defparam i15409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18767_4_lut (.I0(n17788), .I1(\comm_buf[3] [0]), .I2(comm_index[1]), 
            .I3(comm_index[2]), .O(n21359));
    defparam i18767_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18768_3_lut (.I0(n22591), .I1(n21359), .I2(comm_index[0]), 
            .I3(ICE_GPMO_1), .O(n21360));
    defparam i18768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_275 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n12581));
    defparam i1_2_lut_3_lut_adj_275.LUT_INIT = 16'hfdfd;
    SB_LUT4 i17403_1_lut (.I0(clk_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1516));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17403_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i17418_1_lut (.I0(cs_mask_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15));   // zim_main.vhd(578[20:31])
    defparam i17418_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i19728_2_lut (.I0(n12001), .I1(eis_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14982));
    defparam i19728_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19749_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(tacadc_rst), .O(n12001));
    defparam i19749_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 i19402_2_lut (.I0(n21207), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21616));
    defparam i19402_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12992_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n10789), 
            .I3(ICE_GPMO_1), .O(n15391));   // zim_main.vhd(564[3] 869[10])
    defparam i12992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i60_3_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n61));
    defparam i60_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19342_3_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n21542));
    defparam i19342_3_lut.LUT_INIT = 16'h8080;
    SB_DFF eis_stop_361 (.Q(eis_stop), .C(clk_32MHz), .D(n15392));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_4_lut_adj_276 (.I0(comm_state_3__N_422[1]), .I1(n21542), 
            .I2(n61), .I3(comm_state[1]), .O(n26_adj_1588));
    defparam i1_4_lut_adj_276.LUT_INIT = 16'h0544;
    SB_LUT4 i19725_4_lut (.I0(comm_state[3]), .I1(n26_adj_1588), .I2(n36), 
            .I3(n21073), .O(n23));
    defparam i19725_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i19533_2_lut (.I0(n5), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21704));   // zim_main.vhd(581[4] 868[13])
    defparam i19533_2_lut.LUT_INIT = 16'hbbbb;
    SB_CARRY add_68_15 (.CI(n19870), .I0(data_cntvec[13]), .I1(ICE_GPMO_1), 
            .CO(n19871));
    SB_LUT4 add_67_9_lut (.I0(ICE_GPMO_1), .I1(data_count[7]), .I2(ICE_GPMO_1), 
            .I3(n19856), .O(n419)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i4_3_lut (.I0(comm_state_3__N_415[2]), 
            .I1(comm_state_3__N_422[1]), .I2(comm_state[0]), .I3(ICE_GPMO_1), 
            .O(n4_adj_1557));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_2_i4_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i6_4_lut (.I0(n4_adj_1557), .I1(n21704), 
            .I2(comm_state[1]), .I3(comm_state_3__N_422[1]), .O(n6));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_2_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i7_3_lut (.I0(n21211), .I1(n6), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n7_adj_1558));   // zim_main.vhd(581[4] 868[13])
    defparam comm_state_3__I_0_374_Mux_2_i7_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i15697_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1553));   // zim_main.vhd(581[4] 868[13])
    defparam i15697_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_adj_277 (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n21059), 
            .I3(ICE_GPMO_1), .O(dds0_mclk_N_702));
    defparam i1_3_lut_adj_277.LUT_INIT = 16'ha6a6;
    SB_LUT4 i12_4_lut_adj_278 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n13243), 
            .I3(n1), .O(n20502));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_278.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_279 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n13243), 
            .I3(n1), .O(n20500));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i14538_3_lut (.I0(n12014), .I1(eis_state[0]), .I2(TEST_LED), 
            .I3(ICE_GPMO_1), .O(n15411));   // zim_main.vhd(297[9:18])
    defparam i14538_3_lut.LUT_INIT = 16'h7272;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20119 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[6]), 
            .I2(buf_readRTD[14]), .I3(comm_cmd[1]), .O(n22744));
    defparam comm_cmd_0__bdd_4_lut_20119.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_3_lut_adj_280 (.I0(n12581), .I1(n21073), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n15014));   // zim_main.vhd(564[3] 869[10])
    defparam i1_3_lut_adj_280.LUT_INIT = 16'ha8a8;
    SB_CARRY add_146_16 (.CI(n19909), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19910));
    SB_LUT4 add_146_15_lut (.I0(n14_adj_1559), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19908), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_15_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_146_15 (.CI(n19908), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19909));
    SB_LUT4 add_146_14_lut (.I0(n14_adj_1551), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19907), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_67_9 (.CI(n19856), .I0(data_count[7]), .I1(ICE_GPMO_1), 
            .CO(n19857));
    SB_LUT4 add_68_14_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[12]), .I2(ICE_GPMO_1), 
            .I3(n19869), .O(n432)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_146_14 (.CI(n19907), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19908));
    SB_LUT4 i1_3_lut_adj_281 (.I0(n12581), .I1(comm_state[3]), .I2(n10_adj_1556), 
            .I3(ICE_GPMO_1), .O(n12117));
    defparam i1_3_lut_adj_281.LUT_INIT = 16'ha8a8;
    SB_LUT4 i4045_3_lut (.I0(comm_index[2]), .I1(comm_index[1]), .I2(n6428), 
            .I3(ICE_GPMO_1), .O(comm_index_2__N_430[2]));   // zim_main.vhd(763[5] 773[12])
    defparam i4045_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i3_4_lut_adj_282 (.I0(n16904), .I1(n17842), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n20052));   // zim_main.vhd(468[3] 546[10])
    defparam i3_4_lut_adj_282.LUT_INIT = 16'h0200;
    SB_LUT4 i12535_3_lut (.I0(n12127), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n14934));   // zim_main.vhd(564[3] 869[10])
    defparam i12535_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 mux_147_Mux_1_i30_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[2]), .O(n30_adj_1682));   // zim_main.vhd(637[5] 741[14])
    defparam mux_147_Mux_1_i30_4_lut.LUT_INIT = 16'hfd79;
    SB_LUT4 mux_148_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1651));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18776_4_lut (.I0(n26_adj_1651), .I1(buf_data_vac[47]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21368));
    defparam i18776_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_148_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1650));   // zim_main.vhd(637[5] 741[14])
    defparam mux_148_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18775_4_lut (.I0(n23_adj_1650), .I1(req_data_cnt[15]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21367));
    defparam i18775_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_283 (.I0(n12581), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11654), .O(n12186));
    defparam i1_4_lut_adj_283.LUT_INIT = 16'ha0a8;
    SB_LUT4 add_146_13_lut (.I0(n14_adj_1552), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19906), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_13_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_284 (.I0(n20052), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(eis_state[0]), .O(n21103));
    defparam i1_4_lut_adj_284.LUT_INIT = 16'ha3af;
    SB_CARRY add_146_13 (.CI(n19906), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19907));
    SB_LUT4 add_146_12_lut (.I0(n14_adj_1553), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19905), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13013_4_lut (.I0(eis_end), .I1(eis_state[2]), .I2(tacadc_rst), 
            .I3(n21103), .O(n15412));   // zim_main.vhd(468[3] 546[10])
    defparam i13013_4_lut.LUT_INIT = 16'hacaa;
    SB_CARRY add_68_14 (.CI(n19869), .I0(data_cntvec[12]), .I1(ICE_GPMO_1), 
            .CO(n19870));
    SB_CARRY add_146_12 (.CI(n19905), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19906));
    SB_LUT4 n22744_bdd_4_lut (.I0(n22744), .I1(buf_adcdata_vdc[22]), .I2(buf_adcdata_vac[22]), 
            .I3(comm_cmd[1]), .O(n22747));
    defparam n22744_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(THERMOSTAT_N_453));   // zim_main.vhd(610[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_285 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n13243), 
            .I3(n1), .O(n20482));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_285.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20110 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22738));
    defparam comm_cmd_0__bdd_4_lut_20110.LUT_INIT = 16'he4aa;
    SB_LUT4 i12005_3_lut (.I0(n22531), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14404));   // zim_main.vhd(581[4] 868[13])
    defparam i12005_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1589336_i1_3_lut (.I0(n22609), .I1(n22585), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1678));
    defparam i1589336_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22738_bdd_4_lut (.I0(n22738), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22741));
    defparam n22738_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20124 (.I0(comm_cmd[1]), .I1(n26_adj_1635), 
            .I2(n21839), .I3(comm_cmd[2]), .O(n22732));
    defparam comm_cmd_1__bdd_4_lut_20124.LUT_INIT = 16'he4aa;
    SB_LUT4 i13014_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n15413));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13015_3_lut (.I0(DDS_RNG_0), .I1(n14_adj_1554), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15414));   // zim_main.vhd(564[3] 869[10])
    defparam i13015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22732_bdd_4_lut (.I0(n22732), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22735));
    defparam n22732_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12001_3_lut (.I0(n30_adj_1678), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14400));   // zim_main.vhd(581[4] 868[13])
    defparam i12001_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13016_3_lut (.I0(SELIRNG0), .I1(n14_adj_1553), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15415));   // zim_main.vhd(564[3] 869[10])
    defparam i13016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20100 (.I0(comm_cmd[1]), .I1(n9_adj_1602), 
            .I2(buf_readRTD[7]), .I3(comm_cmd[2]), .O(n22726));
    defparam comm_cmd_1__bdd_4_lut_20100.LUT_INIT = 16'he4aa;
    SB_LUT4 i1589939_i1_3_lut (.I0(n22615), .I1(n22555), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1670));
    defparam i1589939_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11997_3_lut (.I0(n30_adj_1670), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14396));   // zim_main.vhd(581[4] 868[13])
    defparam i11997_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1590542_i1_3_lut (.I0(n22525), .I1(n22771), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1663));
    defparam i1590542_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11993_3_lut (.I0(n30_adj_1663), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14392));   // zim_main.vhd(581[4] 868[13])
    defparam i11993_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18873_3_lut (.I0(n22741), .I1(n22519), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21465));
    defparam i18873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1591145_i1_3_lut (.I0(n21465), .I1(n22633), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1657));
    defparam i1591145_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11989_3_lut (.I0(n30_adj_1657), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14388));   // zim_main.vhd(581[4] 868[13])
    defparam i11989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11985_3_lut (.I0(n22777), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14384));   // zim_main.vhd(581[4] 868[13])
    defparam i11985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12633_2_lut (.I0(n12228), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15027));   // zim_main.vhd(564[3] 869[10])
    defparam i12633_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut_adj_286 (.I0(n21170), .I1(n21152), .I2(comm_state[1]), 
            .I3(n20044), .O(n12225));
    defparam i2_4_lut_adj_286.LUT_INIT = 16'hafef;
    SB_LUT4 i13017_3_lut (.I0(SELIRNG1), .I1(n14_adj_1552), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15416));   // zim_main.vhd(564[3] 869[10])
    defparam i13017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_287 (.I0(n12225), .I1(n21121), .I2(n11008), .I3(n21217), 
            .O(n12228));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'h8880;
    SB_LUT4 i11981_3_lut (.I0(n22681), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14380));   // zim_main.vhd(581[4] 868[13])
    defparam i11981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1593959_i1_3_lut (.I0(n22801), .I1(n22567), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1649));
    defparam i1593959_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11977_3_lut (.I0(n30_adj_1649), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14376));   // zim_main.vhd(581[4] 868[13])
    defparam i11977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1594562_i1_3_lut (.I0(n22789), .I1(n22561), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1645));
    defparam i1594562_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11973_3_lut (.I0(n30_adj_1645), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14372));   // zim_main.vhd(581[4] 868[13])
    defparam i11973_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11969_3_lut (.I0(n22705), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14368));   // zim_main.vhd(581[4] 868[13])
    defparam i11969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1595768_i1_3_lut (.I0(n22711), .I1(n22735), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1636));
    defparam i1595768_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11965_3_lut (.I0(n30_adj_1636), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14364));   // zim_main.vhd(581[4] 868[13])
    defparam i11965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13018_3_lut (.I0(buf_control[4]), .I1(n14_adj_1551), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15417));   // zim_main.vhd(564[3] 869[10])
    defparam i13018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1596371_i1_3_lut (.I0(n22579), .I1(n22537), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1632));
    defparam i1596371_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11961_3_lut (.I0(n30_adj_1632), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14360));   // zim_main.vhd(581[4] 868[13])
    defparam i11961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22726_bdd_4_lut (.I0(n22726), .I1(buf_adcdata_iac[15]), .I2(n16_adj_1622), 
            .I3(comm_cmd[2]), .O(n22729));
    defparam n22726_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1596974_i1_3_lut (.I0(n22639), .I1(n22765), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1628));
    defparam i1596974_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11957_3_lut (.I0(n30_adj_1628), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14356));   // zim_main.vhd(581[4] 868[13])
    defparam i11957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13019_3_lut (.I0(AMPV_POW), .I1(n14_adj_1559), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15418));   // zim_main.vhd(564[3] 869[10])
    defparam i13019_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12640_2_lut (.I0(n12268), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15034));   // zim_main.vhd(564[3] 869[10])
    defparam i12640_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_288 (.I0(n9), .I1(comm_state[3]), .I2(n9209), 
            .I3(n21190), .O(n12182));
    defparam i1_4_lut_adj_288.LUT_INIT = 16'hc0c4;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20105 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22720));
    defparam comm_cmd_0__bdd_4_lut_20105.LUT_INIT = 16'he4aa;
    SB_LUT4 n22720_bdd_4_lut (.I0(n22720), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n21348));
    defparam n22720_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i46_4_lut (.I0(n21875), .I1(n21874), .I2(comm_state[1]), .I3(comm_state_3__N_415[2]), 
            .O(n21_adj_1653));
    defparam i46_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i13020_3_lut (.I0(buf_control[6]), .I1(n14_adj_1536), .I2(n12182), 
            .I3(ICE_GPMO_1), .O(n15419));   // zim_main.vhd(564[3] 869[10])
    defparam i13020_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_289 (.I0(comm_state[0]), .I1(n21121), .I2(n21170), 
            .I3(n21_adj_1653), .O(n12268));
    defparam i1_4_lut_adj_289.LUT_INIT = 16'hc4c0;
    SB_LUT4 i1597577_i1_3_lut (.I0(n22729), .I1(n22573), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1624));
    defparam i1597577_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11953_3_lut (.I0(n30_adj_1624), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14352));   // zim_main.vhd(581[4] 868[13])
    defparam i11953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_7_i1_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1_adj_1562));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13021_3_lut (.I0(buf_dds0[1]), .I1(n14_adj_1534), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15420));   // zim_main.vhd(564[3] 869[10])
    defparam i13021_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_7_i2_3_lut (.I0(\comm_buf[2] [7]), .I1(\comm_buf[3] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_7_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1618));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1618), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1619));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_1_i30_3_lut (.I0(n22_adj_1619), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1620));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11949_3_lut (.I0(n30_adj_1620), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14348));   // zim_main.vhd(581[4] 868[13])
    defparam i11949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_6__I_0_398_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n9));   // zim_main.vhd(818[11:20])
    defparam comm_cmd_6__I_0_398_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 mux_150_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1615));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1615), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1616));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_2_i30_3_lut (.I0(n22_adj_1616), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1617));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13022_3_lut (.I0(buf_dds0[2]), .I1(n14_adj_1533), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15421));   // zim_main.vhd(564[3] 869[10])
    defparam i13022_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13023_3_lut (.I0(buf_dds0[3]), .I1(n14_adj_1561), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15422));   // zim_main.vhd(564[3] 869[10])
    defparam i13023_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11945_3_lut (.I0(n30_adj_1617), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14344));   // zim_main.vhd(581[4] 868[13])
    defparam i11945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13024_3_lut (.I0(buf_dds0[4]), .I1(n14_adj_1532), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15423));   // zim_main.vhd(564[3] 869[10])
    defparam i13024_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19478_2_lut (.I0(\comm_buf[6] [7]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21721));
    defparam i19478_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_157_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1563));   // zim_main.vhd(747[30:40])
    defparam mux_157_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1610));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1610), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1611));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_3_i30_3_lut (.I0(n22_adj_1611), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1612));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11941_3_lut (.I0(n30_adj_1612), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14340));   // zim_main.vhd(581[4] 868[13])
    defparam i11941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1606));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1606), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1607));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_4_i30_3_lut (.I0(n22_adj_1607), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1608));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11937_3_lut (.I0(n30_adj_1608), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14336));   // zim_main.vhd(581[4] 868[13])
    defparam i11937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_11_lut (.I0(n14_adj_1554), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19904), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13025_3_lut (.I0(buf_dds0[5]), .I1(n14_adj_1560), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15424));   // zim_main.vhd(564[3] 869[10])
    defparam i13025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_290 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(comm_state[0]), .O(n21164));   // zim_main.vhd(826[11:20])
    defparam i1_3_lut_4_lut_adj_290.LUT_INIT = 16'hfffd;
    SB_LUT4 i13026_3_lut (.I0(buf_dds0[6]), .I1(n14_adj_1531), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15425));   // zim_main.vhd(564[3] 869[10])
    defparam i13026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1603));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13027_3_lut (.I0(buf_dds0[7]), .I1(n14_adj_1530), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15426));   // zim_main.vhd(564[3] 869[10])
    defparam i13027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13028_3_lut (.I0(buf_dds0[8]), .I1(n14_adj_1529), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15427));   // zim_main.vhd(564[3] 869[10])
    defparam i13028_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1603), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1604));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15698_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1554));   // zim_main.vhd(581[4] 868[13])
    defparam i15698_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 mux_150_Mux_5_i30_3_lut (.I0(n22_adj_1604), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1605));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_207_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n9_adj_1523));   // zim_main.vhd(818[11:20])
    defparam equal_207_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i11933_3_lut (.I0(n30_adj_1605), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14332));   // zim_main.vhd(581[4] 868[13])
    defparam i11933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_291 (.I0(n31), .I1(comm_index[2]), .I2(comm_index[1]), 
            .I3(ICE_GPMO_1), .O(n21152));
    defparam i1_2_lut_3_lut_adj_291.LUT_INIT = 16'h0202;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12579), 
            .D(n22687), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12579), 
            .D(n22663), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_2_lut_3_lut_adj_292 (.I0(n31), .I1(comm_index[2]), .I2(comm_index[1]), 
            .I3(ICE_GPMO_1), .O(n21154));
    defparam i1_2_lut_3_lut_adj_292.LUT_INIT = 16'h2020;
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12579), 
            .D(n21399), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 mux_150_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1597));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12579), 
            .D(n22657), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20095 (.I0(comm_cmd[1]), .I1(n19_adj_1634), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22708));
    defparam comm_cmd_1__bdd_4_lut_20095.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12579), 
            .D(n22645), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22708_bdd_4_lut (.I0(n22708), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1633), 
            .I3(comm_cmd[2]), .O(n22711));
    defparam n22708_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12579), 
            .D(n22627), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12579), 
            .D(n22621), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22672_bdd_4_lut_4_lut (.I0(comm_state_3__N_422[1]), .I1(comm_state[0]), 
            .I2(comm_state[2]), .I3(n22672), .O(n22675));
    defparam n22672_bdd_4_lut_4_lut.LUT_INIT = 16'hf20c;
    SB_LUT4 i1_3_lut_4_lut_adj_293 (.I0(tacadc_rst), .I1(eis_adc_trig_N_711), 
            .I2(eis_state[0]), .I3(AC_ADC_SYNC), .O(n12014));
    defparam i1_3_lut_4_lut_adj_293.LUT_INIT = 16'h4440;
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12487), 
            .D(n14240), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 mux_150_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1597), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1598));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13029_3_lut (.I0(buf_dds0[9]), .I1(n14_adj_1554), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15428));   // zim_main.vhd(564[3] 869[10])
    defparam i13029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_6_i30_3_lut (.I0(n22_adj_1598), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1599));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11845_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14244));   // zim_main.vhd(581[4] 868[13])
    defparam i11845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11929_3_lut (.I0(n30_adj_1599), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14328));   // zim_main.vhd(581[4] 868[13])
    defparam i11929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12647_2_lut (.I0(n12361), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15041));   // zim_main.vhd(564[3] 869[10])
    defparam i12647_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13030_3_lut (.I0(buf_dds0[10]), .I1(n14_adj_1553), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15429));   // zim_main.vhd(564[3] 869[10])
    defparam i13030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_67_8_lut (.I0(ICE_GPMO_1), .I1(data_count[6]), .I2(ICE_GPMO_1), 
            .I3(n19855), .O(n420)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut_4_lut_adj_294 (.I0(tacadc_rst), .I1(eis_adc_trig_N_711), 
            .I2(iac_raw_buf_N_730), .I3(eis_state[0]), .O(iac_raw_buf_N_728));
    defparam i2_3_lut_4_lut_adj_294.LUT_INIT = 16'h4000;
    SB_LUT4 i44_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n28_adj_1439));
    defparam i44_3_lut.LUT_INIT = 16'h6262;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12487), 
            .D(n14244), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12487), 
            .D(n14248), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12487), 
            .D(n14252), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12487), 
            .D(n14256), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_20134 (.I0(comm_cmd[2]), .I1(n21382), 
            .I2(n21383), .I3(comm_cmd[3]), .O(n22702));
    defparam comm_cmd_2__bdd_4_lut_20134.LUT_INIT = 16'he4aa;
    SB_LUT4 i11861_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14260));   // zim_main.vhd(581[4] 868[13])
    defparam i11861_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12487), 
            .D(n14260), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13031_3_lut (.I0(buf_dds0[11]), .I1(n14_adj_1552), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15430));   // zim_main.vhd(564[3] 869[10])
    defparam i13031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13032_3_lut (.I0(buf_dds0[12]), .I1(n14_adj_1551), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15431));   // zim_main.vhd(564[3] 869[10])
    defparam i13032_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19526_4_lut (.I0(n28_adj_1439), .I1(comm_state_3__N_415[2]), 
            .I2(n10976), .I3(comm_cmd[3]), .O(n21763));
    defparam i19526_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i13033_3_lut (.I0(buf_dds0[13]), .I1(n14_adj_1559), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15432));   // zim_main.vhd(564[3] 869[10])
    defparam i13033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i43_4_lut (.I0(n21763), .I1(n21154), .I2(comm_state[1]), .I3(comm_index[0]), 
            .O(n20));
    defparam i43_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12487), 
            .D(n14264), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12445), 
            .D(n14268), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12445), 
            .D(n14272), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22702_bdd_4_lut (.I0(n22702), .I1(n21380), .I2(n21379), .I3(comm_cmd[3]), 
            .O(n22705));
    defparam n22702_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12445), 
            .D(n14276), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12445), 
            .D(n14280), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i1_4_lut_adj_295 (.I0(comm_state[0]), .I1(n21121), .I2(n21170), 
            .I3(n20), .O(n12361));
    defparam i1_4_lut_adj_295.LUT_INIT = 16'hc4c0;
    SB_LUT4 comm_index_2__bdd_4_lut (.I0(comm_index[2]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[6] [5]), .I3(comm_index[1]), .O(n22696));
    defparam comm_index_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12445), 
            .D(n14284), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12445), 
            .D(n14288), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12445), 
            .D(n14292), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13034_3_lut (.I0(buf_dds0[14]), .I1(n14_adj_1536), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15433));   // zim_main.vhd(564[3] 869[10])
    defparam i13034_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12403), 
            .D(n14296), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12403), 
            .D(n14300), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i15704_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1529));   // zim_main.vhd(581[4] 868[13])
    defparam i15704_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12403), 
            .D(n14304), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12403), 
            .D(n14308), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22696_bdd_4_lut (.I0(n22696), .I1(\comm_buf[4] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n22699));
    defparam n22696_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18721_2_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21313));
    defparam i18721_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12403), 
            .D(n14312), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_67_3 (.CI(n19850), .I0(data_count[1]), .I1(ICE_GPMO_1), 
            .CO(n19851));
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12403), 
            .D(n14316), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12403), 
            .D(n14320), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12361), 
            .D(n14324), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12361), 
            .D(n14328), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12361), 
            .D(n14332), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i15699_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1530));   // zim_main.vhd(581[4] 868[13])
    defparam i15699_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_3_lut_adj_296 (.I0(comm_cmd[3]), .I1(n21207), .I2(n21167), 
            .I3(ICE_GPMO_1), .O(n10854));
    defparam i1_2_lut_3_lut_adj_296.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut_adj_297 (.I0(comm_index[2]), .I1(n31), .I2(comm_index[1]), 
            .I3(ICE_GPMO_1), .O(n19558));
    defparam i1_2_lut_3_lut_adj_297.LUT_INIT = 16'h0808;
    SB_LUT4 i3_2_lut_3_lut (.I0(comm_index[2]), .I1(n31), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n9_adj_1438));
    defparam i3_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i24_3_lut_4_lut (.I0(adc_state_adj_1729[3]), .I1(VDC_SDO), .I2(adc_state_adj_1729[2]), 
            .I3(adc_state_adj_1729[1]), .O(n11));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i24_3_lut_4_lut.LUT_INIT = 16'h04f4;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20090 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22690));
    defparam comm_cmd_0__bdd_4_lut_20090.LUT_INIT = 16'he4aa;
    SB_LUT4 n22690_bdd_4_lut (.I0(n22690), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n21354));
    defparam n22690_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_298 (.I0(n13_adj_1484), .I1(comm_state[3]), .I2(n9209), 
            .I3(comm_state[0]), .O(n12614));
    defparam i1_4_lut_adj_298.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12_3_lut_4_lut (.I0(adc_state_adj_1729[3]), .I1(VDC_SDO), .I2(n13388), 
            .I3(cmd_rdadctmp_adj_1730[0]), .O(n20420));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 i13035_3_lut (.I0(buf_dds0[15]), .I1(n14_adj_1535), .I2(n12614), 
            .I3(ICE_GPMO_1), .O(n15434));   // zim_main.vhd(564[3] 869[10])
    defparam i13035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1593));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12361), 
            .D(n14336), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 mux_150_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1593), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1594));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12361), 
            .D(n14340), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4_adj_1563), 
            .I2(n21721), .I3(comm_index[2]), .O(n22684));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i13036_3_lut (.I0(IAC_OSR1), .I1(n14_adj_1554), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15435));   // zim_main.vhd(564[3] 869[10])
    defparam i13036_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12361), 
            .D(n14344), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12361), 
            .D(n14348), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22684_bdd_4_lut (.I0(n22684), .I1(n2), .I2(n1_adj_1562), 
            .I3(comm_index[2]), .O(n22687));
    defparam n22684_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_299 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(ICE_GPMO_1), .O(n21207));   // zim_main.vhd(831[11:20])
    defparam i1_2_lut_3_lut_adj_299.LUT_INIT = 16'hefef;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12268), 
            .D(n14352), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13037_3_lut (.I0(IAC_FLT0), .I1(n14_adj_1553), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15436));   // zim_main.vhd(564[3] 869[10])
    defparam i13037_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12268), 
            .D(n14356), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12268), 
            .D(n14360), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    GND i1 (.Y(ICE_GPMO_1));
    SB_CARRY add_146_11 (.CI(n19904), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19905));
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12268), 
            .D(n14364), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i15488_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(ICE_GPMO_1), .O(comm_state_3__N_415[2]));   // zim_main.vhd(831[11:20])
    defparam i15488_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 mux_150_Mux_7_i30_3_lut (.I0(n22_adj_1594), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1595));   // zim_main.vhd(637[5] 741[14])
    defparam mux_150_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12268), 
            .D(n14368), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12268), 
            .D(n14372), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12268), 
            .D(n14376), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12228), 
            .D(n14380), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13038_3_lut (.I0(IAC_FLT1), .I1(n14_adj_1552), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15437));   // zim_main.vhd(564[3] 869[10])
    defparam i13038_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12228), 
            .D(n14384), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i11925_3_lut (.I0(n30_adj_1595), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14324));   // zim_main.vhd(581[4] 868[13])
    defparam i11925_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_68_13_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[11]), .I2(ICE_GPMO_1), 
            .I3(n19868), .O(n433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13039_3_lut (.I0(VAC_OSR0), .I1(n14_adj_1551), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15438));   // zim_main.vhd(564[3] 869[10])
    defparam i13039_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12228), 
            .D(n14388), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12228), 
            .D(n14392), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12228), 
            .D(n14396), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_67_8 (.CI(n19855), .I0(data_count[6]), .I1(ICE_GPMO_1), 
            .CO(n19856));
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12228), 
            .D(n14400), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_CARRY add_67_5 (.CI(n19852), .I0(data_count[3]), .I1(ICE_GPMO_1), 
            .CO(n19853));
    SB_LUT4 i11921_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14320));   // zim_main.vhd(581[4] 868[13])
    defparam i11921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11917_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14316));   // zim_main.vhd(581[4] 868[13])
    defparam i11917_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12228), 
            .D(n14404), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12186), 
            .D(THERMOSTAT_N_453), .R(n5978));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_20076 (.I0(comm_cmd[2]), .I1(n21367), 
            .I2(n21368), .I3(comm_cmd[3]), .O(n22678));
    defparam comm_cmd_2__bdd_4_lut_20076.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12127), 
            .D(n30_adj_1682), .R(n14934));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i11913_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14312));   // zim_main.vhd(581[4] 868[13])
    defparam i11913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11909_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14308));   // zim_main.vhd(581[4] 868[13])
    defparam i11909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11905_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14304));   // zim_main.vhd(581[4] 868[13])
    defparam i11905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11901_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14300));   // zim_main.vhd(581[4] 868[13])
    defparam i11901_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15700_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1531));   // zim_main.vhd(581[4] 868[13])
    defparam i15700_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 n22678_bdd_4_lut (.I0(n22678), .I1(n21365), .I2(n22603), .I3(comm_cmd[3]), 
            .O(n22681));
    defparam n22678_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut_adj_300 (.I0(comm_state[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[0]), .O(n21167));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_4_lut_adj_300.LUT_INIT = 16'hffbf;
    SB_LUT4 i13040_3_lut (.I0(VAC_OSR1), .I1(n14_adj_1559), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15439));   // zim_main.vhd(564[3] 869[10])
    defparam i13040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13041_3_lut (.I0(VAC_FLT0), .I1(n14_adj_1536), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15440));   // zim_main.vhd(564[3] 869[10])
    defparam i13041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_301 (.I0(n12), .I1(comm_state[3]), .I2(n9209), 
            .I3(n21164), .O(n11760));
    defparam i1_4_lut_adj_301.LUT_INIT = 16'hc0c4;
    SB_LUT4 i13042_3_lut (.I0(VAC_FLT1), .I1(n14_adj_1535), .I2(n11760), 
            .I3(ICE_GPMO_1), .O(n15441));   // zim_main.vhd(564[3] 869[10])
    defparam i13042_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12117), 
            .D(comm_index_2__N_430[2]), .R(n15014));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13043_3_lut (.I0(buf_cfgRTD[1]), .I1(n14_adj_1554), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15442));   // zim_main.vhd(564[3] 869[10])
    defparam i13043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12654_2_lut (.I0(n12403), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15048));   // zim_main.vhd(564[3] 869[10])
    defparam i12654_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13044_3_lut (.I0(buf_cfgRTD[2]), .I1(n14_adj_1553), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15443));   // zim_main.vhd(564[3] 869[10])
    defparam i13044_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12117), 
            .D(comm_index_2__N_430[1]), .R(n15014));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13045_3_lut (.I0(buf_cfgRTD[3]), .I1(n14_adj_1552), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15444));   // zim_main.vhd(564[3] 869[10])
    defparam i13045_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n23), 
            .D(n7_adj_1558), .R(comm_state[3]));   // zim_main.vhd(564[3] 869[10])
    SB_DFF tacadc_rst_360 (.Q(tacadc_rst), .C(clk_32MHz), .D(n15391));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i19_4_lut_adj_302 (.I0(n10854), .I1(n21154), .I2(comm_state[1]), 
            .I3(n27_adj_1609), .O(n12_adj_1652));
    defparam i19_4_lut_adj_302.LUT_INIT = 16'hc505;
    SB_LUT4 add_146_10_lut (.I0(n14_adj_1529), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19903), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_3_lut_adj_303 (.I0(n12_adj_1652), .I1(n21121), .I2(n21170), 
            .I3(ICE_GPMO_1), .O(n12403));
    defparam i1_3_lut_adj_303.LUT_INIT = 16'hc8c8;
    SB_LUT4 i11897_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14296));   // zim_main.vhd(581[4] 868[13])
    defparam i11897_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n12023), 
            .D(n444), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i13046_3_lut (.I0(buf_cfgRTD[4]), .I1(n14_adj_1551), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15445));   // zim_main.vhd(564[3] 869[10])
    defparam i13046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11893_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14292));   // zim_main.vhd(581[4] 868[13])
    defparam i11893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13047_3_lut (.I0(buf_cfgRTD[5]), .I1(n14_adj_1559), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15446));   // zim_main.vhd(564[3] 869[10])
    defparam i13047_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11889_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14288));   // zim_main.vhd(581[4] 868[13])
    defparam i11889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13048_3_lut (.I0(buf_cfgRTD[6]), .I1(n14_adj_1536), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15447));   // zim_main.vhd(564[3] 869[10])
    defparam i13048_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_304 (.I0(comm_cmd[3]), .I1(n21207), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12));   // zim_main.vhd(812[11:20])
    defparam i1_2_lut_adj_304.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_305 (.I0(n12), .I1(comm_state[3]), .I2(n9209), 
            .I3(n21167), .O(n12662));
    defparam i1_4_lut_adj_305.LUT_INIT = 16'hc0c4;
    SB_LUT4 i11885_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14284));   // zim_main.vhd(581[4] 868[13])
    defparam i11885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13049_3_lut (.I0(buf_cfgRTD[7]), .I1(n14_adj_1535), .I2(n12662), 
            .I3(ICE_GPMO_1), .O(n15448));   // zim_main.vhd(564[3] 869[10])
    defparam i13049_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13050_3_lut (.I0(acadc_skipCount[1]), .I1(n14_adj_1534), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15449));   // zim_main.vhd(564[3] 869[10])
    defparam i13050_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13051_3_lut (.I0(acadc_skipCount[2]), .I1(n14_adj_1533), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15450));   // zim_main.vhd(564[3] 869[10])
    defparam i13051_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11881_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14280));   // zim_main.vhd(581[4] 868[13])
    defparam i11881_3_lut.LUT_INIT = 16'hcaca;
    ADC_ADS1252 ADC_VDC (.GND_net(ICE_GPMO_1), .VCC_net(VCC_net), .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), 
            .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\adc_state[3] (adc_state_adj_1729[3]), .\adc_state[2] (adc_state_adj_1729[2]), 
            .\adc_state_3__N_1270[0] (VDC_SDO), .\adc_state[1] (adc_state_adj_1729[1]), 
            .cmd_rdadctmp({Open_0, cmd_rdadctmp_adj_1730[22], Open_1, 
            Open_2, Open_3, Open_4, Open_5, Open_6, Open_7, Open_8, 
            Open_9, Open_10, Open_11, Open_12, Open_13, Open_14, 
            Open_15, Open_16, Open_17, Open_18, Open_19, Open_20, 
            Open_21, Open_22}), .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), 
            .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .VDC_CLK(VDC_CLK), .n20336(n20336), 
            .\cmd_rdadctmp[1] (cmd_rdadctmp_adj_1730[1]), .n20338(n20338), 
            .\cmd_rdadctmp[2] (cmd_rdadctmp_adj_1730[2]), .n20340(n20340), 
            .\cmd_rdadctmp[3] (cmd_rdadctmp_adj_1730[3]), .n20342(n20342), 
            .\cmd_rdadctmp[4] (cmd_rdadctmp_adj_1730[4]), .n20344(n20344), 
            .\cmd_rdadctmp[5] (cmd_rdadctmp_adj_1730[5]), .n20346(n20346), 
            .\cmd_rdadctmp[6] (cmd_rdadctmp_adj_1730[6]), .n20348(n20348), 
            .\cmd_rdadctmp[7] (cmd_rdadctmp_adj_1730[7]), .n20350(n20350), 
            .\cmd_rdadctmp[8] (cmd_rdadctmp_adj_1730[8]), .n20352(n20352), 
            .\cmd_rdadctmp[9] (cmd_rdadctmp_adj_1730[9]), .n20354(n20354), 
            .\cmd_rdadctmp[10] (cmd_rdadctmp_adj_1730[10]), .n20356(n20356), 
            .\cmd_rdadctmp[11] (cmd_rdadctmp_adj_1730[11]), .n20358(n20358), 
            .\cmd_rdadctmp[12] (cmd_rdadctmp_adj_1730[12]), .n20360(n20360), 
            .\cmd_rdadctmp[13] (cmd_rdadctmp_adj_1730[13]), .n20362(n20362), 
            .\cmd_rdadctmp[14] (cmd_rdadctmp_adj_1730[14]), .n20364(n20364), 
            .\cmd_rdadctmp[15] (cmd_rdadctmp_adj_1730[15]), .n20366(n20366), 
            .\cmd_rdadctmp[16] (cmd_rdadctmp_adj_1730[16]), .n20368(n20368), 
            .\cmd_rdadctmp[17] (cmd_rdadctmp_adj_1730[17]), .n20370(n20370), 
            .\cmd_rdadctmp[18] (cmd_rdadctmp_adj_1730[18]), .n20372(n20372), 
            .\cmd_rdadctmp[19] (cmd_rdadctmp_adj_1730[19]), .n20374(n20374), 
            .\cmd_rdadctmp[20] (cmd_rdadctmp_adj_1730[20]), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), 
            .n20376(n20376), .\cmd_rdadctmp[21] (cmd_rdadctmp_adj_1730[21]), 
            .n20378(n20378), .n20532(n20532), .buf_adcdata_vdc({buf_adcdata_vdc}), 
            .n20534(n20534), .n20542(n20542), .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), 
            .n20544(n20544), .n20546(n20546), .n20548(n20548), .n20550(n20550), 
            .n20552(n20552), .n20554(n20554), .n20556(n20556), .n20558(n20558), 
            .n20560(n20560), .n20562(n20562), .n20564(n20564), .n20594(n20594), 
            .n20590(n20590), .n20566(n20566), .n20568(n20568), .n20570(n20570), 
            .n20572(n20572), .n20574(n20574), .n20576(n20576), .n20578(n20578), 
            .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), 
            .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), 
            .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), .n11(n11), .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), 
            .VDC_SCLK(VDC_SCLK), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .n20420(n20420), .\cmd_rdadctmp[0] (cmd_rdadctmp_adj_1730[0]), 
            .n20610(n20610), .n11938(n11938), .n13388(n13388), .clk_16MHz(clk_16MHz));   // zim_main.vhd(958[12:23])
    SB_LUT4 i13052_3_lut (.I0(acadc_skipCount[3]), .I1(n14_adj_1561), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15451));   // zim_main.vhd(564[3] 869[10])
    defparam i13052_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11877_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14276));   // zim_main.vhd(581[4] 868[13])
    defparam i11877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1637));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_306 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n13243), 
            .I3(n1), .O(n20472));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_306.LUT_INIT = 16'hca0a;
    SB_LUT4 i15242_4_lut (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n13243), 
            .I3(n1), .O(n15740));
    defparam i15242_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15256_4_lut (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n13243), 
            .I3(n1), .O(n15743));
    defparam i15256_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i18787_3_lut (.I0(n16_adj_1637), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21379));
    defparam i18787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1638));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13053_3_lut (.I0(acadc_skipCount[4]), .I1(n14_adj_1532), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15452));   // zim_main.vhd(564[3] 869[10])
    defparam i13053_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18788_3_lut (.I0(n19_adj_1638), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21380));
    defparam i18788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13054_3_lut (.I0(acadc_skipCount[5]), .I1(n14_adj_1560), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15453));   // zim_main.vhd(564[3] 869[10])
    defparam i13054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13055_3_lut (.I0(acadc_skipCount[6]), .I1(n14_adj_1531), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15454));   // zim_main.vhd(564[3] 869[10])
    defparam i13055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n21616), .I2(n6915), 
            .I3(comm_state[2]), .O(n22672));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n12023), 
            .D(n426), .R(n14995));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n12001), .D(n493), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i11873_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14272));   // zim_main.vhd(581[4] 868[13])
    defparam i11873_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n12001), .D(n492), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_CARRY add_68_13 (.CI(n19868), .I0(data_cntvec[11]), .I1(ICE_GPMO_1), 
            .CO(n19869));
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n12001), .D(n491), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n12001), .D(n490), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n12001), .D(n489), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n12001), .D(n488), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i17457_2_lut (.I0(comm_index[0]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20044));
    defparam i17457_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13056_3_lut (.I0(acadc_skipCount[7]), .I1(n14_adj_1530), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15455));   // zim_main.vhd(564[3] 869[10])
    defparam i13056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13057_3_lut (.I0(acadc_skipCount[8]), .I1(n14_adj_1529), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15456));   // zim_main.vhd(564[3] 869[10])
    defparam i13057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13058_3_lut (.I0(acadc_skipCount[9]), .I1(n14_adj_1554), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15457));   // zim_main.vhd(564[3] 869[10])
    defparam i13058_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12661_2_lut (.I0(n12445), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15055));   // zim_main.vhd(564[3] 869[10])
    defparam i12661_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_307 (.I0(eis_state[2]), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(ICE_GPMO_1), .O(n16910));   // zim_main.vhd(468[3] 546[10])
    defparam i1_2_lut_3_lut_adj_307.LUT_INIT = 16'hbfbf;
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n12001), .D(n487), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n12001), .D(n486), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 i19_4_lut_adj_308 (.I0(n10854), .I1(n19558), .I2(comm_state[1]), 
            .I3(n20044), .O(n12_adj_1679));
    defparam i19_4_lut_adj_308.LUT_INIT = 16'h05c5;
    SB_LUT4 i15479_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17856));
    defparam i15479_2_lut.LUT_INIT = 16'h8888;
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n12001), .D(n485), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_LUT4 acadc_dtrig_i_I_0_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(iac_raw_buf_N_730));   // zim_main.vhd(521[8:51])
    defparam acadc_dtrig_i_I_0_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_309 (.I0(cs_sync1), .I1(cs_sync2), .I2(n10534), 
            .I3(ICE_GPMO_1), .O(n12024));   // zim_main.vhd(572[8:37])
    defparam i1_2_lut_3_lut_adj_309.LUT_INIT = 16'h4f4f;
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n12001), .D(n484), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n12001), .D(n483), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n12001), .D(n482), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n12001), .D(n481), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n12001), .D(n480), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n12001), .D(n479), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_DFFESS cs_mask_cnt_3911__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n11962), 
            .D(n15), .S(n14979));   // zim_main.vhd(578[20:31])
    SB_LUT4 add_67_5_lut (.I0(ICE_GPMO_1), .I1(data_count[3]), .I2(ICE_GPMO_1), 
            .I3(n19852), .O(n423)) /* synthesis syn_instantiated=1 */ ;
    defparam add_67_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR clk_cnt_3907_3908__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15_adj_1516), 
            .R(n17856));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i13059_3_lut (.I0(acadc_skipCount[10]), .I1(n14_adj_1553), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15458));   // zim_main.vhd(564[3] 869[10])
    defparam i13059_3_lut.LUT_INIT = 16'hcaca;
    zim_pll pll_main (.GND_net(ICE_GPMO_1), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_675(DDS_MCLK1));   // zim_main.vhd(872[13:20])
    SB_LUT4 i1_3_lut_adj_310 (.I0(n12_adj_1679), .I1(n21121), .I2(n21170), 
            .I3(ICE_GPMO_1), .O(n12445));
    defparam i1_3_lut_adj_310.LUT_INIT = 16'hc8c8;
    SB_LUT4 i13060_3_lut (.I0(acadc_skipCount[11]), .I1(n14_adj_1552), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15459));   // zim_main.vhd(564[3] 869[10])
    defparam i13060_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13061_3_lut (.I0(acadc_skipCount[12]), .I1(n14_adj_1551), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15460));   // zim_main.vhd(564[3] 869[10])
    defparam i13061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13062_3_lut (.I0(acadc_skipCount[13]), .I1(n14_adj_1559), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15461));   // zim_main.vhd(564[3] 869[10])
    defparam i13062_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_146_10 (.CI(n19903), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19904));
    SB_LUT4 i11869_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14268));   // zim_main.vhd(581[4] 868[13])
    defparam i11869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11865_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14264));   // zim_main.vhd(581[4] 868[13])
    defparam i11865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13063_3_lut (.I0(acadc_skipCount[14]), .I1(n14_adj_1536), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15462));   // zim_main.vhd(564[3] 869[10])
    defparam i13063_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_67_2 (.CI(ICE_GPMO_1), .I0(data_count[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19850));
    SB_LUT4 mux_149_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1639));   // zim_main.vhd(637[5] 741[14])
    defparam mux_149_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20066 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22666));
    defparam comm_cmd_0__bdd_4_lut_20066.LUT_INIT = 16'he4aa;
    SB_LUT4 i15684_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1560));   // zim_main.vhd(581[4] 868[13])
    defparam i15684_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i18791_4_lut (.I0(n26_adj_1639), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21383));
    defparam i18791_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 add_146_9_lut (.I0(n14_adj_1530), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19902), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18790_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21382));
    defparam i18790_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_146_9 (.CI(n19902), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19903));
    SB_LUT4 i11857_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14256));   // zim_main.vhd(581[4] 868[13])
    defparam i11857_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22666_bdd_4_lut (.I0(n22666), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n21489));
    defparam n22666_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3909_add_4_29_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[27]), .I3(n20041), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_3_lut_adj_311 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n10976));
    defparam i2_3_lut_adj_311.LUT_INIT = 16'hf7f7;
    SB_LUT4 i13068_3_lut_4_lut (.I0(req_data_cnt[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9209), .I3(n12722), .O(n15467));   // zim_main.vhd(564[3] 869[10])
    defparam i13068_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 wdtick_cnt_3909_add_4_28_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[26]), .I3(n20040), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_28_lut.LUT_INIT = 16'hC33C;
    DDS_AD9837_U0 CLK_DDS (.dds_state({dds_state_adj_1708}), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .VCC_net(VCC_net), .GND_net(ICE_GPMO_1), 
            .\bit_cnt[0] (bit_cnt_adj_1710[0]), .\tmp_buf[15] (tmp_buf_adj_1709[15]), 
            .n15407(n15407), .DDS_MOSI1(DDS_MOSI1), .n15405(n15405), .DDS_SCK1(DDS_SCK1), 
            .n16129(n16129), .n15166(n15166), .buf_dds1({buf_dds1}), .trig_dds1(trig_dds1));   // zim_main.vhd(921[12:22])
    SB_CARRY wdtick_cnt_3909_add_4_28 (.CI(n20040), .I0(ICE_GPMO_1), .I1(wdtick_cnt[26]), 
            .CO(n20041));
    SB_LUT4 wdtick_cnt_3909_add_4_27_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[25]), .I3(n20039), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_146_8_lut (.I0(n14_adj_1531), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19901), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_68_12_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[10]), .I2(ICE_GPMO_1), 
            .I3(n19867), .O(n434)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_312 (.I0(n9_adj_1523), .I1(comm_state[3]), .I2(n9209), 
            .I3(n21190), .O(n12692));
    defparam i1_4_lut_adj_312.LUT_INIT = 16'hc0c4;
    SB_LUT4 i11853_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14252));   // zim_main.vhd(581[4] 868[13])
    defparam i11853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11849_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14248));   // zim_main.vhd(581[4] 868[13])
    defparam i11849_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_313 (.I0(comm_state[0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n27_adj_1609));   // zim_main.vhd(581[4] 868[13])
    defparam i1_2_lut_adj_313.LUT_INIT = 16'h4444;
    SB_CARRY wdtick_cnt_3909_add_4_27 (.CI(n20039), .I0(ICE_GPMO_1), .I1(wdtick_cnt[25]), 
            .CO(n20040));
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12579), 
            .D(n21360), .R(n15076));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12487), 
            .D(n13895), .R(n15062));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 wdtick_cnt_3909_add_4_26_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[24]), .I3(n20038), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13067_3_lut_4_lut (.I0(req_data_cnt[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9209), .I3(n12722), .O(n15466));   // zim_main.vhd(564[3] 869[10])
    defparam i13067_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12445), 
            .D(n13891), .R(n15055));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12403), 
            .D(n13887), .R(n15048));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12361), 
            .D(n13883), .R(n15041));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12268), 
            .D(n13879), .R(n15034));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12228), 
            .D(n13875), .R(n15027));   // zim_main.vhd(564[3] 869[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12127), 
            .D(n30_adj_1511), .R(n14934));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13064_3_lut (.I0(acadc_skipCount[15]), .I1(n14_adj_1535), .I2(n12692), 
            .I3(ICE_GPMO_1), .O(n15463));   // zim_main.vhd(564[3] 869[10])
    defparam i13064_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12117), 
            .D(comm_index_2__N_430[0]), .R(n15014));   // zim_main.vhd(564[3] 869[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n12001), .D(n494), .R(n14982));   // zim_main.vhd(468[3] 546[10])
    SB_CARRY wdtick_cnt_3909_add_4_26 (.CI(n20038), .I0(ICE_GPMO_1), .I1(wdtick_cnt[24]), 
            .CO(n20039));
    SB_DFFR wdtick_flag_315 (.Q(wdtick_flag), .C(clk_16MHz), .D(wdtick_flag_N_310), 
            .R(flagcntwd));   // zim_main.vhd(418[3] 429[10])
    SB_CARRY add_146_8 (.CI(n19901), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19902));
    SB_LUT4 wdtick_cnt_3909_add_4_25_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[23]), .I3(n20037), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_146_7_lut (.I0(n14_adj_1560), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19900), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3909_add_4_25 (.CI(n20037), .I0(ICE_GPMO_1), .I1(wdtick_cnt[23]), 
            .CO(n20038));
    SB_LUT4 wdtick_cnt_3909_add_4_24_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[22]), .I3(n20036), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_24 (.CI(n20036), .I0(ICE_GPMO_1), .I1(wdtick_cnt[22]), 
            .CO(n20037));
    SB_LUT4 comm_index_1__bdd_4_lut_20061 (.I0(comm_index[1]), .I1(n4_adj_1566), 
            .I2(n21613), .I3(comm_index[2]), .O(n22660));
    defparam comm_index_1__bdd_4_lut_20061.LUT_INIT = 16'he4aa;
    SB_LUT4 wdtick_cnt_3909_add_4_23_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[21]), .I3(n20035), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_23 (.CI(n20035), .I0(ICE_GPMO_1), .I1(wdtick_cnt[21]), 
            .CO(n20036));
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15390));   // zim_main.vhd(564[3] 869[10])
    DDS_AD9837 SIG_DDS (.buf_dds0({buf_dds0}), .dds_state({dds_state}), 
            .clk_32MHz(clk_32MHz), .DDS_CS(DDS_CS), .VCC_net(VCC_net), 
            .GND_net(ICE_GPMO_1), .\bit_cnt[0] (bit_cnt_adj_1706[0]), .\tmp_buf[15] (tmp_buf[15]), 
            .n15413(n15413), .DDS_MOSI(DDS_MOSI), .n15404(n15404), .DDS_SCK(DDS_SCK), 
            .n16132(n16132), .n15161(n15161), .trig_dds0(trig_dds0));   // zim_main.vhd(911[12:22])
    SB_LUT4 i12668_2_lut (.I0(n12487), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15062));   // zim_main.vhd(564[3] 869[10])
    defparam i12668_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13065_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1534), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15464));   // zim_main.vhd(564[3] 869[10])
    defparam i13065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_4_lut_adj_314 (.I0(n10854), .I1(n19558), .I2(comm_state[1]), 
            .I3(n27_adj_1609), .O(n12_adj_1582));
    defparam i19_4_lut_adj_314.LUT_INIT = 16'hc505;
    SB_LUT4 i1_3_lut_adj_315 (.I0(n12_adj_1582), .I1(n21121), .I2(n21170), 
            .I3(ICE_GPMO_1), .O(n12487));
    defparam i1_3_lut_adj_315.LUT_INIT = 16'hc8c8;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15389));   // zim_main.vhd(564[3] 869[10])
    ADC_ADS127_U1 ADC_IAC (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .IAC_DRDY(IAC_DRDY), .drdy_sync2(drdy_sync2), .drdy_prev(drdy_prev), 
            .DTRIG_N_851(DTRIG_N_851), .GND_net(ICE_GPMO_1), .drdy_falling(drdy_falling), 
            .\adc_state[1] (adc_state[1]), .eis_adc_trig(eis_adc_trig), 
            .n12820(n12820), .n21136(n21136), .cmd_rdadctmp({cmd_rdadctmp}), 
            .buf_adcdata_iac({buf_adcdata_iac}), .n20632(n20632), .IAC_SCLK(IAC_SCLK), 
            .n15397(n15397), .n20750(n20750), .VCC_net(VCC_net), .n12(n12_adj_1600), 
            .IAC_CS(IAC_CS), .n20766(n20766), .n20768(n20768), .n20770(n20770), 
            .n20772(n20772), .n20774(n20774), .n20776(n20776), .n20778(n20778), 
            .n20782(n20782), .n20784(n20784), .n20786(n20786), .n20788(n20788), 
            .n20790(n20790), .n20792(n20792), .n20794(n20794), .n20800(n20800), 
            .n20802(n20802), .n20806(n20806), .n20808(n20808), .n20812(n20812), 
            .n20814(n20814), .n20816(n20816), .n20818(n20818), .n20630(n20630), 
            .acadc_dtrig_i(acadc_dtrig_i), .n20820(n20820), .n20822(n20822), 
            .n20824(n20824), .n20828(n20828), .n20832(n20832), .n20834(n20834), 
            .n20836(n20836), .n20838(n20838), .n20840(n20840));   // zim_main.vhd(883[12:22])
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15388));   // zim_main.vhd(564[3] 869[10])
    ADC_MAX31865 RTD (.RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .\adc_state[2] (adc_state_adj_1726[2]), .n1(n1), .GND_net(ICE_GPMO_1), 
            .buf_cfgRTD({buf_cfgRTD}), .adress({Open_23, adress[6:1], 
            Open_24}), .n20194(n20194), .VCC_net(VCC_net), .n20196(n20196), 
            .n20198(n20198), .n20200(n20200), .n20202(n20202), .n20204(n20204), 
            .n15749(n15749), .read_buf({read_buf}), .n15746(n15746), .n11904(n11904), 
            .n15743(n15743), .n15740(n15740), .n20472(n20472), .n20482(n20482), 
            .n13243(n13243), .n20484(n20484), .n20486(n20486), .n20488(n20488), 
            .n20490(n20490), .n20498(n20498), .n20500(n20500), .n20502(n20502), 
            .n20504(n20504), .n20464(n20464), .buf_readRTD({buf_readRTD}), 
            .n20508(n20508), .n20510(n20510), .n20512(n20512), .n20514(n20514), 
            .n20516(n20516), .n20592(n20592), .n20518(n20518), .n20520(n20520), 
            .n20522(n20522), .n20524(n20524), .n20526(n20526), .n20528(n20528), 
            .n20530(n20530), .n14783(n14783), .RTD_DRDY(RTD_DRDY), .n20608(n20608), 
            .n20466(n20466), .n13072(n13072), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(944[8:20])
    SB_LUT4 wdtick_cnt_3909_add_4_22_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[20]), .I3(n20034), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15387));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 i13066_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1533), .I2(n12722), 
            .I3(ICE_GPMO_1), .O(n15465));   // zim_main.vhd(564[3] 869[10])
    defparam i13066_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15386));   // zim_main.vhd(564[3] 869[10])
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15385));   // zim_main.vhd(564[3] 869[10])
    SB_LUT4 n22660_bdd_4_lut (.I0(n22660), .I1(n2_adj_1565), .I2(n1_adj_1564), 
            .I3(comm_index[2]), .O(n22663));
    defparam n22660_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFSR comm_clear_334__i4 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(n5967), 
            .R(n5978));   // zim_main.vhd(581[4] 868[13])
    ADC_ADS127 ADC_VAC (.n20656(n20656), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1685}), 
            .clk_32MHz(clk_32MHz), .\adc_state[0] (adc_state_adj_1684[0]), 
            .n21128(n21128), .buf_adcdata_vac({buf_adcdata_vac}), .DTRIG_N_851(DTRIG_N_851_adj_1478), 
            .\adc_state[1] (adc_state_adj_1684[1]), .VAC_DRDY(VAC_DRDY), 
            .drdy_sync2(drdy_sync2_adj_1475), .drdy_prev(drdy_prev_adj_1476), 
            .GND_net(ICE_GPMO_1), .drdy_falling(drdy_falling_adj_1477), 
            .eis_adc_trig(eis_adc_trig), .n20660(n20660), .n20662(n20662), 
            .n12890(n12890), .n20636(n20636), .VAC_SCLK(VAC_SCLK), .n15402(n15402), 
            .n20634(n20634), .acadc_dtrig_v(acadc_dtrig_v), .n20906(n20906), 
            .n20904(n20904), .n20752(n20752), .n12(n12_adj_1592), .VAC_CS(VAC_CS), 
            .n20902(n20902), .n20896(n20896), .n20734(n20734), .n20736(n20736), 
            .n20738(n20738), .n20894(n20894), .n20892(n20892), .n20890(n20890), 
            .n20888(n20888), .n20886(n20886), .n20884(n20884), .n20882(n20882), 
            .n20880(n20880), .n20878(n20878), .n20876(n20876), .n20874(n20874), 
            .n20866(n20866), .n20842(n20842), .n20844(n20844), .n20852(n20852), 
            .n20854(n20854), .n20856(n20856), .n20858(n20858), .n20860(n20860), 
            .n20862(n20862), .n20864(n20864));   // zim_main.vhd(897[12:22])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11955), 
            .D(eis_state_2__N_169[0]), .R(tacadc_rst));   // zim_main.vhd(468[3] 546[10])
    SB_CARRY wdtick_cnt_3909_add_4_22 (.CI(n20034), .I0(ICE_GPMO_1), .I1(wdtick_cnt[20]), 
            .CO(n20035));
    SB_LUT4 wdtick_cnt_3909_add_4_21_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[19]), .I3(n20033), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_21_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (reset_int, comm_tx_buf, GND_net, n6180, clk_32MHz, 
            ICE_SPI_MISO, comm_data_vld, VCC_net, comm_rx_buf, sclk_sync1, 
            sclk_sync2, n15409, n15408, n15406);
    input reset_int;
    input [7:0]comm_tx_buf;
    input GND_net;
    output n6180;
    input clk_32MHz;
    output ICE_SPI_MISO;
    output comm_data_vld;
    input VCC_net;
    output [7:0]comm_rx_buf;
    output sclk_sync1;
    output sclk_sync2;
    input n15409;
    input n15408;
    input n15406;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire data_tx_7__N_959, n21288, sclk_rising_pend;
    wire [7:0]data_tx;   // spi_slave.vhd(29[8:15])
    
    wire sclk_falling_pend_N_998, n6522, DATA_VLD_N_986, data_tx_7__N_944, 
        data_tx_7__N_942, n14907, n14906, n23180, data_tx_7__N_962;
    wire [7:0]n18;
    
    wire n14896, n14895, n14894, data_tx_7__N_943, data_tx_7__N_950, 
        n15809, n15806, n17373, n15803, n15800, n15797, n15794, 
        n15791;
    wire [3:0]n27;
    
    wire n12005;
    wire [3:0]bit_cnt;   // spi_slave.vhd(27[8:15])
    
    wire data_tx_7__N_953, data_tx_7__N_939, n12008, sclk_falling_pend, 
        n14902, data_tx_7__N_936, data_tx_7__N_956, data_tx_7__N_940, 
        n23186, n23174, n14898, n14903, n14900, n14910, data_tx_7__N_941, 
        n14899, data_tx_7__N_965, n14927, n14926, data_tx_7__N_947, 
        n14923, n14922, n19833, n23192, n23189, n14915, n14914, 
        n14919, n14918, n14911, n23183, data_tx_7__N_937, data_tx_7__N_938;
    
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n21288), 
            .D(n6180));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i4204_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_998), 
            .I3(GND_net), .O(n6522));   // spi_slave.vhd(47[3] 84[10])
    defparam i4204_3_lut.LUT_INIT = 16'hacac;
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_986), 
            .R(reset_int));   // spi_slave.vhd(91[3] 100[10])
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_942));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12509_3_lut (.I0(n14907), .I1(n14906), .I2(n23180), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12509_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12498_3_lut (.I0(n14896), .I1(n14895), .I2(n14894), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_943));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_950));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15809));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15806));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i14993_4_lut (.I0(comm_rx_buf[3]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[2]), .O(n15803));
    defparam i14993_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15803));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15800));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15797));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15794));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15791));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFER bit_cnt_3912__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12005), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_953));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_939));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_998), 
            .I3(sclk_sync2), .O(n12008));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_LUT4 i19704_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_998));   // spi_slave.vhd(67[4] 83[11])
    defparam i19704_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n12008), .D(sclk_falling_pend_N_998));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i7_12503_12504_set (.Q(n14902), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_940));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19816_4_lut_3_lut (.I0(n23180), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n23180));   // spi_slave.vhd(47[3] 84[10])
    defparam i19816_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19806_4_lut_3_lut (.I0(n23186), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n23186));   // spi_slave.vhd(47[3] 84[10])
    defparam i19806_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19786_4_lut_3_lut (.I0(n14894), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n14894));   // spi_slave.vhd(47[3] 84[10])
    defparam i19786_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19811_4_lut_3_lut (.I0(n23174), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n23174));   // spi_slave.vhd(47[3] 84[10])
    defparam i19811_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19781_4_lut_3_lut (.I0(n14898), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14898));   // spi_slave.vhd(47[3] 84[10])
    defparam i19781_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i0_i0_12496_12497_set (.Q(n14895), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_943));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i1_12507_12508_reset (.Q(n14907), .C(clk_32MHz), 
            .D(n18[1]), .R(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i1_12507_12508_set (.Q(n14906), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_942));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i7_12503_12504_reset (.Q(n14903), .C(clk_32MHz), 
            .D(n18[7]), .R(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR MISO_92_12500_12501_reset (.Q(n14900), .C(clk_32MHz), .D(n6522), 
            .R(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i2_12511_12512_set (.Q(n14910), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_941));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS MISO_92_12500_12501_set (.Q(n14899), .C(clk_32MHz), .D(n6522), 
            .S(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_DFFR data_tx_i0_i0_12496_12497_reset (.Q(n14896), .C(clk_32MHz), 
            .D(n18[0]), .R(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12502_3_lut (.I0(n14900), .I1(n14899), .I2(n14898), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(47[3] 84[10])
    defparam i12502_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n17373), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n12005));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h2f2f;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n15409));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n15408));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n15406));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12529_3_lut (.I0(n14927), .I1(n14926), .I2(n23174), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12529_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12505_3_lut (.I0(n14903), .I1(n14902), .I2(n14898), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15521_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15521_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i14991_4_lut (.I0(comm_rx_buf[7]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[6]), .O(n15791));
    defparam i14991_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14995_4_lut (.I0(comm_rx_buf[6]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[5]), .O(n15794));
    defparam i14995_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14987_4_lut (.I0(comm_rx_buf[5]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[4]), .O(n15797));
    defparam i14987_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14989_4_lut (.I0(comm_rx_buf[4]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[3]), .O(n15800));
    defparam i14989_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14999_4_lut (.I0(comm_rx_buf[2]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[1]), .O(n15806));
    defparam i14999_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14997_4_lut (.I0(comm_rx_buf[1]), .I1(n17373), .I2(n6180), 
            .I3(comm_rx_buf[0]), .O(n15809));
    defparam i14997_4_lut.LUT_INIT = 16'haca0;
    SB_DFFER bit_cnt_3912__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12005), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3912__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12005), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3912__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12005), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR data_tx_i0_i6_12527_12528_reset (.Q(n14927), .C(clk_32MHz), 
            .D(n18[6]), .R(data_tx_7__N_947));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12525_3_lut (.I0(n14923), .I1(n14922), .I2(n23186), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12525_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_947));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15718_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n19833), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15718_4_lut.LUT_INIT = 16'h1222;
    SB_LUT4 i15717_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n19833), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15717_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17373));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17373), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_986));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19796_4_lut_3_lut (.I0(n23192), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n23192));   // spi_slave.vhd(47[3] 84[10])
    defparam i19796_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19801_4_lut_3_lut (.I0(n23189), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n23189));   // spi_slave.vhd(47[3] 84[10])
    defparam i19801_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12517_3_lut (.I0(n14915), .I1(n14914), .I2(n23192), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12521_3_lut (.I0(n14919), .I1(n14918), .I2(n23189), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12521_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15522_2_lut_4_lut (.I0(n14896), .I1(n14895), .I2(n14894), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i15522_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_LUT4 i12513_3_lut (.I0(n14911), .I1(n14910), .I2(n23183), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_941));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_937));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18696_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n21288));
    defparam i18696_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 i19715_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n6180));   // spi_slave.vhd(47[3] 84[10])
    defparam i19715_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_938));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17438_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n19833));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17438_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i15716_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15716_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_LUT4 i19791_4_lut_3_lut (.I0(n23183), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n23183));   // spi_slave.vhd(47[3] 84[10])
    defparam i19791_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i0_i6_12527_12528_set (.Q(n14926), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_937));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i5_12523_12524_reset (.Q(n14923), .C(clk_32MHz), 
            .D(n18[5]), .R(data_tx_7__N_950));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i5_12523_12524_set (.Q(n14922), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_938));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i4_12519_12520_reset (.Q(n14919), .C(clk_32MHz), 
            .D(n18[4]), .R(data_tx_7__N_953));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i4_12519_12520_set (.Q(n14918), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_939));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i3_12515_12516_reset (.Q(n14915), .C(clk_32MHz), 
            .D(n18[3]), .R(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i3_12515_12516_set (.Q(n14914), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_940));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i2_12511_12512_reset (.Q(n14911), .C(clk_32MHz), 
            .D(n18[2]), .R(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (GND_net, VCC_net, \cmd_rdadcbuf[34] , \cmd_rdadcbuf[33] , 
            \cmd_rdadcbuf[32] , \cmd_rdadcbuf[31] , \cmd_rdadcbuf[30] , 
            \adc_state[3] , \adc_state[2] , \adc_state_3__N_1270[0] , 
            \adc_state[1] , cmd_rdadctmp, \cmd_rdadcbuf[29] , \cmd_rdadcbuf[28] , 
            \cmd_rdadcbuf[27] , \cmd_rdadcbuf[26] , VDC_CLK, n20336, 
            \cmd_rdadctmp[1] , n20338, \cmd_rdadctmp[2] , n20340, \cmd_rdadctmp[3] , 
            n20342, \cmd_rdadctmp[4] , n20344, \cmd_rdadctmp[5] , n20346, 
            \cmd_rdadctmp[6] , n20348, \cmd_rdadctmp[7] , n20350, \cmd_rdadctmp[8] , 
            n20352, \cmd_rdadctmp[9] , n20354, \cmd_rdadctmp[10] , n20356, 
            \cmd_rdadctmp[11] , n20358, \cmd_rdadctmp[12] , n20360, 
            \cmd_rdadctmp[13] , n20362, \cmd_rdadctmp[14] , n20364, 
            \cmd_rdadctmp[15] , n20366, \cmd_rdadctmp[16] , n20368, 
            \cmd_rdadctmp[17] , n20370, \cmd_rdadctmp[18] , n20372, 
            \cmd_rdadctmp[19] , n20374, \cmd_rdadctmp[20] , \cmd_rdadcbuf[25] , 
            n20376, \cmd_rdadctmp[21] , n20378, n20532, buf_adcdata_vdc, 
            n20534, n20542, \cmd_rdadcbuf[24] , n20544, n20546, n20548, 
            n20550, n20552, n20554, n20556, n20558, n20560, n20562, 
            n20564, n20594, n20590, n20566, n20568, n20570, n20572, 
            n20574, n20576, n20578, \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , 
            \cmd_rdadcbuf[21] , \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , 
            n11, \cmd_rdadcbuf[18] , VDC_SCLK, \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , 
            \cmd_rdadcbuf[15] , \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , 
            \cmd_rdadcbuf[12] , \cmd_rdadcbuf[11] , n20420, \cmd_rdadctmp[0] , 
            n20610, n11938, n13388, clk_16MHz);
    input GND_net;
    input VCC_net;
    output \cmd_rdadcbuf[34] ;
    output \cmd_rdadcbuf[33] ;
    output \cmd_rdadcbuf[32] ;
    output \cmd_rdadcbuf[31] ;
    output \cmd_rdadcbuf[30] ;
    output \adc_state[3] ;
    output \adc_state[2] ;
    input \adc_state_3__N_1270[0] ;
    output \adc_state[1] ;
    output [23:0]cmd_rdadctmp;
    output \cmd_rdadcbuf[29] ;
    output \cmd_rdadcbuf[28] ;
    output \cmd_rdadcbuf[27] ;
    output \cmd_rdadcbuf[26] ;
    output VDC_CLK;
    input n20336;
    output \cmd_rdadctmp[1] ;
    input n20338;
    output \cmd_rdadctmp[2] ;
    input n20340;
    output \cmd_rdadctmp[3] ;
    input n20342;
    output \cmd_rdadctmp[4] ;
    input n20344;
    output \cmd_rdadctmp[5] ;
    input n20346;
    output \cmd_rdadctmp[6] ;
    input n20348;
    output \cmd_rdadctmp[7] ;
    input n20350;
    output \cmd_rdadctmp[8] ;
    input n20352;
    output \cmd_rdadctmp[9] ;
    input n20354;
    output \cmd_rdadctmp[10] ;
    input n20356;
    output \cmd_rdadctmp[11] ;
    input n20358;
    output \cmd_rdadctmp[12] ;
    input n20360;
    output \cmd_rdadctmp[13] ;
    input n20362;
    output \cmd_rdadctmp[14] ;
    input n20364;
    output \cmd_rdadctmp[15] ;
    input n20366;
    output \cmd_rdadctmp[16] ;
    input n20368;
    output \cmd_rdadctmp[17] ;
    input n20370;
    output \cmd_rdadctmp[18] ;
    input n20372;
    output \cmd_rdadctmp[19] ;
    input n20374;
    output \cmd_rdadctmp[20] ;
    output \cmd_rdadcbuf[25] ;
    input n20376;
    output \cmd_rdadctmp[21] ;
    input n20378;
    input n20532;
    output [23:0]buf_adcdata_vdc;
    input n20534;
    input n20542;
    output \cmd_rdadcbuf[24] ;
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
    input n20594;
    input n20590;
    input n20566;
    input n20568;
    input n20570;
    input n20572;
    input n20574;
    input n20576;
    input n20578;
    output \cmd_rdadcbuf[23] ;
    output \cmd_rdadcbuf[22] ;
    output \cmd_rdadcbuf[21] ;
    output \cmd_rdadcbuf[20] ;
    output \cmd_rdadcbuf[19] ;
    input n11;
    output \cmd_rdadcbuf[18] ;
    output VDC_SCLK;
    output \cmd_rdadcbuf[17] ;
    output \cmd_rdadcbuf[16] ;
    output \cmd_rdadcbuf[15] ;
    output \cmd_rdadcbuf[14] ;
    output \cmd_rdadcbuf[13] ;
    output \cmd_rdadcbuf[12] ;
    output \cmd_rdadcbuf[11] ;
    input n20420;
    output \cmd_rdadctmp[0] ;
    input n20610;
    output n11938;
    output n13388;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    
    wire n19962;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19963;
    wire [11:0]avg_cnt_11__N_1314;
    
    wire n19961;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n21714;
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n21064, n21711, n19960;
    wire [35:0]cmd_rdadcbuf_35__N_1278;
    
    wire n19958, n19957, n19956, n19955, n19954, n70, n5, n11569, 
        n21110, n18, n28, n21086, n6, n10801, n13404;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n6_adj_1433, n13523, n15251;
    wire [3:0]adc_state_3__N_1146;
    
    wire n7710, n13312, n19953, n19952, n19951, n19950, n21084;
    wire [35:0]cmd_rdadcbuf_35__N_1194;
    
    wire n13539, n5_adj_1434, n52, n11961, n11942, n19949, n19948, 
        n19947, n19946, n19945, n19944, n19943, n15352, n19942, 
        n22283, n16108, n19941, n19940;
    wire [7:0]n37;
    
    wire n20007, n19939, n20006, n19938, n19937, n20005, n19936, 
        n20004, n20003, n20002, n19935;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19934, n20001, n19933, n19932, n19931, n19930, n19929, 
        n19928, n19927, n19926, n19925, n18974, n4, n21203, n6_adj_1435, 
        n20088, n20, n19, n21, n21283, n21293, n21558, n21248, 
        n31, n18977, n22717, n7, n7_adj_1436, n65, n21265, n42_adj_1437, 
        n19970, n19969, n22714, n19968, n19967, n19966, n19965, 
        n19964;
    
    SB_CARRY add_24_5 (.CI(n19962), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19963));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19961), .O(avg_cnt_11__N_1314[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19961), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19962));
    SB_LUT4 i19524_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21714));
    defparam i19524_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i19476_4_lut (.I0(n21714), .I1(adc_state[0]), .I2(n21064), 
            .I3(bit_cnt[4]), .O(n21711));
    defparam i19476_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19960), .O(avg_cnt_11__N_1314[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19960), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19961));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1314[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19960));
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19958), .O(cmd_rdadcbuf_35__N_1278[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19957), .O(cmd_rdadcbuf_35__N_1278[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_35 (.CI(n19957), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19958));
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19956), .O(cmd_rdadcbuf_35__N_1278[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_34 (.CI(n19956), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19957));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19955), .O(cmd_rdadcbuf_35__N_1278[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19955), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19956));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19954), .O(cmd_rdadcbuf_35__N_1278[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19762_3_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(n70), 
            .I3(GND_net), .O(n5));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i19762_3_lut.LUT_INIT = 16'h8a8a;
    SB_LUT4 i36_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(n11569), .I2(\adc_state[1] ), 
            .I3(n21110), .O(n18));
    defparam i36_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 i34_4_lut (.I0(adc_state[0]), .I1(n70), .I2(\adc_state[3] ), 
            .I3(\adc_state_3__N_1270[0] ), .O(n28));
    defparam i34_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i1_4_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(n28), 
            .I3(n18), .O(n21086));
    defparam i1_4_lut.LUT_INIT = 16'hfefa;
    SB_CARRY add_23_32 (.CI(n19954), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19955));
    SB_LUT4 i4_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6), .O(n10801));
    defparam i4_4_lut.LUT_INIT = 16'hffbf;
    SB_LUT4 i1_4_lut_adj_28 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(\adc_state[1] ), 
            .I3(adc_state[0]), .O(n13404));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'h8aa8;
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(\adc_state[1] ), .I3(n10801), .O(n6_adj_1433));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_LUT4 i12896_2_lut (.I0(n13523), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    defparam i12896_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1146[3]));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h0870;
    SB_LUT4 i1_4_lut_4_lut_adj_29 (.I0(n70), .I1(n7710), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n13312));
    defparam i1_4_lut_4_lut_adj_29.LUT_INIT = 16'hff5c;
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19953), .O(cmd_rdadcbuf_35__N_1278[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19953), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19954));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19952), .O(cmd_rdadcbuf_35__N_1278[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n19952), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19953));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19951), .O(cmd_rdadcbuf_35__N_1278[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_29 (.CI(n19951), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19952));
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19950), .O(cmd_rdadcbuf_35__N_1278[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_28 (.CI(n19950), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19951));
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(VDC_CLK), .E(n21084), 
            .D(adc_state_3__N_1146[1]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n13312), 
            .D(adc_state_3__N_1146[3]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13539), 
            .D(cmd_rdadcbuf_35__N_1194[34]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(n13539));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf850;
    SB_LUT4 i1_2_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n5_adj_1434));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_30 (.I0(adc_state[0]), .I1(\adc_state_3__N_1270[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n52));
    defparam i1_2_lut_adj_30.LUT_INIT = 16'heeee;
    SB_LUT4 i16596_4_lut (.I0(n52), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(\adc_state[1] ), .O(n11961));   // adc_ads1252u.vhd(31[8:17])
    defparam i16596_4_lut.LUT_INIT = 16'hc2ce;
    SB_LUT4 i19681_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(\adc_state[1] ), .O(n11942));
    defparam i19681_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_DFFE cmd_rdadctmp_i1 (.Q(\cmd_rdadctmp[1] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20336));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(\cmd_rdadctmp[2] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20338));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(\cmd_rdadctmp[3] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20340));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(\cmd_rdadctmp[4] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20342));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(\cmd_rdadctmp[5] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20344));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(\cmd_rdadctmp[6] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20346));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(\cmd_rdadctmp[7] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20348));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(\cmd_rdadctmp[8] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20350));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20352));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20354));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20356));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20358));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20360));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20362));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20364));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20366));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20368));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20370));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(\cmd_rdadctmp[19] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20372));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(\cmd_rdadctmp[20] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20374));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19949), .O(cmd_rdadcbuf_35__N_1278[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i21 (.Q(\cmd_rdadctmp[21] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20376));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_27 (.CI(n19949), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19950));
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20378));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20532));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20534));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20542));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19948), .O(cmd_rdadcbuf_35__N_1278[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20544));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20546));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20548));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20550));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20552));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20554));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20556));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20558));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20560));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20562));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20564));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20594));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20590));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20566));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20568));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20570));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20572));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20574));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20576));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20578));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_26 (.CI(n19948), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19949));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19947), .O(cmd_rdadcbuf_35__N_1278[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19947), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19948));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19946), .O(cmd_rdadcbuf_35__N_1278[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19946), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19947));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(\cmd_rdadctmp[21] ), 
            .I3(n19945), .O(cmd_rdadcbuf_35__N_1278[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19945), .I0(\cmd_rdadcbuf[21] ), .I1(\cmd_rdadctmp[21] ), 
            .CO(n19946));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(\cmd_rdadctmp[20] ), 
            .I3(n19944), .O(cmd_rdadcbuf_35__N_1278[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19944), .I0(\cmd_rdadcbuf[20] ), .I1(\cmd_rdadctmp[20] ), 
            .CO(n19945));
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(\cmd_rdadctmp[19] ), 
            .I3(n19943), .O(cmd_rdadcbuf_35__N_1278[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19943), .I0(\cmd_rdadcbuf[19] ), .I1(\cmd_rdadctmp[19] ), 
            .CO(n19944));
    SB_LUT4 i1_3_lut_4_lut_adj_31 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), 
            .I2(adc_state[0]), .I3(n11), .O(n15352));
    defparam i1_3_lut_4_lut_adj_31.LUT_INIT = 16'h8f88;
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(\cmd_rdadctmp[18] ), 
            .I3(n19942), .O(cmd_rdadcbuf_35__N_1278[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19691_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n22283));   // adc_ads1252u.vhd(31[8:17])
    defparam i19691_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16590_4_lut (.I0(n11942), .I1(\adc_state[1] ), .I2(VDC_SCLK), 
            .I3(n22283), .O(n16108));   // adc_ads1252u.vhd(31[8:17])
    defparam i16590_4_lut.LUT_INIT = 16'h7250;
    SB_CARRY add_23_20 (.CI(n19942), .I0(\cmd_rdadcbuf[18] ), .I1(\cmd_rdadctmp[18] ), 
            .CO(n19943));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(\cmd_rdadctmp[17] ), 
            .I3(n19941), .O(cmd_rdadcbuf_35__N_1278[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19941), .I0(\cmd_rdadcbuf[17] ), .I1(\cmd_rdadctmp[17] ), 
            .CO(n19942));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(\cmd_rdadctmp[16] ), 
            .I3(n19940), .O(cmd_rdadcbuf_35__N_1278[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3916_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n20007), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19940), .I0(\cmd_rdadcbuf[16] ), .I1(\cmd_rdadctmp[16] ), 
            .CO(n19941));
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(\cmd_rdadctmp[15] ), 
            .I3(n19939), .O(cmd_rdadcbuf_35__N_1278[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3916_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n20006), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19939), .I0(\cmd_rdadcbuf[15] ), .I1(\cmd_rdadctmp[15] ), 
            .CO(n19940));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(\cmd_rdadctmp[14] ), 
            .I3(n19938), .O(cmd_rdadcbuf_35__N_1278[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_8 (.CI(n20006), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n20007));
    SB_CARRY add_23_16 (.CI(n19938), .I0(\cmd_rdadcbuf[14] ), .I1(\cmd_rdadctmp[14] ), 
            .CO(n19939));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(\cmd_rdadctmp[13] ), 
            .I3(n19937), .O(cmd_rdadcbuf_35__N_1278[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19937), .I0(\cmd_rdadcbuf[13] ), .I1(\cmd_rdadctmp[13] ), 
            .CO(n19938));
    SB_LUT4 bit_cnt_3916_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n20005), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(\cmd_rdadctmp[12] ), 
            .I3(n19936), .O(cmd_rdadcbuf_35__N_1278[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_7 (.CI(n20005), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n20006));
    SB_CARRY add_23_14 (.CI(n19936), .I0(\cmd_rdadcbuf[12] ), .I1(\cmd_rdadctmp[12] ), 
            .CO(n19937));
    SB_LUT4 bit_cnt_3916_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n20004), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_6 (.CI(n20004), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n20005));
    SB_LUT4 bit_cnt_3916_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n20003), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_5 (.CI(n20003), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n20004));
    SB_LUT4 bit_cnt_3916_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n20002), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(\cmd_rdadctmp[11] ), 
            .I3(n19935), .O(cmd_rdadcbuf_35__N_1278[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19935), .I0(\cmd_rdadcbuf[11] ), .I1(\cmd_rdadctmp[11] ), 
            .CO(n19936));
    SB_CARRY bit_cnt_3916_add_4_4 (.CI(n20002), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n20003));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(\cmd_rdadctmp[10] ), 
            .I3(n19934), .O(cmd_rdadcbuf_35__N_1278[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3916_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n20001), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_3 (.CI(n20001), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n20002));
    SB_CARRY add_23_12 (.CI(n19934), .I0(cmd_rdadcbuf[10]), .I1(\cmd_rdadctmp[10] ), 
            .CO(n19935));
    SB_LUT4 bit_cnt_3916_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n20001));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(\cmd_rdadctmp[9] ), 
            .I3(n19933), .O(cmd_rdadcbuf_35__N_1278[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n19933), .I0(cmd_rdadcbuf[9]), .I1(\cmd_rdadctmp[9] ), 
            .CO(n19934));
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(\cmd_rdadctmp[8] ), 
            .I3(n19932), .O(cmd_rdadcbuf_35__N_1278[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(VDC_CLK), .E(VCC_net), 
            .D(n20420));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20610));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_10 (.CI(n19932), .I0(cmd_rdadcbuf[8]), .I1(\cmd_rdadctmp[8] ), 
            .CO(n19933));
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(\cmd_rdadctmp[7] ), 
            .I3(n19931), .O(cmd_rdadcbuf_35__N_1278[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19931), .I0(cmd_rdadcbuf[7]), .I1(\cmd_rdadctmp[7] ), 
            .CO(n19932));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(\cmd_rdadctmp[6] ), 
            .I3(n19930), .O(cmd_rdadcbuf_35__N_1278[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n16108));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_23_8 (.CI(n19930), .I0(cmd_rdadcbuf[6]), .I1(\cmd_rdadctmp[6] ), 
            .CO(n19931));
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(\cmd_rdadctmp[5] ), 
            .I3(n19929), .O(cmd_rdadcbuf_35__N_1278[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19929), .I0(cmd_rdadcbuf[5]), .I1(\cmd_rdadctmp[5] ), 
            .CO(n19930));
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(\cmd_rdadctmp[4] ), 
            .I3(n19928), .O(cmd_rdadcbuf_35__N_1278[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19928), .I0(cmd_rdadcbuf[4]), .I1(\cmd_rdadctmp[4] ), 
            .CO(n19929));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(\cmd_rdadctmp[3] ), 
            .I3(n19927), .O(cmd_rdadcbuf_35__N_1278[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_5 (.CI(n19927), .I0(cmd_rdadcbuf[3]), .I1(\cmd_rdadctmp[3] ), 
            .CO(n19928));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(\cmd_rdadctmp[2] ), 
            .I3(n19926), .O(cmd_rdadcbuf_35__N_1278[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_4 (.CI(n19926), .I0(cmd_rdadcbuf[2]), .I1(\cmd_rdadctmp[2] ), 
            .CO(n19927));
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(\cmd_rdadctmp[1] ), 
            .I3(n19925), .O(cmd_rdadcbuf_35__N_1278[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19925), .I0(cmd_rdadcbuf[1]), .I1(\cmd_rdadctmp[1] ), 
            .CO(n19926));
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(\cmd_rdadctmp[0] ), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1278[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(\cmd_rdadctmp[0] ), 
            .CO(n19925));
    SB_LUT4 i1_3_lut (.I0(n18974), .I1(\adc_state[1] ), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n4));
    defparam i1_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1278[34]), 
            .I1(\adc_state[2] ), .I2(\adc_state[3] ), .I3(n4), .O(cmd_rdadcbuf_35__N_1194[34]));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n21064));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_4_lut_adj_32 (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13523));
    defparam i1_4_lut_4_lut_adj_32.LUT_INIT = 16'hf840;
    SB_LUT4 i1_2_lut_adj_33 (.I0(bit_cnt[1]), .I1(n21064), .I2(GND_net), 
            .I3(GND_net), .O(n11569));   // adc_ads1252u.vhd(57[9:24])
    defparam i1_2_lut_adj_33.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(n21064), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_34 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21203));
    defparam i1_2_lut_adj_34.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_35 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1435));   // adc_ads1252u.vhd(72[8:24])
    defparam i1_2_lut_adj_35.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut_adj_36 (.I0(n11569), .I1(bit_cnt[4]), .I2(bit_cnt[0]), 
            .I3(n6_adj_1435), .O(n20088));   // adc_ads1252u.vhd(72[8:24])
    defparam i4_4_lut_adj_36.LUT_INIT = 16'hffef;
    SB_LUT4 i5313_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(n20088), .I2(\adc_state[1] ), 
            .I3(adc_state[0]), .O(n7710));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i5313_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 i8_4_lut (.I0(avg_cnt[9]), .I1(avg_cnt[3]), .I2(avg_cnt[8]), 
            .I3(avg_cnt[6]), .O(n20));   // adc_ads1252u.vhd(104[8:24])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[0]), .I2(avg_cnt[10]), 
            .I3(avg_cnt[11]), .O(n19));   // adc_ads1252u.vhd(104[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[4]), .I1(avg_cnt[1]), .I2(avg_cnt[7]), 
            .I3(avg_cnt[2]), .O(n21));   // adc_ads1252u.vhd(104[8:24])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(n18974));   // adc_ads1252u.vhd(104[8:24])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i18692_2_lut (.I0(\adc_state[3] ), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(GND_net), .O(n21283));
    defparam i18692_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_37 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[0]), 
            .I3(n21283), .O(n21110));
    defparam i4_4_lut_adj_37.LUT_INIT = 16'h0020;
    SB_LUT4 i18701_2_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n21293));
    defparam i18701_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESR bit_cnt_3916__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11961), 
            .D(n37[7]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3916__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11961), 
            .D(n37[6]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 i19440_4_lut (.I0(bit_cnt[1]), .I1(n21110), .I2(n21293), .I3(bit_cnt[5]), 
            .O(n21558));
    defparam i19440_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i18658_2_lut (.I0(\adc_state_3__N_1270[0] ), .I1(\adc_state[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n21248));
    defparam i18658_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i37_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(adc_state[0]), 
            .I2(n21558), .I3(\adc_state[1] ), .O(n31));
    defparam i37_4_lut.LUT_INIT = 16'he266;
    SB_DFFESR bit_cnt_3916__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11961), 
            .D(n37[5]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3916__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11961), 
            .D(n37[4]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3916__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11961), 
            .D(n37[3]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3916__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11961), 
            .D(n37[2]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR bit_cnt_3916__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11961), 
            .D(n37[1]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_LUT4 i1_4_lut_adj_38 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(n31), 
            .I3(n21248), .O(n21084));
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hfafe;
    SB_LUT4 i16571_3_lut (.I0(n18974), .I1(adc_state[0]), .I2(\adc_state[1] ), 
            .I3(GND_net), .O(n18977));   // adc_ads1252u.vhd(31[8:17])
    defparam i16571_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i16573_4_lut (.I0(n22717), .I1(n18977), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1146[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16573_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[11]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[10]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[9]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[8]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[7]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[6]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[5]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[4]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[3]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[2]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[1]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[33]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[32]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[31]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[30]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[29]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[28]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[27]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[26]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[25]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[24]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[23]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[22]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[21]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[20]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[19]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[18]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[17]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[16]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[15]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[14]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[13]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[12]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[11]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[10]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[9]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[8]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[7]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[6]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[5]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[4]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[3]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[2]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[1]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13404), 
            .D(n6_adj_1433), .R(n5_adj_1434));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n21086), 
            .D(n7), .R(n5));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 i16578_3_lut (.I0(\adc_state_3__N_1270[0] ), .I1(adc_state[0]), 
            .I2(\adc_state[1] ), .I3(GND_net), .O(n7_adj_1436));   // adc_ads1252u.vhd(31[8:17])
    defparam i16578_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i1_4_lut_adj_39 (.I0(\adc_state[2] ), .I1(n7_adj_1436), .I2(n70), 
            .I3(\adc_state[3] ), .O(n65));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_39.LUT_INIT = 16'hafee;
    SB_LUT4 i18675_2_lut (.I0(n20088), .I1(adc_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21265));
    defparam i18675_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_40 (.I0(n21265), .I1(n65), .I2(\adc_state[1] ), 
            .I3(n21203), .O(n42_adj_1437));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_40.LUT_INIT = 16'hcc4c;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19970), .O(avg_cnt_11__N_1314[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19969), .O(avg_cnt_11__N_1314[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19969), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19970));
    SB_LUT4 i1_2_lut_3_lut_adj_41 (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state_3__N_1270[0] ), .I3(GND_net), .O(n70));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i1_2_lut_3_lut_adj_41.LUT_INIT = 16'h8080;
    SB_LUT4 i12304_2_lut_3_lut (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state[2] ), .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(45[4] 130[13])
    defparam i12304_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_3_lut_4_lut_adj_42 (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state[2] ), .I3(\adc_state[3] ), .O(n11938));
    defparam i1_3_lut_4_lut_adj_42.LUT_INIT = 16'hf200;
    SB_LUT4 i1_3_lut_4_lut_adj_43 (.I0(adc_state[0]), .I1(\adc_state[1] ), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13388));
    defparam i1_3_lut_4_lut_adj_43.LUT_INIT = 16'hf200;
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10801), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(\adc_state[1] ), .O(n22714));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19968), .O(avg_cnt_11__N_1314[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n19968), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19969));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19967), .O(avg_cnt_11__N_1314[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19967), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19968));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19966), .O(avg_cnt_11__N_1314[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_cnt_3916__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11961), 
            .D(n37[0]), .R(n15352));   // adc_ads1252u.vhd(84[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13523), .D(avg_cnt_11__N_1314[0]), 
            .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13523), 
            .D(cmd_rdadcbuf_35__N_1278[0]), .R(n15251));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_LUT4 n22714_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21711), .I3(n22714), .O(n22717));
    defparam n22714_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n42_adj_1437), 
            .D(adc_state_3__N_1146[0]));   // adc_ads1252u.vhd(44[3] 131[10])
    SB_CARRY add_24_9 (.CI(n19966), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19967));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19965), .O(avg_cnt_11__N_1314[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19965), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19966));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19964), .O(avg_cnt_11__N_1314[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19964), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19965));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19963), .O(avg_cnt_11__N_1314[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19963), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19964));
    SB_LUT4 i1_4_lut_4_lut_adj_44 (.I0(adc_state[0]), .I1(\adc_state[3] ), 
            .I2(\adc_state[2] ), .I3(\adc_state_3__N_1270[0] ), .O(adc_state_3__N_1146[0]));
    defparam i1_4_lut_4_lut_adj_44.LUT_INIT = 16'h1514;
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19962), .O(avg_cnt_11__N_1314[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
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
    
    wire div_state_1__N_1414;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n28, n26, n27, n21731;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1430, n26_adj_1431, n27_adj_1432, n14972, n11947, 
        n21734, n21729, n21728;
    wire [1:0]div_state_1__N_1327;
    
    wire n6;
    wire [16:0]t0on_15__N_1361;
    
    wire n20000, n19999, n19998, n19997, n19996, n19995, n19994, 
        n19993, n19992, n19991, n19990, n19989, n19988, n19987, 
        n19986;
    wire [16:0]t0off_15__N_1377;
    
    wire n19985, n19984, n19983, n19982, n19981, n19980, n19979, 
        n19978, n19977, n19976, n19975, n19974, n19973, n19972, 
        n19971;
    
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1414));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1414));   // vdc_gen_clk.vhd(31[4] 55[13])
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
    SB_LUT4 i19381_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21731));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19381_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_25 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1430));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_25.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_26 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1431));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_26.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_27 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1432));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_27.LUT_INIT = 16'hfffe;
    SB_LUT4 i19718_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n14972));
    defparam i19718_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i19693_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11947));
    defparam i19693_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 i19318_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21734));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19318_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19317_4_lut (.I0(n21731), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21729));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19317_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19486_4_lut (.I0(n21734), .I1(n27_adj_1432), .I2(n26_adj_1431), 
            .I3(n28_adj_1430), .O(n21728));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19486_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1327[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n20000), .O(t0on_15__N_1361[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19999), .O(t0on_15__N_1361[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19999), .I0(t0on[14]), .I1(VCC_net), .CO(n20000));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19998), .O(t0on_15__N_1361[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19998), .I0(t0on[13]), .I1(VCC_net), .CO(n19999));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19997), .O(t0on_15__N_1361[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19997), .I0(t0on[12]), .I1(VCC_net), .CO(n19998));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19996), .O(t0on_15__N_1361[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19996), .I0(t0on[11]), .I1(VCC_net), .CO(n19997));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19995), .O(t0on_15__N_1361[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19995), .I0(t0on[10]), .I1(VCC_net), .CO(n19996));
    SB_LUT4 i12303_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1327[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12303_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19994), 
            .O(t0on_15__N_1361[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19994), .I0(t0on[9]), .I1(VCC_net), .CO(n19995));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19993), 
            .O(t0on_15__N_1361[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19993), .I0(t0on[8]), .I1(VCC_net), .CO(n19994));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19992), 
            .O(t0on_15__N_1361[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19992), .I0(t0on[7]), .I1(VCC_net), .CO(n19993));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19991), 
            .O(t0on_15__N_1361[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19991), .I0(t0on[6]), .I1(VCC_net), .CO(n19992));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19990), 
            .O(t0on_15__N_1361[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19990), .I0(t0on[5]), .I1(VCC_net), .CO(n19991));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19989), 
            .O(t0on_15__N_1361[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19989), .I0(t0on[4]), .I1(VCC_net), .CO(n19990));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19988), 
            .O(t0on_15__N_1361[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19988), .I0(t0on[3]), .I1(VCC_net), .CO(n19989));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19987), 
            .O(t0on_15__N_1361[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19987), .I0(t0on[2]), .I1(VCC_net), .CO(n19988));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19986), 
            .O(t0on_15__N_1361[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19986), .I0(t0on[1]), .I1(VCC_net), .CO(n19987));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1361[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19986));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19985), .O(t0off_15__N_1377[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19984), .O(t0off_15__N_1377[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19984), .I0(t0off[14]), .I1(VCC_net), .CO(n19985));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19983), .O(t0off_15__N_1377[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19983), .I0(t0off[13]), .I1(VCC_net), .CO(n19984));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19982), .O(t0off_15__N_1377[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19982), .I0(t0off[12]), .I1(VCC_net), .CO(n19983));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19981), .O(t0off_15__N_1377[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19981), .I0(t0off[11]), .I1(VCC_net), .CO(n19982));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19980), .O(t0off_15__N_1377[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19980), .I0(t0off[10]), .I1(VCC_net), .CO(n19981));
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19979), .O(t0off_15__N_1377[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n19979), .I0(t0off[9]), .I1(VCC_net), .CO(n19980));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19978), .O(t0off_15__N_1377[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n19978), .I0(t0off[8]), .I1(VCC_net), .CO(n19979));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19977), 
            .O(t0off_15__N_1377[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19977), .I0(t0off[7]), .I1(VCC_net), .CO(n19978));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[15]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[14]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[13]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[12]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[11]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[10]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[9]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[8]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[7]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[6]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[5]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[4]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[3]), 
            .S(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[2]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[1]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[15]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[14]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[13]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[12]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[11]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[10]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[9]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[8]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[7]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[6]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[5]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[4]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[3]), .S(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[2]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[1]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19976), 
            .O(t0off_15__N_1377[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19976), .I0(t0off[6]), .I1(VCC_net), .CO(n19977));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19975), 
            .O(t0off_15__N_1377[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n19975), .I0(t0off[5]), .I1(VCC_net), .CO(n19976));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19974), 
            .O(t0off_15__N_1377[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19974), .I0(t0off[4]), .I1(VCC_net), .CO(n19975));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19973), 
            .O(t0off_15__N_1377[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19973), .I0(t0off[3]), .I1(VCC_net), .CO(n19974));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19972), 
            .O(t0off_15__N_1377[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19972), .I0(t0off[2]), .I1(VCC_net), .CO(n19973));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19971), 
            .O(t0off_15__N_1377[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19971), .I0(t0off[1]), .I1(VCC_net), .CO(n19972));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1377[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19971));
    SB_LUT4 i19778_2_lut_4_lut (.I0(n21728), .I1(n21729), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19778_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11947), .D(t0off_15__N_1377[0]), 
            .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i19757_2_lut_4_lut (.I0(n21728), .I1(n21729), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19757_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[0]), .R(n14972));   // vdc_gen_clk.vhd(30[3] 56[10])
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_675);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_675;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire clk_16MHz_N_675 /* synthesis is_inv_clock=1 */ ;   // zim_main.vhd(13[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=872, LSE_RLINE=872 */ ;   // zim_main.vhd(872[13:20])
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
    SB_LUT4 i20209_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_675));   // zim_main.vhd(872[13:20])
    defparam i20209_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (dds_state, clk_32MHz, DDS_CS1, VCC_net, GND_net, 
            \bit_cnt[0] , \tmp_buf[15] , n15407, DDS_MOSI1, n15405, 
            DDS_SCK1, n16129, n15166, buf_dds1, trig_dds1);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input VCC_net;
    input GND_net;
    output \bit_cnt[0] ;
    output \tmp_buf[15] ;
    input n15407;
    output DDS_MOSI1;
    input n15405;
    output DDS_SCK1;
    input n16129;
    output n15166;
    input [15:0]buf_dds1;
    input trig_dds1;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]dds_state_2__N_858;
    
    wire n9, CS_N_911, n9_adj_1429;
    wire [15:0]tmp_buf_15__N_861;
    
    wire n13041;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n3, n8027;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_906;
    
    wire n10, n21878;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_858[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1429), .D(CS_N_911));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12464_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8027));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12464_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4010_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_906[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4010_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n13041), .D(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n13041), 
            .D(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15407));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15405));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16129));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12768_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15166));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12768_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i4024_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_906[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4024_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1429));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_911));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19770_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19770_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i19629_2_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21878));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19629_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12487_4_lut (.I0(dds_state[0]), .I1(n21878), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_858[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12487_4_lut.LUT_INIT = 16'hc505;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[3]), .R(n15166));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[2]), .R(n15166));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[1]), .R(n15166));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8027), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i4017_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_906[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4017_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19679_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds1), .O(n13041));
    defparam i19679_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds1[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds1[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds1[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds1[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds1[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds1[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds1[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (buf_dds0, dds_state, clk_32MHz, DDS_CS, VCC_net, 
            GND_net, \bit_cnt[0] , \tmp_buf[15] , n15413, DDS_MOSI, 
            n15404, DDS_SCK, n16132, n15161, trig_dds0);
    input [15:0]buf_dds0;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input VCC_net;
    input GND_net;
    output \bit_cnt[0] ;
    output \tmp_buf[15] ;
    input n15413;
    output DDS_MOSI;
    input n15404;
    output DDS_SCK;
    input n16132;
    output n15161;
    input trig_dds0;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [15:0]tmp_buf_15__N_861;
    wire [2:0]dds_state_2__N_858;
    
    wire n9, CS_N_911, n9_adj_1428, n12935, n3, n8065;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_906;
    
    wire n10, n21880;
    
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds0[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds0[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds0[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds0[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_858[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1428), .D(CS_N_911));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12463_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8065));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12463_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3981_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_906[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3981_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12935), .D(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12935), 
            .D(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15413));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15404));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16132));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12763_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15161));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12763_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1428));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_911));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19771_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19771_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[1]), .I2(dds_state[0]), 
            .I3(bit_cnt[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19309_2_lut (.I0(bit_cnt[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21880));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19309_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12485_4_lut (.I0(dds_state[0]), .I1(n21880), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_858[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12485_4_lut.LUT_INIT = 16'hc505;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[3]), .R(n15161));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[2]), .R(n15161));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[1]), .R(n15161));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8065), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i3988_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_906[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3988_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i19680_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds0), .O(n12935));
    defparam i19680_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 i3995_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_906[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3995_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds0[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds0[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds0[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds0[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds0[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds0[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds0[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (\adc_state[0] , clk_32MHz, IAC_DRDY, drdy_sync2, 
            drdy_prev, DTRIG_N_851, GND_net, drdy_falling, \adc_state[1] , 
            eis_adc_trig, n12820, n21136, cmd_rdadctmp, buf_adcdata_iac, 
            n20632, IAC_SCLK, n15397, n20750, VCC_net, n12, IAC_CS, 
            n20766, n20768, n20770, n20772, n20774, n20776, n20778, 
            n20782, n20784, n20786, n20788, n20790, n20792, n20794, 
            n20800, n20802, n20806, n20808, n20812, n20814, n20816, 
            n20818, n20630, acadc_dtrig_i, n20820, n20822, n20824, 
            n20828, n20832, n20834, n20836, n20838, n20840);
    output \adc_state[0] ;
    input clk_32MHz;
    input IAC_DRDY;
    output drdy_sync2;
    output drdy_prev;
    output DTRIG_N_851;
    input GND_net;
    output drdy_falling;
    output \adc_state[1] ;
    input eis_adc_trig;
    output n12820;
    input n21136;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata_iac;
    input n20632;
    output IAC_SCLK;
    input n15397;
    input n20750;
    input VCC_net;
    input n12;
    output IAC_CS;
    input n20766;
    input n20768;
    input n20770;
    input n20772;
    input n20774;
    input n20776;
    input n20778;
    input n20782;
    input n20784;
    input n20786;
    input n20788;
    input n20790;
    input n20792;
    input n20794;
    input n20800;
    input n20802;
    input n20806;
    input n20808;
    input n20812;
    input n20814;
    input n20816;
    input n20818;
    input n20630;
    output acadc_dtrig_i;
    input n20820;
    input n20822;
    input n20824;
    input n20828;
    input n20832;
    input n20834;
    input n20836;
    input n20838;
    input n20840;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]adc_state_2__N_756;
    
    wire n21237, drdy_sync1, n12739, n15083, n17, n12_c, n15501, 
        n15494, n15485, n15497, n15482, n15491, n15500, n15499, 
        n15498, n15496, n15495, n15493, n15492, n15490, n15489, 
        n15488, n15487, n15486, n15484, n15483, n15481, n15480, 
        n15479, n15394;
    wire [7:0]n62;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19917, n19916, n19915, n19914, n19913, n19912, n19911, 
        n21236, n21330, n21338, n21564;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21237), 
            .D(adc_state_2__N_756[0]));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(IAC_DRDY));   // adc_ads127.vhd(96[3] 101[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(96[3] 101[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(96[3] 101[10])
    SB_LUT4 i12689_2_lut (.I0(n12739), .I1(DTRIG_N_851), .I2(GND_net), 
            .I3(GND_net), .O(n15083));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12689_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n12739));
    defparam i1_4_lut.LUT_INIT = 16'h0450;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_851), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_756[2]));   // adc_ads127.vhd(46[4] 90[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19773_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19773_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15657_3_lut (.I0(DTRIG_N_851), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_756[1]));   // adc_ads127.vhd(46[4] 90[13])
    defparam i15657_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_756[1]));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_851), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_756[2]));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_851), 
            .I3(\adc_state[0] ), .O(n12820));   // adc_ads127.vhd(46[4] 90[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_LUT4 i13102_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_iac[23]), .O(n15501));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13102_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13095_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_iac[16]), .O(n15494));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13095_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13086_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_iac[7]), .O(n15485));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13086_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13098_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_iac[19]), .O(n15497));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13098_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13083_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_iac[4]), .O(n15482));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13083_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13092_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_iac[13]), .O(n15491));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13092_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15501));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15500));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15499));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15498));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15497));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15496));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15495));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15494));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15493));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15492));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15491));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15490));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15489));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15488));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15487));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15486));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15485));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15484));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15483));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15482));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15481));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15480));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15479));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13089_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_iac[10]), .O(n15488));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13089_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13101_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_iac[22]), .O(n15500));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13101_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_43 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20632));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13080_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_iac[1]), .O(n15479));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13080_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n15397));   // adc_ads127.vhd(96[3] 101[10])
    SB_LUT4 i13094_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_iac[15]), .O(n15493));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13094_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13087_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_iac[8]), .O(n15486));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13087_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13099_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_iac[20]), .O(n15498));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13099_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13082_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_iac[3]), .O(n15481));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13082_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13093_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_iac[14]), .O(n15492));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13093_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13088_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_iac[9]), .O(n15487));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13088_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13100_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_iac[21]), .O(n15499));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13100_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13081_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_iac[2]), .O(n15480));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13081_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13096_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_iac[17]), .O(n15495));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13096_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20750));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13085_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_iac[6]), .O(n15484));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13085_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE CS_45 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13097_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_iac[18]), .O(n15496));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13097_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13084_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_iac[5]), .O(n15483));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13084_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13091_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_iac[12]), .O(n15490));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13091_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13090_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_iac[11]), .O(n15489));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13090_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12995_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21136), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_iac[0]), .O(n15394));   // adc_ads127.vhd(46[4] 90[13])
    defparam i12995_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19917), .O(n62[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19916), .O(n62[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n19916), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19917));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19915), .O(n62[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n19915), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19916));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19914), .O(n62[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n19914), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19915));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19913), .O(n62[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19913), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19914));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19912), .O(n62[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n19912), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19913));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19911), .O(n62[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n19911), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19912));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20766));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20768));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n62[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20770));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20772));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20774));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20776));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20778));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20782));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20784));   // adc_ads127.vhd(36[3] 91[10])
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19911));
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20786));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20788));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20790));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20792));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20794));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20800));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20802));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20806));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20808));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20812));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20814));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20816));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20818));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20630));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20820));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15394));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20822));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20824));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20828));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20832));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20834));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20836));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20838));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20840));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12739), .D(n62[7]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12739), .D(n62[6]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12739), .D(n62[5]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12739), .D(n62[4]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12739), .D(n62[3]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12739), .D(n62[2]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12739), .D(n62[1]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i1_4_lut_adj_24 (.I0(eis_adc_trig), .I1(DTRIG_N_851), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21236));
    defparam i1_4_lut_adj_24.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n21236), .I2(GND_net), 
            .I3(GND_net), .O(n21237));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i18738_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21330));
    defparam i18738_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18746_4_lut (.I0(bit_cnt[7]), .I1(n21330), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21338));
    defparam i18746_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19540_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21338), .O(n21564));   // adc_ads127.vhd(46[4] 90[13])
    defparam i19540_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21564), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_851), .I3(\adc_state[1] ), .O(adc_state_2__N_756[0]));   // adc_ads127.vhd(46[4] 90[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12739), .D(n62[0]), 
            .R(n15083));   // adc_ads127.vhd(36[3] 91[10])
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (RTD_CS, clk_RTD, RTD_SCLK, \adc_state[2] , n1, 
            GND_net, buf_cfgRTD, adress, n20194, VCC_net, n20196, 
            n20198, n20200, n20202, n20204, n15749, read_buf, n15746, 
            n11904, n15743, n15740, n20472, n20482, n13243, n20484, 
            n20486, n20488, n20490, n20498, n20500, n20502, n20504, 
            n20464, buf_readRTD, n20508, n20510, n20512, n20514, 
            n20516, n20592, n20518, n20520, n20522, n20524, n20526, 
            n20528, n20530, n14783, RTD_DRDY, n20608, n20466, n13072, 
            RTD_SDI, \adress[0] );
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    output \adc_state[2] ;
    output n1;
    input GND_net;
    input [7:0]buf_cfgRTD;
    output [7:0]adress;
    input n20194;
    input VCC_net;
    input n20196;
    input n20198;
    input n20200;
    input n20202;
    input n20204;
    input n15749;
    output [15:0]read_buf;
    input n15746;
    output n11904;
    input n15743;
    input n15740;
    input n20472;
    input n20482;
    output n13243;
    input n20484;
    input n20486;
    input n20488;
    input n20490;
    input n20498;
    input n20500;
    input n20502;
    input n20504;
    input n20464;
    output [15:0]buf_readRTD;
    input n20508;
    input n20510;
    input n20512;
    input n20514;
    input n20516;
    input n20592;
    input n20518;
    input n20520;
    input n20522;
    input n20524;
    input n20526;
    input n20528;
    input n20530;
    output n14783;
    input RTD_DRDY;
    input n20608;
    input n20466;
    output n13072;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(272[9:16])
    
    wire CS_N_1113, n11877, SCLK_N_1112, n8;
    wire [3:0]adc_state_3__N_1020;
    
    wire n11916;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n14773, n13131, n15752;
    wire [7:0]adress_7__N_1068;
    
    wire n3;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7, n7_adj_1416, n7_adj_1417, n7_adj_1418, n7_adj_1419, n7_adj_1420, 
        n13155, n15191, n21113, n14, n7_adj_1421, n20454, n15770, 
        n15767, n15764, n15761, n15758, n15755, n11908;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n3_adj_1422, n20596;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    wire [3:0]n2;
    
    wire n20, n17, n7987, n15349, n20598, mode, n21632, n19146, 
        n6, n21499, n18137, n7_adj_1423, n7957, n21322, n16963, 
        n21599, n21596, n21597, n18215, n7_adj_1424, n12, n10, 
        n11, n9, n11952, n20282, n16123, n21, n16, n7_adj_1425, 
        n16989, n22_adj_1426;
    
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11877), .D(CS_N_1113));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1112));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(clk_RTD), .E(n11916), .D(adc_state_3__N_1020[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n11916), .D(adc_state_3__N_1020[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11916), 
            .D(adc_state_3__N_1020[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n11916), .D(adc_state_3__N_1020[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_3_lut (.I0(adc_state[3]), .I1(\adc_state[2] ), .I2(adc_state[0]), 
            .I3(GND_net), .O(n1));
    defparam i2_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 i16755_4_lut (.I0(cfg_buf[7]), .I1(n14773), .I2(n13131), .I3(buf_cfgRTD[7]), 
            .O(n15752));
    defparam i16755_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1068[7]), 
            .I1(adress[6]), .I2(adc_state[1]), .I3(adc_state[0]), .O(n3));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1416));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12366_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14773));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12366_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n20194));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1417));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1418));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1419));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1420));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n20196));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n20198));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n20200));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n20202));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12797_2_lut (.I0(n13155), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15191));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12797_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n20204));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i30_4_lut (.I0(n21113), .I1(n14), .I2(\adc_state[2] ), .I3(adc_state[3]), 
            .O(n13155));
    defparam i30_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1421));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), 
            .I2(adc_state[0]), .I3(adc_state[3]), .O(n20454));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'ha800;
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15770));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15767));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15764));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15761));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n15758));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15755));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15752));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15749));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n11908));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'heb04;
    SB_LUT4 i1_4_lut_4_lut (.I0(adress_7__N_1068[7]), .I1(adc_state[1]), 
            .I2(adc_state[0]), .I3(adress_c[7]), .O(n3_adj_1422));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hdf13;
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15746));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_9 (.I0(adc_state[3]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n11904));
    defparam i1_4_lut_4_lut_adj_9.LUT_INIT = 16'ha880;
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15743));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15740));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20472));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20482));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n13243), 
            .I3(n1), .O(n20596));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20484));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20486));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20596));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20488));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20490));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20498));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20500));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17376_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17376_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20502));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20504));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20464));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i36_3_lut (.I0(n1), .I1(adc_state[3]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n20));
    defparam i36_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i35_4_lut (.I0(n17), .I1(n20), .I2(\adc_state[2] ), .I3(n7987), 
            .O(n15349));
    defparam i35_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20508));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19682_3_lut_3_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(GND_net), .O(n11877));
    defparam i19682_3_lut_3_lut.LUT_INIT = 16'hc1c1;
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20510));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20512));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20514));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20516));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20592));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20598));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20518));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20520));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20522));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20524));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20526));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20528));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19421_4_lut (.I0(mode), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n21632));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19421_4_lut.LUT_INIT = 16'hf3bf;
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20530));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n21632), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(n19146), .O(adc_state_3__N_1020[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h3035;
    SB_LUT4 i19644_4_lut (.I0(mode), .I1(n6), .I2(adc_state[3]), .I3(n19146), 
            .O(n21499));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19644_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i19_4_lut (.I0(n21499), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(n7987), .O(adc_state_3__N_1020[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n18137), .I2(GND_net), .I3(GND_net), 
            .O(n19146));   // adc_max31865.vhd(30[8:12])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), 
            .I2(adc_state[0]), .I3(n19146), .O(n7_adj_1423));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut.LUT_INIT = 16'hded6;
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7_adj_1423), .I1(n7957), 
            .I2(adc_state[3]), .I3(adc_state[0]), .O(adc_state_3__N_1020[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i2_3_lut_adj_10 (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n18137));
    defparam i2_3_lut_adj_10.LUT_INIT = 16'h8080;
    SB_LUT4 i2_3_lut_adj_11 (.I0(n21322), .I1(adc_state[0]), .I2(n16963), 
            .I3(GND_net), .O(n11916));
    defparam i2_3_lut_adj_11.LUT_INIT = 16'hfbfb;
    SB_LUT4 i19721_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n8));
    defparam i19721_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i12390_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14783));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12390_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19354_3_lut (.I0(bit_cnt[3]), .I1(n18137), .I2(adc_state[1]), 
            .I3(GND_net), .O(n21599));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19354_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i19380_3_lut (.I0(bit_cnt[3]), .I1(adc_state[1]), .I2(n18137), 
            .I3(GND_net), .O(n21596));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19380_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i19483_4_lut (.I0(bit_cnt[3]), .I1(mode), .I2(n18137), .I3(adc_state[1]), 
            .O(n21597));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19483_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i14_4_lut (.I0(n21599), .I1(n7987), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n18215));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i14_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i7_4_lut (.I0(n21597), .I1(n21596), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1424));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i7_4_lut.LUT_INIT = 16'h0acf;
    SB_LUT4 i18730_2_lut_3_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n21322));
    defparam i18730_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i15_3_lut (.I0(n7_adj_1424), .I1(n18215), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1020[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i11765_2_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_max31865.vhd(39[4] 147[13])
    defparam i11765_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(SCLK_N_1112));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(cfg_buf[0]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11), .I2(n10), .I3(n12), .O(adress_7__N_1068[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_12 (.I0(adress_7__N_1068[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16963));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_12.LUT_INIT = 16'hbbbb;
    SB_LUT4 i18649_2_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n7987));
    defparam i18649_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5560_2_lut (.I0(adc_state[1]), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n7957));   // adc_max31865.vhd(39[4] 147[13])
    defparam i5560_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19767_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n11952));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19767_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_LUT4 i12_4_lut_adj_13 (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11904), 
            .I3(\adc_state[2] ), .O(n20598));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut_adj_13.LUT_INIT = 16'h0aca;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n20282));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16123));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20608));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i37_4_lut_4_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(n1), .O(n17));
    defparam i37_4_lut_4_lut.LUT_INIT = 16'h0434;
    SB_LUT4 i1_4_lut_adj_14 (.I0(adress_7__N_1068[7]), .I1(n7957), .I2(RTD_DRDY), 
            .I3(adc_state[0]), .O(n21));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'hdccc;
    SB_LUT4 i1_4_lut_adj_15 (.I0(mode), .I1(n21), .I2(\adc_state[2] ), 
            .I3(adc_state[3]), .O(n16));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_15.LUT_INIT = 16'h0a88;
    SB_LUT4 i1_4_lut_adj_16 (.I0(n16), .I1(adress_7__N_1068[7]), .I2(n21322), 
            .I3(adc_state[0]), .O(n20282));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'haeaa;
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20466));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i13724_4_lut_4_lut (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16123));
    defparam i13724_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_17 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15755));
    defparam i1_4_lut_4_lut_adj_17.LUT_INIT = 16'hd580;
    SB_LUT4 i31_3_lut_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n14));
    defparam i31_3_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_LUT4 i1_4_lut_4_lut_adj_18 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[5]), 
            .I3(cfg_buf[5]), .O(n15758));
    defparam i1_4_lut_4_lut_adj_18.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_19 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15761));
    defparam i1_4_lut_4_lut_adj_19.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_20 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[3]), 
            .I3(cfg_buf[3]), .O(n15764));
    defparam i1_4_lut_4_lut_adj_20.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_21 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n15767));
    defparam i1_4_lut_4_lut_adj_21.LUT_INIT = 16'hd580;
    SB_DFFESR bit_cnt_3914__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11952), 
            .D(n2[3]), .R(n15349));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3914__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11952), 
            .D(n2[2]), .R(n15349));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3914__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11952), 
            .D(n2[1]), .R(n15349));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i1_4_lut_4_lut_adj_22 (.I0(\adc_state[2] ), .I1(adc_state[3]), 
            .I2(adc_state[1]), .I3(adc_state[0]), .O(n13243));
    defparam i1_4_lut_4_lut_adj_22.LUT_INIT = 16'h8c85;
    SB_LUT4 i14577_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state[0]), .O(n7_adj_1425));   // adc_max31865.vhd(24[8:17])
    defparam i14577_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15686_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n16989));
    defparam i15686_4_lut.LUT_INIT = 16'hcaaa;
    SB_LUT4 i17374_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17374_1_lut.LUT_INIT = 16'h5555;
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13155), .D(n7_adj_1421), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13155), .D(n7_adj_1420), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13155), .D(n7_adj_1419), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13155), .D(n7_adj_1418), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13155), .D(n7_adj_1417), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13155), .D(n7_adj_1416), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13155), .D(n7), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13072), .D(n3), 
            .R(n20454));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(n13131), .I1(n14773), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15770));
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hd580;
    SB_LUT4 i19760_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(n16963), .O(CS_N_1113));
    defparam i19760_4_lut_4_lut.LUT_INIT = 16'h0757;
    SB_LUT4 i35_4_lut_4_lut (.I0(adc_state[0]), .I1(adress_7__N_1068[7]), 
            .I2(adc_state[1]), .I3(RTD_DRDY), .O(n22_adj_1426));
    defparam i35_4_lut_4_lut.LUT_INIT = 16'hadaf;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[0]), .I1(adress_7__N_1068[7]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n21113));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0d0d;
    SB_LUT4 i22_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n7987), .I2(adc_state[3]), 
            .I3(n21113), .O(n13131));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_LUT4 i36_4_lut_4_lut (.I0(\adc_state[2] ), .I1(n7987), .I2(adc_state[3]), 
            .I3(n22_adj_1426), .O(n13072));
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h8580;
    SB_DFFESR bit_cnt_3914__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11952), 
            .D(n2[0]), .R(n15349));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i17383_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n2[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17383_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i17390_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n2[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17390_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11908), .D(n16989), 
            .R(n20454));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13155), .D(n7_adj_1425), 
            .R(n15191));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13072), .D(n3_adj_1422), 
            .R(n20454));   // adc_max31865.vhd(38[3] 148[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (n20656, VCC_net, cmd_rdadctmp, clk_32MHz, \adc_state[0] , 
            n21128, buf_adcdata_vac, DTRIG_N_851, \adc_state[1] , VAC_DRDY, 
            drdy_sync2, drdy_prev, GND_net, drdy_falling, eis_adc_trig, 
            n20660, n20662, n12890, n20636, VAC_SCLK, n15402, n20634, 
            acadc_dtrig_v, n20906, n20904, n20752, n12, VAC_CS, 
            n20902, n20896, n20734, n20736, n20738, n20894, n20892, 
            n20890, n20888, n20886, n20884, n20882, n20880, n20878, 
            n20876, n20874, n20866, n20842, n20844, n20852, n20854, 
            n20856, n20858, n20860, n20862, n20864);
    input n20656;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input clk_32MHz;
    output \adc_state[0] ;
    input n21128;
    output [23:0]buf_adcdata_vac;
    output DTRIG_N_851;
    output \adc_state[1] ;
    input VAC_DRDY;
    output drdy_sync2;
    output drdy_prev;
    input GND_net;
    output drdy_falling;
    input eis_adc_trig;
    input n20660;
    input n20662;
    output n12890;
    input n20636;
    output VAC_SCLK;
    input n15402;
    input n20634;
    output acadc_dtrig_v;
    input n20906;
    input n20904;
    input n20752;
    input n12;
    output VAC_CS;
    input n20902;
    input n20896;
    input n20734;
    input n20736;
    input n20738;
    input n20894;
    input n20892;
    input n20890;
    input n20888;
    input n20886;
    input n20884;
    input n20882;
    input n20880;
    input n20878;
    input n20876;
    input n20874;
    input n20866;
    input n20842;
    input n20844;
    input n20852;
    input n20854;
    input n20856;
    input n20858;
    input n20860;
    input n20862;
    input n20864;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire n15510, n15503, n15524, n21577;
    wire [2:0]adc_state_2__N_756;
    
    wire n21235, drdy_sync1, n15507, n15522, n17, n12_c, n15506, 
        n12835, n15121, n15513, n15512, n15399, n15523, n15521, 
        n15520, n15519, n15518, n15517, n15516, n15515, n15514, 
        n15511, n15509, n15508, n15505, n15504, n15502;
    wire [7:0]n62;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19924, n19923, n19922, n19921, n19920, n19919, n19918, 
        n21234, n21326, n21336;
    
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20656));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13111_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata_vac[9]), .O(n15510));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13111_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13104_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata_vac[2]), .O(n15503));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13104_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i16626_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata_vac[23]), .O(n15524));   // adc_ads127.vhd(46[4] 90[13])
    defparam i16626_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21577), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_851), .I3(\adc_state[1] ), .O(adc_state_2__N_756[0]));   // adc_ads127.vhd(46[4] 90[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21235), 
            .D(adc_state_2__N_756[0]));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(VAC_DRDY));   // adc_ads127.vhd(96[3] 101[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(96[3] 101[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(96[3] 101[10])
    SB_LUT4 i13108_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata_vac[6]), .O(n15507));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13108_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13123_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata_vac[21]), .O(n15522));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13123_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_851), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_756[2]));   // adc_ads127.vhd(46[4] 90[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19775_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19775_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15654_3_lut (.I0(DTRIG_N_851), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_756[1]));   // adc_ads127.vhd(46[4] 90[13])
    defparam i15654_3_lut.LUT_INIT = 16'h2323;
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20660));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20662));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13107_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata_vac[5]), .O(n15506));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13107_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12727_2_lut (.I0(n12835), .I1(DTRIG_N_851), .I2(GND_net), 
            .I3(GND_net), .O(n15121));   // adc_ads127.vhd(36[3] 91[10])
    defparam i12727_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(drdy_falling), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n12835));
    defparam i1_4_lut.LUT_INIT = 16'h0450;
    SB_LUT4 i13114_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata_vac[12]), .O(n15513));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13114_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13113_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata_vac[11]), .O(n15512));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13113_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13000_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata_vac[0]), .O(n15399));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13000_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_756[1]));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_851), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_756[2]));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15524));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15523));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15522));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15521));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15520));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15519));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15518));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15517));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15516));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15515));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15514));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15513));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15512));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15511));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15510));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15509));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15508));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15507));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15506));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15505));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15504));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15503));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15502));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(\adc_state[1] ), .I2(DTRIG_N_851), 
            .I3(\adc_state[0] ), .O(n12890));   // adc_ads127.vhd(46[4] 90[13])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h0c08;
    SB_DFF SCLK_43 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20636));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n15402));   // adc_ads127.vhd(96[3] 101[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20634));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15399));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n20906));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n20904));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20752));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE CS_45 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .D(n20902));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .D(n20896));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .D(n20734));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19924), .O(n62[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19923), .O(n62[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n19923), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19924));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19922), .O(n62[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n19922), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19923));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19921), .O(n62[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n19921), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19922));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19920), .O(n62[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19920), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19921));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19919), .O(n62[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n19919), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19920));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19918), .O(n62[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n19918), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19919));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n62[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19918));
    SB_DFF cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .D(n20736));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20738));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20894));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20892));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20890));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20888));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20886));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20884));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20882));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20880));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20878));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20876));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20874));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20866));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20842));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20844));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20852));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20854));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20856));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20858));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20860));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20862));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .D(n20864));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12835), .D(n62[7]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12835), .D(n62[6]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12835), .D(n62[5]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12835), .D(n62[4]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12835), .D(n62[3]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12835), .D(n62[2]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12835), .D(n62[1]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i1_4_lut_adj_8 (.I0(eis_adc_trig), .I1(DTRIG_N_851), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21234));
    defparam i1_4_lut_adj_8.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n21234), .I2(GND_net), 
            .I3(GND_net), .O(n21235));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i18734_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21326));
    defparam i18734_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18744_4_lut (.I0(bit_cnt[7]), .I1(n21326), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21336));
    defparam i18744_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19582_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21336), .O(n21577));   // adc_ads127.vhd(46[4] 90[13])
    defparam i19582_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i13122_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata_vac[20]), .O(n15521));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13122_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13121_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata_vac[19]), .O(n15520));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13121_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13120_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata_vac[18]), .O(n15519));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13120_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13119_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata_vac[17]), .O(n15518));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13119_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i14789_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata_vac[16]), .O(n15517));   // adc_ads127.vhd(46[4] 90[13])
    defparam i14789_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13109_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata_vac[7]), .O(n15508));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13109_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13124_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata_vac[22]), .O(n15523));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13124_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13106_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata_vac[4]), .O(n15505));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13106_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12835), .D(n62[0]), 
            .R(n15121));   // adc_ads127.vhd(36[3] 91[10])
    SB_LUT4 i13115_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata_vac[13]), .O(n15514));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13115_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13112_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata_vac[10]), .O(n15511));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13112_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13103_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata_vac[1]), .O(n15502));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13103_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i14768_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata_vac[15]), .O(n15516));   // adc_ads127.vhd(46[4] 90[13])
    defparam i14768_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13110_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata_vac[8]), .O(n15509));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13110_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13105_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata_vac[3]), .O(n15504));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13105_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13116_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n21128), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata_vac[14]), .O(n15515));   // adc_ads127.vhd(46[4] 90[13])
    defparam i13116_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
