// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Jun 01 16:35:43 2026
//
// Verilog Description of module zimaux
//

module zimaux (ICE_SYSCLK, TEST_LED, DDS_MCLK1, DDS_CS1, DDS_MOSI1, 
            DDS_SCK1, DISP_COMM, EIS_SYNCCLK, ICE_SPI_SCLK, ICE_SPI_MOSI, 
            ICE_SPI_MISO, ICE_SPI_CE0, ICE_GPMO_0, ICE_GPMO_1, ICE_GPMO_2, 
            ICE_GPMI_0, ICE_CHKCABLE, M_OSR0, M_OSR1, M_FLT0, M_FLT1, 
            M_POW, M_DCSEL, M_START, M_CLK1, M_SCLK1, M_CS1, M_MOSI1, 
            M_MISO1, M_DRDY1, M_CLK2, M_SCLK2, M_CS2, M_MOSI2, M_MISO2, 
            M_DRDY2, M_CLK3, M_SCLK3, M_CS3, M_MOSI3, M_MISO3, M_DRDY3, 
            M_CLK4, M_SCLK4, M_CS4, M_MOSI4, M_MISO4, M_DRDY4, START_SYNC);   // zimaux_main.vhd(7[8:14])
    input ICE_SYSCLK;   // zimaux_main.vhd(9[3:13])
    output TEST_LED;   // zimaux_main.vhd(10[3:11])
    output DDS_MCLK1;   // zimaux_main.vhd(12[3:12])
    output DDS_CS1;   // zimaux_main.vhd(13[3:10])
    output DDS_MOSI1;   // zimaux_main.vhd(14[3:12])
    output DDS_SCK1;   // zimaux_main.vhd(15[3:11])
    output DISP_COMM;   // zimaux_main.vhd(17[3:12])
    input EIS_SYNCCLK;   // zimaux_main.vhd(18[3:14])
    input ICE_SPI_SCLK;   // zimaux_main.vhd(27[3:15])
    input ICE_SPI_MOSI;   // zimaux_main.vhd(28[3:15])
    output ICE_SPI_MISO;   // zimaux_main.vhd(29[3:15])
    input ICE_SPI_CE0;   // zimaux_main.vhd(30[3:14])
    input ICE_GPMO_0;   // zimaux_main.vhd(31[3:13])
    input ICE_GPMO_1;   // zimaux_main.vhd(32[3:13])
    input ICE_GPMO_2;   // zimaux_main.vhd(33[3:13])
    output ICE_GPMI_0;   // zimaux_main.vhd(34[3:13])
    input ICE_CHKCABLE;   // zimaux_main.vhd(35[3:15])
    output M_OSR0;   // zimaux_main.vhd(37[3:9])
    output M_OSR1;   // zimaux_main.vhd(38[3:9])
    output M_FLT0;   // zimaux_main.vhd(39[3:9])
    output M_FLT1;   // zimaux_main.vhd(40[3:9])
    output M_POW;   // zimaux_main.vhd(41[3:8])
    output M_DCSEL;   // zimaux_main.vhd(42[3:10])
    output M_START;   // zimaux_main.vhd(43[3:10])
    output M_CLK1;   // zimaux_main.vhd(45[3:9])
    output M_SCLK1;   // zimaux_main.vhd(46[3:10])
    output M_CS1;   // zimaux_main.vhd(47[3:8])
    output M_MOSI1;   // zimaux_main.vhd(48[3:10])
    input M_MISO1;   // zimaux_main.vhd(49[3:10])
    input M_DRDY1;   // zimaux_main.vhd(50[3:10])
    output M_CLK2;   // zimaux_main.vhd(52[3:9])
    output M_SCLK2;   // zimaux_main.vhd(53[3:10])
    output M_CS2;   // zimaux_main.vhd(54[3:8])
    output M_MOSI2;   // zimaux_main.vhd(55[3:10])
    input M_MISO2;   // zimaux_main.vhd(56[3:10])
    input M_DRDY2;   // zimaux_main.vhd(57[3:10])
    output M_CLK3;   // zimaux_main.vhd(59[3:9])
    output M_SCLK3;   // zimaux_main.vhd(60[3:10])
    output M_CS3;   // zimaux_main.vhd(61[3:8])
    output M_MOSI3;   // zimaux_main.vhd(62[3:10])
    input M_MISO3;   // zimaux_main.vhd(63[3:10])
    input M_DRDY3;   // zimaux_main.vhd(64[3:10])
    output M_CLK4;   // zimaux_main.vhd(66[3:9])
    output M_SCLK4;   // zimaux_main.vhd(67[3:10])
    output M_CS4;   // zimaux_main.vhd(68[3:8])
    output M_MOSI4;   // zimaux_main.vhd(69[3:10])
    input M_MISO4;   // zimaux_main.vhd(70[3:10])
    input M_DRDY4;   // zimaux_main.vhd(71[3:10])
    input START_SYNC;   // zimaux_main.vhd(73[3:13])
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zimaux_main.vhd(203[9:18])
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire VCC_net, n18, cs_sync1, cs_sync2, cs_falling_pend;
    wire [1:0]cs_mask_cnt;   // zimaux_main.vhd(215[9:20])
    
    wire reset_int;
    wire [15:0]buf_dds;   // zimaux_main.vhd(219[9:16])
    
    wire trig_dds, n9, n17046;
    wire [31:0]secclk_cnt;   // zimaux_main.vhd(223[9:19])
    wire [7:0]comm_tx_buf;   // zimaux_main.vhd(235[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zimaux_main.vhd(237[9:20])
    wire [3:0]comm_state;   // zimaux_main.vhd(240[9:19])
    wire [7:0]comm_cmd;   // zimaux_main.vhd(242[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[1] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[2] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[3] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[4] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[5] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[6] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[7] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[8] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[9] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[10] ;   // zimaux_main.vhd(245[9:17])
    wire [7:0]\comm_buf[11] ;   // zimaux_main.vhd(245[9:17])
    wire [3:0]comm_index;   // zimaux_main.vhd(246[9:19])
    wire [3:0]comm_length;   // zimaux_main.vhd(247[9:20])
    
    wire acadc_trig, acadc_dtrigH, acadc_dtrig1, acadc_dtrig2, acadc_dtrig3, 
        acadc_dtrig4, eis_adc_trig, vdc_adc_trig;
    wire [15:0]acadc_skipcnt;   // zimaux_main.vhd(263[9:22])
    wire [15:0]acadc_skipCount;   // zimaux_main.vhd(264[9:24])
    wire [7:0]buf_device_acadc;   // zimaux_main.vhd(266[9:25])
    wire [23:0]buf_adcdata1;   // zimaux_main.vhd(272[9:21])
    wire [23:0]buf_adcdata2;   // zimaux_main.vhd(273[9:21])
    wire [23:0]buf_adcdata3;   // zimaux_main.vhd(274[9:21])
    wire [23:0]buf_adcdata4;   // zimaux_main.vhd(275[9:21])
    wire [23:0]buf_adcdata_vdc1;   // zimaux_main.vhd(277[9:25])
    wire [23:0]buf_adcdata_vdc2;   // zimaux_main.vhd(278[9:25])
    wire [23:0]buf_adcdata_vdc3;   // zimaux_main.vhd(279[9:25])
    wire [23:0]buf_adcdata_vdc4;   // zimaux_main.vhd(280[9:25])
    wire [2:0]eis_state;   // zimaux_main.vhd(283[9:18])
    wire [2:0]dc_state;   // zimaux_main.vhd(284[9:17])
    
    wire tacadc_rst, eis_start_cmd, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zimaux_main.vhd(292[9:21])
    wire [95:0]buf_data2;
    wire [8:0]data_count;   // zimaux_main.vhd(299[9:19])
    wire [15:0]data_cntvec;   // zimaux_main.vhd(300[9:20])
    wire [8:0]data_index;   // zimaux_main.vhd(301[9:19])
    wire [15:0]data_idxvec;   // zimaux_main.vhd(302[9:20])
    wire [7:0]buf_control;   // zimaux_main.vhd(311[9:20])
    wire [7:0]synccnt;   // zimaux_main.vhd(329[9:16])
    
    wire n11706, stsync_N_400, synccnt_7__N_412, n11705, n4, n19163, 
        n7, n27, n6, n5, n11129, TEST_LED_N_973, n6127, n10, 
        n5_adj_1323, n17050, cs_mask_cnt_1__N_450, n21309, cs_falling_pend_N_986, 
        n5426;
    wire [3:0]comm_state_3__N_490;
    
    wire n7_adj_1324, n6129, n45, n27_adj_1325, n401;
    wire [3:0]comm_length_3__N_502;
    wire [7:0]comm_buf_1__7__N_538;
    wire [8:0]data_index_8__N_715;
    wire [15:0]data_idxvec_15__N_740;
    wire [2:0]comm_state_3__N_487;
    
    wire n549, n550, n551, n552, n553, n554, n555, n556, n5425, 
        n5424, n5422, n5421, n5420, n5419, n44, n43, n42, n41, 
        n40, n39, n38, n5394, n5393, n5391, n5389, n5388, n5387, 
        n12890, n6163, n12770, n5362, n5361, n5360, n5359, n5358, 
        n5356, n11654, n6_adj_1326, n5330, n5328, n2, n5324, n5323, 
        n5298, n5297, n5295, n5293, n5291, n19120, n5266, n5265, 
        n5264, n5263, n5262, n5260, n5259, n20848, n1, n7_adj_1327, 
        n1_adj_1328, n21186, n5213, n5191, n19122, n5176, n5175, 
        n5174, n5173, n5172, n5171, n5170, n5169, n15, n21111, 
        n11650, n2_adj_1329, n13078, n5131, n5129, n5128, n5126;
    wire [3:0]comm_index_3__N_498;
    
    wire n19505;
    wire [3:0]comm_state_3__N_471;
    
    wire n19504, comm_clear_N_994, ICE_GPMI_0_N_975, n20062, n20328;
    wire [3:0]comm_state_3__N_59;
    
    wire n20138, n20140, n20144, n20146, n20152, cs_falling_pend_N_980, 
        n20154, n9_adj_1330, n20156, n20164, n20170, n20172, n20174, 
        n20176, n20178, n20180, n20182, n20188, n20190, n20136, 
        n19503, n20766, n20192, n12, n19502, n20194, n20196, n20352, 
        n20202, n20204, n20206, n20292, n20214, n20294, n20218;
    wire [8:0]data_index_8__N_358;
    wire [15:0]data_idxvec_15__N_367;
    
    wire n20220, n9_adj_1331, n21008, n20226;
    wire [2:0]dc_state_2__N_314;
    
    wire n20230, n20232, n20234, n20236, n20258, n20260, n20262, 
        n20212, n19501, n19556, n20264, n20216, n19500, n20268, 
        n20272, n20310, n20158, n20274, n20306, n20276, n20284, 
        n20424, n20280, n20278, n20286, n20290, n19812, n19814, 
        n19816, n9_adj_1332, n12_adj_1333, n9_adj_1334, n9_adj_1335, 
        n21012, n7_adj_1336, n13, n13_adj_1337, n12613, raw_buf1_N_1030, 
        n2282, n2283, n2284, n2285, n2286, n2287, n2288, n2289, 
        n2290, n2293, n2294, n2295, n2296, n2297, n2298, n2299, 
        n2300, n2301, n2302, n2303, n2304, n2305, n2306, n2307, 
        n2308, n12_adj_1338, n20422, n5100, n5099, n5098, n5097, 
        n5096, n5095, n5094, n5093, n120, n119, n118, n117, 
        n116, n115, n2342, n2343, n2344, n2345, n2346, n2347, 
        n2348, n2349, n2350, n2351, n2352, n2353, n2354, n2355, 
        n2356, n2357, n114, n113, n19818, n20010, n20020, n20022;
    wire [2:0]eis_state_2__N_311;
    
    wire n7_adj_1339, n2_adj_1340, M_START_N_977, n112, sclk_sync1, 
        sclk_sync2, n20004, n21057, n5068, n5067, n4_adj_1341, n5065, 
        n5063, n5062, n5061, n111, n110, n109, n108, n107, n106, 
        n105, n15_adj_1342, n19555, n5_adj_1343, n17198, n20956, 
        n20308;
    wire [3:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, drdy_falling, n12974, n13002, n13058, 
        n15087, n15086, n15085, n14318, n15084, n15083, n15082, 
        n15081, n19730, n19820, n19822, n19824, n15068, n20296, 
        n26, n20008, n20302, n20304, n20018, n15045, n19944, n19734, 
        n15027, n15022, n15020, n19764, n104, n103, n102, n8, 
        n7_adj_1344, n101, n14, n21153, n5030, n5029, n5028, n21177, 
        n5019, n19748;
    wire [3:0]adc_state_adj_1547;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1548;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1370, drdy_prev_adj_1371, drdy_falling_adj_1372, 
        n12950, n19860, n12898, n12918, n5014, n5013, n5012, n19750, 
        n19864, n19752, n15005, n14999, n19762, n19732, n19830, 
        n19832, n19834, n19836, n19838, n19840, n19842, n21051, 
        n17178, n20977, n19844, n19846, n19848, n19850, n14950, 
        n5011, n5010, n5009, n5008, n5007, n5005, n10199, n4994, 
        n4993, n4992, n4991, n5458, n7999, n8003, n13086, n4981, 
        n4980, n4979, n4978, n15_adj_1373, n5457, n4977;
    wire [3:0]adc_state_adj_1570;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1571;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1410, drdy_prev_adj_1411, drdy_falling_adj_1412, 
        n12834, n12862, n4976, n4975, n4974, n14944, n19866, n19858, 
        n19862, n14934, n19880, n14928, n19888, n5_adj_1413, n19904, 
        n19906, n19908, n14906, n19554, n19910, n19912, n19914, 
        n19916, n19918, n19920, n19922, n19924, n21005, n10_adj_1414, 
        n4968, n4967, n5456, n4966, n4965, n21, n4964, n4963, 
        n100, n99, n98, n4962, n4961, n5455;
    wire [3:0]adc_state_adj_1593;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1594;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1451, drdy_prev_adj_1452, drdy_falling_adj_1453, 
        n12762, n4956, n4955, n4954, n14878, n19553, n19868, n19926, 
        n19928, n19930, n19932, n14863, n19934, n19728, n14857, 
        n19936, n14851, n19938, n19940, n14841, n19942, n14835, 
        n19552, n14832, n14829, n19946, n19948, n19551, n19499, 
        n3287, n13094, n21263;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1615;   // dds_ad9837.vhd(25[9:16])
    
    wire n19077, n5454, n4942, n19870, n23;
    wire [15:0]tmp_buf_15__N_1255;
    
    wire n5622, n4941, n4940, n4939, n4937, n4935, n19550, n5453, 
        n5452, n12874, n5451, n19952, n14795, n19954, n16043, 
        n19956, n5996, n14786, n4788, n4792, n4795, n21361, n4823, 
        n12648, n19872, n19034, n6_adj_1454, n6_adj_1455, n6_adj_1456, 
        n12524, n6586, n12544, n6_adj_1457, n12548, n12552, n12556, 
        n12560, n12564, n12568, n12572, n12576, n12580, n12584, 
        n21990, n7_adj_1458, n7_adj_1459, n8_adj_1460, n12617, n13498, 
        n1_adj_1461, n12628, n12632, n12636, n20382, n14_adj_1462, 
        n14_adj_1463, n13502, n14_adj_1464, n18991, n19878, n12882, 
        n14_adj_1465, n19549, n6153, n12822, n19882, n13598, n13597, 
        n20088, n19548, n19447, n15_adj_1466, n19471, n14_adj_1467, 
        n17, n20911, n7_adj_1468, n8_adj_1469, n7_adj_1470, n8_adj_1471, 
        n7_adj_1472, n8_adj_1473, n20753, n19, n21_adj_1474, n20750, 
        n21119, n14_adj_1475, n14_adj_1476, n14_adj_1477, n22, n14_adj_1478, 
        n14_adj_1479, n14_adj_1480, n14_adj_1481, n14_adj_1482, n21113, 
        n18948, n14_adj_1483, n14_adj_1484, n7_adj_1485, n8_adj_1486, 
        n7_adj_1487, n8_adj_1488, n20747, n7_adj_1489, n8_adj_1490, 
        n7_adj_1491, n7_adj_1492, n21405, n7_adj_1493, n7_adj_1494, 
        n8_adj_1495, n21192, n7_adj_1496, n21195, n21189, n7_adj_1497, 
        n30, n19884, n1_adj_1498, n19958, n12806, n7_adj_1499, n14780, 
        n21196, n18_adj_1500, n13725, n12810, n9462, n12814, n20746, 
        n26_adj_1501, n12826, n13781, n19960, n19547, n12838, n11557, 
        n13788, n12842, n13718, n18_adj_1502, n24, n23_adj_1503, 
        n1_adj_1504, n20344, n12866, n21053, n12886, n12902, n12906, 
        n19962, n19470, n12922, n12926, n12930, n13222, n18906, 
        n12934, n13663, n12938, n11075, n12954, n12958, n12962, 
        n13705, n22420, n19964, n12978, n20, n12982, n12986, n22417, 
        n22414, n13202, n18865, n13190, n13050, n22_adj_1505, n13038, 
        n22411, n19966, n9523, n22408, n17_adj_1506, n13062, n13066, 
        n22405, n13070, n20326, n13170, n1_adj_1507, n9723, n22402, 
        n20320, n13098, n13162, n13102, n13106, n28, n9719, n13142, 
        n22399, n19968, n20316, n13774, n22396, n16040, n13861, 
        n13146, n13150, n13154, n13174, n13126, n22393, n22390, 
        n21193, n13194, n11003, n13760, n13118, n22_adj_1508, n19970, 
        n21073, n1_adj_1509, n22387, n19756, n6_adj_1510, n19206, 
        n22384, n1_adj_1511, n6_adj_1512, n19740, n19886, n14282, 
        n22381, n14281, n14280, n14279, n14278, n14277, n22378, 
        n14276, n14275, n14274, n14273, n14272, n22375, n14271, 
        n14270, n22372, n14269, n14268, n19972, n21190, n13885, 
        n22369, n20242, n22363, n19546, n9_adj_1513, n19545, n11396, 
        n14267, n19974, n11391, n14266, n11388, n14265, n22357, 
        n13753, n14264, n14263, n22354, n14262, n22351, n14261, 
        n12315, n22348, n19976, n14260, n19544, n22345, n14259, 
        n22342, n14258, n22339, n22336, n20392, n14257, n14256, 
        n11358, n14255, n22333, n18_adj_1514, n14254, n22330, n14253, 
        n14252, n19978, n14251, n22327, n14250, n6_adj_1515, n22324, 
        n10949, n14249, n13767, n4_adj_1516, n14248, n14247, n14246, 
        n14245, n14244, n22321, n14243, n20080, n14242, n22318, 
        n11324, n14241, n20002, n14240, n20952, n14239, n19980, 
        n21381, n22315, n22312, n14238, n20256, n11316, n14237, 
        n20946, n14236, n19950, n20410, n14235, n14234, n14233, 
        n13732, n14232, n19982, n13739, n13_adj_1517, n14231, n19984, 
        n22309, n22306, n22303, n22300, n20889, n11285, n20346, 
        n16037, n20348, n17_adj_1518, n16041, n16044, n20248, n11269, 
        n20350, n16053, n20354, n20224, n22297, n20356, n19810, 
        n8_adj_1519, n20358, n1_adj_1520, n21620, n20362, n20364, 
        n1_adj_1521, n12199, n20142, n19876, n21477, n22294, n14230, 
        n10215, n14229, n22291, n22288, n14228, n14227, n22285, 
        n22282, n14226, n14225, n22279, n14224, n14223, n22276, 
        n22273, n22270, n7997, n14222, n20937, n14_adj_1522, n14221, 
        n7983, n22267, n14220, n22264, n14219, n15954, n20270, 
        n14218, n22261, n22258, n14217, n1_adj_1523, n14216, n22255, 
        n14215, n21187, n81, n14214, n22252, n20266, n14212, n22249, 
        n21305, n14211, n22246, n14210, n4_adj_1524, n22243, n14208, 
        n14207, n21378, n22240, n30_adj_1525, n14206, n29, n14205, 
        n9_adj_1526, n14204, n22237, n14203, n25, n14202, n10257, 
        n22234, n4_adj_1527, n14201, n14200, n20615, n19543, n22231, 
        n14199, n20238, n14198, n22228, n14197, n14196, n19542, 
        n14195, n20228, n9774, n14194, n19541, n14193, n19469, 
        n21474, n24_adj_1528, n19468, n22225, n12099, n22222, n20934, 
        n19467, n19828, n19540, n20412, n21472, n19539, n22219, 
        n20400, n19538, n10737, n22216, n14090, n20384, n19537, 
        n20210, n23_adj_1529, n19466, n22_adj_1530, n19902, n10767, 
        n22213, n10773, n22210, n7_adj_1531, n10786, n41_adj_1532, 
        n20885, n21_adj_1533, n22207, n20388, n19491, n20_adj_1534, 
        n22204, n14192, n19_adj_1535, n14191, n20300, n14190, n7421, 
        n14189, n14188, n22201, n14187, n22198, n14186, n21002, 
        n21059, n14185, n21154, n14184, n22195, n20614, n14183, 
        n20394, n21000, n14182, n19894, n14181, n14180, n20396, 
        n14179, n19746, n14178, n21061, n21372, n14177, n14176, 
        n20852, n14175, n20990, n10640, n14174, n11999, n19536, 
        n20402, n14173, n19856, n14172, n11213, n14171, n1_adj_1536, 
        n21063, n14170, n16, n19535, n19534, n14169, n14168, n19533, 
        n14167, n21178, n14166, n14165, n14164, n21371, n20168, 
        n19532, n14163, n14162, n14161, n19531, n14160, n10619, 
        n14159, n14158, n14157, n20162, n7112, n14156, n37, n14155, 
        n13746, n14154, n20376, n14153, n19661, n10187, n19445, 
        n19530, n19444, n19529, n19465, n20974, n20060, n19528, 
        n11039, n15_adj_1537, n21055, n21071, n19443, n20150, n19464, 
        n19490, n19463, n19489, n18532, n18523, n18521, n21066, 
        n21576, n21349, n4_adj_1538, n11899, n21010, n20960, n10682, 
        n13042, n13802, n20699, n13034, n14152, n15_adj_1539, n13030, 
        n14151, n13026, n14150, n20839, n14149, n13686, n19488, 
        n14148, n19487, n13014, n14147, n21103, n13010, n21075, 
        n14145, n22719, n10718, n9_adj_1540, n14143, n19486, n19462, 
        n10747, n19485, n14141, n19461, n9731, n19448, n19460, 
        n31, n14139, n10727, n10734, n14138, n19484, n19459, n14137, 
        n15_adj_1541, n14136, n19458, n19446, n20752, n20134, n14135, 
        n21078, n20048, n10757, n14134, n19457, n14133, n14132, 
        n19456, n14131, n19441, n10776, n14130, n14129, n14128, 
        n19455, n14127, n19454, n19440, n14125, n14124, n20426, 
        n10588, n14123, n19453, n14122, n19452, n14121, n14120, 
        n15_adj_1542, n14119, n20200, n20749, n19476, n14118, n19451, 
        n14117, n14116, n21089, n14115, n20846, n20931, n10829, 
        n19475, n19513, n19642, n10889, n20126, n11141, n6384, 
        n6370, n13795, n19450, n19512, n26_adj_1543, n19511, n21347, 
        n19510, n19509, n19508, n19474, n20042, n10524, n19449, 
        n19473, n6238, n10865, n10166, n19624, n19439, n19507, 
        n12798, n9737, n12794, n19442, n19472, n12786, n19506, 
        n12782, n12778;
    
    assign DISP_COMM = ICE_GPMO_2;   // zimaux_main.vhd(33[3:13])
    assign M_POW = M_DCSEL;   // zimaux_main.vhd(41[3:8])
    assign M_MOSI1 = M_MOSI4;   // zimaux_main.vhd(48[3:10])
    assign M_CLK2 = M_CLK1;   // zimaux_main.vhd(52[3:9])
    assign M_MOSI2 = M_MOSI4;   // zimaux_main.vhd(55[3:10])
    assign M_CLK3 = M_CLK1;   // zimaux_main.vhd(59[3:9])
    assign M_MOSI3 = M_MOSI4;   // zimaux_main.vhd(62[3:10])
    assign M_CLK4 = M_CLK1;   // zimaux_main.vhd(66[3:9])
    VCC i2 (.Y(VCC_net));
    zim_pll pll_main (.GND_net(M_MOSI4), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz));   // zimaux_main.vhd(832[13:20])
    SB_LUT4 i17845_4_lut (.I0(n21309), .I1(n5_adj_1343), .I2(comm_cmd[5]), 
            .I3(n7_adj_1336), .O(n21305));
    defparam i17845_4_lut.LUT_INIT = 16'h0c08;
    SB_DFFSR reset_int_379 (.Q(reset_int), .C(clk_32MHz), .D(n6153), .R(cs_mask_cnt_1__N_450));   // zimaux_main.vhd(437[3] 443[10])
    SB_LUT4 i10447_3_lut (.I0(buf_adcdata1[10]), .I1(cmd_rdadctmp[18]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14200));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10447_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF cs_sync1_380 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_clear_385_i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n10215), 
            .D(cs_falling_pend_N_980));   // zimaux_main.vhd(465[4] 703[13])
    SB_LUT4 i1_4_lut (.I0(tacadc_rst), .I1(dc_state[2]), .I2(n9_adj_1513), 
            .I3(dc_state[1]), .O(n11557));
    defparam i1_4_lut.LUT_INIT = 16'h5054;
    SB_LUT4 i31_4_lut (.I0(n21305), .I1(n5_adj_1323), .I2(comm_state[1]), 
            .I3(n20889), .O(n18_adj_1502));
    defparam i31_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), .I2(n11899), 
            .I3(adc_state[0]), .O(n20376));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cs_sync2_381 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1908_i4_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4965), 
            .I3(n4978), .O(n5011));
    defparam mux_1908_i4_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12_4_lut_adj_28 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20264));
    defparam i12_4_lut_adj_28.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1908_i6_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4963), 
            .I3(n4976), .O(n5009));
    defparam mux_1908_i6_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i18252_4_lut (.I0(comm_state[3]), .I1(n14_adj_1467), .I2(comm_state_3__N_490[1]), 
            .I3(n17), .O(n15_adj_1466));
    defparam i18252_4_lut.LUT_INIT = 16'hbabb;
    SB_LUT4 i12_4_lut_adj_29 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20268));
    defparam i12_4_lut_adj_29.LUT_INIT = 16'hca0a;
    SB_LUT4 i8772_3_lut (.I0(n22414), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12524));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8772_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF cs_prev_382 (.Q(comm_state_3__N_490[1]), .C(clk_32MHz), .D(cs_sync2));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1950_i2_3_lut (.I0(buf_adcdata_vdc1[9]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5175));
    defparam mux_1950_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1908_i3_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4966), 
            .I3(n4979), .O(n5012));
    defparam mux_1908_i3_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n21002), 
            .D(comm_state_3__N_59[0]));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i6975_4_lut (.I0(n5175), .I1(buf_data2[39]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10727));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6975_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_358[0]));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1899_i3_3_lut (.I0(buf_control[2]), .I1(M_FLT0), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4979));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6976_3_lut (.I0(n22396), .I1(n10727), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[1]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6976_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_442_Mux_1_i6_3_lut (.I0(comm_buf_1__7__N_538[1]), 
            .I1(comm_rx_buf[1]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1456));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_30 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20364));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[0]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNER dc_state_i0 (.Q(dc_state[0]), .C(clk_32MHz), .E(n11396), 
            .D(dc_state_2__N_314[0]), .R(tacadc_rst));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n11654), 
            .D(eis_state_2__N_311[0]), .R(tacadc_rst));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i2931_3_lut (.I0(data_index_8__N_715[0]), .I1(data_index[0]), 
            .I2(n9774), .I3(M_MOSI4), .O(n7_adj_1459));   // zimaux_main.vhd(465[4] 703[13])
    defparam i2931_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1950_i3_3_lut (.I0(buf_adcdata_vdc1[10]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5174));
    defparam mux_1950_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6985_4_lut (.I0(n5174), .I1(buf_data2[43]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10737));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6985_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_31 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20140));
    defparam i12_4_lut_adj_31.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_32 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20362));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_32.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_33 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20358));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_33.LUT_INIT = 16'hca0a;
    SB_LUT4 i10448_3_lut (.I0(buf_adcdata1[11]), .I1(cmd_rdadctmp[19]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14201));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10448_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6986_3_lut (.I0(n22390), .I1(n10737), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[2]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18406 (.I0(comm_cmd[0]), .I1(data_cntvec[6]), 
            .I2(acadc_skipCount[6]), .I3(n5191), .O(n22213));
    defparam comm_cmd_0__bdd_4_lut_18406.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_34 (.I0(cmd_rdadctmp_adj_1548[23]), .I1(cmd_rdadctmp_adj_1548[22]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20088));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_34.LUT_INIT = 16'hca0a;
    SPI_SLAVE comm_spi (.comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), 
            .reset_int(reset_int), .ICE_SPI_MISO(ICE_SPI_MISO), .GND_net(M_MOSI4), 
            .n5622(n5622), .comm_tx_buf({comm_tx_buf}), .comm_rx_buf({comm_rx_buf}), 
            .sclk_sync2(sclk_sync2), .sclk_sync1(sclk_sync1), .VCC_net(VCC_net), 
            .n14139(n14139), .n14137(n14137), .n14122(n14122));   // zimaux_main.vhd(842[13:22])
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(comm_cmd[7]), .I1(n3287), .I2(n17050), 
            .I3(comm_state[0]), .O(n20934));
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i10449_3_lut (.I0(buf_adcdata1[12]), .I1(cmd_rdadctmp[20]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14202));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10449_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_35 (.I0(cmd_rdadctmp_adj_1548[22]), .I1(cmd_rdadctmp_adj_1548[21]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20080));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_35.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_442_Mux_2_i6_3_lut (.I0(comm_buf_1__7__N_538[2]), 
            .I1(comm_rx_buf[2]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1455));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1950_i4_3_lut (.I0(buf_adcdata_vdc1[11]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5173));
    defparam mux_1950_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_36 (.I0(buf_adcdata_vdc2[1]), .I1(buf_adcdata2[1]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19810));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_36.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_37 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20356));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_37.LUT_INIT = 16'hca0a;
    SB_LUT4 i6995_4_lut (.I0(n5173), .I1(buf_data2[47]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10747));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6995_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6996_3_lut (.I0(n22234), .I1(n10747), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[3]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6996_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10450_3_lut (.I0(buf_adcdata1[13]), .I1(cmd_rdadctmp[21]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14203));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10450_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_442_Mux_3_i6_3_lut (.I0(comm_buf_1__7__N_538[3]), 
            .I1(comm_rx_buf[3]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1454));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22213_bdd_4_lut (.I0(n22213), .I1(buf_dds[6]), .I2(req_data_cnt[6]), 
            .I3(n5191), .O(n22216));
    defparam n22213_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_1890_i3_3_lut (.I0(acadc_skipCount[10]), .I1(tacadc_rst), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4954));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1890_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18180_2_lut (.I0(comm_state_3__N_490[1]), .I1(comm_state[2]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n21990));   // zimaux_main.vhd(465[4] 703[13])
    defparam i18180_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i18124_4_lut (.I0(comm_state_3__N_487[2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state_3__N_490[1]), .O(n21576));   // zimaux_main.vhd(465[4] 703[13])
    defparam i18124_4_lut.LUT_INIT = 16'hdcd0;
    SB_LUT4 mux_1950_i5_3_lut (.I0(buf_adcdata_vdc1[12]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5172));
    defparam mux_1950_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7005_4_lut (.I0(n5172), .I1(buf_data2[51]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10757));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7005_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i10451_3_lut (.I0(buf_adcdata1[14]), .I1(cmd_rdadctmp[22]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14204));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10451_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_38 (.I0(cmd_rdadctmp_adj_1594[30]), .I1(cmd_rdadctmp_adj_1594[29]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20276));
    defparam i12_4_lut_adj_38.LUT_INIT = 16'hca0a;
    SB_LUT4 i7006_3_lut (.I0(n22348), .I1(n10757), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[4]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7006_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2633_3_lut (.I0(comm_buf_1__7__N_538[4]), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6384));   // zimaux_main.vhd(465[4] 703[13])
    defparam i2633_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i51_3_lut (.I0(comm_state_3__N_471[3]), .I1(n20911), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n26));   // zimaux_main.vhd(465[4] 703[13])
    defparam i51_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i17887_3_lut (.I0(comm_index[1]), .I1(n20889), .I2(comm_index[0]), 
            .I3(M_MOSI4), .O(n21381));
    defparam i17887_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i52_4_lut (.I0(n21576), .I1(n21990), .I2(comm_state[0]), .I3(comm_state[1]), 
            .O(n23));   // zimaux_main.vhd(465[4] 703[13])
    defparam i52_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i1_4_lut_adj_39 (.I0(comm_state[2]), .I1(n22_adj_1508), .I2(n21381), 
            .I3(comm_state[1]), .O(n20848));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'ha088;
    SB_LUT4 comm_state_3__I_0_453_Mux_0_i15_4_lut (.I0(n7_adj_1459), .I1(n8_adj_1460), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[0]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1950_i6_3_lut (.I0(buf_adcdata_vdc1[13]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5171));
    defparam mux_1950_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_18527 (.I0(comm_index[0]), .I1(\comm_buf[2] [0]), 
            .I2(\comm_buf[3] [0]), .I3(comm_index[1]), .O(n22351));
    defparam comm_index_0__bdd_4_lut_18527.LUT_INIT = 16'he4aa;
    SB_LUT4 i7015_4_lut (.I0(n5171), .I1(buf_data2[55]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10767));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7015_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_40 (.I0(cmd_rdadctmp_adj_1594[29]), .I1(cmd_rdadctmp_adj_1594[28]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20278));
    defparam i12_4_lut_adj_40.LUT_INIT = 16'hca0a;
    SB_LUT4 i7016_3_lut (.I0(n22222), .I1(n10767), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[5]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7016_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2619_3_lut (.I0(comm_buf_1__7__N_538[5]), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6370));   // zimaux_main.vhd(465[4] 703[13])
    defparam i2619_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_41 (.I0(cmd_rdadctmp_adj_1594[28]), .I1(cmd_rdadctmp_adj_1594[27]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20422));
    defparam i12_4_lut_adj_41.LUT_INIT = 16'hca0a;
    SB_LUT4 i10452_3_lut (.I0(buf_adcdata1[15]), .I1(cmd_rdadctmp[23]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14205));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10452_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10453_3_lut (.I0(buf_adcdata1[16]), .I1(cmd_rdadctmp[24]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14206));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10453_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_42 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20354));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_42.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1950_i7_3_lut (.I0(buf_adcdata_vdc1[14]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5170));
    defparam mux_1950_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7024_4_lut (.I0(n5170), .I1(buf_data2[59]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10776));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7024_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1904_i3_4_lut (.I0(n4954), .I1(data_idxvec[10]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4992));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1904_i3_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10454_3_lut (.I0(buf_adcdata1[17]), .I1(cmd_rdadctmp[25]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14207));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10454_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7025_3_lut (.I0(n22216), .I1(n10776), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[6]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7025_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_43 (.I0(cmd_rdadctmp_adj_1594[27]), .I1(cmd_rdadctmp_adj_1594[26]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20280));
    defparam i12_4_lut_adj_43.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_442_Mux_6_i6_3_lut (.I0(comm_buf_1__7__N_538[6]), 
            .I1(comm_rx_buf[6]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1512));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_44 (.I0(cmd_rdadctmp_adj_1594[26]), .I1(cmd_rdadctmp_adj_1594[25]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20286));
    defparam i12_4_lut_adj_44.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_45 (.I0(cmd_rdadctmp_adj_1594[25]), .I1(cmd_rdadctmp_adj_1594[24]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20274));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_45.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_46 (.I0(cmd_rdadctmp_adj_1594[24]), .I1(cmd_rdadctmp_adj_1594[23]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20296));
    defparam i12_4_lut_adj_46.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_47 (.I0(cmd_rdadctmp_adj_1594[23]), .I1(cmd_rdadctmp_adj_1594[22]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20304));
    defparam i12_4_lut_adj_47.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_48 (.I0(cmd_rdadctmp_adj_1594[22]), .I1(cmd_rdadctmp_adj_1594[21]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20272));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_48.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18401 (.I0(comm_cmd[0]), .I1(data_cntvec[10]), 
            .I2(n4940), .I3(n5005), .O(n22207));
    defparam comm_cmd_0__bdd_4_lut_18401.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_cmd[7]), .I1(n3287), .I2(comm_index[2]), 
            .I3(comm_index[3]), .O(n10187));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 add_325_7_lut (.I0(M_MOSI4), .I1(data_cntvec[5]), .I2(M_MOSI4), 
            .I3(n19451), .O(n2303)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22351_bdd_4_lut (.I0(n22351), .I1(\comm_buf[1] [0]), .I2(\comm_buf[0] [0]), 
            .I3(comm_index[1]), .O(n22354));
    defparam n22351_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i50_4_lut (.I0(n23), .I1(n26), .I2(comm_state[3]), .I3(n7983), 
            .O(comm_state_3__N_59[1]));   // zimaux_main.vhd(465[4] 703[13])
    defparam i50_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i3_3_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[4]), .I2(n7_adj_1327), 
            .I3(n17046), .O(n6127));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i1_2_lut (.I0(comm_cmd[6]), .I1(comm_cmd[4]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n5_adj_1343));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut_adj_49 (.I0(n4_adj_1341), .I1(n5_adj_1343), .I2(comm_cmd[3]), 
            .I3(n21008), .O(n20846));
    defparam i1_4_lut_adj_49.LUT_INIT = 16'hc888;
    SB_LUT4 i12803_3_lut (.I0(buf_adcdata1[20]), .I1(cmd_rdadctmp[28]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14210));
    defparam i12803_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_50 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20352));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_50.LUT_INIT = 16'hca0a;
    SB_LUT4 i10458_3_lut (.I0(buf_adcdata1[21]), .I1(cmd_rdadctmp[29]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14211));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10458_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp_adj_1594[21]), .I1(cmd_rdadctmp_adj_1594[20]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20156));
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_CARRY add_329_9 (.CI(n19468), .I0(acadc_skipcnt[7]), .I1(M_MOSI4), 
            .CO(n19469));
    SB_LUT4 add_329_8_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[6]), .I2(M_MOSI4), 
            .I3(n19467), .O(n2351)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2373_4_lut (.I0(comm_cmd[5]), .I1(n5213), .I2(n20846), .I3(comm_cmd[1]), 
            .O(n6129));
    defparam i2373_4_lut.LUT_INIT = 16'h5010;
    SB_LUT4 i12833_3_lut (.I0(buf_adcdata1[22]), .I1(cmd_rdadctmp[30]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14212));
    defparam i12833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp_adj_1594[20]), .I1(cmd_rdadctmp_adj_1594[19]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20308));
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 i17910_2_lut (.I0(acadc_skipCount[12]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21371));
    defparam i17910_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18000_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21372));
    defparam i18000_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i18_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n7_adj_1327));
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_53 (.I0(n6129), .I1(n6127), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(n22_adj_1508));
    defparam i1_2_lut_adj_53.LUT_INIT = 16'heeee;
    SB_LUT4 n22207_bdd_4_lut (.I0(n22207), .I1(n4992), .I2(n5012), .I3(n5005), 
            .O(n22210));
    defparam n22207_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9977_2_lut (.I0(n10734), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13725));   // zimaux_main.vhd(448[3] 704[10])
    defparam i9977_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10461_3_lut (.I0(buf_adcdata2[1]), .I1(cmd_rdadctmp_adj_1548[9]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14214));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10461_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0 (.RDATA({buf_data2[95:88]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[23], buf_adcdata4[23], 
            buf_adcdata3[23], buf_adcdata2[23], buf_adcdata1[22], buf_adcdata4[22], 
            buf_adcdata3[22], buf_adcdata2[22]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_CARRY add_329_8 (.CI(n19467), .I0(acadc_skipcnt[6]), .I1(M_MOSI4), 
            .CO(n19468));
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11 (.RDATA({buf_data2[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[1], buf_adcdata4[1], 
            buf_adcdata3[1], buf_adcdata2[1], buf_adcdata1[0], buf_adcdata4[0], 
            buf_adcdata3[0], buf_adcdata2[0]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10 (.RDATA({buf_data2[15:8]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[3], buf_adcdata4[3], 
            buf_adcdata3[3], buf_adcdata2[3], buf_adcdata1[2], buf_adcdata4[2], 
            buf_adcdata3[2], buf_adcdata2[2]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged10.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9 (.RDATA({buf_data2[23:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[5], buf_adcdata4[5], 
            buf_adcdata3[5], buf_adcdata2[5], buf_adcdata1[4], buf_adcdata4[4], 
            buf_adcdata3[4], buf_adcdata2[4]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8 (.RDATA({buf_data2[31:24]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[7], buf_adcdata4[7], 
            buf_adcdata3[7], buf_adcdata2[7], buf_adcdata1[6], buf_adcdata4[6], 
            buf_adcdata3[6], buf_adcdata2[6]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged8.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7 (.RDATA({buf_data2[39:32]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[9], buf_adcdata4[9], 
            buf_adcdata3[9], buf_adcdata2[9], buf_adcdata1[8], buf_adcdata4[8], 
            buf_adcdata3[8], buf_adcdata2[8]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged7.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i29_4_lut (.I0(n22_adj_1508), .I1(n5), .I2(comm_state[1]), 
            .I3(n20889), .O(n12));
    defparam i29_4_lut.LUT_INIT = 16'h3a0a;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6 (.RDATA({buf_data2[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[11], buf_adcdata4[11], 
            buf_adcdata3[11], buf_adcdata2[11], buf_adcdata1[10], buf_adcdata4[10], 
            buf_adcdata3[10], buf_adcdata2[10]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5 (.RDATA({buf_data2[55:48]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[13], buf_adcdata4[13], 
            buf_adcdata3[13], buf_adcdata2[13], buf_adcdata1[12], buf_adcdata4[12], 
            buf_adcdata3[12], buf_adcdata2[12]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4 (.RDATA({buf_data2[63:56]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[15], buf_adcdata4[15], 
            buf_adcdata3[15], buf_adcdata2[15], buf_adcdata1[14], buf_adcdata4[14], 
            buf_adcdata3[14], buf_adcdata2[14]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i10462_3_lut (.I0(buf_adcdata2[2]), .I1(cmd_rdadctmp_adj_1548[10]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14215));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10462_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1950_i8_3_lut (.I0(buf_adcdata_vdc1[15]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5169));
    defparam mux_1950_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3 (.RDATA({buf_data2[71:64]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[17], buf_adcdata4[17], 
            buf_adcdata3[17], buf_adcdata2[17], buf_adcdata1[16], buf_adcdata4[16], 
            buf_adcdata3[16], buf_adcdata2[16]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2 (.RDATA({buf_data2[79:72]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[19], buf_adcdata4[19], 
            buf_adcdata3[19], buf_adcdata2[19], buf_adcdata1[18], buf_adcdata4[18], 
            buf_adcdata3[18], buf_adcdata2[18]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1 (.RDATA({buf_data2[87:80]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_358}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_1030), 
            .WADDR({data_count}), .WDATA({buf_adcdata1[21], buf_adcdata4[21], 
            buf_adcdata3[21], buf_adcdata2[21], buf_adcdata1[20], buf_adcdata4[20], 
            buf_adcdata3[20], buf_adcdata2[20]}));
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_8 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_9 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    defparam raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged1.INIT_F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    SB_LUT4 i7034_4_lut (.I0(n5169), .I1(buf_data2[63]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10786));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7034_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10463_3_lut (.I0(buf_adcdata2[3]), .I1(cmd_rdadctmp_adj_1548[11]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14216));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10463_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR synccnt_2149__i0 (.Q(synccnt[0]), .C(clk_32MHz), .D(n45), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 comm_cmd_0__bdd_4_lut_18396 (.I0(comm_cmd[0]), .I1(data_cntvec[7]), 
            .I2(acadc_skipCount[7]), .I3(n5191), .O(n22201));
    defparam comm_cmd_0__bdd_4_lut_18396.LUT_INIT = 16'he4aa;
    SB_LUT4 i7035_3_lut (.I0(n22204), .I1(n10786), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[7]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i7035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22201_bdd_4_lut (.I0(n22201), .I1(buf_dds[7]), .I2(req_data_cnt[7]), 
            .I3(n5191), .O(n22204));
    defparam n22201_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20348));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i10464_3_lut (.I0(buf_adcdata2[4]), .I1(cmd_rdadctmp_adj_1548[12]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14217));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10464_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_55 (.I0(cmd_rdadctmp_adj_1594[11]), .I1(cmd_rdadctmp_adj_1594[10]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20256));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_55.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_56 (.I0(cmd_rdadctmp_adj_1594[10]), .I1(cmd_rdadctmp_adj_1594[9]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20248));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_442_Mux_7_i6_3_lut (.I0(comm_buf_1__7__N_538[7]), 
            .I1(comm_rx_buf[7]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1510));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18542 (.I0(comm_cmd[0]), .I1(data_cntvec[4]), 
            .I2(acadc_skipCount[4]), .I3(n5191), .O(n22345));
    defparam comm_cmd_0__bdd_4_lut_18542.LUT_INIT = 16'he4aa;
    SB_LUT4 add_329_7_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[5]), .I2(M_MOSI4), 
            .I3(n19466), .O(n2352)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_1938_i2_3_lut (.I0(buf_data2[7]), .I1(buf_adcdata_vdc1[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5131));
    defparam mux_1938_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4271_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n7983));   // zimaux_main.vhd(465[4] 703[13])
    defparam i4271_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9469_3_lut (.I0(n5131), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13222));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9469_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15477_3_lut (.I0(buf_data2[11]), .I1(buf_adcdata_vdc1[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19163));   // zimaux_main.vhd(242[9:17])
    defparam i15477_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_329_7 (.CI(n19466), .I0(acadc_skipcnt[5]), .I1(M_MOSI4), 
            .CO(n19467));
    SB_LUT4 i12_4_lut_adj_57 (.I0(cmd_rdadctmp_adj_1571[13]), .I1(cmd_rdadctmp_adj_1571[12]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20188));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'hca0a;
    SB_LUT4 i15478_3_lut (.I0(n19163), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13202));   // zimaux_main.vhd(240[9:19])
    defparam i15478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp_adj_1571[12]), .I1(cmd_rdadctmp_adj_1571[11]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20182));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_LUT4 i10465_3_lut (.I0(buf_adcdata2[5]), .I1(cmd_rdadctmp_adj_1548[13]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14218));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10465_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF comm_clear_385_i2 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(ICE_GPMI_0_N_975));   // zimaux_main.vhd(465[4] 703[13])
    SB_DFFE comm_clear_385_i3 (.Q(comm_clear), .C(clk_32MHz), .E(n9_adj_1540), 
            .D(comm_clear_N_994));   // zimaux_main.vhd(465[4] 703[13])
    SB_LUT4 i15495_3_lut (.I0(buf_data2[15]), .I1(buf_adcdata_vdc1[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5129));   // zimaux_main.vhd(242[9:17])
    defparam i15495_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10466_3_lut (.I0(buf_adcdata2[6]), .I1(cmd_rdadctmp_adj_1548[14]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14219));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10466_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9441_3_lut (.I0(n5129), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13194));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9441_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22345_bdd_4_lut (.I0(n22345), .I1(buf_dds[4]), .I2(req_data_cnt[4]), 
            .I3(n5191), .O(n22348));
    defparam n22345_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10383_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n14136));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10383_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1938_i5_3_lut (.I0(buf_data2[19]), .I1(buf_adcdata_vdc1[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5128));
    defparam mux_1938_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_59 (.I0(cmd_rdadctmp_adj_1571[11]), .I1(cmd_rdadctmp_adj_1571[10]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20180));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_59.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_60 (.I0(cmd_rdadctmp_adj_1571[10]), .I1(cmd_rdadctmp_adj_1571[9]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20178));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'hca0a;
    SB_LUT4 i10467_3_lut (.I0(buf_adcdata2[7]), .I1(cmd_rdadctmp_adj_1548[15]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14220));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10467_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n6586), .I2(n21405), 
            .I3(comm_state[2]), .O(n22339));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20346));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i9437_3_lut (.I0(n5128), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13190));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9437_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_62 (.I0(buf_dds[14]), .I1(tmp_buf[13]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(tmp_buf_15__N_1255[14]));   // dds_ad9837.vhd(23[9:18])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'h0aca;
    SB_LUT4 i10468_3_lut (.I0(buf_adcdata2[8]), .I1(cmd_rdadctmp_adj_1548[16]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14221));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10468_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20344));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'hca0a;
    SB_LUT4 i15521_3_lut (.I0(buf_data2[23]), .I1(buf_adcdata_vdc1[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19206));   // zimaux_main.vhd(242[9:17])
    defparam i15521_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15522_3_lut (.I0(n19206), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13174));   // zimaux_main.vhd(240[9:19])
    defparam i15522_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17206_2_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21012));
    defparam i17206_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i15539_3_lut (.I0(buf_data2[27]), .I1(buf_adcdata_vdc1[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5126));   // zimaux_main.vhd(242[9:17])
    defparam i15539_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_64 (.I0(cmd_rdadctmp_adj_1548[29]), .I1(cmd_rdadctmp_adj_1548[28]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20146));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18508 (.I0(comm_cmd[0]), .I1(data_cntvec[8]), 
            .I2(n4942), .I3(n5005), .O(n22333));
    defparam comm_cmd_0__bdd_4_lut_18508.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_index_0__bdd_4_lut_18411 (.I0(comm_index[0]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[3] [5]), .I3(comm_index[1]), .O(n22195));
    defparam comm_index_0__bdd_4_lut_18411.LUT_INIT = 16'he4aa;
    SB_LUT4 n22333_bdd_4_lut (.I0(n22333), .I1(n4994), .I2(n5014), .I3(n5005), 
            .O(n22336));
    defparam n22333_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10469_3_lut (.I0(buf_adcdata2[9]), .I1(cmd_rdadctmp_adj_1548[17]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14222));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10469_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9417_3_lut (.I0(n5126), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13170));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp_adj_1571[9]), .I1(cmd_rdadctmp_adj_1571[8]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20176));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 i9984_2_lut (.I0(n10829), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13732));   // zimaux_main.vhd(448[3] 704[10])
    defparam i9984_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_66 (.I0(cmd_rdadctmp_adj_1571[8]), .I1(cmd_rdadctmp_adj_1571[7]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20174));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_67 (.I0(cmd_rdadctmp_adj_1571[7]), .I1(cmd_rdadctmp_adj_1571[6]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20172));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_68 (.I0(buf_adcdata_vdc1[22]), .I1(buf_adcdata1[22]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19984));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_69 (.I0(buf_dds[12]), .I1(tmp_buf[11]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(tmp_buf_15__N_1255[12]));   // dds_ad9837.vhd(23[9:18])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_70 (.I0(buf_adcdata_vdc1[21]), .I1(buf_adcdata1[21]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19982));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1894_i1_3_lut (.I0(req_data_cnt[8]), .I1(buf_data2[67]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4968));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12509_3_lut (.I0(buf_adcdata2[10]), .I1(cmd_rdadctmp_adj_1548[18]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14223));
    defparam i12509_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1899_i1_3_lut (.I0(buf_control[0]), .I1(M_OSR0), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4981));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1890_i1_3_lut (.I0(acadc_skipCount[8]), .I1(eis_start_cmd), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4956));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1890_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_71 (.I0(n20889), .I1(n20699), .I2(n20614), .I3(n21078), 
            .O(n10829));
    defparam i1_4_lut_adj_71.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12_4_lut_adj_72 (.I0(buf_adcdata_vdc1[20]), .I1(buf_adcdata1[20]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19980));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut (.I0(buf_data2[31]), .I1(buf_adcdata_vdc1[7]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n1_adj_1511));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1904_i1_4_lut (.I0(n4956), .I1(data_idxvec[8]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4994));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1904_i1_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6_3_lut (.I0(n1_adj_1511), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13162));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1884_i1_3_lut (.I0(buf_dds[8]), .I1(buf_adcdata_vdc1[16]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4942));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1884_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10471_3_lut (.I0(buf_adcdata2[11]), .I1(cmd_rdadctmp_adj_1548[19]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14224));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10471_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15230_3_lut (.I0(buf_adcdata2[12]), .I1(cmd_rdadctmp_adj_1548[20]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14225));
    defparam i15230_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10384_3_lut (.I0(sclk_sync1), .I1(ICE_SPI_SCLK), .I2(reset_int), 
            .I3(M_MOSI4), .O(n14137));   // spi_slave.vhd(48[3] 92[10])
    defparam i10384_3_lut.LUT_INIT = 16'hacac;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n15_adj_1466), 
            .D(comm_state_3__N_59[1]));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 equal_179_i2_2_lut (.I0(comm_index[1]), .I1(comm_length[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n2_adj_1340));   // zimaux_main.vhd(642[9:33])
    defparam equal_179_i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_4_lut (.I0(comm_length[2]), .I1(comm_index[3]), .I2(comm_index[2]), 
            .I3(comm_length[3]), .O(n6_adj_1515));   // zimaux_main.vhd(642[9:33])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut (.I0(comm_index[0]), .I1(n6_adj_1515), .I2(n2_adj_1340), 
            .I3(comm_length[0]), .O(n7_adj_1339));   // zimaux_main.vhd(642[9:33])
    defparam i3_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp_adj_1548[28]), .I1(cmd_rdadctmp_adj_1548[27]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20144));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1930_i2_3_lut (.I0(buf_data2[68]), .I1(buf_adcdata_vdc2[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5099));
    defparam mux_1930_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9401_3_lut (.I0(n5099), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13154));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9401_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n22), 
            .D(comm_state_3__N_59[3]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_358[1]));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i15231_3_lut (.I0(buf_adcdata2[13]), .I1(cmd_rdadctmp_adj_1548[21]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14226));
    defparam i15231_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_74 (.I0(buf_adcdata_vdc1[18]), .I1(buf_adcdata1[18]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19978));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1930_i3_3_lut (.I0(buf_data2[72]), .I1(buf_adcdata_vdc2[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5098));
    defparam mux_1930_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15228_3_lut (.I0(buf_adcdata2[14]), .I1(cmd_rdadctmp_adj_1548[22]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14227));
    defparam i15228_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9397_3_lut (.I0(n5098), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13150));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9397_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1930_i4_3_lut (.I0(buf_data2[76]), .I1(buf_adcdata_vdc2[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5097));
    defparam mux_1930_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9393_3_lut (.I0(n5097), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13146));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9393_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i19_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n8));
    defparam i19_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i12_4_lut_adj_75 (.I0(buf_adcdata_vdc1[17]), .I1(buf_adcdata1[17]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19976));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1930_i5_3_lut (.I0(buf_data2[80]), .I1(buf_adcdata_vdc2[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5096));
    defparam mux_1930_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10475_3_lut (.I0(buf_adcdata2[15]), .I1(cmd_rdadctmp_adj_1548[23]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14228));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10475_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9389_3_lut (.I0(n5096), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13142));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9389_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22195_bdd_4_lut (.I0(n22195), .I1(\comm_buf[1] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n22198));
    defparam n22195_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_falling_pend_N_980), 
            .I3(M_MOSI4), .O(n10215));   // zimaux_main.vhd(456[8:37])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h4f4f;
    SB_LUT4 i1_2_lut_adj_76 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20956));
    defparam i1_2_lut_adj_76.LUT_INIT = 16'hbbbb;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_358[2]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_358[3]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_358[4]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_358[5]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_358[6]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_358[7]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_358[8]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[1]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[2]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[3]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[4]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[5]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[6]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[7]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[8]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[9]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[10]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[11]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[12]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[13]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[14]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n11269), 
            .D(data_idxvec_15__N_367[15]));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNER dc_state_i1 (.Q(dc_state[1]), .C(clk_32MHz), .E(n11391), 
            .D(dc_state_2__N_314[1]), .R(tacadc_rst));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_18499 (.I0(comm_cmd[0]), .I1(data_cntvec[9]), 
            .I2(n4941), .I3(n5005), .O(n22327));
    defparam comm_cmd_0__bdd_4_lut_18499.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_index_0__bdd_4_lut_18426 (.I0(comm_index[0]), .I1(\comm_buf[6] [7]), 
            .I2(\comm_buf[7] [7]), .I3(comm_index[1]), .O(n22237));
    defparam comm_index_0__bdd_4_lut_18426.LUT_INIT = 16'he4aa;
    SB_LUT4 n22327_bdd_4_lut (.I0(n22327), .I1(n4993), .I2(n5013), .I3(n5005), 
            .O(n22330));
    defparam n22327_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n22237_bdd_4_lut (.I0(n22237), .I1(\comm_buf[5] [7]), .I2(\comm_buf[4] [7]), 
            .I3(comm_index[1]), .O(n22240));
    defparam n22237_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i2835_2_lut (.I0(comm_state_3__N_490[1]), .I1(comm_state[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6586));   // zimaux_main.vhd(465[4] 703[13])
    defparam i2835_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFNER dc_state_i2 (.Q(dc_state[2]), .C(clk_32MHz), .E(n11396), 
            .D(dc_state_2__N_314[2]), .R(tacadc_rst));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 add_1873_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n9774), 
            .I3(n19491), .O(n7_adj_1485)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i17343_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21153));
    defparam i17343_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_77 (.I0(eis_state[1]), .I1(M_DCSEL), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n41_adj_1532));   // zimaux_main.vhd(283[9:18])
    defparam i1_2_lut_adj_77.LUT_INIT = 16'heeee;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n11654), 
            .D(eis_state_2__N_311[1]), .R(tacadc_rst));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i3_4_lut_adj_78 (.I0(eis_state[0]), .I1(n16040), .I2(eis_state[1]), 
            .I3(n17198), .O(n19661));
    defparam i3_4_lut_adj_78.LUT_INIT = 16'h0040;
    SB_LUT4 add_329_6_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[4]), .I2(M_MOSI4), 
            .I3(n19465), .O(n2353)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1873_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n9774), 
            .I3(n19490), .O(n7_adj_1487)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_329_6 (.CI(n19465), .I0(acadc_skipcnt[4]), .I1(M_MOSI4), 
            .CO(n19466));
    SB_CARRY add_1873_9 (.CI(n19490), .I0(data_index[7]), .I1(n9774), 
            .CO(n19491));
    SB_LUT4 comm_cmd_0__bdd_4_lut_18494 (.I0(comm_cmd[0]), .I1(data_cntvec[3]), 
            .I2(acadc_skipCount[3]), .I3(n5191), .O(n22231));
    defparam comm_cmd_0__bdd_4_lut_18494.LUT_INIT = 16'he4aa;
    SB_LUT4 n22231_bdd_4_lut (.I0(n22231), .I1(buf_dds[3]), .I2(req_data_cnt[3]), 
            .I3(n5191), .O(n22234));
    defparam n22231_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_1884_i3_3_lut (.I0(buf_dds[10]), .I1(buf_adcdata_vdc1[18]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4940));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1884_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_18421 (.I0(comm_index[0]), .I1(\comm_buf[2] [4]), 
            .I2(\comm_buf[3] [4]), .I3(comm_index[1]), .O(n22225));
    defparam comm_index_0__bdd_4_lut_18421.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_79 (.I0(buf_adcdata_vdc1[16]), .I1(buf_adcdata1[16]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19974));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp_adj_1571[6]), .I1(cmd_rdadctmp_adj_1571[5]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20170));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i10476_3_lut (.I0(buf_adcdata2[16]), .I1(cmd_rdadctmp_adj_1548[24]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14229));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10476_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22225_bdd_4_lut (.I0(n22225), .I1(\comm_buf[1] [4]), .I2(\comm_buf[0] [4]), 
            .I3(comm_index[1]), .O(n22228));
    defparam n22225_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp_adj_1548[27]), .I1(cmd_rdadctmp_adj_1548[26]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20142));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp_adj_1571[5]), .I1(cmd_rdadctmp_adj_1571[4]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20168));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n21153), .I2(n21154), 
            .I3(comm_index[2]), .O(n22321));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i10477_3_lut (.I0(buf_adcdata2[17]), .I1(cmd_rdadctmp_adj_1548[25]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14230));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10477_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10478_3_lut (.I0(buf_adcdata2[18]), .I1(cmd_rdadctmp_adj_1548[26]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14231));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13330_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4795));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13330_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i10385_4_lut (.I0(eis_end), .I1(eis_state[2]), .I2(tacadc_rst), 
            .I3(n20852), .O(n14138));   // zimaux_main.vhd(748[3] 827[10])
    defparam i10385_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i12_4_lut_adj_83 (.I0(buf_adcdata_vdc1[15]), .I1(buf_adcdata1[15]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19972));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 i18283_4_lut (.I0(n7983), .I1(comm_state[0]), .I2(comm_state[3]), 
            .I3(n21010), .O(n9_adj_1540));
    defparam i18283_4_lut.LUT_INIT = 16'hecef;
    SB_LUT4 i14836_4_lut (.I0(buf_dds[6]), .I1(tmp_buf[5]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(tmp_buf_15__N_1255[6]));   // dds_ad9837.vhd(23[9:18])
    defparam i14836_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10479_3_lut (.I0(buf_adcdata2[19]), .I1(cmd_rdadctmp_adj_1548[27]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14232));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10479_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10480_3_lut (.I0(buf_adcdata2[20]), .I1(cmd_rdadctmp_adj_1548[28]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14233));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10480_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22321_bdd_4_lut (.I0(n22321), .I1(n21196), .I2(n21195), .I3(comm_index[2]), 
            .O(n22324));
    defparam n22321_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_1930_i6_3_lut (.I0(buf_data2[84]), .I1(buf_adcdata_vdc2[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5095));
    defparam mux_1930_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10481_3_lut (.I0(buf_adcdata2[21]), .I1(cmd_rdadctmp_adj_1548[29]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14234));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10481_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10482_3_lut (.I0(buf_adcdata2[22]), .I1(cmd_rdadctmp_adj_1548[30]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14235));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10482_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9373_3_lut (.I0(n5095), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13126));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9373_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[3]), .I2(n9737), 
            .I3(M_MOSI4), .O(n9731));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_3_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 mux_1930_i7_3_lut (.I0(buf_data2[88]), .I1(buf_adcdata_vdc2[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5094));
    defparam mux_1930_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_84 (.I0(buf_adcdata_vdc1[13]), .I1(buf_adcdata1[13]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19968));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_84.LUT_INIT = 16'hca0a;
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n9_adj_1331), 
            .D(eis_state_2__N_311[2]), .R(tacadc_rst));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i9365_3_lut (.I0(n5094), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13118));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9365_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1858_i4_4_lut (.I0(n4795), .I1(n6238), .I2(n4823), .I3(comm_state[3]), 
            .O(comm_clear_N_994));   // zimaux_main.vhd(465[4] 703[13])
    defparam mux_1858_i4_4_lut.LUT_INIT = 16'h3afa;
    SB_LUT4 i12380_3_lut (.I0(buf_adcdata2[23]), .I1(cmd_rdadctmp_adj_1548[31]), 
            .I2(n9719), .I3(M_MOSI4), .O(n14236));
    defparam i12380_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_509_i6_2_lut (.I0(comm_index[2]), .I1(comm_index[3]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6));   // zimaux_main.vhd(628[17:27])
    defparam equal_509_i6_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9991_2_lut (.I0(n10865), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13739));   // zimaux_main.vhd(448[3] 704[10])
    defparam i9991_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_85 (.I0(n6), .I1(n20699), .I2(n20614), .I3(n20934), 
            .O(n10865));
    defparam i1_4_lut_adj_85.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_1930_i8_3_lut (.I0(buf_data2[92]), .I1(buf_adcdata_vdc2[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5093));
    defparam mux_1930_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_86 (.I0(cmd_rdadctmp_adj_1548[26]), .I1(cmd_rdadctmp_adj_1548[25]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20138));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'hca0a;
    SB_LUT4 i9353_3_lut (.I0(n5093), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13106));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9353_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1922_i2_3_lut (.I0(buf_data2[36]), .I1(buf_adcdata_vdc2[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5067));
    defparam mux_1922_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9349_3_lut (.I0(n5067), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13102));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9349_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_87 (.I0(buf_adcdata_vdc1[12]), .I1(buf_adcdata1[12]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19966));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i10386_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(M_MOSI4), .O(n14139));   // spi_slave.vhd(48[3] 92[10])
    defparam i10386_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_88 (.I0(cmd_rdadctmp_adj_1571[19]), .I1(cmd_rdadctmp_adj_1571[18]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20320));
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut_adj_89 (.I0(buf_data2[40]), .I1(buf_adcdata_vdc2[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1507));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_89.LUT_INIT = 16'hcaca;
    SB_LUT4 i10484_3_lut (.I0(buf_adcdata3[1]), .I1(cmd_rdadctmp_adj_1571[9]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14237));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10484_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_90 (.I0(n1_adj_1507), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13098));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_90.LUT_INIT = 16'hcaca;
    SB_LUT4 i10485_3_lut (.I0(buf_adcdata3[2]), .I1(cmd_rdadctmp_adj_1571[10]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14238));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10485_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1922_i4_3_lut (.I0(buf_data2[44]), .I1(buf_adcdata_vdc2[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5065));
    defparam mux_1922_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9341_3_lut (.I0(n5065), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13094));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9341_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_91 (.I0(buf_adcdata_vdc1[11]), .I1(buf_adcdata1[11]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19964));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 add_329_5_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[3]), .I2(M_MOSI4), 
            .I3(n19464), .O(n2354)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i15214_3_lut (.I0(buf_data2[48]), .I1(buf_adcdata_vdc2[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18906));   // zimaux_main.vhd(242[9:17])
    defparam i15214_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15215_3_lut (.I0(n18906), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13086));   // zimaux_main.vhd(240[9:19])
    defparam i15215_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_92 (.I0(comm_cmd[4]), .I1(n17046), .I2(n8), 
            .I3(comm_cmd[1]), .O(n5005));   // zimaux_main.vhd(517[5] 599[14])
    defparam i2_3_lut_4_lut_adj_92.LUT_INIT = 16'h0020;
    SB_LUT4 i10486_3_lut (.I0(buf_adcdata3[3]), .I1(cmd_rdadctmp_adj_1571[11]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14239));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10486_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 clk_16MHz_I_0_1_lut (.I0(clk_16MHz), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(DDS_MCLK1));   // zimaux_main.vhd(337[17:30])
    defparam clk_16MHz_I_0_1_lut.LUT_INIT = 16'h5555;
    GND i1 (.Y(M_MOSI4));
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp_adj_1571[23]), .I1(cmd_rdadctmp_adj_1571[22]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20350));
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_LUT4 i15225_3_lut (.I0(buf_data2[52]), .I1(buf_adcdata_vdc2[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5063));   // zimaux_main.vhd(242[9:17])
    defparam i15225_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_94 (.I0(buf_adcdata_vdc1[10]), .I1(buf_adcdata1[10]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19962));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i9325_3_lut (.I0(n5063), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13078));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15229_3_lut (.I0(buf_data2[56]), .I1(buf_adcdata_vdc2[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5062));   // zimaux_main.vhd(242[9:17])
    defparam i15229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9317_3_lut (.I0(n5062), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13070));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9317_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_95 (.I0(buf_adcdata_vdc1[9]), .I1(buf_adcdata1[9]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19960));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc1[8]), .I1(buf_adcdata1[8]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19958));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_LUT4 i15113_4_lut (.I0(buf_adcdata_vdc1[7]), .I1(buf_adcdata1[7]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14780));
    defparam i15113_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i9998_2_lut (.I0(n10889), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13746));   // zimaux_main.vhd(448[3] 704[10])
    defparam i9998_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_97 (.I0(n5_adj_1323), .I1(n20699), .I2(n20614), 
            .I3(n20937), .O(n10889));
    defparam i1_4_lut_adj_97.LUT_INIT = 16'hc4c0;
    SB_LUT4 i6_4_lut (.I0(synccnt[1]), .I1(synccnt[4]), .I2(synccnt[5]), 
            .I3(synccnt[7]), .O(n14_adj_1522));   // zimaux_main.vhd(367[7:22])
    defparam i6_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_98 (.I0(cmd_rdadctmp_adj_1571[4]), .I1(cmd_rdadctmp_adj_1571[3]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20164));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_98.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_99 (.I0(cmd_rdadctmp_adj_1571[3]), .I1(cmd_rdadctmp_adj_1571[2]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20162));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_100 (.I0(cmd_rdadctmp_adj_1571[2]), .I1(cmd_rdadctmp_adj_1571[1]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20158));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_100.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1922_i8_3_lut (.I0(buf_data2[60]), .I1(buf_adcdata_vdc2[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5061));
    defparam mux_1922_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9313_3_lut (.I0(n5061), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13066));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9313_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp_adj_1571[22]), .I1(cmd_rdadctmp_adj_1571[21]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20196));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_102 (.I0(synccnt[0]), .I1(synccnt[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n9_adj_1526));   // zimaux_main.vhd(367[7:22])
    defparam i1_2_lut_adj_102.LUT_INIT = 16'heeee;
    SB_LUT4 mux_2024_i2_3_lut (.I0(buf_data2[4]), .I1(buf_adcdata_vdc2[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5457));
    defparam mux_2024_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9309_3_lut (.I0(n5457), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13062));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9309_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_329_5 (.CI(n19464), .I0(acadc_skipcnt[3]), .I1(M_MOSI4), 
            .CO(n19465));
    SB_LUT4 mux_2024_i3_3_lut (.I0(buf_data2[8]), .I1(buf_adcdata_vdc2[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5456));
    defparam mux_2024_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1873_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n9774), 
            .I3(n19489), .O(n18521)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i17367_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21177));
    defparam i17367_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_103 (.I0(cmd_rdadctmp_adj_1571[24]), .I1(cmd_rdadctmp_adj_1571[23]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20200));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_103.LUT_INIT = 16'hca0a;
    SB_LUT4 i7_4_lut (.I0(n9_adj_1526), .I1(n14_adj_1522), .I2(synccnt[2]), 
            .I3(synccnt[6]), .O(n15_adj_1373));   // zimaux_main.vhd(367[7:22])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i12_4_lut_adj_104 (.I0(cmd_rdadctmp_adj_1571[1]), .I1(cmd_rdadctmp_adj_1571[0]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20154));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_105 (.I0(cmd_rdadctmp_adj_1548[31]), .I1(cmd_rdadctmp_adj_1548[30]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20152));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 i9305_3_lut (.I0(n5456), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13058));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9305_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut_18489 (.I0(comm_index[1]), .I1(n21177), 
            .I2(n21178), .I3(comm_index[2]), .O(n22315));
    defparam comm_index_1__bdd_4_lut_18489.LUT_INIT = 16'he4aa;
    SB_LUT4 i10388_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n14141));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10388_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 n22315_bdd_4_lut (.I0(n22315), .I1(n21190), .I2(n21189), .I3(comm_index[2]), 
            .O(n22318));
    defparam n22315_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_106 (.I0(buf_adcdata_vdc1[6]), .I1(buf_adcdata1[6]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19956));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_107 (.I0(cmd_rdadctmp_adj_1548[25]), .I1(cmd_rdadctmp_adj_1548[24]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20136));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc1[3]), .I1(buf_adcdata1[3]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19952));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_1__bdd_4_lut_18484 (.I0(comm_index[1]), .I1(n21192), 
            .I2(n21193), .I3(comm_index[2]), .O(n22309));
    defparam comm_index_1__bdd_4_lut_18484.LUT_INIT = 16'he4aa;
    SB_LUT4 n22309_bdd_4_lut (.I0(n22309), .I1(n21187), .I2(n21186), .I3(comm_index[2]), 
            .O(n22312));
    defparam n22309_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_2024_i4_3_lut (.I0(buf_data2[12]), .I1(buf_adcdata_vdc2[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5455));
    defparam mux_2024_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_109 (.I0(cmd_rdadctmp_adj_1548[30]), .I1(cmd_rdadctmp_adj_1548[29]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20150));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_109.LUT_INIT = 16'hca0a;
    SB_LUT4 i9297_3_lut (.I0(n5455), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13050));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9297_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2024_i5_3_lut (.I0(buf_data2[16]), .I1(buf_adcdata_vdc2[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5454));
    defparam mux_2024_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15481_4_lut (.I0(buf_adcdata_vdc1[2]), .I1(buf_adcdata1[2]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14795));
    defparam i15481_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_110 (.I0(buf_adcdata_vdc1[1]), .I1(buf_adcdata1[1]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19950));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_110.LUT_INIT = 16'hca0a;
    SB_LUT4 i9289_3_lut (.I0(n5454), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13042));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9289_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2024_i6_3_lut (.I0(buf_data2[20]), .I1(buf_adcdata_vdc2[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5453));
    defparam mux_2024_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9285_3_lut (.I0(n5453), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13038));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9285_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18105_2_lut_2_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21620));
    defparam i18105_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_111 (.I0(cmd_rdadctmp_adj_1571[28]), .I1(cmd_rdadctmp_adj_1571[27]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20290));
    defparam i12_4_lut_adj_111.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2024_i7_3_lut (.I0(buf_data2[24]), .I1(buf_adcdata_vdc2[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5452));
    defparam mux_2024_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_112 (.I0(comm_data_vld), .I1(comm_state_3__N_490[1]), 
            .I2(comm_state[0]), .I3(n20614), .O(n20615));
    defparam i3_4_lut_adj_112.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_adj_113 (.I0(n9_adj_1332), .I1(comm_state[0]), 
            .I2(n12_adj_1333), .I3(M_MOSI4), .O(n7421));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_3_lut_adj_113.LUT_INIT = 16'hfefe;
    SB_CARRY add_1873_8 (.CI(n19489), .I0(data_index[6]), .I1(n9774), 
            .CO(n19490));
    SB_LUT4 add_1873_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n9774), 
            .I3(n19488), .O(n7_adj_1468)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i10487_3_lut (.I0(buf_adcdata3[4]), .I1(cmd_rdadctmp_adj_1571[12]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14240));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10487_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9281_3_lut (.I0(n5452), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13034));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9281_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 synccnt_7__I_0_i16_1_lut (.I0(n15_adj_1373), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(synccnt_7__N_412));   // zimaux_main.vhd(367[7:22])
    defparam synccnt_7__I_0_i16_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10005_2_lut (.I0(n10949), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13753));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10005_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i22_3_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n7_adj_1336));
    defparam i22_3_lut_4_lut.LUT_INIT = 16'hf422;
    SB_LUT4 i1_4_lut_adj_114 (.I0(n20615), .I1(n5_adj_1413), .I2(comm_state[0]), 
            .I3(n21012), .O(n4_adj_1516));
    defparam i1_4_lut_adj_114.LUT_INIT = 16'haa8a;
    SB_LUT4 i1_4_lut_adj_115 (.I0(n5), .I1(n20699), .I2(n20614), .I3(n20937), 
            .O(n10949));
    defparam i1_4_lut_adj_115.LUT_INIT = 16'hc4c0;
    SB_LUT4 i17267_2_lut (.I0(eis_state[2]), .I1(tacadc_rst), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21075));
    defparam i17267_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_116 (.I0(buf_adcdata_vdc4[23]), .I1(buf_adcdata4[23]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19946));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_117 (.I0(acadc_dtrigH), .I1(eis_state[0]), .I2(eis_state[1]), 
            .I3(n21075), .O(raw_buf1_N_1030));   // zimaux_main.vhd(748[3] 827[10])
    defparam i3_4_lut_adj_117.LUT_INIT = 16'h0080;
    SB_LUT4 i1_2_lut_2_lut (.I0(eis_state[2]), .I1(acadc_dtrigH), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n16043));
    defparam i1_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12921_3_lut (.I0(buf_adcdata3[5]), .I1(cmd_rdadctmp_adj_1571[13]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14241));
    defparam i12921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(buf_dds[12]), .I2(buf_adcdata_vdc1[20]), 
            .I3(n5005), .O(n22303));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_2024_i8_3_lut (.I0(buf_data2[28]), .I1(buf_adcdata_vdc2[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5451));
    defparam mux_2024_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_118 (.I0(buf_adcdata_vdc4[22]), .I1(buf_adcdata4[22]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19944));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_119 (.I0(comm_state_3__N_490[1]), .I1(n4_adj_1516), 
            .I2(n21000), .I3(comm_state[0]), .O(n21002));
    defparam i2_4_lut_adj_119.LUT_INIT = 16'hc8cc;
    SB_LUT4 i1_4_lut_4_lut (.I0(eis_state[2]), .I1(n20960), .I2(n41_adj_1532), 
            .I3(n19661), .O(n20852));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hcf45;
    SB_LUT4 i12_4_lut_adj_120 (.I0(cmd_rdadctmp_adj_1571[31]), .I1(cmd_rdadctmp_adj_1571[30]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20216));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hca0a;
    SB_LUT4 add_329_4_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[2]), .I2(M_MOSI4), 
            .I3(n19463), .O(n2355)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_121 (.I0(cmd_rdadctmp_adj_1571[30]), .I1(cmd_rdadctmp_adj_1571[29]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20292));
    defparam i12_4_lut_adj_121.LUT_INIT = 16'hca0a;
    SB_LUT4 i10489_3_lut (.I0(buf_adcdata3[6]), .I1(cmd_rdadctmp_adj_1571[14]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14242));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10489_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9277_3_lut (.I0(n5451), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13030));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9277_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15439_4_lut (.I0(buf_adcdata_vdc4[21]), .I1(buf_adcdata4[21]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14829));
    defparam i15439_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2016_i2_3_lut (.I0(buf_data2[69]), .I1(buf_adcdata_vdc3[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5425));
    defparam mux_2016_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9273_3_lut (.I0(n5425), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13026));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9273_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1873_7 (.CI(n19488), .I0(data_index[5]), .I1(n9774), 
            .CO(n19489));
    SB_LUT4 mux_2016_i3_3_lut (.I0(buf_data2[73]), .I1(buf_adcdata_vdc3[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5424));
    defparam mux_2016_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i24_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n21263), 
            .I3(n6163), .O(n9_adj_1331));
    defparam i24_4_lut_4_lut.LUT_INIT = 16'h2e3f;
    SB_LUT4 i15188_3_lut (.I0(buf_adcdata3[7]), .I1(cmd_rdadctmp_adj_1571[15]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14243));
    defparam i15188_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15189_3_lut (.I0(buf_adcdata3[8]), .I1(cmd_rdadctmp_adj_1571[16]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14244));
    defparam i15189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_437_Mux_0_i15_3_lut (.I0(n22342), .I1(n7983), 
            .I2(comm_state[3]), .I3(M_MOSI4), .O(comm_state_3__N_59[0]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_437_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i15447_4_lut (.I0(buf_adcdata_vdc4[20]), .I1(buf_adcdata4[20]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14832));
    defparam i15447_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15186_3_lut (.I0(buf_adcdata3[9]), .I1(cmd_rdadctmp_adj_1571[17]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14245));
    defparam i15186_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15109_4_lut (.I0(buf_adcdata_vdc4[19]), .I1(buf_adcdata4[19]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14835));
    defparam i15109_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15277_3_lut (.I0(buf_adcdata3[10]), .I1(cmd_rdadctmp_adj_1571[18]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14246));
    defparam i15277_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9261_3_lut (.I0(n5424), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13014));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9261_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15274_3_lut (.I0(buf_adcdata3[11]), .I1(cmd_rdadctmp_adj_1571[19]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14247));
    defparam i15274_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_122 (.I0(buf_data2[77]), .I1(buf_adcdata_vdc3[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1509));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_122.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_123 (.I0(buf_adcdata_vdc4[18]), .I1(buf_adcdata4[18]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19940));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_123.LUT_INIT = 16'hca0a;
    SB_LUT4 i10496_3_lut (.I0(buf_adcdata3[13]), .I1(cmd_rdadctmp_adj_1571[21]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14249));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10496_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10497_3_lut (.I0(buf_adcdata3[14]), .I1(cmd_rdadctmp_adj_1571[22]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14250));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10498_3_lut (.I0(buf_adcdata3[15]), .I1(cmd_rdadctmp_adj_1571[23]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14251));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10498_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10499_3_lut (.I0(buf_adcdata3[16]), .I1(cmd_rdadctmp_adj_1571[24]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14252));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10499_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_124 (.I0(n1_adj_1509), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13010));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_124.LUT_INIT = 16'hcaca;
    SB_LUT4 i10500_3_lut (.I0(buf_adcdata3[17]), .I1(cmd_rdadctmp_adj_1571[25]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14253));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10500_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2016_i5_3_lut (.I0(buf_data2[81]), .I1(buf_adcdata_vdc3[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5422));
    defparam mux_2016_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9249_3_lut (.I0(n5422), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13002));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9249_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10390_2_lut (.I0(drdy_sync2_adj_1370), .I1(drdy_prev_adj_1371), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14143));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10390_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i15393_4_lut (.I0(buf_adcdata_vdc4[17]), .I1(buf_adcdata4[17]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14841));
    defparam i15393_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2016_i6_3_lut (.I0(buf_data2[85]), .I1(buf_adcdata_vdc3[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5421));
    defparam mux_2016_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9233_3_lut (.I0(n5421), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12986));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9233_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10501_3_lut (.I0(buf_adcdata3[18]), .I1(cmd_rdadctmp_adj_1571[26]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14254));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10501_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(buf_adcdata_vdc4[16]), .I1(buf_adcdata4[16]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19938));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2016_i7_3_lut (.I0(buf_data2[89]), .I1(buf_adcdata_vdc3[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5420));
    defparam mux_2016_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp_adj_1594[9]), .I1(cmd_rdadctmp_adj_1594[8]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20242));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i9229_3_lut (.I0(n5420), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12982));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9229_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10012_2_lut (.I0(n11003), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13760));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10012_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 eis_state_0__bdd_4_lut_18522_4_lut (.I0(eis_state[2]), .I1(eis_state[1]), 
            .I2(n21477), .I3(eis_state[0]), .O(n22357));
    defparam eis_state_0__bdd_4_lut_18522_4_lut.LUT_INIT = 16'h77c0;
    SB_DFFR M_START_372_9844_9845_reset (.Q(n13598), .C(clk_32MHz), .D(synccnt_7__N_412), 
            .R(M_START_N_977));   // zimaux_main.vhd(362[3] 375[10])
    SB_LUT4 i13011_3_lut (.I0(buf_adcdata3[19]), .I1(cmd_rdadctmp_adj_1571[27]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14255));
    defparam i13011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_127 (.I0(buf_adcdata_vdc4[15]), .I1(buf_adcdata4[15]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19936));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 i10503_3_lut (.I0(buf_adcdata3[20]), .I1(cmd_rdadctmp_adj_1571[28]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14256));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10503_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18018_2_lut_3_lut (.I0(eis_start), .I1(n16037), .I2(eis_state[2]), 
            .I3(M_MOSI4), .O(n21477));   // zimaux_main.vhd(362[3] 375[10])
    defparam i18018_2_lut_3_lut.LUT_INIT = 16'hf2f2;
    SB_LUT4 i33_3_lut_4_lut_4_lut (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(comm_data_vld), .O(n17));
    defparam i33_3_lut_4_lut_4_lut.LUT_INIT = 16'h0830;
    SB_LUT4 i1_4_lut_adj_128 (.I0(n10187), .I1(n20699), .I2(n20614), .I3(n21078), 
            .O(n11003));
    defparam i1_4_lut_adj_128.LUT_INIT = 16'hc0c8;
    SB_LUT4 i15349_4_lut (.I0(buf_adcdata_vdc4[14]), .I1(buf_adcdata4[14]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14851));
    defparam i15349_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10504_3_lut (.I0(buf_adcdata3[21]), .I1(cmd_rdadctmp_adj_1571[29]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14257));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10504_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2239_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_490[1]), .I3(comm_index[1]), .O(n5996));   // zimaux_main.vhd(623[5] 633[12])
    defparam i2239_2_lut_3_lut_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i12289_3_lut_4_lut (.I0(eis_start), .I1(n16037), .I2(eis_state[2]), 
            .I3(n16040), .O(n16041));   // zimaux_main.vhd(362[3] 375[10])
    defparam i12289_3_lut_4_lut.LUT_INIT = 16'hfd0d;
    SB_LUT4 i13009_3_lut (.I0(buf_data2[93]), .I1(buf_adcdata_vdc3[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5419));   // zimaux_main.vhd(242[9:17])
    defparam i13009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp_adj_1594[8]), .I1(cmd_rdadctmp_adj_1594[7]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20238));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_130 (.I0(buf_adcdata_vdc4[13]), .I1(buf_adcdata4[13]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19934));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'hca0a;
    SB_LUT4 i10505_3_lut (.I0(buf_adcdata3[22]), .I1(cmd_rdadctmp_adj_1571[30]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14258));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10505_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_131 (.I0(cmd_rdadctmp_adj_1594[7]), .I1(cmd_rdadctmp_adj_1594[6]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20234));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'hca0a;
    SB_LUT4 i9225_3_lut (.I0(n5419), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12978));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9225_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS M_START_372_9844_9845_set (.Q(n13597), .C(clk_32MHz), .D(synccnt_7__N_412), 
            .S(M_DCSEL));   // zimaux_main.vhd(362[3] 375[10])
    SB_LUT4 i15187_3_lut (.I0(buf_data2[37]), .I1(buf_adcdata_vdc3[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5393));   // zimaux_main.vhd(242[9:17])
    defparam i15187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9221_3_lut (.I0(n5393), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12974));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9221_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_132 (.I0(cmd_rdadctmp_adj_1594[6]), .I1(cmd_rdadctmp_adj_1594[5]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20232));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_132.LUT_INIT = 16'hca0a;
    SB_LUT4 i15257_3_lut (.I0(buf_data2[41]), .I1(buf_adcdata_vdc3[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18948));   // zimaux_main.vhd(242[9:17])
    defparam i15257_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15258_3_lut (.I0(n18948), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12962));   // zimaux_main.vhd(240[9:19])
    defparam i15258_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15275_3_lut (.I0(buf_data2[45]), .I1(buf_adcdata_vdc3[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5391));   // zimaux_main.vhd(242[9:17])
    defparam i15275_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9205_3_lut (.I0(n5391), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12958));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9205_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_133 (.I0(cmd_rdadctmp_adj_1594[5]), .I1(cmd_rdadctmp_adj_1594[4]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20230));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_133.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut_adj_134 (.I0(buf_data2[49]), .I1(buf_adcdata_vdc3[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1498));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_134.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_135 (.I0(n1_adj_1498), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12954));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_135.LUT_INIT = 16'hcaca;
    SB_LUT4 i10392_2_lut (.I0(drdy_sync2_adj_1410), .I1(drdy_prev_adj_1411), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14145));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10392_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp_adj_1594[4]), .I1(cmd_rdadctmp_adj_1594[3]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20228));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2008_i6_3_lut (.I0(buf_data2[53]), .I1(buf_adcdata_vdc3[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5389));
    defparam mux_2008_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13010_3_lut (.I0(buf_adcdata3[23]), .I1(cmd_rdadctmp_adj_1571[31]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14259));
    defparam i13010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1594[3]), .I1(cmd_rdadctmp_adj_1594[2]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20224));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 n22303_bdd_4_lut (.I0(n22303), .I1(n21372), .I2(n21371), .I3(n5005), 
            .O(n22306));
    defparam n22303_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9197_3_lut (.I0(n5389), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12950));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9197_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2008_i7_3_lut (.I0(buf_data2[57]), .I1(buf_adcdata_vdc3[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5388));
    defparam mux_2008_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_453_Mux_8_i15_4_lut (.I0(n7_adj_1485), .I1(n8_adj_1486), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[8]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_138 (.I0(buf_adcdata_vdc4[11]), .I1(buf_adcdata4[11]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19932));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 i10507_3_lut (.I0(buf_adcdata4[1]), .I1(cmd_rdadctmp_adj_1594[9]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14260));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10507_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15305_4_lut (.I0(buf_adcdata_vdc4[10]), .I1(buf_adcdata4[10]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14863));
    defparam i15305_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_18513 (.I0(comm_index[0]), .I1(\comm_buf[10] [0]), 
            .I2(\comm_buf[11] [0]), .I3(comm_index[1]), .O(n22297));
    defparam comm_index_0__bdd_4_lut_18513.LUT_INIT = 16'he4aa;
    SB_LUT4 n22297_bdd_4_lut (.I0(n22297), .I1(\comm_buf[9] [0]), .I2(\comm_buf[8] [0]), 
            .I3(comm_index[1]), .O(n22300));
    defparam n22297_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1548[21]), .I1(cmd_rdadctmp_adj_1548[20]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20326));
    defparam i12_4_lut_adj_139.LUT_INIT = 16'hca0a;
    SB_LUT4 i10508_3_lut (.I0(buf_adcdata4[2]), .I1(cmd_rdadctmp_adj_1594[10]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14261));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10508_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1548[20]), .I1(cmd_rdadctmp_adj_1548[19]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20062));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_141 (.I0(buf_adcdata_vdc4[9]), .I1(buf_adcdata4[9]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19930));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i2237_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_490[1]), .I3(comm_index[1]), .O(comm_index_3__N_498[1]));   // zimaux_main.vhd(623[5] 633[12])
    defparam i2237_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i9185_3_lut (.I0(n5388), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12938));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9185_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_142 (.I0(dc_state[1]), .I1(dc_state[2]), 
            .I2(acadc_dtrigH), .I3(dc_state[0]), .O(n4_adj_1538));
    defparam i1_4_lut_4_lut_adj_142.LUT_INIT = 16'h7577;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp_adj_1548[19]), .I1(cmd_rdadctmp_adj_1548[18]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20060));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 equal_317_i2_2_lut (.I0(acadc_skipCount[1]), .I1(acadc_skipcnt[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n2_adj_1329));   // zimaux_main.vhd(776[10:41])
    defparam equal_317_i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[11]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[11]), .O(n20));   // zimaux_main.vhd(776[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp_adj_1594[18]), .I1(cmd_rdadctmp_adj_1594[17]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20270));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[14]), .I1(acadc_skipCount[9]), 
            .I2(acadc_skipcnt[14]), .I3(acadc_skipcnt[9]), .O(n24));   // zimaux_main.vhd(776[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_145 (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[10]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[10]), .O(n22_adj_1505));   // zimaux_main.vhd(776[10:41])
    defparam i6_4_lut_adj_145.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd_rdadctmp_adj_1594[17]), .I1(cmd_rdadctmp_adj_1594[16]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20266));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_4_lut_adj_147 (.I0(comm_state[0]), .I1(n18_adj_1502), 
            .I2(n20956), .I3(n20885), .O(n10718));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_4_lut_4_lut_adj_147.LUT_INIT = 16'hf400;
    SB_LUT4 i7_4_lut_adj_148 (.I0(acadc_skipCount[12]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[12]), .I3(acadc_skipcnt[15]), .O(n23_adj_1503));   // zimaux_main.vhd(776[10:41])
    defparam i7_4_lut_adj_148.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n21));   // zimaux_main.vhd(776[10:41])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_149 (.I0(acadc_skipCount[6]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[6]), .I3(acadc_skipcnt[4]), .O(n18_adj_1500));   // zimaux_main.vhd(776[10:41])
    defparam i2_4_lut_adj_149.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20), .I2(n2_adj_1329), 
            .I3(acadc_skipcnt[8]), .O(n26_adj_1501));   // zimaux_main.vhd(776[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_1503), .I2(n22_adj_1505), 
            .I3(n24), .O(n30));   // zimaux_main.vhd(776[10:41])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_150 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[13]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[13]), .O(n17_adj_1506));   // zimaux_main.vhd(776[10:41])
    defparam i1_4_lut_adj_150.LUT_INIT = 16'h7bde;
    SB_LUT4 i10509_3_lut (.I0(buf_adcdata4[3]), .I1(cmd_rdadctmp_adj_1594[11]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14262));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10509_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15_4_lut (.I0(n17_adj_1506), .I1(n30), .I2(n26_adj_1501), 
            .I3(n18_adj_1500), .O(n16037));   // zimaux_main.vhd(776[10:41])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp_adj_1594[16]), .I1(cmd_rdadctmp_adj_1594[15]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20214));
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_4_lut_adj_152 (.I0(comm_cmd[3]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[1]), .O(n27));   // zimaux_main.vhd(658[5] 690[14])
    defparam i1_4_lut_4_lut_adj_152.LUT_INIT = 16'h23b2;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp_adj_1594[12]), .I1(cmd_rdadctmp_adj_1594[11]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20258));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'hca0a;
    SB_LUT4 i9808_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n13498));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9808_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1594[13]), .I1(cmd_rdadctmp_adj_1594[12]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20260));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_155 (.I0(cmd_rdadctmp_adj_1548[24]), .I1(cmd_rdadctmp_adj_1548[23]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20126));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp_adj_1594[14]), .I1(cmd_rdadctmp_adj_1594[13]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20210));
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(comm_state[2]), .O(n5_adj_1413));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hff02;
    SB_LUT4 i12_4_lut_adj_157 (.I0(buf_adcdata_vdc4[8]), .I1(buf_adcdata4[8]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19928));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_158 (.I0(buf_adcdata_vdc4[7]), .I1(buf_adcdata4[7]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19926));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1594[15]), .I1(cmd_rdadctmp_adj_1594[14]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20262));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'hca0a;
    SB_LUT4 i13408_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1463));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13408_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_3_lut_4_lut_4_lut (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(comm_state[3]), .O(n13705));
    defparam i1_3_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'hfa04;
    SB_LUT4 i10019_2_lut (.I0(n11039), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13767));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10019_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13056_3_lut (.I0(buf_adcdata4[5]), .I1(cmd_rdadctmp_adj_1594[13]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14264));
    defparam i13056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13315_2_lut (.I0(comm_cmd[6]), .I1(comm_cmd[5]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17046));
    defparam i13315_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10512_3_lut (.I0(buf_adcdata4[6]), .I1(cmd_rdadctmp_adj_1594[14]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14265));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10512_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_160 (.I0(n17050), .I1(n20699), .I2(n20614), .I3(n20937), 
            .O(n11039));
    defparam i1_4_lut_adj_160.LUT_INIT = 16'hc8c0;
    SB_LUT4 i12_4_lut_adj_161 (.I0(buf_adcdata_vdc4[6]), .I1(buf_adcdata4[6]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19924));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_18471 (.I0(comm_index[0]), .I1(\comm_buf[10] [7]), 
            .I2(\comm_buf[11] [7]), .I3(comm_index[1]), .O(n22291));
    defparam comm_index_0__bdd_4_lut_18471.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_state_3__I_0_453_Mux_7_i15_4_lut (.I0(n7_adj_1487), .I1(n8_adj_1488), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[7]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_2008_i8_3_lut (.I0(buf_data2[61]), .I1(buf_adcdata_vdc3[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5387));
    defparam mux_2008_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9181_3_lut (.I0(n5387), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12934));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18416 (.I0(comm_cmd[0]), .I1(data_cntvec[5]), 
            .I2(acadc_skipCount[5]), .I3(n5191), .O(n22219));
    defparam comm_cmd_0__bdd_4_lut_18416.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_2000_i2_3_lut (.I0(buf_data2[5]), .I1(buf_adcdata_vdc3[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5361));
    defparam mux_2000_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22291_bdd_4_lut (.I0(n22291), .I1(\comm_buf[9] [7]), .I2(\comm_buf[8] [7]), 
            .I3(comm_index[1]), .O(n22294));
    defparam n22291_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9177_3_lut (.I0(n5361), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12930));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14825_4_lut (.I0(n18521), .I1(n18523), .I2(comm_state[3]), 
            .I3(n7983), .O(data_index_8__N_358[6]));   // zimaux_main.vhd(240[9:19])
    defparam i14825_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2244_2_lut_4_lut (.I0(comm_index[2]), .I1(comm_index[0]), .I2(n3287), 
            .I3(comm_index[1]), .O(comm_index_3__N_498[2]));   // zimaux_main.vhd(623[5] 633[12])
    defparam i2244_2_lut_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 i10513_3_lut (.I0(buf_adcdata4[7]), .I1(cmd_rdadctmp_adj_1594[15]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14266));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10513_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13040_4_lut (.I0(buf_adcdata_vdc4[5]), .I1(buf_adcdata4[5]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14878));
    defparam i13040_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2000_i3_3_lut (.I0(buf_data2[9]), .I1(buf_adcdata_vdc3[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5360));
    defparam mux_2000_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10514_3_lut (.I0(buf_adcdata4[8]), .I1(cmd_rdadctmp_adj_1594[16]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14267));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10514_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_453_Mux_5_i15_4_lut (.I0(n7_adj_1468), .I1(n8_adj_1469), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[5]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_0__bdd_4_lut_18466 (.I0(comm_index[0]), .I1(\comm_buf[10] [6]), 
            .I2(\comm_buf[11] [6]), .I3(comm_index[1]), .O(n22285));
    defparam comm_index_0__bdd_4_lut_18466.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(cs_falling_pend_N_986), .O(n14_adj_1467));
    defparam i1_2_lut_3_lut_4_lut_adj_162.LUT_INIT = 16'h0004;
    SB_LUT4 n22285_bdd_4_lut (.I0(n22285), .I1(\comm_buf[9] [6]), .I2(\comm_buf[8] [6]), 
            .I3(comm_index[1]), .O(n22288));
    defparam n22285_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9173_3_lut (.I0(n5360), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12926));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10515_3_lut (.I0(buf_adcdata4[9]), .I1(cmd_rdadctmp_adj_1594[17]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14268));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10515_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_163 (.I0(cmd_rdadctmp_adj_1594[2]), .I1(cmd_rdadctmp_adj_1594[1]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20220));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_164 (.I0(buf_adcdata_vdc4[3]), .I1(buf_adcdata4[3]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19920));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_453_Mux_4_i15_4_lut (.I0(n7_adj_1470), .I1(n8_adj_1471), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[4]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp_adj_1594[19]), .I1(cmd_rdadctmp_adj_1594[18]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20310));
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_166 (.I0(n10), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n5191));
    defparam i2_4_lut_adj_166.LUT_INIT = 16'h0208;
    SB_LUT4 n22339_bdd_4_lut_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[2]), 
            .I2(comm_state_3__N_490[1]), .I3(n22339), .O(n22342));   // zimaux_main.vhd(465[4] 703[13])
    defparam n22339_bdd_4_lut_4_lut_4_lut.LUT_INIT = 16'hfe11;
    SB_LUT4 i15321_3_lut (.I0(buf_adcdata4[10]), .I1(cmd_rdadctmp_adj_1594[18]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14269));
    defparam i15321_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2000_i4_3_lut (.I0(buf_data2[13]), .I1(buf_adcdata_vdc3[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5359));
    defparam mux_2000_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i41_4_lut_4_lut (.I0(comm_data_vld), .I1(comm_state[0]), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n21_adj_1474));
    defparam i41_4_lut_4_lut.LUT_INIT = 16'h1d80;
    SB_LUT4 i12_4_lut_adj_167 (.I0(buf_adcdata_vdc4[2]), .I1(buf_adcdata4[2]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19918));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_LUT4 i9169_3_lut (.I0(n5359), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12922));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9169_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2000_i5_3_lut (.I0(buf_data2[17]), .I1(buf_adcdata_vdc3[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5358));
    defparam mux_2000_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9165_3_lut (.I0(n5358), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12918));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18331_4_lut_4_lut (.I0(n22719), .I1(M_DCSEL), .I2(eis_start_cmd), 
            .I3(START_SYNC), .O(n22719));   // zimaux_main.vhd(362[3] 375[10])
    defparam i18331_4_lut_4_lut.LUT_INIT = 16'heccc;
    SB_LUT4 i5_3_lut_adj_168 (.I0(buf_data2[21]), .I1(buf_adcdata_vdc3[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1520));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_168.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_169 (.I0(n1_adj_1520), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12906));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_169.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2000_i7_3_lut (.I0(buf_data2[25]), .I1(buf_adcdata_vdc3[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5356));
    defparam mux_2000_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9149_3_lut (.I0(n5356), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12902));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_509_i5_2_lut (.I0(comm_index[0]), .I1(comm_index[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n5_adj_1323));   // zimaux_main.vhd(628[17:27])
    defparam equal_509_i5_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10026_2_lut (.I0(n11075), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13774));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10026_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_170 (.I0(n5_adj_1323), .I1(n20699), .I2(n20614), 
            .I3(n20931), .O(n11075));
    defparam i1_4_lut_adj_170.LUT_INIT = 16'hc4c0;
    SB_LUT4 i18206_2_lut_3_lut (.I0(eis_start_cmd), .I1(START_SYNC), .I2(M_DCSEL), 
            .I3(M_MOSI4), .O(M_START_N_977));
    defparam i18206_2_lut_3_lut.LUT_INIT = 16'h0707;
    SB_LUT4 i15172_3_lut (.I0(buf_data2[29]), .I1(buf_adcdata_vdc3[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18865));   // zimaux_main.vhd(242[9:17])
    defparam i15172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15173_3_lut (.I0(n18865), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12898));   // zimaux_main.vhd(240[9:19])
    defparam i15173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15389_3_lut (.I0(buf_data2[70]), .I1(buf_adcdata_vdc4[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19077));   // zimaux_main.vhd(242[9:17])
    defparam i15389_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15316_3_lut (.I0(buf_adcdata4[11]), .I1(cmd_rdadctmp_adj_1594[19]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14270));
    defparam i15316_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_171 (.I0(buf_adcdata_vdc4[1]), .I1(buf_adcdata4[1]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19916));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_172 (.I0(buf_adcdata_vdc3[23]), .I1(buf_adcdata3[23]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19914));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 i13101_3_lut (.I0(buf_adcdata4[12]), .I1(cmd_rdadctmp_adj_1594[20]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14271));
    defparam i13101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_173 (.I0(buf_adcdata_vdc3[22]), .I1(buf_adcdata3[22]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19912));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_173.LUT_INIT = 16'hca0a;
    SB_LUT4 i15319_3_lut (.I0(buf_adcdata4[13]), .I1(cmd_rdadctmp_adj_1594[21]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14272));
    defparam i15319_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_174 (.I0(buf_adcdata_vdc3[21]), .I1(buf_adcdata3[21]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19910));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'hca0a;
    SB_LUT4 i15365_3_lut (.I0(buf_adcdata4[14]), .I1(cmd_rdadctmp_adj_1594[22]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14273));
    defparam i15365_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15390_3_lut (.I0(n19077), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12890));   // zimaux_main.vhd(240[9:19])
    defparam i15390_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3361_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n7112));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3361_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i15407_3_lut (.I0(buf_data2[74]), .I1(buf_adcdata_vdc4[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5328));   // zimaux_main.vhd(242[9:17])
    defparam i15407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9133_3_lut (.I0(n5328), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12886));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9133_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10394_2_lut (.I0(drdy_sync2_adj_1451), .I1(drdy_prev_adj_1452), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14147));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10394_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i5_3_lut_adj_175 (.I0(buf_data2[78]), .I1(buf_adcdata_vdc4[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1328));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_175.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_176 (.I0(buf_adcdata_vdc3[20]), .I1(buf_adcdata3[20]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19908));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_3_lut_adj_177 (.I0(n1_adj_1328), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12882));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_177.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1873_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n9774), 
            .I3(n19487), .O(n7_adj_1470)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i15435_3_lut (.I0(buf_data2[82]), .I1(buf_adcdata_vdc4[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19122));   // zimaux_main.vhd(242[9:17])
    defparam i15435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_178 (.I0(cmd_rdadctmp_adj_1594[1]), .I1(cmd_rdadctmp_adj_1594[0]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20218));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_178.LUT_INIT = 16'hca0a;
    SB_LUT4 i15105_4_lut (.I0(buf_adcdata_vdc3[19]), .I1(buf_adcdata3[19]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14906));
    defparam i15105_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15362_3_lut (.I0(buf_adcdata4[15]), .I1(cmd_rdadctmp_adj_1594[23]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14274));
    defparam i15362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15436_3_lut (.I0(n19122), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12874));   // zimaux_main.vhd(240[9:19])
    defparam i15436_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15433_3_lut (.I0(buf_data2[86]), .I1(buf_adcdata_vdc4[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19120));   // zimaux_main.vhd(242[9:17])
    defparam i15433_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_179 (.I0(buf_adcdata_vdc3[18]), .I1(buf_adcdata3[18]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19906));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_179.LUT_INIT = 16'hca0a;
    SB_LUT4 i15361_3_lut (.I0(buf_adcdata4[16]), .I1(cmd_rdadctmp_adj_1594[24]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14275));
    defparam i15361_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_180 (.I0(cmd_rdadctmp_adj_1571[29]), .I1(cmd_rdadctmp_adj_1571[28]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20212));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i15434_3_lut (.I0(n19120), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12866));   // zimaux_main.vhd(240[9:19])
    defparam i15434_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15409_3_lut (.I0(buf_adcdata4[17]), .I1(cmd_rdadctmp_adj_1594[25]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14276));
    defparam i15409_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1873_6 (.CI(n19487), .I0(data_index[4]), .I1(n9774), 
            .CO(n19488));
    SB_LUT4 add_1873_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n9774), 
            .I3(n19486), .O(n7_adj_1472)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_1992_i7_3_lut (.I0(buf_data2[90]), .I1(buf_adcdata_vdc4[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5324));
    defparam mux_1992_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_181 (.I0(buf_adcdata_vdc3[17]), .I1(buf_adcdata3[17]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19904));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 i9109_3_lut (.I0(n5324), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12862));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18266_2_lut_3_lut (.I0(n21010), .I1(comm_state[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n21055));
    defparam i18266_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i17913_2_lut_3_lut (.I0(n7_adj_1339), .I1(comm_state_3__N_490[1]), 
            .I2(comm_state[0]), .I3(M_MOSI4), .O(n21347));   // zimaux_main.vhd(465[4] 703[13])
    defparam i17913_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 equal_508_i5_2_lut (.I0(comm_index[0]), .I1(comm_index[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n5));   // zimaux_main.vhd(628[17:27])
    defparam equal_508_i5_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY add_329_4 (.CI(n19463), .I0(acadc_skipcnt[2]), .I1(M_MOSI4), 
            .CO(n19464));
    SB_LUT4 i10033_2_lut (.I0(n11129), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13781));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10033_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_182 (.I0(n5), .I1(n20699), .I2(n20614), .I3(n20931), 
            .O(n11129));
    defparam i1_4_lut_adj_182.LUT_INIT = 16'hc4c0;
    SB_CARRY add_1873_5 (.CI(n19486), .I0(data_index[3]), .I1(n9774), 
            .CO(n19487));
    SB_LUT4 i2490_2_lut (.I0(comm_state[3]), .I1(n21010), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4823));   // zimaux_main.vhd(240[9:19])
    defparam i2490_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_2_lut_3_lut_adj_183 (.I0(eis_start_cmd), .I1(START_SYNC), 
            .I2(M_DCSEL), .I3(M_MOSI4), .O(stsync_N_400));
    defparam i1_2_lut_3_lut_adj_183.LUT_INIT = 16'hf7f7;
    SB_LUT4 i13144_3_lut (.I0(buf_data2[94]), .I1(buf_adcdata_vdc4[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5323));   // zimaux_main.vhd(242[9:17])
    defparam i13144_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9089_3_lut (.I0(n5323), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12842));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9089_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1984_i2_3_lut (.I0(buf_data2[38]), .I1(buf_adcdata_vdc4[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5297));
    defparam mux_1984_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9085_3_lut (.I0(n5297), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12838));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9085_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9846_3_lut (.I0(n13598), .I1(n13597), .I2(n22719), .I3(M_MOSI4), 
            .O(M_START));   // zimaux_main.vhd(362[3] 375[10])
    defparam i9846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10395_3_lut (.I0(M_OSR1), .I1(n14_adj_1481), .I2(n11316), 
            .I3(M_MOSI4), .O(n14148));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10395_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15301_3_lut (.I0(buf_data2[42]), .I1(buf_adcdata_vdc4[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18991));   // zimaux_main.vhd(242[9:17])
    defparam i15301_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15302_3_lut (.I0(n18991), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12834));   // zimaux_main.vhd(240[9:19])
    defparam i15302_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15317_3_lut (.I0(buf_data2[46]), .I1(buf_adcdata_vdc4[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5295));   // zimaux_main.vhd(242[9:17])
    defparam i15317_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9073_3_lut (.I0(n5295), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12826));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9073_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_18461 (.I0(comm_index[0]), .I1(\comm_buf[10] [5]), 
            .I2(\comm_buf[11] [5]), .I3(comm_index[1]), .O(n22279));
    defparam comm_index_0__bdd_4_lut_18461.LUT_INIT = 16'he4aa;
    SB_LUT4 i5_3_lut_adj_184 (.I0(buf_data2[50]), .I1(buf_adcdata_vdc4[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1461));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_184.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_185 (.I0(n1_adj_1461), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12822));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_185.LUT_INIT = 16'hcaca;
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(comm_state_3__N_490[1]), 
            .I2(comm_state[0]), .I3(comm_data_vld), .O(n7_adj_1497));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5250;
    SB_LUT4 i15406_3_lut (.I0(buf_adcdata4[18]), .I1(cmd_rdadctmp_adj_1594[26]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14277));
    defparam i15406_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_186 (.I0(buf_adcdata_vdc3[15]), .I1(buf_adcdata3[15]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19894));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'hca0a;
    SB_LUT4 i13146_3_lut (.I0(buf_adcdata4[19]), .I1(cmd_rdadctmp_adj_1594[27]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14278));
    defparam i13146_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15455_3_lut (.I0(buf_adcdata4[20]), .I1(cmd_rdadctmp_adj_1594[28]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14279));
    defparam i15455_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_187 (.I0(buf_adcdata_vdc3[14]), .I1(buf_adcdata3[14]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19888));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_LUT4 i15453_3_lut (.I0(buf_adcdata4[21]), .I1(cmd_rdadctmp_adj_1594[29]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14280));
    defparam i15453_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1984_i6_3_lut (.I0(buf_data2[54]), .I1(buf_adcdata_vdc4[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5293));
    defparam mux_1984_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22279_bdd_4_lut (.I0(n22279), .I1(\comm_buf[9] [5]), .I2(\comm_buf[8] [5]), 
            .I3(comm_index[1]), .O(n22282));
    defparam n22279_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9061_3_lut (.I0(n5293), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12814));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9061_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10528_3_lut (.I0(buf_adcdata4[22]), .I1(cmd_rdadctmp_adj_1594[30]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14281));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10528_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15345_3_lut (.I0(buf_data2[58]), .I1(buf_adcdata_vdc4[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n19034));   // zimaux_main.vhd(242[9:17])
    defparam i15345_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13145_3_lut (.I0(buf_adcdata4[23]), .I1(cmd_rdadctmp_adj_1594[31]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14282));
    defparam i13145_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp_adj_1594[31]), .I1(cmd_rdadctmp_adj_1594[30]), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20284));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_189 (.I0(cmd_rdadctmp_adj_1571[27]), .I1(cmd_rdadctmp_adj_1571[26]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20206));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_190 (.I0(buf_adcdata_vdc3[13]), .I1(buf_adcdata3[13]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19886));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i15346_3_lut (.I0(n19034), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12810));   // zimaux_main.vhd(240[9:19])
    defparam i15346_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_191 (.I0(buf_adcdata_vdc2[23]), .I1(buf_adcdata2[23]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19884));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_192 (.I0(cmd_rdadctmp_adj_1571[26]), .I1(cmd_rdadctmp_adj_1571[25]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20204));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_193 (.I0(buf_adcdata_vdc2[22]), .I1(buf_adcdata2[22]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19882));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_193.LUT_INIT = 16'hca0a;
    SB_LUT4 i17270_3_lut (.I0(comm_state[0]), .I1(comm_index[0]), .I2(comm_index[1]), 
            .I3(M_MOSI4), .O(n21078));
    defparam i17270_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i12950_4_lut (.I0(buf_adcdata_vdc3[12]), .I1(buf_adcdata3[12]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14928));
    defparam i12950_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_194 (.I0(buf_adcdata_vdc2[21]), .I1(buf_adcdata2[21]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19880));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_194.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_195 (.I0(cmd_rdadctmp_adj_1571[25]), .I1(cmd_rdadctmp_adj_1571[24]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20202));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_195.LUT_INIT = 16'hca0a;
    SB_LUT4 i17245_2_lut_4_lut (.I0(comm_state[3]), .I1(comm_data_vld), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n21053));
    defparam i17245_2_lut_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i10040_2_lut (.I0(n11141), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13788));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10040_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_196 (.I0(buf_adcdata_vdc2[20]), .I1(buf_adcdata2[20]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19876));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_196.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_453_Mux_3_i15_4_lut (.I0(n7_adj_1472), .I1(n8_adj_1473), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[3]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i17376_3_lut (.I0(\comm_buf[0] [1]), .I1(\comm_buf[1] [1]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21186));
    defparam i17376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_197 (.I0(buf_adcdata_vdc3[11]), .I1(buf_adcdata3[11]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19878));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_198 (.I0(buf_adcdata_vdc2[19]), .I1(buf_adcdata2[19]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19872));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'hca0a;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(M_CLK1));   // zimaux_main.vhd(339[14:29])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i17377_3_lut (.I0(\comm_buf[2] [1]), .I1(\comm_buf[3] [1]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21187));
    defparam i17377_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_199 (.I0(n10199), .I1(n20699), .I2(n20614), .I3(n21078), 
            .O(n11141));
    defparam i1_4_lut_adj_199.LUT_INIT = 16'hc0c8;
    SB_LUT4 i17383_3_lut (.I0(\comm_buf[6] [1]), .I1(\comm_buf[7] [1]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21193));
    defparam i17383_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_200 (.I0(buf_adcdata_vdc2[17]), .I1(buf_adcdata2[17]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19868));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'hca0a;
    SB_LUT4 i15363_3_lut (.I0(buf_data2[62]), .I1(buf_adcdata_vdc4[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5291));   // zimaux_main.vhd(242[9:17])
    defparam i15363_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i1 (.Q(buf_adcdata_vdc2[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19810));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i9053_3_lut (.I0(n5291), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12806));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9053_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i2 (.Q(buf_adcdata_vdc2[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19812));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 mux_1976_i2_3_lut (.I0(buf_data2[6]), .I1(buf_adcdata_vdc4[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5265));
    defparam mux_1976_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17382_3_lut (.I0(\comm_buf[4] [1]), .I1(\comm_buf[5] [1]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21192));
    defparam i17382_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9045_3_lut (.I0(n5265), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12798));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9045_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17379_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21189));
    defparam i17379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1873_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n9774), 
            .I3(n19485), .O(n7_adj_1489)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i17380_3_lut (.I0(\comm_buf[2] [2]), .I1(\comm_buf[3] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21190));
    defparam i17380_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17368_3_lut (.I0(\comm_buf[6] [2]), .I1(\comm_buf[7] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21178));
    defparam i17368_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i3 (.Q(buf_adcdata_vdc2[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19814));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i4 (.Q(buf_adcdata_vdc2[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19816));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10396_3_lut (.I0(M_FLT0), .I1(n14_adj_1480), .I2(n11316), 
            .I3(M_MOSI4), .O(n14149));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10396_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_453_Mux_2_i15_4_lut (.I0(n7_adj_1489), .I1(n8_adj_1490), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[2]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1976_i3_3_lut (.I0(buf_data2[10]), .I1(buf_adcdata_vdc4[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5264));
    defparam mux_1976_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9041_3_lut (.I0(n5264), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12794));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9041_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_adcdata_vdc2[16]), .I1(buf_adcdata2[16]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19866));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i5 (.Q(buf_adcdata_vdc2[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20004));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFE buf_dds_i0 (.Q(buf_dds[0]), .C(clk_32MHz), .E(VCC_net), .D(n19728));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19818));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i0 (.Q(buf_adcdata_vdc3[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19820));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i0 (.Q(buf_adcdata_vdc4[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19822));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i0 (.Q(buf_adcdata_vdc1[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n15068));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i6 (.Q(buf_adcdata_vdc2[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20008));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 mux_1976_i4_3_lut (.I0(buf_data2[14]), .I1(buf_adcdata_vdc4[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5263));
    defparam mux_1976_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_453_Mux_1_i15_4_lut (.I0(n7_adj_1494), .I1(n8_adj_1495), 
            .I2(comm_state[3]), .I3(n7983), .O(data_index_8__N_358[1]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_453_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2229_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(comm_state_3__N_490[1]), 
            .I3(M_MOSI4), .O(comm_index_3__N_498[0]));   // zimaux_main.vhd(623[5] 633[12])
    defparam i2229_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i5671_4_lut (.I0(cs_falling_pend_N_986), .I1(n4788), .I2(n4823), 
            .I3(n7112), .O(cs_falling_pend_N_980));   // zimaux_main.vhd(465[4] 703[13])
    defparam i5671_4_lut.LUT_INIT = 16'h353f;
    SB_LUT4 i2333_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(cs_mask_cnt_1__N_450));
    defparam i2333_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_490[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6153));   // zimaux_main.vhd(438[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_DFFNE buf_adcdata_vdc2_i0_i7 (.Q(buf_adcdata_vdc2[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20010));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i9033_3_lut (.I0(n5263), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12786));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9033_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10426_3_lut_4_lut (.I0(req_data_cnt[4]), .I1(\comm_buf[1] [4]), 
            .I2(n7983), .I3(n11388), .O(n14179));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10426_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_202 (.I0(buf_adcdata_vdc2[15]), .I1(buf_adcdata2[15]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19864));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1976_i5_3_lut (.I0(buf_data2[18]), .I1(buf_adcdata_vdc4[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5262));
    defparam mux_1976_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE vdc_adc_trig_417 (.Q(vdc_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20042));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i8 (.Q(buf_adcdata_vdc2[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20018));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i15261_4_lut (.I0(buf_adcdata_vdc3[10]), .I1(buf_adcdata3[10]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14934));
    defparam i15261_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE eis_adc_trig_427 (.Q(eis_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n20048));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i12_4_lut_adj_203 (.I0(buf_adcdata_vdc2[14]), .I1(buf_adcdata2[14]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19862));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 i9029_3_lut (.I0(n5262), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12782));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9029_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i9 (.Q(buf_adcdata_vdc2[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20020));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_204 (.I0(buf_adcdata_vdc2[13]), .I1(buf_adcdata2[13]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19858));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut_adj_205 (.I0(buf_data2[22]), .I1(buf_adcdata_vdc4[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1504));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_205.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_206 (.I0(n1_adj_1504), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12778));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_206.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_207 (.I0(buf_adcdata_vdc3[9]), .I1(buf_adcdata3[9]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19860));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1976_i7_3_lut (.I0(buf_data2[26]), .I1(buf_adcdata_vdc4[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5260));
    defparam mux_1976_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_208 (.I0(eis_adc_trig), .I1(vdc_adc_trig), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(acadc_trig));   // zimaux_main.vhd(748[3] 827[10])
    defparam i1_2_lut_adj_208.LUT_INIT = 16'heeee;
    SB_DFFNE buf_adcdata_vdc2_i0_i0 (.Q(buf_adcdata_vdc2[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19942));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i9017_3_lut (.I0(n5260), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12770));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9017_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_3_lut (.I0(dc_state[2]), .I1(dc_state[1]), .I2(dc_state[0]), 
            .I3(M_MOSI4), .O(dc_state_2__N_314[1]));
    defparam i1_4_lut_3_lut.LUT_INIT = 16'h4d4d;
    SB_DFFE buf_dds_i1 (.Q(buf_dds[1]), .C(clk_32MHz), .E(VCC_net), .D(n19732));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i13319_2_lut (.I0(comm_index[0]), .I1(comm_index[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17050));
    defparam i13319_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_1873_4 (.CI(n19485), .I0(data_index[2]), .I1(n9774), 
            .CO(n19486));
    SB_DFFE buf_dds_i2 (.Q(buf_dds[2]), .C(clk_32MHz), .E(VCC_net), .D(n19734));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i13405_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1464));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13405_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFE buf_dds_i3 (.Q(buf_dds[3]), .C(clk_32MHz), .E(VCC_net), .D(n15027));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i4 (.Q(buf_dds[4]), .C(clk_32MHz), .E(VCC_net), .D(n19740));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i10 (.Q(buf_adcdata_vdc2[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20002));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFE buf_dds_i5 (.Q(buf_dds[5]), .C(clk_32MHz), .E(VCC_net), .D(n15022));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i6 (.Q(buf_dds[6]), .C(clk_32MHz), .E(VCC_net), .D(n15020));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i7 (.Q(buf_dds[7]), .C(clk_32MHz), .E(VCC_net), .D(n19762));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i8 (.Q(buf_dds[8]), .C(clk_32MHz), .E(VCC_net), .D(n19746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i9 (.Q(buf_dds[9]), .C(clk_32MHz), .E(VCC_net), .D(n19748));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i10 (.Q(buf_dds[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19750));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i17263_2_lut_3_lut (.I0(n17198), .I1(dc_state[0]), .I2(dc_state[1]), 
            .I3(M_MOSI4), .O(n21071));
    defparam i17263_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_DFFE buf_dds_i11 (.Q(buf_dds[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15005));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i12 (.Q(buf_dds[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19752));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i13 (.Q(buf_dds[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14999));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i14 (.Q(buf_dds[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19756));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE buf_dds_i15 (.Q(buf_dds[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19730));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_2_lut_adj_209 (.I0(comm_state[0]), .I1(n10199), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20931));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_2_lut_adj_209.LUT_INIT = 16'h4444;
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19828));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19830));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19832));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19834));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19836));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19838));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19840));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i1 (.Q(buf_adcdata_vdc3[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19842));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i2 (.Q(buf_adcdata_vdc3[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19844));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i3 (.Q(buf_adcdata_vdc3[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19846));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i4 (.Q(buf_adcdata_vdc3[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19848));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i15218_4_lut (.I0(buf_adcdata_vdc2[12]), .I1(buf_adcdata2[12]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14318));
    defparam i15218_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i5 (.Q(buf_adcdata_vdc3[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14950));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i6 (.Q(buf_adcdata_vdc3[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19850));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i11 (.Q(buf_adcdata_vdc2[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n20022));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i13404_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1465));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13404_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_210 (.I0(buf_adcdata_vdc3[8]), .I1(buf_adcdata3[8]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19856));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i7 (.Q(buf_adcdata_vdc3[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14944));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(dc_state[1]), .I1(acadc_dtrigH), .I2(dc_state[0]), 
            .I3(n18), .O(n11396));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hffd5;
    SB_DFFNE buf_adcdata_vdc3_i0_i8 (.Q(buf_adcdata_vdc3[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19856));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_4_lut_adj_211 (.I0(n10166), .I1(n20885), .I2(n20977), .I3(n4_adj_1524), 
            .O(n20699));
    defparam i1_4_lut_adj_211.LUT_INIT = 16'hc8c0;
    SB_LUT4 equal_498_i6_2_lut (.I0(comm_index[2]), .I1(comm_index[3]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6_adj_1326));   // zimaux_main.vhd(628[17:27])
    defparam equal_498_i6_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFNE buf_adcdata_vdc2_i0_i12 (.Q(buf_adcdata_vdc2[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14318));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10047_2_lut (.I0(n11213), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13795));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10047_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_212 (.I0(n6_adj_1326), .I1(n20699), .I2(n20614), 
            .I3(n20934), .O(n11213));
    defparam i1_4_lut_adj_212.LUT_INIT = 16'hc4c0;
    SB_LUT4 i18213_3_lut_4_lut (.I0(comm_cmd[0]), .I1(n12_adj_1333), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n401));   // zimaux_main.vhd(667[11:20])
    defparam i18213_3_lut_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 mux_1976_i8_3_lut (.I0(buf_data2[30]), .I1(buf_adcdata_vdc4[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5259));
    defparam mux_1976_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15176_4_lut (.I0(buf_adcdata_vdc3[7]), .I1(buf_adcdata3[7]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14944));
    defparam i15176_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i9009_3_lut (.I0(n5259), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12762));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(buf_adcdata_vdc2[11]), .I1(buf_adcdata2[11]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20022));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_119_Mux_1_i15_4_lut (.I0(n22312), .I1(n22258), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n555));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_119_Mux_2_i15_4_lut (.I0(n22318), .I1(n22264), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n554));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNE buf_adcdata_vdc3_i0_i9 (.Q(buf_adcdata_vdc3[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19860));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 mux_119_Mux_3_i15_4_lut (.I0(n22324), .I1(n22270), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n553));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNE buf_adcdata_vdc2_i0_i13 (.Q(buf_adcdata_vdc2[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19858));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i14 (.Q(buf_adcdata_vdc2[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19862));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_214 (.I0(buf_adcdata_vdc3[6]), .I1(buf_adcdata3[6]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19850));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'hca0a;
    SB_LUT4 i12905_4_lut (.I0(buf_adcdata_vdc3[5]), .I1(buf_adcdata3[5]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14950));
    defparam i12905_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10397_3_lut (.I0(M_FLT1), .I1(n14_adj_1479), .I2(n11316), 
            .I3(M_MOSI4), .O(n14150));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10397_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i10 (.Q(buf_adcdata_vdc3[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14934));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i15 (.Q(buf_adcdata_vdc2[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19864));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_215 (.I0(buf_adcdata_vdc3[4]), .I1(buf_adcdata3[4]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19848));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_LUT4 n22219_bdd_4_lut (.I0(n22219), .I1(buf_dds[5]), .I2(req_data_cnt[5]), 
            .I3(n5191), .O(n22222));
    defparam n22219_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_adcdata_vdc3[3]), .I1(buf_adcdata3[3]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19846));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i16 (.Q(buf_adcdata_vdc2[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19866));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_217 (.I0(buf_adcdata_vdc3[2]), .I1(buf_adcdata3[2]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19844));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_218 (.I0(cmd_rdadctmp_adj_1571[21]), .I1(cmd_rdadctmp_adj_1571[20]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20426));
    defparam i12_4_lut_adj_218.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i17 (.Q(buf_adcdata_vdc2[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19868));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_219 (.I0(buf_adcdata_vdc2[18]), .I1(buf_adcdata2[18]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19870));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_220 (.I0(buf_adcdata_vdc3[1]), .I1(buf_adcdata3[1]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19842));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i18 (.Q(buf_adcdata_vdc2[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19870));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1352753_i1_3_lut (.I0(n22228), .I1(n22384), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1496));
    defparam i1352753_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_119_Mux_4_i15_4_lut (.I0(n7_adj_1496), .I1(n22276), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n552));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1353356_i1_3_lut (.I0(n22198), .I1(n22402), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1493));
    defparam i1353356_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_119_Mux_5_i15_4_lut (.I0(n7_adj_1493), .I1(n22282), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n551));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_2_lut_3_lut_adj_221 (.I0(n9), .I1(dc_state[1]), .I2(dc_state[2]), 
            .I3(M_MOSI4), .O(n20946));
    defparam i1_2_lut_3_lut_adj_221.LUT_INIT = 16'hfbfb;
    SB_DFFNE buf_adcdata_vdc2_i0_i19 (.Q(buf_adcdata_vdc2[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19872));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1353959_i1_3_lut (.I0(n22252), .I1(n22378), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1492));
    defparam i1353959_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_119_Mux_6_i15_4_lut (.I0(n7_adj_1492), .I1(n22288), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n550));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNE buf_adcdata_vdc3_i0_i11 (.Q(buf_adcdata_vdc3[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19878));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i20 (.Q(buf_adcdata_vdc2[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19876));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 comm_index_0__bdd_4_lut_18456 (.I0(comm_index[0]), .I1(\comm_buf[10] [4]), 
            .I2(\comm_buf[11] [4]), .I3(comm_index[1]), .O(n22273));
    defparam comm_index_0__bdd_4_lut_18456.LUT_INIT = 16'he4aa;
    SB_DFFNE buf_adcdata_vdc2_i0_i21 (.Q(buf_adcdata_vdc2[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19880));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10054_3_lut (.I0(n11285), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n13802));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10054_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFNE buf_adcdata_vdc3_i0_i12 (.Q(buf_adcdata_vdc3[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14928));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i22 (.Q(buf_adcdata_vdc2[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19882));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i23 (.Q(buf_adcdata_vdc2[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19884));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 n22273_bdd_4_lut (.I0(n22273), .I1(\comm_buf[9] [4]), .I2(\comm_buf[8] [4]), 
            .I3(comm_index[1]), .O(n22276));
    defparam n22273_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1354562_i1_3_lut (.I0(n22372), .I1(n22240), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1491));
    defparam i1354562_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i13 (.Q(buf_adcdata_vdc3[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19886));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 mux_119_Mux_7_i15_4_lut (.I0(n7_adj_1491), .I1(n22294), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n549));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_222 (.I0(cmd_rdadctmp_adj_1571[20]), .I1(cmd_rdadctmp_adj_1571[19]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20316));
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i14 (.Q(buf_adcdata_vdc3[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19888));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_223 (.I0(cmd_rdadctmp_adj_1571[18]), .I1(cmd_rdadctmp_adj_1571[17]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20194));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_224 (.I0(comm_cmd[7]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[7]), .O(n19840));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_225 (.I0(comm_cmd[6]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[6]), .O(n19838));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_225.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i15 (.Q(buf_adcdata_vdc3[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19894));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_226 (.I0(comm_cmd[5]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[5]), .O(n19836));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_226.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n13502), .I2(n10682), .I3(comm_rx_buf[4]), 
            .O(n19834));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_227 (.I0(comm_cmd[3]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[3]), .O(n19832));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_227.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_228 (.I0(comm_cmd[2]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[2]), .O(n19830));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_228.LUT_INIT = 16'hca0a;
    SB_LUT4 i10398_3_lut (.I0(buf_device_acadc[4]), .I1(n14_adj_1478), .I2(n11316), 
            .I3(M_MOSI4), .O(n14151));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10398_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_229 (.I0(buf_adcdata_vdc3[16]), .I1(buf_adcdata3[16]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19902));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i16 (.Q(buf_adcdata_vdc3[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19902));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10400_3_lut (.I0(buf_device_acadc[6]), .I1(n14_adj_1476), .I2(n11316), 
            .I3(M_MOSI4), .O(n14153));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10400_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i17 (.Q(buf_adcdata_vdc3[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19904));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(n7983), .I2(n20848), 
            .I3(comm_state[0]), .O(n10773));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'h88d8;
    SB_LUT4 i11_4_lut_adj_230 (.I0(comm_cmd[1]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[1]), .O(n19828));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_230.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_231 (.I0(comm_state[0]), .I1(comm_state[3]), .I2(n7983), 
            .I3(n13_adj_1337), .O(n11316));
    defparam i1_4_lut_adj_231.LUT_INIT = 16'hc0c4;
    SB_LUT4 i10401_3_lut (.I0(buf_device_acadc[7]), .I1(n14_adj_1475), .I2(n11316), 
            .I3(M_MOSI4), .O(n14154));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10401_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i18 (.Q(buf_adcdata_vdc3[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19906));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_2_lut_adj_232 (.I0(eis_state[2]), .I1(eis_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20960));
    defparam i1_2_lut_adj_232.LUT_INIT = 16'hbbbb;
    SB_DFFNE buf_adcdata_vdc3_i0_i19 (.Q(buf_adcdata_vdc3[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14906));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i20 (.Q(buf_adcdata_vdc3[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19908));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 add_324_5_lut (.I0(M_MOSI4), .I1(data_count[3]), .I2(M_MOSI4), 
            .I3(n19441), .O(n2287)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFNE buf_adcdata_vdc3_i0_i21 (.Q(buf_adcdata_vdc3[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19910));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_233 (.I0(cmd_rdadctmp_adj_1571[17]), .I1(cmd_rdadctmp_adj_1571[16]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20192));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_233.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i22 (.Q(buf_adcdata_vdc3[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19912));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10402_3_lut (.I0(M_DCSEL), .I1(n14_adj_1481), .I2(n11324), 
            .I3(M_MOSI4), .O(n14155));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10402_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i23 (.Q(buf_adcdata_vdc3[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19914));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i1 (.Q(buf_adcdata_vdc4[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19916));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i2 (.Q(buf_adcdata_vdc4[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19918));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i3 (.Q(buf_adcdata_vdc4[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19920));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_234 (.I0(cmd_rdadctmp_adj_1548[10]), .I1(cmd_rdadctmp_adj_1548[9]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20424));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_235 (.I0(buf_adcdata_vdc4[4]), .I1(buf_adcdata4[4]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19922));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i4 (.Q(buf_adcdata_vdc4[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19922));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10403_3_lut (.I0(buf_control[2]), .I1(n14_adj_1480), .I2(n11324), 
            .I3(M_MOSI4), .O(n14156));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10403_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc4_i0_i5 (.Q(buf_adcdata_vdc4[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14878));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_236 (.I0(cmd_rdadctmp_adj_1571[16]), .I1(cmd_rdadctmp_adj_1571[15]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20328));
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i6 (.Q(buf_adcdata_vdc4[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19924));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_237 (.I0(cmd_rdadctmp_adj_1571[15]), .I1(cmd_rdadctmp_adj_1571[14]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20190));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_CARRY add_325_7 (.CI(n19451), .I0(data_cntvec[5]), .I1(M_MOSI4), 
            .CO(n19452));
    SB_DFFNE buf_adcdata_vdc4_i0_i7 (.Q(buf_adcdata_vdc4[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19926));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i8 (.Q(buf_adcdata_vdc4[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19928));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10510_3_lut (.I0(buf_adcdata4[4]), .I1(cmd_rdadctmp_adj_1594[12]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14263));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10510_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_18451 (.I0(comm_index[0]), .I1(\comm_buf[10] [3]), 
            .I2(\comm_buf[11] [3]), .I3(comm_index[1]), .O(n22267));
    defparam comm_index_0__bdd_4_lut_18451.LUT_INIT = 16'he4aa;
    SB_LUT4 n22267_bdd_4_lut (.I0(n22267), .I1(\comm_buf[9] [3]), .I2(\comm_buf[8] [3]), 
            .I3(comm_index[1]), .O(n22270));
    defparam n22267_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNE buf_adcdata_vdc4_i0_i9 (.Q(buf_adcdata_vdc4[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19930));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_2_lut_adj_238 (.I0(eis_stop), .I1(eis_start), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n37));
    defparam i1_2_lut_adj_238.LUT_INIT = 16'heeee;
    SB_LUT4 i10404_3_lut (.I0(buf_control[3]), .I1(n14_adj_1479), .I2(n11324), 
            .I3(M_MOSI4), .O(n14157));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10404_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc4_i0_i10 (.Q(buf_adcdata_vdc4[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14863));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i11 (.Q(buf_adcdata_vdc4[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19932));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i13085_4_lut (.I0(buf_adcdata_vdc4[12]), .I1(buf_adcdata4[12]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14857));
    defparam i13085_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i12 (.Q(buf_adcdata_vdc4[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14857));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_239 (.I0(buf_dds[14]), .I1(\comm_buf[0] [6]), 
            .I2(n10588), .I3(n13498), .O(n19756));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'hca0a;
    SB_LUT4 add_329_3_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[1]), .I2(M_MOSI4), 
            .I3(n19462), .O(n2356)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFNE buf_adcdata_vdc4_i0_i13 (.Q(buf_adcdata_vdc4[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19934));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17199_2_lut (.I0(eis_state[2]), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21005));
    defparam i17199_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_240 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n7_adj_1344));
    defparam i1_2_lut_adj_240.LUT_INIT = 16'h4444;
    SB_DFFNE buf_adcdata_vdc4_i0_i14 (.Q(buf_adcdata_vdc4[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14851));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17896_2_lut_2_lut (.I0(comm_state[0]), .I1(comm_state_3__N_471[3]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n21349));   // zimaux_main.vhd(465[4] 703[13])
    defparam i17896_2_lut_2_lut.LUT_INIT = 16'h4444;
    SB_DFFNE buf_adcdata_vdc4_i0_i15 (.Q(buf_adcdata_vdc4[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19936));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i16 (.Q(buf_adcdata_vdc4[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19938));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i17 (.Q(buf_adcdata_vdc4[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14841));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 comm_index_0__bdd_4_lut_18446 (.I0(comm_index[0]), .I1(\comm_buf[10] [2]), 
            .I2(\comm_buf[11] [2]), .I3(comm_index[1]), .O(n22261));
    defparam comm_index_0__bdd_4_lut_18446.LUT_INIT = 16'he4aa;
    SB_LUT4 i12966_3_lut (.I0(buf_adcdata3[12]), .I1(cmd_rdadctmp_adj_1571[20]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14248));
    defparam i12966_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc4_i0_i18 (.Q(buf_adcdata_vdc4[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19940));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 n22261_bdd_4_lut (.I0(n22261), .I1(\comm_buf[9] [2]), .I2(\comm_buf[8] [2]), 
            .I3(comm_index[1]), .O(n22264));
    defparam n22261_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i8_4_lut_adj_241 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1528));   // zimaux_main.vhd(810[9:35])
    defparam i8_4_lut_adj_241.LUT_INIT = 16'h7bde;
    SB_DFFNE buf_adcdata_vdc4_i0_i19 (.Q(buf_adcdata_vdc4[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14835));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i20 (.Q(buf_adcdata_vdc4[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14832));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i21 (.Q(buf_adcdata_vdc4[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14829));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10405_3_lut (.I0(buf_control[4]), .I1(n14_adj_1478), .I2(n11324), 
            .I3(M_MOSI4), .O(n14158));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10405_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc4_i0_i22 (.Q(buf_adcdata_vdc4[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19944));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i23 (.Q(buf_adcdata_vdc4[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19946));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_4_lut_adj_242 (.I0(n21005), .I1(n37), .I2(n17198), .I3(eis_state[0]), 
            .O(n20990));
    defparam i1_4_lut_adj_242.LUT_INIT = 16'h775f;
    SB_LUT4 i10406_3_lut (.I0(buf_control[5]), .I1(n14_adj_1477), .I2(n11324), 
            .I3(M_MOSI4), .O(n14159));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10406_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i36_4_lut_3_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[2]), 
            .I2(comm_length_3__N_502[1]), .I3(comm_state_3__N_487[2]), .O(n31));   // zimaux_main.vhd(465[4] 703[13])
    defparam i36_4_lut_3_lut_4_lut.LUT_INIT = 16'h99d9;
    SB_LUT4 i1_4_lut_adj_243 (.I0(comm_state[0]), .I1(comm_state[3]), .I2(n7983), 
            .I3(n13), .O(n11324));
    defparam i1_4_lut_adj_243.LUT_INIT = 16'hc0c4;
    SB_LUT4 i1_4_lut_adj_244 (.I0(n20960), .I1(n20990), .I2(M_DCSEL), 
            .I3(eis_state[1]), .O(n11654));
    defparam i1_4_lut_adj_244.LUT_INIT = 16'hcc8c;
    SB_LUT4 i10407_3_lut (.I0(buf_control[6]), .I1(n14_adj_1476), .I2(n11324), 
            .I3(M_MOSI4), .O(n14160));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10407_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_245 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), 
            .I2(req_data_cnt[2]), .I3(req_data_cnt[7]), .O(n22_adj_1530));   // zimaux_main.vhd(810[9:35])
    defparam i6_4_lut_adj_245.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_246 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1529));   // zimaux_main.vhd(810[9:35])
    defparam i7_4_lut_adj_246.LUT_INIT = 16'h7bde;
    SB_LUT4 i11246_4_lut (.I0(n21111), .I1(buf_dds[13]), .I2(n14_adj_1477), 
            .I3(n10588), .O(n14999));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11246_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_247 (.I0(buf_dds[12]), .I1(\comm_buf[0] [4]), 
            .I2(n10588), .I3(n13498), .O(n19752));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i1 (.Q(buf_adcdata_vdc1[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19950));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i2 (.Q(buf_adcdata_vdc1[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14795));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10130_2_lut (.I0(n11650), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13861));   // zimaux_main.vhd(748[3] 827[10])
    defparam i10130_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNE buf_adcdata_vdc1_i0_i3 (.Q(buf_adcdata_vdc1[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19952));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i12_4_lut_adj_248 (.I0(buf_adcdata_vdc1[4]), .I1(buf_adcdata1[4]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19954));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_248.LUT_INIT = 16'hca0a;
    SB_LUT4 i10411_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n7983), .I3(n11358), .O(n14164));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10411_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNE buf_adcdata_vdc1_i0_i4 (.Q(buf_adcdata_vdc1[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19954));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i15525_4_lut (.I0(buf_adcdata_vdc1[5]), .I1(buf_adcdata1[5]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n14786));
    defparam i15525_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i5 (.Q(buf_adcdata_vdc1[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14786));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i1_4_lut_adj_249 (.I0(n6163), .I1(n21075), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n11650));
    defparam i1_4_lut_adj_249.LUT_INIT = 16'h3011;
    SB_DFFNE buf_adcdata_vdc1_i0_i6 (.Q(buf_adcdata_vdc1[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19956));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i5_4_lut_adj_250 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1533));   // zimaux_main.vhd(810[9:35])
    defparam i5_4_lut_adj_250.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut_adj_251 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1534));   // zimaux_main.vhd(810[9:35])
    defparam i4_4_lut_adj_251.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_252 (.I0(buf_dds[10]), .I1(\comm_buf[0] [2]), 
            .I2(n10588), .I3(n13498), .O(n19750));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_252.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i7 (.Q(buf_adcdata_vdc1[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14780));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i18237_2_lut (.I0(n11705), .I1(eis_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13885));
    defparam i18237_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_253 (.I0(buf_dds[9]), .I1(\comm_buf[0] [1]), .I2(n10588), 
            .I3(n13498), .O(n19748));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_253.LUT_INIT = 16'hca0a;
    SB_LUT4 i18263_4_lut (.I0(eis_state[0]), .I1(tacadc_rst), .I2(n21066), 
            .I3(eis_state[1]), .O(n11705));
    defparam i18263_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 i2_4_lut_adj_254 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18_adj_1514));   // zimaux_main.vhd(810[9:35])
    defparam i2_4_lut_adj_254.LUT_INIT = 16'h7bde;
    SB_LUT4 i3_4_lut_adj_255 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1535));   // zimaux_main.vhd(810[9:35])
    defparam i3_4_lut_adj_255.LUT_INIT = 16'h7bde;
    SB_DFFNE buf_adcdata_vdc1_i0_i8 (.Q(buf_adcdata_vdc1[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19958));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i10409_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n7983), .I3(n11358), .O(n14162));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10409_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_4_lut_adj_256 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1518));   // zimaux_main.vhd(810[9:35])
    defparam i1_4_lut_adj_256.LUT_INIT = 16'h7bde;
    SB_LUT4 i13_4_lut (.I0(buf_dds[8]), .I1(\comm_buf[0] [0]), .I2(n10588), 
            .I3(n13498), .O(n19746));   // zimaux_main.vhd(448[3] 704[10])
    defparam i13_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_257 (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n19624));
    defparam i1_2_lut_adj_257.LUT_INIT = 16'h9999;
    SB_LUT4 i13_4_lut_adj_258 (.I0(buf_dds[7]), .I1(\comm_buf[1] [7]), .I2(n10588), 
            .I3(n13498), .O(n19762));
    defparam i13_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i9 (.Q(buf_adcdata_vdc1[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19960));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i14_4_lut_adj_259 (.I0(n21_adj_1533), .I1(n23_adj_1529), .I2(n22_adj_1530), 
            .I3(n24_adj_1528), .O(n30_adj_1525));   // zimaux_main.vhd(810[9:35])
    defparam i14_4_lut_adj_259.LUT_INIT = 16'hfffe;
    SB_DFFNE buf_adcdata_vdc1_i0_i10 (.Q(buf_adcdata_vdc1[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19962));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i14830_4_lut (.I0(buf_dds[6]), .I1(n18532), .I2(n10588), .I3(comm_state[3]), 
            .O(n15020));
    defparam i14830_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_260 (.I0(acadc_dtrig1), .I1(acadc_dtrig3), .I2(acadc_dtrig4), 
            .I3(acadc_dtrig2), .O(acadc_dtrigH));   // zimaux_main.vhd(408[28:115])
    defparam i3_4_lut_adj_260.LUT_INIT = 16'h8000;
    SB_LUT4 i13_4_lut_adj_261 (.I0(n17_adj_1518), .I1(n19_adj_1535), .I2(n18_adj_1514), 
            .I3(n20_adj_1534), .O(n29));   // zimaux_main.vhd(810[9:35])
    defparam i13_4_lut_adj_261.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut (.I0(eis_stop), .I1(n29), .I2(n30_adj_1525), .I3(M_MOSI4), 
            .O(n16040));   // zimaux_main.vhd(448[3] 704[10])
    defparam i1_3_lut.LUT_INIT = 16'habab;
    SB_LUT4 add_1873_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n9774), 
            .I3(n19484), .O(n7_adj_1494)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_329_3 (.CI(n19462), .I0(acadc_skipcnt[1]), .I1(M_MOSI4), 
            .CO(n19463));
    SB_LUT4 add_325_6_lut (.I0(M_MOSI4), .I1(data_cntvec[4]), .I2(M_MOSI4), 
            .I3(n19450), .O(n2304)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_325_6 (.CI(n19450), .I0(data_cntvec[4]), .I1(M_MOSI4), 
            .CO(n19451));
    SB_LUT4 i2475_2_lut (.I0(acadc_dtrigH), .I1(dc_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n8003));   // zimaux_main.vhd(713[4] 742[13])
    defparam i2475_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_1873_3 (.CI(n19484), .I0(data_index[1]), .I1(n9774), 
            .CO(n19485));
    SB_LUT4 add_1873_2_lut (.I0(M_MOSI4), .I1(data_index[0]), .I2(n401), 
            .I3(M_MOSI4), .O(data_index_8__N_715[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1873_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_329_2_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2357)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2420_2_lut (.I0(M_DCSEL), .I1(eis_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6163));   // zimaux_main.vhd(751[4] 826[13])
    defparam i2420_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i11269_4_lut (.I0(n21111), .I1(buf_dds[5]), .I2(n14_adj_1483), 
            .I3(n10588), .O(n15022));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11269_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 comm_index_0__bdd_4_lut_18441 (.I0(comm_index[0]), .I1(\comm_buf[10] [1]), 
            .I2(\comm_buf[11] [1]), .I3(comm_index[1]), .O(n22255));
    defparam comm_index_0__bdd_4_lut_18441.LUT_INIT = 16'he4aa;
    SB_CARRY add_329_2 (.CI(M_MOSI4), .I0(acadc_skipcnt[0]), .I1(acadc_dtrigH), 
            .CO(n19462));
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(data_cntvec[11]), 
            .I2(n4939), .I3(n5005), .O(n22417));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_262 (.I0(buf_adcdata_vdc2[10]), .I1(buf_adcdata2[10]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20002));
    defparam i12_4_lut_adj_262.LUT_INIT = 16'hca0a;
    SB_CARRY add_1873_2 (.CI(M_MOSI4), .I0(data_index[0]), .I1(n401), 
            .CO(n19484));
    SB_LUT4 i12_4_lut_adj_263 (.I0(buf_dds[4]), .I1(\comm_buf[1] [4]), .I2(n10588), 
            .I3(n13498), .O(n19740));   // zimaux_main.vhd(448[3] 704[10])
    defparam i12_4_lut_adj_263.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i11 (.Q(buf_adcdata_vdc1[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19964));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17946_2_lut_3_lut (.I0(comm_state[0]), .I1(n7_adj_1339), .I2(comm_state[2]), 
            .I3(M_MOSI4), .O(n21474));   // zimaux_main.vhd(240[9:19])
    defparam i17946_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 n22255_bdd_4_lut (.I0(n22255), .I1(\comm_buf[9] [1]), .I2(\comm_buf[8] [1]), 
            .I3(comm_index[1]), .O(n22258));
    defparam n22255_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i17302_2_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(comm_state[2]), .O(n21111));
    defparam i17302_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFNE buf_adcdata_vdc1_i0_i12 (.Q(buf_adcdata_vdc1[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19966));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17305_4_lut (.I0(acadc_dtrig1), .I1(acadc_dtrig4), .I2(acadc_dtrig3), 
            .I3(acadc_dtrig2), .O(n17198));
    defparam i17305_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFNE buf_adcdata_vdc1_i0_i13 (.Q(buf_adcdata_vdc1[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19968));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17824_4_lut (.I0(n17198), .I1(eis_state[2]), .I2(n37), .I3(eis_state[0]), 
            .O(n21263));
    defparam i17824_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i12_4_lut_adj_264 (.I0(buf_adcdata_vdc1[14]), .I1(buf_adcdata1[14]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19970));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_264.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i14 (.Q(buf_adcdata_vdc1[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19970));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 add_325_5_lut (.I0(M_MOSI4), .I1(data_cntvec[3]), .I2(M_MOSI4), 
            .I3(n19449), .O(n2305)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17936_3_lut_4_lut (.I0(comm_state[0]), .I1(n7_adj_1339), .I2(comm_state_3__N_490[1]), 
            .I3(comm_cmd[7]), .O(n21405));   // zimaux_main.vhd(240[9:19])
    defparam i17936_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 synccnt_2149_add_4_9_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[7]), 
            .I3(n19556), .O(n38)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11274_4_lut (.I0(n21111), .I1(buf_dds[3]), .I2(n14_adj_1484), 
            .I3(n10588), .O(n15027));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11274_4_lut.LUT_INIT = 16'hf5dd;
    SB_DFFNE buf_adcdata_vdc1_i0_i15 (.Q(buf_adcdata_vdc1[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19972));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 synccnt_2149_add_4_8_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[6]), 
            .I3(n19555), .O(n39)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i13391_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1484));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13391_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFNE buf_adcdata_vdc1_i0_i16 (.Q(buf_adcdata_vdc1[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19974));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 add_1871_17_lut (.I0(n14_adj_1475), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n19513), .O(data_idxvec_15__N_367[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_17_lut.LUT_INIT = 16'hA3AC;
    SB_DFFNE buf_adcdata_vdc1_i0_i17 (.Q(buf_adcdata_vdc1[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19976));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i11_4_lut_adj_265 (.I0(buf_dds[2]), .I1(\comm_buf[1] [2]), .I2(n10588), 
            .I3(n13498), .O(n19734));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_265.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i18 (.Q(buf_adcdata_vdc1[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19978));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i19 (.Q(buf_adcdata_vdc1[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19948));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i11_4_lut_adj_266 (.I0(buf_dds[1]), .I1(\comm_buf[1] [1]), .I2(n10588), 
            .I3(n13498), .O(n19732));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_267 (.I0(buf_adcdata_vdc2[9]), .I1(buf_adcdata2[9]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20020));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(dc_state[0]), .I1(n9), .I2(dc_state[1]), 
            .I3(dc_state[2]), .O(n4_adj_1527));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'h5fcf;
    SB_LUT4 i12292_3_lut (.I0(n16041), .I1(n16043), .I2(eis_state[0]), 
            .I3(M_MOSI4), .O(n16044));   // zimaux_main.vhd(283[9:18])
    defparam i12292_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc1_i0_i20 (.Q(buf_adcdata_vdc1[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19980));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i21 (.Q(buf_adcdata_vdc1[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19982));   // zimaux_main.vhd(710[3] 743[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i22 (.Q(buf_adcdata_vdc1[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19984));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 i17258_2_lut (.I0(eis_state[2]), .I1(M_DCSEL), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n21066));
    defparam i17258_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i13392_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1483));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13392_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFNE buf_adcdata_vdc1_i0_i23 (.Q(buf_adcdata_vdc1[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19824));   // zimaux_main.vhd(710[3] 743[10])
    SB_LUT4 add_325_17_lut (.I0(M_MOSI4), .I1(data_cntvec[15]), .I2(M_MOSI4), 
            .I3(n19461), .O(n2293)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_325_5 (.CI(n19449), .I0(data_cntvec[3]), .I1(M_MOSI4), 
            .CO(n19450));
    SB_LUT4 i1_2_lut_3_lut_adj_268 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[1] [6]), .I3(M_MOSI4), .O(n18532));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_3_lut_adj_268.LUT_INIT = 16'h1010;
    SB_LUT4 i11_4_lut_adj_269 (.I0(eis_adc_trig), .I1(n21620), .I2(tacadc_rst), 
            .I3(n13_adj_1517), .O(n20048));   // zimaux_main.vhd(283[9:18])
    defparam i11_4_lut_adj_269.LUT_INIT = 16'hacaa;
    SB_LUT4 i12293_3_lut (.I0(eis_state[2]), .I1(n16044), .I2(eis_state[1]), 
            .I3(M_MOSI4), .O(eis_state_2__N_311[2]));   // zimaux_main.vhd(283[9:18])
    defparam i12293_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17385_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21195));
    defparam i17385_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17386_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[3] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21196));
    defparam i17386_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_270 (.I0(buf_adcdata_vdc2[8]), .I1(buf_adcdata2[8]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20018));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_270.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_271 (.I0(vdc_adc_trig), .I1(n1_adj_1523), .I2(tacadc_rst), 
            .I3(n4_adj_1527), .O(n20042));   // zimaux_main.vhd(284[9:17])
    defparam i11_4_lut_adj_271.LUT_INIT = 16'hacaa;
    SB_CARRY synccnt_2149_add_4_8 (.CI(n19555), .I0(M_MOSI4), .I1(synccnt[6]), 
            .CO(n19556));
    SB_LUT4 add_1871_16_lut (.I0(n14_adj_1476), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n19512), .O(data_idxvec_15__N_367[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 synccnt_2149_add_4_7_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[5]), 
            .I3(n19554), .O(n40)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_2149_add_4_7 (.CI(n19554), .I0(M_MOSI4), .I1(synccnt[5]), 
            .CO(n19555));
    SB_LUT4 synccnt_2149_add_4_6_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[4]), 
            .I3(n19553), .O(n41)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10455_3_lut (.I0(buf_adcdata1[18]), .I1(cmd_rdadctmp[26]), 
            .I2(n9723), .I3(M_MOSI4), .O(n14208));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10455_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1871_16 (.CI(n19512), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n19513));
    SB_LUT4 add_1871_15_lut (.I0(n14_adj_1477), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n19511), .O(data_idxvec_15__N_367[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_15_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1871_15 (.CI(n19511), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n19512));
    SB_LUT4 add_1871_14_lut (.I0(n14_adj_1478), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n19510), .O(data_idxvec_15__N_367[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_2149_add_4_6 (.CI(n19553), .I0(M_MOSI4), .I1(synccnt[4]), 
            .CO(n19554));
    SB_LUT4 synccnt_2149_add_4_5_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[3]), 
            .I3(n19552), .O(n42)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1871_14 (.CI(n19510), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n19511));
    SB_CARRY synccnt_2149_add_4_5 (.CI(n19552), .I0(M_MOSI4), .I1(synccnt[3]), 
            .CO(n19553));
    SB_LUT4 add_1871_13_lut (.I0(n14_adj_1479), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n19509), .O(data_idxvec_15__N_367[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_13_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 synccnt_2149_add_4_4_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[2]), 
            .I3(n19551), .O(n43)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_2149_add_4_4 (.CI(n19551), .I0(M_MOSI4), .I1(synccnt[2]), 
            .CO(n19552));
    SB_CARRY add_1871_13 (.CI(n19509), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n19510));
    SB_LUT4 synccnt_2149_add_4_3_lut (.I0(M_MOSI4), .I1(M_MOSI4), .I2(synccnt[1]), 
            .I3(n19550), .O(n44)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1871_12_lut (.I0(n14_adj_1480), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n19508), .O(data_idxvec_15__N_367[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_12_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY synccnt_2149_add_4_3 (.CI(n19550), .I0(M_MOSI4), .I1(synccnt[1]), 
            .CO(n19551));
    SB_LUT4 synccnt_2149_add_4_2_lut (.I0(M_MOSI4), .I1(n15_adj_1373), .I2(synccnt[0]), 
            .I3(M_MOSI4), .O(n45)) /* synthesis syn_instantiated=1 */ ;
    defparam synccnt_2149_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY synccnt_2149_add_4_2 (.CI(M_MOSI4), .I0(n15_adj_1373), .I1(synccnt[0]), 
            .CO(n19550));
    SB_CARRY add_1871_12 (.CI(n19508), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n19509));
    SB_LUT4 secclk_cnt_2150_2151_add_4_24_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[22]), .I3(n19549), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_2150_2151_add_4_23_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[21]), .I3(n19548), .O(n99)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1871_11_lut (.I0(n14_adj_1481), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n19507), .O(data_idxvec_15__N_367[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_11_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY secclk_cnt_2150_2151_add_4_23 (.CI(n19548), .I0(M_MOSI4), .I1(secclk_cnt[21]), 
            .CO(n19549));
    SB_LUT4 i1_4_lut_4_lut_adj_272 (.I0(comm_state[0]), .I1(n12), .I2(n20956), 
            .I3(n20885), .O(n10734));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_4_lut_4_lut_adj_272.LUT_INIT = 16'hf400;
    SB_LUT4 i11292_3_lut (.I0(n14090), .I1(bit_cnt_adj_1615[0]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n15045));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i11292_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i17344_3_lut (.I0(\comm_buf[6] [3]), .I1(\comm_buf[7] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n21154));
    defparam i17344_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_273 (.I0(cmd_rdadctmp_adj_1571[14]), .I1(cmd_rdadctmp_adj_1571[13]), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20134));
    defparam i12_4_lut_adj_273.LUT_INIT = 16'hca0a;
    SB_CARRY add_1871_11 (.CI(n19507), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n19508));
    SB_LUT4 secclk_cnt_2150_2151_add_4_22_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[20]), .I3(n19547), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_6 (.CI(n19442), .I0(data_count[4]), .I1(M_MOSI4), 
            .CO(n19443));
    SB_LUT4 add_325_16_lut (.I0(M_MOSI4), .I1(data_cntvec[14]), .I2(M_MOSI4), 
            .I3(n19460), .O(n2294)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_325_4_lut (.I0(M_MOSI4), .I1(data_cntvec[2]), .I2(M_MOSI4), 
            .I3(n19448), .O(n2306)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_22 (.CI(n19547), .I0(M_MOSI4), .I1(secclk_cnt[20]), 
            .CO(n19548));
    SB_CARRY add_325_16 (.CI(n19460), .I0(data_cntvec[14]), .I1(M_MOSI4), 
            .CO(n19461));
    SB_LUT4 secclk_cnt_2150_2151_add_4_21_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[19]), .I3(n19546), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_21 (.CI(n19546), .I0(M_MOSI4), .I1(secclk_cnt[19]), 
            .CO(n19547));
    SB_LUT4 secclk_cnt_2150_2151_add_4_20_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[18]), .I3(n19545), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_274 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20402));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_275 (.I0(adc_state_adj_1593[1]), .I1(adc_state_adj_1593[3]), 
            .I2(adc_state_adj_1593[0]), .I3(adc_state_adj_1593[2]), .O(n20839));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_275.LUT_INIT = 16'heffe;
    SB_LUT4 i10410_3_lut (.I0(acadc_skipCount[3]), .I1(n14_adj_1484), .I2(n11358), 
            .I3(M_MOSI4), .O(n14163));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10410_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_276 (.I0(drdy_falling_adj_1453), .I1(adc_state_adj_1593[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n4));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_2_lut_adj_276.LUT_INIT = 16'h2222;
    SB_CARRY add_325_4 (.CI(n19448), .I0(data_cntvec[2]), .I1(M_MOSI4), 
            .CO(n19449));
    SB_CARRY secclk_cnt_2150_2151_add_4_20 (.CI(n19545), .I0(M_MOSI4), .I1(secclk_cnt[18]), 
            .CO(n19546));
    SB_LUT4 i18269_4_lut (.I0(n20766), .I1(M_CS4), .I2(n4), .I3(n20839), 
            .O(n15_adj_1537));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18269_4_lut.LUT_INIT = 16'h4c5f;
    SB_LUT4 i10412_3_lut (.I0(acadc_skipCount[5]), .I1(n14_adj_1483), .I2(n11358), 
            .I3(M_MOSI4), .O(n14165));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14834_3_lut (.I0(acadc_skipCount[6]), .I1(n18532), .I2(n11358), 
            .I3(M_MOSI4), .O(n14166));
    defparam i14834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10414_3_lut (.I0(acadc_skipCount[7]), .I1(n14_adj_1462), .I2(n11358), 
            .I3(M_MOSI4), .O(n14167));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_277 (.I0(cmd_rdadctmp_adj_1594[0]), .I1(M_MISO4), 
            .I2(n12199), .I3(adc_state_adj_1593[0]), .O(n20302));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_277.LUT_INIT = 16'hca0a;
    SB_LUT4 i10415_3_lut (.I0(acadc_skipCount[8]), .I1(n14_adj_1482), .I2(n11358), 
            .I3(M_MOSI4), .O(n14168));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10416_3_lut (.I0(acadc_skipCount[9]), .I1(n14_adj_1481), .I2(n11358), 
            .I3(M_MOSI4), .O(n14169));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_19_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[17]), .I3(n19544), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1871_10_lut (.I0(n14_adj_1482), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n19506), .O(data_idxvec_15__N_367[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_10_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1871_10 (.CI(n19506), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n19507));
    SB_LUT4 i2_3_lut (.I0(dc_state[0]), .I1(M_DCSEL), .I2(eis_start), 
            .I3(M_MOSI4), .O(n9));
    defparam i2_3_lut.LUT_INIT = 16'h0404;
    SB_CARRY secclk_cnt_2150_2151_add_4_19 (.CI(n19544), .I0(M_MOSI4), .I1(secclk_cnt[17]), 
            .CO(n19545));
    SB_LUT4 add_1871_9_lut (.I0(n14_adj_1462), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n19505), .O(data_idxvec_15__N_367[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_324_3_lut (.I0(M_MOSI4), .I1(data_count[1]), .I2(M_MOSI4), 
            .I3(n19439), .O(n2289)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_325_3_lut (.I0(M_MOSI4), .I1(data_cntvec[1]), .I2(M_MOSI4), 
            .I3(n19447), .O(n2307)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_4 (.CI(n19440), .I0(data_count[2]), .I1(M_MOSI4), 
            .CO(n19441));
    SB_CARRY add_1871_9 (.CI(n19505), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n19506));
    SB_LUT4 i17253_3_lut (.I0(adc_state_adj_1570[3]), .I1(adc_state_adj_1570[0]), 
            .I2(adc_state_adj_1570[2]), .I3(M_MOSI4), .O(n21061));
    defparam i17253_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i2_3_lut_adj_278 (.I0(n20752), .I1(drdy_falling_adj_1412), .I2(adc_state_adj_1570[0]), 
            .I3(M_MOSI4), .O(n20753));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_278.LUT_INIT = 16'h0808;
    SB_LUT4 add_1871_8_lut (.I0(n18532), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n19504), .O(data_idxvec_15__N_367[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i18272_4_lut (.I0(n20753), .I1(M_CS3), .I2(adc_state_adj_1570[1]), 
            .I3(n21061), .O(n15_adj_1539));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18272_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i1_3_lut_adj_279 (.I0(dc_state[1]), .I1(dc_state[0]), .I2(dc_state[2]), 
            .I3(M_MOSI4), .O(dc_state_2__N_314[2]));   // zimaux_main.vhd(284[9:17])
    defparam i1_3_lut_adj_279.LUT_INIT = 16'h2828;
    SB_LUT4 mux_1894_i2_3_lut (.I0(req_data_cnt[9]), .I1(buf_data2[71]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4967));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n22417_bdd_4_lut (.I0(n22417), .I1(n4991), .I2(n5011), .I3(n5005), 
            .O(n22420));
    defparam n22417_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_280 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20400));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_280.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_281 (.I0(cmd_rdadctmp_adj_1571[0]), .I1(M_MISO3), 
            .I2(n12099), .I3(adc_state_adj_1570[0]), .O(n20300));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_281.LUT_INIT = 16'hca0a;
    SB_LUT4 i17249_3_lut (.I0(adc_state_adj_1547[3]), .I1(adc_state_adj_1547[0]), 
            .I2(adc_state_adj_1547[2]), .I3(M_MOSI4), .O(n21057));
    defparam i17249_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i2_3_lut_adj_282 (.I0(n20749), .I1(drdy_falling_adj_1372), .I2(adc_state_adj_1547[0]), 
            .I3(M_MOSI4), .O(n20750));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_282.LUT_INIT = 16'h0808;
    SB_LUT4 mux_1899_i2_3_lut (.I0(M_DCSEL), .I1(M_OSR1), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4980));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_18_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[16]), .I3(n19543), .O(n104)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1871_8 (.CI(n19504), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n19505));
    SB_LUT4 add_325_15_lut (.I0(M_MOSI4), .I1(data_cntvec[13]), .I2(M_MOSI4), 
            .I3(n19459), .O(n2295)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_325_15 (.CI(n19459), .I0(data_cntvec[13]), .I1(M_MOSI4), 
            .CO(n19460));
    SB_CARRY secclk_cnt_2150_2151_add_4_18 (.CI(n19543), .I0(M_MOSI4), .I1(secclk_cnt[16]), 
            .CO(n19544));
    SB_LUT4 secclk_cnt_2150_2151_add_4_17_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[15]), .I3(n19542), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_17 (.CI(n19542), .I0(M_MOSI4), .I1(secclk_cnt[15]), 
            .CO(n19543));
    SB_LUT4 add_1871_7_lut (.I0(n14_adj_1483), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n19503), .O(data_idxvec_15__N_367[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_325_14_lut (.I0(M_MOSI4), .I1(data_cntvec[12]), .I2(M_MOSI4), 
            .I3(n19458), .O(n2296)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20885));
    defparam i1_3_lut_3_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_CARRY add_325_3 (.CI(n19447), .I0(data_cntvec[1]), .I1(M_MOSI4), 
            .CO(n19448));
    SB_LUT4 secclk_cnt_2150_2151_add_4_16_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[14]), .I3(n19541), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1871_7 (.CI(n19503), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n19504));
    SB_CARRY add_325_14 (.CI(n19458), .I0(data_cntvec[12]), .I1(M_MOSI4), 
            .CO(n19459));
    SB_LUT4 add_325_2_lut (.I0(M_MOSI4), .I1(data_cntvec[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2308)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_325_2 (.CI(M_MOSI4), .I0(data_cntvec[0]), .I1(acadc_dtrigH), 
            .CO(n19447));
    SB_LUT4 i18275_4_lut (.I0(n20750), .I1(M_CS2), .I2(adc_state_adj_1547[1]), 
            .I3(n21057), .O(n15_adj_1541));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18275_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i12_4_lut_adj_283 (.I0(buf_adcdata_vdc2[7]), .I1(buf_adcdata2[7]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20010));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_283.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_2150_2151_add_4_16 (.CI(n19541), .I0(M_MOSI4), .I1(secclk_cnt[14]), 
            .CO(n19542));
    SB_LUT4 mux_1890_i2_3_lut (.I0(acadc_skipCount[9]), .I1(eis_stop), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4955));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1890_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_15_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[13]), .I3(n19540), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n14190));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY secclk_cnt_2150_2151_add_4_15 (.CI(n19540), .I0(M_MOSI4), .I1(secclk_cnt[13]), 
            .CO(n19541));
    SB_LUT4 secclk_cnt_2150_2151_add_4_14_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[12]), .I3(n19539), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n14189));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_1871_6_lut (.I0(n14_adj_1463), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n19502), .O(data_idxvec_15__N_367[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_6_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i10417_3_lut (.I0(acadc_skipCount[10]), .I1(n14_adj_1480), .I2(n11358), 
            .I3(M_MOSI4), .O(n14170));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_325_13_lut (.I0(M_MOSI4), .I1(data_cntvec[11]), .I2(M_MOSI4), 
            .I3(n19457), .O(n2297)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_324_10_lut (.I0(M_MOSI4), .I1(data_count[8]), .I2(M_MOSI4), 
            .I3(n19446), .O(n2282)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_14 (.CI(n19539), .I0(M_MOSI4), .I1(secclk_cnt[12]), 
            .CO(n19540));
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n14188));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY add_1871_6 (.CI(n19502), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n19503));
    SB_LUT4 add_329_17_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[15]), .I2(M_MOSI4), 
            .I3(n19476), .O(n2342)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_325_13 (.CI(n19457), .I0(data_cntvec[11]), .I1(M_MOSI4), 
            .CO(n19458));
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n14187));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n14186));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1904_i2_4_lut (.I0(n4955), .I1(data_idxvec[9]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4993));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1904_i2_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1884_i2_3_lut (.I0(buf_dds[9]), .I1(buf_adcdata_vdc1[17]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4941));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1884_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10418_3_lut (.I0(acadc_skipCount[11]), .I1(n14_adj_1479), .I2(n11358), 
            .I3(M_MOSI4), .O(n14171));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10418_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n14185));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_adj_284 (.I0(dc_state[1]), .I1(dc_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n1_adj_1523));   // zimaux_main.vhd(710[3] 743[10])
    defparam i1_2_lut_adj_284.LUT_INIT = 16'h2222;
    SB_LUT4 i25_4_lut (.I0(n9), .I1(n17198), .I2(dc_state[2]), .I3(dc_state[0]), 
            .O(n18));
    defparam i25_4_lut.LUT_INIT = 16'hfa3a;
    SB_LUT4 add_324_9_lut (.I0(M_MOSI4), .I1(data_count[7]), .I2(M_MOSI4), 
            .I3(n19445), .O(n2283)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n14184));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_18567 (.I0(comm_cmd[0]), .I1(eis_end), 
            .I2(n4935), .I3(n5005), .O(n22411));
    defparam comm_cmd_0__bdd_4_lut_18567.LUT_INIT = 16'he4aa;
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n14183));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_324_6_lut (.I0(M_MOSI4), .I1(data_count[4]), .I2(M_MOSI4), 
            .I3(n19442), .O(n2286)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n14182));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n14181));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 n22411_bdd_4_lut (.I0(n22411), .I1(n21361), .I2(n5007), .I3(n5005), 
            .O(n22414));
    defparam n22411_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10419_3_lut (.I0(acadc_skipCount[12]), .I1(n14_adj_1478), .I2(n11358), 
            .I3(M_MOSI4), .O(n14172));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10419_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_13_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[11]), .I3(n19538), .O(n109)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_13 (.CI(n19538), .I0(M_MOSI4), .I1(secclk_cnt[11]), 
            .CO(n19539));
    SB_LUT4 i10420_3_lut (.I0(acadc_skipCount[13]), .I1(n14_adj_1477), .I2(n11358), 
            .I3(M_MOSI4), .O(n14173));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10420_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10421_3_lut (.I0(acadc_skipCount[14]), .I1(n14_adj_1476), .I2(n11358), 
            .I3(M_MOSI4), .O(n14174));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10421_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n14180));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 secclk_cnt_2150_2151_add_4_12_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[10]), .I3(n19537), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n14179));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_1871_5_lut (.I0(n14_adj_1484), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n19501), .O(data_idxvec_15__N_367[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_5_lut.LUT_INIT = 16'hA3AC;
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n14178));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_4_lut_adj_285 (.I0(n9_adj_1335), .I1(comm_state[3]), .I2(n7983), 
            .I3(n20952), .O(n11358));
    defparam i1_4_lut_adj_285.LUT_INIT = 16'hc0c4;
    SB_LUT4 add_329_16_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[14]), .I2(M_MOSI4), 
            .I3(n19475), .O(n2343)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10422_3_lut (.I0(acadc_skipCount[15]), .I1(n14_adj_1475), .I2(n11358), 
            .I3(M_MOSI4), .O(n14175));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10422_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n14177));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_325_12_lut (.I0(M_MOSI4), .I1(data_cntvec[10]), .I2(M_MOSI4), 
            .I3(n19456), .O(n2298)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_9 (.CI(n19445), .I0(data_count[7]), .I1(M_MOSI4), 
            .CO(n19446));
    SB_CARRY secclk_cnt_2150_2151_add_4_12 (.CI(n19537), .I0(M_MOSI4), .I1(secclk_cnt[10]), 
            .CO(n19538));
    SB_CARRY add_1871_5 (.CI(n19501), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n19502));
    SB_CARRY add_329_16 (.CI(n19475), .I0(acadc_skipcnt[14]), .I1(M_MOSI4), 
            .CO(n19476));
    SB_CARRY add_325_12 (.CI(n19456), .I0(data_cntvec[10]), .I1(M_MOSI4), 
            .CO(n19457));
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n14176));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n14175));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n14174));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10423_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1465), .I2(n11388), 
            .I3(M_MOSI4), .O(n14176));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10423_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_324_8_lut (.I0(M_MOSI4), .I1(data_count[6]), .I2(M_MOSI4), 
            .I3(n19444), .O(n2284)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n14173));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY add_324_5 (.CI(n19441), .I0(data_count[3]), .I1(M_MOSI4), 
            .CO(n19442));
    SB_LUT4 i12_4_lut_adj_286 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20396));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_286.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n14172));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10362_3_lut (.I0(M_OSR0), .I1(n14_adj_1482), .I2(n11316), 
            .I3(M_MOSI4), .O(n14115));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_287 (.I0(dc_state[2]), .I1(n8003), .I2(n21071), 
            .I3(n20946), .O(n11391));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'h5f4c;
    SB_LUT4 secclk_cnt_2150_2151_add_4_11_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[9]), .I3(n19536), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10363_3_lut (.I0(buf_control[0]), .I1(n14_adj_1482), .I2(n11324), 
            .I3(M_MOSI4), .O(n14116));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10363_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_2150_2151_add_4_11 (.CI(n19536), .I0(M_MOSI4), .I1(secclk_cnt[9]), 
            .CO(n19537));
    SB_LUT4 secclk_cnt_2150_2151_add_4_10_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[8]), .I3(n19535), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n14171));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10408_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n7983), .I3(n11358), .O(n14161));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10408_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n14170));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_18562 (.I0(comm_cmd[0]), .I1(data_cntvec[0]), 
            .I2(acadc_skipCount[0]), .I3(n5191), .O(n22405));
    defparam comm_cmd_0__bdd_4_lut_18562.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_288 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n10640));
    defparam i1_4_lut_4_lut_4_lut_adj_288.LUT_INIT = 16'ha9b8;
    SB_LUT4 n22405_bdd_4_lut (.I0(n22405), .I1(buf_dds[0]), .I2(req_data_cnt[0]), 
            .I3(n5191), .O(n22408));
    defparam n22405_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10366_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n9731), 
            .I3(M_MOSI4), .O(n14119));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10366_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n14169));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_1871_4_lut (.I0(n14_adj_1464), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n19500), .O(data_idxvec_15__N_367[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_329_15_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[13]), .I2(M_MOSI4), 
            .I3(n19474), .O(n2344)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_15_lut.LUT_INIT = 16'hC33C;
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n14168));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 add_325_11_lut (.I0(M_MOSI4), .I1(data_cntvec[9]), .I2(M_MOSI4), 
            .I3(n19455), .O(n2299)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10367_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n9731), 
            .I3(M_MOSI4), .O(n14120));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10367_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_324_8 (.CI(n19444), .I0(data_count[6]), .I1(M_MOSI4), 
            .CO(n19445));
    SB_CARRY secclk_cnt_2150_2151_add_4_10 (.CI(n19535), .I0(M_MOSI4), .I1(secclk_cnt[8]), 
            .CO(n19536));
    SB_LUT4 i13398_2_lut_3_lut (.I0(\comm_buf[0] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1477));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13398_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY add_1871_4 (.CI(n19500), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n19501));
    SB_CARRY add_329_15 (.CI(n19474), .I0(acadc_skipcnt[13]), .I1(M_MOSI4), 
            .CO(n19475));
    SB_LUT4 i10368_3_lut (.I0(eis_start_cmd), .I1(\comm_buf[0] [0]), .I2(n9731), 
            .I3(M_MOSI4), .O(n14121));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10368_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n14167));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY add_325_11 (.CI(n19455), .I0(data_cntvec[9]), .I1(M_MOSI4), 
            .CO(n19456));
    SB_LUT4 add_324_7_lut (.I0(M_MOSI4), .I1(data_count[5]), .I2(M_MOSI4), 
            .I3(n19443), .O(n2285)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_324_2_lut (.I0(M_MOSI4), .I1(data_count[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2290)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_2_lut_adj_289 (.I0(comm_state[0]), .I1(n10187), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20937));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_2_lut_adj_289.LUT_INIT = 16'h4444;
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n14166));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 secclk_cnt_2150_2151_add_4_9_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[7]), .I3(n19534), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_2150_2151_add_4_9 (.CI(n19534), .I0(M_MOSI4), .I1(secclk_cnt[7]), 
            .CO(n19535));
    SB_LUT4 secclk_cnt_2150_2151_add_4_8_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[6]), .I3(n19533), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10424_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1464), .I2(n11388), 
            .I3(M_MOSI4), .O(n14177));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10424_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10425_3_lut (.I0(req_data_cnt[3]), .I1(n14_adj_1484), .I2(n11388), 
            .I3(M_MOSI4), .O(n14178));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10425_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n14165));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i12_4_lut_adj_290 (.I0(buf_adcdata_vdc2[6]), .I1(buf_adcdata2[6]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20008));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_290.LUT_INIT = 16'hca0a;
    SB_LUT4 i17243_3_lut (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[2]), 
            .I3(M_MOSI4), .O(n21051));
    defparam i17243_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i2_3_lut_adj_291 (.I0(n20746), .I1(drdy_falling), .I2(adc_state[0]), 
            .I3(M_MOSI4), .O(n20747));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_291.LUT_INIT = 16'h0808;
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n14164));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i18278_4_lut (.I0(n20747), .I1(M_CS1), .I2(adc_state[1]), 
            .I3(n21051), .O(n15_adj_1542));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18278_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i570_2_lut (.I0(comm_data_vld), .I1(comm_state_3__N_490[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n3287));   // zimaux_main.vhd(493[5] 500[12])
    defparam i570_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_292 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20394));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_292.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n14163));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10427_3_lut (.I0(req_data_cnt[5]), .I1(n14_adj_1483), .I2(n11388), 
            .I3(M_MOSI4), .O(n14180));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10427_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1871_3_lut (.I0(n14_adj_1465), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n19499), .O(data_idxvec_15__N_367[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[6] [5]), 
            .I2(\comm_buf[7] [5]), .I3(comm_index[1]), .O(n22399));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 add_329_14_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[12]), .I2(M_MOSI4), 
            .I3(n19473), .O(n2345)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_14_lut.LUT_INIT = 16'hC33C;
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n14162));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_3_lut_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n11285));
    defparam i1_3_lut_4_lut_4_lut_4_lut.LUT_INIT = 16'hb8a8;
    SB_LUT4 add_325_10_lut (.I0(M_MOSI4), .I1(data_cntvec[8]), .I2(M_MOSI4), 
            .I3(n19454), .O(n2300)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_7 (.CI(n19443), .I0(data_count[5]), .I1(M_MOSI4), 
            .CO(n19444));
    SB_LUT4 i17912_4_lut (.I0(cs_falling_pend_N_986), .I1(comm_state[1]), 
            .I2(n3287), .I3(comm_state[2]), .O(n21378));
    defparam i17912_4_lut.LUT_INIT = 16'hcfee;
    SB_LUT4 i3_3_lut (.I0(comm_length_3__N_502[1]), .I1(n15_adj_1342), .I2(comm_cmd[4]), 
            .I3(M_MOSI4), .O(n8_adj_1519));   // zimaux_main.vhd(448[3] 704[10])
    defparam i3_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i12_4_lut_adj_293 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20392));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_293.LUT_INIT = 16'hca0a;
    SB_LUT4 i24_4_lut (.I0(n17046), .I1(comm_state[0]), .I2(n8_adj_1519), 
            .I3(comm_state[2]), .O(n9_adj_1330));   // zimaux_main.vhd(448[3] 704[10])
    defparam i24_4_lut.LUT_INIT = 16'h10cc;
    SB_CARRY secclk_cnt_2150_2151_add_4_8 (.CI(n19533), .I0(M_MOSI4), .I1(secclk_cnt[6]), 
            .CO(n19534));
    SB_LUT4 i46_4_lut (.I0(n21378), .I1(comm_state_3__N_490[1]), .I2(comm_state[3]), 
            .I3(n7983), .O(n21113));
    defparam i46_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1894_i8_3_lut (.I0(req_data_cnt[15]), .I1(buf_data2[95]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4961));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1899_i8_3_lut (.I0(ICE_CHKCABLE), .I1(buf_device_acadc[7]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4974));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i8_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i8792_3_lut (.I0(n22336), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12544));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8792_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_294 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n7_adj_1497), .O(n10682));
    defparam i1_4_lut_4_lut_4_lut_adj_294.LUT_INIT = 16'hada8;
    SB_LUT4 mux_1950_i1_3_lut (.I0(buf_adcdata_vdc1[8]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5176));
    defparam mux_1950_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18233_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n31), .O(n16));
    defparam i18233_4_lut_4_lut_4_lut.LUT_INIT = 16'ha8b9;
    SB_LUT4 i17901_4_lut (.I0(acadc_skipCount[15]), .I1(comm_cmd[1]), .I2(data_idxvec[15]), 
            .I3(comm_cmd[2]), .O(n21361));
    defparam i17901_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i6505_4_lut (.I0(n5176), .I1(buf_data2[35]), .I2(n6129), .I3(comm_cmd[0]), 
            .O(n10257));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6505_4_lut.LUT_INIT = 16'hfaca;
    SB_CARRY add_1871_3 (.CI(n19499), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n19500));
    SB_CARRY add_329_14 (.CI(n19473), .I0(acadc_skipcnt[12]), .I1(M_MOSI4), 
            .CO(n19474));
    SB_CARRY add_325_10 (.CI(n19454), .I0(data_cntvec[8]), .I1(M_MOSI4), 
            .CO(n19455));
    SB_LUT4 add_324_4_lut (.I0(M_MOSI4), .I1(data_count[2]), .I2(M_MOSI4), 
            .I3(n19440), .O(n2288)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6506_3_lut (.I0(n22408), .I1(n10257), .I2(n6127), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_538[0]));   // zimaux_main.vhd(448[3] 704[10])
    defparam i6506_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_442_Mux_0_i6_3_lut (.I0(comm_buf_1__7__N_538[0]), 
            .I1(comm_rx_buf[0]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1457));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_442_Mux_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_295 (.I0(buf_data2[3]), .I1(buf_adcdata_vdc1[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1536));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_295.LUT_INIT = 16'hcaca;
    SB_CARRY add_324_2 (.CI(M_MOSI4), .I0(data_count[0]), .I1(acadc_dtrigH), 
            .CO(n19439));
    SB_LUT4 i6_3_lut_adj_296 (.I0(n1_adj_1536), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12548));   // zimaux_main.vhd(242[9:17])
    defparam i6_3_lut_adj_296.LUT_INIT = 16'hcaca;
    SB_LUT4 i14837_3_lut (.I0(req_data_cnt[6]), .I1(n18532), .I2(n11388), 
            .I3(M_MOSI4), .O(n14181));
    defparam i14837_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_7_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[5]), .I3(n19532), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n22399_bdd_4_lut (.I0(n22399), .I1(\comm_buf[5] [5]), .I2(\comm_buf[4] [5]), 
            .I3(comm_index[1]), .O(n22402));
    defparam n22399_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_297 (.I0(cmd_rdadctmp[0]), .I1(M_MISO1), .I2(n11899), 
            .I3(adc_state[0]), .O(n20294));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_297.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_2150_2151_add_4_7 (.CI(n19532), .I0(M_MOSI4), .I1(secclk_cnt[5]), 
            .CO(n19533));
    SB_LUT4 i12860_4_lut (.I0(buf_adcdata_vdc1[0]), .I1(buf_adcdata1[0]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n15068));
    defparam i12860_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_2150_2151_add_4_6_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[4]), .I3(n19531), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_298 (.I0(buf_adcdata_vdc4[0]), .I1(buf_adcdata4[0]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19822));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_298.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1871_2_lut (.I0(M_MOSI4), .I1(data_idxvec[0]), .I2(n401), 
            .I3(M_MOSI4), .O(data_idxvec_15__N_740[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1871_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_1930_i1_3_lut (.I0(buf_data2[64]), .I1(buf_adcdata_vdc2[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5100));
    defparam mux_1930_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8800_3_lut (.I0(n5100), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12552));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8800_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1922_i1_3_lut (.I0(buf_data2[32]), .I1(buf_adcdata_vdc2[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5068));
    defparam mux_1922_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8804_3_lut (.I0(n5068), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12556));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8804_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8808_3_lut (.I0(n5458), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12560));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8808_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2016_i1_3_lut (.I0(buf_data2[65]), .I1(buf_adcdata_vdc3[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5426));
    defparam mux_2016_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_329_13_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[11]), .I2(M_MOSI4), 
            .I3(n19472), .O(n2346)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8812_3_lut (.I0(n5426), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12564));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8812_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15183_3_lut (.I0(buf_data2[33]), .I1(buf_adcdata_vdc3[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5394));   // zimaux_main.vhd(242[9:17])
    defparam i15183_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18259_4_lut (.I0(n20911), .I1(comm_state[0]), .I2(n21053), 
            .I3(n21113), .O(n22));
    defparam i18259_4_lut.LUT_INIT = 16'hf531;
    SB_LUT4 i8816_3_lut (.I0(n5394), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12568));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8816_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2000_i1_3_lut (.I0(buf_data2[1]), .I1(buf_adcdata_vdc3[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5362));
    defparam mux_2000_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8820_3_lut (.I0(n5362), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12572));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8820_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_325_9_lut (.I0(M_MOSI4), .I1(data_cntvec[7]), .I2(M_MOSI4), 
            .I3(n19453), .O(n2301)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10429_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1462), .I2(n11388), 
            .I3(M_MOSI4), .O(n14182));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10429_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1992_i1_3_lut (.I0(buf_data2[66]), .I1(buf_adcdata_vdc4[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5330));
    defparam mux_1992_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8824_3_lut (.I0(n5330), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12576));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8824_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1984_i1_3_lut (.I0(buf_data2[34]), .I1(buf_adcdata_vdc4[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5298));
    defparam mux_1984_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8828_3_lut (.I0(n5298), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12580));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1976_i1_3_lut (.I0(buf_data2[2]), .I1(buf_adcdata_vdc4[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5266));
    defparam mux_1976_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESS cs_mask_cnt_2153__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n11706), 
            .D(n19624), .S(n13663));   // zimaux_main.vhd(462[20:31])
    SB_LUT4 i8832_3_lut (.I0(n5266), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12584));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_299 (.I0(dc_state[0]), .I1(dc_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(dc_state_2__N_314[0]));   // zimaux_main.vhd(710[3] 743[10])
    defparam i1_2_lut_adj_299.LUT_INIT = 16'h4444;
    SB_LUT4 i1355165_i1_3_lut (.I0(n22354), .I1(n22246), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1324));
    defparam i1355165_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_119_Mux_0_i15_4_lut (.I0(n7_adj_1324), .I1(n22300), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n556));   // zimaux_main.vhd(606[30:40])
    defparam mux_119_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY secclk_cnt_2150_2151_add_4_6 (.CI(n19531), .I0(M_MOSI4), .I1(secclk_cnt[4]), 
            .CO(n19532));
    SB_CARRY add_1871_2 (.CI(M_MOSI4), .I0(data_idxvec[0]), .I1(n401), 
            .CO(n19499));
    SB_LUT4 i12_4_lut_adj_300 (.I0(buf_adcdata_vdc3[0]), .I1(buf_adcdata3[0]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19820));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_300.LUT_INIT = 16'hca0a;
    SB_CARRY add_324_3 (.CI(n19439), .I0(data_count[1]), .I1(M_MOSI4), 
            .CO(n19440));
    SB_LUT4 i15721_1_lut (.I0(cs_mask_cnt[0]), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15));   // zimaux_main.vhd(462[20:31])
    defparam i15721_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 equal_185_i13_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12_adj_1338), .O(n13_adj_1337));   // zimaux_main.vhd(664[11:20])
    defparam equal_185_i13_2_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i10399_3_lut_4_lut (.I0(buf_device_acadc[5]), .I1(\comm_buf[0] [5]), 
            .I2(n7983), .I3(n11316), .O(n14152));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10399_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i3_3_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_data_vld), .O(n21000));
    defparam i3_3_lut_4_lut_4_lut.LUT_INIT = 16'hedfd;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_301 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n9_adj_1330), .O(n19764));
    defparam i1_4_lut_4_lut_4_lut_adj_301.LUT_INIT = 16'hb9a8;
    SB_LUT4 i12301_4_lut (.I0(eis_start), .I1(n16040), .I2(eis_state[2]), 
            .I3(n16037), .O(n16053));   // zimaux_main.vhd(283[9:18])
    defparam i12301_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i12_4_lut_adj_302 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28));   // zimaux_main.vhd(383[7:31])
    defparam i12_4_lut_adj_302.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_303 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1543));   // zimaux_main.vhd(383[7:31])
    defparam i10_4_lut_adj_303.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_304 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27_adj_1325));   // zimaux_main.vhd(383[7:31])
    defparam i11_4_lut_adj_304.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25));   // zimaux_main.vhd(383[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 comm_cmd_0__bdd_4_lut_18557 (.I0(comm_cmd[0]), .I1(data_cntvec[1]), 
            .I2(acadc_skipCount[1]), .I3(n5191), .O(n22393));
    defparam comm_cmd_0__bdd_4_lut_18557.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_2_lut (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10_adj_1414));   // zimaux_main.vhd(383[7:31])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 n22393_bdd_4_lut (.I0(n22393), .I1(buf_dds[1]), .I2(req_data_cnt[1]), 
            .I3(n5191), .O(n22396));
    defparam n22393_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6_4_lut_adj_305 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14));   // zimaux_main.vhd(383[7:31])
    defparam i6_4_lut_adj_305.LUT_INIT = 16'h8000;
    SB_LUT4 i10430_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1482), .I2(n11388), 
            .I3(M_MOSI4), .O(n14183));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10430_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11705), .D(n2342), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i10431_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1481), .I2(n11388), 
            .I3(M_MOSI4), .O(n14184));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10431_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11705), .D(n2343), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11705), .D(n2344), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i3671_3_lut_4_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1495));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3671_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11705), .D(n2345), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11705), .D(n2346), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11705), .D(n2347), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11705), .D(n2348), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11705), .D(n2349), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11705), .D(n2350), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11705), .D(n2351), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11705), .D(n2352), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11705), .D(n2353), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11705), .D(n2354), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11705), .D(n2355), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11705), .D(n2356), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n11650), 
            .D(n2293), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n11650), 
            .D(n2294), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n11650), 
            .D(n2295), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i15_4_lut_adj_306 (.I0(n25), .I1(n27_adj_1325), .I2(n26_adj_1543), 
            .I3(n28), .O(n19642));   // zimaux_main.vhd(383[7:31])
    defparam i15_4_lut_adj_306.LUT_INIT = 16'hfffe;
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n11650), 
            .D(n2296), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n11650), 
            .D(n2297), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n11650), 
            .D(n2298), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n11650), 
            .D(n2299), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n11650), 
            .D(n2300), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n11650), 
            .D(n2301), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i7_4_lut_adj_307 (.I0(n19642), .I1(n14), .I2(n10_adj_1414), 
            .I3(secclk_cnt[20]), .O(n13686));   // zimaux_main.vhd(383[7:31])
    defparam i7_4_lut_adj_307.LUT_INIT = 16'h4000;
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n14161));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n11650), 
            .D(n2302), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n11650), 
            .D(n2303), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n11650), 
            .D(n2304), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n11650), 
            .D(n2305), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n11650), 
            .D(n2306), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n11650), 
            .D(n2307), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i9761_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13502));   // zimaux_main.vhd(465[4] 703[13])
    defparam i9761_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n11650), 
            .D(n2282), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n11650), 
            .D(n2283), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n11650), 
            .D(n2284), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n11650), 
            .D(n2285), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n11650), 
            .D(n2286), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n11650), 
            .D(n2287), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n11650), 
            .D(n2288), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n11650), 
            .D(n2289), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n14160));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i3663_3_lut_4_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1490));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3663_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i17280_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n21089));   // zimaux_main.vhd(465[4] 703[13])
    defparam i17280_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_DFF buf_control_i5 (.Q(buf_control[5]), .C(clk_32MHz), .D(n14159));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i3427_3_lut_4_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1473));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3427_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i22_4_lut (.I0(n7983), .I1(comm_state[0]), .I2(comm_state[3]), 
            .I3(n21119), .O(n10524));
    defparam i22_4_lut.LUT_INIT = 16'ha5b5;
    SB_LUT4 i10432_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1480), .I2(n11388), 
            .I3(M_MOSI4), .O(n14185));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10432_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_308 (.I0(comm_cmd[0]), .I1(n13502), .I2(n10682), 
            .I3(comm_rx_buf[0]), .O(n19818));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_308.LUT_INIT = 16'hca0a;
    SB_LUT4 i8658_1_lut (.I0(n4788), .I1(M_MOSI4), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(n4792));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8658_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i10433_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1479), .I2(n11388), 
            .I3(M_MOSI4), .O(n14186));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10433_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_2150_2151_add_4_5_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[3]), .I3(n19530), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10369_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n5622), 
            .I3(M_MOSI4), .O(n14122));   // spi_slave.vhd(48[3] 92[10])
    defparam i10369_3_lut.LUT_INIT = 16'hacac;
    SB_DFF buf_control_i4 (.Q(buf_control[4]), .C(clk_32MHz), .D(n14158));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i12876_3_lut (.I0(buf_adcdata1[0]), .I1(cmd_rdadctmp[8]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14123));
    defparam i12876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10371_4_lut (.I0(acadc_dtrig1), .I1(adc_state[2]), .I2(adc_state[1]), 
            .I3(n21063), .O(n14124));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10371_4_lut.LUT_INIT = 16'haae8;
    SB_CARRY add_329_13 (.CI(n19472), .I0(acadc_skipcnt[11]), .I1(M_MOSI4), 
            .CO(n19473));
    SB_LUT4 i10434_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1478), .I2(n11388), 
            .I3(M_MOSI4), .O(n14187));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10434_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_2150_2151_add_4_5 (.CI(n19530), .I0(M_MOSI4), .I1(secclk_cnt[3]), 
            .CO(n19531));
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(M_MOSI4), .O(cs_falling_pend_N_986));   // zimaux_main.vhd(483[8:49])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_309 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20388));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_309.LUT_INIT = 16'hca0a;
    SB_DFF buf_control_i3 (.Q(buf_control[3]), .C(clk_32MHz), .D(n14157));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10372_4_lut (.I0(M_SCLK1), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(n7_adj_1531), .O(n14125));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10372_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i10435_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1477), .I2(n11388), 
            .I3(M_MOSI4), .O(n14188));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1861_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(M_MOSI4), .O(n4788));   // zimaux_main.vhd(448[3] 704[10])
    defparam i1861_2_lut_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 add_329_12_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[10]), .I2(M_MOSI4), 
            .I3(n19471), .O(n2347)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_index_0__bdd_4_lut_18436 (.I0(comm_index[0]), .I1(\comm_buf[2] [6]), 
            .I2(\comm_buf[3] [6]), .I3(comm_index[1]), .O(n22249));
    defparam comm_index_0__bdd_4_lut_18436.LUT_INIT = 16'he4aa;
    SB_DFF buf_control_i2 (.Q(buf_control[2]), .C(clk_32MHz), .D(n14156));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10374_4_lut (.I0(acadc_dtrig2), .I1(adc_state_adj_1547[2]), 
            .I2(adc_state_adj_1547[1]), .I3(n21073), .O(n14127));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10374_4_lut.LUT_INIT = 16'haae8;
    SB_LUT4 i10375_4_lut (.I0(M_SCLK2), .I1(adc_state_adj_1547[2]), .I2(adc_state_adj_1547[3]), 
            .I3(n7), .O(n14128));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10375_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i18254_4_lut (.I0(comm_state[3]), .I1(n14_adj_1467), .I2(comm_state_3__N_490[1]), 
            .I3(n21_adj_1474), .O(n19));
    defparam i18254_4_lut.LUT_INIT = 16'hbabb;
    SB_DFF buf_control_i1 (.Q(M_DCSEL), .C(clk_32MHz), .D(n14155));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_3_lut_adj_310 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n9774));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_3_lut_adj_310.LUT_INIT = 16'hefef;
    SB_LUT4 i3419_3_lut_4_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1471));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3419_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i18010_4_lut (.I0(comm_state_3__N_487[2]), .I1(comm_state[2]), 
            .I2(comm_state_3__N_490[1]), .I3(comm_state[0]), .O(n21472));   // zimaux_main.vhd(240[9:19])
    defparam i18010_4_lut.LUT_INIT = 16'h0c88;
    SB_LUT4 i12201_4_lut (.I0(n21472), .I1(n21474), .I2(comm_state[1]), 
            .I3(comm_state_3__N_490[1]), .O(n15954));   // zimaux_main.vhd(240[9:19])
    defparam i12201_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_437_Mux_3_i7_4_lut_4_lut (.I0(comm_state[0]), 
            .I1(comm_state[1]), .I2(comm_state[2]), .I3(n21347), .O(n17178));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_437_Mux_3_i7_4_lut_4_lut.LUT_INIT = 16'hfe3e;
    SB_DFF buf_device_acadc_i8 (.Q(buf_device_acadc[7]), .C(clk_32MHz), 
           .D(n14154));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i3411_3_lut_4_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1469));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3411_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i10376_3_lut (.I0(buf_adcdata3[0]), .I1(cmd_rdadctmp_adj_1571[8]), 
            .I2(n9523), .I3(M_MOSI4), .O(n14129));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10376_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14823_3_lut_4_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n18523));
    defparam i14823_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_DFF buf_device_acadc_i7 (.Q(buf_device_acadc[6]), .C(clk_32MHz), 
           .D(n14153));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i3643_3_lut_4_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1488));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3643_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i2251_3_lut (.I0(comm_index[3]), .I1(comm_index[2]), .I2(n5996), 
            .I3(M_MOSI4), .O(comm_index_3__N_498[3]));   // zimaux_main.vhd(623[5] 633[12])
    defparam i2251_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFF buf_device_acadc_i6 (.Q(buf_device_acadc[5]), .C(clk_32MHz), 
           .D(n14152));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_311 (.I0(eis_state[2]), .I1(M_DCSEL), 
            .I2(eis_state[0]), .I3(eis_state[1]), .O(n13_adj_1517));
    defparam i1_4_lut_4_lut_4_lut_adj_311.LUT_INIT = 16'h0f15;
    SB_LUT4 n22363_bdd_4_lut_4_lut_4_lut (.I0(eis_state[2]), .I1(eis_state[1]), 
            .I2(acadc_dtrigH), .I3(n22363), .O(eis_state_2__N_311[0]));
    defparam n22363_bdd_4_lut_4_lut_4_lut.LUT_INIT = 16'hce11;
    SB_LUT4 i3635_3_lut_4_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1486));   // zimaux_main.vhd(465[4] 703[13])
    defparam i3635_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 comm_state_3__I_0_437_Mux_3_i15_4_lut (.I0(n17178), .I1(n21349), 
            .I2(comm_state[3]), .I3(n7983), .O(comm_state_3__N_59[3]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_437_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_DFF buf_device_acadc_i5 (.Q(buf_device_acadc[4]), .C(clk_32MHz), 
           .D(n14151));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 secclk_cnt_2150_2151_add_4_4_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[2]), .I3(n19529), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10377_4_lut (.I0(acadc_dtrig3), .I1(adc_state_adj_1570[2]), 
            .I2(adc_state_adj_1570[1]), .I3(n21059), .O(n14130));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10377_4_lut.LUT_INIT = 16'haae8;
    SB_LUT4 i1_2_lut_3_lut_adj_312 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20614));   // zimaux_main.vhd(240[9:19])
    defparam i1_2_lut_3_lut_adj_312.LUT_INIT = 16'hdfdf;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[6]), .I1(comm_cmd[5]), .I2(comm_cmd[4]), 
            .I3(comm_cmd[3]), .O(n12_adj_1333));   // zimaux_main.vhd(678[11:20])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hefff;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n11285), 
            .D(n549), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i21_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(comm_state[3]), .O(ICE_GPMI_0_N_975));   // zimaux_main.vhd(465[4] 703[13])
    defparam i21_4_lut_4_lut.LUT_INIT = 16'h03f4;
    SB_CARRY secclk_cnt_2150_2151_add_4_4 (.CI(n19529), .I0(M_MOSI4), .I1(secclk_cnt[2]), 
            .CO(n19530));
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n11285), 
            .D(n550), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n11285), 
            .D(n551), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n11285), 
            .D(n552), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF buf_device_acadc_i4 (.Q(M_FLT1), .C(clk_32MHz), .D(n14150));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n11285), 
            .D(n553), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n11285), 
            .D(n554), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n11285), 
            .D(n555), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_11__i7 (.Q(\comm_buf[11] [7]), .C(clk_32MHz), .E(n11213), 
            .D(n12762), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_3_lut_adj_313 (.I0(comm_length[2]), .I1(n1_adj_1521), .I2(n81), 
            .I3(M_MOSI4), .O(comm_length_3__N_502[2]));
    defparam i1_3_lut_adj_313.LUT_INIT = 16'hb3b3;
    SB_DFFESR comm_buf_11__i6 (.Q(\comm_buf[11] [6]), .C(clk_32MHz), .E(n11213), 
            .D(n12770), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_11__i5 (.Q(\comm_buf[11] [5]), .C(clk_32MHz), .E(n11213), 
            .D(n12778), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_11__i4 (.Q(\comm_buf[11] [4]), .C(clk_32MHz), .E(n11213), 
            .D(n12782), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_11__i3 (.Q(\comm_buf[11] [3]), .C(clk_32MHz), .E(n11213), 
            .D(n12786), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_18547 (.I0(comm_cmd[0]), .I1(data_cntvec[2]), 
            .I2(acadc_skipCount[2]), .I3(n5191), .O(n22387));
    defparam comm_cmd_0__bdd_4_lut_18547.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_11__i2 (.Q(\comm_buf[11] [2]), .C(clk_32MHz), .E(n11213), 
            .D(n12794), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF buf_device_acadc_i3 (.Q(M_FLT0), .C(clk_32MHz), .D(n14149));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_11__i1 (.Q(\comm_buf[11] [1]), .C(clk_32MHz), .E(n11213), 
            .D(n12798), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_10__i7 (.Q(\comm_buf[10] [7]), .C(clk_32MHz), .E(n11141), 
            .D(n12806), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 n22249_bdd_4_lut (.I0(n22249), .I1(\comm_buf[1] [6]), .I2(\comm_buf[0] [6]), 
            .I3(comm_index[1]), .O(n22252));
    defparam n22249_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_10__i6 (.Q(\comm_buf[10] [6]), .C(clk_32MHz), .E(n11141), 
            .D(n12810), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 secclk_cnt_2150_2151_add_4_3_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[1]), .I3(n19528), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR comm_buf_10__i5 (.Q(\comm_buf[10] [5]), .C(clk_32MHz), .E(n11141), 
            .D(n12814), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_10__i4 (.Q(\comm_buf[10] [4]), .C(clk_32MHz), .E(n11141), 
            .D(n12822), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_10__i3 (.Q(\comm_buf[10] [3]), .C(clk_32MHz), .E(n11141), 
            .D(n12826), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 n22387_bdd_4_lut (.I0(n22387), .I1(buf_dds[2]), .I2(req_data_cnt[2]), 
            .I3(n5191), .O(n22390));
    defparam n22387_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_10__i2 (.Q(\comm_buf[10] [2]), .C(clk_32MHz), .E(n11141), 
            .D(n12834), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF buf_device_acadc_i2 (.Q(M_OSR1), .C(clk_32MHz), .D(n14148));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_10__i1 (.Q(\comm_buf[10] [1]), .C(clk_32MHz), .E(n11141), 
            .D(n12838), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i7 (.Q(\comm_buf[9] [7]), .C(clk_32MHz), .E(n11129), 
            .D(n12842), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_4_lut_adj_314 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[4]), .I3(comm_cmd[3]), .O(n12_adj_1338));   // zimaux_main.vhd(678[11:20])
    defparam i1_2_lut_4_lut_adj_314.LUT_INIT = 16'hffef;
    SB_DFFESR comm_buf_9__i6 (.Q(\comm_buf[9] [6]), .C(clk_32MHz), .E(n11129), 
            .D(n12862), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i5 (.Q(\comm_buf[9] [5]), .C(clk_32MHz), .E(n11129), 
            .D(n12866), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i4 (.Q(\comm_buf[9] [4]), .C(clk_32MHz), .E(n11129), 
            .D(n12874), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i3 (.Q(\comm_buf[9] [3]), .C(clk_32MHz), .E(n11129), 
            .D(n12882), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i2 (.Q(\comm_buf[9] [2]), .C(clk_32MHz), .E(n11129), 
            .D(n12886), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i1 (.Q(\comm_buf[9] [1]), .C(clk_32MHz), .E(n11129), 
            .D(n12890), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_8__i7 (.Q(\comm_buf[8] [7]), .C(clk_32MHz), .E(n11075), 
            .D(n12898), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY add_325_9 (.CI(n19453), .I0(data_cntvec[7]), .I1(M_MOSI4), 
            .CO(n19454));
    SB_DFFESR comm_buf_8__i6 (.Q(\comm_buf[8] [6]), .C(clk_32MHz), .E(n11075), 
            .D(n12902), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 comm_index_0__bdd_4_lut_18552 (.I0(comm_index[0]), .I1(\comm_buf[6] [4]), 
            .I2(\comm_buf[7] [4]), .I3(comm_index[1]), .O(n22381));
    defparam comm_index_0__bdd_4_lut_18552.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_8__i5 (.Q(\comm_buf[8] [5]), .C(clk_32MHz), .E(n11075), 
            .D(n12906), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_8__i4 (.Q(\comm_buf[8] [4]), .C(clk_32MHz), .E(n11075), 
            .D(n12918), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY add_329_12 (.CI(n19471), .I0(acadc_skipcnt[10]), .I1(M_MOSI4), 
            .CO(n19472));
    SB_DFFESR comm_buf_8__i3 (.Q(\comm_buf[8] [3]), .C(clk_32MHz), .E(n11075), 
            .D(n12922), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_8__i2 (.Q(\comm_buf[8] [2]), .C(clk_32MHz), .E(n11075), 
            .D(n12926), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_8__i1 (.Q(\comm_buf[8] [1]), .C(clk_32MHz), .E(n11075), 
            .D(n12930), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i7 (.Q(\comm_buf[7] [7]), .C(clk_32MHz), .E(n11039), 
            .D(n12934), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i6 (.Q(\comm_buf[7] [6]), .C(clk_32MHz), .E(n11039), 
            .D(n12938), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i5 (.Q(\comm_buf[7] [5]), .C(clk_32MHz), .E(n11039), 
            .D(n12950), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10436_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1476), .I2(n11388), 
            .I3(M_MOSI4), .O(n14189));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10436_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_7__i4 (.Q(\comm_buf[7] [4]), .C(clk_32MHz), .E(n11039), 
            .D(n12954), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i3 (.Q(\comm_buf[7] [3]), .C(clk_32MHz), .E(n11039), 
            .D(n12958), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_315 (.I0(comm_cmd[4]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[5]), .I3(n27), .O(comm_state_3__N_471[3]));   // zimaux_main.vhd(517[5] 599[14])
    defparam i1_2_lut_3_lut_4_lut_adj_315.LUT_INIT = 16'h0200;
    SB_DFFESR comm_buf_7__i2 (.Q(\comm_buf[7] [2]), .C(clk_32MHz), .E(n11039), 
            .D(n12962), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i1 (.Q(\comm_buf[7] [1]), .C(clk_32MHz), .E(n11039), 
            .D(n12974), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_adj_316 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4_adj_1341));
    defparam i1_2_lut_adj_316.LUT_INIT = 16'h2222;
    SB_DFFESR comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(n11003), 
            .D(n12978), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(n11003), 
            .D(n12982), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(n11003), 
            .D(n12986), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(n11003), 
            .D(n13002), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(n11003), 
            .D(n13010), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(n11003), 
            .D(n13014), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(n11003), 
            .D(n13026), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n10949), 
            .D(n13030), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n10949), 
            .D(n13034), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_317 (.I0(comm_cmd[4]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[5]), .I3(comm_cmd[3]), .O(n10));   // zimaux_main.vhd(517[5] 599[14])
    defparam i1_2_lut_3_lut_4_lut_adj_317.LUT_INIT = 16'h0200;
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n10949), 
            .D(n13038), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n10949), 
            .D(n13042), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n10949), 
            .D(n13050), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n10949), 
            .D(n13058), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n10949), 
            .D(n13062), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n10889), 
            .D(n13066), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n10889), 
            .D(n13070), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n10889), 
            .D(n13078), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n10889), 
            .D(n13086), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n10889), 
            .D(n13094), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n10889), 
            .D(n13098), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n10889), 
            .D(n13102), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n10865), 
            .D(n13106), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n10865), 
            .D(n13118), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n10865), 
            .D(n13126), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFN eis_end_426 (.Q(eis_end), .C(clk_32MHz), .D(n14138));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n10865), 
            .D(n13142), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n10865), 
            .D(n13146), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n10865), 
            .D(n13150), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n10865), 
            .D(n13154), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n10829), 
            .D(n13162), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n10829), 
            .D(n13170), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n10829), 
            .D(n13174), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n10829), 
            .D(n13190), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n10829), 
            .D(n13194), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i2488_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(M_MOSI4), .O(n6238));   // zimaux_main.vhd(240[9:19])
    defparam i2488_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n10829), 
            .D(n13202), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n10829), 
            .D(n13222), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1510), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1512), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n10773), 
            .D(n6370), .R(n4788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n10773), 
            .D(n6384), .R(n4788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1454), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1455), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1456), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n10718), 
            .D(n12524), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_3_lut_adj_318 (.I0(n401), .I1(n9_adj_1332), .I2(n12_adj_1338), 
            .I3(M_MOSI4), .O(n1_adj_1521));
    defparam i1_3_lut_adj_318.LUT_INIT = 16'h5454;
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n10718), 
            .D(n12613), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n10718), 
            .D(n12617), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n10718), 
            .D(n12628), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n10718), 
            .D(n12632), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_319 (.I0(comm_cmd[4]), .I1(comm_cmd[6]), 
            .I2(comm_cmd[5]), .I3(n15_adj_1342), .O(comm_state_3__N_487[2]));   // zimaux_main.vhd(517[5] 599[14])
    defparam i1_2_lut_3_lut_4_lut_adj_319.LUT_INIT = 16'h0200;
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n10718), 
            .D(n12636), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n10718), 
            .D(n12648), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_CARRY secclk_cnt_2150_2151_add_4_3 (.CI(n19528), .I0(M_MOSI4), .I1(secclk_cnt[1]), 
            .CO(n19529));
    SB_LUT4 i1_2_lut_adj_320 (.I0(comm_state[1]), .I1(comm_state_3__N_490[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n20911));
    defparam i1_2_lut_adj_320.LUT_INIT = 16'h2222;
    SB_LUT4 secclk_cnt_2150_2151_add_4_2_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_2150_2151_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_2_lut_4_lut (.I0(n13), .I1(n13_adj_1337), .I2(n9737), .I3(n1_adj_1521), 
            .O(comm_length_3__N_502[1]));
    defparam i2_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i17294_3_lut (.I0(n9_adj_1335), .I1(comm_state[0]), .I2(n12_adj_1338), 
            .I3(M_MOSI4), .O(n21103));
    defparam i17294_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i17204_2_lut_3_lut (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n21010));
    defparam i17204_2_lut_3_lut.LUT_INIT = 16'h8a8a;
    SB_LUT4 add_329_11_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[9]), .I2(M_MOSI4), 
            .I3(n19470), .O(n2348)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_321 (.I0(cs_sync1), .I1(cs_sync2), 
            .I2(cs_mask_cnt[0]), .I3(cs_mask_cnt[1]), .O(n11706));   // zimaux_main.vhd(456[8:37])
    defparam i1_2_lut_3_lut_4_lut_adj_321.LUT_INIT = 16'hfff4;
    SB_LUT4 i13397_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1475));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13397_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_322 (.I0(n9_adj_1334), .I1(comm_state[3]), .I2(n7983), 
            .I3(n20952), .O(n11388));
    defparam i1_4_lut_adj_322.LUT_INIT = 16'hc0c4;
    SB_LUT4 i1_3_lut_adj_323 (.I0(comm_length[3]), .I1(n1_adj_1521), .I2(n81), 
            .I3(M_MOSI4), .O(comm_length_3__N_502[3]));
    defparam i1_3_lut_adj_323.LUT_INIT = 16'hb3b3;
    SB_LUT4 i1_2_lut_4_lut_adj_324 (.I0(n13), .I1(n13_adj_1337), .I2(n9737), 
            .I3(comm_state_3__N_487[2]), .O(n81));
    defparam i1_2_lut_4_lut_adj_324.LUT_INIT = 16'h0080;
    SB_CARRY add_329_11 (.CI(n19470), .I0(acadc_skipcnt[9]), .I1(M_MOSI4), 
            .CO(n19471));
    SB_LUT4 i9910_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n13663));   // zimaux_main.vhd(456[8:37])
    defparam i9910_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_CARRY secclk_cnt_2150_2151_add_4_2 (.CI(VCC_net), .I0(M_MOSI4), .I1(secclk_cnt[0]), 
            .CO(n19528));
    SB_DFFESR comm_length_i3 (.Q(comm_length[3]), .C(clk_32MHz), .E(n10640), 
            .D(comm_length_3__N_502[3]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10378_4_lut (.I0(M_SCLK3), .I1(adc_state_adj_1570[2]), .I2(adc_state_adj_1570[3]), 
            .I3(n7_adj_1458), .O(n14131));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10378_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i10437_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1475), .I2(n11388), 
            .I3(M_MOSI4), .O(n14190));   // zimaux_main.vhd(448[3] 704[10])
    defparam i10437_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(n10640), 
            .D(comm_length_3__N_502[2]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i12_4_lut_adj_325 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20384));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_325.LUT_INIT = 16'hca0a;
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n16), 
            .D(comm_length_3__N_502[1]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_index_i3 (.Q(comm_index[3]), .C(clk_32MHz), .E(n10619), 
            .D(comm_index_3__N_498[3]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n10619), 
            .D(comm_index_3__N_498[2]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i10379_3_lut (.I0(buf_adcdata4[0]), .I1(cmd_rdadctmp_adj_1594[8]), 
            .I2(n9462), .I3(M_MOSI4), .O(n14132));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10379_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n10619), 
            .D(comm_index_3__N_498[1]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n19), 
            .D(n15954), .R(comm_state[3]));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i15_4_lut_adj_326 (.I0(n9774), .I1(n7421), .I2(comm_state[3]), 
            .I3(n7983), .O(n11269));
    defparam i15_4_lut_adj_326.LUT_INIT = 16'hf535;
    SB_LUT4 i10438_3_lut (.I0(buf_adcdata1[1]), .I1(cmd_rdadctmp[9]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14191));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10438_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10380_4_lut (.I0(acadc_dtrig4), .I1(adc_state_adj_1593[2]), 
            .I2(adc_state_adj_1593[1]), .I3(n20974), .O(n14133));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10380_4_lut.LUT_INIT = 16'haae8;
    SB_LUT4 i8896_3_lut (.I0(n22330), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12648));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8896_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8884_3_lut (.I0(n22210), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12636));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8884_3_lut.LUT_INIT = 16'hcaca;
    ADC_ADS127 ADC_VAC4 (.M_DRDY4(M_DRDY4), .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2_adj_1451), 
            .drdy_prev(drdy_prev_adj_1452), .GND_net(M_MOSI4), .VCC_net(VCC_net), 
            .adc_state({adc_state_adj_1593}), .n7(n7_adj_1499), .n20766(n20766), 
            .n20974(n20974), .drdy_falling(drdy_falling_adj_1453), .acadc_trig(acadc_trig), 
            .n20218(n20218), .cmd_rdadctmp({cmd_rdadctmp_adj_1594}), .n20220(n20220), 
            .n20224(n20224), .n20228(n20228), .n20230(n20230), .n20232(n20232), 
            .n20234(n20234), .n20238(n20238), .n20242(n20242), .n20248(n20248), 
            .n20256(n20256), .n20258(n20258), .n20260(n20260), .n20210(n20210), 
            .n20262(n20262), .n20214(n20214), .n20266(n20266), .n20270(n20270), 
            .n20310(n20310), .n20308(n20308), .n20156(n20156), .n20272(n20272), 
            .n20304(n20304), .n12199(n12199), .n20296(n20296), .n20274(n20274), 
            .n20286(n20286), .n20280(n20280), .n20422(n20422), .n20278(n20278), 
            .n20276(n20276), .n9462(n9462), .n20284(n20284), .n20302(n20302), 
            .n15(n15_adj_1537), .M_CS4(M_CS4), .n14282(n14282), .buf_adcdata4({buf_adcdata4}), 
            .n14281(n14281), .n14280(n14280), .n14279(n14279), .n14278(n14278), 
            .n14277(n14277), .n14276(n14276), .n14275(n14275), .n14274(n14274), 
            .n14273(n14273), .n14272(n14272), .n14271(n14271), .n14270(n14270), 
            .n14269(n14269), .n14268(n14268), .n14267(n14267), .n14266(n14266), 
            .n14265(n14265), .n14264(n14264), .n14263(n14263), .n14262(n14262), 
            .n14261(n14261), .n14260(n14260), .n14147(n14147), .n14134(n14134), 
            .M_SCLK4(M_SCLK4), .n14133(n14133), .acadc_dtrig4(acadc_dtrig4), 
            .n14132(n14132));   // zimaux_main.vhd(897[13:23])
    SB_LUT4 i8880_3_lut (.I0(n22420), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12632));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut_4_lut_adj_327 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12_adj_1333), .O(n9737));   // zimaux_main.vhd(678[11:20])
    defparam i2_3_lut_4_lut_adj_327.LUT_INIT = 16'hffdf;
    SB_LUT4 i1_2_lut_3_lut_adj_328 (.I0(comm_state[2]), .I1(comm_state[3]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n20977));
    defparam i1_2_lut_3_lut_adj_328.LUT_INIT = 16'hfdfd;
    SB_LUT4 i10381_4_lut (.I0(M_SCLK4), .I1(adc_state_adj_1593[2]), .I2(adc_state_adj_1593[3]), 
            .I3(n7_adj_1499), .O(n14134));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10381_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_329 (.I0(comm_state[0]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[1]), .O(n4_adj_1524));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_4_lut_4_lut_4_lut_adj_329.LUT_INIT = 16'h0410;
    SB_LUT4 i20_4_lut (.I0(n21089), .I1(n21103), .I2(comm_state[3]), .I3(n7983), 
            .O(n10588));
    defparam i20_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 i11_4_lut_adj_330 (.I0(buf_dds[0]), .I1(\comm_buf[1] [0]), .I2(n10588), 
            .I3(n13498), .O(n19728));   // zimaux_main.vhd(448[3] 704[10])
    defparam i11_4_lut_adj_330.LUT_INIT = 16'hca0a;
    SB_LUT4 i12487_4_lut (.I0(cmd_rdadctmp_adj_1548[11]), .I1(cmd_rdadctmp_adj_1548[10]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15081));
    defparam i12487_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1894_i5_3_lut (.I0(req_data_cnt[12]), .I1(buf_data2[83]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4964));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1899_i5_3_lut (.I0(buf_control[4]), .I1(buf_device_acadc[4]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4977));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_331 (.I0(comm_cmd[2]), .I1(comm_cmd[4]), 
            .I2(comm_cmd[6]), .I3(comm_cmd[5]), .O(n10166));
    defparam i1_2_lut_3_lut_4_lut_adj_331.LUT_INIT = 16'h0008;
    SB_LUT4 i1_2_lut_4_lut_adj_332 (.I0(comm_cmd[0]), .I1(comm_cmd[3]), 
            .I2(comm_cmd[1]), .I3(n10166), .O(n5213));
    defparam i1_2_lut_4_lut_adj_332.LUT_INIT = 16'hca00;
    SB_LUT4 i1_2_lut_3_lut_adj_333 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [6]), .I3(M_MOSI4), .O(n14_adj_1476));   // zimaux_main.vhd(448[3] 704[10])
    defparam i1_2_lut_3_lut_adj_333.LUT_INIT = 16'h1010;
    SB_LUT4 n22381_bdd_4_lut (.I0(n22381), .I1(\comm_buf[5] [4]), .I2(\comm_buf[4] [4]), 
            .I3(comm_index[1]), .O(n22384));
    defparam n22381_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15497_3_lut (.I0(buf_adcdata1[2]), .I1(cmd_rdadctmp[10]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14192));
    defparam i15497_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17202_2_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n21008));
    defparam i17202_2_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 i12798_4_lut (.I0(n5010), .I1(n22306), .I2(comm_cmd[0]), .I3(n5005), 
            .O(n5030));   // zimaux_main.vhd(242[9:17])
    defparam i12798_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i15494_3_lut (.I0(buf_adcdata1[3]), .I1(cmd_rdadctmp[11]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14193));
    defparam i15494_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8876_3_lut (.I0(n5030), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12628));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_188_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9_adj_1334));   // zimaux_main.vhd(678[11:20])
    defparam equal_188_i9_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_DFFESR comm_clear_385_i1 (.Q(trig_dds), .C(clk_32MHz), .E(n10524), 
            .D(n4792), .R(n21055));   // zimaux_main.vhd(465[4] 703[13])
    SB_DFFSR secclk_cnt_2150_2151__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i1_4_lut_adj_334 (.I0(comm_cmd[3]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n15_adj_1342));   // zimaux_main.vhd(517[5] 599[14])
    defparam i1_4_lut_adj_334.LUT_INIT = 16'habfa;
    SB_LUT4 i12490_4_lut (.I0(cmd_rdadctmp_adj_1548[12]), .I1(cmd_rdadctmp_adj_1548[11]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15082));
    defparam i12490_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1894_i6_3_lut (.I0(req_data_cnt[13]), .I1(buf_data2[87]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4963));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_335 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20412));
    defparam i12_4_lut_adj_335.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_18537 (.I0(comm_index[0]), .I1(\comm_buf[6] [6]), 
            .I2(\comm_buf[7] [6]), .I3(comm_index[1]), .O(n22375));
    defparam comm_index_0__bdd_4_lut_18537.LUT_INIT = 16'he4aa;
    SB_LUT4 n22375_bdd_4_lut (.I0(n22375), .I1(\comm_buf[5] [6]), .I2(\comm_buf[4] [6]), 
            .I3(comm_index[1]), .O(n22378));
    defparam n22375_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_336 (.I0(comm_cmd[7]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_490[1]), .I3(n6), .O(n20889));
    defparam i1_2_lut_3_lut_4_lut_adj_336.LUT_INIT = 16'h0004;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_337 (.I0(comm_cmd[7]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_490[1]), .I3(n6_adj_1326), .O(n10199));
    defparam i1_2_lut_3_lut_4_lut_adj_337.LUT_INIT = 16'h0004;
    SB_LUT4 comm_index_0__bdd_4_lut_18532 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n22369));
    defparam comm_index_0__bdd_4_lut_18532.LUT_INIT = 16'he4aa;
    SB_LUT4 i12493_4_lut (.I0(cmd_rdadctmp_adj_1548[13]), .I1(cmd_rdadctmp_adj_1548[12]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15083));
    defparam i12493_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15493_3_lut (.I0(buf_adcdata1[4]), .I1(cmd_rdadctmp[12]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14194));
    defparam i15493_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_187_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9_adj_1335));   // zimaux_main.vhd(670[11:20])
    defparam equal_187_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_2_lut_3_lut_adj_338 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [4]), .I3(M_MOSI4), .O(n14_adj_1478));   // zimaux_main.vhd(448[3] 704[10])
    defparam i1_2_lut_3_lut_adj_338.LUT_INIT = 16'h1010;
    SB_LUT4 mux_1899_i6_3_lut (.I0(buf_control[5]), .I1(buf_device_acadc[5]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4976));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12504_4_lut (.I0(cmd_rdadctmp_adj_1548[14]), .I1(cmd_rdadctmp_adj_1548[13]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15084));
    defparam i12504_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 n22369_bdd_4_lut (.I0(n22369), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n22372));
    defparam n22369_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_339 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [3]), .I3(M_MOSI4), .O(n14_adj_1479));   // zimaux_main.vhd(448[3] 704[10])
    defparam i1_2_lut_3_lut_adj_339.LUT_INIT = 16'h1010;
    SB_LUT4 i4246_3_lut (.I0(acadc_skipCount[13]), .I1(data_idxvec[13]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n7997));   // zimaux_main.vhd(517[5] 599[14])
    defparam i4246_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10382_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK1), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n14135));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10382_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 comm_index_0__bdd_4_lut_18431 (.I0(comm_index[0]), .I1(\comm_buf[6] [0]), 
            .I2(\comm_buf[7] [0]), .I3(comm_index[1]), .O(n22243));
    defparam comm_index_0__bdd_4_lut_18431.LUT_INIT = 16'he4aa;
    SB_LUT4 i12507_4_lut (.I0(cmd_rdadctmp_adj_1548[15]), .I1(cmd_rdadctmp_adj_1548[14]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15085));
    defparam i12507_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1884_i6_3_lut (.I0(buf_dds[13]), .I1(buf_adcdata_vdc1[21]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4937));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1884_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1910_i6_4_lut (.I0(n5009), .I1(n7997), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n5019));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1910_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13395_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1480));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13395_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12496_4_lut (.I0(cmd_rdadctmp_adj_1548[16]), .I1(cmd_rdadctmp_adj_1548[15]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15086));
    defparam i12496_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i17309_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(n12_adj_1338), 
            .I3(comm_cmd[0]), .O(n21119));   // zimaux_main.vhd(670[11:20])
    defparam i17309_3_lut_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 mux_1912_i6_4_lut (.I0(n5019), .I1(n4937), .I2(n5005), .I3(comm_cmd[0]), 
            .O(n5029));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1912_i6_4_lut.LUT_INIT = 16'hca0a;
    ADC_ADS127_U1 ADC_VAC2 (.n20060(n20060), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1548[31:19], 
            Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, 
            Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, Open_18}), .clk_32MHz(clk_32MHz), 
            .n20062(n20062), .n20326(n20326), .n20080(n20080), .n20088(n20088), 
            .M_DRDY2(M_DRDY2), .drdy_sync2(drdy_sync2_adj_1370), .drdy_prev(drdy_prev_adj_1371), 
            .n20126(n20126), .n20136(n20136), .n20138(n20138), .n20142(n20142), 
            .GND_net(M_MOSI4), .n20144(n20144), .n20146(n20146), .n20150(n20150), 
            .n20152(n20152), .adc_state({adc_state_adj_1547}), .n9719(n9719), 
            .n7(n7), .n20749(n20749), .drdy_falling(drdy_falling_adj_1372), 
            .n11999(n11999), .acadc_trig(acadc_trig), .n20306(n20306), 
            .\cmd_rdadctmp[18] (cmd_rdadctmp_adj_1548[18]), .n15087(n15087), 
            .\cmd_rdadctmp[17] (cmd_rdadctmp_adj_1548[17]), .n15086(n15086), 
            .\cmd_rdadctmp[16] (cmd_rdadctmp_adj_1548[16]), .n15085(n15085), 
            .\cmd_rdadctmp[15] (cmd_rdadctmp_adj_1548[15]), .n15084(n15084), 
            .\cmd_rdadctmp[14] (cmd_rdadctmp_adj_1548[14]), .n15083(n15083), 
            .\cmd_rdadctmp[13] (cmd_rdadctmp_adj_1548[13]), .n15082(n15082), 
            .\cmd_rdadctmp[12] (cmd_rdadctmp_adj_1548[12]), .n15081(n15081), 
            .\cmd_rdadctmp[11] (cmd_rdadctmp_adj_1548[11]), .n15(n15_adj_1541), 
            .M_CS2(M_CS2), .n20424(n20424), .\cmd_rdadctmp[10] (cmd_rdadctmp_adj_1548[10]), 
            .\cmd_rdadctmp[9] (cmd_rdadctmp_adj_1548[9]), .n14236(n14236), 
            .buf_adcdata2({buf_adcdata2}), .n14235(n14235), .n14234(n14234), 
            .n14233(n14233), .n14232(n14232), .n14231(n14231), .n14230(n14230), 
            .n14229(n14229), .n14228(n14228), .n14227(n14227), .n14226(n14226), 
            .n14225(n14225), .n14224(n14224), .\buf_adcdata_vdc2[0] (buf_adcdata_vdc2[0]), 
            .n11557(n11557), .n1(n1_adj_1523), .n19942(n19942), .n14223(n14223), 
            .n14222(n14222), .n14221(n14221), .n14220(n14220), .n14219(n14219), 
            .n14218(n14218), .n14217(n14217), .n14216(n14216), .n14215(n14215), 
            .n21073(n21073), .n14214(n14214), .M_MISO2(M_MISO2), .\buf_data2[0] (buf_data2[0]), 
            .\comm_cmd[0] (comm_cmd[0]), .n5458(n5458), .eis_adc_trig(eis_adc_trig), 
            .vdc_adc_trig(vdc_adc_trig), .n14143(n14143), .n14128(n14128), 
            .M_SCLK2(M_SCLK2), .n14127(n14127), .acadc_dtrig2(acadc_dtrig2));   // zimaux_main.vhd(869[13:23])
    SB_LUT4 add_329_10_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[8]), .I2(M_MOSI4), 
            .I3(n19469), .O(n2349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8865_3_lut (.I0(n5029), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12617));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_340 (.I0(buf_dds[14]), .I1(buf_adcdata_vdc1[22]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n1));   // zimaux_main.vhd(242[9:17])
    defparam i5_3_lut_adj_340.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_341 (.I0(comm_state[0]), .I1(n12_adj_1333), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20952));   // zimaux_main.vhd(465[4] 703[13])
    defparam i1_2_lut_adj_341.LUT_INIT = 16'heeee;
    SB_LUT4 n22243_bdd_4_lut (.I0(n22243), .I1(\comm_buf[5] [0]), .I2(\comm_buf[4] [0]), 
            .I3(comm_index[1]), .O(n22246));
    defparam n22243_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESS cs_mask_cnt_2153__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n11706), 
            .D(n15), .S(n13663));   // zimaux_main.vhd(462[20:31])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_342 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(n12_adj_1333), .I3(comm_cmd[0]), .O(n13));   // zimaux_main.vhd(670[11:20])
    defparam i1_2_lut_3_lut_4_lut_adj_342.LUT_INIT = 16'hfffe;
    SB_LUT4 i4248_3_lut (.I0(acadc_skipCount[14]), .I1(data_idxvec[14]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n7999));   // zimaux_main.vhd(517[5] 599[14])
    defparam i4248_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11705), .D(n2357), .R(n13885));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n11650), 
            .D(n2308), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_LUT4 i12_4_lut_adj_343 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20382));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_343.LUT_INIT = 16'hca0a;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n11650), 
            .D(n2290), .R(n13861));   // zimaux_main.vhd(748[3] 827[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n11285), 
            .D(n556), .R(n13802));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1894_i7_3_lut (.I0(req_data_cnt[14]), .I1(buf_data2[91]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4962));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10364_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n7983), .I2(n11358), 
            .I3(acadc_skipCount[0]), .O(n14117));   // zimaux_main.vhd(465[4] 703[13])
    defparam i10364_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 mux_1899_i7_3_lut (.I0(buf_control[6]), .I1(buf_device_acadc[6]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4975));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_344 (.I0(n7999), .I1(n1), .I2(n5005), .I3(comm_cmd[1]), 
            .O(n2));   // zimaux_main.vhd(242[9:17])
    defparam i6_4_lut_adj_344.LUT_INIT = 16'hc0ca;
    SB_LUT4 i15541_3_lut (.I0(buf_adcdata1[5]), .I1(cmd_rdadctmp[13]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14195));
    defparam i15541_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_11__i0 (.Q(\comm_buf[11] [0]), .C(clk_32MHz), .E(n11213), 
            .D(n12584), .R(n13795));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i13394_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1481));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13394_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_10__i0 (.Q(\comm_buf[10] [0]), .C(clk_32MHz), .E(n11141), 
            .D(n12580), .R(n13788));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_9__i0 (.Q(\comm_buf[9] [0]), .C(clk_32MHz), .E(n11129), 
            .D(n12576), .R(n13781));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_8__i0 (.Q(\comm_buf[8] [0]), .C(clk_32MHz), .E(n11075), 
            .D(n12572), .R(n13774));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_7__i0 (.Q(\comm_buf[7] [0]), .C(clk_32MHz), .E(n11039), 
            .D(n12568), .R(n13767));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(n11003), 
            .D(n12564), .R(n13760));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n10949), 
            .D(n12560), .R(n13753));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n10889), 
            .D(n12556), .R(n13746));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i2_3_lut_adj_345 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n9_adj_1332));   // zimaux_main.vhd(683[11:20])
    defparam i2_3_lut_adj_345.LUT_INIT = 16'hbfbf;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n10865), 
            .D(n12552), .R(n13739));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n10829), 
            .D(n12548), .R(n13732));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n10734), 
            .D(n6_adj_1457), .R(n13725));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n10718), 
            .D(n12544), .R(n13718));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 comm_state_3__I_0_454_Mux_0_i15_3_lut_4_lut (.I0(\comm_buf[1] [0]), 
            .I1(n7983), .I2(comm_state[3]), .I3(data_idxvec_15__N_740[0]), 
            .O(data_idxvec_15__N_367[0]));   // zimaux_main.vhd(465[4] 703[13])
    defparam comm_state_3__I_0_454_Mux_0_i15_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n16), 
            .D(n1_adj_1521), .R(n19764));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i12828_4_lut (.I0(n5008), .I1(n2), .I2(comm_cmd[0]), .I3(n5005), 
            .O(n5028));   // zimaux_main.vhd(242[9:17])
    defparam i12828_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n10619), 
            .D(comm_index_3__N_498[0]), .R(n13705));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFFR eis_start_373 (.Q(eis_start), .C(clk_32MHz), .D(synccnt_7__N_412), 
            .R(stsync_N_400));   // zimaux_main.vhd(362[3] 375[10])
    SB_LUT4 i8861_3_lut (.I0(n5028), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12613));   // zimaux_main.vhd(465[4] 703[13])
    defparam i8861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_325_8_lut (.I0(M_MOSI4), .I1(data_cntvec[6]), .I2(M_MOSI4), 
            .I3(n19452), .O(n2302)) /* synthesis syn_instantiated=1 */ ;
    defparam add_325_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_346 (.I0(tacadc_rst), .I1(dc_state[0]), .I2(n4_adj_1538), 
            .I3(dc_state[2]), .O(n12315));
    defparam i1_4_lut_adj_346.LUT_INIT = 16'h5040;
    SB_LUT4 i15538_3_lut (.I0(buf_adcdata1[6]), .I1(cmd_rdadctmp[14]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14196));
    defparam i15538_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_347 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20410));
    defparam i12_4_lut_adj_347.LUT_INIT = 16'hca0a;
    SB_LUT4 i13191_3_lut (.I0(buf_adcdata1[7]), .I1(cmd_rdadctmp[15]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14197));
    defparam i13191_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10365_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n7983), .I2(n11388), 
            .I3(req_data_cnt[0]), .O(n14118));   // zimaux_main.vhd(465[4] 703[13])
    defparam i10365_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 n22357_bdd_4_lut_4_lut_4_lut (.I0(eis_state[2]), .I1(acadc_dtrigH), 
            .I2(eis_state[1]), .I3(n22357), .O(eis_state_2__N_311[1]));   // zimaux_main.vhd(748[3] 827[10])
    defparam n22357_bdd_4_lut_4_lut_4_lut.LUT_INIT = 16'hfd08;
    SB_LUT4 mux_1894_i3_3_lut (.I0(req_data_cnt[10]), .I1(buf_data2[75]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4966));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_348 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20226));
    defparam i12_4_lut_adj_348.LUT_INIT = 16'hca0a;
    SB_LUT4 i10445_3_lut (.I0(buf_adcdata1[8]), .I1(cmd_rdadctmp[16]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14198));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10445_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_349 (.I0(buf_adcdata_vdc2[5]), .I1(buf_adcdata2[5]), 
            .I2(n12315), .I3(n1_adj_1523), .O(n20004));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_349.LUT_INIT = 16'hca0a;
    SB_LUT4 i10446_3_lut (.I0(buf_adcdata1[9]), .I1(cmd_rdadctmp[17]), .I2(n9723), 
            .I3(M_MOSI4), .O(n14199));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10446_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12484_4_lut (.I0(cmd_rdadctmp_adj_1548[17]), .I1(cmd_rdadctmp_adj_1548[16]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n15087));
    defparam i12484_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 eis_state_0__bdd_4_lut_4_lut (.I0(n16043), .I1(eis_state[1]), 
            .I2(n16053), .I3(eis_state[0]), .O(n22363));   // zimaux_main.vhd(748[3] 827[10])
    defparam eis_state_0__bdd_4_lut_4_lut.LUT_INIT = 16'h77c0;
    SB_LUT4 i9970_2_lut (.I0(n10718), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13718));   // zimaux_main.vhd(448[3] 704[10])
    defparam i9970_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_350 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n11899), .I3(adc_state[0]), .O(n20236));
    defparam i12_4_lut_adj_350.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1908_i7_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4962), 
            .I3(n4975), .O(n5008));
    defparam mux_1908_i7_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i2933_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), 
            .I2(n9_adj_1332), .I3(n20952), .O(n8_adj_1460));   // zimaux_main.vhd(465[4] 703[13])
    defparam i2933_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_351 (.I0(cmd_rdadctmp_adj_1548[18]), .I1(cmd_rdadctmp_adj_1548[17]), 
            .I2(n11999), .I3(adc_state_adj_1547[0]), .O(n20306));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_351.LUT_INIT = 16'hca0a;
    SB_DFF eis_start_cmd_415 (.Q(eis_start_cmd), .C(clk_32MHz), .D(n14121));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF eis_stop_414 (.Q(eis_stop), .C(clk_32MHz), .D(n14120));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF tacadc_rst_413 (.Q(tacadc_rst), .C(clk_32MHz), .D(n14119));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1908_i8_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4961), 
            .I3(n4974), .O(n5007));
    defparam mux_1908_i8_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n14118));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 i13393_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1482));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13393_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n14117));   // zimaux_main.vhd(448[3] 704[10])
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n14116));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1894_i4_3_lut (.I0(req_data_cnt[11]), .I1(buf_data2[79]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4965));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1894_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_device_acadc_i1 (.Q(M_OSR0), .C(clk_32MHz), .D(n14115));   // zimaux_main.vhd(448[3] 704[10])
    SB_LUT4 mux_1908_i5_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4964), 
            .I3(n4977), .O(n5010));
    defparam mux_1908_i5_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 mux_1908_i1_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4968), 
            .I3(n4981), .O(n5014));
    defparam mux_1908_i1_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_325_8 (.CI(n19452), .I0(data_cntvec[6]), .I1(M_MOSI4), 
            .CO(n19453));
    SB_CARRY add_329_10 (.CI(n19469), .I0(acadc_skipcnt[8]), .I1(M_MOSI4), 
            .CO(n19470));
    DDS_AD9837 CLOCK_DDS (.dds_state({dds_state}), .clk_32MHz(clk_32MHz), 
            .DDS_CS1(DDS_CS1), .GND_net(M_MOSI4), .\buf_dds[15] (buf_dds[15]), 
            .\buf_dds[13] (buf_dds[13]), .\buf_dds[10] (buf_dds[10]), .\buf_dds[9] (buf_dds[9]), 
            .\buf_dds[8] (buf_dds[8]), .\buf_dds[7] (buf_dds[7]), .\buf_dds[5] (buf_dds[5]), 
            .\buf_dds[4] (buf_dds[4]), .\buf_dds[3] (buf_dds[3]), .\buf_dds[2] (buf_dds[2]), 
            .\buf_dds[0] (buf_dds[0]), .\tmp_buf[15] (tmp_buf[15]), .trig_dds(trig_dds), 
            .bit_cnt({Open_19, Open_20, Open_21, bit_cnt_adj_1615[0]}), 
            .\buf_dds[1] (buf_dds[1]), .\tmp_buf[5] (tmp_buf[5]), .\tmp_buf_15__N_1255[6] (tmp_buf_15__N_1255[6]), 
            .\tmp_buf[10] (tmp_buf[10]), .\tmp_buf_15__N_1255[11] (tmp_buf_15__N_1255[11]), 
            .\tmp_buf[11] (tmp_buf[11]), .\tmp_buf_15__N_1255[12] (tmp_buf_15__N_1255[12]), 
            .\tmp_buf[13] (tmp_buf[13]), .\tmp_buf_15__N_1255[14] (tmp_buf_15__N_1255[14]), 
            .VCC_net(VCC_net), .n15045(n15045), .n14090(n14090), .n14136(n14136), 
            .DDS_MOSI1(DDS_MOSI1), .n14135(n14135), .DDS_SCK1(DDS_SCK1));   // zimaux_main.vhd(912[14:24])
    SB_DFFSR secclk_cnt_2150_2151__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 mux_1908_i2_3_lut_4_lut (.I0(n7_adj_1344), .I1(n10), .I2(n4967), 
            .I3(n4980), .O(n5013));
    defparam mux_1908_i2_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 mux_1899_i4_3_lut (.I0(buf_control[3]), .I1(M_FLT1), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4978));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1899_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_352 (.I0(TEST_LED), .I1(n13686), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(TEST_LED_N_973));
    defparam i1_2_lut_adj_352.LUT_INIT = 16'h6666;
    SB_LUT4 i13409_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1462));   // zimaux_main.vhd(465[4] 703[13])
    defparam i13409_2_lut_3_lut.LUT_INIT = 16'h0202;
    ADC_ADS127_U2 ADC_VAC1 (.M_DRDY1(M_DRDY1), .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2), 
            .drdy_prev(drdy_prev), .buf_adcdata1({buf_adcdata1}), .n9723(n9723), 
            .GND_net(M_MOSI4), .adc_state({adc_state}), .\cmd_rdadctmp[26] (cmd_rdadctmp[26]), 
            .n11899(n11899), .\buf_adcdata_vdc1[23] (buf_adcdata_vdc1[23]), 
            .n11557(n11557), .n1(n1_adj_1523), .n19824(n19824), .\buf_dds[11] (buf_dds[11]), 
            .\tmp_buf[10] (tmp_buf[10]), .\dds_state[2] (dds_state[2]), 
            .\dds_state[1] (dds_state[1]), .\tmp_buf_15__N_1255[11] (tmp_buf_15__N_1255[11]), 
            .\buf_adcdata_vdc1[19] (buf_adcdata_vdc1[19]), .n19948(n19948), 
            .\cmd_rdadctmp[28] (cmd_rdadctmp[28]), .\comm_cmd[2] (comm_cmd[2]), 
            .n4939(n4939), .acadc_trig(acadc_trig), .\cmd_rdadctmp[29] (cmd_rdadctmp[29]), 
            .\cmd_rdadctmp[30] (cmd_rdadctmp[30]), .n20294(n20294), .VCC_net(VCC_net), 
            .\cmd_rdadctmp[0] (cmd_rdadctmp[0]), .n15(n15_adj_1542), .M_CS1(M_CS1), 
            .\buf_dds[15] (buf_dds[15]), .\comm_buf[0][7] (\comm_buf[0] [7]), 
            .n10588(n10588), .n13498(n13498), .n19730(n19730), .\comm_buf[0][3] (\comm_buf[0] [3]), 
            .n15005(n15005), .drdy_falling(drdy_falling), .n21063(n21063), 
            .n20344(n20344), .\cmd_rdadctmp[1] (cmd_rdadctmp[1]), .n20346(n20346), 
            .\cmd_rdadctmp[2] (cmd_rdadctmp[2]), .n20348(n20348), .\cmd_rdadctmp[3] (cmd_rdadctmp[3]), 
            .n14212(n14212), .n14211(n14211), .n20352(n20352), .\cmd_rdadctmp[4] (cmd_rdadctmp[4]), 
            .n14210(n14210), .n14208(n14208), .n14207(n14207), .n20354(n20354), 
            .\cmd_rdadctmp[5] (cmd_rdadctmp[5]), .n14206(n14206), .n14205(n14205), 
            .n14204(n14204), .n14203(n14203), .n20356(n20356), .\cmd_rdadctmp[6] (cmd_rdadctmp[6]), 
            .n14202(n14202), .n14201(n14201), .n20358(n20358), .\cmd_rdadctmp[7] (cmd_rdadctmp[7]), 
            .n20362(n20362), .\cmd_rdadctmp[8] (cmd_rdadctmp[8]), .n20140(n20140), 
            .\cmd_rdadctmp[9] (cmd_rdadctmp[9]), .n20364(n20364), .\cmd_rdadctmp[10] (cmd_rdadctmp[10]), 
            .n20268(n20268), .\cmd_rdadctmp[11] (cmd_rdadctmp[11]), .n20264(n20264), 
            .\cmd_rdadctmp[12] (cmd_rdadctmp[12]), .n20376(n20376), .\cmd_rdadctmp[13] (cmd_rdadctmp[13]), 
            .n14200(n14200), .n20236(n20236), .\cmd_rdadctmp[14] (cmd_rdadctmp[14]), 
            .n14199(n14199), .n14198(n14198), .n20226(n20226), .\cmd_rdadctmp[15] (cmd_rdadctmp[15]), 
            .n14197(n14197), .n20410(n20410), .\cmd_rdadctmp[16] (cmd_rdadctmp[16]), 
            .n14196(n14196), .n14195(n14195), .n20382(n20382), .\cmd_rdadctmp[17] (cmd_rdadctmp[17]), 
            .n14194(n14194), .n20412(n20412), .\cmd_rdadctmp[18] (cmd_rdadctmp[18]), 
            .n14193(n14193), .n14192(n14192), .n14191(n14191), .n20384(n20384), 
            .\cmd_rdadctmp[19] (cmd_rdadctmp[19]), .n20388(n20388), .\cmd_rdadctmp[20] (cmd_rdadctmp[20]), 
            .n20392(n20392), .\cmd_rdadctmp[21] (cmd_rdadctmp[21]), .n20394(n20394), 
            .\cmd_rdadctmp[22] (cmd_rdadctmp[22]), .n20396(n20396), .\cmd_rdadctmp[23] (cmd_rdadctmp[23]), 
            .n20400(n20400), .\cmd_rdadctmp[24] (cmd_rdadctmp[24]), .n20402(n20402), 
            .\cmd_rdadctmp[25] (cmd_rdadctmp[25]), .n20746(n20746), .eis_adc_trig(eis_adc_trig), 
            .vdc_adc_trig(vdc_adc_trig), .n4935(n4935), .n14141(n14141), 
            .n14125(n14125), .M_SCLK1(M_SCLK1), .n14124(n14124), .acadc_dtrig1(acadc_dtrig1), 
            .n14123(n14123), .n7(n7_adj_1531));   // zimaux_main.vhd(855[13:23])
    SB_LUT4 i17859_4_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n21309));
    defparam i17859_4_lut_4_lut.LUT_INIT = 16'h0b04;
    SB_LUT4 i1_3_lut_3_lut_4_lut_4_lut_adj_353 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(n10619));
    defparam i1_3_lut_3_lut_4_lut_4_lut_adj_353.LUT_INIT = 16'hfc42;
    SB_LUT4 i12_4_lut_adj_354 (.I0(buf_adcdata_vdc2[4]), .I1(buf_adcdata2[4]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19816));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_354.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_355 (.I0(buf_adcdata_vdc2[3]), .I1(buf_adcdata2[3]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19814));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_355.LUT_INIT = 16'hca0a;
    ADC_ADS127_U0 ADC_VAC3 (.M_DRDY3(M_DRDY3), .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2_adj_1410), 
            .drdy_prev(drdy_prev_adj_1411), .n20154(n20154), .VCC_net(VCC_net), 
            .cmd_rdadctmp({cmd_rdadctmp_adj_1571}), .n20158(n20158), .n20162(n20162), 
            .n20164(n20164), .n20168(n20168), .n20170(n20170), .GND_net(M_MOSI4), 
            .n20172(n20172), .n20174(n20174), .n20176(n20176), .n20178(n20178), 
            .n20180(n20180), .n20182(n20182), .n20188(n20188), .n20134(n20134), 
            .n20190(n20190), .n20328(n20328), .n20192(n20192), .n20194(n20194), 
            .n20320(n20320), .n20316(n20316), .n20426(n20426), .adc_state({adc_state_adj_1570}), 
            .n20196(n20196), .n20350(n20350), .n20200(n20200), .drdy_falling(drdy_falling_adj_1412), 
            .n20752(n20752), .n12099(n12099), .n20202(n20202), .n20204(n20204), 
            .n20206(n20206), .n20290(n20290), .n20212(n20212), .n20292(n20292), 
            .n20216(n20216), .n9523(n9523), .acadc_trig(acadc_trig), .n7(n7_adj_1458), 
            .n20300(n20300), .n15(n15_adj_1539), .M_CS3(M_CS3), .n14259(n14259), 
            .buf_adcdata3({buf_adcdata3}), .n14258(n14258), .n14257(n14257), 
            .n14256(n14256), .n14255(n14255), .n14254(n14254), .n14253(n14253), 
            .n14252(n14252), .n14251(n14251), .n14250(n14250), .n14249(n14249), 
            .n14248(n14248), .n14247(n14247), .n14246(n14246), .n14245(n14245), 
            .n14244(n14244), .n14243(n14243), .n14242(n14242), .n14241(n14241), 
            .n14240(n14240), .n14239(n14239), .n14238(n14238), .n14237(n14237), 
            .n21059(n21059), .eis_adc_trig(eis_adc_trig), .vdc_adc_trig(vdc_adc_trig), 
            .n14145(n14145), .n14131(n14131), .M_SCLK3(M_SCLK3), .n14130(n14130), 
            .acadc_dtrig3(acadc_dtrig3), .n14129(n14129));   // zimaux_main.vhd(883[13:23])
    SB_LUT4 i12_4_lut_adj_356 (.I0(buf_adcdata_vdc2[2]), .I1(buf_adcdata2[2]), 
            .I2(n11557), .I3(n1_adj_1523), .O(n19812));   // zimaux_main.vhd(710[3] 743[10])
    defparam i12_4_lut_adj_356.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_357 (.I0(dc_state[0]), .I1(acadc_dtrigH), .I2(dc_state[1]), 
            .I3(dc_state[2]), .O(n9_adj_1513));
    defparam i1_4_lut_adj_357.LUT_INIT = 16'h0a8a;
    SB_LUT4 mux_1904_i4_4_lut (.I0(acadc_skipCount[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[1]), .O(n4991));   // zimaux_main.vhd(517[5] 599[14])
    defparam mux_1904_i4_4_lut.LUT_INIT = 16'hf0ca;
    SB_DFF SecClk_376 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_973));   // zimaux_main.vhd(381[3] 387[10])
    SB_DFFSR secclk_cnt_2150_2151__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_2150_2151__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n13686));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFR synccnt_2149__i1 (.Q(synccnt[1]), .C(clk_32MHz), .D(n44), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i2 (.Q(synccnt[2]), .C(clk_32MHz), .D(n43), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i3 (.Q(synccnt[3]), .C(clk_32MHz), .D(n42), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i4 (.Q(synccnt[4]), .C(clk_32MHz), .D(n41), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i5 (.Q(synccnt[5]), .C(clk_32MHz), .D(n40), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i6 (.Q(synccnt[6]), .C(clk_32MHz), .D(n39), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_DFFR synccnt_2149__i7 (.Q(synccnt[7]), .C(clk_32MHz), .D(n38), 
            .R(stsync_N_400));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 add_329_9_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[7]), .I2(M_MOSI4), 
            .I3(n19468), .O(n2350)) /* synthesis syn_instantiated=1 */ ;
    defparam add_329_9_lut.LUT_INIT = 16'hC33C;
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zimaux_main.vhd(203[9:18])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=832, LSE_RLINE=832 */ ;   // zimaux_main.vhd(832[13:20])
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
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_data_vld, clk_32MHz, reset_int, ICE_SPI_MISO, 
            GND_net, n5622, comm_tx_buf, comm_rx_buf, sclk_sync2, 
            sclk_sync1, VCC_net, n14139, n14137, n14122);
    output comm_data_vld;
    input clk_32MHz;
    input reset_int;
    output ICE_SPI_MISO;
    input GND_net;
    output n5622;
    input [7:0]comm_tx_buf;
    output [7:0]comm_rx_buf;
    output sclk_sync2;
    output sclk_sync1;
    input VCC_net;
    input n14139;
    input n14137;
    input n14122;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire DATA_VLD_N_1103;
    wire [3:0]n27;
    
    wire n12268;
    wire [3:0]bit_cnt;   // spi_slave.vhd(28[8:15])
    
    wire n13606, n13605, n13604, n13633, n13632, n22722;
    wire [7:0]data_tx;   // spi_slave.vhd(30[8:15])
    wire [7:0]n18;
    
    wire n13608, data_tx_7__N_1053, sclk_falling_pend_N_1115, n10511, 
        sclk_falling_pend, n21086, sclk_rising_pend, n13609, n19422, 
        data_tx_7__N_1067, data_tx_7__N_1055, n16465, n14802, n14814, 
        n14817, n14820, data_tx_7__N_1070, data_tx_7__N_1056, data_tx_7__N_1073, 
        data_tx_7__N_1057, n13629, n13628, n22725, n13602, n13601, 
        n13600, data_tx_7__N_1064, n22737, data_tx_7__N_1054, n14811, 
        n14805, n14808, n22734, data_tx_7__N_1076, data_tx_7__N_1058, 
        data_tx_7__N_1079, data_tx_7__N_1059, data_tx_7__N_1082, data_tx_7__N_1060, 
        n6114, n13613, n13612, n13617, n13616, n13621, n13620, 
        n22731, n13625, n13624, n22728, data_tx_7__N_1061;
    
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_1103), 
            .R(reset_int));   // spi_slave.vhd(99[3] 108[10])
    SB_DFFER bit_cnt_2154__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12268), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i9854_3_lut (.I0(n13606), .I1(n13605), .I2(n13604), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(48[3] 92[10])
    defparam i9854_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9881_3_lut (.I0(n13633), .I1(n13632), .I2(n22722), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9881_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i7_9855_9856_set (.Q(n13608), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_1053));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n10511), .D(sclk_falling_pend_N_1115));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n21086), 
            .D(n5622));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i9857_3_lut (.I0(n13609), .I1(n13608), .I2(n13604), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9857_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1053));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13345_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n19422), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13345_4_lut.LUT_INIT = 16'h1222;
    SB_LUT4 i13344_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n19422), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13344_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1067));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1055));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13318_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13318_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i12725_4_lut (.I0(comm_rx_buf[7]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[6]), .O(n14802));
    defparam i12725_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12727_4_lut (.I0(comm_rx_buf[3]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[2]), .O(n14814));
    defparam i12727_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12733_4_lut (.I0(comm_rx_buf[2]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[1]), .O(n14817));
    defparam i12733_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12731_4_lut (.I0(comm_rx_buf[1]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[0]), .O(n14820));
    defparam i12731_4_lut.LUT_INIT = 16'haca0;
    SB_DFFER bit_cnt_2154__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12268), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_2154__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12268), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_2154__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12268), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1070));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1056));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n16465));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n16465), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_1103));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1073));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1057));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i18296_4_lut_3_lut (.I0(n13604), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n13604));   // spi_slave.vhd(48[3] 92[10])
    defparam i18296_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i9877_3_lut (.I0(n13629), .I1(n13628), .I2(n22725), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9877_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17277_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n21086));
    defparam i17277_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 i13325_2_lut_4_lut (.I0(n13602), .I1(n13601), .I2(n13600), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(48[3] 92[10])
    defparam i13325_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1064));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18291_4_lut_3_lut (.I0(n13600), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n13600));   // spi_slave.vhd(48[3] 92[10])
    defparam i18291_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFR data_tx_i0_i6_9879_9880_reset (.Q(n13633), .C(clk_32MHz), .D(n18[6]), 
            .R(data_tx_7__N_1064));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i18223_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n5622));   // spi_slave.vhd(48[3] 92[10])
    defparam i18223_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i18326_4_lut_3_lut (.I0(n22737), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22737));   // spi_slave.vhd(48[3] 92[10])
    defparam i18326_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_1115), 
            .I3(sclk_sync2), .O(n10511));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_LUT4 i18287_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_1115));   // spi_slave.vhd(72[4] 91[11])
    defparam i18287_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1054));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14820));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14817));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14814));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i12723_4_lut (.I0(comm_rx_buf[4]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[3]), .O(n14811));
    defparam i12723_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14811));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i12729_4_lut (.I0(comm_rx_buf[6]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[5]), .O(n14805));
    defparam i12729_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12721_4_lut (.I0(comm_rx_buf[5]), .I1(n16465), .I2(n5622), 
            .I3(comm_rx_buf[4]), .O(n14808));
    defparam i12721_4_lut.LUT_INIT = 16'haca0;
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14808));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14805));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i18301_4_lut_3_lut (.I0(n22734), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22734));   // spi_slave.vhd(48[3] 92[10])
    defparam i18301_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14802));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1076));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1058));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1079));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1059));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1082));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1060));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i2451_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_1115), 
            .I3(GND_net), .O(n6114));   // spi_slave.vhd(48[3] 92[10])
    defparam i2451_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i9850_3_lut (.I0(n13602), .I1(n13601), .I2(n13600), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9850_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9861_3_lut (.I0(n13613), .I1(n13612), .I2(n22737), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9865_3_lut (.I0(n13617), .I1(n13616), .I2(n22734), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9865_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9869_3_lut (.I0(n13621), .I1(n13620), .I2(n22731), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9869_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9873_3_lut (.I0(n13625), .I1(n13624), .I2(n22728), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9873_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i18321_4_lut_3_lut (.I0(n22722), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n22722));   // spi_slave.vhd(48[3] 92[10])
    defparam i18321_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1061));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i18306_4_lut_3_lut (.I0(n22731), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22731));   // spi_slave.vhd(48[3] 92[10])
    defparam i18306_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i18311_4_lut_3_lut (.I0(n22728), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n22728));   // spi_slave.vhd(48[3] 92[10])
    defparam i18311_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n16465), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n12268));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h2f2f;
    SB_LUT4 i18316_4_lut_3_lut (.I0(n22725), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n22725));   // spi_slave.vhd(48[3] 92[10])
    defparam i18316_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n14139));   // spi_slave.vhd(48[3] 92[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n14137));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i15741_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n19422));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15741_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n14122));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i13343_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13343_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_DFFS data_tx_i0_i6_9879_9880_set (.Q(n13632), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_1054));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i5_9875_9876_reset (.Q(n13629), .C(clk_32MHz), .D(n18[5]), 
            .R(data_tx_7__N_1067));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i5_9875_9876_set (.Q(n13628), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_1055));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i4_9871_9872_reset (.Q(n13625), .C(clk_32MHz), .D(n18[4]), 
            .R(data_tx_7__N_1070));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i4_9871_9872_set (.Q(n13624), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_1056));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i3_9867_9868_reset (.Q(n13621), .C(clk_32MHz), .D(n18[3]), 
            .R(data_tx_7__N_1073));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i3_9867_9868_set (.Q(n13620), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_1057));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i2_9863_9864_reset (.Q(n13617), .C(clk_32MHz), .D(n18[2]), 
            .R(data_tx_7__N_1076));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i2_9863_9864_set (.Q(n13616), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_1058));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i1_9859_9860_reset (.Q(n13613), .C(clk_32MHz), .D(n18[1]), 
            .R(data_tx_7__N_1079));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i1_9859_9860_set (.Q(n13612), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_1059));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i7_9855_9856_reset (.Q(n13609), .C(clk_32MHz), .D(n18[7]), 
            .R(data_tx_7__N_1061));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR MISO_92_9852_9853_reset (.Q(n13606), .C(clk_32MHz), .D(n6114), 
            .R(data_tx_7__N_1061));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS MISO_92_9852_9853_set (.Q(n13605), .C(clk_32MHz), .D(n6114), 
            .S(data_tx_7__N_1053));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i0_9848_9849_reset (.Q(n13602), .C(clk_32MHz), .D(n18[0]), 
            .R(data_tx_7__N_1082));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i0_9848_9849_set (.Q(n13601), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_1060));   // spi_slave.vhd(48[3] 92[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (M_DRDY4, clk_32MHz, drdy_sync2, drdy_prev, GND_net, 
            VCC_net, adc_state, n7, n20766, n20974, drdy_falling, 
            acadc_trig, n20218, cmd_rdadctmp, n20220, n20224, n20228, 
            n20230, n20232, n20234, n20238, n20242, n20248, n20256, 
            n20258, n20260, n20210, n20262, n20214, n20266, n20270, 
            n20310, n20308, n20156, n20272, n20304, n12199, n20296, 
            n20274, n20286, n20280, n20422, n20278, n20276, n9462, 
            n20284, n20302, n15, M_CS4, n14282, buf_adcdata4, n14281, 
            n14280, n14279, n14278, n14277, n14276, n14275, n14274, 
            n14273, n14272, n14271, n14270, n14269, n14268, n14267, 
            n14266, n14265, n14264, n14263, n14262, n14261, n14260, 
            n14147, n14134, M_SCLK4, n14133, acadc_dtrig4, n14132);
    input M_DRDY4;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    input GND_net;
    input VCC_net;
    output [3:0]adc_state;
    output n7;
    output n20766;
    output n20974;
    output drdy_falling;
    input acadc_trig;
    input n20218;
    output [31:0]cmd_rdadctmp;
    input n20220;
    input n20224;
    input n20228;
    input n20230;
    input n20232;
    input n20234;
    input n20238;
    input n20242;
    input n20248;
    input n20256;
    input n20258;
    input n20260;
    input n20210;
    input n20262;
    input n20214;
    input n20266;
    input n20270;
    input n20310;
    input n20308;
    input n20156;
    input n20272;
    input n20304;
    output n12199;
    input n20296;
    input n20274;
    input n20286;
    input n20280;
    input n20422;
    input n20278;
    input n20276;
    output n9462;
    input n20284;
    input n20302;
    input n15;
    output M_CS4;
    input n14282;
    output [23:0]buf_adcdata4;
    input n14281;
    input n14280;
    input n14279;
    input n14278;
    input n14277;
    input n14276;
    input n14275;
    input n14274;
    input n14273;
    input n14272;
    input n14271;
    input n14270;
    input n14269;
    input n14268;
    input n14267;
    input n14266;
    input n14265;
    input n14264;
    input n14263;
    input n14262;
    input n14261;
    input n14260;
    input n14147;
    input n14134;
    output M_SCLK4;
    input n14133;
    output acadc_dtrig4;
    input n14132;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire drdy_sync1;
    wire [7:0]n65;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19524, n19525, n19523, n19522, n19521, n12, n13;
    wire [3:0]adc_state_3__N_1193;
    
    wire n20998, n20923, n7_adj_1320, n20653;
    wire [3:0]adc_state_3__N_1145;
    
    wire n20924, n7_adj_1321, n12137, n14050, n2, n20858, n11, 
        n20608, n13_adj_1322, n20, n19527, n19526;
    
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY4));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19524), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n19524), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19525));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19523), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19523), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19524));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19522), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n19522), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19523));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19521), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n19521), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19522));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19521));
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20766));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1193[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20974));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(n20974), .O(n20998));
    defparam i1_4_lut.LUT_INIT = 16'hff3a;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20218));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20220));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20224));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20228));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_2_lut_adj_24 (.I0(adc_state[1]), .I1(n20998), .I2(GND_net), 
            .I3(GND_net), .O(n20923));
    defparam i1_2_lut_adj_24.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20230));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20232));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20234));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20238));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1320), .I1(n20653), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1145[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20242));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20924), 
            .D(adc_state_3__N_1145[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i2_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20653));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_25 (.I0(n20653), .I1(n20923), .I2(acadc_trig), 
            .I3(adc_state[3]), .O(n20924));
    defparam i1_4_lut_adj_25.LUT_INIT = 16'hccc8;
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20248));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20256));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1321));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1320));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20258));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20260));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20210));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20262));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20214));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20266));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20270));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20310));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20308));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20156));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20272));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20304));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20766), .I2(adc_state[0]), 
            .I3(GND_net), .O(n12199));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20296));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20274));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20286));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20280));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20422));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20278));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20276));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9462));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20284));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20302));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS4), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata4[23]), .C(clk_32MHz), .D(n14282));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata4[22]), .C(clk_32MHz), .D(n14281));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata4[21]), .C(clk_32MHz), .D(n14280));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata4[20]), .C(clk_32MHz), .D(n14279));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata4[19]), .C(clk_32MHz), .D(n14278));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata4[18]), .C(clk_32MHz), .D(n14277));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata4[17]), .C(clk_32MHz), .D(n14276));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata4[16]), .C(clk_32MHz), .D(n14275));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata4[15]), .C(clk_32MHz), .D(n14274));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata4[14]), .C(clk_32MHz), .D(n14273));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata4[13]), .C(clk_32MHz), .D(n14272));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata4[12]), .C(clk_32MHz), .D(n14271));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata4[11]), .C(clk_32MHz), .D(n14270));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata4[10]), .C(clk_32MHz), .D(n14269));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata4[9]), .C(clk_32MHz), .D(n14268));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata4[8]), .C(clk_32MHz), .D(n14267));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata4[7]), .C(clk_32MHz), .D(n14266));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata4[6]), .C(clk_32MHz), .D(n14265));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata4[5]), .C(clk_32MHz), .D(n14264));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata4[4]), .C(clk_32MHz), .D(n14263));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata4[3]), .C(clk_32MHz), .D(n14262));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata4[2]), .C(clk_32MHz), .D(n14261));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata4[1]), .C(clk_32MHz), .D(n14260));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12137), .D(n65[7]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12137), .D(n65[6]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12137), .D(n65[5]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12137), .D(n65[4]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12137), .D(n65[3]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12137), .D(n65[2]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12137), .D(n65[1]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20858), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20858), 
            .D(n20608), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n20608));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_26 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1322));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_26.LUT_INIT = 16'h5d01;
    SB_LUT4 i18246_2_lut (.I0(adc_state[3]), .I1(n13_adj_1322), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18246_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i18208_2_lut (.I0(n20), .I1(n20974), .I2(GND_net), .I3(GND_net), 
            .O(n20858));
    defparam i18208_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13411_2_lut (.I0(adc_state_3__N_1193[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13411_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i10302_2_lut (.I0(n12137), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n14050));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10302_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_27 (.I0(drdy_falling), .I1(n20974), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n12137));
    defparam i1_4_lut_adj_27.LUT_INIT = 16'h0230;
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14147));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK4), .C(clk_32MHz), .D(n14134));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig4), .C(clk_32MHz), .D(n14133));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata4[0]), .C(clk_32MHz), .D(n14132));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19527), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12137), .D(n65[0]), 
            .R(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20923), 
            .D(n7_adj_1321), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19526), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n19526), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19527));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19525), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n19525), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19526));
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (n20060, VCC_net, cmd_rdadctmp, clk_32MHz, n20062, 
            n20326, n20080, n20088, M_DRDY2, drdy_sync2, drdy_prev, 
            n20126, n20136, n20138, n20142, GND_net, n20144, n20146, 
            n20150, n20152, adc_state, n9719, n7, n20749, drdy_falling, 
            n11999, acadc_trig, n20306, \cmd_rdadctmp[18] , n15087, 
            \cmd_rdadctmp[17] , n15086, \cmd_rdadctmp[16] , n15085, 
            \cmd_rdadctmp[15] , n15084, \cmd_rdadctmp[14] , n15083, 
            \cmd_rdadctmp[13] , n15082, \cmd_rdadctmp[12] , n15081, 
            \cmd_rdadctmp[11] , n15, M_CS2, n20424, \cmd_rdadctmp[10] , 
            \cmd_rdadctmp[9] , n14236, buf_adcdata2, n14235, n14234, 
            n14233, n14232, n14231, n14230, n14229, n14228, n14227, 
            n14226, n14225, n14224, \buf_adcdata_vdc2[0] , n11557, 
            n1, n19942, n14223, n14222, n14221, n14220, n14219, 
            n14218, n14217, n14216, n14215, n21073, n14214, M_MISO2, 
            \buf_data2[0] , \comm_cmd[0] , n5458, eis_adc_trig, vdc_adc_trig, 
            n14143, n14128, M_SCLK2, n14127, acadc_dtrig2);
    input n20060;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input clk_32MHz;
    input n20062;
    input n20326;
    input n20080;
    input n20088;
    input M_DRDY2;
    output drdy_sync2;
    output drdy_prev;
    input n20126;
    input n20136;
    input n20138;
    input n20142;
    input GND_net;
    input n20144;
    input n20146;
    input n20150;
    input n20152;
    output [3:0]adc_state;
    output n9719;
    output n7;
    output n20749;
    output drdy_falling;
    output n11999;
    input acadc_trig;
    input n20306;
    output \cmd_rdadctmp[18] ;
    input n15087;
    output \cmd_rdadctmp[17] ;
    input n15086;
    output \cmd_rdadctmp[16] ;
    input n15085;
    output \cmd_rdadctmp[15] ;
    input n15084;
    output \cmd_rdadctmp[14] ;
    input n15083;
    output \cmd_rdadctmp[13] ;
    input n15082;
    output \cmd_rdadctmp[12] ;
    input n15081;
    output \cmd_rdadctmp[11] ;
    input n15;
    output M_CS2;
    input n20424;
    output \cmd_rdadctmp[10] ;
    output \cmd_rdadctmp[9] ;
    input n14236;
    output [23:0]buf_adcdata2;
    input n14235;
    input n14234;
    input n14233;
    input n14232;
    input n14231;
    input n14230;
    input n14229;
    input n14228;
    input n14227;
    input n14226;
    input n14225;
    input n14224;
    input \buf_adcdata_vdc2[0] ;
    input n11557;
    input n1;
    output n19942;
    input n14223;
    input n14222;
    input n14221;
    input n14220;
    input n14219;
    input n14218;
    input n14217;
    input n14216;
    input n14215;
    output n21073;
    input n14214;
    input M_MISO2;
    input \buf_data2[0] ;
    input \comm_cmd[0] ;
    output n5458;
    input eis_adc_trig;
    input vdc_adc_trig;
    input n14143;
    input n14128;
    output M_SCLK2;
    input n14127;
    output acadc_dtrig2;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire drdy_sync1;
    wire [7:0]n65;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19493, n19494, n19492;
    wire [3:0]adc_state_3__N_1193;
    
    wire n7_c, n7_adj_1317;
    wire [3:0]adc_state_3__N_1145;
    
    wire n20928;
    wire [31:0]cmd_rdadctmp_c;   // adc_ads127.vhd(27[8:20])
    
    wire n14633, n12, n13, n20994, n20927, n20649, n15060, n14630, 
        n14609, n14612, n14615, n14618, n14621, n14624, n14627, 
        n20602, n13_adj_1319, n11, n20, n20877, n2, n11937, n13968, 
        n14126, n19498, n19497, n19496, n19495;
    
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20060));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20062));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20326));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20080));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20088));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20126));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20136));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20138));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20142));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19493), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20144));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_4 (.CI(n19493), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19494));
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20146));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19492), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n19492), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19493));
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20150));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20152));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19492));
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1317));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9719));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20928), 
            .D(adc_state_3__N_1145[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20749));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20749), .I2(adc_state[0]), 
            .I3(GND_net), .O(n11999));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i14997_4_lut (.I0(cmd_rdadctmp_c[1]), .I1(cmd_rdadctmp_c[0]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14633));
    defparam i14997_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1193[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i3_4_lut_adj_21 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(n20994), 
            .I3(adc_state[3]), .O(n20927));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut_adj_21.LUT_INIT = 16'hfffb;
    SB_LUT4 i2_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20649));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut (.I0(n20649), .I1(n20927), .I2(acadc_trig), .I3(adc_state[3]), 
            .O(n20928));
    defparam i1_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1317), .I1(n20649), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1145[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFF cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(clk_32MHz), .D(n20306));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(clk_32MHz), .D(n15087));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(clk_32MHz), .D(n15086));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(clk_32MHz), .D(n15085));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(clk_32MHz), .D(n15084));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(clk_32MHz), .D(n15083));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(clk_32MHz), .D(n15082));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(clk_32MHz), .D(n15081));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp_c[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n15060));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS2), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i15026_4_lut (.I0(cmd_rdadctmp_c[2]), .I1(cmd_rdadctmp_c[1]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14630));
    defparam i15026_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(clk_32MHz), .D(n20424));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(clk_32MHz), .D(n14609));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp_c[8]), .C(clk_32MHz), .D(n14612));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp_c[7]), .C(clk_32MHz), .D(n14615));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp_c[6]), .C(clk_32MHz), .D(n14618));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp_c[5]), .C(clk_32MHz), .D(n14621));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp_c[4]), .C(clk_32MHz), .D(n14624));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp_c[3]), .C(clk_32MHz), .D(n14627));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp_c[2]), .C(clk_32MHz), .D(n14630));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i15006_4_lut (.I0(cmd_rdadctmp_c[3]), .I1(cmd_rdadctmp_c[2]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14627));
    defparam i15006_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15003_4_lut (.I0(cmd_rdadctmp_c[4]), .I1(cmd_rdadctmp_c[3]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14624));
    defparam i15003_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15009_4_lut (.I0(cmd_rdadctmp_c[5]), .I1(cmd_rdadctmp_c[4]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14621));
    defparam i15009_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15012_4_lut (.I0(cmd_rdadctmp_c[6]), .I1(cmd_rdadctmp_c[5]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14618));
    defparam i15012_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14994_4_lut (.I0(cmd_rdadctmp_c[7]), .I1(cmd_rdadctmp_c[6]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14615));
    defparam i14994_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15000_4_lut (.I0(cmd_rdadctmp_c[8]), .I1(cmd_rdadctmp_c[7]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14612));
    defparam i15000_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15023_4_lut (.I0(\cmd_rdadctmp[9] ), .I1(cmd_rdadctmp_c[8]), 
            .I2(n11999), .I3(adc_state[0]), .O(n14609));
    defparam i15023_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp_c[1]), .C(clk_32MHz), .D(n14633));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata2[23]), .C(clk_32MHz), .D(n14236));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata2[22]), .C(clk_32MHz), .D(n14235));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata2[21]), .C(clk_32MHz), .D(n14234));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata2[20]), .C(clk_32MHz), .D(n14233));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata2[19]), .C(clk_32MHz), .D(n14232));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata2[18]), .C(clk_32MHz), .D(n14231));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata2[17]), .C(clk_32MHz), .D(n14230));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata2[16]), .C(clk_32MHz), .D(n14229));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata2[15]), .C(clk_32MHz), .D(n14228));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata2[14]), .C(clk_32MHz), .D(n14227));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata2[13]), .C(clk_32MHz), .D(n14226));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata2[12]), .C(clk_32MHz), .D(n14225));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata2[11]), .C(clk_32MHz), .D(n14224));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_4_lut (.I0(\buf_adcdata_vdc2[0] ), .I1(buf_adcdata2[0]), 
            .I2(n11557), .I3(n1), .O(n19942));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata2[10]), .C(clk_32MHz), .D(n14223));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n20602));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata2[9]), .C(clk_32MHz), .D(n14222));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata2[8]), .C(clk_32MHz), .D(n14221));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_4_lut_adj_22 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1319));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_22.LUT_INIT = 16'h5d01;
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata2[7]), .C(clk_32MHz), .D(n14220));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata2[6]), .C(clk_32MHz), .D(n14219));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18242_2_lut (.I0(adc_state[3]), .I1(n13_adj_1319), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18242_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata2[5]), .C(clk_32MHz), .D(n14218));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata2[4]), .C(clk_32MHz), .D(n14217));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata2[3]), .C(clk_32MHz), .D(n14216));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata2[2]), .C(clk_32MHz), .D(n14215));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18231_2_lut (.I0(n20), .I1(n21073), .I2(GND_net), .I3(GND_net), 
            .O(n20877));
    defparam i18231_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13379_2_lut (.I0(adc_state_3__N_1193[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13379_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata2[1]), .C(clk_32MHz), .D(n14214));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i17265_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21073));
    defparam i17265_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10220_2_lut (.I0(n11937), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13968));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10220_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_23 (.I0(drdy_falling), .I1(n21073), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n11937));
    defparam i1_4_lut_adj_23.LUT_INIT = 16'h0230;
    SB_LUT4 i15020_4_lut (.I0(cmd_rdadctmp_c[0]), .I1(M_MISO2), .I2(n11999), 
            .I3(adc_state[0]), .O(n15060));
    defparam i15020_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n11937), .D(n65[7]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n11937), .D(n65[6]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n11937), .D(n65[5]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n11937), .D(n65[4]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11937), .D(n65[3]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11937), .D(n65[2]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11937), .D(n65[1]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20877), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20877), 
            .D(n20602), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i15028_3_lut (.I0(\buf_data2[0] ), .I1(\buf_adcdata_vdc2[0] ), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n5458));   // zimaux_main.vhd(242[9:17])
    defparam i15028_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15027_3_lut (.I0(buf_adcdata2[0]), .I1(cmd_rdadctmp_c[8]), 
            .I2(n9719), .I3(GND_net), .O(n14126));
    defparam i15027_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(vdc_adc_trig), 
            .I3(adc_state[2]), .O(n20994));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19498), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19497), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n19497), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19498));
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14143));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19496), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF SCLK_43 (.Q(M_SCLK2), .C(clk_32MHz), .D(n14128));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_7 (.CI(n19496), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19497));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19495), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF DTRIG_47 (.Q(acadc_dtrig2), .C(clk_32MHz), .D(n14127));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata2[0]), .C(clk_32MHz), .D(n14126));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11937), .D(n65[0]), 
            .R(n13968));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20927), 
            .D(n7_c), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_6 (.CI(n19495), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19496));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19494), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19494), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19495));
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, clk_32MHz, DDS_CS1, GND_net, \buf_dds[15] , 
            \buf_dds[13] , \buf_dds[10] , \buf_dds[9] , \buf_dds[8] , 
            \buf_dds[7] , \buf_dds[5] , \buf_dds[4] , \buf_dds[3] , 
            \buf_dds[2] , \buf_dds[0] , \tmp_buf[15] , trig_dds, bit_cnt, 
            \buf_dds[1] , \tmp_buf[5] , \tmp_buf_15__N_1255[6] , \tmp_buf[10] , 
            \tmp_buf_15__N_1255[11] , \tmp_buf[11] , \tmp_buf_15__N_1255[12] , 
            \tmp_buf[13] , \tmp_buf_15__N_1255[14] , VCC_net, n15045, 
            n14090, n14136, DDS_MOSI1, n14135, DDS_SCK1);
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input GND_net;
    input \buf_dds[15] ;
    input \buf_dds[13] ;
    input \buf_dds[10] ;
    input \buf_dds[9] ;
    input \buf_dds[8] ;
    input \buf_dds[7] ;
    input \buf_dds[5] ;
    input \buf_dds[4] ;
    input \buf_dds[3] ;
    input \buf_dds[2] ;
    input \buf_dds[0] ;
    output \tmp_buf[15] ;
    input trig_dds;
    output [3:0]bit_cnt;
    input \buf_dds[1] ;
    output \tmp_buf[5] ;
    input \tmp_buf_15__N_1255[6] ;
    output \tmp_buf[10] ;
    input \tmp_buf_15__N_1255[11] ;
    output \tmp_buf[11] ;
    input \tmp_buf_15__N_1255[12] ;
    output \tmp_buf[13] ;
    input \tmp_buf_15__N_1255[14] ;
    input VCC_net;
    input n15045;
    output n14090;
    input n14136;
    output DDS_MOSI1;
    input n14135;
    output DDS_SCK1;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    wire [2:0]dds_state_2__N_1252;
    
    wire n9, CS_N_1305, n9_adj_1316;
    wire [15:0]tmp_buf_15__N_1255;
    
    wire n12264;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n3;
    wire [3:0]bit_cnt_c;   // dds_ad9837.vhd(25[9:16])
    
    wire n10, n21619;
    wire [3:0]bit_cnt_3__N_1300;
    
    wire n9377;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(dds_state_2__N_1252[0]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1316), .D(CS_N_1305));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[0]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(\buf_dds[15] ), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[15]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(\buf_dds[13] ), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[13]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(\buf_dds[10] ), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[10]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(\buf_dds[9] ), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[9]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(\buf_dds[8] ), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[8]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(\buf_dds[7] ), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[7]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(\buf_dds[5] ), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[5]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(\buf_dds[4] ), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[4]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(\buf_dds[3] ), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[3]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(\buf_dds[2] ), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[2]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(\buf_dds[0] ), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[0]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1316));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_1305));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i18238_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds), 
            .I3(dds_state[1]), .O(n9));
    defparam i18238_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt_c[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 i18086_2_lut (.I0(bit_cnt_c[2]), .I1(bit_cnt_c[1]), .I2(GND_net), 
            .I3(GND_net), .O(n21619));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i18086_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9840_4_lut (.I0(dds_state[0]), .I1(n21619), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_1252[0]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i9840_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(\buf_dds[1] ), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1255[1]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[1]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[2]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[3]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[4]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i5 (.Q(\tmp_buf[5] ), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[5]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n12264), .D(\tmp_buf_15__N_1255[6] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[7]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[8]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n12264), .D(tmp_buf_15__N_1255[9]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i10 (.Q(\tmp_buf[10] ), .C(clk_32MHz), .E(n12264), 
            .D(tmp_buf_15__N_1255[10]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i11 (.Q(\tmp_buf[11] ), .C(clk_32MHz), .E(n12264), 
            .D(\tmp_buf_15__N_1255[11] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n12264), .D(\tmp_buf_15__N_1255[12] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i13 (.Q(\tmp_buf[13] ), .C(clk_32MHz), .E(n12264), 
            .D(tmp_buf_15__N_1255[13]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n12264), .D(\tmp_buf_15__N_1255[14] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n12264), 
            .D(tmp_buf_15__N_1255[15]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i18175_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds), .O(n12264));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i18175_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n15045));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i10338_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n14090));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10338_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt_c[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1300[3]), .R(n14090));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt_c[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1300[2]), .R(n14090));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt_c[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1300[1]), .R(n14090));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n9377), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i2273_2_lut_3_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_1300[2]));   // dds_ad9837.vhd(61[19:26])
    defparam i2273_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i2280_3_lut_4_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(bit_cnt_c[2]), 
            .I3(bit_cnt_c[3]), .O(bit_cnt_3__N_1300[3]));   // dds_ad9837.vhd(61[19:26])
    defparam i2280_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n14136));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n14135));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i9803_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n9377));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i9803_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2266_2_lut (.I0(bit_cnt_c[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_1300[1]));   // dds_ad9837.vhd(61[19:26])
    defparam i2266_2_lut.LUT_INIT = 16'h6666;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U2
//

module ADC_ADS127_U2 (M_DRDY1, clk_32MHz, drdy_sync2, drdy_prev, buf_adcdata1, 
            n9723, GND_net, adc_state, \cmd_rdadctmp[26] , n11899, 
            \buf_adcdata_vdc1[23] , n11557, n1, n19824, \buf_dds[11] , 
            \tmp_buf[10] , \dds_state[2] , \dds_state[1] , \tmp_buf_15__N_1255[11] , 
            \buf_adcdata_vdc1[19] , n19948, \cmd_rdadctmp[28] , \comm_cmd[2] , 
            n4939, acadc_trig, \cmd_rdadctmp[29] , \cmd_rdadctmp[30] , 
            n20294, VCC_net, \cmd_rdadctmp[0] , n15, M_CS1, \buf_dds[15] , 
            \comm_buf[0][7] , n10588, n13498, n19730, \comm_buf[0][3] , 
            n15005, drdy_falling, n21063, n20344, \cmd_rdadctmp[1] , 
            n20346, \cmd_rdadctmp[2] , n20348, \cmd_rdadctmp[3] , n14212, 
            n14211, n20352, \cmd_rdadctmp[4] , n14210, n14208, n14207, 
            n20354, \cmd_rdadctmp[5] , n14206, n14205, n14204, n14203, 
            n20356, \cmd_rdadctmp[6] , n14202, n14201, n20358, \cmd_rdadctmp[7] , 
            n20362, \cmd_rdadctmp[8] , n20140, \cmd_rdadctmp[9] , n20364, 
            \cmd_rdadctmp[10] , n20268, \cmd_rdadctmp[11] , n20264, 
            \cmd_rdadctmp[12] , n20376, \cmd_rdadctmp[13] , n14200, 
            n20236, \cmd_rdadctmp[14] , n14199, n14198, n20226, \cmd_rdadctmp[15] , 
            n14197, n20410, \cmd_rdadctmp[16] , n14196, n14195, n20382, 
            \cmd_rdadctmp[17] , n14194, n20412, \cmd_rdadctmp[18] , 
            n14193, n14192, n14191, n20384, \cmd_rdadctmp[19] , n20388, 
            \cmd_rdadctmp[20] , n20392, \cmd_rdadctmp[21] , n20394, 
            \cmd_rdadctmp[22] , n20396, \cmd_rdadctmp[23] , n20400, 
            \cmd_rdadctmp[24] , n20402, \cmd_rdadctmp[25] , n20746, 
            eis_adc_trig, vdc_adc_trig, n4935, n14141, n14125, M_SCLK1, 
            n14124, acadc_dtrig1, n14123, n7);
    input M_DRDY1;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    output [23:0]buf_adcdata1;
    output n9723;
    input GND_net;
    output [3:0]adc_state;
    output \cmd_rdadctmp[26] ;
    output n11899;
    input \buf_adcdata_vdc1[23] ;
    input n11557;
    input n1;
    output n19824;
    input \buf_dds[11] ;
    input \tmp_buf[10] ;
    input \dds_state[2] ;
    input \dds_state[1] ;
    output \tmp_buf_15__N_1255[11] ;
    input \buf_adcdata_vdc1[19] ;
    output n19948;
    output \cmd_rdadctmp[28] ;
    input \comm_cmd[2] ;
    output n4939;
    input acadc_trig;
    output \cmd_rdadctmp[29] ;
    output \cmd_rdadctmp[30] ;
    input n20294;
    input VCC_net;
    output \cmd_rdadctmp[0] ;
    input n15;
    output M_CS1;
    input \buf_dds[15] ;
    input \comm_buf[0][7] ;
    input n10588;
    input n13498;
    output n19730;
    input \comm_buf[0][3] ;
    output n15005;
    output drdy_falling;
    output n21063;
    input n20344;
    output \cmd_rdadctmp[1] ;
    input n20346;
    output \cmd_rdadctmp[2] ;
    input n20348;
    output \cmd_rdadctmp[3] ;
    input n14212;
    input n14211;
    input n20352;
    output \cmd_rdadctmp[4] ;
    input n14210;
    input n14208;
    input n14207;
    input n20354;
    output \cmd_rdadctmp[5] ;
    input n14206;
    input n14205;
    input n14204;
    input n14203;
    input n20356;
    output \cmd_rdadctmp[6] ;
    input n14202;
    input n14201;
    input n20358;
    output \cmd_rdadctmp[7] ;
    input n20362;
    output \cmd_rdadctmp[8] ;
    input n20140;
    output \cmd_rdadctmp[9] ;
    input n20364;
    output \cmd_rdadctmp[10] ;
    input n20268;
    output \cmd_rdadctmp[11] ;
    input n20264;
    output \cmd_rdadctmp[12] ;
    input n20376;
    output \cmd_rdadctmp[13] ;
    input n14200;
    input n20236;
    output \cmd_rdadctmp[14] ;
    input n14199;
    input n14198;
    input n20226;
    output \cmd_rdadctmp[15] ;
    input n14197;
    input n20410;
    output \cmd_rdadctmp[16] ;
    input n14196;
    input n14195;
    input n20382;
    output \cmd_rdadctmp[17] ;
    input n14194;
    input n20412;
    output \cmd_rdadctmp[18] ;
    input n14193;
    input n14192;
    input n14191;
    input n20384;
    output \cmd_rdadctmp[19] ;
    input n20388;
    output \cmd_rdadctmp[20] ;
    input n20392;
    output \cmd_rdadctmp[21] ;
    input n20394;
    output \cmd_rdadctmp[22] ;
    input n20396;
    output \cmd_rdadctmp[23] ;
    input n20400;
    output \cmd_rdadctmp[24] ;
    input n20402;
    output \cmd_rdadctmp[25] ;
    output n20746;
    input eis_adc_trig;
    input vdc_adc_trig;
    output n4935;
    input n14141;
    input n14125;
    output M_SCLK1;
    input n14124;
    output acadc_dtrig1;
    input n14123;
    output n7;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire drdy_sync1;
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire n14209, n14213;
    wire [3:0]adc_state_3__N_1193;
    
    wire n7_c, n14722, n7_adj_1313, n14747, n20647, n20929, n20930;
    wire [3:0]adc_state_3__N_1145;
    
    wire n14799, n14842, n14888;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n12, n13, n20992, n20598, n13_adj_1314, n11, n20, n20898, 
        n2;
    wire [7:0]n65;
    
    wire n19483, n19482, n11825, n13927, n19481, n19480, n19479, 
        n19478, n19477, n20298;
    
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 i14918_3_lut (.I0(buf_adcdata1[19]), .I1(cmd_rdadctmp[27]), 
            .I2(n9723), .I3(GND_net), .O(n14209));
    defparam i14918_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9723));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i12452_3_lut (.I0(buf_adcdata1[23]), .I1(cmd_rdadctmp[31]), 
            .I2(n9723), .I3(GND_net), .O(n14213));
    defparam i12452_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 i14902_4_lut (.I0(cmd_rdadctmp[27]), .I1(\cmd_rdadctmp[26] ), 
            .I2(n11899), .I3(adc_state[0]), .O(n14722));
    defparam i14902_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut (.I0(\buf_adcdata_vdc1[23] ), .I1(buf_adcdata1[23]), 
            .I2(n11557), .I3(n1), .O(n19824));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1313));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i14909_4_lut (.I0(\buf_dds[11] ), .I1(\tmp_buf[10] ), .I2(\dds_state[2] ), 
            .I3(\dds_state[1] ), .O(\tmp_buf_15__N_1255[11] ));   // dds_ad9837.vhd(23[9:18])
    defparam i14909_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_16 (.I0(\buf_adcdata_vdc1[19] ), .I1(buf_adcdata1[19]), 
            .I2(n11557), .I3(n1), .O(n19948));
    defparam i12_4_lut_adj_16.LUT_INIT = 16'hca0a;
    SB_LUT4 i14911_4_lut (.I0(\cmd_rdadctmp[28] ), .I1(cmd_rdadctmp[27]), 
            .I2(n11899), .I3(adc_state[0]), .O(n14747));
    defparam i14911_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14917_3_lut (.I0(\buf_dds[11] ), .I1(\buf_adcdata_vdc1[19] ), 
            .I2(\comm_cmd[2] ), .I3(GND_net), .O(n4939));   // zimaux_main.vhd(242[9:17])
    defparam i14917_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(n20647), .I1(n20929), .I2(acadc_trig), .I3(adc_state[3]), 
            .O(n20930));
    defparam i1_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1313), .I1(n20647), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1145[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20930), 
            .D(adc_state_3__N_1145[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12432_4_lut (.I0(\cmd_rdadctmp[29] ), .I1(\cmd_rdadctmp[28] ), 
            .I2(n11899), .I3(adc_state[0]), .O(n14799));
    defparam i12432_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12451_4_lut (.I0(\cmd_rdadctmp[30] ), .I1(\cmd_rdadctmp[29] ), 
            .I2(n11899), .I3(adc_state[0]), .O(n14842));
    defparam i12451_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12429_4_lut (.I0(cmd_rdadctmp[31]), .I1(\cmd_rdadctmp[30] ), 
            .I2(n11899), .I3(adc_state[0]), .O(n14888));
    defparam i12429_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i0 (.Q(\cmd_rdadctmp[0] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20294));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1193[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_DFFE CS_45 (.Q(M_CS1), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i3_4_lut_adj_17 (.I0(adc_state[3]), .I1(adc_state[0]), .I2(n20992), 
            .I3(adc_state[1]), .O(n20929));
    defparam i3_4_lut_adj_17.LUT_INIT = 16'hfeff;
    SB_LUT4 i2_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20647));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n14888));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i11_4_lut (.I0(\buf_dds[15] ), .I1(\comm_buf[0][7] ), .I2(n10588), 
            .I3(n13498), .O(n19730));
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i30 (.Q(\cmd_rdadctmp[30] ), .C(clk_32MHz), .D(n14842));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i29 (.Q(\cmd_rdadctmp[29] ), .C(clk_32MHz), .D(n14799));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i14914_4_lut (.I0(\buf_dds[11] ), .I1(\comm_buf[0][3] ), .I2(n10588), 
            .I3(n13498), .O(n15005));
    defparam i14914_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n20598));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_18 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1314));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_18.LUT_INIT = 16'h5d01;
    SB_LUT4 i18240_2_lut (.I0(adc_state[3]), .I1(n13_adj_1314), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18240_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i18256_2_lut (.I0(n20), .I1(n21063), .I2(GND_net), .I3(GND_net), 
            .O(n20898));
    defparam i18256_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13372_2_lut (.I0(adc_state_3__N_1193[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13372_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19483), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19482), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i17255_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21063));
    defparam i17255_2_lut.LUT_INIT = 16'heeee;
    SB_DFF cmd_rdadctmp_i28 (.Q(\cmd_rdadctmp[28] ), .C(clk_32MHz), .D(n14747));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i10179_2_lut (.I0(n11825), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13927));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10179_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_19 (.I0(drdy_falling), .I1(n21063), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n11825));
    defparam i1_4_lut_adj_19.LUT_INIT = 16'h0230;
    SB_DFFE cmd_rdadctmp_i1 (.Q(\cmd_rdadctmp[1] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20344));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(\cmd_rdadctmp[2] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20346));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n14722));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(\cmd_rdadctmp[3] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20348));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata1[23]), .C(clk_32MHz), .D(n14213));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata1[22]), .C(clk_32MHz), .D(n14212));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata1[21]), .C(clk_32MHz), .D(n14211));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(\cmd_rdadctmp[4] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20352));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_8 (.CI(n19482), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19483));
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata1[20]), .C(clk_32MHz), .D(n14210));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata1[19]), .C(clk_32MHz), .D(n14209));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19481), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata1[18]), .C(clk_32MHz), .D(n14208));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata1[17]), .C(clk_32MHz), .D(n14207));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(\cmd_rdadctmp[5] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20354));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_7 (.CI(n19481), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19482));
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata1[16]), .C(clk_32MHz), .D(n14206));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata1[15]), .C(clk_32MHz), .D(n14205));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19480), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata1[14]), .C(clk_32MHz), .D(n14204));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata1[13]), .C(clk_32MHz), .D(n14203));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(\cmd_rdadctmp[6] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20356));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_6 (.CI(n19480), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19481));
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata1[12]), .C(clk_32MHz), .D(n14202));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata1[11]), .C(clk_32MHz), .D(n14201));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(\cmd_rdadctmp[7] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20358));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(\cmd_rdadctmp[8] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20362));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19479), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19479), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19480));
    SB_DFFE cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20140));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19478), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20364));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20268));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_4 (.CI(n19478), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19479));
    SB_DFFE cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20264));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20376));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata1[10]), .C(clk_32MHz), .D(n14200));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20236));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19477), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata1[9]), .C(clk_32MHz), .D(n14199));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata1[8]), .C(clk_32MHz), .D(n14198));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_3 (.CI(n19477), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19478));
    SB_DFFE cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20226));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata1[7]), .C(clk_32MHz), .D(n14197));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20410));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata1[6]), .C(clk_32MHz), .D(n14196));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata1[5]), .C(clk_32MHz), .D(n14195));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20382));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata1[4]), .C(clk_32MHz), .D(n14194));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20412));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata1[3]), .C(clk_32MHz), .D(n14193));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata1[2]), .C(clk_32MHz), .D(n14192));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata1[1]), .C(clk_32MHz), .D(n14191));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(\cmd_rdadctmp[19] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20384));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19477));
    SB_DFF cmd_rdadctmp_i26 (.Q(\cmd_rdadctmp[26] ), .C(clk_32MHz), .D(n20298));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(\cmd_rdadctmp[20] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20388));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(\cmd_rdadctmp[21] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20392));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(\cmd_rdadctmp[22] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20394));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(\cmd_rdadctmp[23] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20396));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(\cmd_rdadctmp[24] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20400));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(\cmd_rdadctmp[25] ), .C(clk_32MHz), .E(VCC_net), 
            .D(n20402));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n11825), .D(n65[7]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20746), .I2(adc_state[0]), 
            .I3(GND_net), .O(n11899));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n11825), .D(n65[6]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n11825), .D(n65[5]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n11825), .D(n65[4]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11825), .D(n65[3]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11825), .D(n65[2]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11825), .D(n65[1]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20898), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20898), 
            .D(n20598), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(eis_adc_trig), .I1(vdc_adc_trig), .I2(drdy_falling), 
            .I3(adc_state[2]), .O(n20992));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h11f0;
    SB_LUT4 i12456_3_lut (.I0(\buf_dds[15] ), .I1(\buf_adcdata_vdc1[23] ), 
            .I2(\comm_cmd[2] ), .I3(GND_net), .O(n4935));   // zimaux_main.vhd(242[9:17])
    defparam i12456_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_20 (.I0(\cmd_rdadctmp[26] ), .I1(\cmd_rdadctmp[25] ), 
            .I2(n11899), .I3(adc_state[0]), .O(n20298));
    defparam i12_4_lut_adj_20.LUT_INIT = 16'hca0a;
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14141));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK1), .C(clk_32MHz), .D(n14125));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig1), .C(clk_32MHz), .D(n14124));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata1[0]), .C(clk_32MHz), .D(n14123));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11825), .D(n65[0]), 
            .R(n13927));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20929), 
            .D(n7_c), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20746));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U0
//

module ADC_ADS127_U0 (M_DRDY3, clk_32MHz, drdy_sync2, drdy_prev, n20154, 
            VCC_net, cmd_rdadctmp, n20158, n20162, n20164, n20168, 
            n20170, GND_net, n20172, n20174, n20176, n20178, n20180, 
            n20182, n20188, n20134, n20190, n20328, n20192, n20194, 
            n20320, n20316, n20426, adc_state, n20196, n20350, n20200, 
            drdy_falling, n20752, n12099, n20202, n20204, n20206, 
            n20290, n20212, n20292, n20216, n9523, acadc_trig, n7, 
            n20300, n15, M_CS3, n14259, buf_adcdata3, n14258, n14257, 
            n14256, n14255, n14254, n14253, n14252, n14251, n14250, 
            n14249, n14248, n14247, n14246, n14245, n14244, n14243, 
            n14242, n14241, n14240, n14239, n14238, n14237, n21059, 
            eis_adc_trig, vdc_adc_trig, n14145, n14131, M_SCLK3, n14130, 
            acadc_dtrig3, n14129);
    input M_DRDY3;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    input n20154;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n20158;
    input n20162;
    input n20164;
    input n20168;
    input n20170;
    input GND_net;
    input n20172;
    input n20174;
    input n20176;
    input n20178;
    input n20180;
    input n20182;
    input n20188;
    input n20134;
    input n20190;
    input n20328;
    input n20192;
    input n20194;
    input n20320;
    input n20316;
    input n20426;
    output [3:0]adc_state;
    input n20196;
    input n20350;
    input n20200;
    output drdy_falling;
    output n20752;
    output n12099;
    input n20202;
    input n20204;
    input n20206;
    input n20290;
    input n20212;
    input n20292;
    input n20216;
    output n9523;
    input acadc_trig;
    output n7;
    input n20300;
    input n15;
    output M_CS3;
    input n14259;
    output [23:0]buf_adcdata3;
    input n14258;
    input n14257;
    input n14256;
    input n14255;
    input n14254;
    input n14253;
    input n14252;
    input n14251;
    input n14250;
    input n14249;
    input n14248;
    input n14247;
    input n14246;
    input n14245;
    input n14244;
    input n14243;
    input n14242;
    input n14241;
    input n14240;
    input n14239;
    input n14238;
    input n14237;
    output n21059;
    input eis_adc_trig;
    input vdc_adc_trig;
    input n14145;
    input n14131;
    output M_SCLK3;
    input n14130;
    output acadc_dtrig3;
    input n14129;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(204[9:18])
    
    wire drdy_sync1;
    wire [7:0]n65;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n19520, n19519;
    wire [3:0]adc_state_3__N_1193;
    
    wire n7_c, n7_adj_1310, n19518, n19517;
    wire [3:0]adc_state_3__N_1145;
    
    wire n20926, n12, n13, n20996, n20925, n20651, n19516, n19515, 
        n19514, n20604, n13_adj_1312, n11, n20, n20905, n2, n12037, 
        n14009;
    
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY3));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20154));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20158));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20162));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20164));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20168));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20170));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n19520), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20172));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20174));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20176));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20178));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20180));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20182));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20188));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20134));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n19519), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20190));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20328));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20192));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_8 (.CI(n19519), .I0(bit_cnt[6]), .I1(GND_net), .CO(n19520));
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20194));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20320));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20316));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20426));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20196));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20350));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1193[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1310));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n19518), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20200));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20752), .I2(adc_state[0]), 
            .I3(GND_net), .O(n12099));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20202));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20204));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20206));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20290));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_7 (.CI(n19518), .I0(bit_cnt[5]), .I1(GND_net), .CO(n19519));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n19517), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20212));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20292));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20216));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20926), 
            .D(adc_state_3__N_1145[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9523));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1193[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i3_4_lut_adj_13 (.I0(adc_state[0]), .I1(adc_state[1]), .I2(n20996), 
            .I3(adc_state[3]), .O(n20925));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut_adj_13.LUT_INIT = 16'hfffb;
    SB_LUT4 i2_3_lut (.I0(adc_state[0]), .I1(adc_state[1]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20651));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut (.I0(n20651), .I1(n20925), .I2(acadc_trig), .I3(adc_state[3]), 
            .O(n20926));
    defparam i1_4_lut.LUT_INIT = 16'hccc8;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1310), .I1(n20651), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1145[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_CARRY add_13_6 (.CI(n19517), .I0(bit_cnt[4]), .I1(GND_net), .CO(n19518));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n19516), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n19516), .I0(bit_cnt[3]), .I1(GND_net), .CO(n19517));
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n20300));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS3), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20752));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata3[23]), .C(clk_32MHz), .D(n14259));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata3[22]), .C(clk_32MHz), .D(n14258));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata3[21]), .C(clk_32MHz), .D(n14257));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata3[20]), .C(clk_32MHz), .D(n14256));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata3[19]), .C(clk_32MHz), .D(n14255));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata3[18]), .C(clk_32MHz), .D(n14254));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata3[17]), .C(clk_32MHz), .D(n14253));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata3[16]), .C(clk_32MHz), .D(n14252));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n19515), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata3[15]), .C(clk_32MHz), .D(n14251));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata3[14]), .C(clk_32MHz), .D(n14250));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata3[13]), .C(clk_32MHz), .D(n14249));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata3[12]), .C(clk_32MHz), .D(n14248));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata3[11]), .C(clk_32MHz), .D(n14247));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata3[10]), .C(clk_32MHz), .D(n14246));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata3[9]), .C(clk_32MHz), .D(n14245));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata3[8]), .C(clk_32MHz), .D(n14244));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata3[7]), .C(clk_32MHz), .D(n14243));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata3[6]), .C(clk_32MHz), .D(n14242));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata3[5]), .C(clk_32MHz), .D(n14241));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata3[4]), .C(clk_32MHz), .D(n14240));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata3[3]), .C(clk_32MHz), .D(n14239));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_4 (.CI(n19515), .I0(bit_cnt[2]), .I1(GND_net), .CO(n19516));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n19514), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n19514), .I0(bit_cnt[1]), .I1(GND_net), .CO(n19515));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n19514));
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata3[2]), .C(clk_32MHz), .D(n14238));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata3[1]), .C(clk_32MHz), .D(n14237));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n20604));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_14 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1312));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_14.LUT_INIT = 16'h5d01;
    SB_LUT4 i18244_2_lut (.I0(adc_state[3]), .I1(n13_adj_1312), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18244_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i18248_2_lut (.I0(n20), .I1(n21059), .I2(GND_net), .I3(GND_net), 
            .O(n20905));
    defparam i18248_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13385_2_lut (.I0(adc_state_3__N_1193[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13385_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i17251_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n21059));
    defparam i17251_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10261_2_lut (.I0(n12037), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n14009));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10261_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_15 (.I0(drdy_falling), .I1(n21059), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n12037));
    defparam i1_4_lut_adj_15.LUT_INIT = 16'h0230;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12037), .D(n65[7]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12037), .D(n65[6]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12037), .D(n65[5]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12037), .D(n65[4]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12037), .D(n65[3]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12037), .D(n65[2]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12037), .D(n65[1]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20905), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20905), 
            .D(n20604), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(drdy_falling), .I1(eis_adc_trig), .I2(vdc_adc_trig), 
            .I3(adc_state[2]), .O(n20996));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h03aa;
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14145));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK3), .C(clk_32MHz), .D(n14131));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig3), .C(clk_32MHz), .D(n14130));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata3[0]), .C(clk_32MHz), .D(n14129));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12037), .D(n65[0]), 
            .R(n14009));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20925), 
            .D(n7_c), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    
endmodule
