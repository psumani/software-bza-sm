// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri May 22 16:13:18 2026
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
    
    wire VCC_net, n21534, cs_sync1, cs_sync2, cs_falling_pend;
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
    
    wire n13390, n5, clk_RTD_N_709, n9, wdtick_flag_N_310, n26, 
        n14991, n19862, n12, n18, dds0_mclk_N_702, n15030, n20488, 
        iac_raw_buf_N_730, iac_raw_buf_N_728, n365, n366, n367, n368, 
        n369, n370, n371, n372, n373, n376, n377, n378, n379, 
        n380, n381, n382, n383, n384, n385, n386, n387, n388, 
        n389, n390, n391, n426, n427, n428, n429, n430, n431, 
        n432, n433, n434, n435, n436, n437, n438, n439, n440, 
        n441, n4, n2, n1, n19894, n20694, n20696, eis_adc_trig_N_711;
    wire [2:0]eis_state_2__N_169;
    
    wire n16, n21581, n7, cs_mask_cnt_1__N_378, n13, cs_falling_pend_N_696, 
        n54, THERMOSTAT_N_453;
    wire [3:0]comm_state_3__N_422;
    wire [2:0]comm_state_3__N_415;
    
    wire n21396, n20698, n15;
    wire [2:0]comm_index_2__N_430;
    wire [3:0]comm_state_3__N_399;
    
    wire n20866, n19893, n19892, n20484;
    wire [3:0]comm_state_3__N_11;
    
    wire n20186, n20188, n20190, n20192, n20194, n20552, n20184;
    wire [8:0]data_index_8__N_213;
    wire [15:0]data_idxvec_15__N_222;
    
    wire n21580, n4_adj_1439, n24;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, n4_adj_1440, DTRIG_N_851, n13784;
    wire [2:0]adc_state_adj_1662;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1663;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1475, drdy_prev_adj_1476, DTRIG_N_851_adj_1477, 
        n20512, n20518;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1684;   // dds_ad9837.vhd(25[9:16])
    
    wire n12_adj_1478, n20520;
    wire [2:0]dds_state_adj_1686;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf_adj_1687;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1688;   // dds_ad9837.vhd(25[9:16])
    
    wire n48, n20522, sclk_sync1, sclk_sync2, n20524, n20526, n19851, 
        n4_adj_1484, n21138, n19891, n13_adj_1485, n6180;
    wire [3:0]adc_state_adj_1706;   // adc_max31865.vhd(24[8:17])
    wire [7:0]adress;   // adc_max31865.vhd(27[8:14])
    wire [15:0]read_buf;   // adc_max31865.vhd(32[8:16])
    
    wire n19890, n30, n20528, n20530, n20532, n20534, n20536, 
        n20538, n29, n20540, n20542, n20352, n20354, n20356, n20358, 
        n20360, n6428, n21167, n21527, n21526;
    wire [3:0]adc_state_adj_1709;   // adc_ads1252u.vhd(31[8:17])
    wire [23:0]cmd_rdadctmp_adj_1710;   // adc_ads1252u.vhd(32[8:20])
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n21338, n20690, n19889, n20362, n20364, n20366, n20368, 
        n20370, n20372, n20374, n20376, n20378, n20380, n20382, 
        n20384, n20386, n20388, n20250, n20390, n20392, n20544, 
        n20554, n20556, n21536, n20558, n20560, n20562, n19888, 
        n19861, n20564, n20566, n20568, n20570, n20572, n20206, 
        n20574, n13869, n20882, n20842, n18179, n20576, n21385, 
        n20578, n20580, n20582, n30_adj_1510, n11, n45, n44, n43, 
        n42, n41, n40, n39, n38, n22839, n10, n15_adj_1511, 
        n14, n15023, n20584, n145, n144, n143, n142, n141, n140, 
        n139, n138, n137, n136, n135, n134, n133, n132, n131, 
        n130, n129, n128, n127, n126, n125, n124, n123, n122, 
        n121, n120, n119, n118, n6599, n19, n22836, n19_adj_1512, 
        n16_adj_1513, n21, n18_adj_1514, n22, n19_adj_1515, n6917, 
        n20834, n20586, n30_adj_1516, n22830, n19848, n22824, n22821, 
        n40_adj_1517, n16912, n12484, n22818, n22815, n19860, n16920, 
        n21200, n22812, n22809, n20588, n21917, n22806, n19856, 
        n19859, n16150, n21441, n11647, n22803, n19887, n20480, 
        n20216, n19886, n19885, n21515, n30_adj_1518, n19884, n20780, 
        n19883, n22800, n22797, n5978, n21420, n5967, n5966, n5964, 
        n16128, n20420, n16125, n9_adj_1519, n6148, n22794, n13873, 
        n13877, n13881, n13885, n13889, n7_adj_1520, n8, n21533, 
        n14_adj_1521, n22788, n22785, n20590, n22782, n20592, n22776, 
        n22770, n19852, n19882, n21388, n19881, n21394, n15520, 
        n15519, n15518, n15517, n15516, n15515, n15514, n15513, 
        n15512, n22767, n21240, n15511, n15510, n15509, n15508, 
        n15507, n15506, n15505, n15504, n15503, n15502, n15501, 
        n15500, n15499, n15498, n15497, n15496, n15495, n15494, 
        n15493, n15492, n15491, n15490, n15489, n15488, n15487, 
        n15486, n15485, n15484, n15483, n15482, n15481, n15480, 
        n15479, n15478, n15477, n15476, n15475, n15474, n21382, 
        n19880, n21459, n22764, n15473, n15472, n15471, n15470, 
        n15469, n15468, n15467, n15466, n15465, n15464, n15463, 
        n15462, n15461, n15460, n20476, n20054, n22761, n19879, 
        n22758, n22752, n22749, n22746, n22737, n17797, n17798, 
        n20664, n17800, n20472, n14779, n17805, n14236, n22734, 
        n22731, n22728, n22725, n22722, n22719, n21892, n22716, 
        n22713, n22710, n22707, n22704, n22701, n22698, n22695, 
        n22692, n22689, n20041, n15459, n15458, n15457, n15456, 
        n15455, n15454, n15453, n15452, n15451, n15450, n15449, 
        n15448, n15447, n15446, n15445, n15444, n15443, n15442, 
        n15441, n15440, n15439, n15438, n15437, n15436, n15435, 
        n15434, n15433, n15432, n15431, n15430, n15429, n21380, 
        n15428, n15427, n15426, n15425, n15424, n15423, n15422, 
        n15421, n15420, n15419, n15418, n15417, n15416, n15415, 
        n15414, n15413, n15412, n15411, n15410, n15409, n15408, 
        n15407, n15406, n15405, n15404, n15403, n15402, n15401, 
        n15400, n15398, n14_adj_1522, n14_adj_1523, n22686, n22683, 
        n14_adj_1524, n14_adj_1525, n14_adj_1526, n14_adj_1527, n14_adj_1528, 
        n14_adj_1529, n24_adj_1530, n22680, n22677, n59, n42_adj_1531, 
        n28, n20468, n22168, n21518, n22674, n19878, n22671, n11_adj_1532, 
        n12_adj_1533, n10_adj_1534, n21460, n22668, n22665, n23, 
        n21699, n21575, n7_adj_1535, n8_adj_1536, n7_adj_1537, n8_adj_1538, 
        n22662, n7_adj_1539, n8_adj_1540, n22659, n7_adj_1541, n8_adj_1542, 
        n7_adj_1543, n8_adj_1544, n22656, n7_adj_1545, n8_adj_1546, 
        n22653, n7_adj_1547, n8_adj_1548, n14240, n14244, n14248, 
        n14252, n14256, n21155, n14260, n14264, n14268, n14272, 
        n21455, n14276, n14280, n14284, n14288, n14292, n21877, 
        n14296, n14300, n14304, n22650, n21876, n14308, n14312, 
        n14316, n14320, n14324, n14328, n14332, n14336, n21145, 
        n14340, n14344, n14348, n14352, n22647, n14356, n14360, 
        n14364, n14368, n14372, n14376, n14380, n14384, n14388, 
        n14392, n14396, n14400, n14_adj_1549, n14_adj_1550, n14_adj_1551, 
        n14_adj_1552, n20670, n17807, n14803, n21521, n22644, n14436, 
        n22641, n4_adj_1553, n6, n7_adj_1554, n21452, n22638, n15396, 
        n14472, n21538, n14_adj_1555, n22635, n19877, n14_adj_1556, 
        n20464, n14_adj_1557, n19876, n4_adj_1558, n4_adj_1559, n22632, 
        n4_adj_1560, n22629, n4_adj_1561, n4_adj_1562, n4_adj_1563, 
        n22626, n20668, n19857, n20638, n13767, n20640, n22623, 
        n21574, n21544, n20198, n21696, n21867, n19_adj_1564, n21543, 
        n15393, n21541, n1_adj_1565, n20, n22620, n22617, n12612, 
        n12601, n50, n20222, n12431, n10535, n22614, n12579, n21540, 
        n22611, n16092, n21349, n11_adj_1566, n12573, n16087, n12401, 
        n20236, n22608, n15072, n20238, n20666, n22605, n20240, 
        n15157, n20242, n7_adj_1567, n20244, n21847, n20246, n12180, 
        n20460, n16063, n20252, n22602, n22599, n10854, n49, n20254, 
        n21135, n22596, n22593, n19875, n15058, n12660, n19855, 
        n20422, n20424, n20456, n20426, n47, n20428, n15391, n22590, 
        n20452, n20430, n22587, n21322, n20432, n8_adj_1568, n4_adj_1569, 
        n14990, n22584, n6_adj_1570, n22581, n14930, n21829, n20256, 
        n21101, n12_adj_1571, n13088, n22578, n20220, n22575, n4_adj_1572, 
        n20258, n20260, n20228, n22572, n22569, n21823, n20234, 
        n20218, n28_adj_1573, n27, n22566, n22563, n20798, n22560, 
        n20_adj_1574, n20800, n20038, n20802, n21446, n20804, n22557, 
        n21391, n20037, n20036, n20035, n20034, n20806, n20636, 
        n20033, n22554, n20808, n22551, n12_adj_1575, n20032, n20031, 
        n20030, n20029, n20028, n20810, n20027, n15010, n22548, 
        n20026, n20025, n1_adj_1576, n20510, n20814, n20024, n20023, 
        n20022, n12357, n21445, n22545, n20816, n20932, n16_adj_1577, 
        n20506, n14_adj_1578, n20330, n20818, n20021, n12_adj_1579, 
        n19_adj_1580, n22_adj_1581, n30_adj_1582, n22542, n21143, 
        n30_adj_1583, n12_adj_1584, n22865, n21157, n20820, n9354, 
        n20020, n20019, n21_adj_1585, n20822, n14_adj_1586, n20502, 
        n20824, n21814, n11899, n19_adj_1587, n22_adj_1588, n30_adj_1589, 
        n20826, n9210, n20828, n19_adj_1590, n22_adj_1591, n30_adj_1592, 
        n11968, n19854, n19874, n20836, n15051, n20018, n20906, 
        n19_adj_1593, n22_adj_1594, n20017, n30_adj_1595, n20016, 
        n21184, n12884, n21442, n8984, n20015, n20838, n19_adj_1596, 
        n22_adj_1597, n30_adj_1598, n20051, n22_adj_1599, n20844, 
        n12167, n19465, n20848, n20014, n19_adj_1600, n22_adj_1601, 
        n30_adj_1602, n19474, n20850, n12184, n20013, n12_adj_1603, 
        n19485, n25, n20012, n20852, n21440, n19_adj_1604, n22_adj_1605, 
        n30_adj_1606, n20854, n21219, n19853, n21439, n15044, n21437, 
        n16906, n19873, n21244, n12226, n19858, n20856, n23_adj_1607, 
        n13_adj_1608, n20011, n20858, n16_adj_1609, n19_adj_1610, 
        n26_adj_1611, n30_adj_1612, n12266, n21436, n20860, n19872, 
        n16_adj_1613, n19_adj_1614, n26_adj_1615, n30_adj_1616, n12125, 
        n16900, n9_adj_1617, n20868, n20010, n20408, n12118, n20009, 
        n10660, n20008, n46, n21187, n21116, n16_adj_1618, n21516, 
        n19_adj_1619, n21408, n26_adj_1620, n30_adj_1621, n20870, 
        n21397, n20007, n21263, n20006, n20005, n20498, n19871, 
        n21207, n20796, n20872, n12095, n21241, n16_adj_1622, n19_adj_1623, 
        n26_adj_1624, n30_adj_1625, n21197, n15037, n12082, n10690, 
        n14974, n19870, n21169, n17, n20_adj_1626, n20874, n21090, 
        n20406, n16_adj_1627, n19_adj_1628, n26_adj_1629, n12762, 
        n20884, n19869, n19868, n20886, n21622, n20888, n16_adj_1630, 
        n19_adj_1631, n21556, n26_adj_1632, n21554, n30_adj_1633, 
        n12505, n15389, n15388, n20338, n20890, n12485, n15387, 
        n15386, n15385, n17839, n11937, n17826, n20892, n16_adj_1634, 
        n19_adj_1635, n26_adj_1636, n30_adj_1637, n20894, n19867, 
        n20896, n20898, n23_adj_1638, n26_adj_1639, n12012, n44_adj_1640, 
        n20516, n12022, n19907, n12021, n15162, n12000, n12001, 
        n20908, n23_adj_1641, n30_adj_1642, n19906, n12712, n21431, 
        n15384, n20910, n21453, n23_adj_1643, n19850, n19847, n20778, 
        n19866, n20912, n20214, n20914, n7_adj_1644, n16_adj_1645, 
        n17_adj_1646, n19_adj_1647, n20_adj_1648, n23_adj_1649, n30_adj_1650, 
        n12690, n20916, n21430, n21428, n21427, n21424, n19865, 
        n20660, n21421, n23_adj_1651, n26_adj_1652, n30_adj_1653, 
        n11759, n21409, n21406, n30_adj_1654, n21378, n20918, n26_adj_1655, 
        n30_adj_1656, n20920, n19905, n11903, n19904, n12_adj_1657, 
        n11653, n45_adj_1658, n21114, n20922, n21423, n21383, n21395, 
        n19903, n20924, n19902, n15383, n20926, n15382, n10961, 
        n12115, n19901, n19849, n21584, n19864, n10790, n19900, 
        n19899, n22_adj_1659, n19898, n19897, n20934, n15381, n21401, 
        n12359, n19896, n19895, n20098, n30_adj_1660, n19863, n20350, 
        n20936, n20938, n21318, n10977;
    
    assign VAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(48[3:11])
    assign IAC_CLK = VAC_CLK;   // zim_main.vhd(65[3:10])
    assign IAC_MOSI = ICE_GPMO_1;   // zim_main.vhd(68[3:11])
    assign AC_ADC_SYNC = ICE_IOB_96;   // zim_main.vhd(114[3:13])
    assign STAT_COMM = ICE_GPMO_2;   // zim_main.vhd(122[3:13])
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i15460_2_lut (.I0(clk_cnt[0]), .I1(clk_cnt[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17839));
    defparam i15460_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[0]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[0]), .O(n16_adj_1577));
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFN dds0_mclk_320 (.Q(dds0_mclk), .C(clk_16MHz), .D(dds0_mclk_N_702));   // zim_main.vhd(433[3] 439[10])
    SB_LUT4 i9_4_lut (.I0(acadc_skipCount[3]), .I1(n18_adj_1514), .I2(n16), 
            .I3(acadc_skipcnt[3]), .O(n24));
    defparam i9_4_lut.LUT_INIT = 16'hfdfe;
    SB_DFFSR reset_int_328 (.Q(reset_int), .C(clk_32MHz), .D(n6599), .R(cs_mask_cnt_1__N_378));   // zim_main.vhd(549[3] 555[10])
    SB_LUT4 i2_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n10977));
    defparam i2_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i11881_3_lut (.I0(buf_data_vac[22]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14280));   // zim_main.vhd(577[4] 864[13])
    defparam i11881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11877_3_lut (.I0(buf_data_vac[24]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14276));   // zim_main.vhd(577[4] 864[13])
    defparam i11877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13_4_lut (.I0(n19_adj_1515), .I1(n21), .I2(n20_adj_1574), 
            .I3(n22), .O(n28_adj_1573));
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 add_62_4_lut (.I0(ICE_GPMO_1), .I1(data_count[2]), .I2(ICE_GPMO_1), 
            .I3(n19848), .O(n371)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_63_13 (.CI(n19865), .I0(data_cntvec[11]), .I1(ICE_GPMO_1), 
            .CO(n19866));
    SB_DFF cs_sync1_329 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zim_main.vhd(560[3] 865[10])
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
    SB_DFF cs_sync2_330 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zim_main.vhd(560[3] 865[10])
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
    SB_DFF cs_prev_331 (.Q(comm_state_3__N_422[1]), .C(clk_32MHz), .D(cs_sync2));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut (.I0(acadc_skipCount[9]), .I1(n24), .I2(n16_adj_1577), 
            .I3(acadc_skipcnt[9]), .O(n27));
    defparam i12_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 add_146_10_lut (.I0(n14_adj_1524), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19900), .O(data_idxvec_15__N_222[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_47 (.I0(n27), .I1(acadc_skipcnt[6]), .I2(n28_adj_1573), 
            .I3(acadc_skipCount[6]), .O(n21167));
    defparam i1_4_lut_adj_47.LUT_INIT = 16'h0401;
    SB_LUT4 i11873_3_lut (.I0(buf_data_vac[26]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14272));   // zim_main.vhd(577[4] 864[13])
    defparam i11873_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_146_10 (.CI(n19900), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19901));
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n21116), 
            .D(comm_state_3__N_11[0]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_213[0]));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i8_4_lut (.I0(data_cntvec[9]), .I1(data_cntvec[15]), .I2(req_data_cnt[9]), 
            .I3(req_data_cnt[15]), .O(n24_adj_1530));   // zim_main.vhd(505[9:35])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1599));   // zim_main.vhd(505[9:35])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[0]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF clk_RTD_313 (.Q(clk_RTD), .C(clk_16MHz), .D(clk_RTD_N_709));   // zim_main.vhd(382[3] 389[10])
    SB_LUT4 add_146_9_lut (.I0(n14_adj_1525), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19899), .O(data_idxvec_15__N_222[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i11869_3_lut (.I0(buf_data_vac[28]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14268));   // zim_main.vhd(577[4] 864[13])
    defparam i11869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_adj_48 (.I0(comm_state[1]), .I1(n10854), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n10961));   // zim_main.vhd(577[4] 864[13])
    defparam i2_3_lut_adj_48.LUT_INIT = 16'hefef;
    SB_LUT4 i7_4_lut (.I0(data_cntvec[11]), .I1(data_cntvec[14]), .I2(req_data_cnt[11]), 
            .I3(req_data_cnt[14]), .O(n23_adj_1607));   // zim_main.vhd(505[9:35])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12657_2_lut (.I0(n12431), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15051));   // zim_main.vhd(560[3] 865[10])
    defparam i12657_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut (.I0(n10854), .I1(n19485), .I2(comm_state[1]), .I3(n20041), 
            .O(n12_adj_1579));
    defparam i19_4_lut.LUT_INIT = 16'h05c5;
    SB_LUT4 i5_4_lut (.I0(data_cntvec[10]), .I1(data_cntvec[12]), .I2(req_data_cnt[10]), 
            .I3(req_data_cnt[12]), .O(n21_adj_1585));   // zim_main.vhd(505[9:35])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut (.I0(data_cntvec[3]), .I1(data_cntvec[5]), .I2(req_data_cnt[3]), 
            .I3(req_data_cnt[5]), .O(n20_adj_1626));   // zim_main.vhd(505[9:35])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
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
    SB_LUT4 add_63_12_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[10]), .I2(ICE_GPMO_1), 
            .I3(n19864), .O(n381)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut (.I0(data_cntvec[1]), .I1(data_cntvec[4]), .I2(req_data_cnt[1]), 
            .I3(req_data_cnt[4]), .O(n18));   // zim_main.vhd(505[9:35])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_3_lut (.I0(n12_adj_1579), .I1(n21145), .I2(n21207), .I3(ICE_GPMO_1), 
            .O(n12431));
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut (.I0(data_cntvec[8]), .I1(data_cntvec[13]), .I2(req_data_cnt[8]), 
            .I3(req_data_cnt[13]), .O(n19_adj_1564));   // zim_main.vhd(505[9:35])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_CARRY add_146_9 (.CI(n19899), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19900));
    SB_LUT4 i1_4_lut_adj_49 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), .I2(req_data_cnt[0]), 
            .I3(req_data_cnt[6]), .O(n17));   // zim_main.vhd(505[9:35])
    defparam i1_4_lut_adj_49.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_50 (.I0(cmd_rdadctmp_adj_1663[30]), .I1(cmd_rdadctmp_adj_1663[29]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20690));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_50.LUT_INIT = 16'hca0a;
    SB_LUT4 i15_4_lut (.I0(n10961), .I1(n8984), .I2(comm_state[3]), .I3(n9210), 
            .O(n12573));
    defparam i15_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 i14_4_lut (.I0(n21_adj_1585), .I1(n23_adj_1607), .I2(n22_adj_1599), 
            .I3(n24_adj_1530), .O(n30_adj_1656));   // zim_main.vhd(505[9:35])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11865_3_lut (.I0(buf_data_vac[30]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14264));   // zim_main.vhd(577[4] 864[13])
    defparam i11865_3_lut.LUT_INIT = 16'hcaca;
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
    SB_LUT4 i13_4_lut_adj_51 (.I0(n17), .I1(n19_adj_1564), .I2(n18), .I3(n20_adj_1626), 
            .O(n29));   // zim_main.vhd(505[9:35])
    defparam i13_4_lut_adj_51.LUT_INIT = 16'hfffe;
    SB_LUT4 i11861_3_lut (.I0(buf_data_vac[2]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14260));   // zim_main.vhd(577[4] 864[13])
    defparam i11861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_8_lut (.I0(n14_adj_1526), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19898), .O(data_idxvec_15__N_222[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i11857_3_lut (.I0(buf_data_vac[4]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14256));   // zim_main.vhd(577[4] 864[13])
    defparam i11857_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_52 (.I0(eis_stop), .I1(n29), .I2(n30_adj_1656), 
            .I3(ICE_GPMO_1), .O(n16900));   // zim_main.vhd(560[3] 865[10])
    defparam i1_3_lut_adj_52.LUT_INIT = 16'habab;
    SB_LUT4 i1_2_lut (.I0(AC_ADC_SYNC), .I1(n21167), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i15447_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n17826));
    defparam i15447_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 comm_index_0__bdd_4_lut_20090 (.I0(comm_index[0]), .I1(\comm_buf[2] [3]), 
            .I2(\comm_buf[3] [3]), .I3(comm_index[1]), .O(n22710));
    defparam comm_index_0__bdd_4_lut_20090.LUT_INIT = 16'he4aa;
    SB_LUT4 i24_4_lut (.I0(n17826), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(AC_ADC_SYNC), .O(n11_adj_1532));
    defparam i24_4_lut.LUT_INIT = 16'hfaca;
    SB_CARRY add_146_8 (.CI(n19898), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19899));
    SB_LUT4 i19801_3_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n11_adj_1532), 
            .I3(ICE_GPMO_1), .O(n11968));
    defparam i19801_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i11853_3_lut (.I0(buf_data_vac[6]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14252));   // zim_main.vhd(577[4] 864[13])
    defparam i11853_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11849_3_lut (.I0(buf_data_vac[8]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14248));   // zim_main.vhd(577[4] 864[13])
    defparam i11849_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17_3_lut (.I0(n16912), .I1(n16906), .I2(eis_state[0]), .I3(ICE_GPMO_1), 
            .O(n13_adj_1608));   // zim_main.vhd(297[9:18])
    defparam i17_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i11845_3_lut (.I0(buf_data_vac[10]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14244));   // zim_main.vhd(577[4] 864[13])
    defparam i11845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_62_6_lut (.I0(ICE_GPMO_1), .I1(data_count[4]), .I2(ICE_GPMO_1), 
            .I3(n19850), .O(n369)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_146_7_lut (.I0(n14_adj_1556), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19897), .O(data_idxvec_15__N_222[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_63_12 (.CI(n19864), .I0(data_cntvec[10]), .I1(ICE_GPMO_1), 
            .CO(n19865));
    SB_LUT4 i1_2_lut_adj_53 (.I0(dds_state_adj_1686[2]), .I1(dds_state_adj_1686[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20698));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_53.LUT_INIT = 16'h4444;
    SB_LUT4 i11841_3_lut (.I0(buf_data_vac[12]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14240));   // zim_main.vhd(577[4] 864[13])
    defparam i11841_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_63_11_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[9]), .I2(ICE_GPMO_1), 
            .I3(n19863), .O(n382)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_54 (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_length[2]), 
            .I3(comm_length[0]), .O(n4_adj_1572));   // zim_main.vhd(778[9:33])
    defparam i1_4_lut_adj_54.LUT_INIT = 16'h7bde;
    SB_LUT4 n22710_bdd_4_lut (.I0(n22710), .I1(\comm_buf[1] [3]), .I2(\comm_buf[0] [3]), 
            .I3(comm_index[1]), .O(n22713));
    defparam n22710_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_63_11 (.CI(n19863), .I0(data_cntvec[9]), .I1(ICE_GPMO_1), 
            .CO(n19864));
    SB_LUT4 i15665_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1529));   // zim_main.vhd(577[4] 864[13])
    defparam i15665_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_2_lut_adj_55 (.I0(comm_index[1]), .I1(n19465), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n19474));   // zim_main.vhd(560[3] 865[10])
    defparam i1_2_lut_adj_55.LUT_INIT = 16'h4444;
    SB_LUT4 add_63_10_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[8]), .I2(ICE_GPMO_1), 
            .I3(n19862), .O(n383)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_63_10 (.CI(n19862), .I0(data_cntvec[8]), .I1(ICE_GPMO_1), 
            .CO(n19863));
    SB_LUT4 i15715_2_lut_3_lut (.I0(comm_state[0]), .I1(n5964), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5966));   // zim_main.vhd(577[4] 864[13])
    defparam i15715_2_lut_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 i1_2_lut_adj_56 (.I0(comm_state[0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n25));   // zim_main.vhd(577[4] 864[13])
    defparam i1_2_lut_adj_56.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_adj_57 (.I0(dds_state[2]), .I1(dds_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20696));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i1_2_lut_adj_57.LUT_INIT = 16'h4444;
    SB_LUT4 comm_index_0__bdd_4_lut_20085 (.I0(comm_index[0]), .I1(\comm_buf[2] [4]), 
            .I2(\comm_buf[3] [4]), .I3(comm_index[1]), .O(n22704));
    defparam comm_index_0__bdd_4_lut_20085.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_58 (.I0(comm_index[1]), .I1(n4_adj_1572), .I2(comm_length[1]), 
            .I3(ICE_GPMO_1), .O(n5));   // zim_main.vhd(778[9:33])
    defparam i2_3_lut_adj_58.LUT_INIT = 16'hdede;
    SB_LUT4 i1_2_lut_adj_59 (.I0(comm_state[1]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21241));
    defparam i1_2_lut_adj_59.LUT_INIT = 16'hbbbb;
    SB_LUT4 n22704_bdd_4_lut (.I0(n22704), .I1(\comm_buf[1] [4]), .I2(\comm_buf[0] [4]), 
            .I3(comm_index[1]), .O(n22707));
    defparam n22704_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_146_7 (.CI(n19897), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19898));
    SB_LUT4 i1_4_lut_adj_60 (.I0(n9_adj_1519), .I1(comm_state[3]), .I2(n9210), 
            .I3(n21219), .O(n12690));
    defparam i1_4_lut_adj_60.LUT_INIT = 16'hc0c4;
    SB_DFFN dds0_mclkcnt_i7_3917__i0 (.Q(dds0_mclkcnt[0]), .C(clk_16MHz), 
            .D(n45));   // zim_main.vhd(435[4] 438[11])
    SB_DFFR wdtick_cnt_3909__i0 (.Q(wdtick_cnt[0]), .C(clk_16MHz), .D(n145), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12664_2_lut (.I0(n12485), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15058));   // zim_main.vhd(560[3] 865[10])
    defparam i12664_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19_4_lut_adj_61 (.I0(n10854), .I1(n19485), .I2(comm_state[1]), 
            .I3(n25), .O(n12_adj_1603));
    defparam i19_4_lut_adj_61.LUT_INIT = 16'hc505;
    SB_LUT4 i18_3_lut (.I0(eis_state[2]), .I1(n13_adj_1608), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(eis_state_2__N_169[2]));   // zim_main.vhd(297[9:18])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n11968), 
            .D(eis_state_2__N_169[2]), .R(tacadc_rst));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 add_62_7_lut (.I0(ICE_GPMO_1), .I1(data_count[5]), .I2(ICE_GPMO_1), 
            .I3(n19851), .O(n368)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11968), 
            .D(eis_state_2__N_169[1]), .R(tacadc_rst));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_20123 (.I0(comm_cmd[2]), .I1(n21408), 
            .I2(n21409), .I3(comm_cmd[3]), .O(n22698));
    defparam comm_cmd_2__bdd_4_lut_20123.LUT_INIT = 16'he4aa;
    SB_LUT4 n22698_bdd_4_lut (.I0(n22698), .I1(n21406), .I2(n22683), .I3(comm_cmd[3]), 
            .O(n22701));
    defparam n22698_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_adj_62 (.I0(n12_adj_1603), .I1(n21145), .I2(n21207), 
            .I3(ICE_GPMO_1), .O(n12485));
    defparam i1_3_lut_adj_62.LUT_INIT = 16'hc8c8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20095 (.I0(comm_cmd[1]), .I1(n19_adj_1619), 
            .I2(buf_readRTD[5]), .I3(comm_cmd[2]), .O(n22692));
    defparam comm_cmd_1__bdd_4_lut_20095.LUT_INIT = 16'he4aa;
    SB_LUT4 n22692_bdd_4_lut (.I0(n22692), .I1(buf_adcdata_iac[13]), .I2(n16_adj_1618), 
            .I3(comm_cmd[2]), .O(n22695));
    defparam n22692_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13065_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1556), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15464));   // zim_main.vhd(560[3] 865[10])
    defparam i13065_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11837_3_lut (.I0(buf_data_vac[14]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14236));   // zim_main.vhd(577[4] 864[13])
    defparam i11837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_6_lut (.I0(n14_adj_1527), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19896), .O(data_idxvec_15__N_222[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_63 (.I0(read_buf[3]), .I1(read_buf[2]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20460));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_1_i4_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1563));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18851_4_lut (.I0(n4_adj_1563), .I1(\comm_buf[6] [1]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21445));
    defparam i18851_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18852_3_lut (.I0(n22731), .I1(n21445), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21446));
    defparam i18852_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_64 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12484));
    defparam i1_2_lut_adj_64.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp_adj_1663[31]), .I1(cmd_rdadctmp_adj_1663[30]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20694));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 i19325_2_lut (.I0(buf_data_vac[29]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21540));
    defparam i19325_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_149_Mux_2_i26_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1632));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20070 (.I0(comm_cmd[1]), .I1(n26_adj_1632), 
            .I2(n21622), .I3(comm_cmd[2]), .O(n22686));
    defparam comm_cmd_1__bdd_4_lut_20070.LUT_INIT = 16'he4aa;
    SB_LUT4 n22686_bdd_4_lut (.I0(n22686), .I1(req_data_cnt[2]), .I2(acadc_skipCount[2]), 
            .I3(comm_cmd[2]), .O(n22689));
    defparam n22686_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13069_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1552), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15468));   // zim_main.vhd(560[3] 865[10])
    defparam i13069_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_6_i26_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1615));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_6_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_2_i4_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1562));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_2_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18842_4_lut (.I0(n4_adj_1562), .I1(\comm_buf[6] [2]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21436));
    defparam i18842_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13070_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1551), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15469));   // zim_main.vhd(560[3] 865[10])
    defparam i13070_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_146_6 (.CI(n19896), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19897));
    SB_LUT4 i18843_3_lut (.I0(n22719), .I1(n21436), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21437));
    defparam i18843_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13071_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1550), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15470));   // zim_main.vhd(560[3] 865[10])
    defparam i13071_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15668_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1524));   // zim_main.vhd(577[4] 864[13])
    defparam i15668_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20105 (.I0(comm_cmd[0]), .I1(VAC_FLT1), 
            .I2(buf_adcdata_iac[23]), .I3(comm_cmd[1]), .O(n22680));
    defparam comm_cmd_0__bdd_4_lut_20105.LUT_INIT = 16'he4aa;
    SB_LUT4 add_146_5_lut (.I0(n14_adj_1557), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19895), .O(data_idxvec_15__N_222[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_157_Mux_3_i4_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1561));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_3_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22680_bdd_4_lut (.I0(n22680), .I1(buf_dds1[15]), .I2(buf_dds0[15]), 
            .I3(comm_cmd[1]), .O(n22683));
    defparam n22680_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13072_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1549), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15471));   // zim_main.vhd(560[3] 865[10])
    defparam i13072_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20065 (.I0(comm_cmd[1]), .I1(n19_adj_1623), 
            .I2(buf_readRTD[4]), .I3(comm_cmd[2]), .O(n22674));
    defparam comm_cmd_1__bdd_4_lut_20065.LUT_INIT = 16'he4aa;
    SB_LUT4 i18836_4_lut (.I0(n4_adj_1561), .I1(\comm_buf[6] [3]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21430));
    defparam i18836_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_146_5 (.CI(n19895), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19896));
    SB_LUT4 i13073_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1555), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15472));   // zim_main.vhd(560[3] 865[10])
    defparam i13073_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18837_3_lut (.I0(n22713), .I1(n21430), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21431));
    defparam i18837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_4_lut (.I0(n14_adj_1528), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19894), .O(data_idxvec_15__N_222[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 n22674_bdd_4_lut (.I0(n22674), .I1(buf_adcdata_iac[12]), .I2(n16_adj_1622), 
            .I3(comm_cmd[2]), .O(n22677));
    defparam n22674_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20075 (.I0(comm_cmd[2]), .I1(n21396), 
            .I2(n21397), .I3(comm_cmd[3]), .O(n22668));
    defparam comm_cmd_2__bdd_4_lut_20075.LUT_INIT = 16'he4aa;
    SB_LUT4 i13074_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1523), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15473));   // zim_main.vhd(560[3] 865[10])
    defparam i13074_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_4_i4_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1560));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_4_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18833_4_lut (.I0(n4_adj_1560), .I1(\comm_buf[6] [4]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21427));
    defparam i18833_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n22668_bdd_4_lut (.I0(n22668), .I1(n21388), .I2(n22635), .I3(comm_cmd[3]), 
            .O(n22671));
    defparam n22668_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15662_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1526));   // zim_main.vhd(577[4] 864[13])
    defparam i15662_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_63_9_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[7]), .I2(ICE_GPMO_1), 
            .I3(n19861), .O(n384)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_66 (.I0(read_buf[2]), .I1(read_buf[1]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20456));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'hca0a;
    SB_LUT4 i15721_2_lut_3_lut (.I0(\comm_buf[1] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1521));   // zim_main.vhd(577[4] 864[13])
    defparam i15721_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 wdtick_cnt_3909_add_4_29_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[27]), .I3(n20038), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 wdtick_cnt_3909_add_4_28_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[26]), .I3(n20037), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_28_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_28 (.CI(n20037), .I0(ICE_GPMO_1), .I1(wdtick_cnt[26]), 
            .CO(n20038));
    SB_LUT4 wdtick_cnt_3909_add_4_27_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[25]), .I3(n20036), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_27_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_63_9 (.CI(n19861), .I0(data_cntvec[7]), .I1(ICE_GPMO_1), 
            .CO(n19862));
    SB_CARRY wdtick_cnt_3909_add_4_27 (.CI(n20036), .I0(ICE_GPMO_1), .I1(wdtick_cnt[25]), 
            .CO(n20037));
    SB_LUT4 comm_cmd_0__bdd_4_lut_20060 (.I0(comm_cmd[0]), .I1(VAC_FLT0), 
            .I2(buf_adcdata_iac[22]), .I3(comm_cmd[1]), .O(n22662));
    defparam comm_cmd_0__bdd_4_lut_20060.LUT_INIT = 16'he4aa;
    SB_LUT4 wdtick_cnt_3909_add_4_26_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[24]), .I3(n20035), .O(n121)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_26_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12037_2_lut (.I0(comm_state_3__N_422[1]), .I1(comm_state[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n14436));   // zim_main.vhd(577[4] 864[13])
    defparam i12037_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i18834_3_lut (.I0(n22707), .I1(n21427), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21428));
    defparam i18834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_67 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21207));
    defparam i1_2_lut_adj_67.LUT_INIT = 16'hbbbb;
    SB_LUT4 i4520_2_lut (.I0(comm_state_3__N_422[1]), .I1(comm_state[0]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6917));   // zim_main.vhd(577[4] 864[13])
    defparam i4520_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n12001));   // zim_main.vhd(568[8:37])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfff4;
    SB_LUT4 i1_4_lut_adj_68 (.I0(n12_adj_1478), .I1(comm_state[3]), .I2(n9210), 
            .I3(n21197), .O(n12712));
    defparam i1_4_lut_adj_68.LUT_INIT = 16'hc0c4;
    SB_LUT4 n22662_bdd_4_lut (.I0(n22662), .I1(buf_dds1[14]), .I2(buf_dds0[14]), 
            .I3(comm_cmd[1]), .O(n22665));
    defparam n22662_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_157_Mux_6_i4_3_lut (.I0(\comm_buf[4] [6]), .I1(\comm_buf[5] [6]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1559));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_6_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12591_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n14990));   // zim_main.vhd(568[8:37])
    defparam i12591_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i18800_4_lut (.I0(n4_adj_1559), .I1(\comm_buf[6] [6]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21394));
    defparam i18800_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13076_3_lut (.I0(buf_adcdata_iac[1]), .I1(cmd_rdadctmp[9]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15475));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13076_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18801_3_lut (.I0(n22647), .I1(n21394), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21395));
    defparam i18801_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20045 (.I0(comm_cmd[0]), .I1(req_data_cnt[8]), 
            .I2(ICE_IOB_95), .I3(comm_cmd[1]), .O(n22656));
    defparam comm_cmd_0__bdd_4_lut_20045.LUT_INIT = 16'he4aa;
    SB_LUT4 i13077_3_lut (.I0(buf_adcdata_iac[2]), .I1(cmd_rdadctmp[10]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15476));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13077_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22656_bdd_4_lut (.I0(n22656), .I1(acadc_skipCount[8]), .I2(buf_control[0]), 
            .I3(comm_cmd[1]), .O(n22659));
    defparam n22656_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_146_4 (.CI(n19894), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19895));
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_index[1]), .I1(n19465), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n4_adj_1569));   // zim_main.vhd(560[3] 865[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i13078_3_lut (.I0(buf_adcdata_iac[3]), .I1(cmd_rdadctmp[11]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15477));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13078_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13079_3_lut (.I0(buf_adcdata_iac[4]), .I1(cmd_rdadctmp[12]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15478));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13079_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3909_add_4_26 (.CI(n20035), .I0(ICE_GPMO_1), .I1(wdtick_cnt[24]), 
            .CO(n20036));
    SB_LUT4 add_63_8_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[6]), .I2(ICE_GPMO_1), 
            .I3(n19860), .O(n385)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_146_3_lut (.I0(n14_adj_1529), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19893), .O(data_idxvec_15__N_222[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_63_8 (.CI(n19860), .I0(data_cntvec[6]), .I1(ICE_GPMO_1), 
            .CO(n19861));
    SB_LUT4 i12678_3_lut (.I0(n12601), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n15072));   // zim_main.vhd(560[3] 865[10])
    defparam i12678_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i13080_3_lut (.I0(buf_adcdata_iac[5]), .I1(cmd_rdadctmp[13]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15479));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13080_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_69 (.I0(n12579), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n9354), .O(n12601));
    defparam i1_4_lut_adj_69.LUT_INIT = 16'ha8a0;
    SB_LUT4 i13081_3_lut (.I0(buf_adcdata_iac[6]), .I1(cmd_rdadctmp[14]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15480));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13081_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13082_3_lut (.I0(buf_adcdata_iac[7]), .I1(cmd_rdadctmp[15]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15481));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13082_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_7_i4_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4_adj_1558));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_7_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18788_4_lut (.I0(n4_adj_1558), .I1(\comm_buf[6] [7]), .I2(comm_index[1]), 
            .I3(comm_index[0]), .O(n21382));
    defparam i18788_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13083_3_lut (.I0(buf_adcdata_iac[8]), .I1(cmd_rdadctmp[16]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15482));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13083_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18789_3_lut (.I0(n22617), .I1(n21382), .I2(comm_index[2]), 
            .I3(ICE_GPMO_1), .O(n21383));
    defparam i18789_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13084_3_lut (.I0(buf_adcdata_iac[9]), .I1(cmd_rdadctmp[17]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15483));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13084_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13085_3_lut (.I0(buf_adcdata_iac[10]), .I1(cmd_rdadctmp[18]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15484));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13085_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_25_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[23]), .I3(n20034), .O(n122)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_146_3 (.CI(n19893), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19894));
    SB_LUT4 add_146_2_lut (.I0(n14_adj_1521), .I1(data_idxvec[0]), .I2(comm_state[3]), 
            .I3(VCC_net), .O(data_idxvec_15__N_222[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_2_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_62_7 (.CI(n19851), .I0(data_count[5]), .I1(ICE_GPMO_1), 
            .CO(n19852));
    SB_CARRY wdtick_cnt_3909_add_4_25 (.CI(n20034), .I0(ICE_GPMO_1), .I1(wdtick_cnt[23]), 
            .CO(n20035));
    SB_LUT4 i13086_3_lut (.I0(buf_adcdata_iac[11]), .I1(cmd_rdadctmp[19]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15485));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13086_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13087_3_lut (.I0(buf_adcdata_iac[12]), .I1(cmd_rdadctmp[20]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15486));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13087_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13088_3_lut (.I0(buf_adcdata_iac[13]), .I1(cmd_rdadctmp[21]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15487));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13088_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_clear_334__i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n12022), 
            .D(n10535));   // zim_main.vhd(577[4] 864[13])
    SB_LUT4 wdtick_cnt_3909_add_4_24_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[22]), .I3(n20033), .O(n123)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_146_2 (.CI(VCC_net), .I0(data_idxvec[0]), .I1(comm_state[3]), 
            .CO(n19893));
    SB_CARRY wdtick_cnt_3909_add_4_24 (.CI(n20033), .I0(ICE_GPMO_1), .I1(wdtick_cnt[22]), 
            .CO(n20034));
    SB_LUT4 i13089_3_lut (.I0(buf_adcdata_iac[14]), .I1(cmd_rdadctmp[22]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15488));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13089_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13090_3_lut (.I0(buf_adcdata_iac[15]), .I1(cmd_rdadctmp[23]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15489));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13090_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13091_3_lut (.I0(buf_adcdata_iac[16]), .I1(cmd_rdadctmp[24]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15490));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13091_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13092_3_lut (.I0(buf_adcdata_iac[17]), .I1(cmd_rdadctmp[25]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15491));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13092_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_1_i26_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1636));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_1_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13093_3_lut (.I0(buf_adcdata_iac[18]), .I1(cmd_rdadctmp[26]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15492));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13093_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13094_3_lut (.I0(buf_adcdata_iac[19]), .I1(cmd_rdadctmp[27]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15493));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13094_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_23_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[21]), .I3(n20032), .O(n124)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13095_3_lut (.I0(buf_adcdata_iac[20]), .I1(cmd_rdadctmp[28]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15494));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13095_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3909_add_4_23 (.CI(n20032), .I0(ICE_GPMO_1), .I1(wdtick_cnt[21]), 
            .CO(n20033));
    SB_LUT4 i3_4_lut_adj_70 (.I0(comm_data_vld), .I1(n21207), .I2(comm_state[0]), 
            .I3(n14436), .O(n21240));
    defparam i3_4_lut_adj_70.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_71 (.I0(cmd_rdadctmp_adj_1663[8]), .I1(cmd_rdadctmp_adj_1663[7]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20892));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_71.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20055 (.I0(comm_cmd[1]), .I1(n26_adj_1636), 
            .I2(n21556), .I3(comm_cmd[2]), .O(n22650));
    defparam comm_cmd_1__bdd_4_lut_20055.LUT_INIT = 16'he4aa;
    SB_LUT4 n22650_bdd_4_lut (.I0(n22650), .I1(req_data_cnt[1]), .I2(acadc_skipCount[1]), 
            .I3(comm_cmd[2]), .O(n22653));
    defparam n22650_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 wdtick_cnt_3909_add_4_22_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[20]), .I3(n20031), .O(n125)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13096_3_lut (.I0(buf_adcdata_iac[21]), .I1(cmd_rdadctmp[29]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15495));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13096_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_20080 (.I0(comm_index[0]), .I1(\comm_buf[2] [6]), 
            .I2(\comm_buf[3] [6]), .I3(comm_index[1]), .O(n22644));
    defparam comm_index_0__bdd_4_lut_20080.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_4_lut_adj_72 (.I0(n12579), .I1(comm_data_vld), .I2(comm_state[0]), 
            .I3(comm_state_3__N_422[1]), .O(n21184));   // zim_main.vhd(577[4] 864[13])
    defparam i2_4_lut_adj_72.LUT_INIT = 16'hbfaf;
    SB_LUT4 i13097_3_lut (.I0(buf_adcdata_iac[22]), .I1(cmd_rdadctmp[30]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15496));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22644_bdd_4_lut (.I0(n22644), .I1(\comm_buf[1] [6]), .I2(\comm_buf[0] [6]), 
            .I3(comm_index[1]), .O(n22647));
    defparam n22644_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20040 (.I0(comm_cmd[0]), .I1(IAC_FLT0), 
            .I2(buf_adcdata_iac[18]), .I3(comm_cmd[1]), .O(n22638));
    defparam comm_cmd_0__bdd_4_lut_20040.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_73 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n21244));
    defparam i1_2_lut_3_lut_adj_73.LUT_INIT = 16'hefef;
    SB_LUT4 n22638_bdd_4_lut (.I0(n22638), .I1(buf_dds1[10]), .I2(buf_dds0[10]), 
            .I3(comm_cmd[1]), .O(n22641));
    defparam n22638_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_74 (.I0(read_buf[1]), .I1(read_buf[0]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20452));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n28), 
            .D(comm_state_3__N_11[1]));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20025 (.I0(comm_cmd[0]), .I1(VAC_OSR1), 
            .I2(buf_adcdata_iac[21]), .I3(comm_cmd[1]), .O(n22632));
    defparam comm_cmd_0__bdd_4_lut_20025.LUT_INIT = 16'he4aa;
    SB_CARRY wdtick_cnt_3909_add_4_22 (.CI(n20031), .I0(ICE_GPMO_1), .I1(wdtick_cnt[20]), 
            .CO(n20032));
    SB_LUT4 i13098_3_lut (.I0(buf_adcdata_iac[23]), .I1(cmd_rdadctmp[31]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15497));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13098_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3796_3_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n5964));   // zim_main.vhd(250[9:19])
    defparam i3796_3_lut_3_lut.LUT_INIT = 16'h1a1a;
    SB_LUT4 i13099_3_lut (.I0(buf_adcdata_vac[1]), .I1(cmd_rdadctmp_adj_1663[9]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15498));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13099_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3795_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n5978));   // zim_main.vhd(560[3] 865[10])
    defparam i3795_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i13100_3_lut (.I0(buf_adcdata_vac[2]), .I1(cmd_rdadctmp_adj_1663[10]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15499));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13100_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13101_3_lut (.I0(buf_adcdata_vac[3]), .I1(cmd_rdadctmp_adj_1663[11]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15500));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22632_bdd_4_lut (.I0(n22632), .I1(buf_dds1[13]), .I2(buf_dds0[13]), 
            .I3(comm_cmd[1]), .O(n22635));
    defparam n22632_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n21138), 
            .D(comm_state_3__N_11[3]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_213[1]));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1663[7]), .I1(cmd_rdadctmp_adj_1663[6]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20890));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'hca0a;
    SB_LUT4 i13102_3_lut (.I0(buf_adcdata_vac[4]), .I1(cmd_rdadctmp_adj_1663[12]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15501));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13102_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13103_3_lut (.I0(buf_adcdata_vac[5]), .I1(cmd_rdadctmp_adj_1663[13]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15502));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13103_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13104_3_lut (.I0(buf_adcdata_vac[6]), .I1(cmd_rdadctmp_adj_1663[14]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15503));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13104_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20035 (.I0(comm_cmd[1]), .I1(n26_adj_1652), 
            .I2(n21554), .I3(comm_cmd[2]), .O(n22626));
    defparam comm_cmd_1__bdd_4_lut_20035.LUT_INIT = 16'he4aa;
    SB_LUT4 i13105_3_lut (.I0(buf_adcdata_vac[7]), .I1(cmd_rdadctmp_adj_1663[15]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15504));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13105_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13106_3_lut (.I0(buf_adcdata_vac[8]), .I1(cmd_rdadctmp_adj_1663[16]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15505));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13106_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13107_3_lut (.I0(buf_adcdata_vac[9]), .I1(cmd_rdadctmp_adj_1663[17]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15506));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12987_3_lut_4_lut (.I0(req_data_cnt[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9210), .I3(n12712), .O(n15386));   // zim_main.vhd(560[3] 865[10])
    defparam i12987_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_148_Mux_3_i23_3_lut (.I0(SELIRNG1), .I1(acadc_skipCount[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1651));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_3_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22626_bdd_4_lut (.I0(n22626), .I1(n21823), .I2(n23_adj_1651), 
            .I3(comm_cmd[2]), .O(n22629));
    defparam n22626_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13108_3_lut (.I0(buf_adcdata_vac[10]), .I1(cmd_rdadctmp_adj_1663[18]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15507));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13108_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13109_3_lut (.I0(buf_adcdata_vac[11]), .I1(cmd_rdadctmp_adj_1663[19]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15508));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20020 (.I0(comm_cmd[0]), .I1(req_data_cnt[10]), 
            .I2(tacadc_rst), .I3(comm_cmd[1]), .O(n22620));
    defparam comm_cmd_0__bdd_4_lut_20020.LUT_INIT = 16'he4aa;
    SB_LUT4 n22620_bdd_4_lut (.I0(n22620), .I1(acadc_skipCount[10]), .I2(SELIRNG0), 
            .I3(comm_cmd[1]), .O(n22623));
    defparam n22620_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1663[6]), .I1(cmd_rdadctmp_adj_1663[5]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20888));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 i19614_2_lut (.I0(req_data_cnt[11]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21823));
    defparam i19614_2_lut.LUT_INIT = 16'h2222;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_213[2]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_213[3]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_213[4]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_213[5]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_213[6]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_213[7]));   // zim_main.vhd(560[3] 865[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_213[8]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[1]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[2]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[3]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[4]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[5]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[6]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[7]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[8]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[9]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[10]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[11]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[12]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[13]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[14]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n12573), 
            .D(data_idxvec_15__N_222[15]));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13110_3_lut (.I0(buf_adcdata_vac[12]), .I1(cmd_rdadctmp_adj_1663[20]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15509));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13110_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_77 (.I0(cmd_rdadctmp_adj_1663[5]), .I1(cmd_rdadctmp_adj_1663[4]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20886));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 i13111_3_lut (.I0(buf_adcdata_vac[13]), .I1(cmd_rdadctmp_adj_1663[21]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15510));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13111_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13112_3_lut (.I0(buf_adcdata_vac[14]), .I1(cmd_rdadctmp_adj_1663[22]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15511));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13112_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_21_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[19]), .I3(n20030), .O(n126)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_21 (.CI(n20030), .I0(ICE_GPMO_1), .I1(wdtick_cnt[19]), 
            .CO(n20031));
    SB_LUT4 i13113_3_lut (.I0(buf_adcdata_vac[15]), .I1(cmd_rdadctmp_adj_1663[23]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15512));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13113_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_20_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[18]), .I3(n20029), .O(n127)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_20 (.CI(n20029), .I0(ICE_GPMO_1), .I1(wdtick_cnt[18]), 
            .CO(n20030));
    SB_LUT4 wdtick_cnt_3909_add_4_19_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[17]), .I3(n20028), .O(n128)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_19 (.CI(n20028), .I0(ICE_GPMO_1), .I1(wdtick_cnt[17]), 
            .CO(n20029));
    SB_LUT4 wdtick_cnt_3909_add_4_18_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[16]), .I3(n20027), .O(n129)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13114_3_lut (.I0(buf_adcdata_vac[16]), .I1(cmd_rdadctmp_adj_1663[24]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15513));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13114_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3909_add_4_18 (.CI(n20027), .I0(ICE_GPMO_1), .I1(wdtick_cnt[16]), 
            .CO(n20028));
    SB_LUT4 i19339_2_lut (.I0(buf_data_vac[39]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21554));
    defparam i19339_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 wdtick_cnt_3909_add_4_17_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[15]), .I3(n20026), .O(n130)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_148_Mux_3_i26_3_lut (.I0(data_cntvec[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1652));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13115_3_lut (.I0(buf_adcdata_vac[17]), .I1(cmd_rdadctmp_adj_1663[25]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15514));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13115_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13116_3_lut (.I0(buf_adcdata_vac[18]), .I1(cmd_rdadctmp_adj_1663[26]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15515));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13116_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13117_3_lut (.I0(buf_adcdata_vac[19]), .I1(cmd_rdadctmp_adj_1663[27]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15516));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13117_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13118_3_lut (.I0(buf_adcdata_vac[20]), .I1(cmd_rdadctmp_adj_1663[28]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15517));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13118_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i36_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n30));   // zim_main.vhd(794[5] 849[14])
    defparam i36_4_lut_4_lut.LUT_INIT = 16'h42f2;
    SB_LUT4 comm_index_0__bdd_4_lut_20030 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22614));
    defparam comm_index_0__bdd_4_lut_20030.LUT_INIT = 16'he4aa;
    SB_LUT4 n22614_bdd_4_lut (.I0(n22614), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22617));
    defparam n22614_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13119_3_lut (.I0(buf_adcdata_vac[21]), .I1(cmd_rdadctmp_adj_1663[29]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15518));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13119_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13120_3_lut (.I0(buf_adcdata_vac[22]), .I1(cmd_rdadctmp_adj_1663[30]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15519));   // adc_ads127.vhd(45[3] 100[10])
    defparam i13120_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12073_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14472));   // zim_main.vhd(577[4] 864[13])
    defparam i12073_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12_4_lut_adj_78 (.I0(buf_adcdata_vdc[23]), .I1(cmd_rdadcbuf[34]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20592));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_78.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_79 (.I0(buf_adcdata_vdc[22]), .I1(cmd_rdadcbuf[33]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20590));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'h0aca;
    SB_LUT4 i19619_2_lut (.I0(buf_data_vac[25]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21876));
    defparam i19619_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_4_lut_adj_80 (.I0(n14436), .I1(comm_state[0]), .I2(n12484), 
            .I3(comm_data_vld), .O(n12095));
    defparam i2_4_lut_adj_80.LUT_INIT = 16'hfbfa;
    SB_LUT4 mux_149_Mux_4_i26_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1624));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_4_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp_adj_1663[2]), .I1(cmd_rdadctmp_adj_1663[1]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20874));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp_adj_1663[1]), .I1(cmd_rdadctmp_adj_1663[0]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20872));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_83 (.I0(buf_adcdata_vdc[21]), .I1(cmd_rdadcbuf[32]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20588));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_17 (.CI(n20026), .I0(ICE_GPMO_1), .I1(wdtick_cnt[15]), 
            .CO(n20027));
    SB_LUT4 wdtick_cnt_3909_add_4_16_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[14]), .I3(n20025), .O(n131)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_84 (.I0(n21114), .I1(n21241), .I2(n12095), .I3(n4_adj_1484), 
            .O(n21138));
    defparam i1_4_lut_adj_84.LUT_INIT = 16'ha080;
    SB_LUT4 i12_4_lut_adj_85 (.I0(read_buf[12]), .I1(read_buf[11]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20498));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_86 (.I0(read_buf[10]), .I1(read_buf[9]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20484));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_87 (.I0(read_buf[8]), .I1(read_buf[7]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20480));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SPI_SLAVE comm_spi (.n6180(n6180), .clk_32MHz(clk_32MHz), .comm_data_vld(comm_data_vld), 
            .reset_int(reset_int), .VCC_net(VCC_net), .comm_rx_buf({comm_rx_buf}), 
            .ICE_SPI_MISO(ICE_SPI_MISO), .GND_net(ICE_GPMO_1), .comm_tx_buf({comm_tx_buf}), 
            .n15405(n15405), .sclk_sync2(sclk_sync2), .n15404(n15404), 
            .sclk_sync1(sclk_sync1), .n15402(n15402));   // zim_main.vhd(927[13:22])
    SB_LUT4 i12_4_lut_adj_88 (.I0(read_buf[7]), .I1(read_buf[6]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20476));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_89 (.I0(buf_adcdata_vdc[20]), .I1(cmd_rdadcbuf[31]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20586));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state_3__N_415[2]), 
            .I2(n21207), .I3(comm_state[1]), .O(n12118));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf0f4;
    SB_LUT4 comm_state_3__I_0_374_Mux_3_i7_4_lut (.I0(comm_state[0]), .I1(n21696), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n18179));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_3_i7_4_lut.LUT_INIT = 16'hcffa;
    SB_CARRY add_62_4 (.CI(n19848), .I0(data_count[2]), .I1(ICE_GPMO_1), 
            .CO(n19849));
    SB_CARRY wdtick_cnt_3909_add_4_16 (.CI(n20025), .I0(ICE_GPMO_1), .I1(wdtick_cnt[14]), 
            .CO(n20026));
    SB_LUT4 i12_4_lut_adj_90 (.I0(read_buf[11]), .I1(read_buf[10]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20488));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_149_Mux_2_i16_3_lut (.I0(buf_dds0[2]), .I1(buf_dds1[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1630));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_2_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_374_Mux_3_i15_4_lut (.I0(n18179), .I1(n14472), 
            .I2(comm_state[3]), .I3(comm_state_3__N_399[3]), .O(comm_state_3__N_11[3]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_3_i15_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 i1_2_lut_3_lut_adj_91 (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(n42_adj_1531));
    defparam i1_2_lut_3_lut_adj_91.LUT_INIT = 16'hfdfd;
    SB_LUT4 i58_3_lut (.I0(comm_data_vld), .I1(comm_state[2]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n59));
    defparam i58_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19318_3_lut (.I0(comm_data_vld), .I1(comm_state[0]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n21534));
    defparam i19318_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i1_4_lut_adj_92 (.I0(comm_state_3__N_422[1]), .I1(n21534), .I2(n59), 
            .I3(comm_state[1]), .O(n21143));
    defparam i1_4_lut_adj_92.LUT_INIT = 16'h0544;
    SB_LUT4 mux_149_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[10]), .I1(buf_adcdata_vdc[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1631));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_93 (.I0(buf_adcdata_vdc[19]), .I1(cmd_rdadcbuf[30]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20584));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20010 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[6]), 
            .I2(buf_readRTD[14]), .I3(comm_cmd[1]), .O(n22608));
    defparam comm_cmd_0__bdd_4_lut_20010.LUT_INIT = 16'he4aa;
    SB_LUT4 wdtick_cnt_3909_add_4_15_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[13]), .I3(n20024), .O(n132)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_94 (.I0(buf_adcdata_vdc[18]), .I1(cmd_rdadcbuf[29]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20582));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_15 (.CI(n20024), .I0(ICE_GPMO_1), .I1(wdtick_cnt[13]), 
            .CO(n20025));
    SB_LUT4 i12_4_lut_adj_95 (.I0(buf_adcdata_vdc[17]), .I1(cmd_rdadcbuf[28]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20580));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'h0aca;
    SB_LUT4 n22608_bdd_4_lut (.I0(n22608), .I1(buf_adcdata_vdc[22]), .I2(buf_adcdata_vac[22]), 
            .I3(comm_cmd[1]), .O(n22611));
    defparam n22608_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20015 (.I0(comm_cmd[1]), .I1(n21543), 
            .I2(n21544), .I3(comm_cmd[2]), .O(n22602));
    defparam comm_cmd_1__bdd_4_lut_20015.LUT_INIT = 16'he4aa;
    SB_LUT4 n22602_bdd_4_lut (.I0(n22602), .I1(n21829), .I2(n23_adj_1641), 
            .I3(comm_cmd[2]), .O(n22605));
    defparam n22602_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc[16]), .I1(cmd_rdadcbuf[27]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20578));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_97 (.I0(comm_state_3__N_415[2]), .I1(comm_cmd[1]), 
            .I2(n30), .I3(comm_cmd[2]), .O(comm_state_3__N_399[3]));   // zim_main.vhd(794[5] 849[14])
    defparam i1_4_lut_adj_97.LUT_INIT = 16'ha0a2;
    SB_LUT4 i19616_2_lut (.I0(buf_data_vac[17]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21877));
    defparam i19616_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_98 (.I0(buf_adcdata_vdc[15]), .I1(cmd_rdadcbuf[26]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20576));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3909_add_4_14_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[12]), .I3(n20023), .O(n133)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_149_Mux_0_i26_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_0_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY wdtick_cnt_3909_add_4_14 (.CI(n20023), .I0(ICE_GPMO_1), .I1(wdtick_cnt[12]), 
            .CO(n20024));
    SB_LUT4 wdtick_cnt_3909_add_4_13_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[11]), .I3(n20022), .O(n134)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19996 (.I0(comm_cmd[1]), .I1(n19_adj_1647), 
            .I2(n20_adj_1648), .I3(comm_cmd[2]), .O(n22596));
    defparam comm_cmd_1__bdd_4_lut_19996.LUT_INIT = 16'he4aa;
    SB_LUT4 n22596_bdd_4_lut (.I0(n22596), .I1(n17_adj_1646), .I2(n16_adj_1645), 
            .I3(comm_cmd[2]), .O(n22599));
    defparam n22596_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_adcdata_vdc[14]), .I1(cmd_rdadcbuf[25]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20574));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'h0aca;
    SB_LUT4 i19327_2_lut (.I0(comm_state_3__N_422[1]), .I1(comm_data_vld), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21533));
    defparam i19327_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i19322_4_lut (.I0(n9210), .I1(n42_adj_1531), .I2(n21533), 
            .I3(comm_state[3]), .O(n21917));
    defparam i19322_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n4), .I2(n21541), 
            .I3(comm_index[2]), .O(n22590));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22590_bdd_4_lut (.I0(n22590), .I1(n2), .I2(n1), .I3(comm_index[2]), 
            .O(n22593));
    defparam n22590_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19991 (.I0(comm_cmd[1]), .I1(n19_adj_1610), 
            .I2(buf_readRTD[7]), .I3(comm_cmd[2]), .O(n22584));
    defparam comm_cmd_1__bdd_4_lut_19991.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_100 (.I0(cmd_rdadctmp_adj_1663[10]), .I1(cmd_rdadctmp_adj_1663[9]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20896));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_101 (.I0(buf_adcdata_vdc[13]), .I1(cmd_rdadcbuf[24]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20572));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20870));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 n22584_bdd_4_lut (.I0(n22584), .I1(buf_adcdata_iac[15]), .I2(n16_adj_1609), 
            .I3(comm_cmd[2]), .O(n22587));
    defparam n22584_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20868));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19981 (.I0(comm_cmd[1]), .I1(n19_adj_1512), 
            .I2(buf_readRTD[0]), .I3(comm_cmd[2]), .O(n22578));
    defparam comm_cmd_1__bdd_4_lut_19981.LUT_INIT = 16'he4aa;
    SB_LUT4 n22578_bdd_4_lut (.I0(n22578), .I1(buf_adcdata_iac[8]), .I2(n16_adj_1513), 
            .I3(comm_cmd[2]), .O(n22581));
    defparam n22578_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_2__bdd_4_lut_20050 (.I0(comm_cmd[2]), .I1(n21521), 
            .I2(n21380), .I3(comm_cmd[3]), .O(n22572));
    defparam comm_cmd_2__bdd_4_lut_20050.LUT_INIT = 16'he4aa;
    SB_LUT4 n22572_bdd_4_lut (.I0(n22572), .I1(n21515), .I2(n22557), .I3(comm_cmd[3]), 
            .O(n22575));
    defparam n22572_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19976 (.I0(comm_cmd[1]), .I1(n26_adj_1620), 
            .I2(n21538), .I3(comm_cmd[2]), .O(n22566));
    defparam comm_cmd_1__bdd_4_lut_19976.LUT_INIT = 16'he4aa;
    SB_LUT4 n22566_bdd_4_lut (.I0(n22566), .I1(req_data_cnt[5]), .I2(acadc_skipCount[5]), 
            .I3(comm_cmd[2]), .O(n22569));
    defparam n22566_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_1__bdd_4_lut_19986 (.I0(comm_index[1]), .I1(n17800), 
            .I2(n21536), .I3(comm_index[0]), .O(n22560));
    defparam comm_index_1__bdd_4_lut_19986.LUT_INIT = 16'he4aa;
    SB_LUT4 n22560_bdd_4_lut (.I0(n22560), .I1(n17798), .I2(n17797), .I3(comm_index[0]), 
            .O(n22563));
    defparam n22560_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19725_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(n21143), 
            .I3(n21917), .O(n28));
    defparam i19725_4_lut.LUT_INIT = 16'h23af;
    SB_LUT4 i12_4_lut_adj_104 (.I0(buf_adcdata_vdc[12]), .I1(cmd_rdadcbuf[23]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20570));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp_adj_1663[11]), .I1(cmd_rdadctmp_adj_1663[10]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20898));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20866));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_107 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20860));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20858));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_109 (.I0(buf_adcdata_vdc[11]), .I1(cmd_rdadcbuf[22]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20568));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_110 (.I0(buf_adcdata_vdc[10]), .I1(cmd_rdadcbuf[21]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20566));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_111 (.I0(buf_adcdata_vdc[9]), .I1(cmd_rdadcbuf[20]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20564));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20856));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 clk_16MHz_I_0_3_lut (.I0(dds0_mclk), .I1(clk_16MHz), .I2(buf_control[6]), 
            .I3(ICE_GPMO_1), .O(DDS_MCLK));   // zim_main.vhd(349[16:66])
    defparam clk_16MHz_I_0_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_1_i16_3_lut (.I0(buf_dds0[1]), .I1(buf_dds1[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1634));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_1_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_113 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20854));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_113.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_114 (.I0(buf_adcdata_vdc[8]), .I1(cmd_rdadcbuf[19]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20562));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_adcdata_vdc[7]), .I1(cmd_rdadcbuf[18]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20560));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_116 (.I0(buf_adcdata_vdc[6]), .I1(cmd_rdadcbuf[17]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20558));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'h0aca;
    SB_LUT4 i19570_2_lut_3_lut (.I0(n5), .I1(comm_state_3__N_422[1]), .I2(comm_state[0]), 
            .I3(ICE_GPMO_1), .O(n21696));   // zim_main.vhd(577[4] 864[13])
    defparam i19570_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_117 (.I0(comm_state[0]), .I1(comm_state_3__N_415[2]), 
            .I2(comm_state[1]), .I3(n21207), .O(n12357));
    defparam i1_2_lut_3_lut_4_lut_adj_117.LUT_INIT = 16'hfff4;
    SB_LUT4 i12_4_lut_adj_118 (.I0(buf_adcdata_vdc[4]), .I1(cmd_rdadcbuf[15]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20554));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_119 (.I0(buf_adcdata_vdc[3]), .I1(cmd_rdadcbuf[14]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20552));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_374_Mux_1_i15_4_lut (.I0(n22797), .I1(comm_state_3__N_399[3]), 
            .I2(comm_state[3]), .I3(n14472), .O(comm_state_3__N_11[1]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_1_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i12_4_lut_adj_120 (.I0(buf_adcdata_vdc[2]), .I1(cmd_rdadcbuf[13]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20544));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_121 (.I0(buf_adcdata_vdc[1]), .I1(cmd_rdadcbuf[12]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20542));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_122 (.I0(cmd_rdadctmp_adj_1710[22]), .I1(cmd_rdadctmp_adj_1710[21]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20392));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3917__i1 (.Q(dds0_mclkcnt[1]), .C(clk_16MHz), 
            .D(n44));   // zim_main.vhd(435[4] 438[11])
    SB_LUT4 i12_4_lut_adj_123 (.I0(cmd_rdadctmp_adj_1710[21]), .I1(cmd_rdadctmp_adj_1710[20]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20390));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'h0aca;
    SB_DFFN dds0_mclkcnt_i7_3917__i2 (.Q(dds0_mclkcnt[2]), .C(clk_16MHz), 
            .D(n43));   // zim_main.vhd(435[4] 438[11])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20001 (.I0(comm_cmd[0]), .I1(IAC_OSR1), 
            .I2(buf_adcdata_iac[17]), .I3(comm_cmd[1]), .O(n22554));
    defparam comm_cmd_0__bdd_4_lut_20001.LUT_INIT = 16'he4aa;
    SB_DFFN dds0_mclkcnt_i7_3917__i3 (.Q(dds0_mclkcnt[3]), .C(clk_16MHz), 
            .D(n42));   // zim_main.vhd(435[4] 438[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i4 (.Q(dds0_mclkcnt[4]), .C(clk_16MHz), 
            .D(n41));   // zim_main.vhd(435[4] 438[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i5 (.Q(dds0_mclkcnt[5]), .C(clk_16MHz), 
            .D(n40));   // zim_main.vhd(435[4] 438[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i6 (.Q(dds0_mclkcnt[6]), .C(clk_16MHz), 
            .D(n39));   // zim_main.vhd(435[4] 438[11])
    SB_DFFN dds0_mclkcnt_i7_3917__i7 (.Q(dds0_mclkcnt[7]), .C(clk_16MHz), 
            .D(n38));   // zim_main.vhd(435[4] 438[11])
    SB_DFFSR clk_cnt_3907_3908__i2 (.Q(clk_cnt[1]), .C(clk_16MHz), .D(n14), 
            .R(n17839));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR wdtick_cnt_3909__i1 (.Q(wdtick_cnt[1]), .C(clk_16MHz), .D(n144), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 n22554_bdd_4_lut (.I0(n22554), .I1(buf_dds1[9]), .I2(buf_dds0[9]), 
            .I3(comm_cmd[1]), .O(n22557));
    defparam n22554_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFR wdtick_cnt_3909__i2 (.Q(wdtick_cnt[2]), .C(clk_16MHz), .D(n143), 
            .R(flagcntwd));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp_adj_1710[20]), .I1(cmd_rdadctmp_adj_1710[19]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20388));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'h0aca;
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
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd_rdadctmp_adj_1710[19]), .I1(cmd_rdadctmp_adj_1710[18]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20386));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'h0aca;
    SB_LUT4 add_145_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n10961), 
            .I3(n19892), .O(n7_adj_1535)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_126 (.I0(adress[6]), .I1(adress[5]), .I2(n13088), 
            .I3(n14779), .O(n20194));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(adress[5]), .I1(adress[4]), .I2(n13088), .I3(n14779), 
            .O(n20192));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_127 (.I0(adress[4]), .I1(adress[3]), .I2(n13088), 
            .I3(n14779), .O(n20190));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 i12988_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n10790), 
            .I3(ICE_GPMO_1), .O(n15387));   // zim_main.vhd(560[3] 865[10])
    defparam i12988_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19967 (.I0(comm_cmd[1]), .I1(n19_adj_1614), 
            .I2(buf_readRTD[6]), .I3(comm_cmd[2]), .O(n22548));
    defparam comm_cmd_1__bdd_4_lut_19967.LUT_INIT = 16'he4aa;
    SB_LUT4 n22548_bdd_4_lut (.I0(n22548), .I1(buf_adcdata_iac[14]), .I2(n16_adj_1613), 
            .I3(comm_cmd[2]), .O(n22551));
    defparam n22548_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY wdtick_cnt_3909_add_4_13 (.CI(n20022), .I0(ICE_GPMO_1), .I1(wdtick_cnt[11]), 
            .CO(n20023));
    SB_LUT4 i12986_3_lut_4_lut (.I0(acadc_skipCount[0]), .I1(\comm_buf[1] [0]), 
            .I2(n9210), .I3(n12690), .O(n15385));   // zim_main.vhd(560[3] 865[10])
    defparam i12986_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd_rdadctmp_adj_1710[18]), .I1(cmd_rdadctmp_adj_1710[17]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20384));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_1__bdd_4_lut_19954 (.I0(comm_cmd[1]), .I1(n21526), 
            .I2(n21527), .I3(comm_cmd[2]), .O(n22542));
    defparam comm_cmd_1__bdd_4_lut_19954.LUT_INIT = 16'he4aa;
    SB_LUT4 n22542_bdd_4_lut (.I0(n22542), .I1(n21847), .I2(n23_adj_1649), 
            .I3(comm_cmd[2]), .O(n22545));
    defparam n22542_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i19341_2_lut (.I0(buf_data_vac[19]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21556));
    defparam i19341_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp_adj_1710[17]), .I1(cmd_rdadctmp_adj_1710[16]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20382));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_130 (.I0(adress[3]), .I1(adress[2]), .I2(n13088), 
            .I3(n14779), .O(n20188));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_130.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_131 (.I0(cmd_rdadctmp_adj_1710[16]), .I1(cmd_rdadctmp_adj_1710[15]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20380));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'h0aca;
    SB_LUT4 i6957_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9354));   // zim_main.vhd(577[4] 864[13])
    defparam i6957_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i2_4_lut_adj_132 (.I0(n21241), .I1(n21184), .I2(n4_adj_1439), 
            .I3(n21240), .O(n21114));
    defparam i2_4_lut_adj_132.LUT_INIT = 16'hc800;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd_rdadctmp_adj_1710[15]), .I1(cmd_rdadctmp_adj_1710[14]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20378));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp_adj_1710[14]), .I1(cmd_rdadctmp_adj_1710[13]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20376));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'h0aca;
    SB_LUT4 add_145_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n10961), 
            .I3(n19891), .O(n7_adj_1537)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3909_add_4_12_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[10]), .I3(n20021), .O(n135)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_adj_135 (.I0(comm_cmd[5]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[4]), .I3(ICE_GPMO_1), .O(n21187));   // zim_main.vhd(827[11:20])
    defparam i1_2_lut_3_lut_adj_135.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_136 (.I0(n21244), .I1(n21114), .I2(comm_data_vld), 
            .I3(n6917), .O(n21116));
    defparam i1_4_lut_adj_136.LUT_INIT = 16'hcc8c;
    SB_LUT4 i12_4_lut_adj_137 (.I0(buf_adcdata_vdc[5]), .I1(cmd_rdadcbuf[16]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20556));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), .I2(cs_mask_cnt[1]), 
            .I3(n12484), .O(n4_adj_1439));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hff02;
    SB_LUT4 i1_2_lut_adj_138 (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n20098));
    defparam i1_2_lut_adj_138.LUT_INIT = 16'h9999;
    SB_LUT4 i15469_2_lut_3_lut (.I0(comm_cmd[5]), .I1(comm_cmd[6]), .I2(comm_cmd[4]), 
            .I3(ICE_GPMO_1), .O(comm_state_3__N_415[2]));   // zim_main.vhd(827[11:20])
    defparam i15469_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1710[13]), .I1(cmd_rdadctmp_adj_1710[12]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20374));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1710[12]), .I1(cmd_rdadctmp_adj_1710[11]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20372));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1710[11]), .I1(cmd_rdadctmp_adj_1710[10]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20370));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20852));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20850));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3909_add_4_12 (.CI(n20021), .I0(ICE_GPMO_1), .I1(wdtick_cnt[10]), 
            .CO(n20022));
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp_adj_1710[10]), .I1(cmd_rdadctmp_adj_1710[9]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20368));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp_adj_1710[9]), .I1(cmd_rdadctmp_adj_1710[8]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20366));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'h0aca;
    SB_LUT4 i19573_3_lut (.I0(comm_state[1]), .I1(n5), .I2(comm_cmd[7]), 
            .I3(ICE_GPMO_1), .O(n22168));
    defparam i19573_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd_rdadctmp_adj_1710[8]), .I1(cmd_rdadctmp_adj_1710[7]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20364));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd_rdadctmp_adj_1710[7]), .I1(cmd_rdadctmp_adj_1710[6]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20362));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20848));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_149_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[9]), .I1(buf_adcdata_vdc[9]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1635));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_149 (.I0(cmd_rdadctmp_adj_1710[6]), .I1(cmd_rdadctmp_adj_1710[5]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20360));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'h0aca;
    SB_CARRY add_145_9 (.CI(n19891), .I0(data_index[7]), .I1(n10961), 
            .CO(n19892));
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd_rdadctmp_adj_1710[5]), .I1(cmd_rdadctmp_adj_1710[4]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20358));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_150.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp_adj_1710[4]), .I1(cmd_rdadctmp_adj_1710[3]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20356));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_148_Mux_4_i23_3_lut (.I0(buf_control[4]), .I1(acadc_skipCount[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1649));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_4_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19649_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21847));
    defparam i19649_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19650_2_lut (.I0(buf_data_vac[41]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21527));
    defparam i19650_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19412_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21526));
    defparam i19412_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_149_Mux_6_i16_3_lut (.I0(buf_dds0[6]), .I1(buf_dds1[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1613));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_6_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20844));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20842));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_149_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[14]), .I1(buf_adcdata_vdc[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1614));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1710[3]), .I1(cmd_rdadctmp_adj_1710[2]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20354));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_155 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20838));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20836));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20834));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_158 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20828));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20826));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20824));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_161 (.I0(cmd_rdadctmp_adj_1710[2]), .I1(cmd_rdadctmp_adj_1710[1]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20352));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1663[12]), .I1(cmd_rdadctmp_adj_1663[11]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20906));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 i12593_2_lut (.I0(n12021), .I1(eis_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14991));   // zim_main.vhd(444[3] 522[10])
    defparam i12593_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13075_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1522), .I2(n12712), 
            .I3(ICE_GPMO_1), .O(n15474));   // zim_main.vhd(560[3] 865[10])
    defparam i13075_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_163 (.I0(tacadc_rst), .I1(eis_state[0]), .I2(eis_state[2]), 
            .I3(eis_state[1]), .O(n12021));
    defparam i2_4_lut_adj_163.LUT_INIT = 16'h0405;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n15474));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n15473));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n15472));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n15471));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n15470));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n15469));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n15468));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n15467));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n15466));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i19770_4_lut (.I0(n5964), .I1(n5978), .I2(n9354), .I3(cs_falling_pend_N_696), 
            .O(n10535));   // zim_main.vhd(577[4] 864[13])
    defparam i19770_4_lut.LUT_INIT = 16'h2333;
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n15465));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n15464));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n15463));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n15462));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n15461));   // zim_main.vhd(560[3] 865[10])
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n15460));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n15459));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n15458));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n15457));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n15456));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n15455));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n15454));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n15453));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n15452));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n15451));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n15450));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n15449));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n15448));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n15447));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n15446));   // zim_main.vhd(560[3] 865[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n15445));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i7 (.Q(buf_cfgRTD[7]), .C(clk_32MHz), .D(n15444));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i6 (.Q(buf_cfgRTD[6]), .C(clk_32MHz), .D(n15443));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i5 (.Q(buf_cfgRTD[5]), .C(clk_32MHz), .D(n15442));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i4 (.Q(buf_cfgRTD[4]), .C(clk_32MHz), .D(n15441));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i3 (.Q(buf_cfgRTD[3]), .C(clk_32MHz), .D(n15440));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i2 (.Q(buf_cfgRTD[2]), .C(clk_32MHz), .D(n15439));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_cfgRTD_i1 (.Q(buf_cfgRTD[1]), .C(clk_32MHz), .D(n15438));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i8 (.Q(VAC_FLT1), .C(clk_32MHz), .D(n15437));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i7 (.Q(VAC_FLT0), .C(clk_32MHz), .D(n15436));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i6 (.Q(VAC_OSR1), .C(clk_32MHz), .D(n15435));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i5 (.Q(VAC_OSR0), .C(clk_32MHz), .D(n15434));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i4 (.Q(IAC_FLT1), .C(clk_32MHz), .D(n15433));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i3 (.Q(IAC_FLT0), .C(clk_32MHz), .D(n15432));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_device_acadc_i2 (.Q(IAC_OSR1), .C(clk_32MHz), .D(n15431));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i15 (.Q(buf_dds0[15]), .C(clk_32MHz), .D(n15430));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i14 (.Q(buf_dds0[14]), .C(clk_32MHz), .D(n15429));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i13 (.Q(buf_dds0[13]), .C(clk_32MHz), .D(n15428));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i12 (.Q(buf_dds0[12]), .C(clk_32MHz), .D(n15427));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i11 (.Q(buf_dds0[11]), .C(clk_32MHz), .D(n15426));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i10 (.Q(buf_dds0[10]), .C(clk_32MHz), .D(n15425));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i9 (.Q(buf_dds0[9]), .C(clk_32MHz), .D(n15424));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i8 (.Q(buf_dds0[8]), .C(clk_32MHz), .D(n15423));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i7 (.Q(buf_dds0[7]), .C(clk_32MHz), .D(n15422));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i6 (.Q(buf_dds0[6]), .C(clk_32MHz), .D(n15421));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1710[1]), .I1(cmd_rdadctmp_adj_1710[0]), 
            .I2(n13390), .I3(adc_state_adj_1709[3]), .O(n20350));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'h0aca;
    SB_DFF buf_dds0_i5 (.Q(buf_dds0[5]), .C(clk_32MHz), .D(n15420));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20822));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_DFF buf_dds0_i4 (.Q(buf_dds0[4]), .C(clk_32MHz), .D(n15419));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i3 (.Q(buf_dds0[3]), .C(clk_32MHz), .D(n15418));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i2 (.Q(buf_dds0[2]), .C(clk_32MHz), .D(n15417));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_dds0_i1 (.Q(buf_dds0[1]), .C(clk_32MHz), .D(n15416));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n15415));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i5 (.Q(AMPV_POW), .C(clk_32MHz), .D(n15414));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i4 (.Q(buf_control[4]), .C(clk_32MHz), .D(n15413));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i3 (.Q(SELIRNG1), .C(clk_32MHz), .D(n15412));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i2 (.Q(SELIRNG0), .C(clk_32MHz), .D(n15411));   // zim_main.vhd(560[3] 865[10])
    SB_DFF buf_control_i1 (.Q(DDS_RNG_0), .C(clk_32MHz), .D(n15410));   // zim_main.vhd(560[3] 865[10])
    SB_DFFN eis_end_325 (.Q(eis_end), .C(clk_32MHz), .D(n15408));   // zim_main.vhd(444[3] 522[10])
    SB_DFFN dummy_327 (.Q(TEST_LED), .C(clk_32MHz), .D(n15407));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i11_4_lut_adj_166 (.I0(adress[2]), .I1(adress[1]), .I2(n13088), 
            .I3(n14779), .O(n20186));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_166.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_167 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20820));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_DFFN eis_adc_trig_326 (.Q(eis_adc_trig), .C(clk_32MHz), .D(n15406));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i12_4_lut_adj_168 (.I0(buf_readRTD[15]), .I1(read_buf[15]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20540));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'h0aca;
    SB_LUT4 i13004_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf_adj_1687[15]), .I2(dds_state_adj_1686[1]), 
            .I3(ICE_GPMO_1), .O(n15403));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13004_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13005_3_lut (.I0(sclk_sync1), .I1(ICE_SPI_SCLK), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15404));   // spi_slave.vhd(47[3] 84[10])
    defparam i13005_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_169 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20818));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_170 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20816));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_LUT4 i19766_4_lut (.I0(n5978), .I1(n5964), .I2(comm_state[0]), 
            .I3(comm_state[1]), .O(n7));
    defparam i19766_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 i12_4_lut_adj_171 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20814));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_172 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20810));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_adj_173 (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n13767));   // zim_main.vhd(577[4] 864[13])
    defparam i1_3_lut_adj_173.LUT_INIT = 16'h4040;
    SB_LUT4 i12_4_lut_adj_174 (.I0(buf_readRTD[14]), .I1(read_buf[14]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20538));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'h0aca;
    SB_LUT4 i18859_3_lut (.I0(comm_state[0]), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[1]), .I3(ICE_GPMO_1), .O(n21453));
    defparam i18859_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i18861_4_lut (.I0(n21453), .I1(n22168), .I2(comm_state[2]), 
            .I3(n6917), .O(n21455));
    defparam i18861_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_175 (.I0(buf_readRTD[13]), .I1(read_buf[13]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20536));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_374_Mux_0_i15_3_lut (.I0(n21455), .I1(n9210), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(comm_state_3__N_11[0]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i3_4_lut_adj_176 (.I0(n13767), .I1(comm_state[0]), .I2(n5964), 
            .I3(n5978), .O(n22865));
    defparam i3_4_lut_adj_176.LUT_INIT = 16'hffef;
    SB_LUT4 i1_2_lut_3_lut_adj_177 (.I0(cs_sync1), .I1(cs_sync2), .I2(n10535), 
            .I3(ICE_GPMO_1), .O(n12022));   // zim_main.vhd(568[8:37])
    defparam i1_2_lut_3_lut_adj_177.LUT_INIT = 16'h4f4f;
    SB_LUT4 i12_4_lut_adj_178 (.I0(cmd_rdadctmp_adj_1663[29]), .I1(cmd_rdadctmp_adj_1663[28]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20660));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_179 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20808));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_180 (.I0(buf_readRTD[12]), .I1(read_buf[12]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20534));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_181 (.I0(cmd_rdadctmp_adj_1663[13]), .I1(cmd_rdadctmp_adj_1663[12]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20908));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_182 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20806));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_183 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20804));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_184 (.I0(buf_readRTD[11]), .I1(read_buf[11]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20532));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_185 (.I0(buf_readRTD[10]), .I1(read_buf[10]), 
            .I2(n11903), .I3(adc_state_adj_1706[2]), .O(n20530));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_186 (.I0(buf_readRTD[9]), .I1(read_buf[9]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20528));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'h0aca;
    SB_LUT4 i17400_2_lut (.I0(clk_cnt[1]), .I1(clk_cnt[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17400_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_187 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20802));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20800));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_LUT4 i12997_2_lut (.I0(drdy_sync2_adj_1475), .I1(drdy_prev_adj_1476), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n15396));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12997_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_189 (.I0(buf_readRTD[7]), .I1(read_buf[7]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20526));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_190 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20798));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n12762), .I3(adc_state[0]), .O(n20796));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_192 (.I0(buf_readRTD[6]), .I1(read_buf[6]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20524));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'h0aca;
    SB_LUT4 i18803_4_lut (.I0(data_idxvec[13]), .I1(buf_data_vac[43]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21397));
    defparam i18803_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i12_4_lut_adj_193 (.I0(buf_readRTD[5]), .I1(read_buf[5]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20522));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'h0aca;
    SB_LUT4 i12990_3_lut (.I0(ICE_IOB_95), .I1(\comm_buf[0] [0]), .I2(n10790), 
            .I3(ICE_GPMO_1), .O(n15389));   // zim_main.vhd(560[3] 865[10])
    defparam i12990_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_5_i23_3_lut (.I0(AMPV_POW), .I1(acadc_skipCount[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1643));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_5_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12992_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15391));   // adc_ads127.vhd(35[3] 40[10])
    defparam i12992_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_194 (.I0(cmd_rdadctmp_adj_1663[14]), .I1(cmd_rdadctmp_adj_1663[13]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20910));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_2_lut_3_lut_4_lut (.I0(comm_index[1]), .I1(n19465), .I2(comm_index[0]), 
            .I3(comm_state[0]), .O(n7_adj_1567));   // zim_main.vhd(560[3] 865[10])
    defparam i2_2_lut_3_lut_4_lut.LUT_INIT = 16'h0008;
    SB_LUT4 i12_4_lut_adj_195 (.I0(buf_readRTD[4]), .I1(read_buf[4]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20520));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_196 (.I0(\comm_buf[6] [7]), .I1(comm_rx_buf[7]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20216));   // zim_main.vhd(250[9:19])
    defparam i12_4_lut_adj_196.LUT_INIT = 16'h0aca;
    SB_LUT4 i18802_4_lut (.I0(n23_adj_1643), .I1(req_data_cnt[13]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21396));
    defparam i18802_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 wdtick_cnt_3909_add_4_11_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[9]), .I3(n20020), .O(n136)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_197 (.I0(buf_readRTD[3]), .I1(read_buf[3]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20518));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_11 (.CI(n20020), .I0(ICE_GPMO_1), .I1(wdtick_cnt[9]), 
            .CO(n20021));
    SB_LUT4 i12_4_lut_adj_198 (.I0(\comm_buf[6] [6]), .I1(comm_rx_buf[6]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20260));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_149_Mux_4_i16_3_lut (.I0(buf_dds0[4]), .I1(buf_dds1[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1622));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_199 (.I0(buf_readRTD[2]), .I1(read_buf[2]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20516));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'h0aca;
    SB_DFF eis_start_cmd_362 (.Q(ICE_IOB_95), .C(clk_32MHz), .D(n15389));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i15666_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1522));   // zim_main.vhd(577[4] 864[13])
    defparam i15666_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_145_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n10961), 
            .I3(n19890), .O(n7_adj_1539)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3909_add_4_10_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[8]), .I3(n20019), .O(n137)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15667_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1523));   // zim_main.vhd(577[4] 864[13])
    defparam i15667_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY add_145_8 (.CI(n19890), .I0(data_index[6]), .I1(n10961), 
            .CO(n19891));
    SB_LUT4 i12_4_lut_adj_200 (.I0(\comm_buf[6] [5]), .I1(comm_rx_buf[5]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20198));   // zim_main.vhd(250[9:19])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'h0aca;
    SB_LUT4 i12989_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n10790), 
            .I3(ICE_GPMO_1), .O(n15388));   // zim_main.vhd(560[3] 865[10])
    defparam i12989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[12]), .I1(buf_adcdata_vdc[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1623));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15417_3_lut (.I0(\comm_buf[0] [5]), .I1(\comm_buf[4] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17797));   // zim_main.vhd(256[9:19])
    defparam i15417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_201 (.I0(cmd_rdadctmp_adj_1663[15]), .I1(cmd_rdadctmp_adj_1663[14]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20912));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_202 (.I0(\comm_buf[6] [4]), .I1(comm_rx_buf[4]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20258));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'h0aca;
    SB_LUT4 i15418_3_lut (.I0(\comm_buf[2] [5]), .I1(\comm_buf[6] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17798));   // zim_main.vhd(256[9:19])
    defparam i15418_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_stop_361 (.Q(eis_stop), .C(clk_32MHz), .D(n15388));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_3_lut_adj_203 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [5]), .I3(ICE_GPMO_1), .O(n14_adj_1555));   // zim_main.vhd(577[4] 864[13])
    defparam i1_2_lut_3_lut_adj_203.LUT_INIT = 16'h1010;
    SB_CARRY wdtick_cnt_3909_add_4_10 (.CI(n20019), .I0(ICE_GPMO_1), .I1(wdtick_cnt[8]), 
            .CO(n20020));
    SB_LUT4 wdtick_cnt_3909_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[7]), .I3(n20018), .O(n138)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_204 (.I0(\comm_buf[6] [3]), .I1(comm_rx_buf[3]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20256));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'h0aca;
    SB_CARRY wdtick_cnt_3909_add_4_9 (.CI(n20018), .I0(ICE_GPMO_1), .I1(wdtick_cnt[7]), 
            .CO(n20019));
    SB_LUT4 i19328_2_lut (.I0(\comm_buf[3] [5]), .I1(comm_index[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21536));
    defparam i19328_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_205 (.I0(\comm_buf[6] [2]), .I1(comm_rx_buf[2]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20218));   // zim_main.vhd(250[9:19])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'h0aca;
    SB_LUT4 i11_4_lut_adj_206 (.I0(adress[1]), .I1(adress[0]), .I2(n13088), 
            .I3(n14779), .O(n20184));   // adc_max31865.vhd(38[3] 148[10])
    defparam i11_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_207 (.I0(\comm_buf[6] [1]), .I1(comm_rx_buf[1]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20254));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'h0aca;
    SB_LUT4 i15420_3_lut (.I0(\comm_buf[1] [5]), .I1(\comm_buf[5] [5]), 
            .I2(comm_index[2]), .I3(ICE_GPMO_1), .O(n17800));   // zim_main.vhd(256[9:19])
    defparam i15420_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19321_2_lut (.I0(buf_data_vac[27]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21538));
    defparam i19321_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp_adj_1663[16]), .I1(cmd_rdadctmp_adj_1663[15]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20914));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i15657_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1549));   // zim_main.vhd(577[4] 864[13])
    defparam i15657_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_209 (.I0(cmd_rdadctmp_adj_1663[17]), .I1(cmd_rdadctmp_adj_1663[16]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20916));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_210 (.I0(cmd_rdadctmp_adj_1663[18]), .I1(cmd_rdadctmp_adj_1663[17]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20918));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_211 (.I0(cmd_rdadctmp_adj_1663[19]), .I1(cmd_rdadctmp_adj_1663[18]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20920));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_212 (.I0(cmd_rdadctmp_adj_1663[20]), .I1(cmd_rdadctmp_adj_1663[19]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20922));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_149_Mux_5_i26_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1620));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_5_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(comm_cmd[7]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[7]), .O(n20432));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_214 (.I0(comm_cmd[6]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[6]), .O(n20430));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_215 (.I0(comm_cmd[5]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[5]), .O(n20428));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_216 (.I0(comm_cmd[4]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[4]), .O(n20426));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_217 (.I0(comm_cmd[3]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[3]), .O(n20424));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 i18784_3_lut (.I0(data_cntvec[9]), .I1(data_idxvec[9]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21378));
    defparam i18784_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_218 (.I0(comm_cmd[2]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[2]), .O(n20422));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_219 (.I0(comm_cmd[1]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[1]), .O(n20420));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3909_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[6]), .I3(n20017), .O(n139)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15658_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1550));   // zim_main.vhd(577[4] 864[13])
    defparam i15658_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i18786_4_lut (.I0(n21378), .I1(buf_data_vac[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21380));
    defparam i18786_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i19407_2_lut (.I0(buf_data_vac[21]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21622));
    defparam i19407_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_149_Mux_0_i16_3_lut (.I0(buf_dds0[0]), .I1(buf_dds1[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1513));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_0_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_145_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n10961), 
            .I3(n19889), .O(n17805)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_63_7_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[5]), .I2(ICE_GPMO_1), 
            .I3(n19859), .O(n386)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_149_Mux_5_i16_3_lut (.I0(buf_dds0[5]), .I1(buf_dds1[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1618));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_5_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_63_7 (.CI(n19859), .I0(data_cntvec[5]), .I1(ICE_GPMO_1), 
            .CO(n19860));
    SB_LUT4 add_62_3_lut (.I0(ICE_GPMO_1), .I1(data_count[1]), .I2(ICE_GPMO_1), 
            .I3(n19847), .O(n372)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15659_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1551));   // zim_main.vhd(577[4] 864[13])
    defparam i15659_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(ICE_GPMO_1), .O(cs_falling_pend_N_696));   // zim_main.vhd(597[20:61])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 add_63_6_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[4]), .I2(ICE_GPMO_1), 
            .I3(n19858), .O(n387)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_149_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[13]), .I1(buf_adcdata_vdc[13]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1619));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_7_i26_3_lut (.I0(eis_end), .I1(data_idxvec[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1639));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18815_4_lut (.I0(n26_adj_1639), .I1(buf_data_vac[47]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21409));
    defparam i18815_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_145_7 (.CI(n19889), .I0(data_index[5]), .I1(n10961), 
            .CO(n19890));
    SB_LUT4 add_145_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n10961), 
            .I3(n19888), .O(n7_adj_1541)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i15660_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1552));   // zim_main.vhd(577[4] 864[13])
    defparam i15660_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_220 (.I0(n12579), .I1(n12118), .I2(n9354), .I3(n12484), 
            .O(n12125));
    defparam i1_4_lut_adj_220.LUT_INIT = 16'h8880;
    SB_LUT4 mux_149_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[8]), .I1(buf_adcdata_vdc[8]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1512));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_7_i16_3_lut (.I0(buf_dds0[7]), .I1(buf_dds1[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1609));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_7_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19360_2_lut (.I0(comm_state[2]), .I1(comm_cmd[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21575));   // zim_main.vhd(560[3] 865[10])
    defparam i19360_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19377_4_lut (.I0(n21575), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(comm_state[3]), .O(n21574));   // zim_main.vhd(560[3] 865[10])
    defparam i19377_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 mux_149_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[15]), .I1(buf_adcdata_vdc[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1610));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_221 (.I0(comm_length[2]), .I1(n21574), .I2(n12125), 
            .I3(comm_cmd[0]), .O(n20330));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_157_Mux_0_i1_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n1));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_157_Mux_0_i2_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n2));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_0_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19602_2_lut (.I0(\comm_buf[6] [0]), .I1(comm_index[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21541));
    defparam i19602_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_148_Mux_7_i23_3_lut (.I0(buf_control[7]), .I1(acadc_skipCount[15]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1638));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_7_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18814_4_lut (.I0(n23_adj_1638), .I1(req_data_cnt[15]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21408));
    defparam i18814_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_222 (.I0(cmd_rdadctmp_adj_1663[21]), .I1(cmd_rdadctmp_adj_1663[20]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20924));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_157_Mux_0_i4_3_lut (.I0(\comm_buf[4] [0]), .I1(\comm_buf[5] [0]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n4));   // zim_main.vhd(743[30:40])
    defparam mux_157_Mux_0_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13068_3_lut_4_lut (.I0(req_data_cnt[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9210), .I3(n12712), .O(n15467));   // zim_main.vhd(560[3] 865[10])
    defparam i13068_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_223 (.I0(buf_dds1[15]), .I1(\comm_buf[0] [7]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20252));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_CARRY add_145_6 (.CI(n19888), .I0(data_index[4]), .I1(n10961), 
            .CO(n19889));
    SB_CARRY wdtick_cnt_3909_add_4_8 (.CI(n20017), .I0(ICE_GPMO_1), .I1(wdtick_cnt[6]), 
            .CO(n20018));
    SB_LUT4 wdtick_cnt_3909_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[5]), .I3(n20016), .O(n140)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_224 (.I0(cmd_rdadctmp_adj_1663[22]), .I1(cmd_rdadctmp_adj_1663[21]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20926));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'hca0a;
    SB_CARRY add_63_6 (.CI(n19858), .I0(data_cntvec[4]), .I1(ICE_GPMO_1), 
            .CO(n19859));
    SB_LUT4 buf_control_4__I_0_1_lut (.I0(buf_control[4]), .I1(ICE_GPMO_1), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(VDC_RNG0));   // zim_main.vhd(529[16:34])
    defparam buf_control_4__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 add_145_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n10961), 
            .I3(n19887), .O(n7_adj_1543)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_63_5_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[3]), .I2(ICE_GPMO_1), 
            .I3(n19857), .O(n388)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_7 (.CI(n20016), .I0(ICE_GPMO_1), .I1(wdtick_cnt[5]), 
            .CO(n20017));
    SB_CARRY add_145_5 (.CI(n19887), .I0(data_index[3]), .I1(n10961), 
            .CO(n19888));
    SB_LUT4 i12_4_lut_adj_225 (.I0(buf_dds1[14]), .I1(\comm_buf[0] [6]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20250));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_225.LUT_INIT = 16'hca0a;
    SB_LUT4 i13664_4_lut (.I0(n21349), .I1(buf_dds1[13]), .I2(n14_adj_1555), 
            .I3(n12082), .O(n16063));   // zim_main.vhd(560[3] 865[10])
    defparam i13664_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 wdtick_cnt_3909_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[4]), .I3(n20015), .O(n141)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_145_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n10961), 
            .I3(n19886), .O(n7_adj_1545)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY wdtick_cnt_3909_add_4_6 (.CI(n20015), .I0(ICE_GPMO_1), .I1(wdtick_cnt[4]), 
            .CO(n20016));
    SB_LUT4 i1_2_lut_adj_226 (.I0(comm_cmd[3]), .I1(n21187), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12_adj_1478));
    defparam i1_2_lut_adj_226.LUT_INIT = 16'hdddd;
    SB_CARRY add_145_4 (.CI(n19886), .I0(data_index[2]), .I1(n10961), 
            .CO(n19887));
    SB_LUT4 add_145_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n10961), 
            .I3(n19885), .O(n7_adj_1547)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_227 (.I0(buf_dds1[12]), .I1(\comm_buf[0] [4]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20246));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_227.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_228 (.I0(buf_dds1[11]), .I1(\comm_buf[0] [3]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20244));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_228.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_148_Mux_4_i16_3_lut (.I0(buf_dds0[12]), .I1(buf_dds1[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1645));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_4_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14521_4_lut (.I0(iac_raw_buf_N_730), .I1(n11), .I2(eis_state[1]), 
            .I3(eis_state[2]), .O(n16920));   // zim_main.vhd(297[9:18])
    defparam i14521_4_lut.LUT_INIT = 16'hfac0;
    SB_LUT4 i12_4_lut_adj_229 (.I0(buf_dds1[10]), .I1(\comm_buf[0] [2]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20242));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_CARRY add_63_5 (.CI(n19857), .I0(data_cntvec[3]), .I1(ICE_GPMO_1), 
            .CO(n19858));
    SB_LUT4 i19686_2_lut (.I0(buf_data_vac[31]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21892));
    defparam i19686_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i14525_4_lut (.I0(n16920), .I1(n40_adj_1517), .I2(eis_state[0]), 
            .I3(eis_state[2]), .O(eis_state_2__N_169[1]));   // zim_main.vhd(297[9:18])
    defparam i14525_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 mux_148_Mux_4_i17_3_lut (.I0(VAC_OSR0), .I1(buf_adcdata_iac[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n17_adj_1646));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_4_i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_4_i20_3_lut (.I0(buf_cfgRTD[4]), .I1(buf_readRTD[12]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n20_adj_1648));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_4_i20_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 wdtick_cnt_3909_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[3]), .I3(n20014), .O(n142)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_63_4_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[2]), .I2(ICE_GPMO_1), 
            .I3(n19856), .O(n389)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_148_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[20]), .I1(buf_adcdata_vdc[20]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1647));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_230 (.I0(n5978), .I1(n9_adj_1617), .I2(trig_dds0), 
            .I3(n11_adj_1566), .O(n20338));   // zim_main.vhd(577[4] 864[13])
    defparam i1_4_lut_adj_230.LUT_INIT = 16'h5444;
    SB_LUT4 mux_149_Mux_7_i26_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1611));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_7_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_231 (.I0(buf_dds1[9]), .I1(\comm_buf[0] [1]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20240));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_232 (.I0(buf_dds1[8]), .I1(\comm_buf[0] [0]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20238));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_232.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_233 (.I0(buf_dds1[7]), .I1(\comm_buf[1] [7]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20236));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_234 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n12579));
    defparam i1_2_lut_3_lut_adj_234.LUT_INIT = 16'hfdfd;
    SB_LUT4 i11_4_lut_adj_235 (.I0(buf_dds1[6]), .I1(\comm_buf[1] [6]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20234));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_LUT4 i13688_4_lut (.I0(n21349), .I1(buf_dds1[5]), .I2(n14_adj_1556), 
            .I3(n12082), .O(n16087));   // zim_main.vhd(560[3] 865[10])
    defparam i13688_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i11_4_lut_adj_236 (.I0(buf_dds1[4]), .I1(\comm_buf[1] [4]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20228));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_LUT4 i13693_4_lut (.I0(n21349), .I1(buf_dds1[3]), .I2(n14_adj_1557), 
            .I3(n12082), .O(n16092));   // zim_main.vhd(560[3] 865[10])
    defparam i13693_4_lut.LUT_INIT = 16'hf5dd;
    SB_CARRY wdtick_cnt_3909_add_4_5 (.CI(n20014), .I0(ICE_GPMO_1), .I1(wdtick_cnt[3]), 
            .CO(n20015));
    SB_DFF comm_clear_334__i2 (.Q(trig_dds0), .C(clk_32MHz), .D(n20338));   // zim_main.vhd(577[4] 864[13])
    SB_LUT4 i12_4_lut_adj_237 (.I0(cmd_rdadctmp_adj_1663[25]), .I1(cmd_rdadctmp_adj_1663[24]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20932));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_LUT4 wdtick_cnt_3909_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[2]), .I3(n20013), .O(n143)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 acadc_dtrig_i_I_0_2_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(iac_raw_buf_N_730));   // zim_main.vhd(497[8:51])
    defparam acadc_dtrig_i_I_0_2_lut.LUT_INIT = 16'h8888;
    SB_DFF comm_clear_334__i1 (.Q(trig_dds1), .C(clk_32MHz), .D(n16150));   // zim_main.vhd(577[4] 864[13])
    SB_CARRY add_145_3 (.CI(n19885), .I0(data_index[1]), .I1(n10961), 
            .CO(n19886));
    SB_LUT4 i12_4_lut_adj_238 (.I0(cmd_rdadctmp_adj_1663[28]), .I1(cmd_rdadctmp_adj_1663[27]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20938));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_CARRY add_63_4 (.CI(n19856), .I0(data_cntvec[2]), .I1(ICE_GPMO_1), 
            .CO(n19857));
    SB_DFFE buf_dds1_i0 (.Q(buf_dds1[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20206));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20408));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut_adj_239 (.I0(buf_adcdata_vdc[0]), .I1(cmd_rdadcbuf[11]), 
            .I2(n11937), .I3(adc_state_adj_1709[2]), .O(n20640));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'h0aca;
    SB_LUT4 i13067_3_lut_4_lut (.I0(req_data_cnt[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9210), .I3(n12712), .O(n15466));   // zim_main.vhd(560[3] 865[10])
    defparam i13067_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13066_3_lut_4_lut (.I0(req_data_cnt[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9210), .I3(n12712), .O(n15465));   // zim_main.vhd(560[3] 865[10])
    defparam i13066_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i15646_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1556));   // zim_main.vhd(577[4] 864[13])
    defparam i15646_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_240 (.I0(buf_readRTD[0]), .I1(read_buf[0]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20638));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_240.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_241 (.I0(read_buf[0]), .I1(RTD_SDO), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20636));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_241.LUT_INIT = 16'hca0a;
    SB_CARRY wdtick_cnt_3909_add_4_4 (.CI(n20013), .I0(ICE_GPMO_1), .I1(wdtick_cnt[2]), 
            .CO(n20014));
    SB_DFFE comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20214));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_145_2_lut (.I0(data_index[0]), .I1(data_index[0]), .I2(n10961), 
            .I3(VCC_net), .O(n7_adj_1520)) /* synthesis syn_instantiated=1 */ ;
    defparam add_145_2_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 wdtick_cnt_3909_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(wdtick_cnt[1]), .I3(n20012), .O(n144)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY wdtick_cnt_3909_add_4_3 (.CI(n20012), .I0(ICE_GPMO_1), .I1(wdtick_cnt[1]), 
            .CO(n20013));
    SB_LUT4 wdtick_cnt_3909_add_4_2_lut (.I0(ICE_GPMO_1), .I1(n6148), .I2(wdtick_cnt[0]), 
            .I3(ICE_GPMO_1), .O(n145)) /* synthesis syn_instantiated=1 */ ;
    defparam wdtick_cnt_3909_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_145_2 (.CI(VCC_net), .I0(data_index[0]), .I1(n10961), 
            .CO(n19885));
    SB_CARRY wdtick_cnt_3909_add_4_2 (.CI(ICE_GPMO_1), .I0(n6148), .I1(wdtick_cnt[0]), 
            .CO(n20012));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_9_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[7]), .I3(n20011), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_17_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[15]), .I2(ICE_GPMO_1), 
            .I3(n19884), .O(n426)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_8_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(n10), .I3(n20010), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_8 (.CI(n20010), .I0(ICE_GPMO_1), 
            .I1(n10), .CO(n20011));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_7_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[5]), .I3(n20009), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_7 (.CI(n20009), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[5]), .CO(n20010));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_6_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[4]), .I3(n20008), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13064_3_lut_4_lut (.I0(req_data_cnt[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9210), .I3(n12712), .O(n15463));   // zim_main.vhd(560[3] 865[10])
    defparam i13064_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13063_3_lut_4_lut (.I0(req_data_cnt[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9210), .I3(n12712), .O(n15462));   // zim_main.vhd(560[3] 865[10])
    defparam i13063_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_68_16_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[14]), .I2(ICE_GPMO_1), 
            .I3(n19883), .O(n427)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_6 (.CI(n20008), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[4]), .CO(n20009));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_5_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[3]), .I3(n20007), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_16 (.CI(n19883), .I0(acadc_skipcnt[14]), .I1(ICE_GPMO_1), 
            .CO(n19884));
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_5 (.CI(n20007), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[3]), .CO(n20008));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_4_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[2]), .I3(n20006), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_4 (.CI(n20006), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[2]), .CO(n20007));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_3_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[1]), .I3(n20005), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_68_15_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[13]), .I2(ICE_GPMO_1), 
            .I3(n19882), .O(n428)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_3 (.CI(n20005), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[1]), .CO(n20006));
    SB_LUT4 dds0_mclkcnt_i7_3917_add_4_2_lut (.I0(ICE_GPMO_1), .I1(ICE_GPMO_1), 
            .I2(dds0_mclkcnt[0]), .I3(VCC_net), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam dds0_mclkcnt_i7_3917_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY dds0_mclkcnt_i7_3917_add_4_2 (.CI(VCC_net), .I0(ICE_GPMO_1), 
            .I1(dds0_mclkcnt[0]), .CO(n20005));
    SB_LUT4 i7_4_lut_adj_242 (.I0(acadc_skipCount[12]), .I1(acadc_skipCount[2]), 
            .I2(acadc_skipcnt[12]), .I3(acadc_skipcnt[2]), .O(n22));
    defparam i7_4_lut_adj_242.LUT_INIT = 16'h7bde;
    SB_LUT4 i4032_2_lut_3_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(n6428));   // zim_main.vhd(608[5] 616[12])
    defparam i4032_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_CARRY add_68_15 (.CI(n19882), .I0(acadc_skipcnt[13]), .I1(ICE_GPMO_1), 
            .CO(n19883));
    SB_LUT4 i12_4_lut_adj_243 (.I0(cmd_rdadctmp_adj_1663[26]), .I1(cmd_rdadctmp_adj_1663[25]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20934));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_4_lut_adj_244 (.I0(acadc_skipCount[14]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[14]), .I3(acadc_skipcnt[5]), .O(n20_adj_1574));
    defparam i5_4_lut_adj_244.LUT_INIT = 16'h7bde;
    SB_CARRY add_62_6 (.CI(n19850), .I0(data_count[4]), .I1(ICE_GPMO_1), 
            .CO(n19851));
    SB_LUT4 add_68_14_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[12]), .I2(ICE_GPMO_1), 
            .I3(n19881), .O(n429)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_14 (.CI(n19881), .I0(acadc_skipcnt[12]), .I1(ICE_GPMO_1), 
            .CO(n19882));
    SB_LUT4 add_68_13_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[11]), .I2(ICE_GPMO_1), 
            .I3(n19880), .O(n430)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_245 (.I0(buf_readRTD[1]), .I1(read_buf[1]), .I2(n11903), 
            .I3(adc_state_adj_1706[2]), .O(n20512));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_245.LUT_INIT = 16'h0aca;
    SB_CARRY add_62_3 (.CI(n19847), .I0(data_count[1]), .I1(ICE_GPMO_1), 
            .CO(n19848));
    SB_CARRY add_68_13 (.CI(n19880), .I0(acadc_skipcnt[11]), .I1(ICE_GPMO_1), 
            .CO(n19881));
    SB_LUT4 i13726_3_lut (.I0(n15162), .I1(bit_cnt_adj_1688[0]), .I2(dds_state_adj_1686[1]), 
            .I3(ICE_GPMO_1), .O(n16125));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13726_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_2_lut_3_lut_adj_246 (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_cmd[7]), .I3(ICE_GPMO_1), .O(n19465));   // zim_main.vhd(608[5] 616[12])
    defparam i1_2_lut_3_lut_adj_246.LUT_INIT = 16'h0202;
    SB_LUT4 i13729_3_lut (.I0(n15157), .I1(bit_cnt_adj_1684[0]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n16128));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13729_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i1_3_lut_adj_247 (.I0(adc_state_adj_1662[1]), .I1(adc_state_adj_1662[0]), 
            .I2(DTRIG_N_851_adj_1477), .I3(ICE_GPMO_1), .O(n14_adj_1578));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_3_lut_adj_247.LUT_INIT = 16'hbebe;
    SB_LUT4 i22_3_lut_4_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[1]), .I3(comm_state[0]), .O(n7_adj_1644));   // zim_main.vhd(608[5] 616[12])
    defparam i22_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i19761_4_lut (.I0(n21157), .I1(VAC_CS), .I2(n21318), .I3(n14_adj_1578), 
            .O(n12_adj_1575));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19761_4_lut.LUT_INIT = 16'hc4f5;
    SB_LUT4 i11_4_lut_adj_248 (.I0(buf_dds1[1]), .I1(\comm_buf[1] [1]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20220));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_248.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i1 (.Q(buf_dds1[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20220));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i11_4_lut_adj_249 (.I0(buf_dds1[2]), .I1(\comm_buf[1] [2]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20222));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_249.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i2 (.Q(buf_dds1[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20222));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i4030_2_lut_3_lut (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_index[0]), .I3(ICE_GPMO_1), .O(comm_index_2__N_430[0]));   // zim_main.vhd(608[5] 616[12])
    defparam i4030_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 n22794_bdd_4_lut_4_lut (.I0(comm_state_3__N_422[1]), .I1(comm_state[0]), 
            .I2(comm_state[2]), .I3(n22794), .O(n22797));
    defparam n22794_bdd_4_lut_4_lut.LUT_INIT = 16'hf20c;
    SB_LUT4 i15492_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n9210));
    defparam i15492_2_lut.LUT_INIT = 16'heeee;
    SB_DFFE buf_dds1_i3 (.Q(buf_dds1[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16092));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13062_3_lut_4_lut (.I0(req_data_cnt[2]), .I1(\comm_buf[1] [2]), 
            .I2(n9210), .I3(n12712), .O(n15461));   // zim_main.vhd(560[3] 865[10])
    defparam i13062_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_4_lut_adj_250 (.I0(n11647), .I1(comm_cmd[1]), .I2(comm_state[0]), 
            .I3(comm_cmd[2]), .O(n8984));   // zim_main.vhd(577[4] 864[13])
    defparam i3_4_lut_adj_250.LUT_INIT = 16'hfeff;
    SB_DFFE buf_dds1_i4 (.Q(buf_dds1[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20228));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE buf_dds1_i5 (.Q(buf_dds1[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16087));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_68_12_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[10]), .I2(ICE_GPMO_1), 
            .I3(n19879), .O(n431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_12_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i6 (.Q(buf_dds1[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20234));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_63_3_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[1]), .I2(ICE_GPMO_1), 
            .I3(n19855), .O(n390)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_12 (.CI(n19879), .I0(acadc_skipcnt[10]), .I1(ICE_GPMO_1), 
            .CO(n19880));
    SB_LUT4 add_68_11_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[9]), .I2(ICE_GPMO_1), 
            .I3(n19878), .O(n432)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13061_3_lut_4_lut (.I0(req_data_cnt[1]), .I1(\comm_buf[1] [1]), 
            .I2(n9210), .I3(n12712), .O(n15460));   // zim_main.vhd(560[3] 865[10])
    defparam i13061_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_CARRY add_68_11 (.CI(n19878), .I0(acadc_skipcnt[9]), .I1(ICE_GPMO_1), 
            .CO(n19879));
    SB_LUT4 i6518_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1536));   // zim_main.vhd(577[4] 864[13])
    defparam i6518_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_8_i15_4_lut (.I0(n7_adj_1535), .I1(n8_adj_1536), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[8]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_251 (.I0(cmd_rdadctmp_adj_1663[0]), .I1(VAC_MISO), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20780));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_251.LUT_INIT = 16'hca0a;
    SB_CARRY add_63_3 (.CI(n19855), .I0(data_cntvec[1]), .I1(ICE_GPMO_1), 
            .CO(n19856));
    SB_LUT4 i5_4_lut_adj_252 (.I0(dds0_mclkcnt[4]), .I1(dds0_mclkcnt[5]), 
            .I2(dds0_mclkcnt[3]), .I3(dds0_mclkcnt[1]), .O(n12_adj_1657));   // zim_main.vhd(435[7:27])
    defparam i5_4_lut_adj_252.LUT_INIT = 16'hfffe;
    SB_LUT4 i6_4_lut_adj_253 (.I0(dds0_mclkcnt[7]), .I1(n12_adj_1657), .I2(dds0_mclkcnt[0]), 
            .I3(dds0_mclkcnt[2]), .O(n21090));   // zim_main.vhd(435[7:27])
    defparam i6_4_lut_adj_253.LUT_INIT = 16'hfffe;
    SB_LUT4 add_68_10_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[8]), .I2(ICE_GPMO_1), 
            .I3(n19877), .O(n433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15579_2_lut (.I0(dds0_mclkcnt[6]), .I1(n21090), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n10));   // zim_main.vhd(435[4] 438[11])
    defparam i15579_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i3905_1_lut (.I0(wdtick_flag), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n6148));   // zim_main.vhd(394[3] 405[10])
    defparam i3905_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY add_68_10 (.CI(n19877), .I0(acadc_skipcnt[8]), .I1(ICE_GPMO_1), 
            .CO(n19878));
    SB_LUT4 add_63_2_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n391)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_254 (.I0(adc_state[1]), .I1(adc_state[0]), .I2(DTRIG_N_851), 
            .I3(ICE_GPMO_1), .O(n14_adj_1586));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_3_lut_adj_254.LUT_INIT = 16'hbebe;
    SB_DFFE buf_dds1_i7 (.Q(buf_dds1[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20236));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_68_9_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[7]), .I2(ICE_GPMO_1), 
            .I3(n19876), .O(n434)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds1_i8 (.Q(buf_dds1[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20238));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i19764_4_lut (.I0(n21155), .I1(IAC_CS), .I2(n21322), .I3(n14_adj_1586), 
            .O(n12_adj_1584));   // adc_ads127.vhd(45[3] 100[10])
    defparam i19764_4_lut.LUT_INIT = 16'hc4f5;
    SB_CARRY add_63_2 (.CI(ICE_GPMO_1), .I0(data_cntvec[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19855));
    SB_LUT4 i12_4_lut_adj_255 (.I0(cmd_rdadctmp[0]), .I1(IAC_MISO), .I2(n12762), 
            .I3(adc_state[0]), .O(n20778));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_255.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_9 (.CI(n19876), .I0(acadc_skipcnt[7]), .I1(ICE_GPMO_1), 
            .CO(n19877));
    SB_LUT4 i13060_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n9210), .I3(n12690), .O(n15459));   // zim_main.vhd(560[3] 865[10])
    defparam i13060_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i17452_2_lut (.I0(comm_index[0]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n20041));
    defparam i17452_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i6_4_lut_adj_256 (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[10]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[10]), .O(n21));
    defparam i6_4_lut_adj_256.LUT_INIT = 16'h7bde;
    SB_LUT4 add_62_10_lut (.I0(ICE_GPMO_1), .I1(data_count[8]), .I2(ICE_GPMO_1), 
            .I3(n19854), .O(n365)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_adj_257 (.I0(comm_index[2]), .I1(comm_index[1]), 
            .I2(n19465), .I3(ICE_GPMO_1), .O(n19485));   // zim_main.vhd(560[3] 865[10])
    defparam i1_2_lut_3_lut_adj_257.LUT_INIT = 16'h2020;
    SB_LUT4 i4_4_lut_adj_258 (.I0(acadc_skipCount[4]), .I1(acadc_skipCount[8]), 
            .I2(acadc_skipcnt[4]), .I3(acadc_skipcnt[8]), .O(n19_adj_1515));
    defparam i4_4_lut_adj_258.LUT_INIT = 16'h7bde;
    SB_LUT4 add_68_8_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[6]), .I2(ICE_GPMO_1), 
            .I3(n19875), .O(n435)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i3_3_lut (.I0(comm_state[2]), .I1(comm_index[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n8_adj_1568));   // zim_main.vhd(560[3] 865[10])
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 equal_55_i16_2_lut (.I0(acadc_skipCount[15]), .I1(acadc_skipcnt[15]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n16));   // zim_main.vhd(470[10:41])
    defparam equal_55_i16_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE buf_dds1_i9 (.Q(buf_dds1[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20240));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n26_adj_1611), 
            .I2(n21892), .I3(comm_cmd[2]), .O(n22836));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_259 (.I0(n12579), .I1(n7_adj_1567), .I2(comm_state[3]), 
            .I3(n8_adj_1568), .O(n12505));
    defparam i1_4_lut_adj_259.LUT_INIT = 16'ha8a0;
    SB_LUT4 n22836_bdd_4_lut (.I0(n22836), .I1(req_data_cnt[7]), .I2(acadc_skipCount[7]), 
            .I3(comm_cmd[2]), .O(n22839));
    defparam n22836_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_68_8 (.CI(n19875), .I0(acadc_skipcnt[6]), .I1(ICE_GPMO_1), 
            .CO(n19876));
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(buf_cfgRTD[7]), 
            .I2(buf_readRTD[15]), .I3(comm_cmd[1]), .O(n22830));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n22830_bdd_4_lut (.I0(n22830), .I1(buf_adcdata_vdc[23]), .I2(buf_adcdata_vac[23]), 
            .I3(comm_cmd[1]), .O(n21406));
    defparam n22830_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_68_7_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[5]), .I2(ICE_GPMO_1), 
            .I3(n19874), .O(n436)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_260 (.I0(\comm_buf[6] [0]), .I1(comm_rx_buf[0]), 
            .I2(n12505), .I3(comm_state[3]), .O(n20214));   // zim_main.vhd(560[3] 865[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'h0aca;
    SB_LUT4 i6528_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1538));   // zim_main.vhd(577[4] 864[13])
    defparam i6528_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_7_i15_4_lut (.I0(n7_adj_1537), .I1(n8_adj_1538), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[7]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20182 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[1]), 
            .I2(buf_readRTD[9]), .I3(comm_cmd[1]), .O(n22824));
    defparam comm_cmd_0__bdd_4_lut_20182.LUT_INIT = 16'he4aa;
    SB_DFFE buf_dds1_i10 (.Q(buf_dds1[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20242));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12_4_lut_adj_261 (.I0(cmd_rdadctmp_adj_1663[27]), .I1(cmd_rdadctmp_adj_1663[26]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20936));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_261.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_262 (.I0(comm_state[0]), .I1(comm_cmd[3]), 
            .I2(n21187), .I3(ICE_GPMO_1), .O(n21219));
    defparam i1_2_lut_3_lut_adj_262.LUT_INIT = 16'hfbfb;
    SB_DFFE buf_dds1_i11 (.Q(buf_dds1[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20244));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_4_lut_adj_263 (.I0(n12579), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(n7_adj_1644), .O(n12167));
    defparam i1_4_lut_adj_263.LUT_INIT = 16'h8a88;
    SB_DFFE buf_dds1_i12 (.Q(buf_dds1[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20246));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE buf_dds1_i13 (.Q(buf_dds1[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n16063));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE buf_dds1_i14 (.Q(buf_dds1[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20250));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12414_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14803));   // zim_main.vhd(577[4] 864[13])
    defparam i12414_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i11_4_lut_adj_264 (.I0(comm_cmd[0]), .I1(n14803), .I2(n12167), 
            .I3(comm_rx_buf[0]), .O(n20408));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_264.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds1_i15 (.Q(buf_dds1[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20252));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 n22824_bdd_4_lut (.I0(n22824), .I1(buf_adcdata_vdc[17]), .I2(buf_adcdata_vac[17]), 
            .I3(comm_cmd[1]), .O(n21515));
    defparam n22824_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20330));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20420));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_adj_265 (.I0(comm_state[2]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11653));   // zim_main.vhd(577[4] 864[13])
    defparam i1_2_lut_adj_265.LUT_INIT = 16'heeee;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20422));   // zim_main.vhd(560[3] 865[10])
    SB_CARRY add_68_7 (.CI(n19874), .I0(acadc_skipcnt[5]), .I1(ICE_GPMO_1), 
            .CO(n19875));
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20424));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20426));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i6538_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1540));   // zim_main.vhd(577[4] 864[13])
    defparam i6538_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20428));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_68_6_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[4]), .I2(ICE_GPMO_1), 
            .I3(n19873), .O(n437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20430));   // zim_main.vhd(560[3] 865[10])
    SB_CARRY add_68_6 (.CI(n19873), .I0(acadc_skipcnt[4]), .I1(ICE_GPMO_1), 
            .CO(n19874));
    SB_LUT4 add_68_5_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[3]), .I2(ICE_GPMO_1), 
            .I3(n19872), .O(n438)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20432));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_62_2_lut (.I0(ICE_GPMO_1), .I1(data_count[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n373)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_5 (.CI(n19872), .I0(acadc_skipcnt[3]), .I1(ICE_GPMO_1), 
            .CO(n19873));
    SB_LUT4 add_68_4_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[2]), .I2(ICE_GPMO_1), 
            .I3(n19871), .O(n439)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_68_4 (.CI(n19871), .I0(acadc_skipcnt[2]), .I1(ICE_GPMO_1), 
            .CO(n19872));
    SB_LUT4 add_68_3_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[1]), .I2(ICE_GPMO_1), 
            .I3(n19870), .O(n440)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20254));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20218));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20256));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20258));   // zim_main.vhd(560[3] 865[10])
    SB_CARRY add_68_3 (.CI(n19870), .I0(acadc_skipcnt[1]), .I1(ICE_GPMO_1), 
            .CO(n19871));
    SB_LUT4 add_68_2_lut (.I0(ICE_GPMO_1), .I1(acadc_skipcnt[0]), .I2(iac_raw_buf_N_730), 
            .I3(ICE_GPMO_1), .O(n441)) /* synthesis syn_instantiated=1 */ ;
    defparam add_68_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20198));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20260));   // zim_main.vhd(560[3] 865[10])
    SB_DFFE comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20216));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_62_9_lut (.I0(ICE_GPMO_1), .I1(data_count[7]), .I2(ICE_GPMO_1), 
            .I3(n19853), .O(n366)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_62_9 (.CI(n19853), .I0(data_count[7]), .I1(ICE_GPMO_1), 
            .CO(n19854));
    SB_LUT4 add_146_17_lut (.I0(n14_adj_1522), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19907), .O(data_idxvec_15__N_222[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_62_8_lut (.I0(ICE_GPMO_1), .I1(data_count[6]), .I2(ICE_GPMO_1), 
            .I3(n19852), .O(n367)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i20_4_lut (.I0(n21263), .I1(n21338), .I2(comm_state[3]), .I3(n9210), 
            .O(n12082));
    defparam i20_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 add_146_16_lut (.I0(n14_adj_1523), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19906), .O(data_idxvec_15__N_222[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i11_4_lut_adj_266 (.I0(buf_dds1[0]), .I1(\comm_buf[1] [0]), 
            .I2(n12082), .I3(n1_adj_1565), .O(n20206));   // zim_main.vhd(560[3] 865[10])
    defparam i11_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_CARRY add_68_2 (.CI(ICE_GPMO_1), .I0(acadc_skipcnt[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19870));
    SB_DFFESR comm_clear_334__i5 (.Q(comm_clear), .C(clk_32MHz), .E(n22865), 
            .D(n5966), .R(n5978));   // zim_main.vhd(577[4] 864[13])
    SB_DFFESR comm_clear_334__i3 (.Q(flagcntwd), .C(clk_32MHz), .E(n7), 
            .D(n21241), .R(n5978));   // zim_main.vhd(577[4] 864[13])
    SB_LUT4 i12_4_lut_adj_267 (.I0(comm_state[1]), .I1(n13), .I2(n5964), 
            .I3(n20054), .O(n6_adj_1570));
    defparam i12_4_lut_adj_267.LUT_INIT = 16'h3505;
    SB_LUT4 i13751_4_lut (.I0(trig_dds1), .I1(n5978), .I2(n6_adj_1570), 
            .I3(n5964), .O(n16150));   // zim_main.vhd(577[4] 864[13])
    defparam i13751_4_lut.LUT_INIT = 16'h3202;
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n12021), 
            .D(n376), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n12021), 
            .D(n377), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n12021), 
            .D(n378), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i1_2_lut_adj_268 (.I0(n5964), .I1(comm_state[1]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n11_adj_1566));   // zim_main.vhd(577[4] 864[13])
    defparam i1_2_lut_adj_268.LUT_INIT = 16'heeee;
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n12021), 
            .D(n379), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_6_i15_4_lut (.I0(n7_adj_1539), .I1(n8_adj_1540), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[6]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n12021), 
            .D(n380), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n12021), 
            .D(n381), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n12021), 
            .D(n382), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n12021), 
            .D(n383), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i12_4_lut_adj_269 (.I0(read_buf[15]), .I1(read_buf[14]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20510));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_269.LUT_INIT = 16'hca0a;
    SB_LUT4 i15449_2_lut (.I0(buf_control[0]), .I1(wdtick_flag), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(CONT_SD));   // zim_main.vhd(533[13:59])
    defparam i15449_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n12021), 
            .D(n384), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i12_4_lut_adj_270 (.I0(read_buf[14]), .I1(read_buf[13]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20506));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_270.LUT_INIT = 16'hca0a;
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n12021), 
            .D(n385), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n12021), 
            .D(n386), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n12021), 
            .D(n387), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n12021), 
            .D(n388), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n12021), 
            .D(n389), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n12021), 
            .D(n390), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i12_4_lut_adj_271 (.I0(read_buf[13]), .I1(read_buf[12]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20502));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_271.LUT_INIT = 16'hca0a;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n12021), 
            .D(n365), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20187 (.I0(comm_cmd[1]), .I1(n19_adj_1635), 
            .I2(buf_readRTD[1]), .I3(comm_cmd[2]), .O(n22818));
    defparam comm_cmd_1__bdd_4_lut_20187.LUT_INIT = 16'he4aa;
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n12021), 
            .D(n366), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n12021), 
            .D(n367), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n12021), 
            .D(n368), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n12021), 
            .D(n369), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_CARRY add_62_2 (.CI(ICE_GPMO_1), .I0(data_count[0]), .I1(iac_raw_buf_N_730), 
            .CO(n19847));
    SB_CARRY add_146_16 (.CI(n19906), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19907));
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n12021), 
            .D(n370), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n12021), 
            .D(n371), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 add_146_15_lut (.I0(n14_adj_1555), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19905), .O(data_idxvec_15__N_222[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_148_Mux_6_i23_3_lut (.I0(buf_control[6]), .I1(acadc_skipCount[14]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n23_adj_1641));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_6_i23_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n12021), 
            .D(n372), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 add_63_17_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[15]), .I2(ICE_GPMO_1), 
            .I3(n19869), .O(n376)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_17_lut.LUT_INIT = 16'hC33C;
    SB_DFFESS cs_mask_cnt_3911__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n12001), 
            .D(n20098), .S(n14990));   // zim_main.vhd(574[20:31])
    SB_CARRY add_62_8 (.CI(n19852), .I0(data_count[6]), .I1(ICE_GPMO_1), 
            .CO(n19853));
    SB_LUT4 i15427_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n17807));
    defparam i15427_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF tacadc_rst_360 (.Q(tacadc_rst), .C(clk_32MHz), .D(n15387));   // zim_main.vhd(560[3] 865[10])
    SB_CARRY add_62_5 (.CI(n19849), .I0(data_count[3]), .I1(ICE_GPMO_1), 
            .CO(n19850));
    SB_LUT4 i15429_4_lut (.I0(n17805), .I1(n17807), .I2(comm_state[3]), 
            .I3(n9210), .O(data_index_8__N_213[5]));   // zim_main.vhd(250[9:19])
    defparam i15429_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n22818_bdd_4_lut (.I0(n22818), .I1(buf_adcdata_iac[9]), .I2(n16_adj_1634), 
            .I3(comm_cmd[2]), .O(n22821));
    defparam n22818_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n15386));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_adj_272 (.I0(comm_state[3]), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21169));
    defparam i1_2_lut_adj_272.LUT_INIT = 16'h2222;
    SB_LUT4 i6558_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1542));   // zim_main.vhd(577[4] 864[13])
    defparam i6558_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_4_i15_4_lut (.I0(n7_adj_1541), .I1(n8_adj_1542), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[4]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12994_3_lut (.I0(buf_adcdata_iac[0]), .I1(cmd_rdadctmp[8]), 
            .I2(n10660), .I3(ICE_GPMO_1), .O(n15393));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19620_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21829));
    defparam i19620_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18728_2_lut (.I0(DTRIG_N_851), .I1(adc_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21322));
    defparam i18728_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19640_2_lut (.I0(buf_data_vac[45]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21544));
    defparam i19640_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20172 (.I0(comm_cmd[1]), .I1(n26), .I2(n21877), 
            .I3(comm_cmd[2]), .O(n22812));
    defparam comm_cmd_1__bdd_4_lut_20172.LUT_INIT = 16'he4aa;
    SB_LUT4 n22812_bdd_4_lut (.I0(n22812), .I1(req_data_cnt[0]), .I2(acadc_skipCount[0]), 
            .I3(comm_cmd[2]), .O(n22815));
    defparam n22812_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20167 (.I0(comm_cmd[1]), .I1(n19_adj_1631), 
            .I2(buf_readRTD[2]), .I3(comm_cmd[2]), .O(n22806));
    defparam comm_cmd_1__bdd_4_lut_20167.LUT_INIT = 16'he4aa;
    SB_LUT4 i6568_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1544));   // zim_main.vhd(577[4] 864[13])
    defparam i6568_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_3_i15_4_lut (.I0(n7_adj_1543), .I1(n8_adj_1544), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[3]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i19320_2_lut (.I0(data_idxvec[14]), .I1(comm_cmd[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21543));
    defparam i19320_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12999_3_lut (.I0(buf_adcdata_vac[0]), .I1(cmd_rdadctmp_adj_1663[8]), 
            .I2(n10690), .I3(ICE_GPMO_1), .O(n15398));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12999_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22806_bdd_4_lut (.I0(n22806), .I1(buf_adcdata_iac[10]), .I2(n16_adj_1630), 
            .I3(comm_cmd[2]), .O(n22809));
    defparam n22806_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i18724_2_lut (.I0(DTRIG_N_851_adj_1477), .I1(adc_state_adj_1662[0]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n21318));
    defparam i18724_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 add_63_16_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[14]), .I2(ICE_GPMO_1), 
            .I3(n19868), .O(n377)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13059_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n9210), .I3(n12690), .O(n15458));   // zim_main.vhd(560[3] 865[10])
    defparam i13059_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_273 (.I0(read_buf[6]), .I1(read_buf[5]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20472));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_273.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20162 (.I0(comm_cmd[1]), .I1(n26_adj_1624), 
            .I2(n21876), .I3(comm_cmd[2]), .O(n22800));
    defparam comm_cmd_1__bdd_4_lut_20162.LUT_INIT = 16'he4aa;
    SB_LUT4 n22800_bdd_4_lut (.I0(n22800), .I1(req_data_cnt[4]), .I2(acadc_skipCount[4]), 
            .I3(comm_cmd[2]), .O(n22803));
    defparam n22800_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i14513_3_lut_4_lut (.I0(AC_ADC_SYNC), .I1(n21167), .I2(n16900), 
            .I3(eis_state[2]), .O(n16912));   // zim_main.vhd(297[9:18])
    defparam i14513_3_lut_4_lut.LUT_INIT = 16'hf077;
    SB_LUT4 i15716_3_lut (.I0(comm_state[0]), .I1(n5964), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n5967));   // zim_main.vhd(577[4] 864[13])
    defparam i15716_3_lut.LUT_INIT = 16'hdcdc;
    SB_LUT4 i12983_3_lut (.I0(buf_dds0[0]), .I1(n14_adj_1521), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15382));   // zim_main.vhd(560[3] 865[10])
    defparam i12983_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(VAC_CLK));   // zim_main.vhd(353[15:30])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12_4_lut_adj_274 (.I0(cmd_rdadctmp_adj_1663[3]), .I1(cmd_rdadctmp_adj_1663[2]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20882));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_CARRY add_63_16 (.CI(n19868), .I0(data_cntvec[14]), .I1(ICE_GPMO_1), 
            .CO(n19869));
    SB_LUT4 i6578_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1546));   // zim_main.vhd(577[4] 864[13])
    defparam i6578_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12984_3_lut (.I0(IAC_OSR0), .I1(n14_adj_1524), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15383));   // zim_main.vhd(560[3] 865[10])
    defparam i12984_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_2_i15_4_lut (.I0(n7_adj_1545), .I1(n8_adj_1546), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[2]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_63_15_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[13]), .I2(ICE_GPMO_1), 
            .I3(n19867), .O(n378)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15661_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1525));   // zim_main.vhd(577[4] 864[13])
    defparam i15661_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_2_lut (.I0(wdtick_cnt[0]), .I1(wdtick_cnt[13]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n30_adj_1583));
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i16_4_lut (.I0(wdtick_cnt[20]), .I1(wdtick_cnt[2]), .I2(wdtick_cnt[18]), 
            .I3(wdtick_cnt[5]), .O(n44_adj_1640));
    defparam i16_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i20_4_lut_adj_275 (.I0(wdtick_cnt[21]), .I1(wdtick_cnt[26]), 
            .I2(wdtick_cnt[3]), .I3(wdtick_cnt[6]), .O(n48));
    defparam i20_4_lut_adj_275.LUT_INIT = 16'h8000;
    SB_LUT4 i18_4_lut (.I0(wdtick_cnt[27]), .I1(wdtick_cnt[12]), .I2(wdtick_cnt[9]), 
            .I3(wdtick_cnt[16]), .O(n46));
    defparam i18_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19_4_lut_adj_276 (.I0(wdtick_cnt[22]), .I1(wdtick_cnt[4]), 
            .I2(wdtick_cnt[24]), .I3(wdtick_cnt[17]), .O(n47));
    defparam i19_4_lut_adj_276.LUT_INIT = 16'h8000;
    SB_LUT4 i17_4_lut (.I0(wdtick_cnt[8]), .I1(wdtick_cnt[7]), .I2(wdtick_cnt[1]), 
            .I3(wdtick_cnt[14]), .O(n45_adj_1658));
    defparam i17_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i22_4_lut (.I0(wdtick_cnt[23]), .I1(n44_adj_1640), .I2(n30_adj_1583), 
            .I3(wdtick_cnt[10]), .O(n50));
    defparam i22_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i26_4_lut (.I0(n45_adj_1658), .I1(n47), .I2(n46), .I3(n48), 
            .O(n54));
    defparam i26_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i21_4_lut (.I0(wdtick_cnt[11]), .I1(wdtick_cnt[15]), .I2(wdtick_cnt[19]), 
            .I3(wdtick_cnt[25]), .O(n49));
    defparam i21_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i15446_4_lut (.I0(wdtick_flag), .I1(n49), .I2(n54), .I3(n50), 
            .O(wdtick_flag_N_310));   // zim_main.vhd(400[5] 403[12])
    defparam i15446_4_lut.LUT_INIT = 16'heaaa;
    SB_LUT4 i12_4_lut_adj_277 (.I0(cmd_rdadctmp_adj_1663[4]), .I1(cmd_rdadctmp_adj_1663[3]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20884));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_277.LUT_INIT = 16'hca0a;
    SB_LUT4 i13058_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(n9210), .I2(\comm_buf[0] [5]), 
            .I3(n12690), .O(n15457));   // zim_main.vhd(560[3] 865[10])
    defparam i13058_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i6588_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8_adj_1548));   // zim_main.vhd(577[4] 864[13])
    defparam i6588_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18922_3_lut (.I0(data_cntvec[8]), .I1(data_idxvec[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21516));
    defparam i18922_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18924_4_lut (.I0(n21516), .I1(buf_data_vac[33]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21518));
    defparam i18924_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18845_3_lut (.I0(n22659), .I1(n21518), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21439));
    defparam i18845_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_1_i15_4_lut (.I0(n7_adj_1547), .I1(n8_adj_1548), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[1]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i18846_3_lut (.I0(n22725), .I1(n21439), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n21440));
    defparam i18846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11472_3_lut (.I0(n21440), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13869));   // zim_main.vhd(577[4] 864[13])
    defparam i11472_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1596780_i1_3_lut (.I0(n22581), .I1(n22815), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1518));
    defparam i1596780_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11476_3_lut (.I0(n30_adj_1518), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13873));   // zim_main.vhd(577[4] 864[13])
    defparam i11476_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_0_i19_3_lut (.I0(buf_adcdata_vac[0]), .I1(buf_adcdata_vdc[0]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_0_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11387_3_lut (.I0(buf_adcdata_iac[0]), .I1(n19), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n13784));   // zim_main.vhd(633[5] 737[14])
    defparam i11387_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_0_i30_3_lut (.I0(n13784), .I1(buf_data_vac[1]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1510));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_0_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11480_3_lut (.I0(n30_adj_1510), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13877));   // zim_main.vhd(577[4] 864[13])
    defparam i11480_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11484_3_lut (.I0(buf_data_vac[32]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13881));   // zim_main.vhd(577[4] 864[13])
    defparam i11484_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11488_3_lut (.I0(buf_data_vac[16]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13885));   // zim_main.vhd(577[4] 864[13])
    defparam i11488_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11492_3_lut (.I0(buf_data_vac[0]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n13889));   // zim_main.vhd(577[4] 864[13])
    defparam i11492_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n15385));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i18755_2_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21349));
    defparam i18755_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_146_15 (.CI(n19905), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19906));
    SB_LUT4 i19608_2_lut (.I0(n21187), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21867));
    defparam i19608_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13057_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n9210), .I3(n12690), .O(n15456));   // zim_main.vhd(560[3] 865[10])
    defparam i13057_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i18847_3_lut (.I0(buf_dds0[8]), .I1(buf_dds1[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21441));
    defparam i18847_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18848_3_lut (.I0(IAC_OSR0), .I1(buf_adcdata_iac[16]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21442));
    defparam i18848_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18866_3_lut (.I0(buf_cfgRTD[0]), .I1(buf_readRTD[8]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n21460));
    defparam i18866_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18744_2_lut_3_lut_4_lut (.I0(n9_adj_1519), .I1(comm_cmd[3]), 
            .I2(n21187), .I3(comm_state[0]), .O(n21338));
    defparam i18744_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18865_3_lut (.I0(buf_adcdata_vac[16]), .I1(buf_adcdata_vdc[16]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n21459));
    defparam i18865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4599_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n8984), 
            .I3(ICE_GPMO_1), .O(n8));   // zim_main.vhd(577[4] 864[13])
    defparam i4599_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_386_Mux_0_i15_4_lut (.I0(n7_adj_1520), .I1(n8), 
            .I2(comm_state[3]), .I3(n9210), .O(data_index_8__N_213[0]));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_386_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12985_3_lut (.I0(buf_cfgRTD[0]), .I1(n14_adj_1524), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15384));   // zim_main.vhd(560[3] 865[10])
    defparam i12985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n21867), .I2(n6917), 
            .I3(comm_state[2]), .O(n22794));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_cmd_6__I_0_407_i13_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12), .O(n13_adj_1485));   // zim_main.vhd(795[11:20])
    defparam comm_cmd_6__I_0_407_i13_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13003_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n6180), 
            .I3(ICE_GPMO_1), .O(n15402));   // spi_slave.vhd(47[3] 84[10])
    defparam i13003_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i17398_1_lut (.I0(clk_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15_adj_1511));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17398_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i13056_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n9210), .I3(n12690), .O(n15455));   // zim_main.vhd(560[3] 865[10])
    defparam i13056_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13006_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(ICE_GPMO_1), .O(n15405));   // spi_slave.vhd(47[3] 84[10])
    defparam i13006_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i19750_2_lut (.I0(n12000), .I1(eis_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n14974));
    defparam i19750_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19758_4_lut (.I0(tacadc_rst), .I1(eis_state[0]), .I2(eis_state[1]), 
            .I3(eis_state[2]), .O(n12000));
    defparam i19758_4_lut.LUT_INIT = 16'h0105;
    SB_LUT4 i17413_1_lut (.I0(cs_mask_cnt[0]), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15));   // zim_main.vhd(574[20:31])
    defparam i17413_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i18_3_lut_adj_278 (.I0(eis_state[0]), .I1(eis_state[2]), .I2(eis_state[1]), 
            .I3(ICE_GPMO_1), .O(n12_adj_1533));
    defparam i18_3_lut_adj_278.LUT_INIT = 16'hacac;
    SB_LUT4 i13023_3_lut_4_lut (.I0(buf_dds0[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9210), .I3(n12612), .O(n15422));   // zim_main.vhd(560[3] 865[10])
    defparam i13023_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i19371_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n21581));
    defparam i19371_4_lut_4_lut.LUT_INIT = 16'hfd6d;
    SB_LUT4 i13055_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n9210), .I3(n12690), .O(n15454));   // zim_main.vhd(560[3] 865[10])
    defparam i13055_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13007_4_lut (.I0(eis_adc_trig_N_711), .I1(eis_adc_trig), .I2(tacadc_rst), 
            .I3(n12_adj_1533), .O(n15406));   // zim_main.vhd(444[3] 522[10])
    defparam i13007_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20177 (.I0(comm_cmd[0]), .I1(req_data_cnt[9]), 
            .I2(eis_stop), .I3(comm_cmd[1]), .O(n22788));
    defparam comm_cmd_0__bdd_4_lut_20177.LUT_INIT = 16'he4aa;
    SB_CARRY add_63_15 (.CI(n19867), .I0(data_cntvec[13]), .I1(ICE_GPMO_1), 
            .CO(n19868));
    SB_LUT4 i19746_4_lut (.I0(comm_state[3]), .I1(n21143), .I2(comm_state[0]), 
            .I3(n21101), .O(n23));
    defparam i19746_4_lut.LUT_INIT = 16'habbb;
    SB_LUT4 add_146_14_lut (.I0(n14_adj_1549), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19904), .O(data_idxvec_15__N_222[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_14_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_279 (.I0(cmd_rdadctmp_adj_1663[9]), .I1(cmd_rdadctmp_adj_1663[8]), 
            .I2(n12884), .I3(adc_state_adj_1662[0]), .O(n20894));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i19529_2_lut (.I0(n5), .I1(comm_state[0]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n21699));   // zim_main.vhd(577[4] 864[13])
    defparam i19529_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i11394_2_lut (.I0(eis_state[1]), .I1(eis_state[2]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(eis_adc_trig_N_711));   // zim_main.vhd(447[4] 521[13])
    defparam i11394_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19600_2_lut_3_lut (.I0(acadc_dtrig_i), .I1(acadc_dtrig_v), 
            .I2(eis_state[2]), .I3(ICE_GPMO_1), .O(n21814));
    defparam i19600_2_lut_3_lut.LUT_INIT = 16'h7070;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i4_3_lut (.I0(comm_state_3__N_415[2]), 
            .I1(comm_state_3__N_422[1]), .I2(comm_state[0]), .I3(ICE_GPMO_1), 
            .O(n4_adj_1553));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_2_i4_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i6_4_lut (.I0(n4_adj_1553), .I1(n21699), 
            .I2(comm_state[1]), .I3(comm_state_3__N_422[1]), .O(n6));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_2_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_374_Mux_2_i7_3_lut (.I0(n14436), .I1(n6), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n7_adj_1554));   // zim_main.vhd(577[4] 864[13])
    defparam comm_state_3__I_0_374_Mux_2_i7_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i17_4_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(ICE_GPMO_1), .O(n10_adj_1534));
    defparam i17_4_lut_3_lut.LUT_INIT = 16'h4242;
    SB_LUT4 i13054_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n9210), .I3(n12690), .O(n15453));   // zim_main.vhd(560[3] 865[10])
    defparam i13054_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_280 (.I0(n12579), .I1(comm_state[0]), .I2(comm_state[3]), 
            .I3(n9210), .O(n15010));   // zim_main.vhd(560[3] 865[10])
    defparam i1_4_lut_adj_280.LUT_INIT = 16'ha0a8;
    SB_LUT4 i1_3_lut_adj_281 (.I0(n12579), .I1(comm_state[3]), .I2(n10_adj_1534), 
            .I3(ICE_GPMO_1), .O(n12115));
    defparam i1_3_lut_adj_281.LUT_INIT = 16'ha8a8;
    SB_LUT4 cs_mask_cnt_1__I_0_i3_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(cs_mask_cnt_1__N_378));   // zim_main.vhd(550[27:40])
    defparam cs_mask_cnt_1__I_0_i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4045_3_lut (.I0(comm_index[2]), .I1(comm_index[1]), .I2(n6428), 
            .I3(ICE_GPMO_1), .O(comm_index_2__N_430[2]));   // zim_main.vhd(759[5] 769[12])
    defparam i4045_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i13053_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n9210), .I3(n12690), .O(n15452));   // zim_main.vhd(560[3] 865[10])
    defparam i13053_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i30_4_lut (.I0(AC_ADC_SYNC), .I1(n16900), .I2(eis_state[2]), 
            .I3(n21167), .O(n20406));   // zim_main.vhd(297[9:18])
    defparam i30_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 i13052_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n9210), .I3(n12690), .O(n15451));   // zim_main.vhd(560[3] 865[10])
    defparam i13052_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12531_3_lut (.I0(n12125), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(ICE_GPMO_1), .O(n14930));   // zim_main.vhd(560[3] 865[10])
    defparam i12531_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 mux_147_Mux_1_i30_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[2]), .O(n30_adj_1660));   // zim_main.vhd(633[5] 737[14])
    defparam mux_147_Mux_1_i30_4_lut.LUT_INIT = 16'hfd79;
    SB_LUT4 i1_4_lut_adj_282 (.I0(n12579), .I1(comm_state[1]), .I2(comm_state[3]), 
            .I3(n11653), .O(n12184));
    defparam i1_4_lut_adj_282.LUT_INIT = 16'ha0a8;
    SB_LUT4 THERMOSTAT_I_0_1_lut (.I0(THERMOSTAT), .I1(ICE_GPMO_1), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(THERMOSTAT_N_453));   // zim_main.vhd(606[24:38])
    defparam THERMOSTAT_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12001_3_lut (.I0(n22575), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14400));   // zim_main.vhd(577[4] 864[13])
    defparam i12001_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11997_3_lut (.I0(n22767), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14396));   // zim_main.vhd(577[4] 864[13])
    defparam i11997_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18858_3_lut (.I0(n22737), .I1(n22749), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21452));
    defparam i18858_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1588539_i1_3_lut (.I0(n21452), .I1(n22629), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1653));
    defparam i1588539_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11993_3_lut (.I0(n30_adj_1653), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14392));   // zim_main.vhd(577[4] 864[13])
    defparam i11993_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1589142_i1_3_lut (.I0(n22599), .I1(n22545), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1650));
    defparam i1589142_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_283 (.I0(comm_cmd[3]), .I1(n21187), .I2(n21200), 
            .I3(ICE_GPMO_1), .O(n10854));
    defparam i1_2_lut_3_lut_adj_283.LUT_INIT = 16'hfdfd;
    SB_LUT4 i14534_3_lut (.I0(n12012), .I1(eis_state[0]), .I2(TEST_LED), 
            .I3(ICE_GPMO_1), .O(n15407));   // zim_main.vhd(297[9:18])
    defparam i14534_3_lut.LUT_INIT = 16'h7272;
    SB_LUT4 i11989_3_lut (.I0(n30_adj_1650), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14388));   // zim_main.vhd(577[4] 864[13])
    defparam i11989_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_284 (.I0(n16900), .I1(n17826), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n20051));   // zim_main.vhd(444[3] 522[10])
    defparam i3_4_lut_adj_284.LUT_INIT = 16'h0200;
    SB_LUT4 mux_149_Mux_3_i16_3_lut (.I0(buf_dds0[3]), .I1(buf_dds1[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n16_adj_1627));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_3_i16_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18826_3_lut (.I0(n16_adj_1627), .I1(buf_adcdata_iac[11]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21420));
    defparam i18826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[11]), .I1(buf_adcdata_vdc[11]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1628));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18827_3_lut (.I0(n19_adj_1628), .I1(buf_readRTD[3]), .I2(comm_cmd[1]), 
            .I3(ICE_GPMO_1), .O(n21421));
    defparam i18827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_149_Mux_3_i26_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1629));   // zim_main.vhd(633[5] 737[14])
    defparam mux_149_Mux_3_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18830_4_lut (.I0(n26_adj_1629), .I1(buf_data_vac[23]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21424));
    defparam i18830_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i18829_3_lut (.I0(acadc_skipCount[3]), .I1(req_data_cnt[3]), 
            .I2(comm_cmd[1]), .I3(ICE_GPMO_1), .O(n21423));
    defparam i18829_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11985_3_lut (.I0(n22671), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14384));   // zim_main.vhd(577[4] 864[13])
    defparam i11985_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18807_3_lut (.I0(n22665), .I1(n22611), .I2(comm_cmd[2]), 
            .I3(ICE_GPMO_1), .O(n21401));
    defparam i18807_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1591353_i1_3_lut (.I0(n21401), .I1(n22605), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1642));
    defparam i1591353_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22788_bdd_4_lut (.I0(n22788), .I1(acadc_skipCount[9]), .I2(DDS_RNG_0), 
            .I3(comm_cmd[1]), .O(n21521));
    defparam n22788_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_adj_285 (.I0(n20051), .I1(eis_state[1]), .I2(eis_state[2]), 
            .I3(eis_state[0]), .O(n21135));
    defparam i1_4_lut_adj_285.LUT_INIT = 16'ha3af;
    SB_LUT4 i11981_3_lut (.I0(n30_adj_1642), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14380));   // zim_main.vhd(577[4] 864[13])
    defparam i11981_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12629_2_lut (.I0(n12226), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15023));   // zim_main.vhd(560[3] 865[10])
    defparam i12629_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_286 (.I0(comm_index[2]), .I1(comm_state[1]), .I2(n20041), 
            .I3(n19474), .O(n4_adj_1440));
    defparam i1_4_lut_adj_286.LUT_INIT = 16'h3733;
    SB_LUT4 i13051_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n9210), .I3(n12690), .O(n15450));   // zim_main.vhd(560[3] 865[10])
    defparam i13051_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_287 (.I0(n21207), .I1(n21145), .I2(n12357), .I3(n4_adj_1440), 
            .O(n12226));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'hc080;
    SB_LUT4 i11977_3_lut (.I0(n22701), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14376));   // zim_main.vhd(577[4] 864[13])
    defparam i11977_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1592559_i1_3_lut (.I0(n22821), .I1(n22653), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1637));
    defparam i1592559_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11973_3_lut (.I0(n30_adj_1637), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14372));   // zim_main.vhd(577[4] 864[13])
    defparam i11973_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1593162_i1_3_lut (.I0(n22809), .I1(n22689), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1633));
    defparam i1593162_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11969_3_lut (.I0(n30_adj_1633), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14368));   // zim_main.vhd(577[4] 864[13])
    defparam i11969_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11965_3_lut (.I0(n22761), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14364));   // zim_main.vhd(577[4] 864[13])
    defparam i11965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1594368_i1_3_lut (.I0(n22677), .I1(n22803), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1625));
    defparam i1594368_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13009_4_lut (.I0(eis_end), .I1(eis_state[2]), .I2(tacadc_rst), 
            .I3(n21135), .O(n15408));   // zim_main.vhd(444[3] 522[10])
    defparam i13009_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i11961_3_lut (.I0(n30_adj_1625), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14360));   // zim_main.vhd(577[4] 864[13])
    defparam i11961_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1594971_i1_3_lut (.I0(n22695), .I1(n22569), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1621));
    defparam i1594971_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11957_3_lut (.I0(n30_adj_1621), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14356));   // zim_main.vhd(577[4] 864[13])
    defparam i11957_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_148_Mux_2_i26_3_lut (.I0(data_cntvec[10]), .I1(data_idxvec[10]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n26_adj_1655));   // zim_main.vhd(633[5] 737[14])
    defparam mux_148_Mux_2_i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4038_2_lut_4_lut (.I0(comm_index[1]), .I1(comm_data_vld), .I2(comm_state_3__N_422[1]), 
            .I3(comm_index[0]), .O(comm_index_2__N_430[1]));   // zim_main.vhd(759[5] 769[12])
    defparam i4038_2_lut_4_lut.LUT_INIT = 16'ha6aa;
    SB_LUT4 i18791_4_lut (.I0(n26_adj_1655), .I1(buf_data_vac[37]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n21385));
    defparam i18791_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_4_lut_adj_288 (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(n9210), .O(n21101));
    defparam i1_2_lut_4_lut_adj_288.LUT_INIT = 16'h00fd;
    SB_LUT4 i1595574_i1_3_lut (.I0(n22551), .I1(n22785), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1616));
    defparam i1595574_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11953_3_lut (.I0(n30_adj_1616), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14352));   // zim_main.vhd(577[4] 864[13])
    defparam i11953_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12636_2_lut (.I0(n12266), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15030));   // zim_main.vhd(560[3] 865[10])
    defparam i12636_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_146_14 (.CI(n19904), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19905));
    SB_LUT4 i13010_3_lut (.I0(DDS_MOSI), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(ICE_GPMO_1), .O(n15409));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_422[1]), 
            .I2(ICE_GPMO_1), .I3(ICE_GPMO_1), .O(n6599));   // zim_main.vhd(550[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut_adj_289 (.I0(dds0_mclk), .I1(dds0_mclkcnt[6]), .I2(n21090), 
            .I3(ICE_GPMO_1), .O(dds0_mclk_N_702));
    defparam i1_3_lut_adj_289.LUT_INIT = 16'ha6a6;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n12601), 
            .D(n21383), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i19684_4_lut (.I0(comm_index[2]), .I1(comm_index[0]), .I2(comm_index[1]), 
            .I3(n19465), .O(n21580));
    defparam i19684_4_lut.LUT_INIT = 16'h0400;
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n12601), 
            .D(n21395), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n12601), 
            .D(n22563), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n12601), 
            .D(n21428), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13011_3_lut (.I0(DDS_RNG_0), .I1(n14_adj_1552), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15410));   // zim_main.vhd(560[3] 865[10])
    defparam i13011_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n12601), 
            .D(n21431), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13012_3_lut (.I0(SELIRNG0), .I1(n14_adj_1551), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15411));   // zim_main.vhd(560[3] 865[10])
    defparam i13012_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n12601), 
            .D(n21437), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_20157 (.I0(comm_cmd[1]), .I1(n26_adj_1615), 
            .I2(n21540), .I3(comm_cmd[2]), .O(n22782));
    defparam comm_cmd_1__bdd_4_lut_20157.LUT_INIT = 16'he4aa;
    SB_LUT4 i13013_3_lut (.I0(SELIRNG1), .I1(n14_adj_1550), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15412));   // zim_main.vhd(560[3] 865[10])
    defparam i13013_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n12601), 
            .D(n21446), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13014_3_lut (.I0(buf_control[4]), .I1(n14_adj_1549), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15413));   // zim_main.vhd(560[3] 865[10])
    defparam i13014_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n12485), 
            .D(n14236), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13015_3_lut (.I0(AMPV_POW), .I1(n14_adj_1555), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15414));   // zim_main.vhd(560[3] 865[10])
    defparam i13015_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i45_4_lut (.I0(n21581), .I1(n21580), .I2(comm_state[1]), .I3(comm_state_3__N_415[2]), 
            .O(n20));
    defparam i45_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_290 (.I0(comm_state[0]), .I1(n21145), .I2(n21207), 
            .I3(n20), .O(n12266));
    defparam i1_4_lut_adj_290.LUT_INIT = 16'hc4c0;
    SB_LUT4 i1_4_lut_adj_291 (.I0(n9), .I1(comm_state[3]), .I2(n9210), 
            .I3(n21219), .O(n12180));
    defparam i1_4_lut_adj_291.LUT_INIT = 16'hc0c4;
    SB_LUT4 i13016_3_lut (.I0(buf_control[6]), .I1(n14_adj_1523), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15415));   // zim_main.vhd(560[3] 865[10])
    defparam i13016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13017_3_lut (.I0(buf_dds0[1]), .I1(n14_adj_1529), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15416));   // zim_main.vhd(560[3] 865[10])
    defparam i13017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13018_3_lut (.I0(buf_dds0[2]), .I1(n14_adj_1528), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15417));   // zim_main.vhd(560[3] 865[10])
    defparam i13018_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_adj_292 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(n11647), .I3(n21169), .O(n10790));   // zim_main.vhd(822[11:20])
    defparam i1_3_lut_4_lut_adj_292.LUT_INIT = 16'h0200;
    SB_LUT4 i1596177_i1_3_lut (.I0(n22587), .I1(n22839), .I2(comm_cmd[3]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1612));
    defparam i1596177_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_147_Mux_0_i30_4_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[3]), .O(n30_adj_1516));   // zim_main.vhd(633[5] 737[14])
    defparam mux_147_Mux_0_i30_4_lut_4_lut.LUT_INIT = 16'h097a;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n12485), 
            .D(n14240), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n12485), 
            .D(n14244), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i11949_3_lut (.I0(n30_adj_1612), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14348));   // zim_main.vhd(577[4] 864[13])
    defparam i11949_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_1_i19_3_lut (.I0(buf_adcdata_vac[1]), .I1(buf_adcdata_vdc[1]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1604));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_1_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13019_3_lut (.I0(buf_dds0[3]), .I1(n14_adj_1557), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15418));   // zim_main.vhd(560[3] 865[10])
    defparam i13019_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n12485), 
            .D(n14248), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13002_3_lut_4_lut (.I0(dds_state_adj_1686[2]), .I1(DDS_SCK1), 
            .I2(dds_state_adj_1686[1]), .I3(dds_state_adj_1686[0]), .O(n15401));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13002_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n12485), 
            .D(n14252), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n12485), 
            .D(n14256), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n12485), 
            .D(n14260), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13020_3_lut (.I0(buf_dds0[4]), .I1(n14_adj_1527), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15419));   // zim_main.vhd(560[3] 865[10])
    defparam i13020_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n12431), 
            .D(n14264), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n12431), 
            .D(n14268), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 mux_150_Mux_1_i22_3_lut (.I0(buf_adcdata_iac[1]), .I1(n19_adj_1604), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1605));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_1_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n12431), 
            .D(n14272), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n12431), 
            .D(n14276), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13021_3_lut (.I0(buf_dds0[5]), .I1(n14_adj_1556), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15420));   // zim_main.vhd(560[3] 865[10])
    defparam i13021_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n12431), 
            .D(n14280), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n12431), 
            .D(n14284), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13001_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n15400));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i13001_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i13022_3_lut (.I0(buf_dds0[6]), .I1(n14_adj_1526), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15421));   // zim_main.vhd(560[3] 865[10])
    defparam i13022_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n12431), 
            .D(n14288), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n12401), 
            .D(n14292), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n12401), 
            .D(n14296), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 mux_150_Mux_1_i30_3_lut (.I0(n22_adj_1605), .I1(buf_data_vac[3]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1606));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_1_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n12401), 
            .D(n14300), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 n22782_bdd_4_lut (.I0(n22782), .I1(req_data_cnt[6]), .I2(acadc_skipCount[6]), 
            .I3(comm_cmd[2]), .O(n22785));
    defparam n22782_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n12401), 
            .D(n14304), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state_adj_1662[1]), .I1(acadc_dtrig_v), 
            .I2(DTRIG_N_851_adj_1477), .I3(adc_state_adj_1662[0]), .O(n20670));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hcce8;
    SB_LUT4 i13024_3_lut (.I0(buf_dds0[8]), .I1(n14_adj_1524), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15423));   // zim_main.vhd(560[3] 865[10])
    defparam i13024_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11945_3_lut (.I0(n30_adj_1606), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14344));   // zim_main.vhd(577[4] 864[13])
    defparam i11945_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n12401), 
            .D(n14308), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20148 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[5]), 
            .I2(buf_readRTD[13]), .I3(comm_cmd[1]), .O(n22776));
    defparam comm_cmd_0__bdd_4_lut_20148.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n12401), 
            .D(n14312), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n12401), 
            .D(n14316), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i13025_3_lut (.I0(buf_dds0[9]), .I1(n14_adj_1552), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15424));   // zim_main.vhd(560[3] 865[10])
    defparam i13025_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n12359), 
            .D(n14320), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n12359), 
            .D(n14324), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n12359), 
            .D(n14328), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n12359), 
            .D(n14332), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n12359), 
            .D(n14336), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n12359), 
            .D(n14340), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n12359), 
            .D(n14344), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n12266), 
            .D(n14348), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 n22776_bdd_4_lut (.I0(n22776), .I1(buf_adcdata_vdc[21]), .I2(buf_adcdata_vac[21]), 
            .I3(comm_cmd[1]), .O(n21388));
    defparam n22776_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13026_3_lut (.I0(buf_dds0[10]), .I1(n14_adj_1551), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15425));   // zim_main.vhd(560[3] 865[10])
    defparam i13026_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_293 (.I0(adc_state_adj_1662[1]), .I1(VAC_SCLK), 
            .I2(DTRIG_N_851_adj_1477), .I3(adc_state_adj_1662[0]), .O(n20668));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_293.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_4_lut_4_lut_adj_294 (.I0(adc_state[1]), .I1(acadc_dtrig_i), 
            .I2(DTRIG_N_851), .I3(adc_state[0]), .O(n20666));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_294.LUT_INIT = 16'hcce8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20138 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[2]), 
            .I2(buf_readRTD[10]), .I3(comm_cmd[1]), .O(n22770));
    defparam comm_cmd_0__bdd_4_lut_20138.LUT_INIT = 16'he4aa;
    SB_LUT4 i13027_3_lut (.I0(buf_dds0[11]), .I1(n14_adj_1550), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15426));   // zim_main.vhd(560[3] 865[10])
    defparam i13027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22770_bdd_4_lut (.I0(n22770), .I1(buf_adcdata_vdc[18]), .I2(buf_adcdata_vac[18]), 
            .I3(comm_cmd[1]), .O(n21391));
    defparam n22770_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_adj_295 (.I0(adc_state[1]), .I1(IAC_SCLK), .I2(DTRIG_N_851), 
            .I3(adc_state[0]), .O(n20664));   // adc_ads127.vhd(45[3] 100[10])
    defparam i1_4_lut_4_lut_adj_295.LUT_INIT = 16'hc4d8;
    SB_LUT4 mux_150_Mux_2_i19_3_lut (.I0(buf_adcdata_vac[2]), .I1(buf_adcdata_vdc[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1600));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_2_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n12266), 
            .D(n14352), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_4_lut_adj_296 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(comm_state[0]), .O(n20054));
    defparam i1_2_lut_4_lut_adj_296.LUT_INIT = 16'h0010;
    SB_LUT4 i1_3_lut_4_lut_adj_297 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(comm_state[0]), .O(n21197));   // zim_main.vhd(822[11:20])
    defparam i1_3_lut_4_lut_adj_297.LUT_INIT = 16'hfffd;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(n22623), .I2(n21385), 
            .I3(comm_cmd[3]), .O(n22764));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i13028_3_lut (.I0(buf_dds0[12]), .I1(n14_adj_1549), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15427));   // zim_main.vhd(560[3] 865[10])
    defparam i13028_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n12266), 
            .D(n14356), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_62_5_lut (.I0(ICE_GPMO_1), .I1(data_count[3]), .I2(ICE_GPMO_1), 
            .I3(n19849), .O(n370)) /* synthesis syn_instantiated=1 */ ;
    defparam add_62_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n12266), 
            .D(n14360), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n12266), 
            .D(n14364), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n12266), 
            .D(n14368), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 mux_150_Mux_2_i22_3_lut (.I0(buf_adcdata_iac[2]), .I1(n19_adj_1600), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1601));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_2_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_2_i30_3_lut (.I0(n22_adj_1601), .I1(buf_data_vac[5]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1602));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_2_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11941_3_lut (.I0(n30_adj_1602), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14340));   // zim_main.vhd(577[4] 864[13])
    defparam i11941_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22764_bdd_4_lut (.I0(n22764), .I1(n21391), .I2(n22641), .I3(comm_cmd[3]), 
            .O(n22767));
    defparam n22764_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_150_Mux_3_i19_3_lut (.I0(buf_adcdata_vac[3]), .I1(buf_adcdata_vdc[3]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1596));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_3_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n12266), 
            .D(n14372), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n12226), 
            .D(n14376), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n12226), 
            .D(n14380), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n12226), 
            .D(n14384), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 comm_cmd_2__bdd_4_lut_20128 (.I0(comm_cmd[2]), .I1(n21423), 
            .I2(n21424), .I3(comm_cmd[3]), .O(n22758));
    defparam comm_cmd_2__bdd_4_lut_20128.LUT_INIT = 16'he4aa;
    SB_LUT4 i13029_3_lut (.I0(buf_dds0[13]), .I1(n14_adj_1555), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15428));   // zim_main.vhd(560[3] 865[10])
    defparam i13029_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_3_i22_3_lut (.I0(buf_adcdata_iac[3]), .I1(n19_adj_1596), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1597));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_3_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_6__I_0_i13_2_lut_3_lut (.I0(n9_adj_1519), .I1(comm_cmd[3]), 
            .I2(n21187), .I3(ICE_GPMO_1), .O(n13));   // zim_main.vhd(800[11:20])
    defparam comm_cmd_6__I_0_i13_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i13030_3_lut (.I0(buf_dds0[14]), .I1(n14_adj_1523), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15429));   // zim_main.vhd(560[3] 865[10])
    defparam i13030_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22758_bdd_4_lut (.I0(n22758), .I1(n21421), .I2(n21420), .I3(comm_cmd[3]), 
            .O(n22761));
    defparam n22758_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_4_lut_adj_298 (.I0(comm_state[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[0]), .O(n21200));   // zim_main.vhd(577[4] 864[13])
    defparam i1_2_lut_4_lut_adj_298.LUT_INIT = 16'hffbf;
    SB_LUT4 add_146_13_lut (.I0(n14_adj_1550), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19903), .O(data_idxvec_15__N_222[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_13_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n12226), 
            .D(n14388), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 add_63_14_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[12]), .I2(ICE_GPMO_1), 
            .I3(n19866), .O(n379)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 eis_state_1__bdd_4_lut (.I0(eis_state[1]), .I1(n21814), .I2(n16906), 
            .I3(eis_state[0]), .O(n22752));
    defparam eis_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_150_Mux_3_i30_3_lut (.I0(n22_adj_1597), .I1(buf_data_vac[7]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1598));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_3_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n12226), 
            .D(n14392), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n12226), 
            .D(n14396), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n12226), 
            .D(n14400), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_4_lut_adj_299 (.I0(n13_adj_1485), .I1(comm_state[3]), .I2(n9210), 
            .I3(comm_state[0]), .O(n12612));
    defparam i1_4_lut_adj_299.LUT_INIT = 16'hc0c4;
    SB_DFFESR buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .E(n12184), 
            .D(THERMOSTAT_N_453), .R(n5978));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12435_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(ICE_GPMO_1), .O(n1_adj_1565));   // zim_main.vhd(577[4] 864[13])
    defparam i12435_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i13031_3_lut (.I0(buf_dds0[15]), .I1(n14_adj_1522), .I2(n12612), 
            .I3(ICE_GPMO_1), .O(n15430));   // zim_main.vhd(560[3] 865[10])
    defparam i13031_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n12125), 
            .D(n30_adj_1660), .R(n14930));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i11937_3_lut (.I0(n30_adj_1598), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14336));   // zim_main.vhd(577[4] 864[13])
    defparam i11937_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13050_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n9210), .I3(n12690), .O(n15449));   // zim_main.vhd(560[3] 865[10])
    defparam i13050_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_150_Mux_4_i19_3_lut (.I0(buf_adcdata_vac[4]), .I1(buf_adcdata_vdc[4]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1593));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_4_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_4_i22_3_lut (.I0(buf_adcdata_iac[4]), .I1(n19_adj_1593), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1594));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_4_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_4_i30_3_lut (.I0(n22_adj_1594), .I1(buf_data_vac[9]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1595));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_4_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11933_3_lut (.I0(n30_adj_1595), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14332));   // zim_main.vhd(577[4] 864[13])
    defparam i11933_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_5_i19_3_lut (.I0(buf_adcdata_vac[5]), .I1(buf_adcdata_vdc[5]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1590));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_5_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_5_i22_3_lut (.I0(buf_adcdata_iac[5]), .I1(n19_adj_1590), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1591));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_5_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18672_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(ICE_GPMO_1), .O(n21263));
    defparam i18672_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 mux_150_Mux_5_i30_3_lut (.I0(n22_adj_1591), .I1(buf_data_vac[11]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1592));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_5_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13032_3_lut (.I0(IAC_OSR1), .I1(n14_adj_1552), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15431));   // zim_main.vhd(560[3] 865[10])
    defparam i13032_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n12115), 
            .D(comm_index_2__N_430[2]), .R(n15010));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n12115), 
            .D(comm_index_2__N_430[1]), .R(n15010));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n21145));
    defparam i1_2_lut_3_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i13033_3_lut (.I0(IAC_FLT0), .I1(n14_adj_1551), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15432));   // zim_main.vhd(560[3] 865[10])
    defparam i13033_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n23), 
            .D(n7_adj_1554), .R(comm_state[3]));   // zim_main.vhd(560[3] 865[10])
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n12021), 
            .D(n391), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    ADC_ADS1252 ADC_VDC (.\adc_state[2] (adc_state_adj_1709[2]), .\adc_state[3] (adc_state_adj_1709[3]), 
            .\adc_state_3__N_1270[0] (VDC_SDO), .GND_net(ICE_GPMO_1), .VCC_net(VCC_net), 
            .\cmd_rdadcbuf[34] (cmd_rdadcbuf[34]), .n13390(n13390), .cmd_rdadctmp({Open_0, 
            cmd_rdadctmp_adj_1710[22:0]}), .\cmd_rdadcbuf[33] (cmd_rdadcbuf[33]), 
            .\buf_adcdata_vac[23] (buf_adcdata_vac[23]), .\cmd_rdadctmp[31] (cmd_rdadctmp_adj_1663[31]), 
            .n10690(n10690), .n15520(n15520), .\cmd_rdadcbuf[32] (cmd_rdadcbuf[32]), 
            .\cmd_rdadcbuf[31] (cmd_rdadcbuf[31]), .\cmd_rdadcbuf[30] (cmd_rdadcbuf[30]), 
            .\cmd_rdadcbuf[29] (cmd_rdadcbuf[29]), .\cmd_rdadcbuf[28] (cmd_rdadcbuf[28]), 
            .\cmd_rdadcbuf[27] (cmd_rdadcbuf[27]), .VDC_CLK(VDC_CLK), .n20350(n20350), 
            .n20352(n20352), .n20354(n20354), .n20356(n20356), .n20358(n20358), 
            .n20360(n20360), .n20362(n20362), .n20364(n20364), .n20366(n20366), 
            .n20368(n20368), .n20370(n20370), .n20372(n20372), .n20374(n20374), 
            .n20376(n20376), .n20378(n20378), .n20380(n20380), .n20382(n20382), 
            .n20384(n20384), .n20386(n20386), .n20388(n20388), .n20390(n20390), 
            .\cmd_rdadcbuf[26] (cmd_rdadcbuf[26]), .n20392(n20392), .n20542(n20542), 
            .buf_adcdata_vdc({buf_adcdata_vdc}), .n20544(n20544), .n20552(n20552), 
            .n20554(n20554), .\cmd_rdadcbuf[25] (cmd_rdadcbuf[25]), .n11937(n11937), 
            .n20556(n20556), .n20558(n20558), .n20560(n20560), .n20562(n20562), 
            .n20564(n20564), .n20566(n20566), .n20568(n20568), .n20570(n20570), 
            .n20572(n20572), .n20574(n20574), .n20576(n20576), .n20578(n20578), 
            .n20580(n20580), .n20582(n20582), .n20584(n20584), .n20586(n20586), 
            .n20588(n20588), .n20590(n20590), .n20592(n20592), .\cmd_rdadcbuf[24] (cmd_rdadcbuf[24]), 
            .\cmd_rdadcbuf[23] (cmd_rdadcbuf[23]), .\cmd_rdadcbuf[22] (cmd_rdadcbuf[22]), 
            .\cmd_rdadcbuf[21] (cmd_rdadcbuf[21]), .\cmd_rdadcbuf[20] (cmd_rdadcbuf[20]), 
            .\cmd_rdadcbuf[19] (cmd_rdadcbuf[19]), .\cmd_rdadcbuf[18] (cmd_rdadcbuf[18]), 
            .VDC_SCLK(VDC_SCLK), .\cmd_rdadcbuf[17] (cmd_rdadcbuf[17]), 
            .\cmd_rdadcbuf[16] (cmd_rdadcbuf[16]), .\cmd_rdadcbuf[15] (cmd_rdadcbuf[15]), 
            .\cmd_rdadcbuf[14] (cmd_rdadcbuf[14]), .\cmd_rdadcbuf[13] (cmd_rdadcbuf[13]), 
            .\cmd_rdadcbuf[12] (cmd_rdadcbuf[12]), .\cmd_rdadcbuf[11] (cmd_rdadcbuf[11]), 
            .n20640(n20640), .clk_16MHz(clk_16MHz));   // zim_main.vhd(954[12:23])
    SB_LUT4 i12_4_lut_adj_300 (.I0(read_buf[5]), .I1(read_buf[4]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20468));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_300.LUT_INIT = 16'hca0a;
    SB_LUT4 i11929_3_lut (.I0(n30_adj_1592), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14328));   // zim_main.vhd(577[4] 864[13])
    defparam i11929_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_6_i19_3_lut (.I0(buf_adcdata_vac[6]), .I1(buf_adcdata_vdc[6]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1587));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_6_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_301 (.I0(comm_data_vld), .I1(comm_state_3__N_422[1]), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(n4_adj_1484));   // zim_main.vhd(608[5] 616[12])
    defparam i1_2_lut_3_lut_4_lut_adj_301.LUT_INIT = 16'hfdff;
    SB_LUT4 mux_150_Mux_6_i22_3_lut (.I0(buf_adcdata_iac[6]), .I1(n19_adj_1587), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1588));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_6_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_6_i30_3_lut (.I0(n22_adj_1588), .I1(buf_data_vac[13]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1589));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_6_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13034_3_lut (.I0(IAC_FLT1), .I1(n14_adj_1550), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15433));   // zim_main.vhd(560[3] 865[10])
    defparam i13034_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_302 (.I0(read_buf[4]), .I1(read_buf[3]), .I2(n11899), 
            .I3(n1_adj_1576), .O(n20464));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12_4_lut_adj_302.LUT_INIT = 16'hca0a;
    SB_LUT4 i13035_3_lut (.I0(VAC_OSR0), .I1(n14_adj_1549), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15434));   // zim_main.vhd(560[3] 865[10])
    defparam i13035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11925_3_lut (.I0(n30_adj_1589), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14324));   // zim_main.vhd(577[4] 864[13])
    defparam i11925_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13036_3_lut (.I0(VAC_OSR1), .I1(n14_adj_1555), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15435));   // zim_main.vhd(560[3] 865[10])
    defparam i13036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13037_3_lut (.I0(VAC_FLT0), .I1(n14_adj_1523), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15436));   // zim_main.vhd(560[3] 865[10])
    defparam i13037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_20133 (.I0(comm_cmd[0]), .I1(buf_cfgRTD[3]), 
            .I2(buf_readRTD[11]), .I3(comm_cmd[1]), .O(n22746));
    defparam comm_cmd_0__bdd_4_lut_20133.LUT_INIT = 16'he4aa;
    SB_LUT4 i12643_2_lut (.I0(n12359), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15037));   // zim_main.vhd(560[3] 865[10])
    defparam i12643_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 n22746_bdd_4_lut (.I0(n22746), .I1(buf_adcdata_vdc[19]), .I2(buf_adcdata_vac[19]), 
            .I3(comm_cmd[1]), .O(n22749));
    defparam n22746_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i46_3_lut (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(ICE_GPMO_1), .O(n30_adj_1654));
    defparam i46_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i19378_4_lut (.I0(n30_adj_1654), .I1(comm_state_3__N_415[2]), 
            .I2(n10977), .I3(comm_cmd[3]), .O(n21584));
    defparam i19378_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i1_4_lut_adj_303 (.I0(n12), .I1(comm_state[3]), .I2(n9210), 
            .I3(n21197), .O(n11759));
    defparam i1_4_lut_adj_303.LUT_INIT = 16'hc0c4;
    SB_LUT4 i45_4_lut_adj_304 (.I0(n21584), .I1(n4_adj_1569), .I2(comm_state[1]), 
            .I3(comm_index[0]), .O(n22_adj_1659));
    defparam i45_4_lut_adj_304.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_305 (.I0(eis_state[2]), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(ICE_GPMO_1), .O(n16906));   // zim_main.vhd(444[3] 522[10])
    defparam i1_2_lut_3_lut_adj_305.LUT_INIT = 16'hbfbf;
    SB_LUT4 i13038_3_lut (.I0(VAC_FLT1), .I1(n14_adj_1522), .I2(n11759), 
            .I3(ICE_GPMO_1), .O(n15437));   // zim_main.vhd(560[3] 865[10])
    defparam i13038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13039_3_lut (.I0(buf_cfgRTD[1]), .I1(n14_adj_1552), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15438));   // zim_main.vhd(560[3] 865[10])
    defparam i13039_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_306 (.I0(comm_state[0]), .I1(n21145), .I2(n21207), 
            .I3(n22_adj_1659), .O(n12359));
    defparam i1_4_lut_adj_306.LUT_INIT = 16'hc4c0;
    SB_LUT4 i1_2_lut_3_lut_adj_307 (.I0(comm_cmd[0]), .I1(comm_cmd[3]), 
            .I2(n21187), .I3(ICE_GPMO_1), .O(n11647));   // zim_main.vhd(827[11:20])
    defparam i1_2_lut_3_lut_adj_307.LUT_INIT = 16'hf7f7;
    SB_LUT4 i13049_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n9210), .I3(n12690), .O(n15448));   // zim_main.vhd(560[3] 865[10])
    defparam i13049_3_lut_4_lut.LUT_INIT = 16'h0caa;
    GND i1 (.Y(ICE_GPMO_1));
    SB_LUT4 i13040_3_lut (.I0(buf_cfgRTD[2]), .I1(n14_adj_1551), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15439));   // zim_main.vhd(560[3] 865[10])
    defparam i13040_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_150_Mux_7_i19_3_lut (.I0(buf_adcdata_vac[7]), .I1(buf_adcdata_vdc[7]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n19_adj_1580));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_7_i19_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13048_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n9210), .I3(n12690), .O(n15447));   // zim_main.vhd(560[3] 865[10])
    defparam i13048_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_150_Mux_7_i22_3_lut (.I0(buf_adcdata_iac[7]), .I1(n19_adj_1580), 
            .I2(comm_cmd[2]), .I3(ICE_GPMO_1), .O(n22_adj_1581));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_7_i22_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n12021), 
            .D(n373), .R(n14991));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 mux_150_Mux_7_i30_3_lut (.I0(n22_adj_1581), .I1(buf_data_vac[15]), 
            .I2(comm_cmd[3]), .I3(ICE_GPMO_1), .O(n30_adj_1582));   // zim_main.vhd(633[5] 737[14])
    defparam mux_150_Mux_7_i30_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13041_3_lut (.I0(buf_cfgRTD[3]), .I1(n14_adj_1550), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15440));   // zim_main.vhd(560[3] 865[10])
    defparam i13041_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESS cs_mask_cnt_3911__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n12001), 
            .D(n15), .S(n14990));   // zim_main.vhd(574[20:31])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n12000), .D(n436), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_20114 (.I0(comm_cmd[0]), .I1(IAC_FLT1), 
            .I2(buf_adcdata_iac[19]), .I3(comm_cmd[1]), .O(n22734));
    defparam comm_cmd_0__bdd_4_lut_20114.LUT_INIT = 16'he4aa;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n12000), .D(n435), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n12000), .D(n434), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n12000), .D(n433), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n12000), .D(n432), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n12000), .D(n431), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n12000), .D(n430), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n12000), .D(n429), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 n22734_bdd_4_lut (.I0(n22734), .I1(buf_dds1[11]), .I2(buf_dds0[11]), 
            .I3(comm_cmd[1]), .O(n22737));
    defparam n22734_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n12000), .D(n428), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n12000), .D(n427), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n12000), .D(n426), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i2_3_lut_4_lut (.I0(n9210), .I1(n21169), .I2(n5964), .I3(n13_adj_1485), 
            .O(n9_adj_1617));   // zim_main.vhd(577[4] 864[13])
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n22728));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFSR clk_cnt_3907_3908__i1 (.Q(clk_cnt[0]), .C(clk_16MHz), .D(n15_adj_1511), 
            .R(n17839));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n12000), .D(n440), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n12000), .D(n439), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i11921_3_lut (.I0(n30_adj_1582), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14320));   // zim_main.vhd(577[4] 864[13])
    defparam i11921_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n12000), .D(n438), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n12000), .D(n437), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i13042_3_lut (.I0(buf_cfgRTD[4]), .I1(n14_adj_1549), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15441));   // zim_main.vhd(560[3] 865[10])
    defparam i13042_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11917_3_lut (.I0(buf_data_vac[34]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14316));   // zim_main.vhd(577[4] 864[13])
    defparam i11917_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11913_3_lut (.I0(buf_data_vac[36]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14312));   // zim_main.vhd(577[4] 864[13])
    defparam i11913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_308 (.I0(eis_state[1]), .I1(acadc_dtrig_i), 
            .I2(acadc_dtrig_v), .I3(ICE_GPMO_1), .O(n40_adj_1517));   // zim_main.vhd(297[9:18])
    defparam i1_2_lut_3_lut_adj_308.LUT_INIT = 16'hbfbf;
    SB_CARRY add_146_13 (.CI(n19903), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19904));
    SB_LUT4 i13043_3_lut (.I0(buf_cfgRTD[5]), .I1(n14_adj_1555), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15442));   // zim_main.vhd(560[3] 865[10])
    defparam i13043_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22728_bdd_4_lut (.I0(n22728), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n22731));
    defparam n22728_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11909_3_lut (.I0(buf_data_vac[38]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14308));   // zim_main.vhd(577[4] 864[13])
    defparam i11909_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_146_12_lut (.I0(n14_adj_1551), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19902), .O(data_idxvec_15__N_222[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i13044_3_lut (.I0(buf_cfgRTD[6]), .I1(n14_adj_1523), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15443));   // zim_main.vhd(560[3] 865[10])
    defparam i13044_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_cfgRTD_i0 (.Q(buf_cfgRTD[0]), .C(clk_32MHz), .D(n15384));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_adj_309 (.I0(comm_cmd[3]), .I1(n21187), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n12));   // zim_main.vhd(808[11:20])
    defparam i1_2_lut_adj_309.LUT_INIT = 16'heeee;
    SB_LUT4 comm_cmd_1__bdd_4_lut_20143 (.I0(comm_cmd[1]), .I1(n21459), 
            .I2(n21460), .I3(comm_cmd[2]), .O(n22722));
    defparam comm_cmd_1__bdd_4_lut_20143.LUT_INIT = 16'he4aa;
    SB_LUT4 n22722_bdd_4_lut (.I0(n22722), .I1(n21442), .I2(n21441), .I3(comm_cmd[2]), 
            .O(n22725));
    defparam n22722_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_CARRY add_146_12 (.CI(n19902), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19903));
    SB_LUT4 i15663_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1527));   // zim_main.vhd(577[4] 864[13])
    defparam i15663_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_cmd_6__I_0_398_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n9));   // zim_main.vhd(814[11:20])
    defparam comm_cmd_6__I_0_398_i9_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i3_4_lut_adj_310 (.I0(acadc_skipCount[13]), .I1(acadc_skipCount[1]), 
            .I2(acadc_skipcnt[13]), .I3(acadc_skipcnt[1]), .O(n18_adj_1514));
    defparam i3_4_lut_adj_310.LUT_INIT = 16'h7bde;
    SB_LUT4 i15645_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1557));   // zim_main.vhd(577[4] 864[13])
    defparam i15645_2_lut_3_lut.LUT_INIT = 16'h0202;
    DDS_AD9837_U0 CLK_DDS (.dds_state({dds_state_adj_1686}), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .n20698(n20698), .VCC_net(VCC_net), .GND_net(ICE_GPMO_1), 
            .\bit_cnt[0] (bit_cnt_adj_1688[0]), .\tmp_buf[15] (tmp_buf_adj_1687[15]), 
            .trig_dds1(trig_dds1), .n15403(n15403), .DDS_MOSI1(DDS_MOSI1), 
            .n15401(n15401), .DDS_SCK1(DDS_SCK1), .buf_dds1({buf_dds1}), 
            .n16125(n16125), .n15162(n15162));   // zim_main.vhd(917[12:22])
    ADC_ADS127 ADC_VAC (.n20660(n20660), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1663}), 
            .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2_adj_1475), .drdy_prev(drdy_prev_adj_1476), 
            .\adc_state[0] (adc_state_adj_1662[0]), .VAC_DRDY(VAC_DRDY), 
            .n20690(n20690), .n20694(n20694), .eis_adc_trig(eis_adc_trig), 
            .DTRIG_N_851(DTRIG_N_851_adj_1477), .\adc_state[1] (adc_state_adj_1662[1]), 
            .GND_net(ICE_GPMO_1), .n15520(n15520), .buf_adcdata_vac({buf_adcdata_vac}), 
            .n15519(n15519), .n15518(n15518), .n15517(n15517), .n15516(n15516), 
            .n15515(n15515), .n15514(n15514), .n15513(n15513), .n15512(n15512), 
            .n15511(n15511), .n15510(n15510), .n15509(n15509), .n15508(n15508), 
            .n15507(n15507), .n15506(n15506), .n15505(n15505), .n15504(n15504), 
            .n15503(n15503), .n15502(n15502), .n15501(n15501), .n15500(n15500), 
            .n15499(n15499), .n15498(n15498), .n12884(n12884), .n20670(n20670), 
            .acadc_dtrig_v(acadc_dtrig_v), .n15398(n15398), .n20668(n20668), 
            .VAC_SCLK(VAC_SCLK), .n15396(n15396), .n20938(n20938), .n20936(n20936), 
            .n20780(n20780), .n12(n12_adj_1575), .VAC_CS(VAC_CS), .n20934(n20934), 
            .n21157(n21157), .n20932(n20932), .n20926(n20926), .n20924(n20924), 
            .n20922(n20922), .n20920(n20920), .n20918(n20918), .n20916(n20916), 
            .n20914(n20914), .n20912(n20912), .n20910(n20910), .n20908(n20908), 
            .n20906(n20906), .n20898(n20898), .n20896(n20896), .n20872(n20872), 
            .n20874(n20874), .n20882(n20882), .n20884(n20884), .n20886(n20886), 
            .n20888(n20888), .n20890(n20890), .n20892(n20892), .n20894(n20894), 
            .n10690(n10690));   // zim_main.vhd(893[12:22])
    SB_LUT4 i15664_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(ICE_GPMO_1), .O(n14_adj_1528));   // zim_main.vhd(577[4] 864[13])
    defparam i15664_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_4_lut_adj_311 (.I0(tacadc_rst), .I1(eis_adc_trig_N_711), 
            .I2(eis_state[0]), .I3(AC_ADC_SYNC), .O(n12012));   // zim_main.vhd(444[3] 522[10])
    defparam i1_3_lut_4_lut_adj_311.LUT_INIT = 16'h4440;
    zim_pll pll_main (.GND_net(ICE_GPMO_1), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_675(DDS_MCLK1));   // zim_main.vhd(868[13:20])
    SB_LUT4 comm_index_0__bdd_4_lut_20100 (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n22716));
    defparam comm_index_0__bdd_4_lut_20100.LUT_INIT = 16'he4aa;
    SB_LUT4 add_146_11_lut (.I0(n14_adj_1552), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19901), .O(data_idxvec_15__N_222[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_146_11_lut.LUT_INIT = 16'hA3AC;
    ADC_ADS127_U1 ADC_IAC (.drdy_sync2(drdy_sync2), .clk_32MHz(clk_32MHz), 
            .drdy_prev(drdy_prev), .\adc_state[0] (adc_state[0]), .IAC_DRDY(IAC_DRDY), 
            .eis_adc_trig(eis_adc_trig), .DTRIG_N_851(DTRIG_N_851), .\adc_state[1] (adc_state[1]), 
            .GND_net(ICE_GPMO_1), .n15497(n15497), .buf_adcdata_iac({buf_adcdata_iac}), 
            .n15496(n15496), .n15495(n15495), .n15494(n15494), .n15493(n15493), 
            .n15492(n15492), .n15491(n15491), .n15490(n15490), .n15489(n15489), 
            .n15488(n15488), .n15487(n15487), .n15486(n15486), .n15485(n15485), 
            .n15484(n15484), .n15483(n15483), .n15482(n15482), .n15481(n15481), 
            .n15480(n15480), .n15479(n15479), .n15478(n15478), .n15477(n15477), 
            .n15476(n15476), .n15475(n15475), .n20666(n20666), .acadc_dtrig_i(acadc_dtrig_i), 
            .n15393(n15393), .n20664(n20664), .IAC_SCLK(IAC_SCLK), .n15391(n15391), 
            .n20778(n20778), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), 
            .n12(n12_adj_1584), .IAC_CS(IAC_CS), .n21155(n21155), .n12762(n12762), 
            .n20796(n20796), .n20798(n20798), .n20800(n20800), .n20802(n20802), 
            .n20804(n20804), .n20806(n20806), .n20808(n20808), .n20810(n20810), 
            .n20814(n20814), .n20816(n20816), .n20818(n20818), .n20820(n20820), 
            .n20822(n20822), .n20824(n20824), .n20826(n20826), .n20828(n20828), 
            .n20834(n20834), .n20836(n20836), .n20838(n20838), .n20842(n20842), 
            .n20844(n20844), .n20848(n20848), .n20850(n20850), .n20852(n20852), 
            .n20854(n20854), .n20856(n20856), .n20858(n20858), .n20860(n20860), 
            .n20866(n20866), .n20868(n20868), .n20870(n20870), .n10660(n10660));   // zim_main.vhd(879[12:22])
    SB_LUT4 i1_4_lut_adj_312 (.I0(n12), .I1(comm_state[3]), .I2(n9210), 
            .I3(n21200), .O(n12660));
    defparam i1_4_lut_adj_312.LUT_INIT = 16'hc0c4;
    SB_LUT4 i11905_3_lut (.I0(buf_data_vac[40]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14304));   // zim_main.vhd(577[4] 864[13])
    defparam i11905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11901_3_lut (.I0(buf_data_vac[42]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14300));   // zim_main.vhd(577[4] 864[13])
    defparam i11901_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_63_14 (.CI(n19866), .I0(data_cntvec[12]), .I1(ICE_GPMO_1), 
            .CO(n19867));
    SB_LUT4 i11897_3_lut (.I0(buf_data_vac[44]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14296));   // zim_main.vhd(577[4] 864[13])
    defparam i11897_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n12601), 
            .D(n22593), .R(n15072));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n12485), 
            .D(n13889), .R(n15058));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i1_2_lut_3_lut_adj_313 (.I0(clk_RTD), .I1(clk_cnt[0]), .I2(clk_cnt[1]), 
            .I3(ICE_GPMO_1), .O(clk_RTD_N_709));
    defparam i1_2_lut_3_lut_adj_313.LUT_INIT = 16'h6a6a;
    SB_LUT4 n22716_bdd_4_lut (.I0(n22716), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n22719));
    defparam n22716_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n12431), 
            .D(n13885), .R(n15051));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n12401), 
            .D(n13881), .R(n15044));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n12359), 
            .D(n13877), .R(n15037));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n12266), 
            .D(n13873), .R(n15030));   // zim_main.vhd(560[3] 865[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n12226), 
            .D(n13869), .R(n15023));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12650_2_lut (.I0(n12401), .I1(comm_state[3]), .I2(ICE_GPMO_1), 
            .I3(ICE_GPMO_1), .O(n15044));   // zim_main.vhd(560[3] 865[10])
    defparam i12650_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n12125), 
            .D(n30_adj_1516), .R(n14930));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i19_4_lut_adj_314 (.I0(n10854), .I1(n4_adj_1569), .I2(comm_state[1]), 
            .I3(n25), .O(n12_adj_1571));
    defparam i19_4_lut_adj_314.LUT_INIT = 16'hc505;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n12115), 
            .D(comm_index_2__N_430[0]), .R(n15010));   // zim_main.vhd(560[3] 865[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n12000), .D(n441), .R(n14974));   // zim_main.vhd(444[3] 522[10])
    SB_LUT4 i13045_3_lut (.I0(buf_cfgRTD[7]), .I1(n14_adj_1522), .I2(n12660), 
            .I3(ICE_GPMO_1), .O(n15444));   // zim_main.vhd(560[3] 865[10])
    defparam i13045_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR wdtick_flag_315 (.Q(wdtick_flag), .C(clk_16MHz), .D(wdtick_flag_N_310), 
            .R(flagcntwd));   // zim_main.vhd(394[3] 405[10])
    DDS_AD9837 SIG_DDS (.buf_dds0({buf_dds0}), .dds_state({dds_state}), 
            .clk_32MHz(clk_32MHz), .DDS_CS(DDS_CS), .trig_dds0(trig_dds0), 
            .n20696(n20696), .VCC_net(VCC_net), .GND_net(ICE_GPMO_1), 
            .\bit_cnt[0] (bit_cnt_adj_1684[0]), .\tmp_buf[15] (tmp_buf[15]), 
            .n15409(n15409), .DDS_MOSI(DDS_MOSI), .n15400(n15400), .DDS_SCK(DDS_SCK), 
            .n16128(n16128), .n15157(n15157));   // zim_main.vhd(907[12:22])
    SB_DFF buf_device_acadc_i1 (.Q(IAC_OSR0), .C(clk_32MHz), .D(n15383));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i2_3_lut_4_lut_adj_315 (.I0(tacadc_rst), .I1(eis_adc_trig_N_711), 
            .I2(iac_raw_buf_N_730), .I3(eis_state[0]), .O(iac_raw_buf_N_728));   // zim_main.vhd(444[3] 522[10])
    defparam i2_3_lut_4_lut_adj_315.LUT_INIT = 16'h4000;
    SB_LUT4 i1_3_lut_adj_316 (.I0(n12_adj_1571), .I1(n21145), .I2(n21207), 
            .I3(ICE_GPMO_1), .O(n12401));
    defparam i1_3_lut_adj_316.LUT_INIT = 16'hc8c8;
    SB_LUT4 i13046_3_lut (.I0(acadc_skipCount[1]), .I1(n14_adj_1529), .I2(n12690), 
            .I3(ICE_GPMO_1), .O(n15445));   // zim_main.vhd(560[3] 865[10])
    defparam i13046_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11893_3_lut (.I0(buf_data_vac[46]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14292));   // zim_main.vhd(577[4] 864[13])
    defparam i11893_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11889_3_lut (.I0(buf_data_vac[18]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14288));   // zim_main.vhd(577[4] 864[13])
    defparam i11889_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22752_bdd_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[0]), 
            .I2(n20406), .I3(n22752), .O(eis_state_2__N_169[0]));   // zim_main.vhd(444[3] 522[10])
    defparam n22752_bdd_4_lut_4_lut.LUT_INIT = 16'hfc11;
    SB_CARRY add_146_11 (.CI(n19901), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19902));
    SB_LUT4 add_63_13_lut (.I0(ICE_GPMO_1), .I1(data_cntvec[11]), .I2(ICE_GPMO_1), 
            .I3(n19865), .O(n380)) /* synthesis syn_instantiated=1 */ ;
    defparam add_63_13_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_dds0_i0 (.Q(buf_dds0[0]), .C(clk_32MHz), .D(n15382));   // zim_main.vhd(560[3] 865[10])
    SB_LUT4 i12982_3_lut (.I0(buf_control[0]), .I1(n14_adj_1524), .I2(n12180), 
            .I3(ICE_GPMO_1), .O(n15381));   // zim_main.vhd(560[3] 865[10])
    defparam i12982_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_207_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(ICE_GPMO_1), .O(n9_adj_1519));   // zim_main.vhd(814[11:20])
    defparam equal_207_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n15381));   // zim_main.vhd(560[3] 865[10])
    SB_DFFSR comm_clear_334__i4 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(n5967), 
            .R(n5978));   // zim_main.vhd(577[4] 864[13])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11968), 
            .D(eis_state_2__N_169[0]), .R(tacadc_rst));   // zim_main.vhd(444[3] 522[10])
    ADC_MAX31865 RTD (.RTD_CS(RTD_CS), .clk_RTD(clk_RTD), .RTD_SCLK(RTD_SCLK), 
            .\adc_state[2] (adc_state_adj_1706[2]), .n20184(n20184), .VCC_net(VCC_net), 
            .adress({Open_1, adress[6:1], Open_2}), .n1(n1_adj_1576), 
            .GND_net(ICE_GPMO_1), .n20186(n20186), .n20188(n20188), .n20190(n20190), 
            .n20192(n20192), .n20194(n20194), .buf_cfgRTD({buf_cfgRTD}), 
            .n20452(n20452), .read_buf({read_buf}), .n20456(n20456), .n20460(n20460), 
            .n20464(n20464), .n20468(n20468), .n20472(n20472), .n11899(n11899), 
            .n20476(n20476), .n20480(n20480), .n20484(n20484), .n20488(n20488), 
            .n20498(n20498), .n20502(n20502), .n20506(n20506), .n20510(n20510), 
            .n20512(n20512), .buf_readRTD({buf_readRTD}), .n20516(n20516), 
            .n20518(n20518), .n20520(n20520), .n20522(n20522), .n20524(n20524), 
            .n20526(n20526), .n20528(n20528), .n20530(n20530), .n20532(n20532), 
            .n20534(n20534), .n20536(n20536), .n20538(n20538), .n20540(n20540), 
            .n11903(n11903), .RTD_DRDY(RTD_DRDY), .n14779(n14779), .n13088(n13088), 
            .n20636(n20636), .n20638(n20638), .RTD_SDI(RTD_SDI), .\adress[0] (adress[0]));   // zim_main.vhd(940[8:20])
    SB_LUT4 i11885_3_lut (.I0(buf_data_vac[20]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(ICE_GPMO_1), .O(n14284));   // zim_main.vhd(577[4] 864[13])
    defparam i11885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13047_3_lut (.I0(acadc_skipCount[2]), .I1(n14_adj_1528), .I2(n12690), 
            .I3(ICE_GPMO_1), .O(n15446));   // zim_main.vhd(560[3] 865[10])
    defparam i13047_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (n6180, clk_32MHz, comm_data_vld, reset_int, VCC_net, 
            comm_rx_buf, ICE_SPI_MISO, GND_net, comm_tx_buf, n15405, 
            sclk_sync2, n15404, sclk_sync1, n15402);
    output n6180;
    input clk_32MHz;
    output comm_data_vld;
    input reset_int;
    input VCC_net;
    output [7:0]comm_rx_buf;
    output ICE_SPI_MISO;
    input GND_net;
    input [7:0]comm_tx_buf;
    input n15405;
    output sclk_sync2;
    input n15404;
    output sclk_sync1;
    input n15402;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire n21309, sclk_rising_pend, DATA_VLD_N_986, n15805, n15802;
    wire [7:0]data_tx;   // spi_slave.vhd(29[8:15])
    
    wire sclk_falling_pend_N_998, n6522, data_tx_7__N_944, n15799, data_tx_7__N_942, 
        n14903, n14902, n23211, n17374, n15796, data_tx_7__N_962;
    wire [7:0]n18;
    
    wire n14892, n14891, n14890, n15793, n15790, n15787, data_tx_7__N_943;
    wire [3:0]n27;
    
    wire n12003;
    wire [3:0]bit_cnt;   // spi_slave.vhd(27[8:15])
    
    wire n12006, sclk_falling_pend, n14898, data_tx_7__N_936, data_tx_7__N_956, 
        data_tx_7__N_940, n14899, n14896, n14906, data_tx_7__N_941, 
        n14895, data_tx_7__N_965, n19830, n14894, n14923, n14922, 
        n23205, n23223, data_tx_7__N_947, n14919, n14918, n23217, 
        n14907, n23214, n23220, n14911, n14910, n14915, n14914, 
        data_tx_7__N_937, data_tx_7__N_959, data_tx_7__N_950, data_tx_7__N_938, 
        data_tx_7__N_953, data_tx_7__N_939;
    
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n21309), 
            .D(n6180));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_986), 
            .R(reset_int));   // spi_slave.vhd(91[3] 100[10])
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15805));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15802));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i4202_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_998), 
            .I3(GND_net), .O(n6522));   // spi_slave.vhd(47[3] 84[10])
    defparam i4202_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15799));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_942));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12505_3_lut (.I0(n14903), .I1(n14902), .I2(n23211), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14989_4_lut (.I0(comm_rx_buf[4]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[3]), .O(n15796));
    defparam i14989_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12494_3_lut (.I0(n14892), .I1(n14891), .I2(n14890), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12494_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15796));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15793));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15790));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15787));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_943));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_DFFER bit_cnt_3912__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12003), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n12006), .D(sclk_falling_pend_N_998));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i7_12499_12500_set (.Q(n14898), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_940));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS data_tx_i0_i0_12492_12493_set (.Q(n14891), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_943));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i1_12503_12504_reset (.Q(n14903), .C(clk_32MHz), 
            .D(n18[1]), .R(data_tx_7__N_962));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i1_12503_12504_set (.Q(n14902), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_942));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i7_12499_12500_reset (.Q(n14899), .C(clk_32MHz), 
            .D(n18[7]), .R(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR MISO_92_12496_12497_reset (.Q(n14896), .C(clk_32MHz), .D(n6522), 
            .R(data_tx_7__N_944));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i2_12507_12508_set (.Q(n14906), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_941));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS MISO_92_12496_12497_set (.Q(n14895), .C(clk_32MHz), .D(n6522), 
            .S(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i17433_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n19830));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i17433_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i15681_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15681_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_DFFR data_tx_i0_i0_12492_12493_reset (.Q(n14892), .C(clk_32MHz), 
            .D(n18[0]), .R(data_tx_7__N_965));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12498_3_lut (.I0(n14896), .I1(n14895), .I2(n14894), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(47[3] 84[10])
    defparam i12498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12525_3_lut (.I0(n14923), .I1(n14922), .I2(n23205), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12525_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n15405));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n15404));   // spi_slave.vhd(47[3] 84[10])
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n15402));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12501_3_lut (.I0(n14899), .I1(n14898), .I2(n14894), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_936));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19819_4_lut_3_lut (.I0(n23223), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n23223));   // spi_slave.vhd(47[3] 84[10])
    defparam i19819_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_998), 
            .I3(sclk_sync2), .O(n12006));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_LUT4 i19741_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_998));   // spi_slave.vhd(67[4] 83[11])
    defparam i19741_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n17374));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n17374), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_986));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15491_2_lut_4_lut (.I0(n14892), .I1(n14891), .I2(n14890), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(47[3] 84[10])
    defparam i15491_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_LUT4 i15490_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15490_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i14991_4_lut (.I0(comm_rx_buf[7]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[6]), .O(n15787));
    defparam i14991_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14995_4_lut (.I0(comm_rx_buf[6]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[5]), .O(n15790));
    defparam i14995_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14987_4_lut (.I0(comm_rx_buf[5]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[4]), .O(n15793));
    defparam i14987_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14993_4_lut (.I0(comm_rx_buf[3]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[2]), .O(n15799));
    defparam i14993_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i14999_4_lut (.I0(comm_rx_buf[2]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[1]), .O(n15802));
    defparam i14999_4_lut.LUT_INIT = 16'haca0;
    SB_DFFER bit_cnt_3912__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12003), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i14997_4_lut (.I0(comm_rx_buf[1]), .I1(n17374), .I2(n6180), 
            .I3(comm_rx_buf[0]), .O(n15805));
    defparam i14997_4_lut.LUT_INIT = 16'haca0;
    SB_DFFER bit_cnt_3912__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12003), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_3912__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12003), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR data_tx_i0_i6_12523_12524_reset (.Q(n14923), .C(clk_32MHz), 
            .D(n18[6]), .R(data_tx_7__N_947));   // spi_slave.vhd(47[3] 84[10])
    SB_LUT4 i12521_3_lut (.I0(n14919), .I1(n14918), .I2(n23217), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12521_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_947));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15683_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n19830), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15683_4_lut.LUT_INIT = 16'h1222;
    SB_LUT4 i15682_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n19830), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15682_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i12509_3_lut (.I0(n14907), .I1(n14906), .I2(n23214), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12509_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_941));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19824_4_lut_3_lut (.I0(n23220), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n23220));   // spi_slave.vhd(47[3] 84[10])
    defparam i19824_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12513_3_lut (.I0(n14911), .I1(n14910), .I2(n23223), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12517_3_lut (.I0(n14915), .I1(n14914), .I2(n23220), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(47[3] 84[10])
    defparam i12517_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(47[3] 84[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19829_4_lut_3_lut (.I0(n23217), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n23217));   // spi_slave.vhd(47[3] 84[10])
    defparam i19829_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_937));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i19814_4_lut_3_lut (.I0(n23214), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n23214));   // spi_slave.vhd(47[3] 84[10])
    defparam i19814_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19839_4_lut_3_lut (.I0(n23211), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n23211));   // spi_slave.vhd(47[3] 84[10])
    defparam i19839_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i19809_4_lut_3_lut (.I0(n14890), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n14890));   // spi_slave.vhd(47[3] 84[10])
    defparam i19809_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19834_4_lut_3_lut (.I0(n23205), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n23205));   // spi_slave.vhd(47[3] 84[10])
    defparam i19834_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19804_4_lut_3_lut (.I0(n14894), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n14894));   // spi_slave.vhd(47[3] 84[10])
    defparam i19804_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i18715_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n21309));
    defparam i18715_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 i19737_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n6180));   // spi_slave.vhd(47[3] 84[10])
    defparam i19737_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_950));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_938));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n17374), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n12003));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h2f2f;
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_953));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_939));   // spi_slave.vhd(47[3] 84[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_DFFS data_tx_i0_i6_12523_12524_set (.Q(n14922), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_937));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i5_12519_12520_reset (.Q(n14919), .C(clk_32MHz), 
            .D(n18[5]), .R(data_tx_7__N_950));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i5_12519_12520_set (.Q(n14918), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_938));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i4_12515_12516_reset (.Q(n14915), .C(clk_32MHz), 
            .D(n18[4]), .R(data_tx_7__N_953));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i4_12515_12516_set (.Q(n14914), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_939));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i3_12511_12512_reset (.Q(n14911), .C(clk_32MHz), 
            .D(n18[3]), .R(data_tx_7__N_956));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFS data_tx_i0_i3_12511_12512_set (.Q(n14910), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_940));   // spi_slave.vhd(47[3] 84[10])
    SB_DFFR data_tx_i0_i2_12507_12508_reset (.Q(n14907), .C(clk_32MHz), 
            .D(n18[2]), .R(data_tx_7__N_959));   // spi_slave.vhd(47[3] 84[10])
    
endmodule
//
// Verilog Description of module ADC_ADS1252
//

module ADC_ADS1252 (\adc_state[2] , \adc_state[3] , \adc_state_3__N_1270[0] , 
            GND_net, VCC_net, \cmd_rdadcbuf[34] , n13390, cmd_rdadctmp, 
            \cmd_rdadcbuf[33] , \buf_adcdata_vac[23] , \cmd_rdadctmp[31] , 
            n10690, n15520, \cmd_rdadcbuf[32] , \cmd_rdadcbuf[31] , 
            \cmd_rdadcbuf[30] , \cmd_rdadcbuf[29] , \cmd_rdadcbuf[28] , 
            \cmd_rdadcbuf[27] , VDC_CLK, n20350, n20352, n20354, n20356, 
            n20358, n20360, n20362, n20364, n20366, n20368, n20370, 
            n20372, n20374, n20376, n20378, n20380, n20382, n20384, 
            n20386, n20388, n20390, \cmd_rdadcbuf[26] , n20392, n20542, 
            buf_adcdata_vdc, n20544, n20552, n20554, \cmd_rdadcbuf[25] , 
            n11937, n20556, n20558, n20560, n20562, n20564, n20566, 
            n20568, n20570, n20572, n20574, n20576, n20578, n20580, 
            n20582, n20584, n20586, n20588, n20590, n20592, \cmd_rdadcbuf[24] , 
            \cmd_rdadcbuf[23] , \cmd_rdadcbuf[22] , \cmd_rdadcbuf[21] , 
            \cmd_rdadcbuf[20] , \cmd_rdadcbuf[19] , \cmd_rdadcbuf[18] , 
            VDC_SCLK, \cmd_rdadcbuf[17] , \cmd_rdadcbuf[16] , \cmd_rdadcbuf[15] , 
            \cmd_rdadcbuf[14] , \cmd_rdadcbuf[13] , \cmd_rdadcbuf[12] , 
            \cmd_rdadcbuf[11] , n20640, clk_16MHz);
    output \adc_state[2] ;
    output \adc_state[3] ;
    input \adc_state_3__N_1270[0] ;
    input GND_net;
    input VCC_net;
    output \cmd_rdadcbuf[34] ;
    output n13390;
    output [23:0]cmd_rdadctmp;
    output \cmd_rdadcbuf[33] ;
    input \buf_adcdata_vac[23] ;
    input \cmd_rdadctmp[31] ;
    input n10690;
    output n15520;
    output \cmd_rdadcbuf[32] ;
    output \cmd_rdadcbuf[31] ;
    output \cmd_rdadcbuf[30] ;
    output \cmd_rdadcbuf[29] ;
    output \cmd_rdadcbuf[28] ;
    output \cmd_rdadcbuf[27] ;
    output VDC_CLK;
    input n20350;
    input n20352;
    input n20354;
    input n20356;
    input n20358;
    input n20360;
    input n20362;
    input n20364;
    input n20366;
    input n20368;
    input n20370;
    input n20372;
    input n20374;
    input n20376;
    input n20378;
    input n20380;
    input n20382;
    input n20384;
    input n20386;
    input n20388;
    input n20390;
    output \cmd_rdadcbuf[26] ;
    input n20392;
    input n20542;
    output [23:0]buf_adcdata_vdc;
    input n20544;
    input n20552;
    input n20554;
    output \cmd_rdadcbuf[25] ;
    output n11937;
    input n20556;
    input n20558;
    input n20560;
    input n20562;
    input n20564;
    input n20566;
    input n20568;
    input n20570;
    input n20572;
    input n20574;
    input n20576;
    input n20578;
    input n20580;
    input n20582;
    input n20584;
    input n20586;
    input n20588;
    input n20590;
    input n20592;
    output \cmd_rdadcbuf[24] ;
    output \cmd_rdadcbuf[23] ;
    output \cmd_rdadcbuf[22] ;
    output \cmd_rdadcbuf[21] ;
    output \cmd_rdadcbuf[20] ;
    output \cmd_rdadcbuf[19] ;
    output \cmd_rdadcbuf[18] ;
    output VDC_SCLK;
    output \cmd_rdadcbuf[17] ;
    output \cmd_rdadcbuf[16] ;
    output \cmd_rdadcbuf[15] ;
    output \cmd_rdadcbuf[14] ;
    output \cmd_rdadcbuf[13] ;
    output \cmd_rdadcbuf[12] ;
    output \cmd_rdadcbuf[11] ;
    input n20640;
    input clk_16MHz;
    
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    
    wire n10802;
    wire [3:0]adc_state;   // adc_ads1252u.vhd(31[8:17])
    
    wire n22740, n21757, n22743;
    wire [3:0]adc_state_3__N_1146;
    wire [11:0]avg_cnt_11__N_1314;
    wire [11:0]avg_cnt;   // adc_ads1252u.vhd(34[8:15])
    
    wire n19967, n19966, n19965, n19964, n19963, n19962, n19961, 
        n19960, n19959, n19958, n19957, n11;
    wire [35:0]cmd_rdadcbuf_35__N_1278;
    
    wire n19955, n15348, n20410, n19954, n1, n4, n11568, n21180, 
        n18, n21292, n28, n21120, n13449, n19953, n19952, n19951, 
        n19950, n19949, n19948, n15247, n21118, n13310;
    wire [35:0]cmd_rdadcbuf_35__N_1194;
    
    wire n13537;
    wire [7:0]bit_cnt;   // adc_ads1252u.vhd(33[8:15])
    
    wire n21098, n6, n7, n5, n52, n11965, n19947, n19946, n19945;
    wire [23:0]cmd_rdadctmp_c;   // adc_ads1252u.vhd(32[8:20])
    
    wire n19944, n19943, n19942, n19941, n18952, n4_adj_1434, n19940, 
        n21234, n6_adj_1435, n20085, n19939, n7711, n22306, n11941, 
        n16103, n19938, n19937, n19936, n19935, n19934, n19933, 
        n19932;
    wire [35:0]cmd_rdadcbuf;   // adc_ads1252u.vhd(36[8:20])
    
    wire n19931, n19930;
    wire [7:0]n37;
    
    wire n20004, n19929, n20003, n19928, n19927, n20002, n19926, 
        n19925, n19924, n19923, n20001, n20000, n19922, n19999, 
        n19998, n20, n19, n21, n21300, n21298, n21793, n21296, 
        n31, n18955, n13402, n6_adj_1436, n7_adj_1437, n65, n21288, 
        n42_adj_1438, n21760;
    
    SB_LUT4 adc_state_1__bdd_4_lut_4_lut (.I0(n10802), .I1(adc_state[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n22740));
    defparam adc_state_1__bdd_4_lut_4_lut.LUT_INIT = 16'h1fc0;
    SB_LUT4 n22740_bdd_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(n21757), .I3(n22740), .O(n22743));
    defparam n22740_bdd_4_lut_4_lut.LUT_INIT = 16'hdd30;
    SB_LUT4 i1_4_lut_4_lut (.I0(adc_state[0]), .I1(\adc_state[3] ), .I2(\adc_state[2] ), 
            .I3(\adc_state_3__N_1270[0] ), .O(adc_state_3__N_1146[0]));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h1514;
    SB_LUT4 add_24_13_lut (.I0(GND_net), .I1(avg_cnt[11]), .I2(GND_net), 
            .I3(n19967), .O(avg_cnt_11__N_1314[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_24_12_lut (.I0(GND_net), .I1(avg_cnt[10]), .I2(GND_net), 
            .I3(n19966), .O(avg_cnt_11__N_1314[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_12 (.CI(n19966), .I0(avg_cnt[10]), .I1(GND_net), .CO(n19967));
    SB_LUT4 add_24_11_lut (.I0(GND_net), .I1(avg_cnt[9]), .I2(GND_net), 
            .I3(n19965), .O(avg_cnt_11__N_1314[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_11 (.CI(n19965), .I0(avg_cnt[9]), .I1(GND_net), .CO(n19966));
    SB_LUT4 add_24_10_lut (.I0(GND_net), .I1(avg_cnt[8]), .I2(GND_net), 
            .I3(n19964), .O(avg_cnt_11__N_1314[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_10 (.CI(n19964), .I0(avg_cnt[8]), .I1(GND_net), .CO(n19965));
    SB_LUT4 add_24_9_lut (.I0(GND_net), .I1(avg_cnt[7]), .I2(GND_net), 
            .I3(n19963), .O(avg_cnt_11__N_1314[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_9 (.CI(n19963), .I0(avg_cnt[7]), .I1(GND_net), .CO(n19964));
    SB_LUT4 add_24_8_lut (.I0(GND_net), .I1(avg_cnt[6]), .I2(GND_net), 
            .I3(n19962), .O(avg_cnt_11__N_1314[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_8 (.CI(n19962), .I0(avg_cnt[6]), .I1(GND_net), .CO(n19963));
    SB_LUT4 add_24_7_lut (.I0(GND_net), .I1(avg_cnt[5]), .I2(GND_net), 
            .I3(n19961), .O(avg_cnt_11__N_1314[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_7 (.CI(n19961), .I0(avg_cnt[5]), .I1(GND_net), .CO(n19962));
    SB_LUT4 add_24_6_lut (.I0(GND_net), .I1(avg_cnt[4]), .I2(GND_net), 
            .I3(n19960), .O(avg_cnt_11__N_1314[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_6 (.CI(n19960), .I0(avg_cnt[4]), .I1(GND_net), .CO(n19961));
    SB_LUT4 add_24_5_lut (.I0(GND_net), .I1(avg_cnt[3]), .I2(GND_net), 
            .I3(n19959), .O(avg_cnt_11__N_1314[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_5 (.CI(n19959), .I0(avg_cnt[3]), .I1(GND_net), .CO(n19960));
    SB_LUT4 add_24_4_lut (.I0(GND_net), .I1(avg_cnt[2]), .I2(GND_net), 
            .I3(n19958), .O(avg_cnt_11__N_1314[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_4 (.CI(n19958), .I0(avg_cnt[2]), .I1(GND_net), .CO(n19959));
    SB_LUT4 add_24_3_lut (.I0(GND_net), .I1(avg_cnt[1]), .I2(GND_net), 
            .I3(n19957), .O(avg_cnt_11__N_1314[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_3 (.CI(n19957), .I0(avg_cnt[1]), .I1(GND_net), .CO(n19958));
    SB_LUT4 add_24_2_lut (.I0(GND_net), .I1(avg_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(avg_cnt_11__N_1314[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_24_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_24_2 (.CI(VCC_net), .I0(avg_cnt[0]), .I1(GND_net), .CO(n19957));
    SB_LUT4 i24_3_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1270[0] ), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n11));
    defparam i24_3_lut_4_lut.LUT_INIT = 16'h04f4;
    SB_LUT4 add_23_36_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[34] ), .I2(GND_net), 
            .I3(n19955), .O(cmd_rdadcbuf_35__N_1278[34])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_36_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(adc_state[0]), 
            .I3(n11), .O(n15348));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h8f88;
    SB_LUT4 i12_3_lut_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1270[0] ), 
            .I2(n13390), .I3(cmd_rdadctmp[0]), .O(n20410));
    defparam i12_3_lut_4_lut.LUT_INIT = 16'h4f40;
    SB_LUT4 add_23_35_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[33] ), .I2(GND_net), 
            .I3(n19954), .O(cmd_rdadcbuf_35__N_1278[33])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_35_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_35 (.CI(n19954), .I0(\cmd_rdadcbuf[33] ), .I1(GND_net), 
            .CO(n19955));
    SB_LUT4 i19780_4_lut (.I0(\adc_state[3] ), .I1(\adc_state_3__N_1270[0] ), 
            .I2(n1), .I3(\adc_state[2] ), .O(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i19780_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 i36_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(n11568), .I2(adc_state[1]), 
            .I3(n21180), .O(n18));
    defparam i36_4_lut.LUT_INIT = 16'h3505;
    SB_LUT4 i34_4_lut (.I0(adc_state[0]), .I1(n21292), .I2(\adc_state[3] ), 
            .I3(\adc_state_3__N_1270[0] ), .O(n28));
    defparam i34_4_lut.LUT_INIT = 16'h3530;
    SB_LUT4 i1_4_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(n28), 
            .I3(n18), .O(n21120));
    defparam i1_4_lut.LUT_INIT = 16'hfefa;
    SB_LUT4 i1_4_lut_4_lut_adj_31 (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(n13449));
    defparam i1_4_lut_4_lut_adj_31.LUT_INIT = 16'hdc80;
    SB_LUT4 i16602_3_lut (.I0(\buf_adcdata_vac[23] ), .I1(\cmd_rdadctmp[31] ), 
            .I2(n10690), .I3(GND_net), .O(n15520));
    defparam i16602_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_23_34_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[32] ), .I2(GND_net), 
            .I3(n19953), .O(cmd_rdadcbuf_35__N_1278[32])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_34_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_34 (.CI(n19953), .I0(\cmd_rdadcbuf[32] ), .I1(GND_net), 
            .CO(n19954));
    SB_LUT4 add_23_33_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[31] ), .I2(GND_net), 
            .I3(n19952), .O(cmd_rdadcbuf_35__N_1278[31])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_33_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_33 (.CI(n19952), .I0(\cmd_rdadcbuf[31] ), .I1(GND_net), 
            .CO(n19953));
    SB_LUT4 add_23_32_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[30] ), .I2(GND_net), 
            .I3(n19951), .O(cmd_rdadcbuf_35__N_1278[30])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_32_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_32 (.CI(n19951), .I0(\cmd_rdadcbuf[30] ), .I1(GND_net), 
            .CO(n19952));
    SB_LUT4 add_23_31_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[29] ), .I2(GND_net), 
            .I3(n19950), .O(cmd_rdadcbuf_35__N_1278[29])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_31_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_31 (.CI(n19950), .I0(\cmd_rdadcbuf[29] ), .I1(GND_net), 
            .CO(n19951));
    SB_LUT4 add_23_30_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[28] ), .I2(GND_net), 
            .I3(n19949), .O(cmd_rdadcbuf_35__N_1278[28])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_30_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_30 (.CI(n19949), .I0(\cmd_rdadcbuf[28] ), .I1(GND_net), 
            .CO(n19950));
    SB_LUT4 add_23_29_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[27] ), .I2(GND_net), 
            .I3(n19948), .O(cmd_rdadcbuf_35__N_1278[27])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_29_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12892_2_lut (.I0(n13449), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    defparam i12892_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(VDC_CLK), .E(n21118), .D(adc_state_3__N_1146[1]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i3 (.Q(\adc_state[3] ), .C(VDC_CLK), .E(n13310), 
            .D(adc_state_3__N_1146[3]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadcbuf_i34 (.Q(\cmd_rdadcbuf[34] ), .C(VDC_CLK), .E(n13537), 
            .D(cmd_rdadcbuf_35__N_1194[34]));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[0]), .I1(bit_cnt[1]), .I2(n21098), 
            .I3(GND_net), .O(n6));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i12300_2_lut_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(\adc_state[2] ), 
            .I3(GND_net), .O(n7));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i12300_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20350));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20352));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20354));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[3] ), .I1(\adc_state[2] ), .I2(GND_net), 
            .I3(GND_net), .O(n5));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_32 (.I0(adc_state[0]), .I1(\adc_state_3__N_1270[0] ), 
            .I2(GND_net), .I3(GND_net), .O(n52));
    defparam i1_2_lut_adj_32.LUT_INIT = 16'heeee;
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20356));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20358));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20360));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20362));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20364));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20366));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20368));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20370));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20372));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20374));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20376));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20378));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20380));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20382));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20384));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20386));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i16572_4_lut (.I0(n52), .I1(\adc_state[2] ), .I2(\adc_state[3] ), 
            .I3(adc_state[1]), .O(n11965));   // adc_ads1252u.vhd(31[8:17])
    defparam i16572_4_lut.LUT_INIT = 16'hc2ce;
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20388));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_23_29 (.CI(n19948), .I0(\cmd_rdadcbuf[27] ), .I1(GND_net), 
            .CO(n19949));
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20390));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 add_23_28_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[26] ), .I2(GND_net), 
            .I3(n19947), .O(cmd_rdadcbuf_35__N_1278[26])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_28_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20392));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i1 (.Q(buf_adcdata_vdc[1]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20542));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i2 (.Q(buf_adcdata_vdc[2]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20544));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i3 (.Q(buf_adcdata_vdc[3]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20552));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i4 (.Q(buf_adcdata_vdc[4]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20554));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_CARRY add_23_28 (.CI(n19947), .I0(\cmd_rdadcbuf[26] ), .I1(GND_net), 
            .CO(n19948));
    SB_LUT4 add_23_27_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[25] ), .I2(GND_net), 
            .I3(n19946), .O(cmd_rdadcbuf_35__N_1278[25])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_27_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut_adj_33 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[2] ), .I3(\adc_state[3] ), .O(n11937));
    defparam i1_3_lut_4_lut_adj_33.LUT_INIT = 16'hf200;
    SB_DFFE ADC_DATA_i5 (.Q(buf_adcdata_vdc[5]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20556));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i6 (.Q(buf_adcdata_vdc[6]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20558));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i7 (.Q(buf_adcdata_vdc[7]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20560));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i8 (.Q(buf_adcdata_vdc[8]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20562));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i9 (.Q(buf_adcdata_vdc[9]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20564));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i10 (.Q(buf_adcdata_vdc[10]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20566));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i11 (.Q(buf_adcdata_vdc[11]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20568));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i12 (.Q(buf_adcdata_vdc[12]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20570));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i13 (.Q(buf_adcdata_vdc[13]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20572));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i14 (.Q(buf_adcdata_vdc[14]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20574));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i15 (.Q(buf_adcdata_vdc[15]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20576));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i16 (.Q(buf_adcdata_vdc[16]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20578));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i17 (.Q(buf_adcdata_vdc[17]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20580));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i18 (.Q(buf_adcdata_vdc[18]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20582));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i19 (.Q(buf_adcdata_vdc[19]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20584));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i20 (.Q(buf_adcdata_vdc[20]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20586));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i21 (.Q(buf_adcdata_vdc[21]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20588));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i22 (.Q(buf_adcdata_vdc[22]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20590));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i23 (.Q(buf_adcdata_vdc[23]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20592));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_3_lut_4_lut_adj_34 (.I0(adc_state[0]), .I1(adc_state[1]), 
            .I2(\adc_state[3] ), .I3(\adc_state[2] ), .O(n13390));
    defparam i1_3_lut_4_lut_adj_34.LUT_INIT = 16'hf200;
    SB_CARRY add_23_27 (.CI(n19946), .I0(\cmd_rdadcbuf[25] ), .I1(GND_net), 
            .CO(n19947));
    SB_LUT4 add_23_26_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[24] ), .I2(GND_net), 
            .I3(n19945), .O(cmd_rdadcbuf_35__N_1278[24])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_26_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_26 (.CI(n19945), .I0(\cmd_rdadcbuf[24] ), .I1(GND_net), 
            .CO(n19946));
    SB_LUT4 add_23_25_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[23] ), .I2(cmd_rdadctmp_c[23]), 
            .I3(n19944), .O(cmd_rdadcbuf_35__N_1278[23])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_25_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_25 (.CI(n19944), .I0(\cmd_rdadcbuf[23] ), .I1(cmd_rdadctmp_c[23]), 
            .CO(n19945));
    SB_LUT4 add_23_24_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[22] ), .I2(cmd_rdadctmp[22]), 
            .I3(n19943), .O(cmd_rdadcbuf_35__N_1278[22])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_24 (.CI(n19943), .I0(\cmd_rdadcbuf[22] ), .I1(cmd_rdadctmp[22]), 
            .CO(n19944));
    SB_LUT4 add_23_23_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[21] ), .I2(cmd_rdadctmp[21]), 
            .I3(n19942), .O(cmd_rdadcbuf_35__N_1278[21])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_23 (.CI(n19942), .I0(\cmd_rdadcbuf[21] ), .I1(cmd_rdadctmp[21]), 
            .CO(n19943));
    SB_LUT4 add_23_22_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[20] ), .I2(cmd_rdadctmp[20]), 
            .I3(n19941), .O(cmd_rdadcbuf_35__N_1278[20])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_22 (.CI(n19941), .I0(\cmd_rdadcbuf[20] ), .I1(cmd_rdadctmp[20]), 
            .CO(n19942));
    SB_LUT4 i1_3_lut (.I0(n18952), .I1(adc_state[1]), .I2(\cmd_rdadcbuf[34] ), 
            .I3(GND_net), .O(n4_adj_1434));
    defparam i1_3_lut.LUT_INIT = 16'hdede;
    SB_LUT4 adc_state_3__I_0_58_Mux_34_i15_4_lut (.I0(cmd_rdadcbuf_35__N_1278[34]), 
            .I1(\adc_state[2] ), .I2(\adc_state[3] ), .I3(n4_adj_1434), 
            .O(cmd_rdadcbuf_35__N_1194[34]));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_58_Mux_34_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 add_23_21_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[19] ), .I2(cmd_rdadctmp[19]), 
            .I3(n19940), .O(cmd_rdadcbuf_35__N_1278[19])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_21 (.CI(n19940), .I0(\cmd_rdadcbuf[19] ), .I1(cmd_rdadctmp[19]), 
            .CO(n19941));
    SB_LUT4 i2_3_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(bit_cnt[5]), 
            .I3(GND_net), .O(n21098));
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_35 (.I0(bit_cnt[1]), .I1(n21098), .I2(GND_net), 
            .I3(GND_net), .O(n11568));   // adc_ads1252u.vhd(65[9:24])
    defparam i1_2_lut_adj_35.LUT_INIT = 16'heeee;
    SB_LUT4 i15581_2_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n1));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i15581_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_36 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n21234));
    defparam i1_2_lut_adj_36.LUT_INIT = 16'heeee;
    SB_LUT4 i18699_2_lut (.I0(\adc_state_3__N_1270[0] ), .I1(n1), .I2(GND_net), 
            .I3(GND_net), .O(n21292));
    defparam i18699_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_37 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(GND_net), .O(n6_adj_1435));   // adc_ads1252u.vhd(80[8:24])
    defparam i1_2_lut_adj_37.LUT_INIT = 16'hdddd;
    SB_LUT4 i4_4_lut (.I0(n11568), .I1(bit_cnt[4]), .I2(bit_cnt[0]), .I3(n6_adj_1435), 
            .O(n20085));   // adc_ads1252u.vhd(80[8:24])
    defparam i4_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 add_23_20_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[18] ), .I2(cmd_rdadctmp[18]), 
            .I3(n19939), .O(cmd_rdadcbuf_35__N_1278[18])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i5314_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(n20085), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n7711));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam i5314_4_lut.LUT_INIT = 16'h35aa;
    SB_LUT4 i19711_2_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(GND_net), 
            .I3(GND_net), .O(n22306));   // adc_ads1252u.vhd(31[8:17])
    defparam i19711_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i16566_4_lut (.I0(n11941), .I1(adc_state[1]), .I2(VDC_SCLK), 
            .I3(n22306), .O(n16103));   // adc_ads1252u.vhd(31[8:17])
    defparam i16566_4_lut.LUT_INIT = 16'h7250;
    SB_CARRY add_23_20 (.CI(n19939), .I0(\cmd_rdadcbuf[18] ), .I1(cmd_rdadctmp[18]), 
            .CO(n19940));
    SB_LUT4 add_23_19_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[17] ), .I2(cmd_rdadctmp[17]), 
            .I3(n19938), .O(cmd_rdadcbuf_35__N_1278[17])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_19 (.CI(n19938), .I0(\cmd_rdadcbuf[17] ), .I1(cmd_rdadctmp[17]), 
            .CO(n19939));
    SB_LUT4 add_23_18_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[16] ), .I2(cmd_rdadctmp[16]), 
            .I3(n19937), .O(cmd_rdadcbuf_35__N_1278[16])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_18 (.CI(n19937), .I0(\cmd_rdadcbuf[16] ), .I1(cmd_rdadctmp[16]), 
            .CO(n19938));
    SB_LUT4 add_23_17_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[15] ), .I2(cmd_rdadctmp[15]), 
            .I3(n19936), .O(cmd_rdadcbuf_35__N_1278[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_17 (.CI(n19936), .I0(\cmd_rdadcbuf[15] ), .I1(cmd_rdadctmp[15]), 
            .CO(n19937));
    SB_LUT4 add_23_16_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[14] ), .I2(cmd_rdadctmp[14]), 
            .I3(n19935), .O(cmd_rdadcbuf_35__N_1278[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_16 (.CI(n19935), .I0(\cmd_rdadcbuf[14] ), .I1(cmd_rdadctmp[14]), 
            .CO(n19936));
    SB_LUT4 add_23_15_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[13] ), .I2(cmd_rdadctmp[13]), 
            .I3(n19934), .O(cmd_rdadcbuf_35__N_1278[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_15 (.CI(n19934), .I0(\cmd_rdadcbuf[13] ), .I1(cmd_rdadctmp[13]), 
            .CO(n19935));
    SB_LUT4 add_23_14_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[12] ), .I2(cmd_rdadctmp[12]), 
            .I3(n19933), .O(cmd_rdadcbuf_35__N_1278[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_14 (.CI(n19933), .I0(\cmd_rdadcbuf[12] ), .I1(cmd_rdadctmp[12]), 
            .CO(n19934));
    SB_LUT4 add_23_13_lut (.I0(GND_net), .I1(\cmd_rdadcbuf[11] ), .I2(cmd_rdadctmp[11]), 
            .I3(n19932), .O(cmd_rdadcbuf_35__N_1278[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_13 (.CI(n19932), .I0(\cmd_rdadcbuf[11] ), .I1(cmd_rdadctmp[11]), 
            .CO(n19933));
    SB_LUT4 add_23_12_lut (.I0(GND_net), .I1(cmd_rdadcbuf[10]), .I2(cmd_rdadctmp[10]), 
            .I3(n19931), .O(cmd_rdadcbuf_35__N_1278[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_12 (.CI(n19931), .I0(cmd_rdadcbuf[10]), .I1(cmd_rdadctmp[10]), 
            .CO(n19932));
    SB_LUT4 add_23_11_lut (.I0(GND_net), .I1(cmd_rdadcbuf[9]), .I2(cmd_rdadctmp[9]), 
            .I3(n19930), .O(cmd_rdadcbuf_35__N_1278[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_11 (.CI(n19930), .I0(cmd_rdadcbuf[9]), .I1(cmd_rdadctmp[9]), 
            .CO(n19931));
    SB_LUT4 bit_cnt_3916_add_4_9_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[7]), 
            .I3(n20004), .O(n37[7])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_10_lut (.I0(GND_net), .I1(cmd_rdadcbuf[8]), .I2(cmd_rdadctmp[8]), 
            .I3(n19929), .O(cmd_rdadcbuf_35__N_1278[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_10 (.CI(n19929), .I0(cmd_rdadcbuf[8]), .I1(cmd_rdadctmp[8]), 
            .CO(n19930));
    SB_LUT4 bit_cnt_3916_add_4_8_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[6]), 
            .I3(n20003), .O(n37[6])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_9_lut (.I0(GND_net), .I1(cmd_rdadcbuf[7]), .I2(cmd_rdadctmp[7]), 
            .I3(n19928), .O(cmd_rdadcbuf_35__N_1278[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_9 (.CI(n19928), .I0(cmd_rdadcbuf[7]), .I1(cmd_rdadctmp[7]), 
            .CO(n19929));
    SB_CARRY bit_cnt_3916_add_4_8 (.CI(n20003), .I0(GND_net), .I1(bit_cnt[6]), 
            .CO(n20004));
    SB_LUT4 add_23_8_lut (.I0(GND_net), .I1(cmd_rdadcbuf[6]), .I2(cmd_rdadctmp[6]), 
            .I3(n19927), .O(cmd_rdadcbuf_35__N_1278[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_8 (.CI(n19927), .I0(cmd_rdadcbuf[6]), .I1(cmd_rdadctmp[6]), 
            .CO(n19928));
    SB_LUT4 bit_cnt_3916_add_4_7_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[5]), 
            .I3(n20002), .O(n37[5])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_7_lut (.I0(GND_net), .I1(cmd_rdadcbuf[5]), .I2(cmd_rdadctmp[5]), 
            .I3(n19926), .O(cmd_rdadcbuf_35__N_1278[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_7 (.CI(n19926), .I0(cmd_rdadcbuf[5]), .I1(cmd_rdadctmp[5]), 
            .CO(n19927));
    SB_LUT4 add_23_6_lut (.I0(GND_net), .I1(cmd_rdadcbuf[4]), .I2(cmd_rdadctmp[4]), 
            .I3(n19925), .O(cmd_rdadcbuf_35__N_1278[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_6 (.CI(n19925), .I0(cmd_rdadcbuf[4]), .I1(cmd_rdadctmp[4]), 
            .CO(n19926));
    SB_LUT4 add_23_5_lut (.I0(GND_net), .I1(cmd_rdadcbuf[3]), .I2(cmd_rdadctmp[3]), 
            .I3(n19924), .O(cmd_rdadcbuf_35__N_1278[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_7 (.CI(n20002), .I0(GND_net), .I1(bit_cnt[5]), 
            .CO(n20003));
    SB_CARRY add_23_5 (.CI(n19924), .I0(cmd_rdadcbuf[3]), .I1(cmd_rdadctmp[3]), 
            .CO(n19925));
    SB_LUT4 add_23_4_lut (.I0(GND_net), .I1(cmd_rdadcbuf[2]), .I2(cmd_rdadctmp[2]), 
            .I3(n19923), .O(cmd_rdadcbuf_35__N_1278[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 bit_cnt_3916_add_4_6_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[4]), 
            .I3(n20001), .O(n37[4])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_6 (.CI(n20001), .I0(GND_net), .I1(bit_cnt[4]), 
            .CO(n20002));
    SB_CARRY add_23_4 (.CI(n19923), .I0(cmd_rdadcbuf[2]), .I1(cmd_rdadctmp[2]), 
            .CO(n19924));
    SB_LUT4 bit_cnt_3916_add_4_5_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[3]), 
            .I3(n20000), .O(n37[3])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_3_lut (.I0(GND_net), .I1(cmd_rdadcbuf[1]), .I2(cmd_rdadctmp[1]), 
            .I3(n19922), .O(cmd_rdadcbuf_35__N_1278[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_5 (.CI(n20000), .I0(GND_net), .I1(bit_cnt[3]), 
            .CO(n20001));
    SB_LUT4 bit_cnt_3916_add_4_4_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[2]), 
            .I3(n19999), .O(n37[2])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_4 (.CI(n19999), .I0(GND_net), .I1(bit_cnt[2]), 
            .CO(n20000));
    SB_LUT4 bit_cnt_3916_add_4_3_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[1]), 
            .I3(n19998), .O(n37[1])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_23_3 (.CI(n19922), .I0(cmd_rdadcbuf[1]), .I1(cmd_rdadctmp[1]), 
            .CO(n19923));
    SB_CARRY bit_cnt_3916_add_4_3 (.CI(n19998), .I0(GND_net), .I1(bit_cnt[1]), 
            .CO(n19999));
    SB_LUT4 bit_cnt_3916_add_4_2_lut (.I0(GND_net), .I1(GND_net), .I2(bit_cnt[0]), 
            .I3(VCC_net), .O(n37[0])) /* synthesis syn_instantiated=1 */ ;
    defparam bit_cnt_3916_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_23_2_lut (.I0(GND_net), .I1(cmd_rdadcbuf[0]), .I2(cmd_rdadctmp[0]), 
            .I3(GND_net), .O(cmd_rdadcbuf_35__N_1278[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_23_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY bit_cnt_3916_add_4_2 (.CI(VCC_net), .I0(GND_net), .I1(bit_cnt[0]), 
            .CO(n19998));
    SB_LUT4 i8_4_lut (.I0(avg_cnt[9]), .I1(avg_cnt[3]), .I2(avg_cnt[8]), 
            .I3(avg_cnt[6]), .O(n20));   // adc_ads1252u.vhd(112[8:24])
    defparam i8_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20410));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE ADC_DATA_i0 (.Q(buf_adcdata_vdc[0]), .C(VDC_CLK), .E(VCC_net), 
            .D(n20640));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE SCLK_46 (.Q(VDC_SCLK), .C(VDC_CLK), .E(VCC_net), .D(n16103));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i7_4_lut (.I0(avg_cnt[5]), .I1(avg_cnt[0]), .I2(avg_cnt[10]), 
            .I3(avg_cnt[11]), .O(n19));   // adc_ads1252u.vhd(112[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i9_4_lut (.I0(avg_cnt[4]), .I1(avg_cnt[1]), .I2(avg_cnt[7]), 
            .I3(avg_cnt[2]), .O(n21));   // adc_ads1252u.vhd(112[8:24])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_3_lut (.I0(n21), .I1(n19), .I2(n20), .I3(GND_net), .O(n18952));   // adc_ads1252u.vhd(112[8:24])
    defparam i11_3_lut.LUT_INIT = 16'hfefe;
    SB_CARRY add_23_2 (.CI(GND_net), .I0(cmd_rdadcbuf[0]), .I1(cmd_rdadctmp[0]), 
            .CO(n19922));
    SB_LUT4 i18707_2_lut (.I0(\adc_state[3] ), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(GND_net), .O(n21300));
    defparam i18707_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i4_4_lut_adj_38 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[0]), 
            .I3(n21300), .O(n21180));
    defparam i4_4_lut_adj_38.LUT_INIT = 16'h0020;
    SB_LUT4 i18705_2_lut (.I0(bit_cnt[6]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n21298));
    defparam i18705_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i19565_4_lut (.I0(bit_cnt[1]), .I1(n21180), .I2(n21298), .I3(bit_cnt[5]), 
            .O(n21793));
    defparam i19565_4_lut.LUT_INIT = 16'h0004;
    SB_LUT4 i18703_2_lut (.I0(\adc_state_3__N_1270[0] ), .I1(adc_state[1]), 
            .I2(GND_net), .I3(GND_net), .O(n21296));
    defparam i18703_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i37_4_lut (.I0(\adc_state_3__N_1270[0] ), .I1(adc_state[0]), 
            .I2(n21793), .I3(adc_state[1]), .O(n31));
    defparam i37_4_lut.LUT_INIT = 16'he266;
    SB_LUT4 i1_4_lut_adj_39 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(n31), 
            .I3(n21296), .O(n21118));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'hfafe;
    SB_LUT4 i16547_3_lut (.I0(n18952), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n18955));   // adc_ads1252u.vhd(31[8:17])
    defparam i16547_3_lut.LUT_INIT = 16'h3e3e;
    SB_LUT4 i16549_4_lut (.I0(n22743), .I1(n18955), .I2(\adc_state[3] ), 
            .I3(\adc_state[2] ), .O(adc_state_3__N_1146[1]));   // adc_ads1252u.vhd(31[8:17])
    defparam i16549_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_3916__i7 (.Q(bit_cnt[7]), .C(VDC_CLK), .E(n11965), 
            .D(n37[7]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i6 (.Q(bit_cnt[6]), .C(VDC_CLK), .E(n11965), 
            .D(n37[6]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i5 (.Q(bit_cnt[5]), .C(VDC_CLK), .E(n11965), 
            .D(n37[5]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i4 (.Q(bit_cnt[4]), .C(VDC_CLK), .E(n11965), 
            .D(n37[4]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i3 (.Q(bit_cnt[3]), .C(VDC_CLK), .E(n11965), 
            .D(n37[3]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i2 (.Q(bit_cnt[2]), .C(VDC_CLK), .E(n11965), 
            .D(n37[2]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR bit_cnt_3916__i1 (.Q(bit_cnt[1]), .C(VDC_CLK), .E(n11965), 
            .D(n37[1]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i11 (.Q(avg_cnt[11]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[11]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i10 (.Q(avg_cnt[10]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[10]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i9 (.Q(avg_cnt[9]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[9]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i8 (.Q(avg_cnt[8]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[8]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i7 (.Q(avg_cnt[7]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[7]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i6 (.Q(avg_cnt[6]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[6]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i5 (.Q(avg_cnt[5]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[5]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i4 (.Q(avg_cnt[4]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[4]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i3 (.Q(avg_cnt[3]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[3]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i2 (.Q(avg_cnt[2]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[2]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR avg_cnt_i1 (.Q(avg_cnt[1]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[1]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i33 (.Q(\cmd_rdadcbuf[33] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[33]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i32 (.Q(\cmd_rdadcbuf[32] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[32]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i31 (.Q(\cmd_rdadcbuf[31] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[31]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i30 (.Q(\cmd_rdadcbuf[30] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[30]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i29 (.Q(\cmd_rdadcbuf[29] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[29]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i28 (.Q(\cmd_rdadcbuf[28] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[28]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i27 (.Q(\cmd_rdadcbuf[27] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[27]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i26 (.Q(\cmd_rdadcbuf[26] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[26]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i25 (.Q(\cmd_rdadcbuf[25] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[25]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i4_4_lut_adj_40 (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(n6), .O(n10802));
    defparam i4_4_lut_adj_40.LUT_INIT = 16'hffbf;
    SB_DFFESR cmd_rdadcbuf_i24 (.Q(\cmd_rdadcbuf[24] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[24]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i23 (.Q(\cmd_rdadcbuf[23] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[23]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i22 (.Q(\cmd_rdadcbuf[22] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[22]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i21 (.Q(\cmd_rdadcbuf[21] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[21]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i20 (.Q(\cmd_rdadcbuf[20] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[20]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_4_lut_adj_41 (.I0(\adc_state[2] ), .I1(\adc_state[3] ), .I2(adc_state[1]), 
            .I3(adc_state[0]), .O(n13402));
    defparam i1_4_lut_adj_41.LUT_INIT = 16'h8aa8;
    SB_DFFESR cmd_rdadcbuf_i19 (.Q(\cmd_rdadcbuf[19] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[19]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i18 (.Q(\cmd_rdadcbuf[18] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[18]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i17 (.Q(\cmd_rdadcbuf[17] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[17]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i16 (.Q(\cmd_rdadcbuf[16] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[16]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i15 (.Q(\cmd_rdadcbuf[15] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[15]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i14 (.Q(\cmd_rdadcbuf[14] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[14]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i13 (.Q(\cmd_rdadcbuf[13] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[13]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i12 (.Q(\cmd_rdadcbuf[12] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[12]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i11 (.Q(\cmd_rdadcbuf[11] ), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[11]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i10 (.Q(cmd_rdadcbuf[10]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[10]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i9 (.Q(cmd_rdadcbuf[9]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[9]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i8 (.Q(cmd_rdadcbuf[8]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[8]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i7 (.Q(cmd_rdadcbuf[7]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[7]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i6 (.Q(cmd_rdadcbuf[6]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[6]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i5 (.Q(cmd_rdadcbuf[5]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[5]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i4 (.Q(cmd_rdadcbuf[4]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[4]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i3 (.Q(cmd_rdadcbuf[3]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[3]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i2 (.Q(cmd_rdadcbuf[2]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[2]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR cmd_rdadcbuf_i1 (.Q(cmd_rdadcbuf[1]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[1]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 adc_state_3__I_0_57_Mux_23_i6_4_lut (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp_c[23]), 
            .I2(adc_state[1]), .I3(n10802), .O(n6_adj_1436));   // adc_ads1252u.vhd(53[4] 138[13])
    defparam adc_state_3__I_0_57_Mux_23_i6_4_lut.LUT_INIT = 16'hca3a;
    SB_DFFESR cmd_rdadctmp_i23 (.Q(cmd_rdadctmp_c[23]), .C(VDC_CLK), .E(n13402), 
            .D(n6_adj_1436), .R(n5));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFESR adc_state_i2 (.Q(\adc_state[2] ), .C(VDC_CLK), .E(n21120), 
            .D(n7), .R(n4));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i16554_3_lut (.I0(\adc_state_3__N_1270[0] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n7_adj_1437));   // adc_ads1252u.vhd(31[8:17])
    defparam i16554_3_lut.LUT_INIT = 16'he6e6;
    SB_LUT4 i1_4_lut_adj_42 (.I0(\adc_state[2] ), .I1(n7_adj_1437), .I2(n21292), 
            .I3(\adc_state[3] ), .O(n65));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_42.LUT_INIT = 16'hafee;
    SB_LUT4 i18695_2_lut (.I0(n20085), .I1(adc_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21288));
    defparam i18695_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_43 (.I0(n21288), .I1(n65), .I2(adc_state[1]), 
            .I3(n21234), .O(n42_adj_1438));   // adc_ads1252u.vhd(31[8:17])
    defparam i1_4_lut_adj_43.LUT_INIT = 16'hcc4c;
    SB_LUT4 i19518_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[3]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[0]), .O(n21760));
    defparam i19518_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i19525_4_lut (.I0(n21760), .I1(adc_state[0]), .I2(n21098), 
            .I3(bit_cnt[4]), .O(n21757));
    defparam i19525_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i1_4_lut_4_lut_adj_44 (.I0(\adc_state[2] ), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(adc_state_3__N_1146[3]));
    defparam i1_4_lut_4_lut_adj_44.LUT_INIT = 16'h1580;
    SB_LUT4 i1_4_lut_4_lut_adj_45 (.I0(\adc_state[3] ), .I1(\adc_state[2] ), 
            .I2(n7711), .I3(n21292), .O(n13310));
    defparam i1_4_lut_4_lut_adj_45.LUT_INIT = 16'hdcfe;
    SB_LUT4 i19704_4_lut_4_lut (.I0(\adc_state[2] ), .I1(\adc_state[3] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n11941));
    defparam i19704_4_lut_4_lut.LUT_INIT = 16'heeed;
    SB_DFFESR bit_cnt_3916__i0 (.Q(bit_cnt[0]), .C(VDC_CLK), .E(n11965), 
            .D(n37[0]), .R(n15348));   // adc_ads1252u.vhd(92[17:24])
    SB_DFFESR avg_cnt_i0 (.Q(avg_cnt[0]), .C(VDC_CLK), .E(n13449), .D(avg_cnt_11__N_1314[0]), 
            .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_LUT4 i1_3_lut_4_lut_adj_46 (.I0(adc_state[0]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(\adc_state[3] ), .O(n13537));
    defparam i1_3_lut_4_lut_adj_46.LUT_INIT = 16'hdd80;
    SB_DFFESR cmd_rdadcbuf_i0 (.Q(cmd_rdadcbuf[0]), .C(VDC_CLK), .E(n13449), 
            .D(cmd_rdadcbuf_35__N_1278[0]), .R(n15247));   // adc_ads1252u.vhd(52[3] 139[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(VDC_CLK), .E(n42_adj_1438), 
            .D(adc_state_3__N_1146[0]));   // adc_ads1252u.vhd(52[3] 139[10])
    vdc_gen_clk genclk (.VCC_net(VCC_net), .GND_net(GND_net), .clk_16MHz(clk_16MHz), 
            .VDC_CLK(VDC_CLK));   // adc_ads1252u.vhd(43[11:22])
    
endmodule
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (VCC_net, GND_net, clk_16MHz, VDC_CLK);
    input VCC_net;
    input GND_net;
    input clk_16MHz;
    output VDC_CLK;
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zim_main.vhd(225[9:18])
    wire VDC_CLK /* synthesis SET_AS_NETWORK=VDC_CLK, is_clock=1 */ ;   // zim_main.vhd(55[3:10])
    wire [16:0]t0off_15__N_1377;
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    
    wire n19968, n19969, n2;
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    
    wire div_state_1__N_1414, n28, n26, n27, n21719;
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    
    wire n28_adj_1431, n26_adj_1432, n27_adj_1433, n21722, n21717, 
        n21716, n15331, n11946;
    wire [1:0]div_state_1__N_1327;
    
    wire n6;
    wire [16:0]t0on_15__N_1361;
    
    wire n19997, n19996, n19995, n19994, n19993, n19992, n19991, 
        n19990, n19989, n19988, n19987, n19986, n19985, n19984, 
        n19983, n19982, n19981, n19980, n19979, n19978, n19977, 
        n19976, n19975, n19974, n19973, n19972, n19971, n19970;
    
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n19968), 
            .O(t0off_15__N_1377[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n19968), .I0(t0off[1]), .I1(VCC_net), .CO(n19969));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_1377[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFN div_state_i0 (.Q(div_state[0]), .C(clk_16MHz), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1414));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_DFFN t_clk_24 (.Q(VDC_CLK), .C(clk_16MHz), .D(div_state_1__N_1414));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n19968));
    SB_LUT4 i12_4_lut (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19523_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), 
            .I3(t0off[4]), .O(n21719));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19523_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut_adj_28 (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), 
            .I3(t0on[15]), .O(n28_adj_1431));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut_adj_28.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_29 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_1432));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_29.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_30 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_1433));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_30.LUT_INIT = 16'hfffe;
    SB_LUT4 i19373_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n21722));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19373_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i19370_4_lut (.I0(n21719), .I1(n27), .I2(n26), .I3(n28), 
            .O(n21717));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19370_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19469_4_lut (.I0(n21722), .I1(n27_adj_1433), .I2(n26_adj_1432), 
            .I3(n28_adj_1431), .O(n21716));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19469_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12945_2_lut_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    defparam i12945_2_lut_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i19717_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n11946));
    defparam i19717_2_lut.LUT_INIT = 16'h9999;
    SB_DFFNE div_state_i1 (.Q(div_state[1]), .C(clk_16MHz), .E(n6), .D(div_state_1__N_1327[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i12299_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1327[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i12299_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n19997), .O(t0on_15__N_1361[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n19996), .O(t0on_15__N_1361[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n19996), .I0(t0on[14]), .I1(VCC_net), .CO(n19997));
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n19995), .O(t0on_15__N_1361[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n19995), .I0(t0on[13]), .I1(VCC_net), .CO(n19996));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n19994), .O(t0on_15__N_1361[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_14 (.CI(n19994), .I0(t0on[12]), .I1(VCC_net), .CO(n19995));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n19993), .O(t0on_15__N_1361[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n19993), .I0(t0on[11]), .I1(VCC_net), .CO(n19994));
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n19992), .O(t0on_15__N_1361[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n19992), .I0(t0on[10]), .I1(VCC_net), .CO(n19993));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n19991), 
            .O(t0on_15__N_1361[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_11 (.CI(n19991), .I0(t0on[9]), .I1(VCC_net), .CO(n19992));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n19990), 
            .O(t0on_15__N_1361[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n19990), .I0(t0on[8]), .I1(VCC_net), .CO(n19991));
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n19989), 
            .O(t0on_15__N_1361[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n19989), .I0(t0on[7]), .I1(VCC_net), .CO(n19990));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n19988), 
            .O(t0on_15__N_1361[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_8 (.CI(n19988), .I0(t0on[6]), .I1(VCC_net), .CO(n19989));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n19987), 
            .O(t0on_15__N_1361[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n19987), .I0(t0on[5]), .I1(VCC_net), .CO(n19988));
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n19986), 
            .O(t0on_15__N_1361[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_6 (.CI(n19986), .I0(t0on[4]), .I1(VCC_net), .CO(n19987));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n19985), 
            .O(t0on_15__N_1361[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n19985), .I0(t0on[3]), .I1(VCC_net), .CO(n19986));
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n19984), 
            .O(t0on_15__N_1361[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n19984), .I0(t0on[2]), .I1(VCC_net), .CO(n19985));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n19983), 
            .O(t0on_15__N_1361[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_3 (.CI(n19983), .I0(t0on[1]), .I1(VCC_net), .CO(n19984));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_1361[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n19983));
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n19982), .O(t0off_15__N_1377[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n19981), .O(t0off_15__N_1377[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n19981), .I0(t0off[14]), .I1(VCC_net), .CO(n19982));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n19980), .O(t0off_15__N_1377[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n19980), .I0(t0off[13]), .I1(VCC_net), .CO(n19981));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n19979), .O(t0off_15__N_1377[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n19979), .I0(t0off[12]), .I1(VCC_net), .CO(n19980));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n19978), .O(t0off_15__N_1377[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n19978), .I0(t0off[11]), .I1(VCC_net), .CO(n19979));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n19977), .O(t0off_15__N_1377[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n19977), .I0(t0off[10]), .I1(VCC_net), .CO(n19978));
    SB_DFFNESR t0off_i15 (.Q(t0off[15]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[15]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i14 (.Q(t0off[14]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[14]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i13 (.Q(t0off[13]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[13]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i12 (.Q(t0off[12]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[12]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i11 (.Q(t0off[11]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[11]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i10 (.Q(t0off[10]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[10]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i9 (.Q(t0off[9]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[9]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i8 (.Q(t0off[8]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[8]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i7 (.Q(t0off[7]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[7]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i6 (.Q(t0off[6]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[6]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i5 (.Q(t0off[5]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[5]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i4 (.Q(t0off[4]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[4]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0off_i3 (.Q(t0off[3]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[3]), 
            .S(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i2 (.Q(t0off[2]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[2]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0off_i1 (.Q(t0off[1]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[1]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i15 (.Q(t0on[15]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[15]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i14 (.Q(t0on[14]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[14]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i13 (.Q(t0on[13]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[13]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i12 (.Q(t0on[12]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[12]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i11 (.Q(t0on[11]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[11]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i10 (.Q(t0on[10]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[10]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i9 (.Q(t0on[9]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[9]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i8 (.Q(t0on[8]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[8]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i7 (.Q(t0on[7]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[7]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i6 (.Q(t0on[6]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[6]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i5 (.Q(t0on[5]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[5]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i4 (.Q(t0on[4]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[4]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESS t0on_i3 (.Q(t0on[3]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[3]), .S(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i2 (.Q(t0on[2]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[2]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i1 (.Q(t0on[1]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[1]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n19976), .O(t0off_15__N_1377[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19794_2_lut_4_lut (.I0(n21716), .I1(n21717), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19794_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_CARRY add_33_11 (.CI(n19976), .I0(t0off[9]), .I1(VCC_net), .CO(n19977));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n19975), .O(t0off_15__N_1377[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i19775_2_lut_4_lut (.I0(n21716), .I1(n21717), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i19775_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_CARRY add_33_10 (.CI(n19975), .I0(t0off[8]), .I1(VCC_net), .CO(n19976));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n19974), 
            .O(t0off_15__N_1377[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n19974), .I0(t0off[7]), .I1(VCC_net), .CO(n19975));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n19973), 
            .O(t0off_15__N_1377[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_8 (.CI(n19973), .I0(t0off[6]), .I1(VCC_net), .CO(n19974));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n19972), 
            .O(t0off_15__N_1377[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR t0off_i0 (.Q(t0off[0]), .C(clk_16MHz), .E(n11946), .D(t0off_15__N_1377[0]), 
            .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFNESR t0on_i0 (.Q(t0on[0]), .C(clk_16MHz), .E(div_state_1__N_1414), 
            .D(t0on_15__N_1361[0]), .R(n15331));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_CARRY add_33_7 (.CI(n19972), .I0(t0off[5]), .I1(VCC_net), .CO(n19973));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n19971), 
            .O(t0off_15__N_1377[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n19971), .I0(t0off[4]), .I1(VCC_net), .CO(n19972));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n19970), 
            .O(t0off_15__N_1377[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n19970), .I0(t0off[3]), .I1(VCC_net), .CO(n19971));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n19969), 
            .O(t0off_15__N_1377[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n19969), .I0(t0off[2]), .I1(VCC_net), .CO(n19970));
    
endmodule
//
// Verilog Description of module DDS_AD9837_U0
//

module DDS_AD9837_U0 (dds_state, clk_32MHz, DDS_CS1, n20698, VCC_net, 
            GND_net, \bit_cnt[0] , \tmp_buf[15] , trig_dds1, n15403, 
            DDS_MOSI1, n15401, DDS_SCK1, buf_dds1, n16125, n15162);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input n20698;
    input VCC_net;
    input GND_net;
    output \bit_cnt[0] ;
    output \tmp_buf[15] ;
    input trig_dds1;
    input n15403;
    output DDS_MOSI1;
    input n15401;
    output DDS_SCK1;
    input [15:0]buf_dds1;
    input n16125;
    output n15162;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire [2:0]dds_state_2__N_858;
    
    wire n9, CS_N_911, n9_adj_1430;
    wire [15:0]tmp_buf_15__N_861;
    
    wire n13051;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n8028;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_906;
    
    wire n10, n21908;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_858[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1430), .D(CS_N_911));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20698));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12460_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8028));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12460_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4010_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_906[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i4010_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n13051), .D(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n13051), 
            .D(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19702_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds1), .O(n13051));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19702_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n15403));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n15401));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds1[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16125));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12764_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15162));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12764_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i4017_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_906[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i4017_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i4024_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_906[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i4024_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i23_4_lut (.I0(trig_dds1), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1430));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_911));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19791_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds1), 
            .I3(dds_state[1]), .O(n9));
    defparam i19791_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i19490_2_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21908));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19490_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12483_4_lut (.I0(dds_state[0]), .I1(n21908), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_858[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12483_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds1[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds1[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds1[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds1[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[3]), .R(n15162));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds1[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[2]), .R(n15162));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[1]), .R(n15162));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8028), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds1[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds1[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds1[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
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
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (n20660, VCC_net, cmd_rdadctmp, clk_32MHz, drdy_sync2, 
            drdy_prev, \adc_state[0] , VAC_DRDY, n20690, n20694, eis_adc_trig, 
            DTRIG_N_851, \adc_state[1] , GND_net, n15520, buf_adcdata_vac, 
            n15519, n15518, n15517, n15516, n15515, n15514, n15513, 
            n15512, n15511, n15510, n15509, n15508, n15507, n15506, 
            n15505, n15504, n15503, n15502, n15501, n15500, n15499, 
            n15498, n12884, n20670, acadc_dtrig_v, n15398, n20668, 
            VAC_SCLK, n15396, n20938, n20936, n20780, n12, VAC_CS, 
            n20934, n21157, n20932, n20926, n20924, n20922, n20920, 
            n20918, n20916, n20914, n20912, n20910, n20908, n20906, 
            n20898, n20896, n20872, n20874, n20882, n20884, n20886, 
            n20888, n20890, n20892, n20894, n10690);
    input n20660;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    output \adc_state[0] ;
    input VAC_DRDY;
    input n20690;
    input n20694;
    input eis_adc_trig;
    output DTRIG_N_851;
    output \adc_state[1] ;
    input GND_net;
    input n15520;
    output [23:0]buf_adcdata_vac;
    input n15519;
    input n15518;
    input n15517;
    input n15516;
    input n15515;
    input n15514;
    input n15513;
    input n15512;
    input n15511;
    input n15510;
    input n15509;
    input n15508;
    input n15507;
    input n15506;
    input n15505;
    input n15504;
    input n15503;
    input n15502;
    input n15501;
    input n15500;
    input n15499;
    input n15498;
    output n12884;
    input n20670;
    output acadc_dtrig_v;
    input n15398;
    input n20668;
    output VAC_SCLK;
    input n15396;
    input n20938;
    input n20936;
    input n20780;
    input n12;
    output VAC_CS;
    input n20934;
    output n21157;
    input n20932;
    input n20926;
    input n20924;
    input n20922;
    input n20920;
    input n20918;
    input n20916;
    input n20914;
    input n20912;
    input n20910;
    input n20908;
    input n20906;
    input n20898;
    input n20896;
    input n20872;
    input n20874;
    input n20882;
    input n20884;
    input n20886;
    input n20888;
    input n20890;
    input n20892;
    input n20894;
    output n10690;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire drdy_sync1;
    wire [2:0]adc_state_2__N_756;
    
    wire n21258, drdy_falling, n17, n12_c, n12853, n15117, n20764, 
        n20762;
    wire [7:0]n71;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19921, n19920, n19919, n19918, n19917, n19916, n19915, 
        n21257, n21344, n21369, n21577;
    
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20660));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21258), 
            .D(adc_state_2__N_756[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(VAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20690));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20694));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19790_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19790_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15618_3_lut (.I0(DTRIG_N_851), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_756[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15618_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i12723_2_lut (.I0(n12853), .I1(DTRIG_N_851), .I2(GND_net), 
            .I3(GND_net), .O(n15117));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12723_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_756[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_851), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_756[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_vac[23]), .C(clk_32MHz), .D(n15520));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_vac[22]), .C(clk_32MHz), .D(n15519));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_vac[21]), .C(clk_32MHz), .D(n15518));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_vac[20]), .C(clk_32MHz), .D(n15517));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_vac[19]), .C(clk_32MHz), .D(n15516));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_vac[18]), .C(clk_32MHz), .D(n15515));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_vac[17]), .C(clk_32MHz), .D(n15514));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_vac[16]), .C(clk_32MHz), .D(n15513));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_vac[15]), .C(clk_32MHz), .D(n15512));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_vac[14]), .C(clk_32MHz), .D(n15511));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_vac[13]), .C(clk_32MHz), .D(n15510));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_vac[12]), .C(clk_32MHz), .D(n15509));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_vac[11]), .C(clk_32MHz), .D(n15508));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_vac[10]), .C(clk_32MHz), .D(n15507));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_vac[9]), .C(clk_32MHz), .D(n15506));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_vac[8]), .C(clk_32MHz), .D(n15505));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_vac[7]), .C(clk_32MHz), .D(n15504));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_vac[6]), .C(clk_32MHz), .D(n15503));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_vac[5]), .C(clk_32MHz), .D(n15502));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_vac[4]), .C(clk_32MHz), .D(n15501));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_vac[3]), .C(clk_32MHz), .D(n15500));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_vac[2]), .C(clk_32MHz), .D(n15499));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_vac[1]), .C(clk_32MHz), .D(n15498));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(drdy_falling), 
            .I3(DTRIG_N_851), .O(n12853));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h1140;
    SB_LUT4 i2_4_lut (.I0(DTRIG_N_851), .I1(drdy_falling), .I2(\adc_state[1] ), 
            .I3(\adc_state[0] ), .O(n12884));   // adc_ads127.vhd(55[4] 99[13])
    defparam i2_4_lut.LUT_INIT = 16'h5040;
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_v), .C(clk_32MHz), .D(n20670));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_vac[0]), .C(clk_32MHz), .D(n15398));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(VAC_SCLK), .C(clk_32MHz), .D(n20668));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15396));   // adc_ads127.vhd(35[3] 40[10])
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), .I2(n12884), 
            .I3(\adc_state[0] ), .O(n20764));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_26 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n12884), .I3(\adc_state[0] ), .O(n20762));
    defparam i12_4_lut_adj_26.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n20938));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n20936));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20780));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(VAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .D(n20934));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(drdy_falling), .I2(GND_net), 
            .I3(GND_net), .O(n21157));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_DFF cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .D(n20932));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .D(n20762));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19921), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19920), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19920), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19921));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19919), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19919), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19920));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19918), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .D(n20764));   // adc_ads127.vhd(45[3] 100[10])
    SB_CARRY add_22_6 (.CI(n19918), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19919));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19917), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19917), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19918));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19916), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19916), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19917));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19915), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_3 (.CI(n19915), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19916));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19915));
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n20926));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n20924));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n20922));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n20920));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n20918));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n20916));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n20914));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n20912));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n20910));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n20908));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n20906));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n20898));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n20896));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20872));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20874));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20882));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20884));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20886));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20888));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20890));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20892));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20894));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12853), .D(n71[7]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12853), .D(n71[6]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12853), .D(n71[5]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12853), .D(n71[4]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12853), .D(n71[3]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12853), .D(n71[2]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12853), .D(n71[1]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_851), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21257));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_27 (.I0(\adc_state[1] ), .I1(n21257), .I2(GND_net), 
            .I3(GND_net), .O(n21258));
    defparam i1_2_lut_adj_27.LUT_INIT = 16'hdddd;
    SB_LUT4 i18750_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21344));
    defparam i18750_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18775_4_lut (.I0(bit_cnt[7]), .I1(n21344), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21369));
    defparam i18775_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19376_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21369), .O(n21577));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19376_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21577), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_851), .I3(\adc_state[1] ), .O(adc_state_2__N_756[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 i2_2_lut_3_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(DTRIG_N_851), 
            .I3(GND_net), .O(n10690));   // adc_ads127.vhd(55[4] 99[13])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut (.I0(\adc_state[0] ), 
            .I1(\adc_state[1] ), .I2(DTRIG_N_851), .I3(GND_net), .O(adc_state_2__N_756[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut.LUT_INIT = 16'h2c2c;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12853), .D(n71[0]), 
            .R(n15117));   // adc_ads127.vhd(45[3] 100[10])
    
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
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=29, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=868, LSE_RLINE=868 */ ;   // zim_main.vhd(868[13:20])
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
    SB_LUT4 i20237_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_675));   // zim_main.vhd(868[13:20])
    defparam i20237_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (drdy_sync2, clk_32MHz, drdy_prev, \adc_state[0] , 
            IAC_DRDY, eis_adc_trig, DTRIG_N_851, \adc_state[1] , GND_net, 
            n15497, buf_adcdata_iac, n15496, n15495, n15494, n15493, 
            n15492, n15491, n15490, n15489, n15488, n15487, n15486, 
            n15485, n15484, n15483, n15482, n15481, n15480, n15479, 
            n15478, n15477, n15476, n15475, n20666, acadc_dtrig_i, 
            n15393, n20664, IAC_SCLK, n15391, n20778, VCC_net, cmd_rdadctmp, 
            n12, IAC_CS, n21155, n12762, n20796, n20798, n20800, 
            n20802, n20804, n20806, n20808, n20810, n20814, n20816, 
            n20818, n20820, n20822, n20824, n20826, n20828, n20834, 
            n20836, n20838, n20842, n20844, n20848, n20850, n20852, 
            n20854, n20856, n20858, n20860, n20866, n20868, n20870, 
            n10660);
    output drdy_sync2;
    input clk_32MHz;
    output drdy_prev;
    output \adc_state[0] ;
    input IAC_DRDY;
    input eis_adc_trig;
    output DTRIG_N_851;
    output \adc_state[1] ;
    input GND_net;
    input n15497;
    output [23:0]buf_adcdata_iac;
    input n15496;
    input n15495;
    input n15494;
    input n15493;
    input n15492;
    input n15491;
    input n15490;
    input n15489;
    input n15488;
    input n15487;
    input n15486;
    input n15485;
    input n15484;
    input n15483;
    input n15482;
    input n15481;
    input n15480;
    input n15479;
    input n15478;
    input n15477;
    input n15476;
    input n15475;
    input n20666;
    output acadc_dtrig_i;
    input n15393;
    input n20664;
    output IAC_SCLK;
    input n15391;
    input n20778;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n12;
    output IAC_CS;
    output n21155;
    output n12762;
    input n20796;
    input n20798;
    input n20800;
    input n20802;
    input n20804;
    input n20806;
    input n20808;
    input n20810;
    input n20814;
    input n20816;
    input n20818;
    input n20820;
    input n20822;
    input n20824;
    input n20826;
    input n20828;
    input n20834;
    input n20836;
    input n20838;
    input n20842;
    input n20844;
    input n20848;
    input n20850;
    input n20852;
    input n20854;
    input n20856;
    input n20858;
    input n20860;
    input n20866;
    input n20868;
    input n20870;
    output n10660;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    
    wire drdy_sync1;
    wire [2:0]adc_state_2__N_756;
    
    wire n21260, drdy_falling, n17, n12_c, n12757, n15079;
    wire [7:0]n71;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19914, n19913, n19912, n19911, n19910, n19909, n19908, 
        n21259, n21355, n21373, n21571;
    
    SB_DFF drdy_sync2_44 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFF drdy_prev_45 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n21260), 
            .D(adc_state_2__N_756[0]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_sync1_43 (.Q(drdy_sync1), .C(clk_32MHz), .D(IAC_DRDY));   // adc_ads127.vhd(35[3] 40[10])
    SB_LUT4 i30_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(DTRIG_N_851), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i19788_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12_c));
    defparam i19788_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i15621_3_lut (.I0(DTRIG_N_851), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_756[1]));   // adc_ads127.vhd(55[4] 99[13])
    defparam i15621_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 i12685_2_lut (.I0(n12757), .I1(DTRIG_N_851), .I2(GND_net), 
            .I3(GND_net), .O(n15079));   // adc_ads127.vhd(45[3] 100[10])
    defparam i12685_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12_c), 
            .D(adc_state_2__N_756[1]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_851), .C(clk_32MHz), .E(n12_c), .D(adc_state_2__N_756[2]));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata_iac[23]), .C(clk_32MHz), .D(n15497));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata_iac[22]), .C(clk_32MHz), .D(n15496));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata_iac[21]), .C(clk_32MHz), .D(n15495));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata_iac[20]), .C(clk_32MHz), .D(n15494));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata_iac[19]), .C(clk_32MHz), .D(n15493));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata_iac[18]), .C(clk_32MHz), .D(n15492));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata_iac[17]), .C(clk_32MHz), .D(n15491));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata_iac[16]), .C(clk_32MHz), .D(n15490));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata_iac[15]), .C(clk_32MHz), .D(n15489));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata_iac[14]), .C(clk_32MHz), .D(n15488));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata_iac[13]), .C(clk_32MHz), .D(n15487));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata_iac[12]), .C(clk_32MHz), .D(n15486));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata_iac[11]), .C(clk_32MHz), .D(n15485));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata_iac[10]), .C(clk_32MHz), .D(n15484));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata_iac[9]), .C(clk_32MHz), .D(n15483));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata_iac[8]), .C(clk_32MHz), .D(n15482));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata_iac[7]), .C(clk_32MHz), .D(n15481));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata_iac[6]), .C(clk_32MHz), .D(n15480));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata_iac[5]), .C(clk_32MHz), .D(n15479));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata_iac[4]), .C(clk_32MHz), .D(n15478));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata_iac[3]), .C(clk_32MHz), .D(n15477));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata_iac[2]), .C(clk_32MHz), .D(n15476));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata_iac[1]), .C(clk_32MHz), .D(n15475));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(drdy_falling), 
            .I3(DTRIG_N_851), .O(n12757));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h1140;
    SB_DFF DTRIG_51 (.Q(acadc_dtrig_i), .C(clk_32MHz), .D(n20666));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata_iac[0]), .C(clk_32MHz), .D(n15393));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF SCLK_47 (.Q(IAC_SCLK), .C(clk_32MHz), .D(n20664));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFF drdy_falling_46 (.Q(drdy_falling), .C(clk_32MHz), .D(n15391));   // adc_ads127.vhd(35[3] 40[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20778));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE CS_49 (.Q(IAC_CS), .C(clk_32MHz), .E(VCC_net), .D(n12));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(drdy_falling), .I2(GND_net), 
            .I3(GND_net), .O(n21155));
    defparam i1_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_4_lut (.I0(DTRIG_N_851), .I1(drdy_falling), .I2(\adc_state[1] ), 
            .I3(\adc_state[0] ), .O(n12762));   // adc_ads127.vhd(55[4] 99[13])
    defparam i2_4_lut.LUT_INIT = 16'h5040;
    SB_LUT4 add_22_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19914), .O(n71[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_22_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19913), .O(n71[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_8 (.CI(n19913), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19914));
    SB_LUT4 add_22_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19912), .O(n71[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_7 (.CI(n19912), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19913));
    SB_LUT4 add_22_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19911), .O(n71[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_6 (.CI(n19911), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19912));
    SB_LUT4 add_22_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19910), .O(n71[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_5 (.CI(n19910), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19911));
    SB_LUT4 add_22_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19909), .O(n71[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_4 (.CI(n19909), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19910));
    SB_LUT4 add_22_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19908), .O(n71[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_3 (.CI(n19908), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19909));
    SB_LUT4 add_22_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n71[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_22_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_22_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19908));
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20796));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20798));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20800));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20802));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20804));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20806));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20808));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20810));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20814));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20816));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20818));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20820));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20822));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20824));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20826));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20828));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20834));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20836));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20838));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20842));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20844));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20848));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20850));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20852));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20854));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20856));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20858));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20860));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20866));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20868));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20870));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i2_2_lut_3_lut (.I0(\adc_state[0] ), .I1(\adc_state[1] ), .I2(DTRIG_N_851), 
            .I3(GND_net), .O(n10660));   // adc_ads127.vhd(55[4] 99[13])
    defparam i2_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut (.I0(\adc_state[0] ), 
            .I1(\adc_state[1] ), .I2(DTRIG_N_851), .I3(GND_net), .O(adc_state_2__N_756[2]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_2_i7_3_lut_3_lut.LUT_INIT = 16'h2c2c;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12757), .D(n71[7]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12757), .D(n71[6]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12757), .D(n71[5]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12757), .D(n71[4]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12757), .D(n71[3]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12757), .D(n71[2]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12757), .D(n71[1]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    SB_LUT4 i1_4_lut (.I0(eis_adc_trig), .I1(DTRIG_N_851), .I2(drdy_falling), 
            .I3(\adc_state[0] ), .O(n21259));
    defparam i1_4_lut.LUT_INIT = 16'hff74;
    SB_LUT4 i1_2_lut_adj_25 (.I0(\adc_state[1] ), .I1(n21259), .I2(GND_net), 
            .I3(GND_net), .O(n21260));
    defparam i1_2_lut_adj_25.LUT_INIT = 16'hdddd;
    SB_LUT4 i18761_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n21355));
    defparam i18761_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i18779_4_lut (.I0(bit_cnt[7]), .I1(n21355), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n21373));
    defparam i18779_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i19675_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n21373), .O(n21571));   // adc_ads127.vhd(55[4] 99[13])
    defparam i19675_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_55_Mux_0_i7_4_lut (.I0(n21571), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_851), .I3(\adc_state[1] ), .O(adc_state_2__N_756[0]));   // adc_ads127.vhd(55[4] 99[13])
    defparam adc_state_2__I_0_55_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12757), .D(n71[0]), 
            .R(n15079));   // adc_ads127.vhd(45[3] 100[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (buf_dds0, dds_state, clk_32MHz, DDS_CS, trig_dds0, 
            n20696, VCC_net, GND_net, \bit_cnt[0] , \tmp_buf[15] , 
            n15409, DDS_MOSI, n15400, DDS_SCK, n16128, n15157);
    input [15:0]buf_dds0;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS;
    input trig_dds0;
    input n20696;
    input VCC_net;
    input GND_net;
    output \bit_cnt[0] ;
    output \tmp_buf[15] ;
    input n15409;
    output DDS_MOSI;
    input n15400;
    output DDS_SCK;
    input n16128;
    output n15157;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zim_main.vhd(226[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [15:0]tmp_buf_15__N_861;
    wire [2:0]dds_state_2__N_858;
    
    wire n9, CS_N_911, n9_adj_1427, n12981, n8066;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_906;
    
    wire n10, n21910;
    
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds0[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds0[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_858[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS), .C(clk_32MHz), .E(n9_adj_1427), .D(CS_N_911));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i19703_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds0), .O(n12981));
    defparam i19703_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds0[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20696));   // dds_ad9837.vhd(31[3] 75[10])
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
    SB_LUT4 i12459_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n8066));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12459_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3981_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_906[1]));   // dds_ad9837.vhd(60[19:26])
    defparam i3981_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds0[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12981), .D(tmp_buf_15__N_861[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12981), 
            .D(tmp_buf_15__N_861[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI), .C(clk_32MHz), .D(n15409));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK), .C(clk_32MHz), .D(n15400));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n16128));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12759_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n15157));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i12759_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i3988_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_906[2]));   // dds_ad9837.vhd(60[19:26])
    defparam i3988_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i3995_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_906[3]));   // dds_ad9837.vhd(60[19:26])
    defparam i3995_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds0[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_861[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds0), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1427));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_911));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i19786_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds0), 
            .I3(dds_state[1]), .O(n9));
    defparam i19786_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[1]), .I2(dds_state[0]), 
            .I3(bit_cnt[2]), .O(n10));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i19566_2_lut (.I0(bit_cnt[3]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n21910));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i19566_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[3]), .R(n15157));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[2]), .R(n15157));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_906[1]), .R(n15157));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n8066), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i12481_4_lut (.I0(dds_state[0]), .I1(n21910), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_858[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i12481_4_lut.LUT_INIT = 16'hc505;
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
    
endmodule
//
// Verilog Description of module ADC_MAX31865
//

module ADC_MAX31865 (RTD_CS, clk_RTD, RTD_SCLK, \adc_state[2] , n20184, 
            VCC_net, adress, n1, GND_net, n20186, n20188, n20190, 
            n20192, n20194, buf_cfgRTD, n20452, read_buf, n20456, 
            n20460, n20464, n20468, n20472, n11899, n20476, n20480, 
            n20484, n20488, n20498, n20502, n20506, n20510, n20512, 
            buf_readRTD, n20516, n20518, n20520, n20522, n20524, 
            n20526, n20528, n20530, n20532, n20534, n20536, n20538, 
            n20540, n11903, RTD_DRDY, n14779, n13088, n20636, n20638, 
            RTD_SDI, \adress[0] );
    output RTD_CS;
    input clk_RTD;
    output RTD_SCLK;
    output \adc_state[2] ;
    input n20184;
    input VCC_net;
    output [7:0]adress;
    output n1;
    input GND_net;
    input n20186;
    input n20188;
    input n20190;
    input n20192;
    input n20194;
    input [7:0]buf_cfgRTD;
    input n20452;
    output [15:0]read_buf;
    input n20456;
    input n20460;
    input n20464;
    input n20468;
    input n20472;
    output n11899;
    input n20476;
    input n20480;
    input n20484;
    input n20488;
    input n20498;
    input n20502;
    input n20506;
    input n20510;
    input n20512;
    output [15:0]buf_readRTD;
    input n20516;
    input n20518;
    input n20520;
    input n20522;
    input n20524;
    input n20526;
    input n20528;
    input n20530;
    input n20532;
    input n20534;
    input n20536;
    input n20538;
    input n20540;
    output n11903;
    input RTD_DRDY;
    output n14779;
    output n13088;
    input n20636;
    input n20638;
    output RTD_SDI;
    output \adress[0] ;
    
    wire clk_RTD /* synthesis SET_AS_NETWORK=clk_RTD, is_clock=1 */ ;   // zim_main.vhd(272[9:16])
    
    wire CS_N_1113, n11876, SCLK_N_1112, n8;
    wire [3:0]adc_state_3__N_1020;
    
    wire n11915;
    wire [3:0]adc_state;   // adc_max31865.vhd(24[8:17])
    
    wire n20444, n15766;
    wire [7:0]cfg_buf;   // adc_max31865.vhd(26[8:15])
    
    wire n21351, n14769, n13129, n15748, n11951, n15345;
    wire [3:0]bit_cnt;   // adc_max31865.vhd(29[8:15])
    
    wire n18111, n21627, mode, n21624, n15763;
    wire [7:0]adress_7__N_1068;
    
    wire n3;
    wire [7:0]cfg_tmp;   // adc_max31865.vhd(28[8:15])
    
    wire n7, n19124, n7_adj_1415, n15760, n15757, n15754, n15751, 
        n7_adj_1416, n7_adj_1417, n7_adj_1418, n7_adj_1419, n13165, 
        n15187, n21294, n14, n11, n7_adj_1420, n20622, n6, n21868, 
        n21, n16, n7988;
    wire [3:0]n2;
    
    wire n7_adj_1421, n1_adj_1422, n7958, n20624, n16959, n21600, 
        n21596, n21597, n18205, n7_adj_1423, n16118, n12, n10, 
        n11_adj_1424, n9, n19, n20304, n7_adj_1425;
    wire [7:0]adress_c;   // adc_max31865.vhd(27[8:14])
    
    wire n16985, n11907, n3_adj_1426;
    
    SB_DFFE CS_52 (.Q(RTD_CS), .C(clk_RTD), .E(n11876), .D(CS_N_1113));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE SCLK_51 (.Q(RTD_SCLK), .C(clk_RTD), .E(n8), .D(SCLK_N_1112));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i0 (.Q(adc_state[0]), .C(clk_RTD), .E(n11915), .D(adc_state_3__N_1020[0]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i1 (.Q(adc_state[1]), .C(clk_RTD), .E(n11915), .D(adc_state_3__N_1020[1]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i2 (.Q(\adc_state[2] ), .C(clk_RTD), .E(n11915), 
            .D(adc_state_3__N_1020[2]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adc_state_i3 (.Q(adc_state[3]), .C(clk_RTD), .E(n11915), .D(adc_state_3__N_1020[3]));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i1 (.Q(adress[1]), .C(clk_RTD), .E(VCC_net), .D(n20184));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19797_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(\adc_state[2] ), .O(n8));
    defparam i19797_4_lut_4_lut.LUT_INIT = 16'hfd7f;
    SB_LUT4 i2_3_lut (.I0(adc_state[3]), .I1(\adc_state[2] ), .I2(adc_state[0]), 
            .I3(GND_net), .O(n1));
    defparam i2_3_lut.LUT_INIT = 16'h2020;
    SB_DFFE adress_i2 (.Q(adress[2]), .C(clk_RTD), .E(VCC_net), .D(n20186));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i3 (.Q(adress[3]), .C(clk_RTD), .E(VCC_net), .D(n20188));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i4 (.Q(adress[4]), .C(clk_RTD), .E(VCC_net), .D(n20190));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE adress_i5 (.Q(adress[5]), .C(clk_RTD), .E(VCC_net), .D(n20192));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(adc_state[0]), .I3(adc_state[1]), .O(n20444));   // adc_max31865.vhd(38[3] 148[10])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h8880;
    SB_DFFE adress_i6 (.Q(adress[6]), .C(clk_RTD), .E(VCC_net), .D(n20194));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i1 (.Q(cfg_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n15766));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i18757_2_lut_3_lut (.I0(adc_state[3]), .I1(\adc_state[2] ), 
            .I2(adc_state[1]), .I3(GND_net), .O(n21351));
    defparam i18757_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i16731_4_lut (.I0(cfg_buf[7]), .I1(n14769), .I2(n13129), .I3(buf_cfgRTD[7]), 
            .O(n15748));
    defparam i16731_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i19783_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n11951));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19783_4_lut_4_lut.LUT_INIT = 16'hbc66;
    SB_LUT4 i1_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(\adc_state[2] ), 
            .I3(adc_state[3]), .O(n15345));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'he142;
    SB_LUT4 i1_3_lut_3_lut_3_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), 
            .I2(adc_state[1]), .I3(GND_net), .O(n11876));
    defparam i1_3_lut_3_lut_3_lut.LUT_INIT = 16'h8989;
    SB_LUT4 i19406_2_lut_4_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(bit_cnt[3]), 
            .I3(n18111), .O(n21627));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19406_2_lut_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i19482_4_lut (.I0(mode), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n21624));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19482_4_lut.LUT_INIT = 16'hf3bf;
    SB_DFFE cfg_buf_i2 (.Q(cfg_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n15763));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_62_Mux_7_i3_4_lut (.I0(adress_7__N_1068[7]), 
            .I1(adress[6]), .I2(adc_state[1]), .I3(adc_state[0]), .O(n3));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_62_Mux_7_i3_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_1_i7_4_lut (.I0(buf_cfgRTD[1]), .I1(cfg_tmp[0]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_1_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_3_i15_4_lut (.I0(n21624), .I1(\adc_state[2] ), 
            .I2(adc_state[3]), .I3(n19124), .O(adc_state_3__N_1020[3]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_3_i15_4_lut.LUT_INIT = 16'h3035;
    SB_LUT4 adc_state_3__I_0_64_Mux_2_i7_4_lut (.I0(buf_cfgRTD[2]), .I1(cfg_tmp[1]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1415));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_2_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE cfg_buf_i3 (.Q(cfg_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n15760));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i4 (.Q(cfg_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n15757));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i5 (.Q(cfg_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n15754));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i6 (.Q(cfg_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n15751));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_3_i7_4_lut (.I0(buf_cfgRTD[3]), .I1(cfg_tmp[2]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1416));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_3_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE cfg_buf_i7 (.Q(cfg_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n15748));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_4_i7_4_lut (.I0(buf_cfgRTD[4]), .I1(cfg_tmp[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1417));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_4_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE read_buf_i1 (.Q(read_buf[1]), .C(clk_RTD), .E(VCC_net), .D(n20452));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_64_Mux_5_i7_4_lut (.I0(buf_cfgRTD[5]), .I1(cfg_tmp[4]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1418));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_5_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_64_Mux_6_i7_4_lut (.I0(buf_cfgRTD[6]), .I1(cfg_tmp[5]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1419));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_6_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12793_2_lut (.I0(n13165), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n15187));   // adc_max31865.vhd(38[3] 148[10])
    defparam i12793_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE read_buf_i2 (.Q(read_buf[2]), .C(clk_RTD), .E(VCC_net), .D(n20456));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i18701_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21294));
    defparam i18701_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i30_4_lut (.I0(n21294), .I1(n14), .I2(\adc_state[2] ), .I3(n11), 
            .O(n13165));
    defparam i30_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 adc_state_3__I_0_64_Mux_7_i7_4_lut (.I0(buf_cfgRTD[7]), .I1(cfg_tmp[6]), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1420));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_64_Mux_7_i7_4_lut.LUT_INIT = 16'hcac0;
    SB_DFFE read_buf_i3 (.Q(read_buf[3]), .C(clk_RTD), .E(VCC_net), .D(n20460));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i4 (.Q(read_buf[4]), .C(clk_RTD), .E(VCC_net), .D(n20464));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i5 (.Q(read_buf[5]), .C(clk_RTD), .E(VCC_net), .D(n20468));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i6 (.Q(read_buf[6]), .C(clk_RTD), .E(VCC_net), .D(n20472));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12_4_lut (.I0(read_buf[9]), .I1(read_buf[8]), .I2(n11899), 
            .I3(n1), .O(n20622));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE read_buf_i7 (.Q(read_buf[7]), .C(clk_RTD), .E(VCC_net), .D(n20476));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i8 (.Q(read_buf[8]), .C(clk_RTD), .E(VCC_net), .D(n20480));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i9 (.Q(read_buf[9]), .C(clk_RTD), .E(VCC_net), .D(n20622));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i10 (.Q(read_buf[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20484));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i11 (.Q(read_buf[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20488));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i12 (.Q(read_buf[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20498));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19595_4_lut (.I0(mode), .I1(n6), .I2(adc_state[3]), .I3(n19124), 
            .O(n21868));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19595_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 i1_4_lut_4_lut (.I0(\adc_state[2] ), .I1(adc_state[3]), .I2(n21), 
            .I3(mode), .O(n16));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h7400;
    SB_DFFE read_buf_i13 (.Q(read_buf[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20502));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i14 (.Q(read_buf[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20506));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i15 (.Q(read_buf[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20510));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i1 (.Q(buf_readRTD[1]), .C(clk_RTD), .E(VCC_net), 
            .D(n20512));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i19_4_lut (.I0(n21868), .I1(adc_state[3]), .I2(\adc_state[2] ), 
            .I3(n7988), .O(adc_state_3__N_1020[2]));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n18111), .I2(GND_net), .I3(GND_net), 
            .O(n19124));   // adc_max31865.vhd(30[8:12])
    defparam i1_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFE READ_DATA_i2 (.Q(buf_readRTD[2]), .C(clk_RTD), .E(VCC_net), 
            .D(n20516));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17371_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2[1]));   // adc_max31865.vhd(125[17:24])
    defparam i17371_2_lut.LUT_INIT = 16'h6666;
    SB_DFFE READ_DATA_i3 (.Q(buf_readRTD[3]), .C(clk_RTD), .E(VCC_net), 
            .D(n20518));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i4 (.Q(buf_readRTD[4]), .C(clk_RTD), .E(VCC_net), 
            .D(n20520));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i12362_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14769));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12362_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE READ_DATA_i5 (.Q(buf_readRTD[5]), .C(clk_RTD), .E(VCC_net), 
            .D(n20522));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i7_4_lut (.I0(adc_state[1]), .I1(n21627), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1421));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i7_4_lut.LUT_INIT = 16'hc5ca;
    SB_DFFE READ_DATA_i6 (.Q(buf_readRTD[6]), .C(clk_RTD), .E(VCC_net), 
            .D(n20524));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i22_4_lut (.I0(n11), .I1(n1_adj_1422), .I2(adc_state[3]), 
            .I3(n7958), .O(n13129));
    defparam i22_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFE READ_DATA_i7 (.Q(buf_readRTD[7]), .C(clk_RTD), .E(VCC_net), 
            .D(n20526));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i8 (.Q(buf_readRTD[8]), .C(clk_RTD), .E(VCC_net), 
            .D(n20624));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i9 (.Q(buf_readRTD[9]), .C(clk_RTD), .E(VCC_net), 
            .D(n20528));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 adc_state_3__I_0_66_Mux_1_i15_4_lut (.I0(n7_adj_1421), .I1(n7958), 
            .I2(adc_state[3]), .I3(adc_state[0]), .O(adc_state_3__N_1020[1]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_1_i15_4_lut.LUT_INIT = 16'h3a0a;
    SB_DFFE READ_DATA_i10 (.Q(buf_readRTD[10]), .C(clk_RTD), .E(VCC_net), 
            .D(n20530));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i11 (.Q(buf_readRTD[11]), .C(clk_RTD), .E(VCC_net), 
            .D(n20532));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i12 (.Q(buf_readRTD[12]), .C(clk_RTD), .E(VCC_net), 
            .D(n20534));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i13 (.Q(buf_readRTD[13]), .C(clk_RTD), .E(VCC_net), 
            .D(n20536));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i14 (.Q(buf_readRTD[14]), .C(clk_RTD), .E(VCC_net), 
            .D(n20538));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i15 (.Q(buf_readRTD[15]), .C(clk_RTD), .E(VCC_net), 
            .D(n20540));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i2_3_lut_adj_8 (.I0(bit_cnt[1]), .I1(bit_cnt[2]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n18111));
    defparam i2_3_lut_adj_8.LUT_INIT = 16'h8080;
    SB_LUT4 i2_3_lut_adj_9 (.I0(n21351), .I1(adc_state[0]), .I2(n16959), 
            .I3(GND_net), .O(n11915));
    defparam i2_3_lut_adj_9.LUT_INIT = 16'hfbfb;
    SB_LUT4 i31_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n14));
    defparam i31_3_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i19357_3_lut (.I0(bit_cnt[3]), .I1(n18111), .I2(adc_state[1]), 
            .I3(GND_net), .O(n21600));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19357_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i19366_3_lut (.I0(bit_cnt[3]), .I1(adc_state[1]), .I2(n18111), 
            .I3(GND_net), .O(n21596));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19366_3_lut.LUT_INIT = 16'hbfbf;
    SB_LUT4 i19507_4_lut (.I0(bit_cnt[3]), .I1(mode), .I2(n18111), .I3(adc_state[1]), 
            .O(n21597));   // adc_max31865.vhd(39[4] 147[13])
    defparam i19507_4_lut.LUT_INIT = 16'h4000;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i14_4_lut (.I0(n21600), .I1(n7988), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n18205));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i14_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i7_4_lut (.I0(n21597), .I1(n21596), 
            .I2(\adc_state[2] ), .I3(adc_state[0]), .O(n7_adj_1423));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i7_4_lut.LUT_INIT = 16'h0acf;
    SB_LUT4 adc_state_3__I_0_66_Mux_0_i15_3_lut (.I0(n7_adj_1423), .I1(n18205), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1020[0]));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_66_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1_4_lut_4_lut_adj_10 (.I0(adc_state[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(n11899));
    defparam i1_4_lut_4_lut_adj_10.LUT_INIT = 16'hc08d;
    SB_LUT4 i11761_2_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // adc_max31865.vhd(39[4] 147[13])
    defparam i11761_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 adc_state_3__I_0_69_i15_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), 
            .I2(\adc_state[2] ), .I3(adc_state[1]), .O(SCLK_N_1112));   // adc_max31865.vhd(39[4] 147[13])
    defparam adc_state_3__I_0_69_i15_4_lut.LUT_INIT = 16'h2d34;
    SB_LUT4 i13719_4_lut_4_lut (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[0]), 
            .I3(cfg_buf[0]), .O(n16118));
    defparam i13719_4_lut_4_lut.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_11 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[6]), 
            .I3(cfg_buf[6]), .O(n15751));
    defparam i1_4_lut_4_lut_adj_11.LUT_INIT = 16'hd580;
    SB_LUT4 i12_4_lut_adj_12 (.I0(buf_readRTD[8]), .I1(read_buf[8]), .I2(n11903), 
            .I3(\adc_state[2] ), .O(n20624));   // adc_max31865.vhd(24[8:17])
    defparam i12_4_lut_adj_12.LUT_INIT = 16'h0aca;
    SB_LUT4 i4_4_lut (.I0(cfg_buf[1]), .I1(cfg_buf[7]), .I2(buf_cfgRTD[1]), 
            .I3(buf_cfgRTD[7]), .O(n12));   // adc_max31865.vhd(53[8:27])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(cfg_buf[2]), .I1(cfg_buf[4]), .I2(buf_cfgRTD[2]), 
            .I3(buf_cfgRTD[4]), .O(n10));   // adc_max31865.vhd(53[8:27])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(cfg_buf[3]), .I1(cfg_buf[5]), .I2(buf_cfgRTD[3]), 
            .I3(buf_cfgRTD[5]), .O(n11_adj_1424));   // adc_max31865.vhd(53[8:27])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut (.I0(cfg_buf[0]), .I1(cfg_buf[6]), .I2(buf_cfgRTD[0]), 
            .I3(buf_cfgRTD[6]), .O(n9));   // adc_max31865.vhd(53[8:27])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(n9), .I1(n11_adj_1424), .I2(n10), .I3(n12), 
            .O(adress_7__N_1068[7]));   // adc_max31865.vhd(53[8:27])
    defparam i7_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_adj_13 (.I0(adress_7__N_1068[7]), .I1(RTD_DRDY), .I2(GND_net), 
            .I3(GND_net), .O(n16959));   // adc_max31865.vhd(53[8:27])
    defparam i1_2_lut_adj_13.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_4_lut_4_lut_adj_14 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[5]), 
            .I3(cfg_buf[5]), .O(n15754));
    defparam i1_4_lut_4_lut_adj_14.LUT_INIT = 16'hd580;
    SB_LUT4 i1_2_lut_adj_15 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7988));
    defparam i1_2_lut_adj_15.LUT_INIT = 16'heeee;
    SB_LUT4 i18709_2_lut (.I0(\adc_state[2] ), .I1(adc_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n7958));
    defparam i18709_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_adj_16 (.I0(adc_state[0]), .I1(adress_7__N_1068[7]), 
            .I2(GND_net), .I3(GND_net), .O(n11));
    defparam i1_2_lut_adj_16.LUT_INIT = 16'hdddd;
    SB_LUT4 i12386_2_lut (.I0(adc_state[1]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n14779));   // adc_max31865.vhd(39[4] 147[13])
    defparam i12386_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i34_4_lut (.I0(RTD_DRDY), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(n11), .O(n19));
    defparam i34_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 i35_4_lut (.I0(n19), .I1(n1_adj_1422), .I2(adc_state[3]), 
            .I3(\adc_state[2] ), .O(n13088));
    defparam i35_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_4_lut_adj_17 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[4]), 
            .I3(cfg_buf[4]), .O(n15757));
    defparam i1_4_lut_4_lut_adj_17.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_18 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[3]), 
            .I3(cfg_buf[3]), .O(n15760));
    defparam i1_4_lut_4_lut_adj_18.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_19 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[2]), 
            .I3(cfg_buf[2]), .O(n15763));
    defparam i1_4_lut_4_lut_adj_19.LUT_INIT = 16'hd580;
    SB_LUT4 i1_4_lut_4_lut_adj_20 (.I0(n13129), .I1(n14769), .I2(buf_cfgRTD[1]), 
            .I3(cfg_buf[1]), .O(n15766));
    defparam i1_4_lut_4_lut_adj_20.LUT_INIT = 16'hd580;
    SB_LUT4 i17378_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n2[2]));   // adc_max31865.vhd(125[17:24])
    defparam i17378_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_4_lut_adj_21 (.I0(adress_7__N_1068[7]), .I1(n7958), .I2(RTD_DRDY), 
            .I3(adc_state[0]), .O(n21));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_21.LUT_INIT = 16'hdccc;
    SB_LUT4 i1_4_lut_adj_22 (.I0(n16), .I1(adress_7__N_1068[7]), .I2(n21351), 
            .I3(adc_state[0]), .O(n20304));   // adc_max31865.vhd(27[8:14])
    defparam i1_4_lut_adj_22.LUT_INIT = 16'haeaa;
    SB_LUT4 i17385_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n2[3]));   // adc_max31865.vhd(125[17:24])
    defparam i17385_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFFE mode_53 (.Q(mode), .C(clk_RTD), .E(VCC_net), .D(n20304));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE cfg_buf_i0 (.Q(cfg_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n16118));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE read_buf_i0 (.Q(read_buf[0]), .C(clk_RTD), .E(VCC_net), .D(n20636));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFE READ_DATA_i0 (.Q(buf_readRTD[0]), .C(clk_RTD), .E(VCC_net), 
            .D(n20638));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR bit_cnt_3914__i3 (.Q(bit_cnt[3]), .C(clk_RTD), .E(n11951), 
            .D(n2[3]), .R(n15345));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3914__i2 (.Q(bit_cnt[2]), .C(clk_RTD), .E(n11951), 
            .D(n2[2]), .R(n15345));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR bit_cnt_3914__i1 (.Q(bit_cnt[1]), .C(clk_RTD), .E(n11951), 
            .D(n2[1]), .R(n15345));   // adc_max31865.vhd(125[17:24])
    SB_LUT4 i14573_4_lut (.I0(buf_cfgRTD[0]), .I1(cfg_tmp[7]), .I2(\adc_state[2] ), 
            .I3(adc_state[0]), .O(n7_adj_1425));   // adc_max31865.vhd(24[8:17])
    defparam i14573_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i15648_4_lut (.I0(adress_c[7]), .I1(cfg_tmp[7]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n16985));
    defparam i15648_4_lut.LUT_INIT = 16'hcaaa;
    SB_DFFESR cfg_tmp_i7 (.Q(cfg_tmp[7]), .C(clk_RTD), .E(n13165), .D(n7_adj_1420), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i6 (.Q(cfg_tmp[6]), .C(clk_RTD), .E(n13165), .D(n7_adj_1419), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i5 (.Q(cfg_tmp[5]), .C(clk_RTD), .E(n13165), .D(n7_adj_1418), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i4 (.Q(cfg_tmp[4]), .C(clk_RTD), .E(n13165), .D(n7_adj_1417), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i3 (.Q(cfg_tmp[3]), .C(clk_RTD), .E(n13165), .D(n7_adj_1416), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i2 (.Q(cfg_tmp[2]), .C(clk_RTD), .E(n13165), .D(n7_adj_1415), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i1 (.Q(cfg_tmp[1]), .C(clk_RTD), .E(n13165), .D(n7), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i7 (.Q(adress_c[7]), .C(clk_RTD), .E(n13088), .D(n3), 
            .R(n20444));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i17369_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n2[0]));   // adc_max31865.vhd(125[17:24])
    defparam i17369_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i19778_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(n16959), .O(CS_N_1113));
    defparam i19778_4_lut_4_lut.LUT_INIT = 16'h1357;
    SB_LUT4 i27_4_lut_4_lut (.I0(adc_state[3]), .I1(adc_state[1]), .I2(adc_state[0]), 
            .I3(\adc_state[2] ), .O(n11907));
    defparam i27_4_lut_4_lut.LUT_INIT = 16'hf904;
    SB_LUT4 i1_4_lut_4_lut_adj_23 (.I0(adress_7__N_1068[7]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(adress_c[7]), .O(n3_adj_1426));
    defparam i1_4_lut_4_lut_adj_23.LUT_INIT = 16'hf707;
    SB_LUT4 i1_4_lut_4_lut_adj_24 (.I0(adc_state[3]), .I1(adc_state[0]), 
            .I2(adc_state[1]), .I3(\adc_state[2] ), .O(n11903));
    defparam i1_4_lut_4_lut_adj_24.LUT_INIT = 16'ha880;
    SB_DFFESR bit_cnt_3914__i0 (.Q(bit_cnt[0]), .C(clk_RTD), .E(n11951), 
            .D(n2[0]), .R(n15345));   // adc_max31865.vhd(125[17:24])
    SB_DFFESR MOSI_59 (.Q(RTD_SDI), .C(clk_RTD), .E(n11907), .D(n16985), 
            .R(n20444));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR cfg_tmp_i0 (.Q(cfg_tmp[0]), .C(clk_RTD), .E(n13165), .D(n7_adj_1425), 
            .R(n15187));   // adc_max31865.vhd(38[3] 148[10])
    SB_DFFESR adress_i0 (.Q(\adress[0] ), .C(clk_RTD), .E(n13088), .D(n3_adj_1426), 
            .R(n20444));   // adc_max31865.vhd(38[3] 148[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(\adc_state[2] ), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n1_adj_1422));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    
endmodule
