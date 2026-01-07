// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Nov 24 16:05:50 2025
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
            M_CLK4, M_SCLK4, M_CS4, M_MOSI4, M_MISO4, M_DRDY4, ICE_IOL_14B, 
            ICE_IOL_17A, ICE_IOL_17B, ICE_IOL_25B);   // zimaux_main.vhd(7[8:14])
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
    output ICE_IOL_14B;   // zimaux_main.vhd(74[3:14])
    output ICE_IOL_17A;   // zimaux_main.vhd(75[3:14])
    output ICE_IOL_17B;   // zimaux_main.vhd(76[3:14])
    input ICE_IOL_25B;   // zimaux_main.vhd(84[3:14])
    
    wire DDS_MCLK1 /* synthesis is_inv_clock=1 */ ;   // zimaux_main.vhd(12[3:12])
    wire clk_16MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_16MHz */ ;   // zimaux_main.vhd(201[9:18])
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    
    wire VCC_net, n18883, n20391, cs_sync1, cs_sync2, cs_falling_pend;
    wire [1:0]cs_mask_cnt;   // zimaux_main.vhd(213[9:20])
    
    wire reset_int;
    wire [15:0]buf_dds;   // zimaux_main.vhd(217[9:16])
    
    wire trig_dds;
    wire [7:0]comm_tx_buf;   // zimaux_main.vhd(234[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zimaux_main.vhd(236[9:20])
    wire [3:0]comm_state;   // zimaux_main.vhd(239[9:19])
    wire [7:0]comm_cmd;   // zimaux_main.vhd(241[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[1] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[2] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[3] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[4] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[5] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[6] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[7] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[8] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[9] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[10] ;   // zimaux_main.vhd(244[9:17])
    wire [7:0]\comm_buf[11] ;   // zimaux_main.vhd(244[9:17])
    wire [3:0]comm_index;   // zimaux_main.vhd(245[9:19])
    wire [3:0]comm_length;   // zimaux_main.vhd(246[9:20])
    
    wire acadc_trig, acadc_dtrigH, acadc_dtrig1, acadc_dtrig2, acadc_dtrig3, 
        acadc_dtrig4, eis_adc_trig, vdc_adc_trig;
    wire [15:0]acadc_skipcnt;   // zimaux_main.vhd(262[9:22])
    wire [15:0]acadc_skipCount;   // zimaux_main.vhd(263[9:24])
    wire [7:0]buf_device_acadc;   // zimaux_main.vhd(265[9:25])
    wire [23:0]buf_adcdata1;   // zimaux_main.vhd(271[9:21])
    wire [23:0]buf_adcdata2;   // zimaux_main.vhd(272[9:21])
    wire [23:0]buf_adcdata3;   // zimaux_main.vhd(273[9:21])
    wire [23:0]buf_adcdata4;   // zimaux_main.vhd(274[9:21])
    wire [23:0]buf_adcdata_vdc1;   // zimaux_main.vhd(276[9:25])
    wire [23:0]buf_adcdata_vdc2;   // zimaux_main.vhd(277[9:25])
    wire [23:0]buf_adcdata_vdc3;   // zimaux_main.vhd(278[9:25])
    wire [23:0]buf_adcdata_vdc4;   // zimaux_main.vhd(279[9:25])
    wire [2:0]eis_state;   // zimaux_main.vhd(282[9:18])
    wire [2:0]dc_state;   // zimaux_main.vhd(283[9:17])
    
    wire tacadc_rst, eis_start_cmd, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zimaux_main.vhd(291[9:21])
    wire [95:0]buf_data2;
    wire [8:0]data_count;   // zimaux_main.vhd(298[9:19])
    wire [15:0]data_cntvec;   // zimaux_main.vhd(299[9:20])
    wire [8:0]data_index;   // zimaux_main.vhd(300[9:19])
    wire [15:0]data_idxvec;   // zimaux_main.vhd(301[9:20])
    wire [7:0]buf_control;   // zimaux_main.vhd(310[9:20])
    
    wire cs_mask_cnt_1__N_363, cs_falling_pend_N_906, n20371, n12480, 
        n5382;
    wire [3:0]comm_state_3__N_403;
    
    wire n1, n20373, n20244, n369;
    wire [3:0]comm_length_3__N_415;
    wire [7:0]comm_buf_1__7__N_451;
    wire [8:0]data_index_8__N_628;
    wire [15:0]data_idxvec_15__N_653;
    
    wire n517, n19758, n519, n520, n521, n522, n523, n524, n20562, 
        n20725, n30, n18913, n5380, n5376, n5375, n12504, n29, 
        n26, n5350, n5349, n5347, n5345, n5343, n18868, n16887, 
        n5318, n5317, n5316, n5315, n5314, n5312, n5311, n6076, 
        n5286, n5284, n18912, n5280, n5279, n13653, n5254, n5253, 
        n5251, n5249, n5247, n19, n11629, n5222, n5221, n5220, 
        n5219, n5218, n5216, n5215, n19456, n13, n1_adj_1242, 
        n7, n25, n4, n12315, n21, n5147, n20447, n5132, n5131, 
        n5130, n5129, n5128, n5127, n5126, n5125, n23, n6, n5087, 
        n5085, n5084, n5082, n24;
    wire [3:0]comm_index_3__N_411;
    
    wire n25_adj_1243;
    wire [3:0]comm_state_3__N_384;
    
    wire n18882;
    wire [3:0]comm_state_3__N_380;
    
    wire comm_clear_N_914, ICE_GPMI_0_N_891, n19458, n19460, n19462, 
        n19464, n19466;
    wire [3:0]comm_state_3__N_27;
    
    wire n19538, n19544, n20203, cs_falling_pend_N_900, n19558, n19566, 
        n19568, n19570, n19094, n19572, n19574, n19576, n19578, 
        n19580, n19582, n19584, n19590, n19552, n19592, n19594, 
        n19596, n19728, n19724, n19542, n19598, n19722, n19720, 
        n19718, n19714, n19740, n19712, n19708, n19606, n1_adj_1244;
    wire [8:0]data_index_8__N_326;
    wire [15:0]data_idxvec_15__N_335;
    
    wire n19612, n19614, n4_adj_1245, n22, n17, n19616;
    wire [2:0]dc_state_2__N_282;
    
    wire n19618, n19624, n19626, n19628, n19634, n19636, n19670, 
        n19642, n19672, n19644, n19646, n19706, n19704, n19600, 
        n19648, n19702, n19700, n15, n20186, n19698, n19696, n19468, 
        n19694, n19692, n19668, n19216, n19218, n19220, n19222, 
        n19768, n7_adj_1246, n12, n9, n18881, n9_adj_1247, n7_adj_1248, 
        raw_buf1_N_950, n2256, n2257, n2258, n2259, n2260, n2261, 
        n2262, n2263, n2264, n2267, n2268, n2269, n2270, n2271, 
        n2272, n2273, n2274, n2275, n2276, n2277, n2278, n2279, 
        n2280, n2281, n2282, n9_adj_1249, n5056, n5055, n5054, 
        n5053, n5052, n5051, n5050, n5049, n2316, n2317, n2318, 
        n2319, n2320, n2321, n2322, n2323, n2324, n2325, n2326, 
        n2327, n2328, n2329, n2330, n2331, n21_adj_1250, n13_adj_1251, 
        n19230, n19232, n19234, n19236, n14249, n15_adj_1252, n14246, 
        n20717;
    wire [2:0]eis_state_2__N_279;
    
    wire n13_adj_1253, n12_adj_1254, n19734, sclk_sync1, sclk_sync2, 
        n19238, n14240, n20144, n20403, n5024, n12698, n5021, 
        n5019, n5018, n5017, n15_adj_1255, n7_adj_1256, n2;
    wire [3:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2, drdy_prev, drdy_falling, n12739, n12722, n19_adj_1257, 
        n19250, n10, n19738, n19114, n19224, n19226, n19228, n14993, 
        n19674, n14980, n19676, n14969, n15_adj_1258, n20141, n14957, 
        n19116, n14950, n14945, n7_adj_1259, n18, n19130, n8, 
        n4986, n4985, n4984, n7_adj_1260, n6_adj_1261, n4975;
    wire [3:0]adc_state_adj_1467;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1468;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1289, drdy_prev_adj_1290, drdy_falling_adj_1291, 
        n12755, n10_adj_1292, n4970, n4969, n19132, n19252, n19138, 
        n19140, n14928, n19142, n14921, n19148, n19278, n19280, 
        n19282, n19284, n19286, n19288, n19290, n14892, n14891, 
        n14890, n14889, n19292, n19294, n19296, n19298, n4968, 
        n4967, n4966, n4965, n4964, n4963, n4961, n20474, n5414, 
        n4950, n4949, n4948, n4947, n8134, n5413, n18869, n14872, 
        n4937, n4936, n4935, n4934, n18880, n5412, n4933;
    wire [3:0]adc_state_adj_1490;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1491;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1329, drdy_prev_adj_1330, drdy_falling_adj_1331, 
        n19254, n12801, n12780, n4932, n4931, n4930, n18879, n19300, 
        n19256, n19302, n19304, n19306, n14857, n19308, n14851, 
        n19310, n14845, n19312, n19314, n14836, n15_adj_1332, n20138, 
        n14830, n18878, n14827, n19010, n14823, n19320, n19322, 
        n18877, n18904, n4924, n4923, n4922, n20280, n4921, n11574, 
        n5411, n4920, n4919, n5410, n4918, n20367, n4917, n20283, 
        n4912;
    wire [3:0]adc_state_adj_1513;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1514;   // adc_ads127.vhd(27[8:20])
    
    wire drdy_sync2_adj_1369, drdy_prev_adj_1370, drdy_falling_adj_1371, 
        n12815, n4911, n4910, n19258, n19324, n19326, n19328, 
        n19330, n14780, n18903, n18876, n19332, n19334, n19336, 
        n19338, n14764, n19340, n14758, n19342, n14752, n19344, 
        n19346, n14743, n17029, n19348, n14736, n14733, n18875, 
        n17017, n18873, n14730;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1535;   // dds_ad9837.vhd(25[9:16])
    
    wire n12831, n5409, n4898, n4897, n6_adj_1372, n19262;
    wire [15:0]tmp_buf_15__N_1174;
    
    wire n5575, n19350, n19352, n4896, n4895, n4893, n4891, n5408, 
        n5407, n19354, n12323, n14717, n5949, n19356, n19112, 
        n27, n19358, n4744, n12319, n6074, n15_adj_1373, n18871, 
        n4779, n14708, n19360, n12472, n5, n1_adj_1374, n1_adj_1375, 
        n12484, n12488, n12492, n19272, n6483, n12534, n2_adj_1376, 
        n6_adj_1377, n12538, n12542, n12546, n12550, n12554, n12558, 
        n12562, n12566, n12570, n12574, n7_adj_1378, n8_adj_1379, 
        n2_adj_1380, n20387, n19274, n19318, n12638, n12642, n12646, 
        n12650, n7_adj_1381, n12694, n12702, n12706, n12710, n12714, 
        n12718, n19276, n2_adj_1382, n12743, n12747, n12759, n14204, 
        n12772, n14203, n14202, n1_adj_1383, n14201, n14200, n12819, 
        n12838, n12842, n12846, n12850, n12854, n12858, n12862, 
        n12866, n12870, n12874, n14199, n14198, n20544, n20543, 
        n18782, n14197, n12986, n20184, n14196, n14195, n12990, 
        n12994, n12998, n20523, n13002, n14194, n13006, n6_adj_1384, 
        n14193, n6_adj_1385, n6_adj_1386, n6_adj_1387, n6_adj_1388, 
        n6_adj_1389, n14, n6_adj_1390, n13010, n14192, n14191, n20145, 
        n14_adj_1391, n13014, n14_adj_1392, n13018, n14190, n14189, 
        n14188, n14_adj_1393, n10445, n18739, n14_adj_1394, n14702, 
        n13028, n13032, n18970, n19680, n9393, n21716, n14187, 
        n14186, n14185, n14184, n20158, n20142, n14183, n14182, 
        n21713, n19362, n21710, n13048, n20429, n21707, n21704, 
        n20427, n11051, n13420, n20221, n18696, n18698, n13806, 
        n19364, n19786, n13695, n21701, n19136, n20637, n21698, 
        n11457, n19366, n21695, n11009, n21692, n9_adj_1395, n33, 
        n20206, n14_adj_1396, n14_adj_1397, n9453, n24_adj_1398, n14_adj_1399, 
        n20411, n14_adj_1400, n9642, n14_adj_1401, n1_adj_1402, n19660, 
        n13782, n19368, n14_adj_1403, n12690, n14_adj_1404, n12678, 
        n18653, n19122, n21689, n13117, n19370, n20369, n12607, 
        n21686, n19270, n21683, n4_adj_1405, n6_adj_1406, n7_adj_1407, 
        n10967, n18_adj_1408, n18610, n2_adj_1409, n8_adj_1410, n21677, 
        n7_adj_1411, n8_adj_1412, n7_adj_1413, n8_adj_1414, n21671, 
        n21668, n7_adj_1415, n8_adj_1416, n19372, n12286, n21665, 
        n23_adj_1417, n21662, n22_adj_1418, n14_adj_1419, n19374, 
        n21_adj_1420, n20, n19640, n21659, n19_adj_1421, n21656, 
        n18_adj_1422, n17_adj_1423, n7_adj_1424, n8_adj_1425, n18567, 
        n21653, n20487, n21650, n9_adj_1426, n19376, n13646, n7_adj_1427, 
        n8_adj_1428, n21647, n7_adj_1429, n8_adj_1430, n21644, n7_adj_1431, 
        n8_adj_1432, n18902, n9507, n21641, n21638, n13688, n21635, 
        n21632, n7_adj_1433, n8_adj_1434, n21629, n21626, n14_adj_1435, 
        n13143, n21623, n21620, n13147, n18524, n18526, n10925, 
        n13151, n21617, n4_adj_1436, n19622, n21614, n14_adj_1437, 
        n19796, n19378, n21611, n21608, n7_adj_1438, n20407, n21605, 
        n20289, n20312, n13157, n14181, n1_adj_1439, n13161, n21602, 
        n20522, n20449, n7_adj_1440, n21599, n21596, n13165, n11320, 
        n13169, n13173, n19380, n13639, n11315, n13177, n11312, 
        n14180, n14179, n20486, n21593, n21590, n7_adj_1441, n21587, 
        n21584, n21581, n19564, n7_adj_1442, n21578, n13181, n14178, 
        n14177, n7_adj_1443, n21575, n21572, n13189, n19556, n19610, 
        n19382, n14176, n13193, n14175, n19810, n13197, n13201, 
        n18481, n14174, n14173, n13205, n14172, n21569, n14171, 
        n14170, n14169, n13209, n14168, n14167, n21566, n14166, 
        n20000, n14165, n14164, n6_adj_1444, n19550, n19384, n11282, 
        n14163, n19632, n14162, n14161, n14160, n18438, n14159, 
        n7_adj_1445, n19146, n14158, n21563, n14157, n14156, n20323, 
        n21560, n14155, n19386, n20363, n14154, n14153, n20361, 
        n11252, n14152, n30_adj_1446, n19388, n21557, n21554, n19536, 
        n19128, n18395, n14010, n19390, n21551, n10178, n11228, 
        n7_adj_1447, n19260, n21548, n14650, n19742, n21545, n21542, 
        n8132, n9_adj_1448, n19744, n18_adj_1449, n19746, n19748, 
        n12_adj_1450, n20359, n8066, n19750, n57, n60, n20415, 
        n19752, n14151, n21539, n14150, n12099, n14149, n14148, 
        n11215, n19754, n14147, n20797, n20796, n14146, n9699, 
        n14145, n7936, n14144, n20793, n14143, n14142, n19756, 
        n14141, n14140, n14139, n14138, n21536, n14137, n10136, 
        n14136, n51, n19560, n14135, n13702, n14134, n21212, n14133, 
        n14132, n20310, n14131, n20135, n14130, n15896, n21533, 
        n18277, n14129, n19690, n14128, n14127, n21530, n13185, 
        n14126, n14125, n21527, n21524, n14124, n23_adj_1451, n19506, 
        n14123, n19688, n14122, n14121, n14120, n14119, n21521, 
        n14118, n14117, n21518, n14116, n14115, n14114, n19686, 
        n19684, n12021, n19682, n13681, n22_adj_1452, n21515, n20301, 
        n10423, n18236, n18238, n19806, n11175, n21506, n4_adj_1453, 
        n10648, n21503, n21500, n21497, n21494, n21491, n21488, 
        n21485, n13139, n4_adj_1454, n14113, n14112, n14111, n14110, 
        n20200, n14109, n14108, n19788, n14107, n14106, n14105, 
        n20_adj_1455, n14104, n19790, n19998, n10603, n14103, n19484, 
        n14102, n14101, n19822, n13626, n14100, n14099, n14098, 
        n10633, n14097, n19792, n14096, n11921, n14095, n14094, 
        n20685, n14093, n14092, n19798, n14091, n10658, n14090, 
        n14089, n13674, n14088, n14087, n18901, n14086, n14085, 
        n14084, n13660, n14083, n14082, n19800, n14081, n10668, 
        n14080, n1_adj_1456, n14079, n14078, n14077, n10678, n14076, 
        n14075, n20475, n19802, n1_adj_1457, n19804, n10688, n20882, 
        n20056, n19782, n20336, n10708, n11821, n13667, n13723, 
        n20293, n9_adj_1458, n14074, n18_adj_1459, n19186, n19454, 
        n14073, n14072, n14071, n14070, n14069, n14068, n19604, 
        n17920, n17923, n14066, n17924, n14064, n1_adj_1460, n14062, 
        n17933, n17934, n17939, n9652, n11135, n14060, n17943, 
        n14059, n17945, n14058, n10757, n14057, n16, n14056, n14055, 
        n18900, n14054, n14053, n14052, n14051, n19778, n14050, 
        n14049, n6512, n10799, n14048, n10698, n14046, n19816, 
        n14045, n10715, n14044, n20189, n14043, n9_adj_1461, n14042, 
        n14041, n10509, n14040, n21_adj_1462, n14039, n20869, n14038, 
        n10545, n14037, n10551, n20260, n10561, n13607, n20232, 
        n19432, n18870, n10883, n18899, n11093, n19214, n18898, 
        n18934, n18933, n18932, n18931, n20862, n18897, n18930, 
        n18896, n10841, n18929, n20001, n10087, n7_adj_1463, n20855, 
        n18895, n18894, n20139, n18928, n18927, n18926, n18893, 
        n18925, n18924, n18892, n18867, n18923, n18922, n18921, 
        n18891, n9667, n18890, n18920, n10082, n13709, n18874, 
        n18889, n13024, n18919, n18918, n18888, n18917, n18916, 
        n14036, n18887, n18886, n18872, n20639, n13716, n18885, 
        n6124, n18915, n18884, n19015, n18914, n19248, n1_adj_1464, 
        n6108;
    
    assign ICE_IOL_17A = ICE_SPI_SCLK;   // zimaux_main.vhd(27[3:15])
    assign DISP_COMM = ICE_GPMO_2;   // zimaux_main.vhd(33[3:13])
    assign M_MOSI1 = M_MOSI4;   // zimaux_main.vhd(48[3:10])
    assign M_CLK2 = M_CLK1;   // zimaux_main.vhd(52[3:9])
    assign M_MOSI2 = M_MOSI4;   // zimaux_main.vhd(55[3:10])
    assign M_CLK3 = M_CLK1;   // zimaux_main.vhd(59[3:9])
    assign M_MOSI3 = M_MOSI4;   // zimaux_main.vhd(62[3:10])
    assign M_CLK4 = M_CLK1;   // zimaux_main.vhd(66[3:9])
    assign ICE_IOL_14B = ICE_GPMI_0;   // zimaux_main.vhd(74[3:14])
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i6944_4_lut (.I0(n5129), .I1(buf_data2[47]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10668));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6944_4_lut.LUT_INIT = 16'hfaca;
    SB_DFFE comm_clear_378_i0 (.Q(cs_falling_pend), .C(clk_32MHz), .E(n10136), 
            .D(cs_falling_pend_N_900));   // zimaux_main.vhd(448[4] 687[13])
    SB_LUT4 comm_index_0__bdd_4_lut_17744 (.I0(comm_index[0]), .I1(\comm_buf[10] [7]), 
            .I2(\comm_buf[11] [7]), .I3(comm_index[1]), .O(n21491));
    defparam comm_index_0__bdd_4_lut_17744.LUT_INIT = 16'he4aa;
    SB_LUT4 i6945_3_lut (.I0(n21602), .I1(n10668), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[3]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6945_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17867 (.I0(comm_index[0]), .I1(\comm_buf[10] [5]), 
            .I2(\comm_buf[11] [5]), .I3(comm_index[1]), .O(n21641));
    defparam comm_index_0__bdd_4_lut_17867.LUT_INIT = 16'he4aa;
    SB_LUT4 equal_172_i2_2_lut (.I0(comm_index[1]), .I1(comm_length[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n2));   // zimaux_main.vhd(626[9:33])
    defparam equal_172_i2_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i10395_3_lut (.I0(buf_adcdata1[8]), .I1(cmd_rdadctmp[16]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14120));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10395_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21641_bdd_4_lut (.I0(n21641), .I1(\comm_buf[9] [5]), .I2(\comm_buf[8] [5]), 
            .I3(comm_index[1]), .O(n21644));
    defparam n21641_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 n21515_bdd_4_lut (.I0(n21515), .I1(n20793), .I2(n4963), .I3(n4961), 
            .O(n21518));
    defparam n21515_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut (.I0(buf_adcdata_vdc3[0]), .I1(buf_adcdata3[0]), .I2(n11457), 
            .I3(n1_adj_1456), .O(n19224));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cs_sync2_374 (.Q(cs_sync2), .C(clk_32MHz), .D(cs_sync1));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 n21491_bdd_4_lut (.I0(n21491), .I1(\comm_buf[9] [7]), .I2(\comm_buf[8] [7]), 
            .I3(comm_index[1]), .O(n21494));
    defparam n21491_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_433_Mux_3_i6_3_lut (.I0(comm_buf_1__7__N_451[3]), 
            .I1(comm_rx_buf[3]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1388));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1937_i5_3_lut (.I0(buf_adcdata_vdc1[12]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5128));
    defparam mux_1937_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6954_4_lut (.I0(n5128), .I1(buf_data2[51]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10678));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6954_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_state_3__I_0_444_Mux_2_i15_4_lut (.I0(n7_adj_1431), .I1(n8_adj_1432), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[2]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF cs_prev_375 (.Q(comm_state_3__N_403[1]), .C(clk_32MHz), .D(cs_sync2));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_17739 (.I0(comm_cmd[0]), .I1(data_cntvec[1]), 
            .I2(acadc_skipCount[1]), .I3(n5147), .O(n21485));
    defparam comm_cmd_0__bdd_4_lut_17739.LUT_INIT = 16'he4aa;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n20312), 
            .D(comm_state_3__N_27[0]));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i2_4_lut (.I0(comm_index[2]), .I1(comm_index[3]), .I2(comm_length[2]), 
            .I3(comm_length[3]), .O(n6));   // zimaux_main.vhd(626[9:33])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFE dummy_387 (.Q(ICE_IOL_17B), .C(clk_32MHz), .E(n6512), .D(n2_adj_1376));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_state_3__I_0_444_Mux_1_i15_4_lut (.I0(n7_adj_1433), .I1(n8_adj_1434), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[1]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_8__N_326[0]));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_index_0__bdd_4_lut_17768 (.I0(comm_index[0]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[3] [5]), .I3(comm_index[1]), .O(n21503));
    defparam comm_index_0__bdd_4_lut_17768.LUT_INIT = 16'he4aa;
    SB_LUT4 n21503_bdd_4_lut (.I0(n21503), .I1(\comm_buf[1] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n21506));
    defparam n21503_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3_4_lut (.I0(comm_index[0]), .I1(n6), .I2(n2), .I3(comm_length[0]), 
            .O(n7_adj_1256));   // zimaux_main.vhd(626[9:33])
    defparam i3_4_lut.LUT_INIT = 16'hfdfe;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[0]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFNER dc_state_i0 (.Q(dc_state[0]), .C(clk_32MHz), .E(n11320), 
            .D(dc_state_2__N_282[0]), .R(tacadc_rst));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i2403_2_lut (.I0(dc_state[2]), .I1(tacadc_rst), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6124));   // zimaux_main.vhd(694[3] 728[10])
    defparam i2403_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n9_adj_1395), 
            .D(eis_state_2__N_279[0]), .R(tacadc_rst));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i6955_3_lut (.I0(n21596), .I1(n10678), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[4]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6955_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17753 (.I0(comm_cmd[0]), .I1(data_cntvec[0]), 
            .I2(acadc_skipCount[0]), .I3(n5147), .O(n21497));
    defparam comm_cmd_0__bdd_4_lut_17753.LUT_INIT = 16'he4aa;
    SB_LUT4 n21497_bdd_4_lut (.I0(n21497), .I1(buf_dds[0]), .I2(req_data_cnt[0]), 
            .I3(n5147), .O(n21500));
    defparam n21497_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10396_3_lut (.I0(buf_adcdata1[9]), .I1(cmd_rdadctmp[17]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14121));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10396_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_29 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19768));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_29.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_433_Mux_4_i6_3_lut (.I0(comm_buf_1__7__N_451[4]), 
            .I1(comm_rx_buf[4]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1387));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17857 (.I0(comm_index[0]), .I1(\comm_buf[2] [4]), 
            .I2(\comm_buf[3] [4]), .I3(comm_index[1]), .O(n21635));
    defparam comm_index_0__bdd_4_lut_17857.LUT_INIT = 16'he4aa;
    SB_LUT4 i17429_4_lut (.I0(cs_falling_pend_N_906), .I1(comm_state[1]), 
            .I2(n1_adj_1460), .I3(comm_state[2]), .O(n20562));
    defparam i17429_4_lut.LUT_INIT = 16'hcfee;
    SB_LUT4 mux_1937_i6_3_lut (.I0(buf_adcdata_vdc1[13]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5127));
    defparam mux_1937_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_30 (.I0(cmd_rdadctmp_adj_1468[27]), .I1(cmd_rdadctmp_adj_1468[26]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19484));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_LUT4 i46_4_lut (.I0(n20562), .I1(comm_state_3__N_403[1]), .I2(comm_state[3]), 
            .I3(n8066), .O(n20415));
    defparam i46_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17778 (.I0(comm_index[0]), .I1(\comm_buf[6] [7]), 
            .I2(\comm_buf[7] [7]), .I3(comm_index[1]), .O(n21539));
    defparam comm_index_0__bdd_4_lut_17778.LUT_INIT = 16'he4aa;
    SB_LUT4 i6964_4_lut (.I0(n5127), .I1(buf_data2[55]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10688));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6964_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_1858_10 (.CI(n18927), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n18928));
    SB_LUT4 i6965_3_lut (.I0(n21590), .I1(n10688), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[5]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6965_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_323_8 (.CI(n18872), .I0(data_count[6]), .I1(M_MOSI4), 
            .CO(n18873));
    SB_LUT4 n21635_bdd_4_lut (.I0(n21635), .I1(\comm_buf[1] [4]), .I2(\comm_buf[0] [4]), 
            .I3(comm_index[1]), .O(n21638));
    defparam n21635_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i17557_4_lut (.I0(comm_state_3__N_380[1]), .I1(comm_state[0]), 
            .I2(n20403), .I3(n20415), .O(n22));
    defparam i17557_4_lut.LUT_INIT = 16'hf531;
    SB_LUT4 i9728_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13420));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9728_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 n21485_bdd_4_lut (.I0(n21485), .I1(buf_dds[1]), .I2(req_data_cnt[1]), 
            .I3(n5147), .O(n21488));
    defparam n21485_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_433_Mux_5_i6_3_lut (.I0(comm_buf_1__7__N_451[5]), 
            .I1(comm_rx_buf[5]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1386));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1858_9_lut (.I0(n14), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n18926), .O(data_idxvec_15__N_335[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_9_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_323_7_lut (.I0(M_MOSI4), .I1(data_count[5]), .I2(M_MOSI4), 
            .I3(n18871), .O(n2259)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_324_14_lut (.I0(M_MOSI4), .I1(data_cntvec[12]), .I2(M_MOSI4), 
            .I3(n18886), .O(n2270)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_14 (.CI(n18886), .I0(data_cntvec[12]), .I1(M_MOSI4), 
            .CO(n18887));
    SB_CARRY add_1858_9 (.CI(n18926), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n18927));
    SB_LUT4 add_1858_8_lut (.I0(n14_adj_1391), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n18925), .O(data_idxvec_15__N_335[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i10397_3_lut (.I0(buf_adcdata1[10]), .I1(cmd_rdadctmp[18]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14122));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10397_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10328_3_lut (.I0(buf_adcdata4[0]), .I1(cmd_rdadctmp_adj_1514[8]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14053));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1937_i7_3_lut (.I0(buf_adcdata_vdc1[14]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5126));
    defparam mux_1937_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_324_13_lut (.I0(M_MOSI4), .I1(data_cntvec[11]), .I2(M_MOSI4), 
            .I3(n18885), .O(n2271)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6974_4_lut (.I0(n5126), .I1(buf_data2[59]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10698));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6974_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i6975_3_lut (.I0(n21584), .I1(n10698), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[6]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6975_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_323_7 (.CI(n18871), .I0(data_count[5]), .I1(M_MOSI4), 
            .CO(n18872));
    SB_LUT4 comm_state_3__I_0_433_Mux_6_i6_3_lut (.I0(comm_buf_1__7__N_451[6]), 
            .I1(comm_rx_buf[6]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1385));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_323_4_lut (.I0(M_MOSI4), .I1(data_count[2]), .I2(M_MOSI4), 
            .I3(n18868), .O(n2262)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_428_Mux_3_i15_4_lut (.I0(n17029), .I1(comm_state_3__N_384[3]), 
            .I2(comm_state[3]), .I3(n20363), .O(comm_state_3__N_27[3]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_CARRY add_324_13 (.CI(n18885), .I0(data_cntvec[11]), .I1(M_MOSI4), 
            .CO(n18886));
    SB_LUT4 i12_4_lut_adj_31 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19686));
    defparam i12_4_lut_adj_31.LUT_INIT = 16'hca0a;
    SB_LUT4 add_324_12_lut (.I0(M_MOSI4), .I1(data_cntvec[10]), .I2(M_MOSI4), 
            .I3(n18884), .O(n2272)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_323_6_lut (.I0(M_MOSI4), .I1(data_count[4]), .I2(M_MOSI4), 
            .I3(n18870), .O(n2260)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_12 (.CI(n18884), .I0(data_cntvec[10]), .I1(M_MOSI4), 
            .CO(n18885));
    SB_LUT4 i11_4_lut (.I0(comm_cmd[0]), .I1(n13420), .I2(n10603), .I3(comm_rx_buf[0]), 
            .O(n19222));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_CARRY add_323_6 (.CI(n18870), .I0(data_count[4]), .I1(M_MOSI4), 
            .CO(n18871));
    SB_LUT4 mux_1895_i4_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4921), .I3(n4934), .O(n4967));
    defparam mux_1895_i4_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 comm_index_0__bdd_4_lut_17852 (.I0(comm_index[0]), .I1(\comm_buf[6] [4]), 
            .I2(\comm_buf[7] [4]), .I3(comm_index[1]), .O(n21629));
    defparam comm_index_0__bdd_4_lut_17852.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_1895_i7_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4918), .I3(n4931), .O(n4964));
    defparam mux_1895_i7_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_4_lut_3_lut (.I0(dc_state[2]), .I1(dc_state[1]), .I2(dc_state[0]), 
            .I3(M_MOSI4), .O(dc_state_2__N_282[1]));
    defparam i1_4_lut_3_lut.LUT_INIT = 16'h4d4d;
    SB_LUT4 mux_1895_i5_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4920), .I3(n4933), .O(n4966));
    defparam mux_1895_i5_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i18_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n7));
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1895_i1_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4924), .I3(n4937), .O(n4970));
    defparam mux_1895_i1_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_323_3_lut (.I0(M_MOSI4), .I1(data_count[1]), .I2(M_MOSI4), 
            .I3(n18867), .O(n2263)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2315_2_lut (.I0(cs_mask_cnt[0]), .I1(cs_mask_cnt[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(cs_mask_cnt_1__N_363));
    defparam i2315_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9792_4_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n18));
    defparam i9792_4_lut_3_lut.LUT_INIT = 16'hb4b4;
    SB_LUT4 i1_4_lut (.I0(comm_cmd[5]), .I1(n13), .I2(comm_cmd[6]), .I3(comm_cmd[4]), 
            .O(n20186));
    defparam i1_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 i2348_4_lut (.I0(n20186), .I1(n7), .I2(comm_cmd[1]), .I3(n10087), 
            .O(n6076));
    defparam i2348_4_lut.LUT_INIT = 16'ha2aa;
    SB_LUT4 i10398_3_lut (.I0(buf_adcdata1[11]), .I1(cmd_rdadctmp[19]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14123));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10398_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9926_2_lut (.I0(n10715), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13646));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9926_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17242_3_lut (.I0(n6076), .I1(comm_state[0]), .I2(n6074), 
            .I3(M_MOSI4), .O(n20639));
    defparam i17242_3_lut.LUT_INIT = 16'h3232;
    SB_LUT4 i24_4_lut (.I0(n20639), .I1(n20200), .I2(comm_state[1]), .I3(n17933), 
            .O(n18_adj_1449));
    defparam i24_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i16616_2_lut_3_lut (.I0(n19010), .I1(dc_state[0]), .I2(dc_state[1]), 
            .I3(M_MOSI4), .O(n20371));
    defparam i16616_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 mux_1937_i8_3_lut (.I0(buf_adcdata_vdc1[15]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5125));
    defparam mux_1937_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13268_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1396));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13268_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i19_4_lut (.I0(n9_adj_1426), .I1(acadc_dtrigH), .I2(eis_state[0]), 
            .I3(eis_start), .O(n16));
    defparam i19_4_lut.LUT_INIT = 16'h353f;
    SB_LUT4 i2370_2_lut (.I0(TEST_LED), .I1(dc_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n2_adj_1380));   // zimaux_main.vhd(697[4] 727[13])
    defparam i2370_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_32 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19688));
    defparam i12_4_lut_adj_32.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_33 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19758));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_33.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1881_i2_3_lut (.I0(req_data_cnt[9]), .I1(buf_data2[71]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4923));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE TEST_LED_416 (.Q(TEST_LED), .C(clk_32MHz), .E(n6124), .D(n2_adj_1380));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_1886_i2_3_lut (.I0(M_DCSEL), .I1(M_OSR1), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4936));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0 (.RDATA({buf_data2[95:88]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[23], buf_adcdata4[23], buf_adcdata3[23], 
            buf_adcdata2[23], buf_adcdata1[22], buf_adcdata4[22], buf_adcdata3[22], 
            buf_adcdata2[22]}));
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
    SB_LUT4 i17295_2_lut_3_lut_4_lut (.I0(n9_adj_1426), .I1(ICE_IOL_25B), 
            .I2(eis_start_cmd), .I3(eis_state[0]), .O(n20855));
    defparam i17295_2_lut_3_lut_4_lut.LUT_INIT = 16'hff40;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11 (.RDATA({buf_data2[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[1], buf_adcdata4[1], buf_adcdata3[1], 
            buf_adcdata2[1], buf_adcdata1[0], buf_adcdata4[0], buf_adcdata3[0], 
            buf_adcdata2[0]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[3], buf_adcdata4[3], buf_adcdata3[3], 
            buf_adcdata2[3], buf_adcdata1[2], buf_adcdata4[2], buf_adcdata3[2], 
            buf_adcdata2[2]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[5], buf_adcdata4[5], buf_adcdata3[5], 
            buf_adcdata2[5], buf_adcdata1[4], buf_adcdata4[4], buf_adcdata3[4], 
            buf_adcdata2[4]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[7], buf_adcdata4[7], buf_adcdata3[7], 
            buf_adcdata2[7], buf_adcdata1[6], buf_adcdata4[6], buf_adcdata3[6], 
            buf_adcdata2[6]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[9], buf_adcdata4[9], buf_adcdata3[9], 
            buf_adcdata2[9], buf_adcdata1[8], buf_adcdata4[8], buf_adcdata3[8], 
            buf_adcdata2[8]}));
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
    SB_CARRY add_1858_8 (.CI(n18925), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n18926));
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6 (.RDATA({buf_data2[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[11], buf_adcdata4[11], buf_adcdata3[11], 
            buf_adcdata2[11], buf_adcdata1[10], buf_adcdata4[10], buf_adcdata3[10], 
            buf_adcdata2[10]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[13], buf_adcdata4[13], buf_adcdata3[13], 
            buf_adcdata2[13], buf_adcdata1[12], buf_adcdata4[12], buf_adcdata3[12], 
            buf_adcdata2[12]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[15], buf_adcdata4[15], buf_adcdata3[15], 
            buf_adcdata2[15], buf_adcdata1[14], buf_adcdata4[14], buf_adcdata3[14], 
            buf_adcdata2[14]}));
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
    SB_LUT4 i6984_4_lut (.I0(n5125), .I1(buf_data2[63]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10708));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6984_4_lut.LUT_INIT = 16'h0aca;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3 (.RDATA({buf_data2[71:64]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[17], buf_adcdata4[17], buf_adcdata3[17], 
            buf_adcdata2[17], buf_adcdata1[16], buf_adcdata4[16], buf_adcdata3[16], 
            buf_adcdata2[16]}));
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
    SB_LUT4 mux_1877_i2_3_lut (.I0(acadc_skipCount[9]), .I1(eis_stop), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4911));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1877_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2221_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_403[1]), .I3(comm_index[1]), .O(n5949));   // zimaux_main.vhd(607[5] 617[12])
    defparam i2221_2_lut_3_lut_4_lut.LUT_INIT = 16'h0800;
    SB_LUT4 i6985_3_lut (.I0(n21572), .I1(n10708), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[7]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6985_3_lut.LUT_INIT = 16'hcaca;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2 (.RDATA({buf_data2[79:72]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[19], buf_adcdata4[19], buf_adcdata3[19], 
            buf_adcdata2[19], buf_adcdata1[18], buf_adcdata4[18], buf_adcdata3[18], 
            buf_adcdata2[18]}));
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_8__N_326}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_950), .WADDR({data_count}), 
            .WDATA({buf_adcdata1[21], buf_adcdata4[21], buf_adcdata3[21], 
            buf_adcdata2[21], buf_adcdata1[20], buf_adcdata4[20], buf_adcdata3[20], 
            buf_adcdata2[20]}));
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
    SB_LUT4 comm_state_3__I_0_433_Mux_7_i6_3_lut (.I0(comm_buf_1__7__N_451[7]), 
            .I1(comm_rx_buf[7]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1384));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_34 (.I0(cmd_rdadctmp_adj_1491[2]), .I1(cmd_rdadctmp_adj_1491[1]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19560));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_34.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1925_i2_3_lut (.I0(buf_data2[7]), .I1(buf_adcdata_vdc1[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5087));
    defparam mux_1925_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9281_3_lut (.I0(n5087), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13006));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9281_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2219_2_lut_3_lut_4_lut (.I0(comm_index[0]), .I1(comm_data_vld), 
            .I2(comm_state_3__N_403[1]), .I3(comm_index[1]), .O(comm_index_3__N_411[1]));   // zimaux_main.vhd(607[5] 617[12])
    defparam i2219_2_lut_3_lut_4_lut.LUT_INIT = 16'hf708;
    SB_LUT4 i13200_2_lut (.I0(comm_state[1]), .I1(comm_state_3__N_403[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(comm_state_3__N_380[1]));   // zimaux_main.vhd(680[5] 682[12])
    defparam i13200_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_1891_i2_4_lut (.I0(n4911), .I1(data_idxvec[9]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4949));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1891_i2_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i15079_3_lut (.I0(buf_data2[11]), .I1(buf_adcdata_vdc1[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18739));   // zimaux_main.vhd(241[9:17])
    defparam i15079_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15080_3_lut (.I0(n18739), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13002));   // zimaux_main.vhd(239[9:19])
    defparam i15080_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF comm_clear_378_i2 (.Q(ICE_GPMI_0), .C(clk_32MHz), .D(ICE_GPMI_0_N_891));   // zimaux_main.vhd(448[4] 687[13])
    SB_LUT4 i12_4_lut_adj_35 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19558));
    defparam i12_4_lut_adj_35.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_36 (.I0(cmd_rdadctmp_adj_1468[31]), .I1(cmd_rdadctmp_adj_1468[30]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19544));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_36.LUT_INIT = 16'hca0a;
    SB_LUT4 i10329_4_lut (.I0(acadc_dtrig4), .I1(adc_state_adj_1513[2]), 
            .I2(adc_state_adj_1513[1]), .I3(n20280), .O(n14054));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10329_4_lut.LUT_INIT = 16'haae8;
    SB_LUT4 i15097_3_lut (.I0(buf_data2[15]), .I1(buf_adcdata_vdc1[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5085));   // zimaux_main.vhd(241[9:17])
    defparam i15097_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13333_2_lut_4_lut (.I0(n16887), .I1(n13_adj_1251), .I2(n9667), 
            .I3(n13_adj_1253), .O(comm_length_3__N_415[1]));
    defparam i13333_2_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i9273_3_lut (.I0(n5085), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12998));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9273_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1925_i5_3_lut (.I0(buf_data2[19]), .I1(buf_adcdata_vdc1[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5084));
    defparam mux_1925_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9269_3_lut (.I0(n5084), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12994));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9269_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15123_3_lut (.I0(buf_data2[23]), .I1(buf_adcdata_vdc1[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18782));   // zimaux_main.vhd(241[9:17])
    defparam i15123_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_clear_378_i3 (.Q(comm_clear), .C(clk_32MHz), .E(n9_adj_1461), 
            .D(comm_clear_N_914));   // zimaux_main.vhd(448[4] 687[13])
    SB_LUT4 i15124_3_lut (.I0(n18782), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12990));   // zimaux_main.vhd(239[9:19])
    defparam i15124_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15141_3_lut (.I0(buf_data2[27]), .I1(buf_adcdata_vdc1[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5082));   // zimaux_main.vhd(241[9:17])
    defparam i15141_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_37 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19754));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_37.LUT_INIT = 16'hca0a;
    SB_LUT4 i9261_3_lut (.I0(n5082), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12986));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9261_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(\comm_buf[0] [6]), 
            .I3(M_MOSI4), .O(n14_adj_1397));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_LUT4 i10330_4_lut (.I0(M_SCLK4), .I1(adc_state_adj_1513[2]), .I2(adc_state_adj_1513[3]), 
            .I3(n7_adj_1447), .O(n14055));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10330_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i9933_2_lut (.I0(n10757), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13653));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9933_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10399_3_lut (.I0(buf_adcdata1[12]), .I1(cmd_rdadctmp[20]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14124));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10399_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16655_3_lut (.I0(n9_adj_1249), .I1(comm_state[0]), .I2(n12_adj_1254), 
            .I3(M_MOSI4), .O(n20411));
    defparam i16655_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i20_4_lut (.I0(n20407), .I1(n20411), .I2(comm_state[3]), .I3(n8066), 
            .O(n10509));
    defparam i20_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 n21629_bdd_4_lut (.I0(n21629), .I1(\comm_buf[5] [4]), .I2(\comm_buf[4] [4]), 
            .I3(comm_index[1]), .O(n21632));
    defparam n21629_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut (.I0(comm_index[0]), .I1(n17933), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(n17934));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_4_lut_adj_38 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17934), .O(n10757));
    defparam i1_4_lut_adj_38.LUT_INIT = 16'hc8c0;
    SB_LUT4 i5_3_lut (.I0(buf_data2[31]), .I1(buf_adcdata_vdc1[7]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n1));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_39 (.I0(dc_state[0]), .I1(acadc_dtrigH), .I2(dc_state[1]), 
            .I3(dc_state[2]), .O(n9_adj_1458));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'h0a8a;
    SB_LUT4 i10400_3_lut (.I0(buf_adcdata1[13]), .I1(cmd_rdadctmp[21]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14125));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10400_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10401_3_lut (.I0(buf_adcdata1[14]), .I1(cmd_rdadctmp[22]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14126));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10401_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut (.I0(n1), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12866));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_40 (.I0(tacadc_rst), .I1(dc_state[2]), .I2(n9_adj_1458), 
            .I3(dc_state[1]), .O(n11457));
    defparam i1_4_lut_adj_40.LUT_INIT = 16'h5054;
    SB_LUT4 mux_1917_i2_3_lut (.I0(buf_data2[68]), .I1(buf_adcdata_vdc2[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5055));
    defparam mux_1917_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9129_3_lut (.I0(n5055), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12854));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9129_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1895_i2_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4923), .I3(n4936), .O(n4969));
    defparam mux_1895_i2_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 mux_1917_i3_3_lut (.I0(buf_data2[72]), .I1(buf_adcdata_vdc2[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5054));
    defparam mux_1917_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9125_3_lut (.I0(n5054), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12850));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9125_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10402_3_lut (.I0(buf_adcdata1[15]), .I1(cmd_rdadctmp[23]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14127));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10402_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10403_3_lut (.I0(buf_adcdata1[16]), .I1(cmd_rdadctmp[24]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14128));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10403_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10404_3_lut (.I0(buf_adcdata1[17]), .I1(cmd_rdadctmp[25]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14129));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10404_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1917_i4_3_lut (.I0(buf_data2[76]), .I1(buf_adcdata_vdc2[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5053));
    defparam mux_1917_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9117_3_lut (.I0(n5053), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12842));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9117_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_41 (.I0(n27), .I1(n10082), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(comm_state_3__N_384[3]));   // zimaux_main.vhd(642[5] 674[14])
    defparam i1_2_lut_adj_41.LUT_INIT = 16'h8888;
    SB_LUT4 i10405_3_lut (.I0(buf_adcdata1[18]), .I1(cmd_rdadctmp[26]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14130));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10405_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1917_i5_3_lut (.I0(buf_data2[80]), .I1(buf_adcdata_vdc2[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5052));
    defparam mux_1917_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1895_i3_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4922), .I3(n4935), .O(n4968));
    defparam mux_1895_i3_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i9095_3_lut (.I0(n5052), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12819));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9095_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_42 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19750));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_42.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_43 (.I0(cmd_rdadctmp_adj_1514[31]), .I1(cmd_rdadctmp_adj_1514[30]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19660));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_43.LUT_INIT = 16'hca0a;
    SB_LUT4 i10406_3_lut (.I0(buf_adcdata1[19]), .I1(cmd_rdadctmp[27]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14131));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10406_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12713_3_lut (.I0(buf_adcdata1[20]), .I1(cmd_rdadctmp[28]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14132));
    defparam i12713_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_44 (.I0(cmd_rdadctmp_adj_1514[30]), .I1(cmd_rdadctmp_adj_1514[29]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19690));
    defparam i12_4_lut_adj_44.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1917_i6_3_lut (.I0(buf_data2[84]), .I1(buf_adcdata_vdc2[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5051));
    defparam mux_1917_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9077_3_lut (.I0(n5051), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12801));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9077_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_45 (.I0(cmd_rdadctmp_adj_1514[24]), .I1(cmd_rdadctmp_adj_1514[23]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19698));
    defparam i12_4_lut_adj_45.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1917_i7_3_lut (.I0(buf_data2[88]), .I1(buf_adcdata_vdc2[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5050));
    defparam mux_1917_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4419_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n8066));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4419_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i9035_3_lut (.I0(n5050), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12759));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_46 (.I0(cmd_rdadctmp_adj_1514[23]), .I1(cmd_rdadctmp_adj_1514[22]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19700));
    defparam i12_4_lut_adj_46.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_47 (.I0(cmd_rdadctmp_adj_1514[22]), .I1(cmd_rdadctmp_adj_1514[21]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19646));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_47.LUT_INIT = 16'hca0a;
    SB_LUT4 i10332_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n14057));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10332_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1871_i2_3_lut (.I0(buf_dds[9]), .I1(buf_adcdata_vdc1[17]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4897));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1871_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10408_3_lut (.I0(buf_adcdata1[21]), .I1(cmd_rdadctmp[29]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14133));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10408_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2226_2_lut_4_lut (.I0(comm_index[2]), .I1(comm_index[0]), .I2(n1_adj_1460), 
            .I3(comm_index[1]), .O(comm_index_3__N_411[2]));   // zimaux_main.vhd(607[5] 617[12])
    defparam i2226_2_lut_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 i9940_2_lut (.I0(n10799), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13660));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9940_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_48 (.I0(cmd_rdadctmp_adj_1514[21]), .I1(cmd_rdadctmp_adj_1514[20]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19598));
    defparam i12_4_lut_adj_48.LUT_INIT = 16'hca0a;
    SB_LUT4 i12743_3_lut (.I0(buf_adcdata1[22]), .I1(cmd_rdadctmp[30]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14134));
    defparam i12743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_49 (.I0(cmd_rdadctmp_adj_1514[15]), .I1(cmd_rdadctmp_adj_1514[14]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19640));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_49.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_50 (.I0(comm_index[0]), .I1(n17933), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17945));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_adj_50.LUT_INIT = 16'h8888;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n19), 
            .D(comm_state_3__N_27[1]));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i13250_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1435));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13250_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_51 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17945), .O(n10799));
    defparam i1_4_lut_adj_51.LUT_INIT = 16'hc8c0;
    SB_LUT4 i48_4_lut_4_lut (.I0(comm_data_vld), .I1(comm_state[0]), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n25_adj_1243));
    defparam i48_4_lut_4_lut.LUT_INIT = 16'h1d80;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19748));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1917_i8_3_lut (.I0(buf_data2[92]), .I1(buf_adcdata_vdc2[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5049));
    defparam mux_1917_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_53 (.I0(cmd_rdadctmp_adj_1514[14]), .I1(cmd_rdadctmp_adj_1514[13]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19668));
    defparam i12_4_lut_adj_53.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_54 (.I0(cmd_rdadctmp_adj_1514[13]), .I1(cmd_rdadctmp_adj_1514[12]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19636));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_54.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_55 (.I0(comm_state[0]), .I1(comm_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20244));
    defparam i1_2_lut_adj_55.LUT_INIT = 16'h2222;
    SB_LUT4 i9023_3_lut (.I0(n5049), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12747));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9023_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n22), 
            .D(comm_state_3__N_27[3]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_8__N_326[1]));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_56 (.I0(cmd_rdadctmp_adj_1514[12]), .I1(cmd_rdadctmp_adj_1514[11]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19634));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 i12311_3_lut (.I0(buf_adcdata1[23]), .I1(cmd_rdadctmp[31]), 
            .I2(n9642), .I3(M_MOSI4), .O(n14135));
    defparam i12311_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17847 (.I0(comm_index[0]), .I1(\comm_buf[10] [4]), 
            .I2(\comm_buf[11] [4]), .I3(comm_index[1]), .O(n21623));
    defparam comm_index_0__bdd_4_lut_17847.LUT_INIT = 16'he4aa;
    SB_LUT4 i14567_3_lut (.I0(buf_data2[36]), .I1(buf_adcdata_vdc2[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18238));   // zimaux_main.vhd(241[9:17])
    defparam i14567_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[3]), .O(n13));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hbe0c;
    SB_LUT4 i14568_3_lut (.I0(n18238), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12743));   // zimaux_main.vhd(239[9:19])
    defparam i14568_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14565_3_lut (.I0(buf_data2[40]), .I1(buf_adcdata_vdc2[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18236));   // zimaux_main.vhd(241[9:17])
    defparam i14565_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10411_3_lut (.I0(buf_adcdata2[1]), .I1(cmd_rdadctmp_adj_1468[9]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14136));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14566_3_lut (.I0(n18236), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12714));   // zimaux_main.vhd(239[9:19])
    defparam i14566_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17603_4_lut (.I0(comm_state[3]), .I1(comm_state_3__N_403[1]), 
            .I2(n25), .I3(n21), .O(n19));
    defparam i17603_4_lut.LUT_INIT = 16'haeaf;
    SB_LUT4 mux_1909_i4_3_lut (.I0(buf_data2[44]), .I1(buf_adcdata_vdc2[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5021));
    defparam mux_1909_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10412_3_lut (.I0(buf_adcdata2[2]), .I1(cmd_rdadctmp_adj_1468[10]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14137));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10412_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_57 (.I0(buf_dds[14]), .I1(tmp_buf[13]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(tmp_buf_15__N_1174[14]));   // dds_ad9837.vhd(23[9:18])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'h0aca;
    SB_LUT4 i10413_3_lut (.I0(buf_adcdata2[3]), .I1(cmd_rdadctmp_adj_1468[11]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14138));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10413_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21623_bdd_4_lut (.I0(n21623), .I1(\comm_buf[9] [4]), .I2(\comm_buf[8] [4]), 
            .I3(comm_index[1]), .O(n21626));
    defparam n21623_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_428_Mux_1_i8_3_lut (.I0(comm_state_3__N_384[3]), 
            .I1(comm_state_3__N_380[1]), .I2(comm_state[0]), .I3(M_MOSI4), 
            .O(n8_adj_1410));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_1_i8_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 comm_state_3__I_0_428_Mux_1_i15_4_lut (.I0(n21698), .I1(n8_adj_1410), 
            .I2(comm_state[3]), .I3(n8066), .O(comm_state_3__N_27[1]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i8986_3_lut (.I0(n5021), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12710));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8986_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10333_3_lut (.I0(sclk_sync1), .I1(ICE_IOL_17A), .I2(reset_int), 
            .I3(M_MOSI4), .O(n14058));   // spi_slave.vhd(48[3] 92[10])
    defparam i10333_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i10414_3_lut (.I0(buf_adcdata2[4]), .I1(cmd_rdadctmp_adj_1468[12]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14139));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14607_3_lut (.I0(buf_data2[48]), .I1(buf_adcdata_vdc2[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18277));   // zimaux_main.vhd(241[9:17])
    defparam i14607_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14608_3_lut (.I0(n18277), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12706));   // zimaux_main.vhd(239[9:19])
    defparam i14608_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10415_3_lut (.I0(buf_adcdata2[5]), .I1(cmd_rdadctmp_adj_1468[13]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14140));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10415_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_58 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19746));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_58.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_59 (.I0(cmd_rdadctmp_adj_1491[14]), .I1(cmd_rdadctmp_adj_1491[13]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19550));
    defparam i12_4_lut_adj_59.LUT_INIT = 16'hca0a;
    SB_LUT4 i10416_3_lut (.I0(buf_adcdata2[6]), .I1(cmd_rdadctmp_adj_1468[14]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14141));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10416_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14618_3_lut (.I0(buf_data2[52]), .I1(buf_adcdata_vdc2[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5019));   // zimaux_main.vhd(241[9:17])
    defparam i14618_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_60 (.I0(cmd_rdadctmp_adj_1491[13]), .I1(cmd_rdadctmp_adj_1491[12]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19584));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_60.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp_adj_1491[12]), .I1(cmd_rdadctmp_adj_1491[11]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19582));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i8978_3_lut (.I0(n5019), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12702));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8978_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14622_3_lut (.I0(buf_data2[56]), .I1(buf_adcdata_vdc2[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5018));   // zimaux_main.vhd(241[9:17])
    defparam i14622_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8918_3_lut (.I0(n5018), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12642));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8918_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9947_2_lut (.I0(n10841), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13667));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9947_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_62 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17939), .O(n10841));
    defparam i1_4_lut_adj_62.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_1909_i8_3_lut (.I0(buf_data2[60]), .I1(buf_adcdata_vdc2[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5017));
    defparam mux_1909_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10417_3_lut (.I0(buf_adcdata2[7]), .I1(cmd_rdadctmp_adj_1468[15]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14142));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10417_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_63 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19744));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_63.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_64 (.I0(buf_dds[12]), .I1(tmp_buf[11]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(tmp_buf_15__N_1174[12]));   // dds_ad9837.vhd(23[9:18])
    defparam i12_4_lut_adj_64.LUT_INIT = 16'h0aca;
    SB_LUT4 i10418_3_lut (.I0(buf_adcdata2[8]), .I1(cmd_rdadctmp_adj_1468[16]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14143));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_65 (.I0(cmd_rdadctmp_adj_1491[11]), .I1(cmd_rdadctmp_adj_1491[10]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19580));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_65.LUT_INIT = 16'hca0a;
    SB_LUT4 i14581_3_lut (.I0(buf_adcdata2[9]), .I1(cmd_rdadctmp_adj_1468[17]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14144));
    defparam i14581_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8768_3_lut (.I0(n5017), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12492));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8768_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_66 (.I0(cmd_rdadctmp_adj_1491[10]), .I1(cmd_rdadctmp_adj_1491[9]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19578));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_66.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_67 (.I0(cmd_rdadctmp_adj_1491[9]), .I1(cmd_rdadctmp_adj_1491[8]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19576));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_67.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp_adj_1491[8]), .I1(cmd_rdadctmp_adj_1491[7]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19574));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_69 (.I0(cmd_rdadctmp_adj_1491[7]), .I1(cmd_rdadctmp_adj_1491[6]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19572));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_69.LUT_INIT = 16'hca0a;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_8__N_326[2]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_8__N_326[3]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_8__N_326[4]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_8__N_326[5]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_8__N_326[6]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_8__N_326[7]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_8__N_326[8]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[1]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[2]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[3]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[4]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[5]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[6]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[7]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[8]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[9]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[10]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[11]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[12]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[13]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[14]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n11175), 
            .D(data_idxvec_15__N_335[15]));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFNER dc_state_i1 (.Q(dc_state[1]), .C(clk_32MHz), .E(n11315), 
            .D(dc_state_2__N_282[1]), .R(tacadc_rst));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_70 (.I0(cmd_rdadctmp_adj_1491[6]), .I1(cmd_rdadctmp_adj_1491[5]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19570));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_70.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_71 (.I0(eis_state[1]), .I1(M_DCSEL), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n57));
    defparam i1_2_lut_adj_71.LUT_INIT = 16'heeee;
    SB_DFFNER dc_state_i2 (.Q(dc_state[2]), .C(clk_32MHz), .E(n11320), 
            .D(dc_state_2__N_282[2]), .R(tacadc_rst));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i13276_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1392));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13276_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut (.I0(n19010), .I1(n60), .I2(eis_state[1]), .I3(M_MOSI4), 
            .O(n18970));   // zimaux_main.vhd(733[3] 812[10])
    defparam i2_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 i1_2_lut_3_lut_adj_72 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(\comm_buf[0] [4]), .I3(M_MOSI4), .O(n14_adj_1399));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_3_lut_adj_72.LUT_INIT = 16'h1010;
    SB_LUT4 i14580_3_lut (.I0(buf_adcdata2[10]), .I1(cmd_rdadctmp_adj_1468[18]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14145));
    defparam i14580_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17615_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(n8066), 
            .I3(n20323), .O(n9_adj_1461));
    defparam i17615_4_lut.LUT_INIT = 16'hecfd;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n9_adj_1395), 
            .D(eis_state_2__N_279[1]), .R(tacadc_rst));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 mux_1895_i8_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4917), .I3(n4930), .O(n4963));
    defparam mux_1895_i8_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i13248_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1437));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13248_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i10334_4_lut (.I0(eis_end), .I1(eis_state[2]), .I2(tacadc_rst), 
            .I3(n20189), .O(n14059));   // zimaux_main.vhd(733[3] 812[10])
    defparam i10334_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 mux_2011_i2_3_lut (.I0(buf_data2[4]), .I1(buf_adcdata_vdc2[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5413));
    defparam mux_2011_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1858_7_lut (.I0(n14_adj_1435), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n18924), .O(data_idxvec_15__N_335[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i8760_3_lut (.I0(n5413), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12484));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8760_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1858_7 (.CI(n18924), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n18925));
    SB_LUT4 mux_2011_i3_3_lut (.I0(buf_data2[8]), .I1(buf_adcdata_vdc2[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5412));
    defparam mux_2011_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8599_3_lut (.I0(n5412), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12323));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8599_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1858_6_lut (.I0(n14_adj_1392), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n18923), .O(data_idxvec_15__N_335[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1858_6 (.CI(n18923), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n18924));
    SB_LUT4 add_1858_5_lut (.I0(n14_adj_1437), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n18922), .O(data_idxvec_15__N_335[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_2011_i4_3_lut (.I0(buf_data2[12]), .I1(buf_adcdata_vdc2[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5411));
    defparam mux_2011_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9452_3_lut (.I0(n5411), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13177));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9452_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19742));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_LUT4 i10421_3_lut (.I0(buf_adcdata2[11]), .I1(cmd_rdadctmp_adj_1468[19]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14146));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10421_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2011_i5_3_lut (.I0(buf_data2[16]), .I1(buf_adcdata_vdc2[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5410));
    defparam mux_2011_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9426_3_lut (.I0(n5410), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13151));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9426_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1858_5 (.CI(n18922), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n18923));
    SB_LUT4 add_1858_4_lut (.I0(n14_adj_1393), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n18921), .O(data_idxvec_15__N_335[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_74 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19740));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_LUT4 i14624_3_lut (.I0(buf_adcdata2[13]), .I1(cmd_rdadctmp_adj_1468[21]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14148));
    defparam i14624_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1858_4 (.CI(n18921), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n18922));
    SB_LUT4 add_1858_3_lut (.I0(n14_adj_1394), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n18920), .O(data_idxvec_15__N_335[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1858_3 (.CI(n18920), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n18921));
    SB_LUT4 i14621_3_lut (.I0(buf_adcdata2[14]), .I1(cmd_rdadctmp_adj_1468[22]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14149));
    defparam i14621_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2011_i6_3_lut (.I0(buf_data2[20]), .I1(buf_adcdata_vdc2[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5409));
    defparam mux_2011_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9392_3_lut (.I0(n5409), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13117));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9392_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12302_4_lut (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n11821), .I3(adc_state[0]), .O(n14650));
    defparam i12302_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10425_3_lut (.I0(buf_adcdata2[15]), .I1(cmd_rdadctmp_adj_1468[23]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14150));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10425_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1895_i6_3_lut_4_lut (.I0(n7_adj_1259), .I1(n10_adj_1292), 
            .I2(n4919), .I3(n4932), .O(n4965));
    defparam mux_1895_i6_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 mux_2011_i7_3_lut (.I0(buf_data2[24]), .I1(buf_adcdata_vdc2[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5408));
    defparam mux_2011_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10426_3_lut (.I0(buf_adcdata2[16]), .I1(cmd_rdadctmp_adj_1468[24]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14151));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10426_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10427_3_lut (.I0(buf_adcdata2[17]), .I1(cmd_rdadctmp_adj_1468[25]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14152));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10427_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10428_3_lut (.I0(buf_adcdata2[18]), .I1(cmd_rdadctmp_adj_1468[26]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14153));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10428_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNER eis_state_i2 (.Q(eis_state[2]), .C(clk_32MHz), .E(n20301), 
            .D(eis_state_2__N_279[2]), .R(tacadc_rst));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 comm_index_0__bdd_4_lut_17842 (.I0(comm_index[0]), .I1(\comm_buf[10] [3]), 
            .I2(\comm_buf[11] [3]), .I3(comm_index[1]), .O(n21617));
    defparam comm_index_0__bdd_4_lut_17842.LUT_INIT = 16'he4aa;
    SB_LUT4 i8914_3_lut (.I0(n5408), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12638));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8914_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10335_3_lut (.I0(sclk_sync2), .I1(sclk_sync1), .I2(reset_int), 
            .I3(M_MOSI4), .O(n14060));   // spi_slave.vhd(48[3] 92[10])
    defparam i10335_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i12_4_lut_adj_75 (.I0(cmd_rdadctmp_adj_1491[5]), .I1(cmd_rdadctmp_adj_1491[4]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19568));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_75.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1491[4]), .I1(cmd_rdadctmp_adj_1491[3]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19566));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 i13274_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1393));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13274_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_77 (.I0(cmd_rdadctmp_adj_1491[3]), .I1(cmd_rdadctmp_adj_1491[2]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19564));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_77.LUT_INIT = 16'hca0a;
    SB_LUT4 i2211_2_lut_3_lut (.I0(comm_index[0]), .I1(comm_data_vld), .I2(comm_state_3__N_403[1]), 
            .I3(M_MOSI4), .O(comm_index_3__N_411[0]));   // zimaux_main.vhd(607[5] 617[12])
    defparam i2211_2_lut_3_lut.LUT_INIT = 16'ha6a6;
    SB_LUT4 i10429_3_lut (.I0(buf_adcdata2[19]), .I1(cmd_rdadctmp_adj_1468[27]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14154));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10429_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_78 (.I0(buf_adcdata_vdc1[22]), .I1(buf_adcdata1[22]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19388));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_78.LUT_INIT = 16'hca0a;
    SB_LUT4 i13275_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1394));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13275_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i10430_3_lut (.I0(buf_adcdata2[20]), .I1(cmd_rdadctmp_adj_1468[28]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14155));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10430_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10431_3_lut (.I0(buf_adcdata2[21]), .I1(cmd_rdadctmp_adj_1468[29]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14156));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10431_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21617_bdd_4_lut (.I0(n21617), .I1(\comm_buf[9] [3]), .I2(\comm_buf[8] [3]), 
            .I3(comm_index[1]), .O(n21620));
    defparam n21617_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_79 (.I0(cmd_rdadctmp_adj_1491[19]), .I1(cmd_rdadctmp_adj_1491[18]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19724));
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17891 (.I0(comm_cmd[0]), .I1(data_cntvec[2]), 
            .I2(acadc_skipCount[2]), .I3(n5147), .O(n21611));
    defparam comm_cmd_0__bdd_4_lut_17891.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp_adj_1491[20]), .I1(cmd_rdadctmp_adj_1491[19]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19722));
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 n21611_bdd_4_lut (.I0(n21611), .I1(buf_dds[2]), .I2(req_data_cnt[2]), 
            .I3(n5147), .O(n21614));
    defparam n21611_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp_adj_1491[21]), .I1(cmd_rdadctmp_adj_1491[20]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19538));
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_82 (.I0(cmd_rdadctmp_adj_1491[23]), .I1(cmd_rdadctmp_adj_1491[22]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19720));
    defparam i12_4_lut_adj_82.LUT_INIT = 16'hca0a;
    SB_LUT4 i22_3_lut_4_lut_4_lut (.I0(comm_cmd[2]), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[3]), .O(n7_adj_1445));
    defparam i22_3_lut_4_lut_4_lut.LUT_INIT = 16'hba0c;
    SB_LUT4 i13266_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1400));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13266_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_index[2]), .I1(comm_state[0]), .I2(comm_index[3]), 
            .I3(n17920), .O(n17923));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'h1000;
    SPI_SLAVE comm_spi (.comm_data_vld(comm_data_vld), .\comm_state_3__N_403[1] (comm_state_3__N_403[1]), 
            .n1(n1_adj_1460), .GND_net(M_MOSI4), .\comm_index[1] (comm_index[1]), 
            .n20543(n20543), .n20544(n20544), .\comm_index[3] (comm_index[3]), 
            .n20523(n20523), .n20522(n20522), .clk_32MHz(clk_32MHz), .reset_int(reset_int), 
            .comm_tx_buf({comm_tx_buf}), .n5575(n5575), .sclk_sync1(sclk_sync1), 
            .sclk_sync2(sclk_sync2), .comm_rx_buf({comm_rx_buf}), .n21536(n21536), 
            .\comm_index[2] (comm_index[2]), .n19756(n19756), .VCC_net(VCC_net), 
            .\comm_cmd[7] (comm_cmd[7]), .n17920(n17920), .ICE_SPI_MISO(ICE_SPI_MISO), 
            .n21668(n21668), .n21554(n21554), .n21548(n21548), .n524(n524), 
            .n14060(n14060), .n14058(n14058), .n14043(n14043));   // zimaux_main.vhd(827[13:22])
    SB_LUT4 i12_4_lut_adj_83 (.I0(cmd_rdadctmp_adj_1491[22]), .I1(cmd_rdadctmp_adj_1491[21]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19596));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1858_2_lut (.I0(M_MOSI4), .I1(data_idxvec[0]), .I2(n369), 
            .I3(M_MOSI4), .O(data_idxvec_15__N_653[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1858_2 (.CI(M_MOSI4), .I0(data_idxvec[0]), .I1(n369), 
            .CO(n18920));
    SB_LUT4 i1_2_lut_adj_84 (.I0(comm_index[0]), .I1(comm_index[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20200));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_adj_84.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_85 (.I0(buf_adcdata_vdc1[21]), .I1(buf_adcdata1[21]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19386));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_85.LUT_INIT = 16'hca0a;
    SB_LUT4 i10432_3_lut (.I0(buf_adcdata2[22]), .I1(cmd_rdadctmp_adj_1468[30]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14157));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10432_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9954_2_lut (.I0(n10883), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13674));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9954_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_86 (.I0(n5), .I1(n20056), .I2(n20000), .I3(n20200), 
            .O(n10883));
    defparam i1_4_lut_adj_86.LUT_INIT = 16'hc8c0;
    SB_LUT4 i12249_3_lut (.I0(buf_adcdata2[23]), .I1(cmd_rdadctmp_adj_1468[31]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14158));
    defparam i12249_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2011_i8_3_lut (.I0(buf_data2[28]), .I1(buf_adcdata_vdc2[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5407));
    defparam mux_2011_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_87 (.I0(cmd_rdadctmp_adj_1491[1]), .I1(cmd_rdadctmp_adj_1491[0]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19556));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_88 (.I0(buf_adcdata_vdc1[20]), .I1(buf_adcdata1[20]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19384));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_89 (.I0(cmd_rdadctmp_adj_1468[30]), .I1(cmd_rdadctmp_adj_1468[29]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19542));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SB_LUT4 i8780_3_lut (.I0(n5407), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12504));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8780_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14815_3_lut (.I0(buf_data2[69]), .I1(buf_adcdata_vdc3[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18481));   // zimaux_main.vhd(241[9:17])
    defparam i14815_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10434_3_lut (.I0(buf_adcdata3[1]), .I1(cmd_rdadctmp_adj_1491[9]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14159));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10434_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14816_3_lut (.I0(n18481), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12319));   // zimaux_main.vhd(239[9:19])
    defparam i14816_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10435_3_lut (.I0(buf_adcdata3[2]), .I1(cmd_rdadctmp_adj_1491[10]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14160));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10435_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(comm_index[2]), .I1(comm_state[0]), 
            .I2(n17920), .I3(comm_index[3]), .O(n17933));
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'h0010;
    SB_LUT4 i14833_3_lut (.I0(buf_data2[73]), .I1(buf_adcdata_vdc3[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5380));   // zimaux_main.vhd(241[9:17])
    defparam i14833_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17837 (.I0(comm_index[0]), .I1(\comm_buf[6] [2]), 
            .I2(\comm_buf[7] [2]), .I3(comm_index[1]), .O(n21605));
    defparam comm_index_0__bdd_4_lut_17837.LUT_INIT = 16'he4aa;
    SB_LUT4 i9149_3_lut (.I0(n5380), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12874));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9149_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_90 (.I0(buf_adcdata_vdc1[19]), .I1(buf_adcdata1[19]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19382));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_90.LUT_INIT = 16'hca0a;
    SB_LUT4 n21605_bdd_4_lut (.I0(n21605), .I1(\comm_buf[5] [2]), .I2(\comm_buf[4] [2]), 
            .I3(comm_index[1]), .O(n21608));
    defparam n21605_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10436_3_lut (.I0(buf_adcdata3[3]), .I1(cmd_rdadctmp_adj_1491[11]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14161));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10436_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_91 (.I0(buf_data2[77]), .I1(buf_adcdata_vdc3[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1464));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_91.LUT_INIT = 16'hcaca;
    SB_LUT4 i10437_3_lut (.I0(buf_adcdata3[4]), .I1(cmd_rdadctmp_adj_1491[12]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14162));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10437_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_92 (.I0(n1_adj_1464), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12870));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_92.LUT_INIT = 16'hcaca;
    SB_LUT4 i14861_3_lut (.I0(buf_data2[81]), .I1(buf_adcdata_vdc3[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18526));   // zimaux_main.vhd(241[9:17])
    defparam i14861_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp_adj_1514[11]), .I1(cmd_rdadctmp_adj_1514[10]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19632));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_94 (.I0(buf_adcdata_vdc1[18]), .I1(buf_adcdata1[18]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19380));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_94.LUT_INIT = 16'hca0a;
    SB_LUT4 i14862_3_lut (.I0(n18526), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12862));   // zimaux_main.vhd(239[9:19])
    defparam i14862_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_95 (.I0(buf_adcdata_vdc1[17]), .I1(buf_adcdata1[17]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19378));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_LUT4 i14859_3_lut (.I0(buf_data2[85]), .I1(buf_adcdata_vdc3[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18524));   // zimaux_main.vhd(241[9:17])
    defparam i14859_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14860_3_lut (.I0(n18524), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12858));   // zimaux_main.vhd(239[9:19])
    defparam i14860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_96 (.I0(buf_adcdata_vdc1[15]), .I1(buf_adcdata1[15]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19374));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_2003_i7_3_lut (.I0(buf_data2[89]), .I1(buf_adcdata_vdc3[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5376));
    defparam mux_2003_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9121_3_lut (.I0(n5376), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12846));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9121_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_97 (.I0(buf_adcdata_vdc1[14]), .I1(buf_adcdata1[14]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19372));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_97.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_98 (.I0(comm_index[0]), .I1(n5), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17939));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_adj_98.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_99 (.I0(buf_adcdata_vdc1[13]), .I1(buf_adcdata1[13]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19370));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_99.LUT_INIT = 16'hca0a;
    SB_LUT4 i9961_2_lut (.I0(n10925), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13681));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9961_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_3_lut_3_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n10545));
    defparam i1_3_lut_3_lut_4_lut_4_lut.LUT_INIT = 16'ha9e8;
    SB_LUT4 i2_3_lut_4_lut_adj_100 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[4]), .I3(n15_adj_1255), .O(n20158));
    defparam i2_3_lut_4_lut_adj_100.LUT_INIT = 16'h1000;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp_adj_1491[31]), .I1(cmd_rdadctmp_adj_1491[30]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19604));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_102 (.I0(cmd_rdadctmp_adj_1514[1]), .I1(cmd_rdadctmp_adj_1514[0]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19606));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_102.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_103 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17939), .O(n10925));
    defparam i1_4_lut_adj_103.LUT_INIT = 16'hc8c0;
    SB_LUT4 i40_3_lut_4_lut_4_lut (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(comm_data_vld), .O(n21));
    defparam i40_3_lut_4_lut_4_lut.LUT_INIT = 16'h0830;
    SB_LUT4 i12_4_lut_adj_104 (.I0(buf_adcdata_vdc1[12]), .I1(buf_adcdata1[12]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19368));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_104.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_3_lut_4_lut (.I0(comm_cmd[6]), .I1(comm_cmd[5]), .I2(n20221), 
            .I3(n7), .O(n6074));
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i12919_3_lut (.I0(buf_data2[93]), .I1(buf_adcdata_vdc3[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5375));   // zimaux_main.vhd(241[9:17])
    defparam i12919_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9113_3_lut (.I0(n5375), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12838));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9113_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_105 (.I0(buf_adcdata_vdc1[11]), .I1(buf_adcdata1[11]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19366));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_105.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_106 (.I0(buf_adcdata_vdc1[10]), .I1(buf_adcdata1[10]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19364));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_107 (.I0(buf_adcdata_vdc1[9]), .I1(buf_adcdata1[9]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19362));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_108 (.I0(buf_adcdata_vdc1[8]), .I1(buf_adcdata1[8]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19360));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_108.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1995_i2_3_lut (.I0(buf_data2[37]), .I1(buf_adcdata_vdc3[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5349));
    defparam mux_1995_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9107_3_lut (.I0(n5349), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12831));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9107_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17832 (.I0(comm_cmd[0]), .I1(data_cntvec[3]), 
            .I2(acadc_skipCount[3]), .I3(n5147), .O(n21599));
    defparam comm_cmd_0__bdd_4_lut_17832.LUT_INIT = 16'he4aa;
    SB_LUT4 add_1860_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n9699), 
            .I3(n18919), .O(n7_adj_1411)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_1860_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n9699), 
            .I3(n18918), .O(n7_adj_1413)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1860_9 (.CI(n18918), .I0(data_index[7]), .I1(n9699), 
            .CO(n18919));
    SB_LUT4 add_1860_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n9699), 
            .I3(n18917), .O(n7_adj_1415)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1860_8 (.CI(n18917), .I0(data_index[6]), .I1(n9699), 
            .CO(n18918));
    SB_LUT4 add_1860_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n9699), 
            .I3(n18916), .O(n7_adj_1424)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1860_7 (.CI(n18916), .I0(data_index[5]), .I1(n9699), 
            .CO(n18917));
    SB_LUT4 add_1860_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n9699), 
            .I3(n18915), .O(n7_adj_1427)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1860_6 (.CI(n18915), .I0(data_index[4]), .I1(n9699), 
            .CO(n18916));
    SB_LUT4 n21599_bdd_4_lut (.I0(n21599), .I1(buf_dds[3]), .I2(req_data_cnt[3]), 
            .I3(n5147), .O(n21602));
    defparam n21599_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10337_2_lut (.I0(drdy_sync2), .I1(drdy_prev), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n14062));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10337_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_3_lut_adj_109 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[4]), .I3(M_MOSI4), .O(n10082));
    defparam i1_2_lut_3_lut_adj_109.LUT_INIT = 16'h1010;
    SB_LUT4 i3_4_lut_adj_110 (.I0(acadc_dtrigH), .I1(eis_state[1]), .I2(tacadc_rst), 
            .I3(n20203), .O(raw_buf1_N_950));   // zimaux_main.vhd(733[3] 812[10])
    defparam i3_4_lut_adj_110.LUT_INIT = 16'h0800;
    SB_LUT4 i14727_3_lut (.I0(buf_data2[41]), .I1(buf_adcdata_vdc3[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18395));   // zimaux_main.vhd(241[9:17])
    defparam i14727_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14728_3_lut (.I0(n18395), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12815));   // zimaux_main.vhd(239[9:19])
    defparam i14728_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14743_3_lut (.I0(buf_data2[45]), .I1(buf_adcdata_vdc3[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5347));   // zimaux_main.vhd(241[9:17])
    defparam i14743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9056_3_lut (.I0(n5347), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12780));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13085_4_lut (.I0(buf_adcdata_vdc1[7]), .I1(buf_adcdata1[7]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14702));
    defparam i13085_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut_adj_111 (.I0(buf_data2[49]), .I1(buf_adcdata_vdc3[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1242));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_111.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_112 (.I0(buf_adcdata_vdc1[6]), .I1(buf_adcdata1[6]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19358));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_112.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_3_lut_adj_113 (.I0(n1_adj_1242), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12772));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_113.LUT_INIT = 16'hcaca;
    SB_LUT4 i15127_4_lut (.I0(buf_adcdata_vdc1[5]), .I1(buf_adcdata1[5]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14708));
    defparam i15127_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1995_i6_3_lut (.I0(buf_data2[53]), .I1(buf_adcdata_vdc3[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5345));
    defparam mux_1995_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9031_3_lut (.I0(n5345), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12755));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9031_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_114 (.I0(buf_adcdata_vdc1[4]), .I1(buf_adcdata1[4]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19356));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_115 (.I0(buf_adcdata_vdc1[3]), .I1(buf_adcdata1[3]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19354));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_115.LUT_INIT = 16'hca0a;
    SB_LUT4 i14771_3_lut (.I0(buf_data2[57]), .I1(buf_adcdata_vdc3[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18438));   // zimaux_main.vhd(241[9:17])
    defparam i14771_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17822 (.I0(comm_cmd[0]), .I1(data_cntvec[4]), 
            .I2(acadc_skipCount[4]), .I3(n5147), .O(n21593));
    defparam comm_cmd_0__bdd_4_lut_17822.LUT_INIT = 16'he4aa;
    SB_LUT4 i15083_4_lut (.I0(buf_adcdata_vdc1[2]), .I1(buf_adcdata1[2]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14717));
    defparam i15083_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14772_3_lut (.I0(n18438), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12739));   // zimaux_main.vhd(239[9:19])
    defparam i14772_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_116 (.I0(buf_adcdata_vdc1[1]), .I1(buf_adcdata1[1]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19352));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_116.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_444_Mux_8_i15_4_lut (.I0(n7_adj_1411), .I1(n8_adj_1412), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[8]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i13265_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1401));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13265_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_117 (.I0(buf_adcdata_vdc4[23]), .I1(buf_adcdata4[23]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19350));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_117.LUT_INIT = 16'hca0a;
    SB_LUT4 i13264_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1403));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13264_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i13263_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1404));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13263_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12_4_lut_adj_118 (.I0(buf_adcdata_vdc4[22]), .I1(buf_adcdata4[22]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19348));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_118.LUT_INIT = 16'hca0a;
    SB_LUT4 i12831_3_lut (.I0(buf_adcdata3[5]), .I1(cmd_rdadctmp_adj_1491[13]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14163));
    defparam i12831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9968_2_lut (.I0(n10967), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13688));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9968_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i15041_4_lut (.I0(buf_adcdata_vdc4[21]), .I1(buf_adcdata4[21]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14730));
    defparam i15041_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10439_3_lut (.I0(buf_adcdata3[6]), .I1(cmd_rdadctmp_adj_1491[14]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14164));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10439_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15049_4_lut (.I0(buf_adcdata_vdc4[20]), .I1(buf_adcdata4[20]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14733));
    defparam i15049_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10440_3_lut (.I0(buf_adcdata3[7]), .I1(cmd_rdadctmp_adj_1491[15]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14165));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10440_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13040_4_lut (.I0(buf_adcdata_vdc4[19]), .I1(buf_adcdata4[19]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14736));
    defparam i13040_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_2_lut (.I0(comm_index[1]), .I1(comm_index[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6_adj_1372));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10441_3_lut (.I0(buf_adcdata3[8]), .I1(cmd_rdadctmp_adj_1491[16]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14166));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10441_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_119 (.I0(n5), .I1(n20056), .I2(n20000), .I3(n6_adj_1372), 
            .O(n10967));
    defparam i1_4_lut_adj_119.LUT_INIT = 16'hc8c0;
    SB_LUT4 i14789_3_lut (.I0(buf_data2[61]), .I1(buf_adcdata_vdc3[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5343));   // zimaux_main.vhd(241[9:17])
    defparam i14789_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8998_3_lut (.I0(n5343), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12722));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8998_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_120 (.I0(buf_adcdata_vdc4[18]), .I1(buf_adcdata4[18]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19346));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1987_i2_3_lut (.I0(buf_data2[5]), .I1(buf_adcdata_vdc3[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5317));
    defparam mux_1987_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10442_3_lut (.I0(buf_adcdata3[9]), .I1(cmd_rdadctmp_adj_1491[17]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14167));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10442_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14747_3_lut (.I0(buf_adcdata3[10]), .I1(cmd_rdadctmp_adj_1491[18]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14168));
    defparam i14747_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8994_3_lut (.I0(n5317), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12718));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1987_i3_3_lut (.I0(buf_data2[9]), .I1(buf_adcdata_vdc3[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5316));
    defparam mux_1987_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21593_bdd_4_lut (.I0(n21593), .I1(buf_dds[4]), .I2(req_data_cnt[4]), 
            .I3(n5147), .O(n21596));
    defparam n21593_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_121 (.I0(cmd_rdadctmp_adj_1514[9]), .I1(cmd_rdadctmp_adj_1514[8]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19626));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'hca0a;
    SB_LUT4 i8974_3_lut (.I0(n5316), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12698));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8974_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1987_i4_3_lut (.I0(buf_data2[13]), .I1(buf_adcdata_vdc3[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5315));
    defparam mux_1987_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8970_3_lut (.I0(n5315), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12694));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8970_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10339_2_lut (.I0(drdy_sync2_adj_1289), .I1(drdy_prev_adj_1290), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14064));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10339_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i14742_3_lut (.I0(buf_adcdata3[11]), .I1(cmd_rdadctmp_adj_1491[19]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14169));
    defparam i14742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14995_4_lut (.I0(buf_adcdata_vdc4[17]), .I1(buf_adcdata4[17]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14743));
    defparam i14995_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12876_3_lut (.I0(buf_adcdata3[12]), .I1(cmd_rdadctmp_adj_1491[20]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14170));
    defparam i12876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_122 (.I0(buf_adcdata_vdc4[16]), .I1(buf_adcdata4[16]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19344));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_123 (.I0(comm_cmd[3]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n15_adj_1255));   // zimaux_main.vhd(501[5] 583[14])
    defparam i1_4_lut_adj_123.LUT_INIT = 16'habfa;
    SB_LUT4 i10377_3_lut_4_lut (.I0(req_data_cnt[5]), .I1(\comm_buf[1] [5]), 
            .I2(n8066), .I3(n11312), .O(n14102));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10377_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_1987_i5_3_lut (.I0(buf_data2[17]), .I1(buf_adcdata_vdc3[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5314));
    defparam mux_1987_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1871_i3_3_lut (.I0(buf_dds[10]), .I1(buf_adcdata_vdc1[18]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4896));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1871_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21539_bdd_4_lut (.I0(n21539), .I1(\comm_buf[5] [7]), .I2(\comm_buf[4] [7]), 
            .I3(comm_index[1]), .O(n21542));
    defparam n21539_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_0__bdd_4_lut_17773 (.I0(comm_index[0]), .I1(\comm_buf[6] [6]), 
            .I2(\comm_buf[7] [6]), .I3(comm_index[1]), .O(n21533));
    defparam comm_index_0__bdd_4_lut_17773.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_3_lut_adj_124 (.I0(n9), .I1(comm_state[0]), .I2(n12), 
            .I3(M_MOSI4), .O(n7936));   // zimaux_main.vhd(448[4] 687[13])
    defparam i1_2_lut_3_lut_adj_124.LUT_INIT = 16'hfefe;
    SB_LUT4 i8966_3_lut (.I0(n5314), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12690));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21533_bdd_4_lut (.I0(n21533), .I1(\comm_buf[5] [6]), .I2(\comm_buf[4] [6]), 
            .I3(comm_index[1]), .O(n21536));
    defparam n21533_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17797 (.I0(comm_cmd[0]), .I1(data_cntvec[10]), 
            .I2(n4896), .I3(n4961), .O(n21527));
    defparam comm_cmd_0__bdd_4_lut_17797.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17817 (.I0(comm_cmd[0]), .I1(data_cntvec[5]), 
            .I2(acadc_skipCount[5]), .I3(n5147), .O(n21587));
    defparam comm_cmd_0__bdd_4_lut_17817.LUT_INIT = 16'he4aa;
    SB_LUT4 i5_3_lut_adj_125 (.I0(buf_data2[21]), .I1(buf_adcdata_vdc3[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1457));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_125.LUT_INIT = 16'hcaca;
    SB_LUT4 i17612_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(n20323), .I3(M_MOSI4), .O(n20427));
    defparam i17612_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 i6_3_lut_adj_126 (.I0(n1_adj_1457), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12678));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_126.LUT_INIT = 16'hcaca;
    SB_LUT4 i14745_3_lut (.I0(buf_adcdata3[13]), .I1(cmd_rdadctmp_adj_1491[21]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14171));
    defparam i14745_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1987_i7_3_lut (.I0(buf_data2[25]), .I1(buf_adcdata_vdc3[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5312));
    defparam mux_1987_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut (.I0(dc_state[1]), .I1(n10), .I2(dc_state[2]), 
            .I3(dc_state[0]), .O(n4_adj_1436));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'h5dfd;
    SB_LUT4 i14791_3_lut (.I0(buf_adcdata3[14]), .I1(cmd_rdadctmp_adj_1491[22]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14172));
    defparam i14791_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8926_3_lut (.I0(n5312), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12650));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8926_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14788_3_lut (.I0(buf_adcdata3[15]), .I1(cmd_rdadctmp_adj_1491[23]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14173));
    defparam i14788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14787_3_lut (.I0(buf_adcdata3[16]), .I1(cmd_rdadctmp_adj_1491[24]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14174));
    defparam i14787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9975_2_lut (.I0(n11009), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13695));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9975_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_127 (.I0(buf_adcdata_vdc4[15]), .I1(buf_adcdata4[15]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19342));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_127.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_128 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17943), .O(n11009));
    defparam i1_4_lut_adj_128.LUT_INIT = 16'hc4c0;
    SB_LUT4 i10376_3_lut_4_lut (.I0(req_data_cnt[4]), .I1(\comm_buf[1] [4]), 
            .I2(n8066), .I3(n11312), .O(n14101));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10376_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp_adj_1514[16]), .I1(cmd_rdadctmp_adj_1514[15]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19670));
    defparam i12_4_lut_adj_129.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(n4744), 
            .I3(comm_state[0]), .O(comm_clear_N_914));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'hf111;
    SB_LUT4 mux_1987_i8_3_lut (.I0(buf_data2[29]), .I1(buf_adcdata_vdc3[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5311));
    defparam mux_1987_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10375_3_lut_4_lut (.I0(req_data_cnt[3]), .I1(\comm_buf[1] [3]), 
            .I2(n8066), .I3(n11312), .O(n14100));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10375_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_130 (.I0(cmd_rdadctmp_adj_1468[29]), .I1(cmd_rdadctmp_adj_1468[28]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19536));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_131 (.I0(cmd_rdadctmp_adj_1468[28]), .I1(cmd_rdadctmp_adj_1468[27]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19506));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_131.LUT_INIT = 16'hca0a;
    SB_LUT4 i10374_3_lut_4_lut (.I0(req_data_cnt[2]), .I1(\comm_buf[1] [2]), 
            .I2(n8066), .I3(n11312), .O(n14099));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10374_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i14835_3_lut (.I0(buf_adcdata3[17]), .I1(cmd_rdadctmp_adj_1491[25]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14175));
    defparam i14835_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8922_3_lut (.I0(n5311), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12646));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8922_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14832_3_lut (.I0(buf_adcdata3[18]), .I1(cmd_rdadctmp_adj_1491[26]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14176));
    defparam i14832_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14991_3_lut (.I0(buf_data2[70]), .I1(buf_adcdata_vdc4[17]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18653));   // zimaux_main.vhd(241[9:17])
    defparam i14991_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14992_3_lut (.I0(n18653), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12607));   // zimaux_main.vhd(239[9:19])
    defparam i14992_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15009_3_lut (.I0(buf_data2[74]), .I1(buf_adcdata_vdc4[18]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5284));   // zimaux_main.vhd(241[9:17])
    defparam i15009_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8764_3_lut (.I0(n5284), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12488));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8764_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_132 (.I0(buf_data2[78]), .I1(buf_adcdata_vdc4[19]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1375));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_132.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_133 (.I0(n1_adj_1375), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12480));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_133.LUT_INIT = 16'hcaca;
    SB_LUT4 i15037_3_lut (.I0(buf_data2[82]), .I1(buf_adcdata_vdc4[20]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18698));   // zimaux_main.vhd(241[9:17])
    defparam i15037_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15038_3_lut (.I0(n18698), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12472));   // zimaux_main.vhd(239[9:19])
    defparam i15038_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_134 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20289));
    defparam i1_2_lut_3_lut_adj_134.LUT_INIT = 16'hefef;
    SB_LUT4 i10373_3_lut_4_lut (.I0(req_data_cnt[1]), .I1(\comm_buf[1] [1]), 
            .I2(n8066), .I3(n11312), .O(n14098));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10373_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_3_lut_adj_135 (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_falling_pend_N_900), 
            .I3(M_MOSI4), .O(n10136));   // zimaux_main.vhd(439[8:37])
    defparam i1_2_lut_3_lut_adj_135.LUT_INIT = 16'h4f4f;
    SB_LUT4 i12_4_lut_adj_136 (.I0(cmd_rdadctmp_adj_1514[17]), .I1(cmd_rdadctmp_adj_1514[16]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19642));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_136.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp_adj_1514[20]), .I1(cmd_rdadctmp_adj_1514[19]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19702));
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i15035_3_lut (.I0(buf_data2[86]), .I1(buf_adcdata_vdc4[21]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18696));   // zimaux_main.vhd(241[9:17])
    defparam i15035_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp_adj_1514[19]), .I1(cmd_rdadctmp_adj_1514[18]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19704));
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1860_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n9699), 
            .I3(n18914), .O(n7_adj_1429)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_5_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i3_4_lut_adj_139 (.I0(comm_data_vld), .I1(comm_state_3__N_403[1]), 
            .I2(comm_state[0]), .I3(n20000), .O(n20001));
    defparam i3_4_lut_adj_139.LUT_INIT = 16'hfffe;
    SB_LUT4 i10372_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n8066), .I3(n11282), .O(n14097));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10372_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_140 (.I0(cmd_rdadctmp_adj_1468[26]), .I1(cmd_rdadctmp_adj_1468[25]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19468));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_140.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp_adj_1468[25]), .I1(cmd_rdadctmp_adj_1468[24]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19464));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_142 (.I0(cmd_rdadctmp_adj_1514[18]), .I1(cmd_rdadctmp_adj_1514[17]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19644));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_142.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_143 (.I0(n20001), .I1(cs_falling_pend_N_906), .I2(n6_adj_1444), 
            .I3(comm_state[0]), .O(n4_adj_1454));
    defparam i1_4_lut_adj_143.LUT_INIT = 16'ha8aa;
    SB_LUT4 i2_4_lut_adj_144 (.I0(comm_state_3__N_403[1]), .I1(n4_adj_1454), 
            .I2(n20310), .I3(comm_state[0]), .O(n20312));
    defparam i2_4_lut_adj_144.LUT_INIT = 16'hc8cc;
    SB_LUT4 i1_2_lut_adj_145 (.I0(eis_state[0]), .I1(eis_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20203));   // zimaux_main.vhd(733[3] 812[10])
    defparam i1_2_lut_adj_145.LUT_INIT = 16'h2222;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(comm_state[2]), 
            .I3(M_MOSI4), .O(n6_adj_1444));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_3_lut_4_lut_adj_146 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(n20232), .I3(n21_adj_1462), .O(n10633));
    defparam i1_3_lut_4_lut_adj_146.LUT_INIT = 16'hf0b0;
    SB_LUT4 i12921_3_lut (.I0(buf_adcdata3[19]), .I1(cmd_rdadctmp_adj_1491[27]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14177));
    defparam i12921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17465_4_lut (.I0(n19010), .I1(eis_state[2]), .I2(n51), .I3(eis_state[0]), 
            .O(n20685));
    defparam i17465_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd_rdadctmp_adj_1514[10]), .I1(cmd_rdadctmp_adj_1514[9]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19628));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 i17455_3_lut (.I0(comm_state[1]), .I1(n7_adj_1256), .I2(comm_cmd[7]), 
            .I3(M_MOSI4), .O(n21212));
    defparam i17455_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i24_4_lut_adj_148 (.I0(n20203), .I1(n20685), .I2(eis_state[1]), 
            .I3(M_DCSEL), .O(n9_adj_1395));
    defparam i24_4_lut_adj_148.LUT_INIT = 16'h353f;
    SB_LUT4 i12_4_lut_adj_149 (.I0(cmd_rdadctmp_adj_1514[25]), .I1(cmd_rdadctmp_adj_1514[24]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19648));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_149.LUT_INIT = 16'hca0a;
    SB_LUT4 i16690_3_lut (.I0(comm_state[0]), .I1(comm_state_3__N_403[1]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n20447));
    defparam i16690_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 i12_4_lut_adj_150 (.I0(cmd_rdadctmp_adj_1514[26]), .I1(cmd_rdadctmp_adj_1514[25]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19696));
    defparam i12_4_lut_adj_150.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_151 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(n20232), .I3(n18_adj_1449), .O(n10715));
    defparam i1_3_lut_4_lut_adj_151.LUT_INIT = 16'hf0b0;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp_adj_1514[29]), .I1(cmd_rdadctmp_adj_1514[28]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19692));
    defparam i12_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp_adj_1514[28]), .I1(cmd_rdadctmp_adj_1514[27]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19466));
    defparam i12_4_lut_adj_153.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp_adj_1514[27]), .I1(cmd_rdadctmp_adj_1514[26]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19694));
    defparam i12_4_lut_adj_154.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_155 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n20000));
    defparam i1_2_lut_3_lut_adj_155.LUT_INIT = 16'hbfbf;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp_adj_1468[24]), .I1(cmd_rdadctmp_adj_1468[23]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19462));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i16692_4_lut (.I0(n20447), .I1(n21212), .I2(comm_state[2]), 
            .I3(n6483), .O(n20449));
    defparam i16692_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i17490_2_lut_3_lut (.I0(n15_adj_1255), .I1(n10082), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n20882));   // zimaux_main.vhd(501[5] 583[14])
    defparam i17490_2_lut_3_lut.LUT_INIT = 16'hf7f7;
    SB_LUT4 i1_4_lut_4_lut_adj_157 (.I0(eis_state[0]), .I1(eis_state[2]), 
            .I2(n57), .I3(n18970), .O(n20189));
    defparam i1_4_lut_4_lut_adj_157.LUT_INIT = 16'hdf13;
    SB_LUT4 i15036_3_lut (.I0(n18696), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12315));   // zimaux_main.vhd(239[9:19])
    defparam i15036_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10341_2_lut (.I0(drdy_sync2_adj_1329), .I1(drdy_prev_adj_1330), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14066));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10341_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i14881_3_lut (.I0(buf_adcdata3[20]), .I1(cmd_rdadctmp_adj_1491[28]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14178));
    defparam i14881_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1881_i1_3_lut (.I0(req_data_cnt[8]), .I1(buf_data2[67]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4924));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1886_i1_3_lut (.I0(buf_control[0]), .I1(M_OSR0), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4937));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16672_2_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(comm_state[2]), .O(n20429));
    defparam i16672_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_1877_i1_3_lut (.I0(acadc_skipCount[8]), .I1(eis_start_cmd), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4912));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1877_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_428_Mux_0_i15_4_lut (.I0(n20449), .I1(comm_state[1]), 
            .I2(comm_state[3]), .I3(comm_state[2]), .O(comm_state_3__N_27[0]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_0_i15_4_lut.LUT_INIT = 16'h0a3a;
    SB_LUT4 mux_1979_i7_3_lut (.I0(buf_data2[90]), .I1(buf_adcdata_vdc4[22]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5280));
    defparam mux_1979_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9484_3_lut (.I0(n5280), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13209));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9484_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9982_2_lut (.I0(n11051), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13702));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9982_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_158 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17924), .O(n11051));
    defparam i1_4_lut_adj_158.LUT_INIT = 16'hc4c0;
    SB_LUT4 comm_state_3__I_0_428_Mux_2_i4_3_lut_4_lut (.I0(n15_adj_1255), 
            .I1(n10082), .I2(comm_state[0]), .I3(comm_state_3__N_403[1]), 
            .O(n4_adj_1405));   // zimaux_main.vhd(501[5] 583[14])
    defparam comm_state_3__I_0_428_Mux_2_i4_3_lut_4_lut.LUT_INIT = 16'h08f8;
    SB_LUT4 i13054_3_lut (.I0(buf_data2[94]), .I1(buf_adcdata_vdc4[23]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5279));   // zimaux_main.vhd(241[9:17])
    defparam i13054_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9480_3_lut (.I0(n5279), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13205));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9480_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1891_i1_4_lut (.I0(n4912), .I1(data_idxvec[8]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4950));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1891_i1_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1871_i1_3_lut (.I0(buf_dds[8]), .I1(buf_adcdata_vdc1[16]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4898));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1871_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_323_5 (.CI(n18869), .I0(data_count[3]), .I1(M_MOSI4), 
            .CO(n18870));
    SB_LUT4 i14951_4_lut (.I0(buf_adcdata_vdc4[14]), .I1(buf_adcdata4[14]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14752));
    defparam i14951_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_159 (.I0(buf_adcdata_vdc4[13]), .I1(buf_adcdata4[13]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19340));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'hca0a;
    SB_LUT4 i12995_4_lut (.I0(buf_adcdata_vdc4[12]), .I1(buf_adcdata4[12]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14758));
    defparam i12995_4_lut.LUT_INIT = 16'hca0a;
    SB_CARRY add_323_4 (.CI(n18868), .I0(data_count[2]), .I1(M_MOSI4), 
            .CO(n18869));
    SB_LUT4 mux_1971_i2_3_lut (.I0(buf_data2[38]), .I1(buf_adcdata_vdc4[9]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5253));
    defparam mux_1971_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 ICE_IOL_25B_I_0_2_lut (.I0(ICE_IOL_25B), .I1(eis_start_cmd), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(eis_start));   // zimaux_main.vhd(397[16:45])
    defparam ICE_IOL_25B_I_0_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_160 (.I0(buf_adcdata_vdc2[1]), .I1(buf_adcdata2[1]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19214));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i9476_3_lut (.I0(n5253), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13201));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9476_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14903_3_lut (.I0(buf_data2[42]), .I1(buf_adcdata_vdc4[10]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18567));   // zimaux_main.vhd(241[9:17])
    defparam i14903_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14904_3_lut (.I0(n18567), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13197));   // zimaux_main.vhd(239[9:19])
    defparam i14904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_161 (.I0(buf_adcdata_vdc4[11]), .I1(buf_adcdata4[11]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19338));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'hca0a;
    SB_LUT4 i14907_4_lut (.I0(buf_adcdata_vdc4[10]), .I1(buf_adcdata4[10]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14764));
    defparam i14907_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1514[8]), .I1(cmd_rdadctmp_adj_1514[7]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19624));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_163 (.I0(buf_adcdata_vdc4[9]), .I1(buf_adcdata4[9]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19336));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i14919_3_lut (.I0(buf_data2[46]), .I1(buf_adcdata_vdc4[11]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5251));   // zimaux_main.vhd(241[9:17])
    defparam i14919_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_324_11_lut (.I0(M_MOSI4), .I1(data_cntvec[9]), .I2(M_MOSI4), 
            .I3(n18883), .O(n2273)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1514[7]), .I1(cmd_rdadctmp_adj_1514[6]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19622));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'hca0a;
    SB_LUT4 i9468_3_lut (.I0(n5251), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13193));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9468_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(buf_adcdata_vdc4[8]), .I1(buf_adcdata4[8]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19334));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_166 (.I0(n15_adj_1255), .I1(n10082), .I2(n17017), 
            .I3(M_MOSI4), .O(n20206));   // zimaux_main.vhd(501[5] 583[14])
    defparam i1_2_lut_3_lut_adj_166.LUT_INIT = 16'h7070;
    SB_DFFNE buf_adcdata_vdc2_i0_i1 (.Q(buf_adcdata_vdc2[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19214));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i11_4_lut_adj_167 (.I0(buf_dds[0]), .I1(\comm_buf[1] [0]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19112));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_168 (.I0(buf_adcdata_vdc2[3]), .I1(buf_adcdata2[3]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19218));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i14879_3_lut (.I0(buf_adcdata3[21]), .I1(cmd_rdadctmp_adj_1491[29]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14179));
    defparam i14879_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_444_Mux_7_i15_4_lut (.I0(n7_adj_1413), .I1(n8_adj_1414), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[7]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_169 (.I0(buf_adcdata_vdc2[2]), .I1(buf_adcdata2[2]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19216));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_3_lut_adj_170 (.I0(buf_data2[50]), .I1(buf_adcdata_vdc4[12]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1383));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_170.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_171 (.I0(buf_adcdata_vdc4[7]), .I1(buf_adcdata4[7]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19332));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_172 (.I0(buf_adcdata_vdc4[6]), .I1(buf_adcdata4[6]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19330));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 i12950_4_lut (.I0(buf_adcdata_vdc4[5]), .I1(buf_adcdata4[5]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14780));
    defparam i12950_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_3_lut_adj_173 (.I0(n1_adj_1383), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13189));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_173.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_174 (.I0(buf_adcdata_vdc4[4]), .I1(buf_adcdata4[4]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19328));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_174.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_175 (.I0(buf_adcdata_vdc4[3]), .I1(buf_adcdata4[3]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19326));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_175.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_444_Mux_6_i15_4_lut (.I0(n7_adj_1415), .I1(n8_adj_1416), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[6]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1971_i6_3_lut (.I0(buf_data2[54]), .I1(buf_adcdata_vdc4[13]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5249));
    defparam mux_1971_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1860_5 (.CI(n18914), .I0(data_index[3]), .I1(n9699), 
            .CO(n18915));
    SB_LUT4 i12_4_lut_adj_176 (.I0(buf_adcdata_vdc4[2]), .I1(buf_adcdata4[2]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19324));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_176.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_177 (.I0(buf_adcdata_vdc4[1]), .I1(buf_adcdata4[1]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19322));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_177.LUT_INIT = 16'hca0a;
    SB_LUT4 i9460_3_lut (.I0(n5249), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13185));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9460_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14947_3_lut (.I0(buf_data2[58]), .I1(buf_adcdata_vdc4[14]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n18610));   // zimaux_main.vhd(241[9:17])
    defparam i14947_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14948_3_lut (.I0(n18610), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13181));   // zimaux_main.vhd(239[9:19])
    defparam i14948_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_178 (.I0(comm_index[0]), .I1(n17923), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17943));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_adj_178.LUT_INIT = 16'h4444;
    SB_LUT4 i17381_2_lut (.I0(acadc_skipCount[12]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20796));
    defparam i17381_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i17408_2_lut (.I0(data_idxvec[12]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20797));
    defparam i17408_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10455_3_lut (.I0(buf_adcdata3[22]), .I1(cmd_rdadctmp_adj_1491[30]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14180));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10455_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_324_11 (.CI(n18883), .I0(data_cntvec[9]), .I1(M_MOSI4), 
            .CO(n18884));
    SB_DFFNE buf_adcdata_vdc2_i0_i2 (.Q(buf_adcdata_vdc2[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19216));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i3 (.Q(buf_adcdata_vdc2[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19218));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 n21587_bdd_4_lut (.I0(n21587), .I1(buf_dds[5]), .I2(req_data_cnt[5]), 
            .I3(n5147), .O(n21590));
    defparam n21587_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i9989_2_lut (.I0(n11093), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13709));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9989_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_179 (.I0(cmd_rdadctmp_adj_1468[18]), .I1(cmd_rdadctmp_adj_1468[17]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19734));
    defparam i12_4_lut_adj_179.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_180 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17943), .O(n11093));
    defparam i1_4_lut_adj_180.LUT_INIT = 16'hc8c0;
    SB_LUT4 i14965_3_lut (.I0(buf_data2[62]), .I1(buf_adcdata_vdc4[15]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5247));   // zimaux_main.vhd(241[9:17])
    defparam i14965_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_181 (.I0(buf_adcdata_vdc2[4]), .I1(buf_adcdata2[4]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19220));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_181.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_182 (.I0(acadc_dtrig1), .I1(acadc_dtrig4), .I2(acadc_dtrig3), 
            .I3(acadc_dtrig2), .O(n19010));
    defparam i3_4_lut_adj_182.LUT_INIT = 16'hfffe;
    SB_LUT4 i9448_3_lut (.I0(n5247), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13173));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9448_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i4 (.Q(buf_adcdata_vdc2[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19220));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 add_1860_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n9699), 
            .I3(n18913), .O(n7_adj_1431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i10371_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(n8066), .I2(\comm_buf[0] [6]), 
            .I3(n11282), .O(n14096));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10371_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17812 (.I0(comm_cmd[0]), .I1(data_cntvec[6]), 
            .I2(acadc_skipCount[6]), .I3(n5147), .O(n21581));
    defparam comm_cmd_0__bdd_4_lut_17812.LUT_INIT = 16'he4aa;
    SB_LUT4 i10369_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(n8066), .I2(\comm_buf[0] [4]), 
            .I3(n11282), .O(n14094));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10369_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 mux_1963_i2_3_lut (.I0(buf_data2[6]), .I1(buf_adcdata_vdc4[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5221));
    defparam mux_1963_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n21581_bdd_4_lut (.I0(n21581), .I1(buf_dds[6]), .I2(req_data_cnt[6]), 
            .I3(n5147), .O(n21584));
    defparam n21581_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_444_Mux_5_i15_4_lut (.I0(n7_adj_1424), .I1(n8_adj_1425), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[5]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 add_323_2_lut (.I0(M_MOSI4), .I1(data_count[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2264)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_324_10_lut (.I0(M_MOSI4), .I1(data_cntvec[8]), .I2(M_MOSI4), 
            .I3(n18882), .O(n2274)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_10_lut.LUT_INIT = 16'hC33C;
    SB_DFFE buf_dds_i0 (.Q(buf_dds[0]), .C(clk_32MHz), .E(VCC_net), .D(n19112));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19222));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_1860_4 (.CI(n18913), .I0(data_index[2]), .I1(n9699), 
            .CO(n18914));
    SB_LUT4 i9444_3_lut (.I0(n5221), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13169));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9444_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i0 (.Q(buf_adcdata_vdc3[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19224));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 comm_state_3__I_0_444_Mux_4_i15_4_lut (.I0(n7_adj_1427), .I1(n8_adj_1428), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[4]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNE buf_adcdata_vdc2_i0_i5 (.Q(buf_adcdata_vdc2[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19228));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 comm_index_0__bdd_4_lut_17827 (.I0(comm_index[0]), .I1(\comm_buf[10] [2]), 
            .I2(\comm_buf[11] [2]), .I3(comm_index[1]), .O(n21575));
    defparam comm_index_0__bdd_4_lut_17827.LUT_INIT = 16'he4aa;
    SB_LUT4 add_1860_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n9699), 
            .I3(n18912), .O(n7_adj_1433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_3_lut.LUT_INIT = 16'hA3AC;
    SB_DFFNE buf_adcdata_vdc4_i0_i0 (.Q(buf_adcdata_vdc4[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19226));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12920_3_lut (.I0(buf_adcdata3[23]), .I1(cmd_rdadctmp_adj_1491[31]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14181));
    defparam i12920_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1860_3 (.CI(n18912), .I0(data_index[1]), .I1(n9699), 
            .CO(n18913));
    SB_DFFNE buf_adcdata_vdc1_i0_i0 (.Q(buf_adcdata_vdc1[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14993));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 add_1860_2_lut (.I0(M_MOSI4), .I1(data_index[0]), .I2(n369), 
            .I3(M_MOSI4), .O(data_index_8__N_628[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1860_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_10 (.CI(n18882), .I0(data_cntvec[8]), .I1(M_MOSI4), 
            .CO(n18883));
    SB_CARRY add_1860_2 (.CI(M_MOSI4), .I0(data_index[0]), .I1(n369), 
            .CO(n18912));
    SB_LUT4 mux_1963_i3_3_lut (.I0(buf_data2[10]), .I1(buf_adcdata_vdc4[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5220));
    defparam mux_1963_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i6 (.Q(buf_adcdata_vdc2[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19230));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i9440_3_lut (.I0(n5220), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13165));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9440_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i7 (.Q(buf_adcdata_vdc2[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19232));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i8 (.Q(buf_adcdata_vdc2[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19234));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i14579_4_lut (.I0(buf_adcdata_vdc2[9]), .I1(buf_adcdata2[9]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14249));
    defparam i14579_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i9 (.Q(buf_adcdata_vdc2[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14249));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i10 (.Q(buf_adcdata_vdc2[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14246));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_183 (.I0(buf_adcdata_vdc2[11]), .I1(buf_adcdata2[11]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19236));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_183.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i11 (.Q(buf_adcdata_vdc2[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19236));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_1963_i4_3_lut (.I0(buf_data2[14]), .I1(buf_adcdata_vdc4[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5219));
    defparam mux_1963_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i12 (.Q(buf_adcdata_vdc2[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14240));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i9436_3_lut (.I0(n5219), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13161));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9436_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10343_2_lut (.I0(drdy_sync2_adj_1369), .I1(drdy_prev_adj_1370), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14068));   // adc_ads127.vhd(101[3] 106[10])
    defparam i10343_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 mux_1963_i5_3_lut (.I0(buf_data2[18]), .I1(buf_adcdata_vdc4[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5218));
    defparam mux_1963_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_184 (.I0(buf_adcdata_vdc2[13]), .I1(buf_adcdata2[13]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19238));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i13 (.Q(buf_adcdata_vdc2[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19238));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i14 (.Q(buf_adcdata_vdc2[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19248));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE vdc_adc_trig_411 (.Q(vdc_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n19186));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i15 (.Q(buf_adcdata_vdc2[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19250));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE eis_adc_trig_422 (.Q(eis_adc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n19432));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i0 (.Q(buf_adcdata_vdc2[0]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19390));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFE buf_dds_i1 (.Q(buf_dds[1]), .C(clk_32MHz), .E(VCC_net), .D(n19114));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i2 (.Q(buf_dds[2]), .C(clk_32MHz), .E(VCC_net), .D(n19116));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i3 (.Q(buf_dds[3]), .C(clk_32MHz), .E(VCC_net), .D(n14950));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 eis_state_2__bdd_4_lut_17886_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), 
            .I2(n20855), .I3(eis_state[2]), .O(n21671));
    defparam eis_state_2__bdd_4_lut_17886_4_lut.LUT_INIT = 16'h77c0;
    SB_DFFNE buf_adcdata_vdc2_i0_i16 (.Q(buf_adcdata_vdc2[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19252));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFE buf_dds_i4 (.Q(buf_dds[4]), .C(clk_32MHz), .E(VCC_net), .D(n19122));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i5 (.Q(buf_dds[5]), .C(clk_32MHz), .E(VCC_net), .D(n14945));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i2_4_lut_adj_185 (.I0(n10_adj_1292), .I1(comm_cmd[0]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n5147));
    defparam i2_4_lut_adj_185.LUT_INIT = 16'h0208;
    SB_LUT4 i9432_3_lut (.I0(n5218), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13157));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9432_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i17 (.Q(buf_adcdata_vdc2[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19254));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc2_i0_i18 (.Q(buf_adcdata_vdc2[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19256));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 n21575_bdd_4_lut (.I0(n21575), .I1(\comm_buf[9] [2]), .I2(\comm_buf[8] [2]), 
            .I3(comm_index[1]), .O(n21578));
    defparam n21575_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_3_lut_adj_186 (.I0(buf_data2[22]), .I1(buf_adcdata_vdc4[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1402));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_186.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_187 (.I0(n1_adj_1402), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13147));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_187.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1963_i7_3_lut (.I0(buf_data2[26]), .I1(buf_adcdata_vdc4[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5216));
    defparam mux_1963_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc2_i0_i19 (.Q(buf_adcdata_vdc2[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19260));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp_adj_1468[23]), .I1(cmd_rdadctmp_adj_1468[22]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19460));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds_i6 (.Q(buf_dds[6]), .C(clk_32MHz), .E(VCC_net), .D(n19128));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_state_3__I_0_444_Mux_3_i15_4_lut (.I0(n7_adj_1429), .I1(n8_adj_1430), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[3]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFE buf_dds_i7 (.Q(buf_dds[7]), .C(clk_32MHz), .E(VCC_net), .D(n19130));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i8 (.Q(buf_dds[8]), .C(clk_32MHz), .E(VCC_net), .D(n19132));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i9 (.Q(buf_dds[9]), .C(clk_32MHz), .E(VCC_net), .D(n19136));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_189 (.I0(cmd_rdadctmp_adj_1468[22]), .I1(cmd_rdadctmp_adj_1468[21]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19458));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i20 (.Q(buf_adcdata_vdc2[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19262));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFE buf_dds_i10 (.Q(buf_dds[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19138));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_190 (.I0(cmd_rdadctmp_adj_1468[21]), .I1(cmd_rdadctmp_adj_1468[20]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19728));
    defparam i12_4_lut_adj_190.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_191 (.I0(cmd_rdadctmp_adj_1468[20]), .I1(cmd_rdadctmp_adj_1468[19]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19456));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_191.LUT_INIT = 16'hca0a;
    SB_LUT4 i10368_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n8066), .I3(n11282), .O(n14093));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10368_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNE buf_adcdata_vdc2_i0_i21 (.Q(buf_adcdata_vdc2[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19270));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10457_3_lut (.I0(buf_adcdata4[1]), .I1(cmd_rdadctmp_adj_1514[9]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14182));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10457_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_324_9_lut (.I0(M_MOSI4), .I1(data_cntvec[7]), .I2(M_MOSI4), 
            .I3(n18881), .O(n2275)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_9 (.CI(n18881), .I0(data_cntvec[7]), .I1(M_MOSI4), 
            .CO(n18882));
    SB_LUT4 i12_4_lut_adj_192 (.I0(cmd_rdadctmp_adj_1514[6]), .I1(cmd_rdadctmp_adj_1514[5]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19618));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_192.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc2_i0_i22 (.Q(buf_adcdata_vdc2[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19272));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i9418_3_lut (.I0(n5216), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13143));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9418_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3_4_lut_adj_193 (.I0(acadc_dtrig1), .I1(acadc_dtrig4), .I2(acadc_dtrig3), 
            .I3(acadc_dtrig2), .O(acadc_dtrigH));   // zimaux_main.vhd(392[28:115])
    defparam i3_4_lut_adj_193.LUT_INIT = 16'h8000;
    SB_DFFE buf_dds_i11 (.Q(buf_dds[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19140));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 mux_1871_i4_3_lut (.I0(buf_dds[11]), .I1(buf_adcdata_vdc1[19]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4895));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1871_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds_i12 (.Q(buf_dds[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19142));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i13 (.Q(buf_dds[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14921));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i14 (.Q(buf_dds[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19146));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE buf_dds_i15 (.Q(buf_dds[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19148));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_2_lut_adj_194 (.I0(comm_cmd[3]), .I1(n10082), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10_adj_1292));
    defparam i1_2_lut_adj_194.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_195 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n7_adj_1259));
    defparam i1_2_lut_adj_195.LUT_INIT = 16'h4444;
    SB_LUT4 i1_2_lut_adj_196 (.I0(comm_cmd[2]), .I1(comm_cmd[4]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20221));
    defparam i1_2_lut_adj_196.LUT_INIT = 16'h8888;
    SB_LUT4 i10367_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n8066), .I3(n11282), .O(n14092));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10367_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i10366_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n8066), .I3(n11282), .O(n14091));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10366_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i10365_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n8066), .I3(n11282), .O(n14090));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10365_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNE buf_adcdata_vdc2_i0_i23 (.Q(buf_adcdata_vdc2[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19274));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_197 (.I0(buf_adcdata_vdc3[23]), .I1(buf_adcdata3[23]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19320));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_198 (.I0(cmd_rdadctmp_adj_1514[5]), .I1(cmd_rdadctmp_adj_1514[4]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19616));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_198.LUT_INIT = 16'hca0a;
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19276));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10362_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n8066), .I3(n11282), .O(n14087));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10362_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[6] [5]), 
            .I2(\comm_buf[7] [5]), .I3(comm_index[1]), .O(n21713));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n21713_bdd_4_lut (.I0(n21713), .I1(\comm_buf[5] [5]), .I2(\comm_buf[4] [5]), 
            .I3(comm_index[1]), .O(n21716));
    defparam n21713_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_199 (.I0(cmd_rdadctmp_adj_1514[4]), .I1(cmd_rdadctmp_adj_1514[3]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19614));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_200 (.I0(cmd_rdadctmp_adj_1514[3]), .I1(cmd_rdadctmp_adj_1514[2]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19612));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_200.LUT_INIT = 16'hca0a;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19278));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_201 (.I0(buf_adcdata_vdc3[22]), .I1(buf_adcdata3[22]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19318));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_201.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17807 (.I0(comm_cmd[0]), .I1(data_cntvec[7]), 
            .I2(acadc_skipCount[7]), .I3(n5147), .O(n21569));
    defparam comm_cmd_0__bdd_4_lut_17807.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_202 (.I0(acadc_dtrigH), .I1(dc_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6_adj_1261));
    defparam i1_2_lut_adj_202.LUT_INIT = 16'h8888;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19280));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_2_lut_adj_203 (.I0(comm_index[0]), .I1(n17923), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n17924));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_adj_203.LUT_INIT = 16'h8888;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19282));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 n21569_bdd_4_lut (.I0(n21569), .I1(buf_dds[7]), .I2(req_data_cnt[7]), 
            .I3(n5147), .O(n21572));
    defparam n21569_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19284));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_index_0__bdd_4_lut_17915 (.I0(comm_index[0]), .I1(\comm_buf[10] [1]), 
            .I2(\comm_buf[11] [1]), .I3(comm_index[1]), .O(n21707));
    defparam comm_index_0__bdd_4_lut_17915.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_204 (.I0(n10087), .I1(n20232), .I2(n20289), .I3(n4_adj_1245), 
            .O(n20056));
    defparam i1_4_lut_adj_204.LUT_INIT = 16'hc8c0;
    SB_LUT4 i14865_4_lut (.I0(buf_adcdata_vdc3[21]), .I1(buf_adcdata3[21]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14823));
    defparam i14865_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i26_4_lut (.I0(n10), .I1(n19010), .I2(dc_state[2]), .I3(dc_state[0]), 
            .O(n19_adj_1257));
    defparam i26_4_lut.LUT_INIT = 16'hfa3a;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19286));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19288));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i19_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n8));
    defparam i19_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i2_3_lut_adj_205 (.I0(comm_cmd[1]), .I1(n10082), .I2(n8), 
            .I3(M_MOSI4), .O(n4961));
    defparam i2_3_lut_adj_205.LUT_INIT = 16'h4040;
    SB_LUT4 mux_1881_i8_3_lut (.I0(req_data_cnt[15]), .I1(buf_data2[95]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4917));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1886_i8_3_lut (.I0(buf_control[7]), .I1(buf_device_acadc[7]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4930));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10361_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n8066), .I3(n11282), .O(n14086));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10361_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i17379_4_lut (.I0(acadc_skipCount[15]), .I1(comm_cmd[1]), .I2(data_idxvec[15]), 
            .I3(comm_cmd[2]), .O(n20793));
    defparam i17379_4_lut.LUT_INIT = 16'h3022;
    SB_LUT4 i13267_2_lut_3_lut (.I0(\comm_buf[0] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1419));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13267_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i10360_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n8066), .I3(n11282), .O(n14085));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10360_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i14873_4_lut (.I0(buf_adcdata_vdc3[20]), .I1(buf_adcdata3[20]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14827));
    defparam i14873_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1468[19]), .I1(cmd_rdadctmp_adj_1468[18]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19454));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_207 (.I0(cmd_rdadctmp_adj_1514[2]), .I1(cmd_rdadctmp_adj_1514[1]), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19610));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_207.LUT_INIT = 16'hca0a;
    SB_LUT4 i10458_3_lut (.I0(buf_adcdata4[2]), .I1(cmd_rdadctmp_adj_1514[10]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14183));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10458_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10359_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n8066), .I3(n11282), .O(n14084));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10359_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2530_2_lut (.I0(comm_state[3]), .I1(n20323), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4779));   // zimaux_main.vhd(239[9:19])
    defparam i2530_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5630_4_lut (.I0(cs_falling_pend_N_906), .I1(n4744), .I2(n4779), 
            .I3(n20244), .O(cs_falling_pend_N_900));   // zimaux_main.vhd(448[4] 687[13])
    defparam i5630_4_lut.LUT_INIT = 16'hc5cf;
    SB_LUT4 i12905_4_lut (.I0(buf_adcdata_vdc3[19]), .I1(buf_adcdata3[19]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14830));
    defparam i12905_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 n21707_bdd_4_lut (.I0(n21707), .I1(\comm_buf[9] [1]), .I2(\comm_buf[8] [1]), 
            .I3(comm_index[1]), .O(n21710));
    defparam n21707_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10459_3_lut (.I0(buf_adcdata4[3]), .I1(cmd_rdadctmp_adj_1514[11]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14184));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10459_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_cmd_2__bdd_4_lut (.I0(comm_cmd[2]), .I1(buf_dds[12]), .I2(buf_adcdata_vdc1[20]), 
            .I3(n4961), .O(n21563));
    defparam comm_cmd_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i9996_2_lut (.I0(n11135), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13716));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9996_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10460_3_lut (.I0(buf_adcdata4[4]), .I1(cmd_rdadctmp_adj_1514[12]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14185));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10460_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12966_3_lut (.I0(buf_adcdata4[5]), .I1(cmd_rdadctmp_adj_1514[13]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14186));
    defparam i12966_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_208 (.I0(comm_index[1]), .I1(n20056), .I2(n20000), 
            .I3(n17924), .O(n11135));
    defparam i1_4_lut_adj_208.LUT_INIT = 16'hc8c0;
    SB_LUT4 i10462_3_lut (.I0(buf_adcdata4[6]), .I1(cmd_rdadctmp_adj_1514[14]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14187));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10462_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i1 (.Q(buf_adcdata_vdc3[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19290));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i2 (.Q(buf_adcdata_vdc3[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19292));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10463_3_lut (.I0(buf_adcdata4[7]), .I1(cmd_rdadctmp_adj_1514[15]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14188));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10463_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i3 (.Q(buf_adcdata_vdc3[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19294));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_1963_i8_3_lut (.I0(buf_data2[30]), .I1(buf_adcdata_vdc4[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5215));
    defparam mux_1963_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i4 (.Q(buf_adcdata_vdc3[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19296));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i5 (.Q(buf_adcdata_vdc3[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14872));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i6 (.Q(buf_adcdata_vdc3[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19298));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i7 (.Q(buf_adcdata_vdc3[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19300));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i9414_3_lut (.I0(n5215), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13139));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9414_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1337345_i1_3_lut (.I0(n21662), .I1(n21560), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1443));
    defparam i1337345_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i8 (.Q(buf_adcdata_vdc3[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19302));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10358_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n8066), .I3(n11282), .O(n14083));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10358_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i14819_4_lut (.I0(buf_adcdata_vdc3[17]), .I1(buf_adcdata3[17]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14836));
    defparam i14819_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_209 (.I0(buf_adcdata_vdc3[16]), .I1(buf_adcdata3[16]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19312));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_209.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_112_Mux_1_i15_4_lut (.I0(n7_adj_1443), .I1(n21710), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n523));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNE buf_adcdata_vdc3_i0_i9 (.Q(buf_adcdata_vdc3[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19304));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i10 (.Q(buf_adcdata_vdc3[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14857));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1337948_i1_3_lut (.I0(n21656), .I1(n21608), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1442));
    defparam i1337948_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_112_Mux_2_i15_4_lut (.I0(n7_adj_1442), .I1(n21578), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n522));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_210 (.I0(buf_adcdata_vdc3[15]), .I1(buf_adcdata3[15]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19310));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i11 (.Q(buf_adcdata_vdc3[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19306));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i14775_4_lut (.I0(buf_adcdata_vdc3[14]), .I1(buf_adcdata3[14]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14845));
    defparam i14775_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_211 (.I0(buf_adcdata_vdc3[13]), .I1(buf_adcdata3[13]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19308));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i12 (.Q(buf_adcdata_vdc3[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14851));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_112_Mux_3_i15_4_lut (.I0(n21650), .I1(n21620), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n521));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i10464_3_lut (.I0(buf_adcdata4[8]), .I1(cmd_rdadctmp_adj_1514[16]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14189));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10464_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14655_4_lut (.I0(buf_adcdata_vdc3[12]), .I1(buf_adcdata3[12]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14851));
    defparam i14655_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i10465_3_lut (.I0(buf_adcdata4[9]), .I1(cmd_rdadctmp_adj_1514[17]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14190));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10465_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i13 (.Q(buf_adcdata_vdc3[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19308));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1339154_i1_3_lut (.I0(n21638), .I1(n21632), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1441));
    defparam i1339154_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14923_3_lut (.I0(buf_adcdata4[10]), .I1(cmd_rdadctmp_adj_1514[18]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14191));
    defparam i14923_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_112_Mux_4_i15_4_lut (.I0(n7_adj_1441), .I1(n21626), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n520));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_212 (.I0(buf_adcdata_vdc3[11]), .I1(buf_adcdata3[11]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19306));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i14 (.Q(buf_adcdata_vdc3[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14845));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i15 (.Q(buf_adcdata_vdc3[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19310));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i16 (.Q(buf_adcdata_vdc3[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19312));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i17 (.Q(buf_adcdata_vdc3[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14836));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i14918_3_lut (.I0(buf_adcdata4[11]), .I1(cmd_rdadctmp_adj_1514[19]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14192));
    defparam i14918_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(buf_adcdata_vdc3[18]), .I1(buf_adcdata3[18]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19314));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i18 (.Q(buf_adcdata_vdc3[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19314));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i19 (.Q(buf_adcdata_vdc3[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14830));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i20 (.Q(buf_adcdata_vdc3[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14827));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1339757_i1_3_lut (.I0(n21506), .I1(n21716), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1440));
    defparam i1339757_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13011_3_lut (.I0(buf_adcdata4[12]), .I1(cmd_rdadctmp_adj_1514[20]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14193));
    defparam i13011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_112_Mux_5_i15_4_lut (.I0(n7_adj_1440), .I1(n21644), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n519));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14731_4_lut (.I0(buf_adcdata_vdc3[10]), .I1(buf_adcdata3[10]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14857));
    defparam i14731_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_214 (.I0(buf_adcdata_vdc3[9]), .I1(buf_adcdata3[9]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19304));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'hca0a;
    SB_LUT4 i14921_3_lut (.I0(buf_adcdata4[13]), .I1(cmd_rdadctmp_adj_1514[21]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14194));
    defparam i14921_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10003_3_lut (.I0(n11215), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n13723));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10003_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 i14967_3_lut (.I0(buf_adcdata4[14]), .I1(cmd_rdadctmp_adj_1514[22]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14195));
    defparam i14967_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_215 (.I0(buf_adcdata_vdc3[8]), .I1(buf_adcdata3[8]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19302));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_215.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc3_i0_i21 (.Q(buf_adcdata_vdc3[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14823));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc3_i0_i22 (.Q(buf_adcdata_vdc3[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19318));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1340963_i1_3_lut (.I0(n21692), .I1(n21542), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1438));
    defparam i1340963_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc3_i0_i23 (.Q(buf_adcdata_vdc3[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19320));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_112_Mux_7_i15_4_lut (.I0(n7_adj_1438), .I1(n21494), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n517));   // zimaux_main.vhd(590[30:40])
    defparam mux_112_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i14964_3_lut (.I0(buf_adcdata4[15]), .I1(cmd_rdadctmp_adj_1514[23]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14196));
    defparam i14964_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_216 (.I0(buf_adcdata_vdc3[7]), .I1(buf_adcdata3[7]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19300));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_216.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_217 (.I0(buf_adcdata_vdc3[6]), .I1(buf_adcdata3[6]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19298));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 i12815_4_lut (.I0(buf_adcdata_vdc3[5]), .I1(buf_adcdata3[5]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14872));
    defparam i12815_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 n21563_bdd_4_lut (.I0(n21563), .I1(n20797), .I2(n20796), .I3(n4961), 
            .O(n21566));
    defparam n21563_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNE buf_adcdata_vdc4_i0_i1 (.Q(buf_adcdata_vdc4[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19322));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i2 (.Q(buf_adcdata_vdc4[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19324));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i3 (.Q(buf_adcdata_vdc4[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19326));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i4 (.Q(buf_adcdata_vdc4[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19328));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i5 (.Q(buf_adcdata_vdc4[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14780));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1_4_lut_adj_218 (.I0(n13_adj_1253), .I1(comm_state[3]), .I2(n8066), 
            .I3(comm_state[0]), .O(n11228));
    defparam i1_4_lut_adj_218.LUT_INIT = 16'hc0c4;
    SB_DFFNE buf_adcdata_vdc4_i0_i6 (.Q(buf_adcdata_vdc4[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19330));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_219 (.I0(buf_adcdata_vdc3[4]), .I1(buf_adcdata3[4]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19296));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_219.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i7 (.Q(buf_adcdata_vdc4[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19332));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i8 (.Q(buf_adcdata_vdc4[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19334));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i9 (.Q(buf_adcdata_vdc4[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19336));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i10 (.Q(buf_adcdata_vdc4[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14764));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i11 (.Q(buf_adcdata_vdc4[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19338));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i12 (.Q(buf_adcdata_vdc4[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14758));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i13 (.Q(buf_adcdata_vdc4[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19340));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_220 (.I0(buf_adcdata_vdc3[3]), .I1(buf_adcdata3[3]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19294));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i14 (.Q(buf_adcdata_vdc4[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14752));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_221 (.I0(buf_adcdata_vdc3[2]), .I1(buf_adcdata3[2]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19292));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_0__bdd_4_lut (.I0(comm_cmd[0]), .I1(data_cntvec[8]), 
            .I2(n4898), .I3(n4961), .O(n21701));
    defparam comm_cmd_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_222 (.I0(buf_adcdata_vdc3[1]), .I1(buf_adcdata3[1]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19290));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_222.LUT_INIT = 16'hca0a;
    SB_LUT4 n21701_bdd_4_lut (.I0(n21701), .I1(n4950), .I2(n4970), .I3(n4961), 
            .O(n21704));
    defparam n21701_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_index_0__bdd_4_lut_17802 (.I0(comm_index[0]), .I1(\comm_buf[6] [1]), 
            .I2(\comm_buf[7] [1]), .I3(comm_index[1]), .O(n21557));
    defparam comm_index_0__bdd_4_lut_17802.LUT_INIT = 16'he4aa;
    SB_LUT4 n21557_bdd_4_lut (.I0(n21557), .I1(\comm_buf[5] [1]), .I2(\comm_buf[4] [1]), 
            .I3(comm_index[1]), .O(n21560));
    defparam n21557_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_223 (.I0(dc_state[0]), .I1(dc_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(dc_state_2__N_282[0]));   // zimaux_main.vhd(694[3] 728[10])
    defparam i1_2_lut_adj_223.LUT_INIT = 16'h4444;
    SB_LUT4 n21677_bdd_4_lut_4_lut_4_lut (.I0(eis_state[0]), .I1(eis_state[1]), 
            .I2(acadc_dtrigH), .I3(n21677), .O(eis_state_2__N_279[0]));
    defparam n21677_bdd_4_lut_4_lut_4_lut.LUT_INIT = 16'hce11;
    SB_LUT4 i12_4_lut_adj_224 (.I0(cmd_rdadctmp_adj_1468[10]), .I1(cmd_rdadctmp_adj_1468[9]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n19822));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_224.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_225 (.I0(n13_adj_1251), .I1(comm_state[3]), .I2(n8066), 
            .I3(comm_state[0]), .O(n11252));
    defparam i1_4_lut_adj_225.LUT_INIT = 16'hc0c4;
    SB_DFFNE buf_adcdata_vdc4_i0_i15 (.Q(buf_adcdata_vdc4[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19342));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10079_2_lut (.I0(n11574), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13782));   // zimaux_main.vhd(733[3] 812[10])
    defparam i10079_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12340_4_lut (.I0(cmd_rdadctmp_adj_1468[11]), .I1(cmd_rdadctmp_adj_1468[10]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14889));
    defparam i12340_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_17788 (.I0(comm_index[0]), .I1(\comm_buf[10] [0]), 
            .I2(\comm_buf[11] [0]), .I3(comm_index[1]), .O(n21551));
    defparam comm_index_0__bdd_4_lut_17788.LUT_INIT = 16'he4aa;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n20882), .I2(n6483), 
            .I3(comm_state[2]), .O(n21695));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_DFFNE buf_adcdata_vdc4_i0_i16 (.Q(buf_adcdata_vdc4[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19344));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i16636_2_lut (.I0(eis_state[2]), .I1(tacadc_rst), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20391));
    defparam i16636_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10357_3_lut_4_lut (.I0(buf_control[7]), .I1(\comm_buf[0] [7]), 
            .I2(n8066), .I3(n11252), .O(n14082));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10357_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNE buf_adcdata_vdc4_i0_i17 (.Q(buf_adcdata_vdc4[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14743));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i2_4_lut_adj_226 (.I0(n33), .I1(n20391), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(n11574));
    defparam i2_4_lut_adj_226.LUT_INIT = 16'h3011;
    SB_LUT4 i12343_4_lut (.I0(cmd_rdadctmp_adj_1468[12]), .I1(cmd_rdadctmp_adj_1468[11]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14890));
    defparam i12343_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i17581_2_lut (.I0(n11629), .I1(eis_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13806));
    defparam i17581_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i14963_3_lut (.I0(buf_adcdata4[16]), .I1(cmd_rdadctmp_adj_1514[24]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14197));
    defparam i14963_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12346_4_lut (.I0(cmd_rdadctmp_adj_1468[13]), .I1(cmd_rdadctmp_adj_1468[12]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14891));
    defparam i12346_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i17609_4_lut (.I0(eis_state[0]), .I1(tacadc_rst), .I2(n20373), 
            .I3(eis_state[1]), .O(n11629));
    defparam i17609_4_lut.LUT_INIT = 16'h0013;
    SB_LUT4 i15011_3_lut (.I0(buf_adcdata4[17]), .I1(cmd_rdadctmp_adj_1514[25]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14198));
    defparam i15011_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12357_4_lut (.I0(cmd_rdadctmp_adj_1468[14]), .I1(cmd_rdadctmp_adj_1468[13]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14892));
    defparam i12357_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc4_i0_i18 (.Q(buf_adcdata_vdc4[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19346));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i19 (.Q(buf_adcdata_vdc4[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14736));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i20 (.Q(buf_adcdata_vdc4[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14733));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i21 (.Q(buf_adcdata_vdc4[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14730));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i22 (.Q(buf_adcdata_vdc4[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19348));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc4_i0_i23 (.Q(buf_adcdata_vdc4[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19350));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_227 (.I0(cmd_rdadctmp_adj_1491[30]), .I1(cmd_rdadctmp_adj_1491[29]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19706));
    defparam i12_4_lut_adj_227.LUT_INIT = 16'hca0a;
    SB_LUT4 i15008_3_lut (.I0(buf_adcdata4[18]), .I1(cmd_rdadctmp_adj_1514[26]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14199));
    defparam i15008_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc1_i0_i1 (.Q(buf_adcdata_vdc1[1]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19352));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i2 (.Q(buf_adcdata_vdc1[2]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14717));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_228 (.I0(comm_cmd[7]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[7]), .O(n19288));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_228.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_229 (.I0(comm_cmd[6]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[6]), .O(n19286));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_229.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i3 (.Q(buf_adcdata_vdc1[3]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19354));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i13056_3_lut (.I0(buf_adcdata4[19]), .I1(cmd_rdadctmp_adj_1514[27]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14200));
    defparam i13056_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i15057_3_lut (.I0(buf_adcdata4[20]), .I1(cmd_rdadctmp_adj_1514[28]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14201));
    defparam i15057_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_230 (.I0(comm_cmd[5]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[5]), .O(n19284));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_230.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_231 (.I0(cmd_rdadctmp_adj_1491[29]), .I1(cmd_rdadctmp_adj_1491[28]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19708));
    defparam i12_4_lut_adj_231.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_232 (.I0(cmd_rdadctmp_adj_1491[28]), .I1(cmd_rdadctmp_adj_1491[27]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19738));
    defparam i12_4_lut_adj_232.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i4 (.Q(buf_adcdata_vdc1[4]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19356));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i15055_3_lut (.I0(buf_adcdata4[21]), .I1(cmd_rdadctmp_adj_1514[29]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14202));
    defparam i15055_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_233 (.I0(comm_cmd[4]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[4]), .O(n19282));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_233.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_234 (.I0(cmd_rdadctmp_adj_1491[27]), .I1(cmd_rdadctmp_adj_1491[26]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19712));
    defparam i12_4_lut_adj_234.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i5 (.Q(buf_adcdata_vdc1[5]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14708));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_1881_i3_3_lut (.I0(req_data_cnt[10]), .I1(buf_data2[75]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4922));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1886_i3_3_lut (.I0(buf_control[2]), .I1(M_FLT0), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4935));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10478_3_lut (.I0(buf_adcdata4[22]), .I1(cmd_rdadctmp_adj_1514[30]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14203));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10478_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10356_3_lut_4_lut (.I0(buf_control[6]), .I1(n8066), .I2(\comm_buf[0] [6]), 
            .I3(n11252), .O(n14081));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10356_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_DFFNE buf_adcdata_vdc1_i0_i6 (.Q(buf_adcdata_vdc1[6]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19358));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10355_3_lut_4_lut (.I0(buf_control[5]), .I1(\comm_buf[0] [5]), 
            .I2(n8066), .I3(n11252), .O(n14080));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10355_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 mux_1877_i3_3_lut (.I0(acadc_skipCount[10]), .I1(tacadc_rst), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4910));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1877_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_235 (.I0(comm_cmd[3]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[3]), .O(n19280));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_235.LUT_INIT = 16'hca0a;
    SB_LUT4 i10354_3_lut_4_lut (.I0(buf_control[4]), .I1(n8066), .I2(\comm_buf[0] [4]), 
            .I3(n11252), .O(n14079));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10354_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_DFFNE buf_adcdata_vdc1_i0_i7 (.Q(buf_adcdata_vdc1[7]), .C(clk_32MHz), 
            .E(VCC_net), .D(n14702));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 mux_1891_i3_4_lut (.I0(n4910), .I1(data_idxvec[10]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n4948));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1891_i3_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 n21695_bdd_4_lut (.I0(n21695), .I1(n2_adj_1409), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n21698));
    defparam n21695_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13055_3_lut (.I0(buf_adcdata4[23]), .I1(cmd_rdadctmp_adj_1514[31]), 
            .I2(n9393), .I3(M_MOSI4), .O(n14204));
    defparam i13055_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc1_i0_i8 (.Q(buf_adcdata_vdc1[8]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19360));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i9 (.Q(buf_adcdata_vdc1[9]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19362));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i10 (.Q(buf_adcdata_vdc1[10]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19364));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i11 (.Q(buf_adcdata_vdc1[11]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19366));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_236 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19810));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_236.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i12 (.Q(buf_adcdata_vdc1[12]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19368));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i11_4_lut_adj_237 (.I0(comm_cmd[2]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[2]), .O(n19278));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_237.LUT_INIT = 16'hca0a;
    SB_LUT4 i10353_3_lut_4_lut (.I0(buf_control[3]), .I1(\comm_buf[0] [3]), 
            .I2(n8066), .I3(n11252), .O(n14078));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10353_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i11_4_lut_adj_238 (.I0(comm_cmd[1]), .I1(n13420), .I2(n10603), 
            .I3(comm_rx_buf[1]), .O(n19276));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i13 (.Q(buf_adcdata_vdc1[13]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19370));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i1_2_lut_adj_239 (.I0(eis_adc_trig), .I1(vdc_adc_trig), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(acadc_trig));   // zimaux_main.vhd(733[3] 812[10])
    defparam i1_2_lut_adj_239.LUT_INIT = 16'heeee;
    SB_LUT4 i12_4_lut_adj_240 (.I0(buf_adcdata_vdc2[23]), .I1(buf_adcdata2[23]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19274));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_240.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i14 (.Q(buf_adcdata_vdc1[14]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19372));   // zimaux_main.vhd(694[3] 728[10])
    SB_DFFNE buf_adcdata_vdc1_i0_i15 (.Q(buf_adcdata_vdc1[15]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19374));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_241 (.I0(buf_adcdata_vdc1[16]), .I1(buf_adcdata1[16]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19376));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_241.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i16 (.Q(buf_adcdata_vdc1[16]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19376));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_242 (.I0(buf_dds[15]), .I1(\comm_buf[0] [7]), 
            .I2(n10509), .I3(n1_adj_1244), .O(n19148));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_242.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_243 (.I0(buf_dds[14]), .I1(\comm_buf[0] [6]), 
            .I2(n10509), .I3(n1_adj_1244), .O(n19146));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_243.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i17 (.Q(buf_adcdata_vdc1[17]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19378));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i11196_4_lut (.I0(n20429), .I1(buf_dds[13]), .I2(n14_adj_1419), 
            .I3(n10509), .O(n14921));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11196_4_lut.LUT_INIT = 16'hf5dd;
    SB_DFFNE buf_adcdata_vdc1_i0_i18 (.Q(buf_adcdata_vdc1[18]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19380));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_244 (.I0(buf_dds[12]), .I1(\comm_buf[0] [4]), 
            .I2(n10509), .I3(n1_adj_1244), .O(n19142));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_244.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_245 (.I0(buf_dds[11]), .I1(\comm_buf[0] [3]), 
            .I2(n10509), .I3(n1_adj_1244), .O(n19140));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_245.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_246 (.I0(buf_adcdata_vdc2[22]), .I1(buf_adcdata2[22]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19272));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_246.LUT_INIT = 16'hca0a;
    SB_LUT4 i15_4_lut (.I0(n9699), .I1(n7936), .I2(comm_state[3]), .I3(n8066), 
            .O(n11175));
    defparam i15_4_lut.LUT_INIT = 16'hf535;
    SB_LUT4 i12360_4_lut (.I0(cmd_rdadctmp_adj_1468[15]), .I1(cmd_rdadctmp_adj_1468[14]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14928));
    defparam i12360_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_247 (.I0(buf_adcdata_vdc2[21]), .I1(buf_adcdata2[21]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19270));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_247.LUT_INIT = 16'hca0a;
    SB_LUT4 i10363_3_lut (.I0(acadc_skipCount[6]), .I1(n14_adj_1391), .I2(n11282), 
            .I3(M_MOSI4), .O(n14088));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10363_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_248 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19806));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_248.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_249 (.I0(buf_dds[10]), .I1(\comm_buf[0] [2]), 
            .I2(n10509), .I3(n1_adj_1244), .O(n19138));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_249.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i19 (.Q(buf_adcdata_vdc1[19]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19382));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_250 (.I0(buf_adcdata_vdc2[20]), .I1(buf_adcdata2[20]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19262));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_250.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_251 (.I0(comm_index[3]), .I1(n17920), .I2(comm_state[0]), 
            .I3(comm_index[2]), .O(n5));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_3_lut_4_lut_adj_251.LUT_INIT = 16'h0400;
    SB_LUT4 i10352_3_lut_4_lut (.I0(buf_control[2]), .I1(\comm_buf[0] [2]), 
            .I2(n8066), .I3(n11252), .O(n14077));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10352_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFNE buf_adcdata_vdc1_i0_i20 (.Q(buf_adcdata_vdc1[20]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19384));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i10364_3_lut (.I0(acadc_skipCount[7]), .I1(n14), .I2(n11282), 
            .I3(M_MOSI4), .O(n14089));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10364_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE buf_adcdata_vdc1_i0_i21 (.Q(buf_adcdata_vdc1[21]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19386));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_252 (.I0(buf_dds[9]), .I1(\comm_buf[0] [1]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19136));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_252.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i22 (.Q(buf_adcdata_vdc1[22]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19388));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i12_4_lut_adj_253 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19802));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_253.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_254 (.I0(buf_adcdata_vdc1[23]), .I1(buf_adcdata1[23]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19258));
    defparam i12_4_lut_adj_254.LUT_INIT = 16'hca0a;
    SB_DFFNE buf_adcdata_vdc1_i0_i23 (.Q(buf_adcdata_vdc1[23]), .C(clk_32MHz), 
            .E(VCC_net), .D(n19258));   // zimaux_main.vhd(694[3] 728[10])
    SB_LUT4 i14623_3_lut (.I0(buf_adcdata2[12]), .I1(cmd_rdadctmp_adj_1468[20]), 
            .I2(n9507), .I3(M_MOSI4), .O(n14147));
    defparam i14623_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_255 (.I0(buf_dds[8]), .I1(\comm_buf[0] [0]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19132));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_255.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_256 (.I0(dc_state[1]), .I1(acadc_dtrigH), 
            .I2(dc_state[0]), .I3(n19_adj_1257), .O(n11320));
    defparam i1_3_lut_4_lut_adj_256.LUT_INIT = 16'hffd5;
    SB_LUT4 i12_4_lut_adj_257 (.I0(buf_dds[7]), .I1(\comm_buf[1] [7]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19130));   // zimaux_main.vhd(431[3] 688[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_LUT4 i11_4_lut_adj_258 (.I0(buf_dds[6]), .I1(\comm_buf[1] [6]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19128));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_259 (.I0(buf_adcdata_vdc2[19]), .I1(buf_adcdata2[19]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19260));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_260 (.I0(buf_adcdata_vdc2[18]), .I1(buf_adcdata2[18]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19256));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_260.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_261 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19800));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_261.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_262 (.I0(buf_adcdata_vdc2[17]), .I1(buf_adcdata2[17]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19254));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_262.LUT_INIT = 16'hca0a;
    SB_LUT4 i11220_4_lut (.I0(n20429), .I1(buf_dds[5]), .I2(n14_adj_1435), 
            .I3(n10509), .O(n14945));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11220_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i12_4_lut_adj_263 (.I0(cmd_rdadctmp_adj_1491[26]), .I1(cmd_rdadctmp_adj_1491[25]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19714));
    defparam i12_4_lut_adj_263.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_264 (.I0(cmd_rdadctmp_adj_1491[25]), .I1(cmd_rdadctmp_adj_1491[24]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19600));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_264.LUT_INIT = 16'hca0a;
    SB_LUT4 i10370_3_lut (.I0(acadc_skipCount[13]), .I1(n14_adj_1419), .I2(n11282), 
            .I3(M_MOSI4), .O(n14095));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10370_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_17910 (.I0(comm_index[0]), .I1(\comm_buf[2] [7]), 
            .I2(\comm_buf[3] [7]), .I3(comm_index[1]), .O(n21689));
    defparam comm_index_0__bdd_4_lut_17910.LUT_INIT = 16'he4aa;
    SB_LUT4 i10351_3_lut_4_lut (.I0(M_DCSEL), .I1(\comm_buf[0] [1]), .I2(n8066), 
            .I3(n11252), .O(n14076));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10351_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12_4_lut_adj_265 (.I0(cmd_rdadctmp_adj_1491[24]), .I1(cmd_rdadctmp_adj_1491[23]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19718));
    defparam i12_4_lut_adj_265.LUT_INIT = 16'hca0a;
    SB_LUT4 n21689_bdd_4_lut (.I0(n21689), .I1(\comm_buf[1] [7]), .I2(\comm_buf[0] [7]), 
            .I3(comm_index[1]), .O(n21692));
    defparam n21689_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i11_4_lut_adj_266 (.I0(buf_dds[4]), .I1(\comm_buf[1] [4]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19122));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_LUT4 i10350_3_lut_4_lut (.I0(buf_device_acadc[7]), .I1(\comm_buf[0] [7]), 
            .I2(n8066), .I3(n11228), .O(n14075));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10350_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_cmd_0__bdd_4_lut_17905 (.I0(comm_cmd[0]), .I1(data_cntvec[9]), 
            .I2(n4897), .I3(n4961), .O(n21683));
    defparam comm_cmd_0__bdd_4_lut_17905.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_267 (.I0(buf_adcdata_vdc2[16]), .I1(buf_adcdata2[16]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19252));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_268 (.I0(n9_adj_1249), .I1(comm_state[3]), .I2(n8066), 
            .I3(n20260), .O(n11282));
    defparam i1_4_lut_adj_268.LUT_INIT = 16'hc0c4;
    SB_LUT4 equal_178_i13_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12_adj_1254), .O(n13_adj_1253));   // zimaux_main.vhd(648[11:20])
    defparam equal_178_i13_2_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i11225_4_lut (.I0(n20429), .I1(buf_dds[3]), .I2(n14_adj_1437), 
            .I3(n10509), .O(n14950));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11225_4_lut.LUT_INIT = 16'hf5dd;
    SB_LUT4 i11_4_lut_adj_269 (.I0(buf_dds[2]), .I1(\comm_buf[1] [2]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19116));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_269.LUT_INIT = 16'hca0a;
    SB_LUT4 add_328_17_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[15]), .I2(M_MOSI4), 
            .I3(n18904), .O(n2316)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_270 (.I0(buf_dds[1]), .I1(\comm_buf[1] [1]), .I2(n10509), 
            .I3(n1_adj_1244), .O(n19114));   // zimaux_main.vhd(431[3] 688[10])
    defparam i11_4_lut_adj_270.LUT_INIT = 16'hca0a;
    SB_LUT4 add_328_16_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[14]), .I2(M_MOSI4), 
            .I3(n18903), .O(n2317)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_16 (.CI(n18903), .I0(acadc_skipcnt[14]), .I1(M_MOSI4), 
            .CO(n18904));
    SB_LUT4 add_328_15_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[13]), .I2(M_MOSI4), 
            .I3(n18902), .O(n2318)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_15 (.CI(n18902), .I0(acadc_skipcnt[13]), .I1(M_MOSI4), 
            .CO(n18903));
    SB_LUT4 i12_4_lut_adj_271 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19798));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_271.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_272 (.I0(cmd_rdadctmp_adj_1491[18]), .I1(cmd_rdadctmp_adj_1491[17]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19594));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_272.LUT_INIT = 16'hca0a;
    SB_LUT4 i12349_4_lut (.I0(cmd_rdadctmp_adj_1468[16]), .I1(cmd_rdadctmp_adj_1468[15]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14957));
    defparam i12349_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_273 (.I0(cmd_rdadctmp_adj_1491[17]), .I1(cmd_rdadctmp_adj_1491[16]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19592));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_273.LUT_INIT = 16'hca0a;
    SB_LUT4 buf_control_2__I_0_1_lut (.I0(buf_control[2]), .I1(M_MOSI4), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(M_POW));   // zimaux_main.vhd(404[14:32])
    defparam buf_control_2__I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 n21551_bdd_4_lut (.I0(n21551), .I1(\comm_buf[9] [0]), .I2(\comm_buf[8] [0]), 
            .I3(comm_index[1]), .O(n21554));
    defparam n21551_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_274 (.I0(cmd_rdadctmp_adj_1491[16]), .I1(cmd_rdadctmp_adj_1491[15]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19552));
    defparam i12_4_lut_adj_274.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_275 (.I0(comm_state[0]), .I1(n12), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20260));   // zimaux_main.vhd(448[4] 687[13])
    defparam i1_2_lut_adj_275.LUT_INIT = 16'heeee;
    SB_LUT4 i2_3_lut_adj_276 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n9));   // zimaux_main.vhd(667[11:20])
    defparam i2_3_lut_adj_276.LUT_INIT = 16'hbfbf;
    SB_LUT4 i12_4_lut_adj_277 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19752));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_277.LUT_INIT = 16'hca0a;
    SB_LUT4 i16618_2_lut (.I0(eis_state[2]), .I1(M_DCSEL), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20373));
    defparam i16618_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i8_4_lut (.I0(data_cntvec[9]), .I1(data_cntvec[15]), .I2(req_data_cnt[9]), 
            .I3(req_data_cnt[15]), .O(n24_adj_1398));   // zimaux_main.vhd(795[9:35])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22_adj_1418));   // zimaux_main.vhd(795[9:35])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 add_328_14_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[12]), .I2(M_MOSI4), 
            .I3(n18901), .O(n2319)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_14 (.CI(n18901), .I0(acadc_skipcnt[12]), .I1(M_MOSI4), 
            .CO(n18902));
    SB_LUT4 i1_3_lut (.I0(eis_state[0]), .I1(eis_state[2]), .I2(eis_state[1]), 
            .I3(M_MOSI4), .O(n12_adj_1450));
    defparam i1_3_lut.LUT_INIT = 16'h5151;
    SB_LUT4 add_328_13_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[11]), .I2(M_MOSI4), 
            .I3(n18900), .O(n2320)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_13 (.CI(n18900), .I0(acadc_skipcnt[11]), .I1(M_MOSI4), 
            .CO(n18901));
    SB_LUT4 add_324_8_lut (.I0(M_MOSI4), .I1(data_cntvec[6]), .I2(M_MOSI4), 
            .I3(n18880), .O(n2276)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_328_12_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[10]), .I2(M_MOSI4), 
            .I3(n18899), .O(n2321)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_278 (.I0(tacadc_rst), .I1(eis_state[1]), .I2(n12_adj_1450), 
            .I3(n20373), .O(n10423));
    defparam i1_4_lut_adj_278.LUT_INIT = 16'h5051;
    SB_LUT4 i13_4_lut (.I0(eis_adc_trig), .I1(eis_state[2]), .I2(n10423), 
            .I3(eis_state[1]), .O(n19432));   // zimaux_main.vhd(282[9:18])
    defparam i13_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i12_4_lut_adj_279 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19796));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_279.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_280 (.I0(buf_adcdata_vdc2[15]), .I1(buf_adcdata2[15]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19250));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_280.LUT_INIT = 16'hca0a;
    SB_LUT4 i7_4_lut (.I0(data_cntvec[11]), .I1(data_cntvec[14]), .I2(req_data_cnt[11]), 
            .I3(req_data_cnt[14]), .O(n23_adj_1417));   // zimaux_main.vhd(795[9:35])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i11_4_lut_adj_281 (.I0(vdc_adc_trig), .I1(n1_adj_1456), .I2(tacadc_rst), 
            .I3(n4_adj_1436), .O(n19186));   // zimaux_main.vhd(283[9:17])
    defparam i11_4_lut_adj_281.LUT_INIT = 16'hacaa;
    SB_LUT4 n21683_bdd_4_lut (.I0(n21683), .I1(n4949), .I2(n4969), .I3(n4961), 
            .O(n21686));
    defparam n21683_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i5_4_lut (.I0(data_cntvec[10]), .I1(data_cntvec[12]), .I2(req_data_cnt[10]), 
            .I3(req_data_cnt[12]), .O(n21_adj_1420));   // zimaux_main.vhd(795[9:35])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i4_4_lut (.I0(data_cntvec[3]), .I1(data_cntvec[5]), .I2(req_data_cnt[3]), 
            .I3(req_data_cnt[5]), .O(n20));   // zimaux_main.vhd(795[9:35])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut_adj_282 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18_adj_1422));   // zimaux_main.vhd(795[9:35])
    defparam i2_4_lut_adj_282.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_283 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19792));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_283.LUT_INIT = 16'hca0a;
    SB_LUT4 i10378_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1391), .I2(n11312), 
            .I3(M_MOSI4), .O(n14103));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10378_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17575_3_lut_4_lut (.I0(comm_cmd[0]), .I1(n12), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n369));   // zimaux_main.vhd(651[11:20])
    defparam i17575_3_lut_4_lut.LUT_INIT = 16'h1000;
    SB_LUT4 i10379_3_lut (.I0(req_data_cnt[7]), .I1(n14), .I2(n11312), 
            .I3(M_MOSI4), .O(n14104));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_284 (.I0(buf_adcdata_vdc2[14]), .I1(buf_adcdata2[14]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19248));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_284.LUT_INIT = 16'hca0a;
    SB_LUT4 i10349_3_lut_4_lut (.I0(buf_device_acadc[6]), .I1(n8066), .I2(\comm_buf[0] [6]), 
            .I3(n11228), .O(n14074));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10349_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i12_4_lut_adj_285 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19790));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_285.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_286 (.I0(comm_cmd[0]), .I1(n12), .I2(comm_cmd[2]), 
            .I3(comm_cmd[1]), .O(n13_adj_1251));   // zimaux_main.vhd(651[11:20])
    defparam i1_2_lut_3_lut_4_lut_adj_286.LUT_INIT = 16'hfffe;
    SB_LUT4 i11244_3_lut (.I0(n14010), .I1(bit_cnt_adj_1535[0]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n14969));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i11244_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i10380_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1404), .I2(n11312), 
            .I3(M_MOSI4), .O(n14105));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10380_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 eis_state_2__bdd_4_lut (.I0(eis_state[2]), .I1(n16), .I2(n20862), 
            .I3(eis_state[1]), .O(n21677));
    defparam eis_state_2__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i16614_3_lut (.I0(adc_state_adj_1513[3]), .I1(adc_state_adj_1513[0]), 
            .I2(adc_state_adj_1513[2]), .I3(M_MOSI4), .O(n20369));
    defparam i16614_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i3_4_lut_adj_287 (.I0(data_cntvec[8]), .I1(data_cntvec[13]), 
            .I2(req_data_cnt[8]), .I3(req_data_cnt[13]), .O(n19_adj_1421));   // zimaux_main.vhd(795[9:35])
    defparam i3_4_lut_adj_287.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_288 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1423));   // zimaux_main.vhd(795[9:35])
    defparam i1_4_lut_adj_288.LUT_INIT = 16'h7bde;
    SB_LUT4 i14_4_lut (.I0(n21_adj_1420), .I1(n23_adj_1417), .I2(n22_adj_1418), 
            .I3(n24_adj_1398), .O(n30));   // zimaux_main.vhd(795[9:35])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13_4_lut_adj_289 (.I0(n17_adj_1423), .I1(n19_adj_1421), .I2(n18_adj_1422), 
            .I3(n20), .O(n29));   // zimaux_main.vhd(795[9:35])
    defparam i13_4_lut_adj_289.LUT_INIT = 16'hfffe;
    SB_LUT4 i10348_3_lut_4_lut (.I0(buf_device_acadc[5]), .I1(\comm_buf[0] [5]), 
            .I2(n8066), .I3(n11228), .O(n14073));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10348_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2_3_lut_adj_290 (.I0(n20144), .I1(drdy_falling_adj_1371), .I2(adc_state_adj_1513[0]), 
            .I3(M_MOSI4), .O(n20145));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_290.LUT_INIT = 16'h0808;
    SB_LUT4 i17618_4_lut (.I0(n20145), .I1(M_CS4), .I2(adc_state_adj_1513[1]), 
            .I3(n20369), .O(n15));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17618_4_lut.LUT_INIT = 16'h4544;
    SB_LUT4 i10381_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1403), .I2(n11312), 
            .I3(M_MOSI4), .O(n14106));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10381_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10347_3_lut_4_lut (.I0(buf_device_acadc[4]), .I1(n8066), .I2(\comm_buf[0] [4]), 
            .I3(n11228), .O(n14072));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10347_3_lut_4_lut.LUT_INIT = 16'h30aa;
    SB_LUT4 i1_2_lut_adj_291 (.I0(eis_state[0]), .I1(M_DCSEL), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n33));
    defparam i1_2_lut_adj_291.LUT_INIT = 16'h8888;
    SB_LUT4 equal_316_i7_2_lut (.I0(acadc_skipCount[6]), .I1(acadc_skipcnt[6]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n7_adj_1246));   // zimaux_main.vhd(761[10:41])
    defparam equal_316_i7_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_292 (.I0(cs_mask_cnt[1]), .I1(cs_mask_cnt[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n19015));
    defparam i1_2_lut_adj_292.LUT_INIT = 16'h9999;
    SB_LUT4 i12_4_lut_adj_293 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19788));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_293.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_17783 (.I0(comm_index[0]), .I1(\comm_buf[6] [0]), 
            .I2(\comm_buf[7] [0]), .I3(comm_index[1]), .O(n21545));
    defparam comm_index_0__bdd_4_lut_17783.LUT_INIT = 16'he4aa;
    SB_LUT4 i10382_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1401), .I2(n11312), 
            .I3(M_MOSI4), .O(n14107));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10382_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_294 (.I0(acadc_skipCount[7]), .I1(acadc_skipCount[11]), 
            .I2(acadc_skipcnt[7]), .I3(acadc_skipcnt[11]), .O(n20_adj_1455));
    defparam i4_4_lut_adj_294.LUT_INIT = 16'h7bde;
    SB_LUT4 i14611_4_lut (.I0(buf_adcdata_vdc2[12]), .I1(buf_adcdata2[12]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14240));
    defparam i14611_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut_adj_295 (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[14]), .O(n24));
    defparam i8_4_lut_adj_295.LUT_INIT = 16'h7bde;
    SB_LUT4 i6_4_lut_adj_296 (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[3]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[3]), .O(n22_adj_1452));
    defparam i6_4_lut_adj_296.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut_adj_297 (.I0(acadc_skipCount[5]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[5]), .I3(acadc_skipcnt[15]), .O(n23_adj_1451));
    defparam i7_4_lut_adj_297.LUT_INIT = 16'h7bde;
    SB_LUT4 i5_4_lut_adj_298 (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21_adj_1250));
    defparam i5_4_lut_adj_298.LUT_INIT = 16'h7bde;
    SB_DFFESS cs_mask_cnt_2133__i1 (.Q(cs_mask_cnt[1]), .C(clk_32MHz), .E(n12286), 
            .D(n19015), .S(n13607));   // zimaux_main.vhd(445[20:31])
    SB_LUT4 i12_4_lut_adj_299 (.I0(cmd_rdadctmp_adj_1514[0]), .I1(M_MISO4), 
            .I2(n12099), .I3(adc_state_adj_1513[0]), .O(n19676));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_299.LUT_INIT = 16'hca0a;
    SB_LUT4 i10346_3_lut_4_lut (.I0(M_FLT1), .I1(\comm_buf[0] [3]), .I2(n8066), 
            .I3(n11228), .O(n14071));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10346_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2860_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n7936), 
            .I3(M_MOSI4), .O(n8_adj_1379));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2858_3_lut (.I0(data_index_8__N_628[0]), .I1(data_index[0]), 
            .I2(n9699), .I3(M_MOSI4), .O(n7_adj_1378));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2858_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10345_3_lut_4_lut (.I0(M_FLT0), .I1(\comm_buf[0] [2]), .I2(n8066), 
            .I3(n11228), .O(n14070));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10345_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i2_4_lut_adj_300 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1459));
    defparam i2_4_lut_adj_300.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_301 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19786));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_301.LUT_INIT = 16'hca0a;
    SB_LUT4 i13101_3_lut (.I0(buf_adcdata1[7]), .I1(cmd_rdadctmp[15]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14119));
    defparam i13101_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20_adj_1455), .I2(n7_adj_1246), 
            .I3(acadc_skipcnt[8]), .O(n26));
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i16569_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20323));   // zimaux_main.vhd(448[4] 687[13])
    defparam i16569_2_lut_3_lut.LUT_INIT = 16'hb0b0;
    SB_LUT4 i10344_3_lut_4_lut (.I0(M_OSR1), .I1(\comm_buf[0] [1]), .I2(n8066), 
            .I3(n11228), .O(n14069));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10344_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_state_3__I_0_444_Mux_0_i15_4_lut (.I0(n7_adj_1378), .I1(n8_adj_1379), 
            .I2(comm_state[3]), .I3(n8066), .O(data_index_8__N_326[0]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_444_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_302 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19680));
    defparam i12_4_lut_adj_302.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n7_adj_1248), .O(n10603));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'hada8;
    SB_LUT4 M_START_I_0_3_lut (.I0(ICE_IOL_25B), .I1(eis_start), .I2(M_DCSEL), 
            .I3(M_MOSI4), .O(M_START));   // zimaux_main.vhd(396[15:62])
    defparam M_START_I_0_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1_4_lut_4_lut_adj_303 (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_state[0]), .I3(comm_cmd[3]), .O(n4_adj_1245));   // zimaux_main.vhd(448[4] 687[13])
    defparam i1_4_lut_4_lut_adj_303.LUT_INIT = 16'h0402;
    SB_LUT4 i16606_3_lut (.I0(adc_state_adj_1490[3]), .I1(adc_state_adj_1490[0]), 
            .I2(adc_state_adj_1490[2]), .I3(M_MOSI4), .O(n20361));
    defparam i16606_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i14_4_lut_adj_304 (.I0(n21_adj_1250), .I1(n23_adj_1451), .I2(n22_adj_1452), 
            .I3(n24), .O(n30_adj_1446));
    defparam i14_4_lut_adj_304.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_3_lut_4_lut_adj_305 (.I0(comm_state[2]), .I1(n20244), .I2(cs_mask_cnt_1__N_363), 
            .I3(cs_falling_pend), .O(n25));
    defparam i1_3_lut_4_lut_adj_305.LUT_INIT = 16'h4044;
    SB_LUT4 i1_4_lut_adj_306 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[13]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[13]), .O(n17));
    defparam i1_4_lut_adj_306.LUT_INIT = 16'h7bde;
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n14112));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i15_4_lut_adj_307 (.I0(n17), .I1(n30_adj_1446), .I2(n26), 
            .I3(n18_adj_1459), .O(n9_adj_1426));
    defparam i15_4_lut_adj_307.LUT_INIT = 16'hfffe;
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n14111));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n14110));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 n21521_bdd_4_lut (.I0(n21521), .I1(n4947), .I2(n4967), .I3(n4961), 
            .O(n21524));
    defparam n21521_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n14109));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_17758 (.I0(comm_cmd[0]), .I1(eis_end), 
            .I2(n4891), .I3(n4961), .O(n21515));
    defparam comm_cmd_0__bdd_4_lut_17758.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_308 (.I0(n20141), .I1(drdy_falling_adj_1331), .I2(adc_state_adj_1490[0]), 
            .I3(M_MOSI4), .O(n20142));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_308.LUT_INIT = 16'h0808;
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n14108));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i17621_4_lut (.I0(n20142), .I1(M_CS3), .I2(adc_state_adj_1490[1]), 
            .I3(n20361), .O(n15_adj_1252));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17621_4_lut.LUT_INIT = 16'h4544;
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n14107));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_324_8 (.CI(n18880), .I0(data_cntvec[6]), .I1(M_MOSI4), 
            .CO(n18881));
    SB_LUT4 add_324_7_lut (.I0(M_MOSI4), .I1(data_cntvec[5]), .I2(M_MOSI4), 
            .I3(n18879), .O(n2277)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_7 (.CI(n18879), .I0(data_cntvec[5]), .I1(M_MOSI4), 
            .CO(n18880));
    SB_LUT4 add_324_6_lut (.I0(M_MOSI4), .I1(data_cntvec[4]), .I2(M_MOSI4), 
            .I3(n18878), .O(n2278)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n14106));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_328_12 (.CI(n18899), .I0(acadc_skipcnt[10]), .I1(M_MOSI4), 
            .CO(n18900));
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n14105));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 add_328_11_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[9]), .I2(M_MOSI4), 
            .I3(n18898), .O(n2322)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_11 (.CI(n18898), .I0(acadc_skipcnt[9]), .I1(M_MOSI4), 
            .CO(n18899));
    SB_CARRY add_324_6 (.CI(n18878), .I0(data_cntvec[4]), .I1(M_MOSI4), 
            .CO(n18879));
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_309 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n9_adj_1448), .O(n19094));
    defparam i1_4_lut_4_lut_4_lut_adj_309.LUT_INIT = 16'hb9a8;
    SB_LUT4 i3_3_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_data_vld), .O(n20310));
    defparam i3_3_lut_4_lut_4_lut.LUT_INIT = 16'hedfd;
    SB_LUT4 i16729_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20486));
    defparam i16729_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16730_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[3] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20487));
    defparam i16730_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10311_3_lut (.I0(M_OSR0), .I1(n14_adj_1404), .I2(n11228), 
            .I3(M_MOSI4), .O(n14036));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10311_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10312_3_lut (.I0(buf_control[0]), .I1(n14_adj_1404), .I2(n11252), 
            .I3(M_MOSI4), .O(n14037));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10312_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n13626));
    defparam i1_3_lut_4_lut_4_lut_4_lut.LUT_INIT = 16'ha9a8;
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n14104));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_3_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20232));
    defparam i1_3_lut_3_lut_3_lut.LUT_INIT = 16'hf8f8;
    SB_LUT4 i10315_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n9652), 
            .I3(M_MOSI4), .O(n14040));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10315_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_328_10_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[8]), .I2(M_MOSI4), 
            .I3(n18897), .O(n2323)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_adj_310 (.I0(n51), .I1(n19010), .I2(eis_state[0]), 
            .I3(M_MOSI4), .O(n4));
    defparam i1_3_lut_adj_310.LUT_INIT = 16'h5353;
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n14103));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10316_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n9652), 
            .I3(M_MOSI4), .O(n14041));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10316_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_adj_311 (.I0(eis_state[2]), .I1(eis_state[1]), .I2(n33), 
            .I3(n4), .O(n20301));
    defparam i1_4_lut_adj_311.LUT_INIT = 16'hef67;
    SB_LUT4 i2_3_lut_adj_312 (.I0(comm_state[3]), .I1(comm_state[0]), .I2(n9667), 
            .I3(M_MOSI4), .O(n9652));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2_3_lut_adj_312.LUT_INIT = 16'h0202;
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n14102));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n14101));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n14100));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_328_10 (.CI(n18897), .I0(acadc_skipcnt[8]), .I1(M_MOSI4), 
            .CO(n18898));
    SB_CARRY add_323_2 (.CI(M_MOSI4), .I0(data_count[0]), .I1(acadc_dtrigH), 
            .CO(n18867));
    SB_LUT4 add_328_9_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[7]), .I2(M_MOSI4), 
            .I3(n18896), .O(n2324)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n14099));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10317_3_lut (.I0(eis_start_cmd), .I1(\comm_buf[0] [0]), .I2(n9652), 
            .I3(M_MOSI4), .O(n14042));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10317_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_324_5_lut (.I0(M_MOSI4), .I1(data_cntvec[3]), .I2(M_MOSI4), 
            .I3(n18877), .O(n2279)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_9 (.CI(n18896), .I0(acadc_skipcnt[7]), .I1(M_MOSI4), 
            .CO(n18897));
    SB_LUT4 add_328_8_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[6]), .I2(M_MOSI4), 
            .I3(n18895), .O(n2325)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_5 (.CI(n18877), .I0(data_cntvec[3]), .I1(M_MOSI4), 
            .CO(n18878));
    SB_CARRY add_328_8 (.CI(n18895), .I0(acadc_skipcnt[6]), .I1(M_MOSI4), 
            .CO(n18896));
    SB_LUT4 i1_3_lut_4_lut_4_lut_4_lut_adj_313 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n11215));
    defparam i1_3_lut_4_lut_4_lut_4_lut_adj_313.LUT_INIT = 16'hb8a8;
    SB_LUT4 add_324_4_lut (.I0(M_MOSI4), .I1(data_cntvec[2]), .I2(M_MOSI4), 
            .I3(n18876), .O(n2280)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_324_4 (.CI(n18876), .I0(data_cntvec[2]), .I1(M_MOSI4), 
            .CO(n18877));
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n14098));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 add_328_7_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[5]), .I2(M_MOSI4), 
            .I3(n18894), .O(n2326)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_7 (.CI(n18894), .I0(acadc_skipcnt[5]), .I1(M_MOSI4), 
            .CO(n18895));
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n14097));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n14096));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 add_324_3_lut (.I0(M_MOSI4), .I1(data_cntvec[1]), .I2(M_MOSI4), 
            .I3(n18875), .O(n2281)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i10383_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1400), .I2(n11312), 
            .I3(M_MOSI4), .O(n14108));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10383_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10318_3_lut (.I0(comm_rx_buf[0]), .I1(ICE_SPI_MOSI), .I2(n5575), 
            .I3(M_MOSI4), .O(n14043));   // spi_slave.vhd(48[3] 92[10])
    defparam i10318_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 add_328_6_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[4]), .I2(M_MOSI4), 
            .I3(n18893), .O(n2327)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_6_lut.LUT_INIT = 16'hC33C;
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n14095));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_328_6 (.CI(n18893), .I0(acadc_skipcnt[4]), .I1(M_MOSI4), 
            .CO(n18894));
    SB_LUT4 add_328_5_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[3]), .I2(M_MOSI4), 
            .I3(n18892), .O(n2328)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i14571_4_lut (.I0(buf_adcdata_vdc2[10]), .I1(buf_adcdata2[10]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14246));
    defparam i14571_4_lut.LUT_INIT = 16'hca0a;
    SB_CARRY add_324_3 (.CI(n18875), .I0(data_cntvec[1]), .I1(M_MOSI4), 
            .CO(n18876));
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n14094));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n14093));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n14092));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n14091));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i16765_3_lut (.I0(\comm_buf[0] [6]), .I1(\comm_buf[1] [6]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20522));
    defparam i16765_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n14090));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12175_4_lut (.I0(eis_state[2]), .I1(n15896), .I2(eis_state[1]), 
            .I3(n60), .O(eis_state_2__N_279[2]));   // zimaux_main.vhd(282[9:18])
    defparam i12175_4_lut.LUT_INIT = 16'hea4a;
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n14089));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 n21671_bdd_4_lut (.I0(n21671), .I1(acadc_dtrigH), .I2(eis_state[0]), 
            .I3(eis_state[1]), .O(eis_state_2__N_279[1]));
    defparam n21671_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n14088));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n14087));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_314 (.I0(cmd_rdadctmp_adj_1491[0]), .I1(M_MISO3), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19674));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_314.LUT_INIT = 16'hca0a;
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n14086));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 reset_int_I_0_2_lut (.I0(comm_clear), .I1(comm_state_3__N_403[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6108));   // zimaux_main.vhd(421[7:76])
    defparam reset_int_I_0_2_lut.LUT_INIT = 16'heeee;
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n14085));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n14084));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i16718_3_lut (.I0(\comm_buf[6] [3]), .I1(\comm_buf[7] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20475));
    defparam i16718_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16717_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20474));
    defparam i16717_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i24_4_lut_adj_315 (.I0(n20158), .I1(comm_state[0]), .I2(comm_length_3__N_415[1]), 
            .I3(comm_state[2]), .O(n9_adj_1448));   // zimaux_main.vhd(431[3] 688[10])
    defparam i24_4_lut_adj_315.LUT_INIT = 16'h20cc;
    SB_LUT4 i4166_3_lut_4_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1430));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4166_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 EIS_SYNCCLK_I_0_1_lut (.I0(EIS_SYNCCLK), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(M_CLK1));   // zimaux_main.vhd(343[14:29])
    defparam EIS_SYNCCLK_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 n21527_bdd_4_lut (.I0(n21527), .I1(n4948), .I2(n4968), .I3(n4961), 
            .O(n21530));
    defparam n21527_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n14083));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i8810_3_lut (.I0(n21704), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12534));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8810_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1937_i1_3_lut (.I0(buf_adcdata_vdc1[8]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5132));
    defparam mux_1937_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6454_4_lut (.I0(n5132), .I1(buf_data2[35]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10178));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6454_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6455_3_lut (.I0(n21500), .I1(n10178), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[0]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6455_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_433_Mux_0_i6_3_lut (.I0(comm_buf_1__7__N_451[0]), 
            .I1(comm_rx_buf[0]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1377));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_0_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_316 (.I0(buf_data2[3]), .I1(buf_adcdata_vdc1[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n1_adj_1374));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_316.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_3_lut_adj_317 (.I0(n1_adj_1374), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12538));   // zimaux_main.vhd(241[9:17])
    defparam i6_3_lut_adj_317.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1917_i1_3_lut (.I0(buf_data2[64]), .I1(buf_adcdata_vdc2[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5056));
    defparam mux_1917_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_328_5 (.CI(n18892), .I0(acadc_skipcnt[3]), .I1(M_MOSI4), 
            .CO(n18893));
    SB_LUT4 add_324_2_lut (.I0(M_MOSI4), .I1(data_cntvec[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2282)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_328_4_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[2]), .I2(M_MOSI4), 
            .I3(n18891), .O(n2329)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8818_3_lut (.I0(n5056), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12542));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8818_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_323_3 (.CI(n18867), .I0(data_count[1]), .I1(M_MOSI4), 
            .CO(n18868));
    SB_LUT4 mux_1909_i1_3_lut (.I0(buf_data2[32]), .I1(buf_adcdata_vdc2[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5024));
    defparam mux_1909_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8822_3_lut (.I0(n5024), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12546));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8822_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16766_3_lut (.I0(\comm_buf[2] [6]), .I1(\comm_buf[3] [6]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20523));
    defparam i16766_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_324_2 (.CI(M_MOSI4), .I0(data_cntvec[0]), .I1(acadc_dtrigH), 
            .CO(n18875));
    SB_LUT4 comm_index_0__bdd_4_lut_17896 (.I0(comm_index[0]), .I1(\comm_buf[2] [0]), 
            .I2(\comm_buf[3] [0]), .I3(comm_index[1]), .O(n21665));
    defparam comm_index_0__bdd_4_lut_17896.LUT_INIT = 16'he4aa;
    SB_LUT4 add_323_10_lut (.I0(M_MOSI4), .I1(data_count[8]), .I2(M_MOSI4), 
            .I3(n18874), .O(n2256)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_328_4 (.CI(n18891), .I0(acadc_skipcnt[2]), .I1(M_MOSI4), 
            .CO(n18892));
    SB_LUT4 i12310_3_lut (.I0(buf_dds[15]), .I1(buf_adcdata_vdc1[23]), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4891));   // zimaux_main.vhd(241[9:17])
    defparam i12310_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8826_3_lut (.I0(n5414), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12550));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8826_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_2003_i1_3_lut (.I0(buf_data2[65]), .I1(buf_adcdata_vdc3[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5382));
    defparam mux_2003_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8830_3_lut (.I0(n5382), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12554));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8830_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1995_i1_3_lut (.I0(buf_data2[33]), .I1(buf_adcdata_vdc3[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5350));
    defparam mux_1995_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8834_3_lut (.I0(n5350), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12558));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8834_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1987_i1_3_lut (.I0(buf_data2[1]), .I1(buf_adcdata_vdc3[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5318));
    defparam mux_1987_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8838_3_lut (.I0(n5318), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12562));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8838_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1979_i1_3_lut (.I0(buf_data2[66]), .I1(buf_adcdata_vdc4[16]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5286));
    defparam mux_1979_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8842_3_lut (.I0(n5286), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12566));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8842_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1971_i1_3_lut (.I0(buf_data2[34]), .I1(buf_adcdata_vdc4[8]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5254));
    defparam mux_1971_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8846_3_lut (.I0(n5254), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12570));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8846_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1963_i1_3_lut (.I0(buf_data2[2]), .I1(buf_adcdata_vdc4[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n5222));
    defparam mux_1963_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n11629), .D(n2316), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i14583_4_lut (.I0(cmd_rdadctmp_adj_1468[17]), .I1(cmd_rdadctmp_adj_1468[16]), 
            .I2(n11921), .I3(adc_state_adj_1467[0]), .O(n14980));
    defparam i14583_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 add_328_3_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[1]), .I2(M_MOSI4), 
            .I3(n18890), .O(n2330)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8850_3_lut (.I0(n5222), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n12574));   // zimaux_main.vhd(448[4] 687[13])
    defparam i8850_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_328_3 (.CI(n18890), .I0(acadc_skipcnt[1]), .I1(M_MOSI4), 
            .CO(n18891));
    SB_LUT4 i4158_3_lut_4_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1428));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4158_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i2_3_lut_4_lut_adj_318 (.I0(dc_state[0]), .I1(ICE_IOL_25B), 
            .I2(eis_start_cmd), .I3(M_DCSEL), .O(n10));
    defparam i2_3_lut_4_lut_adj_318.LUT_INIT = 16'h1500;
    SB_LUT4 i4130_3_lut_4_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1425));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4130_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_319 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n18_adj_1408), .O(n10551));
    defparam i1_4_lut_4_lut_4_lut_adj_319.LUT_INIT = 16'hb9a8;
    SB_LUT4 i10384_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1399), .I2(n11312), 
            .I3(M_MOSI4), .O(n14109));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10384_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_320 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19782));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_320.LUT_INIT = 16'hca0a;
    SB_LUT4 n21665_bdd_4_lut (.I0(n21665), .I1(\comm_buf[1] [0]), .I2(\comm_buf[0] [0]), 
            .I3(comm_index[1]), .O(n21668));
    defparam n21665_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i15200_1_lut (.I0(cs_mask_cnt[0]), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15_adj_1373));   // zimaux_main.vhd(445[20:31])
    defparam i15200_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_321 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n10561));
    defparam i1_4_lut_4_lut_4_lut_adj_321.LUT_INIT = 16'ha9b8;
    SB_LUT4 i4086_3_lut_4_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1416));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4086_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i22_4_lut (.I0(n8066), .I1(n20869), .I2(comm_state[3]), .I3(comm_state[0]), 
            .O(n10445));
    defparam i22_4_lut.LUT_INIT = 16'ha5e5;
    SB_LUT4 i12786_3_lut (.I0(buf_adcdata1[0]), .I1(cmd_rdadctmp[8]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14044));
    defparam i12786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i16604_3_lut (.I0(adc_state_adj_1467[3]), .I1(adc_state_adj_1467[0]), 
            .I2(adc_state_adj_1467[2]), .I3(M_MOSI4), .O(n20359));
    defparam i16604_3_lut.LUT_INIT = 16'h4141;
    SB_LUT4 i10320_4_lut (.I0(acadc_dtrig1), .I1(adc_state[2]), .I2(adc_state[1]), 
            .I3(n20367), .O(n14045));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10320_4_lut.LUT_INIT = 16'haae8;
    SB_LUT4 i10321_4_lut (.I0(M_SCLK1), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(n7_adj_1381), .O(n14046));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10321_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 mux_1881_i4_3_lut (.I0(req_data_cnt[11]), .I1(buf_data2[79]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4921));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17605_4_lut (.I0(comm_state[3]), .I1(comm_state_3__N_403[1]), 
            .I2(n25), .I3(n25_adj_1243), .O(n23));
    defparam i17605_4_lut.LUT_INIT = 16'haeaf;
    SB_LUT4 i17466_2_lut (.I0(n7_adj_1256), .I1(comm_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20725));   // zimaux_main.vhd(448[4] 687[13])
    defparam i17466_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n11629), .D(n2317), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n11629), .D(n2318), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 mux_1886_i4_3_lut (.I0(buf_control[3]), .I1(M_FLT1), .I2(comm_cmd[1]), 
            .I3(M_MOSI4), .O(n4934));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n11629), .D(n2319), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i1_2_lut_3_lut_adj_322 (.I0(eis_stop), .I1(ICE_IOL_25B), .I2(eis_start_cmd), 
            .I3(M_MOSI4), .O(n51));
    defparam i1_2_lut_3_lut_adj_322.LUT_INIT = 16'heaea;
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n11629), .D(n2320), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n11629), .D(n2321), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n11629), .D(n2322), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n11629), .D(n2323), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n11629), .D(n2324), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i4078_3_lut_4_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1414));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4078_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 comm_state_3__I_0_428_Mux_2_i6_4_lut (.I0(n4_adj_1405), .I1(n20725), 
            .I2(comm_state[1]), .I3(comm_state_3__N_403[1]), .O(n6_adj_1406));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_2_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i2789_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6512));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2789_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n11629), .D(n2325), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 mux_1891_i4_4_lut (.I0(acadc_skipCount[11]), .I1(data_idxvec[11]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[1]), .O(n4947));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1891_i4_4_lut.LUT_INIT = 16'hf0ca;
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n11629), .D(n2326), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 comm_state_3__I_0_428_Mux_2_i7_3_lut (.I0(comm_state_3__N_380[1]), 
            .I1(n6_adj_1406), .I2(comm_state[2]), .I3(M_MOSI4), .O(n7_adj_1407));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_2_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n11629), .D(n2327), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n11629), .D(n2328), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i4066_3_lut_4_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1412));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4066_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n11629), .D(n2329), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n11629), .D(n2330), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n11574), 
            .D(n2267), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n11574), 
            .D(n2268), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 add_328_2_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[0]), .I2(acadc_dtrigH), 
            .I3(M_MOSI4), .O(n2331)) /* synthesis syn_instantiated=1 */ ;
    defparam add_328_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n11574), 
            .D(n2269), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n11574), 
            .D(n2270), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i10323_4_lut (.I0(acadc_dtrig2), .I1(adc_state_adj_1467[2]), 
            .I2(adc_state_adj_1467[1]), .I3(n20387), .O(n14048));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10323_4_lut.LUT_INIT = 16'haae8;
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n11574), 
            .D(n2271), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n11574), 
            .D(n2272), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n11574), 
            .D(n2273), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n11574), 
            .D(n2274), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i10385_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1419), .I2(n11312), 
            .I3(M_MOSI4), .O(n14110));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10385_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n11574), 
            .D(n2275), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n11574), 
            .D(n2276), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n11574), 
            .D(n2277), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 comm_state_3__I_0_428_Mux_1_i2_3_lut_3_lut (.I0(comm_state_3__N_403[1]), 
            .I1(comm_state[1]), .I2(comm_state[0]), .I3(M_MOSI4), .O(n2_adj_1409));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_1_i2_3_lut_3_lut.LUT_INIT = 16'h4a4a;
    SB_LUT4 comm_index_0__bdd_4_lut_17877 (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n21659));
    defparam comm_index_0__bdd_4_lut_17877.LUT_INIT = 16'he4aa;
    SB_LUT4 i2_3_lut_adj_323 (.I0(n20138), .I1(drdy_falling_adj_1291), .I2(adc_state_adj_1467[0]), 
            .I3(M_MOSI4), .O(n20139));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut_adj_323.LUT_INIT = 16'h0808;
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n11574), 
            .D(n2278), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i12_4_lut_adj_324 (.I0(cmd_rdadctmp_adj_1491[15]), .I1(cmd_rdadctmp_adj_1491[14]), 
            .I2(n12021), .I3(adc_state_adj_1490[0]), .O(n19590));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_324.LUT_INIT = 16'hca0a;
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n11574), 
            .D(n2279), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n11574), 
            .D(n2280), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_325 (.I0(cs_sync1), .I1(cs_sync2), 
            .I2(cs_mask_cnt[0]), .I3(cs_mask_cnt[1]), .O(n12286));   // zimaux_main.vhd(439[8:37])
    defparam i1_2_lut_3_lut_4_lut_adj_325.LUT_INIT = 16'hfff4;
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n11574), 
            .D(n2281), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n11574), 
            .D(n2256), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n11574), 
            .D(n2257), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n11574), 
            .D(n2258), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFF buf_control_i7 (.Q(buf_control[7]), .C(clk_32MHz), .D(n14082));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n11574), 
            .D(n2259), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n11574), 
            .D(n2260), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n11574), 
            .D(n2261), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n11574), 
            .D(n2262), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n11574), 
            .D(n2263), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFF buf_control_i6 (.Q(buf_control[6]), .C(clk_32MHz), .D(n14081));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10386_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1397), .I2(n11312), 
            .I3(M_MOSI4), .O(n14111));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10386_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut_adj_326 (.I0(dc_state[1]), .I1(dc_state[0]), .I2(dc_state[2]), 
            .I3(M_MOSI4), .O(dc_state_2__N_282[2]));   // zimaux_main.vhd(283[9:17])
    defparam i1_3_lut_adj_326.LUT_INIT = 16'h2828;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_327 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[2]), .I3(comm_cmd[4]), .O(n10087));
    defparam i1_2_lut_3_lut_4_lut_adj_327.LUT_INIT = 16'h1000;
    SB_LUT4 i2233_3_lut (.I0(comm_index[3]), .I1(comm_index[2]), .I2(n5949), 
            .I3(M_MOSI4), .O(comm_index_3__N_411[3]));   // zimaux_main.vhd(607[5] 617[12])
    defparam i2233_3_lut.LUT_INIT = 16'h6a6a;
    SB_DFF buf_control_i5 (.Q(buf_control[5]), .C(clk_32MHz), .D(n14080));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i17624_4_lut (.I0(n20139), .I1(M_CS2), .I2(adc_state_adj_1467[1]), 
            .I3(n20359), .O(n15_adj_1258));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17624_4_lut.LUT_INIT = 16'h4544;
    SB_DFF buf_control_i4 (.Q(buf_control[4]), .C(clk_32MHz), .D(n14079));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i31_4_lut (.I0(comm_state[0]), .I1(comm_length_3__N_415[1]), 
            .I2(comm_state[2]), .I3(n20158), .O(n18_adj_1408));
    defparam i31_4_lut.LUT_INIT = 16'h5a1a;
    SB_LUT4 n21659_bdd_4_lut (.I0(n21659), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n21662));
    defparam n21659_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_adj_328 (.I0(dc_state[1]), .I1(dc_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n1_adj_1456));   // zimaux_main.vhd(694[3] 728[10])
    defparam i1_2_lut_adj_328.LUT_INIT = 16'h2222;
    SB_DFF buf_control_i3 (.Q(buf_control[3]), .C(clk_32MHz), .D(n14078));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i21_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(comm_state[2]), 
            .I3(comm_state[3]), .O(ICE_GPMI_0_N_891));   // zimaux_main.vhd(448[4] 687[13])
    defparam i21_4_lut_4_lut.LUT_INIT = 16'h03f4;
    SB_LUT4 equal_180_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9_adj_1249));   // zimaux_main.vhd(654[11:20])
    defparam equal_180_i9_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i12_4_lut_adj_329 (.I0(buf_adcdata_vdc2[8]), .I1(buf_adcdata2[8]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19234));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_329.LUT_INIT = 16'hca0a;
    SB_DFF buf_control_i2 (.Q(buf_control[2]), .C(clk_32MHz), .D(n14077));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_330 (.I0(buf_adcdata_vdc2[7]), .I1(buf_adcdata2[7]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19232));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_330.LUT_INIT = 16'hca0a;
    SB_LUT4 i2597_3_lut (.I0(comm_length[2]), .I1(n16887), .I2(n20206), 
            .I3(M_MOSI4), .O(comm_length_3__N_415[2]));   // zimaux_main.vhd(501[5] 583[14])
    defparam i2597_3_lut.LUT_INIT = 16'hb3b3;
    SB_LUT4 i9882_2_lut_3_lut_4_lut (.I0(cs_sync1), .I1(cs_sync2), .I2(cs_mask_cnt[0]), 
            .I3(cs_mask_cnt[1]), .O(n13607));   // zimaux_main.vhd(439[8:37])
    defparam i9882_2_lut_3_lut_4_lut.LUT_INIT = 16'h0004;
    SB_DFF buf_control_i1 (.Q(M_DCSEL), .C(clk_32MHz), .D(n14076));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i2_3_lut_adj_331 (.I0(n13_adj_1251), .I1(n9667), .I2(n13_adj_1253), 
            .I3(M_MOSI4), .O(n17017));
    defparam i2_3_lut_adj_331.LUT_INIT = 16'h8080;
    SB_LUT4 i12_4_lut_adj_332 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19816));
    defparam i12_4_lut_adj_332.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_333 (.I0(buf_adcdata_vdc2[6]), .I1(buf_adcdata2[6]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19230));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_333.LUT_INIT = 16'hca0a;
    SB_DFF buf_device_acadc_i8 (.Q(buf_device_acadc[7]), .C(clk_32MHz), 
           .D(n14075));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i17578_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n4744));   // zimaux_main.vhd(448[4] 687[13])
    defparam i17578_2_lut_3_lut.LUT_INIT = 16'h5757;
    SB_LUT4 comm_index_0__bdd_4_lut_17872 (.I0(comm_index[0]), .I1(\comm_buf[2] [2]), 
            .I2(\comm_buf[3] [2]), .I3(comm_index[1]), .O(n21653));
    defparam comm_index_0__bdd_4_lut_17872.LUT_INIT = 16'he4aa;
    SB_LUT4 n21653_bdd_4_lut (.I0(n21653), .I1(\comm_buf[1] [2]), .I2(\comm_buf[0] [2]), 
            .I3(comm_index[1]), .O(n21656));
    defparam n21653_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_323_9_lut (.I0(M_MOSI4), .I1(data_count[7]), .I2(M_MOSI4), 
            .I3(n18873), .O(n2257)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_9_lut.LUT_INIT = 16'hC33C;
    SB_DFF buf_device_acadc_i7 (.Q(buf_device_acadc[6]), .C(clk_32MHz), 
           .D(n14074));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF buf_device_acadc_i6 (.Q(buf_device_acadc[5]), .C(clk_32MHz), 
           .D(n14073));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i2_3_lut_adj_334 (.I0(n10), .I1(dc_state[1]), .I2(dc_state[2]), 
            .I3(M_MOSI4), .O(n19998));
    defparam i2_3_lut_adj_334.LUT_INIT = 16'hfbfb;
    SB_LUT4 i1_4_lut_adj_335 (.I0(adc_state[1]), .I1(adc_state[3]), .I2(adc_state[0]), 
            .I3(adc_state[2]), .O(n20184));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_335.LUT_INIT = 16'heffe;
    SB_LUT4 i13182_3_lut (.I0(n369), .I1(n9), .I2(n12_adj_1254), .I3(M_MOSI4), 
            .O(n16887));
    defparam i13182_3_lut.LUT_INIT = 16'h5454;
    SB_DFF buf_device_acadc_i5 (.Q(buf_device_acadc[4]), .C(clk_32MHz), 
           .D(n14072));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 equal_181_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9_adj_1247));   // zimaux_main.vhd(662[11:20])
    defparam equal_181_i9_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i13278_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13278_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut_4_lut_adj_336 (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(n12), .O(n9667));   // zimaux_main.vhd(662[11:20])
    defparam i2_3_lut_4_lut_adj_336.LUT_INIT = 16'hffdf;
    SB_LUT4 n21545_bdd_4_lut (.I0(n21545), .I1(\comm_buf[5] [0]), .I2(\comm_buf[4] [0]), 
            .I3(comm_index[1]), .O(n21548));
    defparam n21545_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i13277_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1391));   // zimaux_main.vhd(448[4] 687[13])
    defparam i13277_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF buf_device_acadc_i4 (.Q(M_FLT1), .C(clk_32MHz), .D(n14071));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_2_lut_adj_337 (.I0(drdy_falling), .I1(adc_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4_adj_1453));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_2_lut_adj_337.LUT_INIT = 16'h2222;
    SB_LUT4 i17483_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(n12_adj_1254), 
            .I3(comm_cmd[0]), .O(n20869));   // zimaux_main.vhd(654[11:20])
    defparam i17483_3_lut_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i2599_3_lut (.I0(comm_length[3]), .I1(n16887), .I2(n20206), 
            .I3(M_MOSI4), .O(comm_length_3__N_415[3]));   // zimaux_main.vhd(501[5] 583[14])
    defparam i2599_3_lut.LUT_INIT = 16'hb3b3;
    SB_LUT4 i10331_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK1), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n14056));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10331_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_DFF buf_device_acadc_i3 (.Q(M_FLT0), .C(clk_32MHz), .D(n14070));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10324_4_lut (.I0(M_SCLK2), .I1(adc_state_adj_1467[2]), .I2(adc_state_adj_1467[3]), 
            .I3(n7_adj_1260), .O(n14049));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10324_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i10325_3_lut (.I0(buf_adcdata3[0]), .I1(cmd_rdadctmp_adj_1491[8]), 
            .I2(n9453), .I3(M_MOSI4), .O(n14050));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10325_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9323_3_lut (.I0(n21686), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13048));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9323_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17627_4_lut (.I0(n20135), .I1(M_CS1), .I2(n4_adj_1453), .I3(n20184), 
            .O(n15_adj_1332));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17627_4_lut.LUT_INIT = 16'h4c5f;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n11215), 
            .D(n517), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i9307_3_lut (.I0(n21530), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13032));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9307_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n11215), 
            .D(n19756), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n11215), 
            .D(n519), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n11215), 
            .D(n520), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF buf_device_acadc_i2 (.Q(M_OSR1), .C(clk_32MHz), .D(n14069));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n11215), 
            .D(n521), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n11215), 
            .D(n522), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n11215), 
            .D(n523), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_11__i7 (.Q(\comm_buf[11] [7]), .C(clk_32MHz), .E(n11135), 
            .D(n13139), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_cmd_0__bdd_4_lut_17763 (.I0(comm_cmd[0]), .I1(data_cntvec[11]), 
            .I2(n4895), .I3(n4961), .O(n21521));
    defparam comm_cmd_0__bdd_4_lut_17763.LUT_INIT = 16'he4aa;
    SB_DFFESR comm_buf_11__i6 (.Q(\comm_buf[11] [6]), .C(clk_32MHz), .E(n11135), 
            .D(n13143), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_11__i5 (.Q(\comm_buf[11] [5]), .C(clk_32MHz), .E(n11135), 
            .D(n13147), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_11__i4 (.Q(\comm_buf[11] [4]), .C(clk_32MHz), .E(n11135), 
            .D(n13157), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i2369_2_lut (.I0(ICE_IOL_17B), .I1(comm_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n2_adj_1376));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2369_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR comm_buf_11__i3 (.Q(\comm_buf[11] [3]), .C(clk_32MHz), .E(n11135), 
            .D(n13161), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_11__i2 (.Q(\comm_buf[11] [2]), .C(clk_32MHz), .E(n11135), 
            .D(n13165), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_11__i1 (.Q(\comm_buf[11] [1]), .C(clk_32MHz), .E(n11135), 
            .D(n13169), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    GND i1 (.Y(M_MOSI4));
    SB_DFFESR comm_buf_10__i7 (.Q(\comm_buf[10] [7]), .C(clk_32MHz), .E(n11093), 
            .D(n13173), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i6 (.Q(\comm_buf[10] [6]), .C(clk_32MHz), .E(n11093), 
            .D(n13181), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i5 (.Q(\comm_buf[10] [5]), .C(clk_32MHz), .E(n11093), 
            .D(n13185), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i4 (.Q(\comm_buf[10] [4]), .C(clk_32MHz), .E(n11093), 
            .D(n13189), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i3 (.Q(\comm_buf[10] [3]), .C(clk_32MHz), .E(n11093), 
            .D(n13193), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i2 (.Q(\comm_buf[10] [2]), .C(clk_32MHz), .E(n11093), 
            .D(n13197), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_10__i1 (.Q(\comm_buf[10] [1]), .C(clk_32MHz), .E(n11093), 
            .D(n13201), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i7 (.Q(\comm_buf[9] [7]), .C(clk_32MHz), .E(n11051), 
            .D(n13205), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i6 (.Q(\comm_buf[9] [6]), .C(clk_32MHz), .E(n11051), 
            .D(n13209), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i5 (.Q(\comm_buf[9] [5]), .C(clk_32MHz), .E(n11051), 
            .D(n12315), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_4_lut_adj_338 (.I0(n9_adj_1247), .I1(comm_state[3]), .I2(n8066), 
            .I3(n20260), .O(n11312));
    defparam i1_4_lut_adj_338.LUT_INIT = 16'hc0c4;
    SB_DFFESR comm_buf_9__i4 (.Q(\comm_buf[9] [4]), .C(clk_32MHz), .E(n11051), 
            .D(n12472), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i3 (.Q(\comm_buf[9] [3]), .C(clk_32MHz), .E(n11051), 
            .D(n12480), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i2 (.Q(\comm_buf[9] [2]), .C(clk_32MHz), .E(n11051), 
            .D(n12488), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i9303_3_lut (.I0(n21524), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13028));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9303_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_9__i1 (.Q(\comm_buf[9] [1]), .C(clk_32MHz), .E(n11051), 
            .D(n12607), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_8__i7 (.Q(\comm_buf[8] [7]), .C(clk_32MHz), .E(n11009), 
            .D(n12646), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 mux_1881_i5_3_lut (.I0(req_data_cnt[12]), .I1(buf_data2[83]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4920));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_8__i6 (.Q(\comm_buf[8] [6]), .C(clk_32MHz), .E(n11009), 
            .D(n12650), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_8__i5 (.Q(\comm_buf[8] [5]), .C(clk_32MHz), .E(n11009), 
            .D(n12678), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_8__i4 (.Q(\comm_buf[8] [4]), .C(clk_32MHz), .E(n11009), 
            .D(n12690), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 mux_1886_i5_3_lut (.I0(buf_control[4]), .I1(buf_device_acadc[4]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4933));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_8__i3 (.Q(\comm_buf[8] [3]), .C(clk_32MHz), .E(n11009), 
            .D(n12694), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_8__i2 (.Q(\comm_buf[8] [2]), .C(clk_32MHz), .E(n11009), 
            .D(n12698), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i1_4_lut_4_lut_adj_339 (.I0(comm_cmd[3]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(comm_cmd[1]), .O(n27));   // zimaux_main.vhd(642[5] 674[14])
    defparam i1_4_lut_4_lut_adj_339.LUT_INIT = 16'h23b2;
    SB_DFFESR comm_buf_8__i1 (.Q(\comm_buf[8] [1]), .C(clk_32MHz), .E(n11009), 
            .D(n12718), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i7 (.Q(\comm_buf[7] [7]), .C(clk_32MHz), .E(n10967), 
            .D(n12722), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i6 (.Q(\comm_buf[7] [6]), .C(clk_32MHz), .E(n10967), 
            .D(n12739), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i5 (.Q(\comm_buf[7] [5]), .C(clk_32MHz), .E(n10967), 
            .D(n12755), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12708_4_lut (.I0(n4966), .I1(n21566), .I2(comm_cmd[0]), .I3(n4961), 
            .O(n4986));   // zimaux_main.vhd(241[9:17])
    defparam i12708_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFESR comm_buf_7__i4 (.Q(\comm_buf[7] [4]), .C(clk_32MHz), .E(n10967), 
            .D(n12772), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i3 (.Q(\comm_buf[7] [3]), .C(clk_32MHz), .E(n10967), 
            .D(n12780), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i2 (.Q(\comm_buf[7] [2]), .C(clk_32MHz), .E(n10967), 
            .D(n12815), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i1 (.Q(\comm_buf[7] [1]), .C(clk_32MHz), .E(n10967), 
            .D(n12831), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(n10925), 
            .D(n12838), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(n10925), 
            .D(n12846), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(n10925), 
            .D(n12858), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(n10925), 
            .D(n12862), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(n10925), 
            .D(n12870), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(n10925), 
            .D(n12874), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(n10925), 
            .D(n12319), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n10883), 
            .D(n12504), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i9299_3_lut (.I0(n4986), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13024));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9299_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n10883), 
            .D(n12638), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n10883), 
            .D(n13117), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n10883), 
            .D(n13151), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n10883), 
            .D(n13177), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n10883), 
            .D(n12323), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n10883), 
            .D(n12484), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFN eis_end_421 (.Q(eis_end), .C(clk_32MHz), .D(n14059));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n10841), 
            .D(n12492), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n10841), 
            .D(n12642), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n10841), 
            .D(n12702), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n10841), 
            .D(n12706), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n10841), 
            .D(n12710), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n10841), 
            .D(n12714), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10326_4_lut (.I0(acadc_dtrig3), .I1(adc_state_adj_1490[2]), 
            .I2(adc_state_adj_1490[1]), .I3(n20283), .O(n14051));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10326_4_lut.LUT_INIT = 16'haae8;
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n10841), 
            .D(n12743), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n10799), 
            .D(n12747), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n10799), 
            .D(n12759), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n10799), 
            .D(n12801), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n10799), 
            .D(n12819), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n10799), 
            .D(n12842), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n10799), 
            .D(n12850), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n10799), 
            .D(n12854), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n10757), 
            .D(n12866), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n10757), 
            .D(n12986), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n10757), 
            .D(n12990), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n10757), 
            .D(n12994), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n10757), 
            .D(n12998), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n10757), 
            .D(n13002), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n10757), 
            .D(n13006), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_328_2 (.CI(M_MOSI4), .I0(acadc_skipcnt[0]), .I1(acadc_dtrigH), 
            .CO(n18890));
    SB_LUT4 i16787_3_lut (.I0(\comm_buf[10] [6]), .I1(\comm_buf[11] [6]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20544));
    defparam i16787_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1384), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i9767_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n1_adj_1244));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9767_2_lut_3_lut.LUT_INIT = 16'h1010;
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1385), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 mux_1881_i6_3_lut (.I0(req_data_cnt[13]), .I1(buf_data2[87]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4919));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1386), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 mux_1886_i6_3_lut (.I0(buf_control[5]), .I1(buf_device_acadc[5]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4932));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1387), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1388), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1389), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1390), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n10633), 
            .D(n13010), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n10633), 
            .D(n13014), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n10633), 
            .D(n13018), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n10633), 
            .D(n13024), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n10633), 
            .D(n13028), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n10633), 
            .D(n13032), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n10633), 
            .D(n13048), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i4409_3_lut (.I0(acadc_skipCount[13]), .I1(data_idxvec[13]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n8132));   // zimaux_main.vhd(501[5] 583[14])
    defparam i4409_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1871_i6_3_lut (.I0(buf_dds[13]), .I1(buf_adcdata_vdc1[21]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4893));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1871_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1897_i6_4_lut (.I0(n4965), .I1(n8132), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n4975));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1897_i6_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1899_i6_4_lut (.I0(n4975), .I1(n4893), .I2(n4961), .I3(comm_cmd[0]), 
            .O(n4985));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1899_i6_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i9293_3_lut (.I0(n4985), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13018));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9293_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i5_3_lut_adj_340 (.I0(buf_dds[14]), .I1(buf_adcdata_vdc1[22]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n1_adj_1439));   // zimaux_main.vhd(241[9:17])
    defparam i5_3_lut_adj_340.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_length_i3 (.Q(comm_length[3]), .C(clk_32MHz), .E(n10561), 
            .D(comm_length_3__N_415[3]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 add_323_5_lut (.I0(M_MOSI4), .I1(data_count[3]), .I2(M_MOSI4), 
            .I3(n18869), .O(n2261)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_5_lut.LUT_INIT = 16'hC33C;
    SB_DFFESR comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(n10561), 
            .D(comm_length_3__N_415[2]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n10551), 
            .D(comm_length_3__N_415[1]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_index_i3 (.Q(comm_index[3]), .C(clk_32MHz), .E(n10545), 
            .D(comm_index_3__N_411[3]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n10545), 
            .D(comm_index_3__N_411[2]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n10545), 
            .D(comm_index_3__N_411[1]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n23), 
            .D(n7_adj_1407), .R(comm_state[3]));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i4411_3_lut (.I0(acadc_skipCount[14]), .I1(data_idxvec[14]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n8134));   // zimaux_main.vhd(501[5] 583[14])
    defparam i4411_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12171_3_lut_4_lut (.I0(n9_adj_1426), .I1(eis_start), .I2(eis_state[0]), 
            .I3(acadc_dtrigH), .O(n15896));
    defparam i12171_3_lut_4_lut.LUT_INIT = 16'hfb0b;
    SB_LUT4 mux_1881_i7_3_lut (.I0(req_data_cnt[14]), .I1(buf_data2[91]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n4918));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1881_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1886_i7_3_lut (.I0(buf_control[6]), .I1(buf_device_acadc[6]), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n4931));   // zimaux_main.vhd(501[5] 583[14])
    defparam mux_1886_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6_4_lut_adj_341 (.I0(n8134), .I1(n1_adj_1439), .I2(n4961), 
            .I3(comm_cmd[1]), .O(n2_adj_1382));   // zimaux_main.vhd(241[9:17])
    defparam i6_4_lut_adj_341.LUT_INIT = 16'hc0ca;
    SB_LUT4 i16786_3_lut (.I0(\comm_buf[8] [6]), .I1(\comm_buf[9] [6]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n20543));
    defparam i16786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_4_lut (.I0(eis_stop), .I1(n29), .I2(n30), .I3(eis_state[0]), 
            .O(n60));   // zimaux_main.vhd(431[3] 688[10])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h00ab;
    SB_LUT4 cs_falling_pend_I_0_2_lut_3_lut (.I0(cs_falling_pend), .I1(cs_mask_cnt[0]), 
            .I2(cs_mask_cnt[1]), .I3(M_MOSI4), .O(cs_falling_pend_N_906));   // zimaux_main.vhd(466[8:49])
    defparam cs_falling_pend_I_0_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i12738_4_lut (.I0(n4964), .I1(n2_adj_1382), .I2(comm_cmd[0]), 
            .I3(n4961), .O(n4984));   // zimaux_main.vhd(241[9:17])
    defparam i12738_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i10387_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1396), .I2(n11312), 
            .I3(M_MOSI4), .O(n14112));   // zimaux_main.vhd(431[3] 688[10])
    defparam i10387_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_clear_378_i1 (.Q(trig_dds), .C(clk_32MHz), .E(n10445), 
            .D(n4744), .R(n20427));   // zimaux_main.vhd(448[4] 687[13])
    SB_LUT4 i9289_3_lut (.I0(n4984), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13014));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9289_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i17391_2_lut_4_lut (.I0(eis_stop), .I1(n29), .I2(n30), .I3(eis_state[0]), 
            .O(n20862));   // zimaux_main.vhd(431[3] 688[10])
    defparam i17391_2_lut_4_lut.LUT_INIT = 16'hffab;
    SB_LUT4 i16608_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(M_MOSI4), .O(n20363));
    defparam i16608_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i10388_3_lut (.I0(buf_adcdata1[1]), .I1(cmd_rdadctmp[9]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14113));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10388_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESS cs_mask_cnt_2133__i0 (.Q(cs_mask_cnt[0]), .C(clk_32MHz), .E(n12286), 
            .D(n15_adj_1373), .S(n13607));   // zimaux_main.vhd(445[20:31])
    SB_LUT4 i1_2_lut_4_lut_adj_342 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[4]), .I3(comm_cmd[3]), .O(n12));   // zimaux_main.vhd(667[11:20])
    defparam i1_2_lut_4_lut_adj_342.LUT_INIT = 16'hefff;
    SB_LUT4 add_1858_17_lut (.I0(n14_adj_1396), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n18934), .O(data_idxvec_15__N_335[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_2_lut_4_lut_adj_343 (.I0(comm_cmd[6]), .I1(comm_cmd[5]), 
            .I2(comm_cmd[4]), .I3(comm_cmd[3]), .O(n12_adj_1254));   // zimaux_main.vhd(667[11:20])
    defparam i1_2_lut_4_lut_adj_343.LUT_INIT = 16'hffef;
    SB_LUT4 i16652_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n20407));   // zimaux_main.vhd(448[4] 687[13])
    defparam i16652_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i9919_2_lut (.I0(n10633), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13639));   // zimaux_main.vhd(431[3] 688[10])
    defparam i9919_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17325_2_lut_3_lut (.I0(n7_adj_1256), .I1(comm_state_3__N_403[1]), 
            .I2(comm_state[0]), .I3(M_MOSI4), .O(n20717));   // zimaux_main.vhd(448[4] 687[13])
    defparam i17325_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_adj_344 (.I0(dc_state[2]), .I1(n6_adj_1261), .I2(n20371), 
            .I3(n19998), .O(n11315));
    defparam i1_4_lut_adj_344.LUT_INIT = 16'h5f4c;
    SB_LUT4 i1_4_lut_adj_345 (.I0(comm_cmd[5]), .I1(comm_cmd[2]), .I2(n7_adj_1445), 
            .I3(n18), .O(n20293));
    defparam i1_4_lut_adj_345.LUT_INIT = 16'h5150;
    SB_LUT4 i16582_2_lut (.I0(comm_index[1]), .I1(comm_index[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n20336));
    defparam i16582_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2760_2_lut (.I0(comm_state_3__N_403[1]), .I1(comm_state[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6483));   // zimaux_main.vhd(448[4] 687[13])
    defparam i2760_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i17224_4_lut (.I0(comm_state[0]), .I1(comm_cmd[4]), .I2(comm_cmd[6]), 
            .I3(n20293), .O(n20637));
    defparam i17224_4_lut.LUT_INIT = 16'h0400;
    ADC_ADS127_U1 ADC_VAC2 (.n19454(n19454), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1468[31:19], 
            Open_0, Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, 
            Open_7, Open_8, Open_9, Open_10, Open_11, Open_12, Open_13, 
            Open_14, Open_15, Open_16, Open_17, Open_18}), .clk_32MHz(clk_32MHz), 
            .n19456(n19456), .n19728(n19728), .n19458(n19458), .n19460(n19460), 
            .n19462(n19462), .n19464(n19464), .n19468(n19468), .adc_state({adc_state_adj_1467}), 
            .n19484(n19484), .M_DRDY2(M_DRDY2), .drdy_sync2(drdy_sync2_adj_1289), 
            .drdy_prev(drdy_prev_adj_1290), .n19506(n19506), .n7(n7_adj_1260), 
            .GND_net(M_MOSI4), .n19536(n19536), .n19542(n19542), .n19544(n19544), 
            .n20138(n20138), .n9507(n9507), .n11921(n11921), .n19734(n19734), 
            .\cmd_rdadctmp[18] (cmd_rdadctmp_adj_1468[18]), .n15(n15_adj_1258), 
            .M_CS2(M_CS2), .n14980(n14980), .\cmd_rdadctmp[17] (cmd_rdadctmp_adj_1468[17]), 
            .\buf_adcdata_vdc2[0] (buf_adcdata_vdc2[0]), .buf_adcdata2({buf_adcdata2}), 
            .n11457(n11457), .n1(n1_adj_1456), .n19390(n19390), .n14957(n14957), 
            .\cmd_rdadctmp[16] (cmd_rdadctmp_adj_1468[16]), .n14928(n14928), 
            .\cmd_rdadctmp[15] (cmd_rdadctmp_adj_1468[15]), .drdy_falling(drdy_falling_adj_1291), 
            .n14892(n14892), .\cmd_rdadctmp[14] (cmd_rdadctmp_adj_1468[14]), 
            .n14891(n14891), .\cmd_rdadctmp[13] (cmd_rdadctmp_adj_1468[13]), 
            .n14890(n14890), .\cmd_rdadctmp[12] (cmd_rdadctmp_adj_1468[12]), 
            .n14889(n14889), .\cmd_rdadctmp[11] (cmd_rdadctmp_adj_1468[11]), 
            .n19822(n19822), .\cmd_rdadctmp[10] (cmd_rdadctmp_adj_1468[10]), 
            .\cmd_rdadctmp[9] (cmd_rdadctmp_adj_1468[9]), .acadc_trig(acadc_trig), 
            .n20387(n20387), .n14158(n14158), .n14157(n14157), .n14156(n14156), 
            .n14155(n14155), .n14154(n14154), .n14153(n14153), .n14152(n14152), 
            .n14151(n14151), .n14150(n14150), .n14149(n14149), .n14148(n14148), 
            .n14147(n14147), .n14146(n14146), .n14145(n14145), .n14144(n14144), 
            .n14143(n14143), .n14142(n14142), .n14141(n14141), .n14140(n14140), 
            .n14139(n14139), .n14138(n14138), .n14137(n14137), .n14136(n14136), 
            .\buf_data2[0] (buf_data2[0]), .\comm_cmd[0] (comm_cmd[0]), 
            .n5414(n5414), .M_MISO2(M_MISO2), .n14064(n14064), .n14049(n14049), 
            .M_SCLK2(M_SCLK2), .n14048(n14048), .acadc_dtrig2(acadc_dtrig2));   // zimaux_main.vhd(854[13:23])
    SB_LUT4 i1_2_lut_3_lut_adj_346 (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n9699));   // zimaux_main.vhd(448[4] 687[13])
    defparam i1_2_lut_3_lut_adj_346.LUT_INIT = 16'hefef;
    SB_LUT4 comm_state_3__I_0_428_Mux_3_i7_4_lut_4_lut (.I0(comm_state[0]), 
            .I1(comm_state[1]), .I2(comm_state[2]), .I3(n20717), .O(n17029));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_428_Mux_3_i7_4_lut_4_lut.LUT_INIT = 16'hfe3e;
    SB_LUT4 add_1858_16_lut (.I0(n14_adj_1397), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n18933), .O(data_idxvec_15__N_335[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i27_4_lut (.I0(n20637), .I1(n20336), .I2(comm_state[1]), .I3(n17933), 
            .O(n21_adj_1462));
    defparam i27_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i16648_2_lut_4_lut (.I0(comm_state[3]), .I1(comm_data_vld), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n20403));
    defparam i16648_2_lut_4_lut.LUT_INIT = 16'hfaee;
    SB_LUT4 i15099_3_lut (.I0(buf_adcdata1[2]), .I1(cmd_rdadctmp[10]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14114));
    defparam i15099_3_lut.LUT_INIT = 16'hcaca;
    ADC_ADS127_U2 ADC_VAC1 (.M_DRDY1(M_DRDY1), .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2), 
            .drdy_prev(drdy_prev), .adc_state({adc_state}), .n9642(n9642), 
            .n19672(n19672), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), 
            .n15(n15_adj_1332), .M_CS1(M_CS1), .GND_net(M_MOSI4), .eis_adc_trig(eis_adc_trig), 
            .vdc_adc_trig(vdc_adc_trig), .drdy_falling(drdy_falling), .acadc_trig(acadc_trig), 
            .n20367(n20367), .n14650(n14650), .n19740(n19740), .n19742(n19742), 
            .n19744(n19744), .n19746(n19746), .n14135(n14135), .buf_adcdata1({buf_adcdata1}), 
            .n19748(n19748), .n14134(n14134), .n14133(n14133), .n14132(n14132), 
            .n14131(n14131), .n19750(n19750), .n14130(n14130), .n14129(n14129), 
            .n14128(n14128), .n14127(n14127), .n14126(n14126), .n14125(n14125), 
            .n14124(n14124), .n19752(n19752), .n19754(n19754), .n19558(n19558), 
            .n19758(n19758), .n19688(n19688), .n14123(n14123), .n19686(n19686), 
            .n14122(n14122), .n19768(n19768), .n14121(n14121), .n14120(n14120), 
            .n19684(n19684), .n14119(n14119), .n19682(n19682), .n14118(n14118), 
            .n19680(n19680), .n14117(n14117), .n14116(n14116), .n19804(n19804), 
            .n14115(n14115), .n19778(n19778), .n14114(n14114), .n14113(n14113), 
            .n19816(n19816), .n19782(n19782), .n19786(n19786), .n19788(n19788), 
            .n19790(n19790), .n19792(n19792), .n19796(n19796), .n19798(n19798), 
            .n19800(n19800), .n19802(n19802), .n19806(n19806), .n19810(n19810), 
            .n7(n7_adj_1381), .n20135(n20135), .n14062(n14062), .n14046(n14046), 
            .M_SCLK1(M_SCLK1), .n14045(n14045), .acadc_dtrig1(acadc_dtrig1), 
            .n14044(n14044), .n11821(n11821));   // zimaux_main.vhd(840[13:23])
    SB_LUT4 i12_4_lut_adj_347 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19778));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_347.LUT_INIT = 16'hca0a;
    SB_LUT4 i9285_3_lut (.I0(n21518), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n13010));   // zimaux_main.vhd(448[4] 687[13])
    defparam i9285_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1937_i2_3_lut (.I0(buf_adcdata_vdc1[9]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5131));
    defparam mux_1937_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n11629), .D(n2331), .R(n13806));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i6924_4_lut (.I0(n5131), .I1(buf_data2[39]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10648));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6924_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i15096_3_lut (.I0(buf_adcdata1[3]), .I1(cmd_rdadctmp[11]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14115));
    defparam i15096_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n11574), 
            .D(n2282), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_LUT4 i6925_3_lut (.I0(n21488), .I1(n10648), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[1]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6925_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n11574), 
            .D(n2264), .R(n13782));   // zimaux_main.vhd(733[3] 812[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n11215), 
            .D(n524), .R(n13723));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_state_3__I_0_433_Mux_1_i6_3_lut (.I0(comm_buf_1__7__N_451[1]), 
            .I1(comm_rx_buf[1]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1390));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10313_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n8066), .I2(n11282), 
            .I3(acadc_skipCount[0]), .O(n14038));   // zimaux_main.vhd(448[4] 687[13])
    defparam i10313_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 mux_1937_i3_3_lut (.I0(buf_adcdata_vdc1[10]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5130));
    defparam mux_1937_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_11__i0 (.Q(\comm_buf[11] [0]), .C(clk_32MHz), .E(n11135), 
            .D(n12574), .R(n13716));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i4214_3_lut_4_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1434));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4214_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 i6934_4_lut (.I0(n5130), .I1(buf_data2[43]), .I2(n6076), .I3(comm_cmd[0]), 
            .O(n10658));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6934_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFESR comm_buf_10__i0 (.Q(\comm_buf[10] [0]), .C(clk_32MHz), .E(n11093), 
            .D(n12570), .R(n13709));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_9__i0 (.Q(\comm_buf[9] [0]), .C(clk_32MHz), .E(n11051), 
            .D(n12566), .R(n13702));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_8__i0 (.Q(\comm_buf[8] [0]), .C(clk_32MHz), .E(n11009), 
            .D(n12562), .R(n13695));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_7__i0 (.Q(\comm_buf[7] [0]), .C(clk_32MHz), .E(n10967), 
            .D(n12558), .R(n13688));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(n10925), 
            .D(n12554), .R(n13681));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n10883), 
            .D(n12550), .R(n13674));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n10841), 
            .D(n12546), .R(n13667));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 comm_state_3__I_0_445_Mux_0_i15_3_lut_4_lut (.I0(\comm_buf[1] [0]), 
            .I1(n8066), .I2(comm_state[3]), .I3(data_idxvec_15__N_653[0]), 
            .O(data_idxvec_15__N_335[0]));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_445_Mux_0_i15_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n10799), 
            .D(n12542), .R(n13660));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i22_4_lut_4_lut (.I0(comm_state[1]), .I1(comm_state_3__N_403[1]), 
            .I2(comm_state[0]), .I3(comm_data_vld), .O(n7_adj_1248));
    defparam i22_4_lut_4_lut.LUT_INIT = 16'h5250;
    zim_pll pll_main (.GND_net(M_MOSI4), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz), .clk_16MHz_N_890(DDS_MCLK1));   // zimaux_main.vhd(817[13:20])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n10757), 
            .D(n12538), .R(n13653));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n10715), 
            .D(n6_adj_1377), .R(n13646));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n10633), 
            .D(n12534), .R(n13639));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n10551), 
            .D(n16887), .R(n19094));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i6935_3_lut (.I0(n21614), .I1(n10658), .I2(n6074), .I3(M_MOSI4), 
            .O(comm_buf_1__7__N_451[2]));   // zimaux_main.vhd(431[3] 688[10])
    defparam i6935_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1858_16 (.CI(n18933), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n18934));
    SB_LUT4 add_1858_15_lut (.I0(n14_adj_1419), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n18932), .O(data_idxvec_15__N_335[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 comm_state_3__I_0_433_Mux_2_i6_3_lut (.I0(comm_buf_1__7__N_451[2]), 
            .I1(comm_rx_buf[2]), .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1389));   // zimaux_main.vhd(448[4] 687[13])
    defparam comm_state_3__I_0_433_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_1858_15 (.CI(n18932), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n18933));
    SB_LUT4 add_324_17_lut (.I0(M_MOSI4), .I1(data_cntvec[15]), .I2(M_MOSI4), 
            .I3(n18889), .O(n2267)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1858_14_lut (.I0(n14_adj_1399), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n18931), .O(data_idxvec_15__N_335[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1858_14 (.CI(n18931), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n18932));
    SB_LUT4 add_1858_13_lut (.I0(n14_adj_1400), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n18930), .O(data_idxvec_15__N_335[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_13_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_324_16_lut (.I0(M_MOSI4), .I1(data_cntvec[14]), .I2(M_MOSI4), 
            .I3(n18888), .O(n2268)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1858_13 (.CI(n18930), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n18931));
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n20474), .I2(n20475), 
            .I3(comm_index[2]), .O(n21647));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 add_1858_12_lut (.I0(n14_adj_1401), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n18929), .O(data_idxvec_15__N_335[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_12_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1858_12 (.CI(n18929), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n18930));
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n10545), 
            .D(comm_index_3__N_411[0]), .R(n13626));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i10314_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n8066), .I2(n11312), 
            .I3(req_data_cnt[0]), .O(n14039));   // zimaux_main.vhd(448[4] 687[13])
    defparam i10314_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_CARRY add_324_16 (.CI(n18888), .I0(data_cntvec[14]), .I1(M_MOSI4), 
            .CO(n18889));
    SB_DFFSR reset_int_372 (.Q(reset_int), .C(clk_32MHz), .D(n6108), .R(cs_mask_cnt_1__N_363));   // zimaux_main.vhd(420[3] 426[10])
    SB_LUT4 add_1858_11_lut (.I0(n14_adj_1403), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n18928), .O(data_idxvec_15__N_335[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_11_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1858_11 (.CI(n18928), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n18929));
    SB_LUT4 i4174_3_lut_4_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), 
            .I2(n9), .I3(n20260), .O(n8_adj_1432));   // zimaux_main.vhd(448[4] 687[13])
    defparam i4174_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_324_15_lut (.I0(M_MOSI4), .I1(data_cntvec[13]), .I2(M_MOSI4), 
            .I3(n18887), .O(n2269)) /* synthesis syn_instantiated=1 */ ;
    defparam add_324_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_348 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19804));
    defparam i12_4_lut_adj_348.LUT_INIT = 16'hca0a;
    SB_LUT4 i10327_4_lut (.I0(M_SCLK3), .I1(adc_state_adj_1490[2]), .I2(adc_state_adj_1490[3]), 
            .I3(n7_adj_1463), .O(n14052));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10327_4_lut.LUT_INIT = 16'hacaa;
    SB_LUT4 i15095_3_lut (.I0(buf_adcdata1[4]), .I1(cmd_rdadctmp[12]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14116));
    defparam i15095_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_349 (.I0(cmd_rdadctmp[0]), .I1(M_MISO1), .I2(n11821), 
            .I3(adc_state[0]), .O(n19672));   // adc_ads127.vhd(36[3] 96[10])
    defparam i12_4_lut_adj_349.LUT_INIT = 16'hca0a;
    SB_CARRY add_323_9 (.CI(n18873), .I0(data_count[7]), .I1(M_MOSI4), 
            .CO(n18874));
    SB_LUT4 add_1858_10_lut (.I0(n14_adj_1404), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n18927), .O(data_idxvec_15__N_335[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1858_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12770_4_lut (.I0(buf_adcdata_vdc1[0]), .I1(buf_adcdata1[0]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n14993));
    defparam i12770_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i15143_3_lut (.I0(buf_adcdata1[5]), .I1(cmd_rdadctmp[13]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14117));
    defparam i15143_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_350 (.I0(buf_adcdata_vdc4[0]), .I1(buf_adcdata4[0]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19226));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_350.LUT_INIT = 16'hca0a;
    ADC_ADS127_U0 ADC_VAC3 (.M_DRDY3(M_DRDY3), .clk_32MHz(clk_32MHz), .drdy_sync2(drdy_sync2_adj_1329), 
            .drdy_prev(drdy_prev_adj_1330), .n19556(n19556), .VCC_net(VCC_net), 
            .cmd_rdadctmp({cmd_rdadctmp_adj_1491}), .n19560(n19560), .n19564(n19564), 
            .n19566(n19566), .n19568(n19568), .n19570(n19570), .n19572(n19572), 
            .n19574(n19574), .n19576(n19576), .n19578(n19578), .n19580(n19580), 
            .n19582(n19582), .n19584(n19584), .n19550(n19550), .n19590(n19590), 
            .n19552(n19552), .n19592(n19592), .n19594(n19594), .n19724(n19724), 
            .n19722(n19722), .n19538(n19538), .n19596(n19596), .n19720(n19720), 
            .drdy_falling(drdy_falling_adj_1331), .n20141(n20141), .adc_state({adc_state_adj_1490}), 
            .n12021(n12021), .GND_net(M_MOSI4), .n19718(n19718), .n19600(n19600), 
            .n19714(n19714), .n19712(n19712), .n19738(n19738), .n19708(n19708), 
            .n19706(n19706), .n19604(n19604), .n20283(n20283), .acadc_trig(acadc_trig), 
            .n9453(n9453), .n19674(n19674), .n15(n15_adj_1252), .M_CS3(M_CS3), 
            .n14181(n14181), .buf_adcdata3({buf_adcdata3}), .n14180(n14180), 
            .n14179(n14179), .n14178(n14178), .n14177(n14177), .n14176(n14176), 
            .n14175(n14175), .n14174(n14174), .n14173(n14173), .n14172(n14172), 
            .n14171(n14171), .n14170(n14170), .n14169(n14169), .n14168(n14168), 
            .n14167(n14167), .n14166(n14166), .n14165(n14165), .n14164(n14164), 
            .n14163(n14163), .n14162(n14162), .n14161(n14161), .n14160(n14160), 
            .n14159(n14159), .n7(n7_adj_1463), .n14066(n14066), .n14052(n14052), 
            .M_SCLK3(M_SCLK3), .n14051(n14051), .acadc_dtrig3(acadc_dtrig3), 
            .n14050(n14050));   // zimaux_main.vhd(868[13:23])
    SB_LUT4 i15140_3_lut (.I0(buf_adcdata1[6]), .I1(cmd_rdadctmp[14]), .I2(n9642), 
            .I3(M_MOSI4), .O(n14118));
    defparam i15140_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_start_cmd_409 (.Q(eis_start_cmd), .C(clk_32MHz), .D(n14042));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_351 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19682));
    defparam i12_4_lut_adj_351.LUT_INIT = 16'hca0a;
    SB_DFF eis_stop_408 (.Q(eis_stop), .C(clk_32MHz), .D(n14041));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_352 (.I0(buf_adcdata_vdc2[5]), .I1(buf_adcdata2[5]), 
            .I2(n11457), .I3(n1_adj_1456), .O(n19228));   // zimaux_main.vhd(694[3] 728[10])
    defparam i12_4_lut_adj_352.LUT_INIT = 16'hca0a;
    SB_DFF tacadc_rst_407 (.Q(tacadc_rst), .C(clk_32MHz), .D(n14040));   // zimaux_main.vhd(431[3] 688[10])
    SB_CARRY add_324_15 (.CI(n18887), .I0(data_cntvec[13]), .I1(M_MOSI4), 
            .CO(n18888));
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n14039));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n14038));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF buf_control_i0 (.Q(buf_control[0]), .C(clk_32MHz), .D(n14037));   // zimaux_main.vhd(431[3] 688[10])
    SB_DFF buf_device_acadc_i1 (.Q(M_OSR0), .C(clk_32MHz), .D(n14036));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 n21647_bdd_4_lut (.I0(n21647), .I1(n20487), .I2(n20486), .I3(comm_index[2]), 
            .O(n21650));
    defparam n21647_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 add_323_8_lut (.I0(M_MOSI4), .I1(data_count[6]), .I2(M_MOSI4), 
            .I3(n18872), .O(n2258)) /* synthesis syn_instantiated=1 */ ;
    defparam add_323_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF cs_sync1_373 (.Q(cs_sync1), .C(clk_32MHz), .D(ICE_SPI_CE0));   // zimaux_main.vhd(431[3] 688[10])
    SB_LUT4 i12_4_lut_adj_353 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n11821), .I3(adc_state[0]), .O(n19684));
    defparam i12_4_lut_adj_353.LUT_INIT = 16'hca0a;
    DDS_AD9837 CLOCK_DDS (.dds_state({dds_state}), .GND_net(M_MOSI4), .\bit_cnt[0] (bit_cnt_adj_1535[0]), 
            .clk_16MHz(clk_16MHz), .DDS_CS1(DDS_CS1), .\buf_dds[15] (buf_dds[15]), 
            .\buf_dds[13] (buf_dds[13]), .\buf_dds[11] (buf_dds[11]), .\buf_dds[10] (buf_dds[10]), 
            .\buf_dds[9] (buf_dds[9]), .\buf_dds[8] (buf_dds[8]), .\buf_dds[7] (buf_dds[7]), 
            .\buf_dds[6] (buf_dds[6]), .\buf_dds[5] (buf_dds[5]), .\buf_dds[4] (buf_dds[4]), 
            .\buf_dds[3] (buf_dds[3]), .\buf_dds[2] (buf_dds[2]), .\buf_dds[1] (buf_dds[1]), 
            .\buf_dds[0] (buf_dds[0]), .\tmp_buf[15] (tmp_buf[15]), .trig_dds(trig_dds), 
            .\tmp_buf[11] (tmp_buf[11]), .\tmp_buf_15__N_1174[12] (tmp_buf_15__N_1174[12]), 
            .\tmp_buf[13] (tmp_buf[13]), .\tmp_buf_15__N_1174[14] (tmp_buf_15__N_1174[14]), 
            .VCC_net(VCC_net), .n14969(n14969), .n14010(n14010), .n14057(n14057), 
            .DDS_MOSI1(DDS_MOSI1), .n14056(n14056), .DDS_SCK1(DDS_SCK1));   // zimaux_main.vhd(897[14:24])
    ADC_ADS127 ADC_VAC4 (.adc_state({adc_state_adj_1513}), .n20144(n20144), 
            .GND_net(M_MOSI4), .M_DRDY4(M_DRDY4), .clk_32MHz(clk_32MHz), 
            .drdy_sync2(drdy_sync2_adj_1369), .drdy_prev(drdy_prev_adj_1370), 
            .n19606(n19606), .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1514}), 
            .n20280(n20280), .acadc_trig(acadc_trig), .drdy_falling(drdy_falling_adj_1371), 
            .n19610(n19610), .n19612(n19612), .n19614(n19614), .n19616(n19616), 
            .n19618(n19618), .n19622(n19622), .n19624(n19624), .n19626(n19626), 
            .n19628(n19628), .n19632(n19632), .n19634(n19634), .n19636(n19636), 
            .n19668(n19668), .n19640(n19640), .n19670(n19670), .n19642(n19642), 
            .n19644(n19644), .n19704(n19704), .n19702(n19702), .n19598(n19598), 
            .n19646(n19646), .n19700(n19700), .n19698(n19698), .n19648(n19648), 
            .n19696(n19696), .n19694(n19694), .n19466(n19466), .n19692(n19692), 
            .n19690(n19690), .n19660(n19660), .n19676(n19676), .n15(n15), 
            .M_CS4(M_CS4), .n14204(n14204), .buf_adcdata4({buf_adcdata4}), 
            .n14203(n14203), .n14202(n14202), .n14201(n14201), .n14200(n14200), 
            .n14199(n14199), .n14198(n14198), .n14197(n14197), .n14196(n14196), 
            .n14195(n14195), .n14194(n14194), .n14193(n14193), .n14192(n14192), 
            .n14191(n14191), .n14190(n14190), .n14189(n14189), .n14188(n14188), 
            .n14187(n14187), .n14186(n14186), .n14185(n14185), .n14184(n14184), 
            .n14183(n14183), .n14182(n14182), .n12099(n12099), .n9393(n9393), 
            .n14068(n14068), .n14055(n14055), .M_SCLK4(M_SCLK4), .n14054(n14054), 
            .acadc_dtrig4(acadc_dtrig4), .n14053(n14053), .n7(n7_adj_1447));   // zimaux_main.vhd(882[13:23])
    SB_LUT4 mux_1937_i4_3_lut (.I0(buf_adcdata_vdc1[11]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n5129));
    defparam mux_1937_i4_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
//
// Verilog Description of module SPI_SLAVE
//

module SPI_SLAVE (comm_data_vld, \comm_state_3__N_403[1] , n1, GND_net, 
            \comm_index[1] , n20543, n20544, \comm_index[3] , n20523, 
            n20522, clk_32MHz, reset_int, comm_tx_buf, n5575, sclk_sync1, 
            sclk_sync2, comm_rx_buf, n21536, \comm_index[2] , n19756, 
            VCC_net, \comm_cmd[7] , n17920, ICE_SPI_MISO, n21668, 
            n21554, n21548, n524, n14060, n14058, n14043);
    output comm_data_vld;
    input \comm_state_3__N_403[1] ;
    output n1;
    input GND_net;
    input \comm_index[1] ;
    input n20543;
    input n20544;
    input \comm_index[3] ;
    input n20523;
    input n20522;
    input clk_32MHz;
    input reset_int;
    input [7:0]comm_tx_buf;
    output n5575;
    output sclk_sync1;
    output sclk_sync2;
    output [7:0]comm_rx_buf;
    input n21536;
    input \comm_index[2] ;
    output n19756;
    input VCC_net;
    input \comm_cmd[7] ;
    output n17920;
    output ICE_SPI_MISO;
    input n21668;
    input n21554;
    input n21548;
    output n524;
    input n14060;
    input n14058;
    input n14043;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    
    wire n21509, n21512, DATA_VLD_N_1022, n13555, n13554, n21990;
    wire [7:0]data_tx;   // spi_slave.vhd(30[8:15])
    
    wire n13531, n13530, n13526;
    wire [7:0]n18;
    
    wire data_tx_7__N_972, sclk_rising_pend, n20410, sclk_falling_pend_N_1034, 
        n10430, sclk_falling_pend;
    wire [3:0]n27;
    
    wire n12282;
    wire [3:0]bit_cnt;   // spi_slave.vhd(28[8:15])
    
    wire data_tx_7__N_986, data_tx_7__N_974, data_tx_7__N_989, data_tx_7__N_975, 
        n13524, data_tx_7__N_1001, n13523, data_tx_7__N_979, n16387, 
        n13551, n13550, n21996, data_tx_7__N_983, n13522, n14795, 
        n14798, n14802, n14805, n14808, n14811, n14814, n22008, 
        n22005, data_tx_7__N_992, n22002, data_tx_7__N_976, data_tx_7__N_995, 
        data_tx_7__N_977, data_tx_7__N_998, data_tx_7__N_978, data_tx_7__N_973, 
        n18834, n6068, n13535, n13534, n13539, n13538, n13543, 
        n13542, n13547, n13546, n21999, n17958, data_tx_7__N_980, 
        n13528, n13527;
    
    SB_LUT4 i1_2_lut (.I0(comm_data_vld), .I1(\comm_state_3__N_403[1] ), 
            .I2(GND_net), .I3(GND_net), .O(n1));   // spi_slave.vhd(99[3] 108[10])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_index_1__bdd_4_lut_17862 (.I0(\comm_index[1] ), .I1(n20543), 
            .I2(n20544), .I3(\comm_index[3] ), .O(n21509));
    defparam comm_index_1__bdd_4_lut_17862.LUT_INIT = 16'he4aa;
    SB_LUT4 n21509_bdd_4_lut (.I0(n21509), .I1(n20523), .I2(n20522), .I3(\comm_index[3] ), 
            .O(n21512));
    defparam n21509_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNR data_valid_98 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_1022), 
            .R(reset_int));   // spi_slave.vhd(99[3] 108[10])
    SB_LUT4 i9831_3_lut (.I0(n13555), .I1(n13554), .I2(n21990), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9831_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9807_3_lut (.I0(n13531), .I1(n13530), .I2(n13526), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9807_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFS data_tx_i0_i7_9805_9806_set (.Q(n13530), .C(clk_32MHz), .D(n18[7]), 
            .S(data_tx_7__N_972));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 RESET_I_0_99_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_972));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 data_tx_i1_i8_3_lut (.I0(data_tx[7]), .I1(data_tx[6]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[7]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE sclk_rising_pend_95 (.Q(sclk_rising_pend), .C(clk_32MHz), .E(n20410), 
            .D(n5575));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE sclk_falling_pend_96 (.Q(sclk_falling_pend), .C(clk_32MHz), 
            .E(n10430), .D(sclk_falling_pend_N_1034));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFER bit_cnt_2134__i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12282), 
            .D(n27[0]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i17636_4_lut_3_lut (.I0(n13526), .I1(reset_int), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n13526));   // spi_slave.vhd(48[3] 92[10])
    defparam i17636_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_109_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_986));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_109_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(reset_int), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_974));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13194_3_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(bit_cnt[0]), .I3(GND_net), .O(n27[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13194_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i1_4_lut (.I0(sclk_sync1), .I1(reset_int), .I2(sclk_falling_pend_N_1034), 
            .I3(sclk_sync2), .O(n10430));
    defparam i1_4_lut.LUT_INIT = 16'h1303;
    SB_LUT4 i17633_2_lut (.I0(sclk_falling_pend), .I1(sclk_rising_pend), 
            .I2(GND_net), .I3(GND_net), .O(sclk_falling_pend_N_1034));   // spi_slave.vhd(72[4] 91[11])
    defparam i17633_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i16654_4_lut (.I0(reset_int), .I1(sclk_sync2), .I2(sclk_rising_pend), 
            .I3(sclk_sync1), .O(n20410));
    defparam i16654_4_lut.LUT_INIT = 16'h5150;
    SB_LUT4 RESET_I_0_110_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_989));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_110_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(reset_int), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_975));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i17572_2_lut (.I0(sclk_rising_pend), .I1(reset_int), .I2(GND_net), 
            .I3(GND_net), .O(n5575));   // spi_slave.vhd(48[3] 92[10])
    defparam i17572_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFR data_tx_i0_i0_9798_9799_reset (.Q(n13524), .C(clk_32MHz), .D(n18[0]), 
            .R(data_tx_7__N_1001));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i0_9798_9799_set (.Q(n13523), .C(clk_32MHz), .D(n18[0]), 
            .S(data_tx_7__N_979));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(bit_cnt[0]), 
            .I3(GND_net), .O(n16387));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut_adj_27 (.I0(bit_cnt[3]), .I1(n16387), .I2(GND_net), 
            .I3(GND_net), .O(DATA_VLD_N_1022));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_adj_27.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_979));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9827_3_lut (.I0(n13551), .I1(n13550), .I2(n21996), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9827_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_108_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_983));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_108_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 data_tx_i1_i7_3_lut (.I0(data_tx[6]), .I1(data_tx[5]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[6]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9800_3_lut (.I0(n13524), .I1(n13523), .I2(n13522), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9800_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_2_lut (.I0(reset_int), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_1001));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12675_4_lut (.I0(comm_rx_buf[7]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[6]), .O(n14795));
    defparam i12675_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12679_4_lut (.I0(comm_rx_buf[6]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[5]), .O(n14798));
    defparam i12679_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12671_4_lut (.I0(comm_rx_buf[5]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[4]), .O(n14802));
    defparam i12671_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12673_4_lut (.I0(comm_rx_buf[4]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[3]), .O(n14805));
    defparam i12673_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i17661_4_lut_3_lut (.I0(n21990), .I1(reset_int), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n21990));   // spi_slave.vhd(48[3] 92[10])
    defparam i17661_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i12677_4_lut (.I0(comm_rx_buf[3]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[2]), .O(n14808));
    defparam i12677_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12683_4_lut (.I0(comm_rx_buf[2]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[1]), .O(n14811));
    defparam i12683_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i12681_4_lut (.I0(comm_rx_buf[1]), .I1(n16387), .I2(n5575), 
            .I3(comm_rx_buf[0]), .O(n14814));
    defparam i12681_4_lut.LUT_INIT = 16'haca0;
    SB_LUT4 i22_4_lut (.I0(n21512), .I1(n21536), .I2(\comm_index[2] ), 
            .I3(\comm_index[3] ), .O(n19756));   // zimaux_main.vhd(245[9:19])
    defparam i22_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i17666_4_lut_3_lut (.I0(n22008), .I1(reset_int), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n22008));   // spi_slave.vhd(48[3] 92[10])
    defparam i17666_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFE data_rx_i0_i1 (.Q(comm_rx_buf[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14814));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i2 (.Q(comm_rx_buf[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14811));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i3 (.Q(comm_rx_buf[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14808));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i4 (.Q(comm_rx_buf[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14805));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i5 (.Q(comm_rx_buf[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14802));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i6 (.Q(comm_rx_buf[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14798));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFE data_rx_i0_i7 (.Q(comm_rx_buf[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14795));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i17641_4_lut_3_lut (.I0(n22005), .I1(reset_int), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n22005));   // spi_slave.vhd(48[3] 92[10])
    defparam i17641_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFR data_tx_i0_i6_9829_9830_reset (.Q(n13555), .C(clk_32MHz), .D(n18[6]), 
            .R(data_tx_7__N_983));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 RESET_I_0_111_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_992));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_111_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i17646_4_lut_3_lut (.I0(n22002), .I1(reset_int), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n22002));   // spi_slave.vhd(48[3] 92[10])
    defparam i17646_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(reset_int), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_976));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_112_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_995));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_112_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(reset_int), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_977));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_113_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_998));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_113_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(reset_int), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_978));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_100_2_lut (.I0(reset_int), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_973));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut (.I0(\comm_cmd[7] ), .I1(comm_data_vld), .I2(\comm_state_3__N_403[1] ), 
            .I3(GND_net), .O(n17920));   // spi_slave.vhd(99[3] 108[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0404;
    SB_LUT4 i13310_3_lut (.I0(bit_cnt[2]), .I1(sclk_rising_pend), .I2(n18834), 
            .I3(GND_net), .O(n27[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13310_3_lut.LUT_INIT = 16'h1212;
    SB_LUT4 i2434_3_lut (.I0(ICE_SPI_MISO), .I1(data_tx[7]), .I2(sclk_falling_pend_N_1034), 
            .I3(GND_net), .O(n6068));   // spi_slave.vhd(48[3] 92[10])
    defparam i2434_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 data_tx_i1_i2_3_lut (.I0(data_tx[1]), .I1(data_tx[0]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[1]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9811_3_lut (.I0(n13535), .I1(n13534), .I2(n22008), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9811_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i3_3_lut (.I0(data_tx[2]), .I1(data_tx[1]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[2]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9815_3_lut (.I0(n13539), .I1(n13538), .I2(n22005), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9815_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i4_3_lut (.I0(data_tx[3]), .I1(data_tx[2]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[3]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9819_3_lut (.I0(n13543), .I1(n13542), .I2(n22002), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9819_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i5_3_lut (.I0(data_tx[4]), .I1(data_tx[3]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[4]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9823_3_lut (.I0(n13547), .I1(n13546), .I2(n21999), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(48[3] 92[10])
    defparam i9823_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 data_tx_i1_i6_3_lut (.I0(data_tx[5]), .I1(data_tx[4]), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n18[5]));   // spi_slave.vhd(48[3] 92[10])
    defparam data_tx_i1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14282_3_lut (.I0(n21668), .I1(n21554), .I2(\comm_index[3] ), 
            .I3(GND_net), .O(n17958));   // zimaux_main.vhd(245[9:19])
    defparam i14282_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14285_4_lut (.I0(n17958), .I1(n21548), .I2(\comm_index[2] ), 
            .I3(\comm_index[3] ), .O(n524));   // zimaux_main.vhd(245[9:19])
    defparam i14285_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 RESET_I_0_107_2_lut (.I0(reset_int), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_980));   // spi_slave.vhd(48[3] 92[10])
    defparam RESET_I_0_107_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13192_2_lut_4_lut (.I0(n13524), .I1(n13523), .I2(n13522), 
            .I3(sclk_rising_pend), .O(n18[0]));   // spi_slave.vhd(48[3] 92[10])
    defparam i13192_2_lut_4_lut.LUT_INIT = 16'hffca;
    SB_LUT4 i17651_4_lut_3_lut (.I0(n21999), .I1(reset_int), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n21999));   // spi_slave.vhd(48[3] 92[10])
    defparam i17651_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i1_2_lut_3_lut_adj_28 (.I0(bit_cnt[3]), .I1(n16387), .I2(sclk_rising_pend), 
            .I3(GND_net), .O(n12282));
    defparam i1_2_lut_3_lut_adj_28.LUT_INIT = 16'h2f2f;
    SB_LUT4 i17656_4_lut_3_lut (.I0(n21996), .I1(reset_int), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n21996));   // spi_slave.vhd(48[3] 92[10])
    defparam i17656_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i15176_2_lut_3_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(bit_cnt[1]), .I3(GND_net), .O(n18834));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i15176_2_lut_3_lut.LUT_INIT = 16'h8080;
    SB_LUT4 i13309_3_lut_4_lut (.I0(sclk_falling_pend), .I1(bit_cnt[0]), 
            .I2(sclk_rising_pend), .I3(bit_cnt[1]), .O(n27[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13309_3_lut_4_lut.LUT_INIT = 16'h0708;
    SB_DFF sclk_sync2_94 (.Q(sclk_sync2), .C(clk_32MHz), .D(n14060));   // spi_slave.vhd(48[3] 92[10])
    SB_DFF sclk_sync1_93 (.Q(sclk_sync1), .C(clk_32MHz), .D(n14058));   // spi_slave.vhd(48[3] 92[10])
    SB_LUT4 i17671_4_lut_3_lut (.I0(n13522), .I1(reset_int), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n13522));   // spi_slave.vhd(48[3] 92[10])
    defparam i17671_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i0_i6_9829_9830_set (.Q(n13554), .C(clk_32MHz), .D(n18[6]), 
            .S(data_tx_7__N_973));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i5_9825_9826_reset (.Q(n13551), .C(clk_32MHz), .D(n18[5]), 
            .R(data_tx_7__N_986));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i5_9825_9826_set (.Q(n13550), .C(clk_32MHz), .D(n18[5]), 
            .S(data_tx_7__N_974));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i4_9821_9822_reset (.Q(n13547), .C(clk_32MHz), .D(n18[4]), 
            .R(data_tx_7__N_989));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i4_9821_9822_set (.Q(n13546), .C(clk_32MHz), .D(n18[4]), 
            .S(data_tx_7__N_975));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i3_9817_9818_reset (.Q(n13543), .C(clk_32MHz), .D(n18[3]), 
            .R(data_tx_7__N_992));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i3_9817_9818_set (.Q(n13542), .C(clk_32MHz), .D(n18[3]), 
            .S(data_tx_7__N_976));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i2_9813_9814_reset (.Q(n13539), .C(clk_32MHz), .D(n18[2]), 
            .R(data_tx_7__N_995));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i2_9813_9814_set (.Q(n13538), .C(clk_32MHz), .D(n18[2]), 
            .S(data_tx_7__N_977));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i1_9809_9810_reset (.Q(n13535), .C(clk_32MHz), .D(n18[1]), 
            .R(data_tx_7__N_998));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS data_tx_i0_i1_9809_9810_set (.Q(n13534), .C(clk_32MHz), .D(n18[1]), 
            .S(data_tx_7__N_978));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR data_tx_i0_i7_9805_9806_reset (.Q(n13531), .C(clk_32MHz), .D(n18[7]), 
            .R(data_tx_7__N_980));   // spi_slave.vhd(48[3] 92[10])
    SB_DFF data_rx_i0_i0 (.Q(comm_rx_buf[0]), .C(clk_32MHz), .D(n14043));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFR MISO_92_9802_9803_reset (.Q(n13528), .C(clk_32MHz), .D(n6068), 
            .R(data_tx_7__N_980));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFS MISO_92_9802_9803_set (.Q(n13527), .C(clk_32MHz), .D(n6068), 
            .S(data_tx_7__N_972));   // spi_slave.vhd(48[3] 92[10])
    SB_DFFER bit_cnt_2134__i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12282), 
            .D(n27[1]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFER bit_cnt_2134__i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12282), 
            .D(n27[2]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i9804_3_lut (.I0(n13528), .I1(n13527), .I2(n13526), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(48[3] 92[10])
    defparam i9804_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13311_4_lut (.I0(bit_cnt[3]), .I1(sclk_rising_pend), .I2(bit_cnt[2]), 
            .I3(n18834), .O(n27[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i13311_4_lut.LUT_INIT = 16'h1222;
    SB_DFFER bit_cnt_2134__i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12282), 
            .D(n27[3]), .R(reset_int));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (n19454, VCC_net, cmd_rdadctmp, clk_32MHz, n19456, 
            n19728, n19458, n19460, n19462, n19464, n19468, adc_state, 
            n19484, M_DRDY2, drdy_sync2, drdy_prev, n19506, n7, 
            GND_net, n19536, n19542, n19544, n20138, n9507, n11921, 
            n19734, \cmd_rdadctmp[18] , n15, M_CS2, n14980, \cmd_rdadctmp[17] , 
            \buf_adcdata_vdc2[0] , buf_adcdata2, n11457, n1, n19390, 
            n14957, \cmd_rdadctmp[16] , n14928, \cmd_rdadctmp[15] , 
            drdy_falling, n14892, \cmd_rdadctmp[14] , n14891, \cmd_rdadctmp[13] , 
            n14890, \cmd_rdadctmp[12] , n14889, \cmd_rdadctmp[11] , 
            n19822, \cmd_rdadctmp[10] , \cmd_rdadctmp[9] , acadc_trig, 
            n20387, n14158, n14157, n14156, n14155, n14154, n14153, 
            n14152, n14151, n14150, n14149, n14148, n14147, n14146, 
            n14145, n14144, n14143, n14142, n14141, n14140, n14139, 
            n14138, n14137, n14136, \buf_data2[0] , \comm_cmd[0] , 
            n5414, M_MISO2, n14064, n14049, M_SCLK2, n14048, acadc_dtrig2);
    input n19454;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input clk_32MHz;
    input n19456;
    input n19728;
    input n19458;
    input n19460;
    input n19462;
    input n19464;
    input n19468;
    output [3:0]adc_state;
    input n19484;
    input M_DRDY2;
    output drdy_sync2;
    output drdy_prev;
    input n19506;
    output n7;
    input GND_net;
    input n19536;
    input n19542;
    input n19544;
    output n20138;
    output n9507;
    output n11921;
    input n19734;
    output \cmd_rdadctmp[18] ;
    input n15;
    output M_CS2;
    input n14980;
    output \cmd_rdadctmp[17] ;
    input \buf_adcdata_vdc2[0] ;
    output [23:0]buf_adcdata2;
    input n11457;
    input n1;
    output n19390;
    input n14957;
    output \cmd_rdadctmp[16] ;
    input n14928;
    output \cmd_rdadctmp[15] ;
    output drdy_falling;
    input n14892;
    output \cmd_rdadctmp[14] ;
    input n14891;
    output \cmd_rdadctmp[13] ;
    input n14890;
    output \cmd_rdadctmp[12] ;
    input n14889;
    output \cmd_rdadctmp[11] ;
    input n19822;
    output \cmd_rdadctmp[10] ;
    output \cmd_rdadctmp[9] ;
    input acadc_trig;
    output n20387;
    input n14158;
    input n14157;
    input n14156;
    input n14155;
    input n14154;
    input n14153;
    input n14152;
    input n14151;
    input n14150;
    input n14149;
    input n14148;
    input n14147;
    input n14146;
    input n14145;
    input n14144;
    input n14143;
    input n14142;
    input n14141;
    input n14140;
    input n14139;
    input n14138;
    input n14137;
    input n14136;
    input \buf_data2[0] ;
    input \comm_cmd[0] ;
    output n5414;
    input M_MISO2;
    input n14064;
    input n14049;
    output M_SCLK2;
    input n14048;
    output acadc_dtrig2;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    wire [3:0]adc_state_3__N_1112;
    
    wire n7_c, n7_adj_1239, drdy_sync1;
    wire [3:0]adc_state_3__N_1064;
    
    wire n20257;
    wire [31:0]cmd_rdadctmp_c;   // adc_ads127.vhd(27[8:20])
    
    wire n14555, n14552, n14549, n14546, n14543, n14985, n14540;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n12, n13, n14531, n14534, n14537, n20016, n19064, n20287, 
        n20256, n19986, n13_adj_1241, n11, n20, n20211, n2, n11859, 
        n13888;
    wire [7:0]n65;
    
    wire n14047, n18941, n18940, n18939, n18938, n18937, n18936, 
        n18935;
    
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19454));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19456));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19728));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19458));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19460));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19462));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19464));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19468));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1239));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19484));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19506));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19536));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19542));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19544));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20138));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9507));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20257), 
            .D(adc_state_3__N_1064[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i14505_4_lut (.I0(cmd_rdadctmp_c[1]), .I1(cmd_rdadctmp_c[0]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14555));
    defparam i14505_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14534_4_lut (.I0(cmd_rdadctmp_c[2]), .I1(cmd_rdadctmp_c[1]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14552));
    defparam i14534_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14514_4_lut (.I0(cmd_rdadctmp_c[3]), .I1(cmd_rdadctmp_c[2]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14549));
    defparam i14514_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14511_4_lut (.I0(cmd_rdadctmp_c[4]), .I1(cmd_rdadctmp_c[3]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14546));
    defparam i14511_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i18 (.Q(\cmd_rdadctmp[18] ), .C(clk_32MHz), .D(n19734));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i14517_4_lut (.I0(cmd_rdadctmp_c[5]), .I1(cmd_rdadctmp_c[4]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14543));
    defparam i14517_4_lut.LUT_INIT = 16'hca0a;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp_c[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14985));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS2), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(\cmd_rdadctmp[17] ), .C(clk_32MHz), .D(n14980));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_4_lut (.I0(\buf_adcdata_vdc2[0] ), .I1(buf_adcdata2[0]), 
            .I2(n11457), .I3(n1), .O(n19390));
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i16 (.Q(\cmd_rdadctmp[16] ), .C(clk_32MHz), .D(n14957));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(\cmd_rdadctmp[15] ), .C(clk_32MHz), .D(n14928));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i14520_4_lut (.I0(cmd_rdadctmp_c[6]), .I1(cmd_rdadctmp_c[5]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14540));
    defparam i14520_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20138), .I2(adc_state[0]), 
            .I3(GND_net), .O(n11921));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFF cmd_rdadctmp_i14 (.Q(\cmd_rdadctmp[14] ), .C(clk_32MHz), .D(n14892));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_DFF cmd_rdadctmp_i13 (.Q(\cmd_rdadctmp[13] ), .C(clk_32MHz), .D(n14891));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i12 (.Q(\cmd_rdadctmp[12] ), .C(clk_32MHz), .D(n14890));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i11 (.Q(\cmd_rdadctmp[11] ), .C(clk_32MHz), .D(n14889));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1112[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_DFF cmd_rdadctmp_i10 (.Q(\cmd_rdadctmp[10] ), .C(clk_32MHz), .D(n19822));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i9 (.Q(\cmd_rdadctmp[9] ), .C(clk_32MHz), .D(n14531));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i8 (.Q(cmd_rdadctmp_c[8]), .C(clk_32MHz), .D(n14534));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i7 (.Q(cmd_rdadctmp_c[7]), .C(clk_32MHz), .D(n14537));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut_adj_22 (.I0(adc_state[1]), .I1(adc_state[0]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20016));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_3_lut_adj_22.LUT_INIT = 16'hfefe;
    SB_LUT4 i4_4_lut (.I0(adc_state[2]), .I1(adc_state[0]), .I2(adc_state[3]), 
            .I3(acadc_trig), .O(n19064));
    defparam i4_4_lut.LUT_INIT = 16'hfdff;
    SB_LUT4 i1_3_lut_adj_23 (.I0(adc_state[3]), .I1(adc_state[0]), .I2(adc_state[2]), 
            .I3(GND_net), .O(n20287));
    defparam i1_3_lut_adj_23.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut (.I0(adc_state[1]), .I1(n20287), .I2(n19064), .I3(drdy_falling), 
            .O(n20256));
    defparam i1_4_lut.LUT_INIT = 16'hf5d5;
    SB_DFF cmd_rdadctmp_i6 (.Q(cmd_rdadctmp_c[6]), .C(clk_32MHz), .D(n14540));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_4_lut_adj_24 (.I0(adc_state[3]), .I1(n20256), .I2(acadc_trig), 
            .I3(n20016), .O(n20257));
    defparam i1_4_lut_adj_24.LUT_INIT = 16'hccc8;
    SB_DFF cmd_rdadctmp_i5 (.Q(cmd_rdadctmp_c[5]), .C(clk_32MHz), .D(n14543));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i4 (.Q(cmd_rdadctmp_c[4]), .C(clk_32MHz), .D(n14546));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1239), .I1(n20016), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1064[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i14502_4_lut (.I0(cmd_rdadctmp_c[7]), .I1(cmd_rdadctmp_c[6]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14537));
    defparam i14502_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14508_4_lut (.I0(cmd_rdadctmp_c[8]), .I1(cmd_rdadctmp_c[7]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14534));
    defparam i14508_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i14531_4_lut (.I0(\cmd_rdadctmp[9] ), .I1(cmd_rdadctmp_c[8]), 
            .I2(n11921), .I3(adc_state[0]), .O(n14531));
    defparam i14531_4_lut.LUT_INIT = 16'hca0a;
    SB_DFF cmd_rdadctmp_i3 (.Q(cmd_rdadctmp_c[3]), .C(clk_32MHz), .D(n14549));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i2 (.Q(cmd_rdadctmp_c[2]), .C(clk_32MHz), .D(n14552));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i1 (.Q(cmd_rdadctmp_c[1]), .C(clk_32MHz), .D(n14555));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n19986));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_25 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1241));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_25.LUT_INIT = 16'h5d01;
    SB_LUT4 i17595_2_lut (.I0(adc_state[3]), .I1(n13_adj_1241), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17595_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i17583_2_lut (.I0(n20), .I1(n20387), .I2(GND_net), .I3(GND_net), 
            .O(n20211));
    defparam i17583_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13249_2_lut (.I0(adc_state_3__N_1112[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13249_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i16632_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20387));
    defparam i16632_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10168_2_lut (.I0(n11859), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13888));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10168_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_26 (.I0(drdy_falling), .I1(n20387), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n11859));
    defparam i1_4_lut_adj_26.LUT_INIT = 16'h0230;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata2[23]), .C(clk_32MHz), .D(n14158));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata2[22]), .C(clk_32MHz), .D(n14157));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata2[21]), .C(clk_32MHz), .D(n14156));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata2[20]), .C(clk_32MHz), .D(n14155));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata2[19]), .C(clk_32MHz), .D(n14154));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata2[18]), .C(clk_32MHz), .D(n14153));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata2[17]), .C(clk_32MHz), .D(n14152));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata2[16]), .C(clk_32MHz), .D(n14151));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata2[15]), .C(clk_32MHz), .D(n14150));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata2[14]), .C(clk_32MHz), .D(n14149));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata2[13]), .C(clk_32MHz), .D(n14148));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata2[12]), .C(clk_32MHz), .D(n14147));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata2[11]), .C(clk_32MHz), .D(n14146));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata2[10]), .C(clk_32MHz), .D(n14145));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata2[9]), .C(clk_32MHz), .D(n14144));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata2[8]), .C(clk_32MHz), .D(n14143));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata2[7]), .C(clk_32MHz), .D(n14142));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata2[6]), .C(clk_32MHz), .D(n14141));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata2[5]), .C(clk_32MHz), .D(n14140));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata2[4]), .C(clk_32MHz), .D(n14139));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata2[3]), .C(clk_32MHz), .D(n14138));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata2[2]), .C(clk_32MHz), .D(n14137));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata2[1]), .C(clk_32MHz), .D(n14136));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n11859), .D(n65[7]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n11859), .D(n65[6]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n11859), .D(n65[5]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n11859), .D(n65[4]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11859), .D(n65[3]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11859), .D(n65[2]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11859), .D(n65[1]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20211), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20211), 
            .D(n19986), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i14536_3_lut (.I0(\buf_data2[0] ), .I1(\buf_adcdata_vdc2[0] ), 
            .I2(\comm_cmd[0] ), .I3(GND_net), .O(n5414));   // zimaux_main.vhd(241[9:17])
    defparam i14536_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14535_3_lut (.I0(buf_adcdata2[0]), .I1(cmd_rdadctmp_c[8]), 
            .I2(n9507), .I3(GND_net), .O(n14047));
    defparam i14535_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i14528_4_lut (.I0(cmd_rdadctmp_c[0]), .I1(M_MISO2), .I2(n11921), 
            .I3(adc_state[0]), .O(n14985));
    defparam i14528_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n18941), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n18940), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n18940), .I0(bit_cnt[6]), .I1(GND_net), .CO(n18941));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n18939), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n18939), .I0(bit_cnt[5]), .I1(GND_net), .CO(n18940));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n18938), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n18938), .I0(bit_cnt[4]), .I1(GND_net), .CO(n18939));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n18937), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n18937), .I0(bit_cnt[3]), .I1(GND_net), .CO(n18938));
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14064));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n18936), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n18936), .I0(bit_cnt[2]), .I1(GND_net), .CO(n18937));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n18935), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n18935), .I0(bit_cnt[1]), .I1(GND_net), .CO(n18936));
    SB_DFF SCLK_43 (.Q(M_SCLK2), .C(clk_32MHz), .D(n14049));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig2), .C(clk_32MHz), .D(n14048));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata2[0]), .C(clk_32MHz), .D(n14047));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n18935));
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11859), .D(n65[0]), 
            .R(n13888));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20256), 
            .D(n7_c), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127_U2
//

module ADC_ADS127_U2 (M_DRDY1, clk_32MHz, drdy_sync2, drdy_prev, adc_state, 
            n9642, n19672, VCC_net, cmd_rdadctmp, n15, M_CS1, GND_net, 
            eis_adc_trig, vdc_adc_trig, drdy_falling, acadc_trig, n20367, 
            n14650, n19740, n19742, n19744, n19746, n14135, buf_adcdata1, 
            n19748, n14134, n14133, n14132, n14131, n19750, n14130, 
            n14129, n14128, n14127, n14126, n14125, n14124, n19752, 
            n19754, n19558, n19758, n19688, n14123, n19686, n14122, 
            n19768, n14121, n14120, n19684, n14119, n19682, n14118, 
            n19680, n14117, n14116, n19804, n14115, n19778, n14114, 
            n14113, n19816, n19782, n19786, n19788, n19790, n19792, 
            n19796, n19798, n19800, n19802, n19806, n19810, n7, 
            n20135, n14062, n14046, M_SCLK1, n14045, acadc_dtrig1, 
            n14044, n11821);
    input M_DRDY1;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    output [3:0]adc_state;
    output n9642;
    input n19672;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n15;
    output M_CS1;
    input GND_net;
    input eis_adc_trig;
    input vdc_adc_trig;
    output drdy_falling;
    input acadc_trig;
    output n20367;
    input n14650;
    input n19740;
    input n19742;
    input n19744;
    input n19746;
    input n14135;
    output [23:0]buf_adcdata1;
    input n19748;
    input n14134;
    input n14133;
    input n14132;
    input n14131;
    input n19750;
    input n14130;
    input n14129;
    input n14128;
    input n14127;
    input n14126;
    input n14125;
    input n14124;
    input n19752;
    input n19754;
    input n19558;
    input n19758;
    input n19688;
    input n14123;
    input n19686;
    input n14122;
    input n19768;
    input n14121;
    input n14120;
    input n19684;
    input n14119;
    input n19682;
    input n14118;
    input n19680;
    input n14117;
    input n14116;
    input n19804;
    input n14115;
    input n19778;
    input n14114;
    input n14113;
    input n19816;
    input n19782;
    input n19786;
    input n19788;
    input n19790;
    input n19792;
    input n19796;
    input n19798;
    input n19800;
    input n19802;
    input n19806;
    input n19810;
    output n7;
    output n20135;
    input n14062;
    input n14046;
    output M_SCLK1;
    input n14045;
    output acadc_dtrig1;
    input n14044;
    output n11821;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    
    wire drdy_sync1;
    wire [3:0]adc_state_3__N_1064;
    
    wire n20259;
    wire [7:0]n65;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n18911, n18910, n18909, n20302, n18908, n19974, n13, 
        n11, n20, n20238;
    wire [3:0]adc_state_3__N_1112;
    
    wire n2, n11747, n13847, n12, n13_adj_1236, n20258, n20014, 
        n7_c, n18907, n18906, n18905, n7_adj_1238;
    
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9642));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20259), 
            .D(adc_state_3__N_1064[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19672));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS1), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n18911), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n18910), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n18910), .I0(bit_cnt[6]), .I1(GND_net), .CO(n18911));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n18909), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_3_lut_4_lut (.I0(eis_adc_trig), .I1(vdc_adc_trig), .I2(drdy_falling), 
            .I3(adc_state[2]), .O(n20302));
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h11f0;
    SB_CARRY add_13_7 (.CI(n18909), .I0(bit_cnt[5]), .I1(GND_net), .CO(n18910));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n18908), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n18908), .I0(bit_cnt[4]), .I1(GND_net), .CO(n18909));
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n19974));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut.LUT_INIT = 16'h5d01;
    SB_LUT4 i17591_2_lut (.I0(adc_state[3]), .I1(n13), .I2(GND_net), .I3(GND_net), 
            .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17591_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i17589_2_lut (.I0(n20), .I1(n20367), .I2(GND_net), .I3(GND_net), 
            .O(n20238));
    defparam i17589_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13210_2_lut (.I0(adc_state_3__N_1112[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13210_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i16612_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20367));
    defparam i16612_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i10127_2_lut (.I0(n11747), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13847));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10127_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_19 (.I0(drdy_falling), .I1(n20367), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n11747));
    defparam i1_4_lut_adj_19.LUT_INIT = 16'h0230;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13_adj_1236));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13_adj_1236), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1112[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i3_4_lut_adj_20 (.I0(adc_state[3]), .I1(adc_state[0]), .I2(n20302), 
            .I3(adc_state[1]), .O(n20258));
    defparam i3_4_lut_adj_20.LUT_INIT = 16'hfeff;
    SB_LUT4 i2_3_lut (.I0(adc_state[2]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n20014));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut_adj_21 (.I0(adc_state[3]), .I1(n20258), .I2(acadc_trig), 
            .I3(n20014), .O(n20259));
    defparam i1_4_lut_adj_21.LUT_INIT = 16'hccc8;
    SB_DFF cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .D(n14650));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19740));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19742));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19744));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_c), .I1(n20014), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1064[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19746));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n18907), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n18907), .I0(bit_cnt[3]), .I1(GND_net), .CO(n18908));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n18906), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n18906), .I0(bit_cnt[2]), .I1(GND_net), .CO(n18907));
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata1[23]), .C(clk_32MHz), .D(n14135));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19748));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata1[22]), .C(clk_32MHz), .D(n14134));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata1[21]), .C(clk_32MHz), .D(n14133));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata1[20]), .C(clk_32MHz), .D(n14132));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata1[19]), .C(clk_32MHz), .D(n14131));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n18905), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n18905), .I0(bit_cnt[1]), .I1(GND_net), .CO(n18906));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19750));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata1[18]), .C(clk_32MHz), .D(n14130));   // adc_ads127.vhd(36[3] 96[10])
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n18905));
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata1[17]), .C(clk_32MHz), .D(n14129));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata1[16]), .C(clk_32MHz), .D(n14128));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata1[15]), .C(clk_32MHz), .D(n14127));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata1[14]), .C(clk_32MHz), .D(n14126));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata1[13]), .C(clk_32MHz), .D(n14125));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata1[12]), .C(clk_32MHz), .D(n14124));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19752));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19754));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19558));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19758));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19688));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata1[11]), .C(clk_32MHz), .D(n14123));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19686));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata1[10]), .C(clk_32MHz), .D(n14122));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19768));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata1[9]), .C(clk_32MHz), .D(n14121));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata1[8]), .C(clk_32MHz), .D(n14120));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .D(n19684));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata1[7]), .C(clk_32MHz), .D(n14119));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19682));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata1[6]), .C(clk_32MHz), .D(n14118));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19680));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata1[5]), .C(clk_32MHz), .D(n14117));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata1[4]), .C(clk_32MHz), .D(n14116));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19804));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata1[3]), .C(clk_32MHz), .D(n14115));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19778));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata1[2]), .C(clk_32MHz), .D(n14114));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata1[1]), .C(clk_32MHz), .D(n14113));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19816));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19782));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19786));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19788));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19790));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19792));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19796));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19798));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19800));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19802));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19806));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19810));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n11747), .D(n65[7]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n11747), .D(n65[6]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n11747), .D(n65[5]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n11747), .D(n65[4]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11747), .D(n65[3]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11747), .D(n65[2]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11747), .D(n65[1]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20238), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20238), 
            .D(n19974), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));   // adc_ads127.vhd(36[3] 96[10])
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20135));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14062));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK1), .C(clk_32MHz), .D(n14046));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig1), .C(clk_32MHz), .D(n14045));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata1[0]), .C(clk_32MHz), .D(n14044));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1238));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11747), .D(n65[0]), 
            .R(n13847));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20258), 
            .D(n7_adj_1238), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20135), .I2(adc_state[0]), 
            .I3(GND_net), .O(n11821));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    
endmodule
//
// Verilog Description of module zim_pll
//

module zim_pll (GND_net, ICE_SYSCLK, VCC_net, clk_32MHz, clk_16MHz, 
            clk_16MHz_N_890);
    input GND_net;
    input ICE_SYSCLK;
    input VCC_net;
    output clk_32MHz;
    output clk_16MHz;
    output clk_16MHz_N_890;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    wire clk_16MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_16MHz */ ;   // zimaux_main.vhd(201[9:18])
    wire clk_16MHz_N_890 /* synthesis is_inv_clock=1 */ ;   // zimaux_main.vhd(12[3:12])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=817, LSE_RLINE=817 */ ;   // zimaux_main.vhd(817[13:20])
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
    SB_LUT4 i17969_1_lut (.I0(clk_16MHz), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(clk_16MHz_N_890));   // zimaux_main.vhd(817[13:20])
    defparam i17969_1_lut.LUT_INIT = 16'h5555;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U0
//

module ADC_ADS127_U0 (M_DRDY3, clk_32MHz, drdy_sync2, drdy_prev, n19556, 
            VCC_net, cmd_rdadctmp, n19560, n19564, n19566, n19568, 
            n19570, n19572, n19574, n19576, n19578, n19580, n19582, 
            n19584, n19550, n19590, n19552, n19592, n19594, n19724, 
            n19722, n19538, n19596, n19720, drdy_falling, n20141, 
            adc_state, n12021, GND_net, n19718, n19600, n19714, 
            n19712, n19738, n19708, n19706, n19604, n20283, acadc_trig, 
            n9453, n19674, n15, M_CS3, n14181, buf_adcdata3, n14180, 
            n14179, n14178, n14177, n14176, n14175, n14174, n14173, 
            n14172, n14171, n14170, n14169, n14168, n14167, n14166, 
            n14165, n14164, n14163, n14162, n14161, n14160, n14159, 
            n7, n14066, n14052, M_SCLK3, n14051, acadc_dtrig3, n14050);
    input M_DRDY3;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    input n19556;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n19560;
    input n19564;
    input n19566;
    input n19568;
    input n19570;
    input n19572;
    input n19574;
    input n19576;
    input n19578;
    input n19580;
    input n19582;
    input n19584;
    input n19550;
    input n19590;
    input n19552;
    input n19592;
    input n19594;
    input n19724;
    input n19722;
    input n19538;
    input n19596;
    input n19720;
    output drdy_falling;
    output n20141;
    output [3:0]adc_state;
    output n12021;
    input GND_net;
    input n19718;
    input n19600;
    input n19714;
    input n19712;
    input n19738;
    input n19708;
    input n19706;
    input n19604;
    output n20283;
    input acadc_trig;
    output n9453;
    input n19674;
    input n15;
    output M_CS3;
    input n14181;
    output [23:0]buf_adcdata3;
    input n14180;
    input n14179;
    input n14178;
    input n14177;
    input n14176;
    input n14175;
    input n14174;
    input n14173;
    input n14172;
    input n14171;
    input n14170;
    input n14169;
    input n14168;
    input n14167;
    input n14166;
    input n14165;
    input n14164;
    input n14163;
    input n14162;
    input n14161;
    input n14160;
    input n14159;
    output n7;
    input n14066;
    input n14052;
    output M_SCLK3;
    input n14051;
    output acadc_dtrig3;
    input n14050;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    
    wire drdy_sync1;
    wire [3:0]adc_state_3__N_1064;
    
    wire n20252;
    wire [3:0]adc_state_3__N_1112;
    
    wire n7_c, n7_adj_1233;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n12, n13, n20018, n20306, n20251, n19988, n13_adj_1234, 
        n11, n20, n20218, n2, n11959, n13929;
    wire [7:0]n65;
    
    wire n18948, n18947, n18946, n18945, n18944, n18943, n18942;
    
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY3));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19556));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19560));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19564));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19566));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19568));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19570));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19572));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19574));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19576));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19578));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19580));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19582));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19584));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19550));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19590));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19552));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19592));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19594));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19724));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19722));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19538));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19596));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19720));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20141), .I2(adc_state[0]), 
            .I3(GND_net), .O(n12021));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19718));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19600));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19714));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19712));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19738));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19708));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19706));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19604));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20252), 
            .D(adc_state_3__N_1064[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1233));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1112[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_LUT4 i1_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20283));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i2_3_lut (.I0(adc_state[2]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n20018));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_4_lut (.I0(adc_state[2]), .I1(acadc_trig), .I2(drdy_falling), 
            .I3(n20283), .O(n20306));
    defparam i1_4_lut.LUT_INIT = 16'hff72;
    SB_LUT4 i1_2_lut_adj_15 (.I0(adc_state[1]), .I1(n20306), .I2(GND_net), 
            .I3(GND_net), .O(n20251));
    defparam i1_2_lut_adj_15.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_4_lut_adj_16 (.I0(adc_state[3]), .I1(n20251), .I2(acadc_trig), 
            .I3(n20018), .O(n20252));
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hccc8;
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9453));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_adj_1233), .I1(n20018), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1064[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19674));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS3), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata3[23]), .C(clk_32MHz), .D(n14181));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata3[22]), .C(clk_32MHz), .D(n14180));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata3[21]), .C(clk_32MHz), .D(n14179));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata3[20]), .C(clk_32MHz), .D(n14178));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata3[19]), .C(clk_32MHz), .D(n14177));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata3[18]), .C(clk_32MHz), .D(n14176));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata3[17]), .C(clk_32MHz), .D(n14175));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata3[16]), .C(clk_32MHz), .D(n14174));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata3[15]), .C(clk_32MHz), .D(n14173));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata3[14]), .C(clk_32MHz), .D(n14172));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata3[13]), .C(clk_32MHz), .D(n14171));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata3[12]), .C(clk_32MHz), .D(n14170));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata3[11]), .C(clk_32MHz), .D(n14169));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata3[10]), .C(clk_32MHz), .D(n14168));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata3[9]), .C(clk_32MHz), .D(n14167));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata3[8]), .C(clk_32MHz), .D(n14166));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata3[7]), .C(clk_32MHz), .D(n14165));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata3[6]), .C(clk_32MHz), .D(n14164));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata3[5]), .C(clk_32MHz), .D(n14163));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata3[4]), .C(clk_32MHz), .D(n14162));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata3[3]), .C(clk_32MHz), .D(n14161));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata3[2]), .C(clk_32MHz), .D(n14160));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata3[1]), .C(clk_32MHz), .D(n14159));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n19988));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_17 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1234));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_17.LUT_INIT = 16'h5d01;
    SB_LUT4 i17599_2_lut (.I0(adc_state[3]), .I1(n13_adj_1234), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17599_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i17593_2_lut (.I0(n20), .I1(n20283), .I2(GND_net), .I3(GND_net), 
            .O(n20218));
    defparam i17593_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13273_2_lut (.I0(adc_state_3__N_1112[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13273_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i10209_2_lut (.I0(n11959), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13929));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10209_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_18 (.I0(drdy_falling), .I1(n20283), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n11959));
    defparam i1_4_lut_adj_18.LUT_INIT = 16'h0230;
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20141));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n11959), .D(n65[7]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n11959), .D(n65[6]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n11959), .D(n65[5]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n11959), .D(n65[4]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n11959), .D(n65[3]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n11959), .D(n65[2]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n11959), .D(n65[1]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20218), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20218), 
            .D(n19988), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n18948), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n18947), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n18947), .I0(bit_cnt[6]), .I1(GND_net), .CO(n18948));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n18946), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n18946), .I0(bit_cnt[5]), .I1(GND_net), .CO(n18947));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n18945), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n18945), .I0(bit_cnt[4]), .I1(GND_net), .CO(n18946));
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n18944), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n18944), .I0(bit_cnt[3]), .I1(GND_net), .CO(n18945));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n18943), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n18943), .I0(bit_cnt[2]), .I1(GND_net), .CO(n18944));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n18942), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n18942), .I0(bit_cnt[1]), .I1(GND_net), .CO(n18943));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n18942));
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14066));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK3), .C(clk_32MHz), .D(n14052));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig3), .C(clk_32MHz), .D(n14051));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata3[0]), .C(clk_32MHz), .D(n14050));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n11959), .D(n65[0]), 
            .R(n13929));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20251), 
            .D(n7_c), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (dds_state, GND_net, \bit_cnt[0] , clk_16MHz, DDS_CS1, 
            \buf_dds[15] , \buf_dds[13] , \buf_dds[11] , \buf_dds[10] , 
            \buf_dds[9] , \buf_dds[8] , \buf_dds[7] , \buf_dds[6] , 
            \buf_dds[5] , \buf_dds[4] , \buf_dds[3] , \buf_dds[2] , 
            \buf_dds[1] , \buf_dds[0] , \tmp_buf[15] , trig_dds, \tmp_buf[11] , 
            \tmp_buf_15__N_1174[12] , \tmp_buf[13] , \tmp_buf_15__N_1174[14] , 
            VCC_net, n14969, n14010, n14057, DDS_MOSI1, n14056, 
            DDS_SCK1);
    output [2:0]dds_state;
    input GND_net;
    output \bit_cnt[0] ;
    input clk_16MHz;
    output DDS_CS1;
    input \buf_dds[15] ;
    input \buf_dds[13] ;
    input \buf_dds[11] ;
    input \buf_dds[10] ;
    input \buf_dds[9] ;
    input \buf_dds[8] ;
    input \buf_dds[7] ;
    input \buf_dds[6] ;
    input \buf_dds[5] ;
    input \buf_dds[4] ;
    input \buf_dds[3] ;
    input \buf_dds[2] ;
    input \buf_dds[1] ;
    input \buf_dds[0] ;
    output \tmp_buf[15] ;
    input trig_dds;
    output \tmp_buf[11] ;
    input \tmp_buf_15__N_1174[12] ;
    output \tmp_buf[13] ;
    input \tmp_buf_15__N_1174[14] ;
    input VCC_net;
    input n14969;
    output n14010;
    input n14057;
    output DDS_MOSI1;
    input n14056;
    output DDS_SCK1;
    
    wire clk_16MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_16MHz */ ;   // zimaux_main.vhd(201[9:18])
    
    wire n9312;
    wire [3:0]bit_cnt;   // dds_ad9837.vhd(25[9:16])
    wire [3:0]bit_cnt_3__N_1219;
    wire [2:0]dds_state_2__N_1171;
    
    wire n9, CS_N_1224, n9_adj_1232;
    wire [15:0]tmp_buf_15__N_1174;
    
    wire n12186;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n3, n10, n20922;
    
    SB_LUT4 i9694_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n9312));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i9694_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2248_2_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_1219[1]));   // dds_ad9837.vhd(61[19:26])
    defparam i2248_2_lut.LUT_INIT = 16'h6666;
    SB_DFFNE dds_state_i0 (.Q(dds_state[0]), .C(clk_16MHz), .E(n9), .D(dds_state_2__N_1171[0]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE CS_28 (.Q(DDS_CS1), .C(clk_16MHz), .E(n9_adj_1232), .D(CS_N_1224));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[0]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(\buf_dds[15] ), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[15]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(\buf_dds[13] ), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[13]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(\buf_dds[11] ), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[11]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(\buf_dds[10] ), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[10]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(\buf_dds[9] ), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[9]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(\buf_dds[8] ), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[8]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(\buf_dds[7] ), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[7]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(\buf_dds[6] ), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[6]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(\buf_dds[5] ), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[5]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(\buf_dds[4] ), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[4]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(\buf_dds[3] ), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[3]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(\buf_dds[2] ), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[2]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(\buf_dds[1] ), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[1]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(\buf_dds[0] ), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_1174[0]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1232));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_1224));   // dds_ad9837.vhd(33[4] 75[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i17585_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds), 
            .I3(dds_state[1]), .O(n9));
    defparam i17585_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(\bit_cnt[0] ), .I1(bit_cnt[3]), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n10));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i4_4_lut.LUT_INIT = 16'h0080;
    SB_DFFNE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[1]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[2]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[3]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[4]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[5]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[6]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[7]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[8]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_16MHz), .E(n12186), .D(tmp_buf_15__N_1174[9]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_16MHz), .E(n12186), 
            .D(tmp_buf_15__N_1174[10]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i11 (.Q(\tmp_buf[11] ), .C(clk_16MHz), .E(n12186), 
            .D(tmp_buf_15__N_1174[11]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_16MHz), .E(n12186), 
            .D(\tmp_buf_15__N_1174[12] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i13 (.Q(\tmp_buf[13] ), .C(clk_16MHz), .E(n12186), 
            .D(tmp_buf_15__N_1174[13]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_16MHz), .E(n12186), 
            .D(\tmp_buf_15__N_1174[14] ));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_16MHz), .E(n12186), 
            .D(tmp_buf_15__N_1174[15]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i17397_2_lut (.I0(bit_cnt[2]), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(GND_net), .O(n20922));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i17397_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9794_4_lut (.I0(dds_state[0]), .I1(n20922), .I2(dds_state[1]), 
            .I3(n10), .O(dds_state_2__N_1171[0]));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i9794_4_lut.LUT_INIT = 16'hc505;
    SB_DFFNE dds_state_i2 (.Q(dds_state[2]), .C(clk_16MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNE bit_cnt_i0 (.Q(\bit_cnt[0] ), .C(clk_16MHz), .E(VCC_net), 
            .D(n14969));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i17528_3_lut_4_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(trig_dds), .O(n12186));   // dds_ad9837.vhd(33[4] 75[13])
    defparam i17528_3_lut_4_lut.LUT_INIT = 16'hb0b4;
    SB_LUT4 i10286_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n14010));   // dds_ad9837.vhd(31[3] 76[10])
    defparam i10286_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFNESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_16MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1219[3]), .R(n14010));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_16MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1219[2]), .R(n14010));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_16MHz), .E(dds_state[1]), 
            .D(bit_cnt_3__N_1219[1]), .R(n14010));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFNESR dds_state_i1 (.Q(dds_state[1]), .C(clk_16MHz), .E(n9), 
            .D(n9312), .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFN MOSI_31 (.Q(DDS_MOSI1), .C(clk_16MHz), .D(n14057));   // dds_ad9837.vhd(31[3] 76[10])
    SB_DFFN SCLK_27 (.Q(DDS_SCK1), .C(clk_16MHz), .D(n14056));   // dds_ad9837.vhd(31[3] 76[10])
    SB_LUT4 i2255_2_lut_3_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_1219[2]));   // dds_ad9837.vhd(61[19:26])
    defparam i2255_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i2262_3_lut_4_lut (.I0(bit_cnt[1]), .I1(\bit_cnt[0] ), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_1219[3]));   // dds_ad9837.vhd(61[19:26])
    defparam i2262_3_lut_4_lut.LUT_INIT = 16'h7f80;
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (adc_state, n20144, GND_net, M_DRDY4, clk_32MHz, 
            drdy_sync2, drdy_prev, n19606, VCC_net, cmd_rdadctmp, 
            n20280, acadc_trig, drdy_falling, n19610, n19612, n19614, 
            n19616, n19618, n19622, n19624, n19626, n19628, n19632, 
            n19634, n19636, n19668, n19640, n19670, n19642, n19644, 
            n19704, n19702, n19598, n19646, n19700, n19698, n19648, 
            n19696, n19694, n19466, n19692, n19690, n19660, n19676, 
            n15, M_CS4, n14204, buf_adcdata4, n14203, n14202, n14201, 
            n14200, n14199, n14198, n14197, n14196, n14195, n14194, 
            n14193, n14192, n14191, n14190, n14189, n14188, n14187, 
            n14186, n14185, n14184, n14183, n14182, n12099, n9393, 
            n14068, n14055, M_SCLK4, n14054, acadc_dtrig4, n14053, 
            n7);
    output [3:0]adc_state;
    output n20144;
    input GND_net;
    input M_DRDY4;
    input clk_32MHz;
    output drdy_sync2;
    output drdy_prev;
    input n19606;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    output n20280;
    input acadc_trig;
    output drdy_falling;
    input n19610;
    input n19612;
    input n19614;
    input n19616;
    input n19618;
    input n19622;
    input n19624;
    input n19626;
    input n19628;
    input n19632;
    input n19634;
    input n19636;
    input n19668;
    input n19640;
    input n19670;
    input n19642;
    input n19644;
    input n19704;
    input n19702;
    input n19598;
    input n19646;
    input n19700;
    input n19698;
    input n19648;
    input n19696;
    input n19694;
    input n19466;
    input n19692;
    input n19690;
    input n19660;
    input n19676;
    input n15;
    output M_CS4;
    input n14204;
    output [23:0]buf_adcdata4;
    input n14203;
    input n14202;
    input n14201;
    input n14200;
    input n14199;
    input n14198;
    input n14197;
    input n14196;
    input n14195;
    input n14194;
    input n14193;
    input n14192;
    input n14191;
    input n14190;
    input n14189;
    input n14188;
    input n14187;
    input n14186;
    input n14185;
    input n14184;
    input n14183;
    input n14182;
    output n12099;
    output n9393;
    input n14068;
    input n14055;
    output M_SCLK4;
    input n14054;
    output acadc_dtrig4;
    input n14053;
    output n7;
    
    wire clk_32MHz /* synthesis SET_AS_NETWORK=clk_32MHz, is_clock=1 */ ;   // zimaux_main.vhd(202[9:18])
    
    wire drdy_sync1;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n12, n13;
    wire [3:0]adc_state_3__N_1112;
    
    wire n20308, n20249, n20020;
    wire [3:0]adc_state_3__N_1064;
    
    wire n20250, n7_c, n7_adj_1229, n19992, n13_adj_1230, n11;
    wire [7:0]n65;
    
    wire n12059, n13970, n2, n20197, n20, n18955, n18954, n18953, 
        n18952, n18951, n18950, n18949;
    
    SB_LUT4 i1_2_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[3]), 
            .I3(GND_net), .O(n20144));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFF drdy_sync1_51 (.Q(drdy_sync1), .C(clk_32MHz), .D(M_DRDY4));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_sync2_52 (.Q(drdy_sync2), .C(clk_32MHz), .D(drdy_sync1));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF drdy_prev_53 (.Q(drdy_prev), .C(clk_32MHz), .D(drdy_sync2));   // adc_ads127.vhd(101[3] 106[10])
    SB_LUT4 i4_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // adc_ads127.vhd(66[8:24])
    defparam i4_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i5_4_lut (.I0(bit_cnt[0]), .I1(bit_cnt[2]), .I2(bit_cnt[6]), 
            .I3(bit_cnt[4]), .O(n13));   // adc_ads127.vhd(66[8:24])
    defparam i5_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut (.I0(n13), .I1(bit_cnt[3]), .I2(n12), .I3(bit_cnt[5]), 
            .O(adc_state_3__N_1112[3]));   // adc_ads127.vhd(66[8:24])
    defparam i7_4_lut.LUT_INIT = 16'hfeff;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19606));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_2_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(GND_net), 
            .I3(GND_net), .O(n20280));
    defparam i1_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut (.I0(adc_state[2]), .I1(acadc_trig), .I2(drdy_falling), 
            .I3(n20280), .O(n20308));
    defparam i1_4_lut.LUT_INIT = 16'hff72;
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19610));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_2_lut_adj_11 (.I0(adc_state[1]), .I1(n20308), .I2(GND_net), 
            .I3(GND_net), .O(n20249));
    defparam i1_2_lut_adj_11.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19612));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19614));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19616));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19618));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19622));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i2_3_lut (.I0(adc_state[2]), .I1(adc_state[0]), .I2(adc_state[1]), 
            .I3(GND_net), .O(n20020));   // adc_ads127.vhd(36[3] 96[10])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19624));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19626));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19628));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE adc_state_i2 (.Q(adc_state[2]), .C(clk_32MHz), .E(n20250), 
            .D(adc_state_3__N_1064[2]));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19632));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_4_lut_adj_12 (.I0(adc_state[3]), .I1(n20249), .I2(acadc_trig), 
            .I3(n20020), .O(n20250));
    defparam i1_4_lut_adj_12.LUT_INIT = 16'hccc8;
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19634));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19636));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19668));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19640));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19670));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i15_3_lut (.I0(n7_c), .I1(n20020), 
            .I2(adc_state[3]), .I3(GND_net), .O(adc_state_3__N_1064[2]));   // adc_ads127.vhd(46[4] 95[13])
    defparam adc_state_3__I_0_55_Mux_2_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19642));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19644));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19704));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19702));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19598));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19646));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19700));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19698));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19648));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19696));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19694));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19466));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19692));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19690));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19660));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n19676));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFE CS_45 (.Q(M_CS4), .C(clk_32MHz), .E(VCC_net), .D(n15));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata4[23]), .C(clk_32MHz), .D(n14204));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata4[22]), .C(clk_32MHz), .D(n14203));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata4[21]), .C(clk_32MHz), .D(n14202));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata4[20]), .C(clk_32MHz), .D(n14201));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata4[19]), .C(clk_32MHz), .D(n14200));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata4[18]), .C(clk_32MHz), .D(n14199));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata4[17]), .C(clk_32MHz), .D(n14198));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata4[16]), .C(clk_32MHz), .D(n14197));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata4[15]), .C(clk_32MHz), .D(n14196));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata4[14]), .C(clk_32MHz), .D(n14195));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata4[13]), .C(clk_32MHz), .D(n14194));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata4[12]), .C(clk_32MHz), .D(n14193));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata4[11]), .C(clk_32MHz), .D(n14192));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata4[10]), .C(clk_32MHz), .D(n14191));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata4[9]), .C(clk_32MHz), .D(n14190));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata4[8]), .C(clk_32MHz), .D(n14189));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata4[7]), .C(clk_32MHz), .D(n14188));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata4[6]), .C(clk_32MHz), .D(n14187));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata4[5]), .C(clk_32MHz), .D(n14186));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata4[4]), .C(clk_32MHz), .D(n14185));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata4[3]), .C(clk_32MHz), .D(n14184));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata4[2]), .C(clk_32MHz), .D(n14183));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata4[1]), .C(clk_32MHz), .D(n14182));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i1_3_lut (.I0(drdy_falling), .I1(n20144), .I2(adc_state[0]), 
            .I3(GND_net), .O(n12099));   // adc_ads127.vhd(46[4] 95[13])
    defparam i1_3_lut.LUT_INIT = 16'hc8c8;
    SB_LUT4 i3_4_lut (.I0(adc_state[0]), .I1(adc_state[3]), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n9393));   // adc_ads127.vhd(46[4] 95[13])
    defparam i3_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_adj_1229));
    defparam adc_state_3__I_0_55_Mux_0_i7_4_lut_4_lut.LUT_INIT = 16'ha520;
    SB_LUT4 adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut (.I0(adc_state[1]), .I1(adc_state_3__N_1112[3]), 
            .I2(adc_state[0]), .I3(adc_state[2]), .O(n7_c));
    defparam adc_state_3__I_0_55_Mux_2_i7_3_lut_4_lut.LUT_INIT = 16'h5520;
    SB_LUT4 i12_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n19992));   // adc_ads127.vhd(46[4] 95[13])
    defparam i12_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_4_lut_adj_13 (.I0(adc_state[2]), .I1(acadc_trig), .I2(adc_state[0]), 
            .I3(adc_state[1]), .O(n13_adj_1230));   // adc_ads127.vhd(36[3] 96[10])
    defparam i1_4_lut_adj_13.LUT_INIT = 16'h5d01;
    SB_LUT4 i17601_2_lut (.I0(adc_state[3]), .I1(n13_adj_1230), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // adc_ads127.vhd(36[3] 96[10])
    defparam i17601_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n12059), .D(n65[7]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n12059), .D(n65[6]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n12059), .D(n65[5]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n12059), .D(n65[4]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n12059), .D(n65[3]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n12059), .D(n65[2]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n12059), .D(n65[1]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i3 (.Q(adc_state[3]), .C(clk_32MHz), .E(n20197), 
            .D(n2), .R(n11));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i1 (.Q(adc_state[1]), .C(clk_32MHz), .E(n20197), 
            .D(n19992), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i33_4_lut (.I0(drdy_falling), .I1(acadc_trig), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n20));
    defparam i33_4_lut.LUT_INIT = 16'hc503;
    SB_LUT4 i17559_2_lut (.I0(n20), .I1(n20280), .I2(GND_net), .I3(GND_net), 
            .O(n20197));
    defparam i17559_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i13281_2_lut (.I0(adc_state_3__N_1112[3]), .I1(adc_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n2));   // adc_ads127.vhd(46[4] 95[13])
    defparam i13281_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i10250_2_lut (.I0(n12059), .I1(adc_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n13970));   // adc_ads127.vhd(36[3] 96[10])
    defparam i10250_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_13_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n18955), .O(n65[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_13_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n18954), .O(n65[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_8 (.CI(n18954), .I0(bit_cnt[6]), .I1(GND_net), .CO(n18955));
    SB_LUT4 add_13_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n18953), .O(n65[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_7 (.CI(n18953), .I0(bit_cnt[5]), .I1(GND_net), .CO(n18954));
    SB_LUT4 add_13_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n18952), .O(n65[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_6 (.CI(n18952), .I0(bit_cnt[4]), .I1(GND_net), .CO(n18953));
    SB_LUT4 i1_4_lut_adj_14 (.I0(drdy_falling), .I1(n20280), .I2(adc_state[2]), 
            .I3(adc_state[1]), .O(n12059));
    defparam i1_4_lut_adj_14.LUT_INIT = 16'h0230;
    SB_LUT4 add_13_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n18951), .O(n65[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_5 (.CI(n18951), .I0(bit_cnt[3]), .I1(GND_net), .CO(n18952));
    SB_LUT4 add_13_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n18950), .O(n65[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_4 (.CI(n18950), .I0(bit_cnt[2]), .I1(GND_net), .CO(n18951));
    SB_LUT4 add_13_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n18949), .O(n65[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_3 (.CI(n18949), .I0(bit_cnt[1]), .I1(GND_net), .CO(n18950));
    SB_LUT4 add_13_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n65[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_13_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_13_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n18949));
    SB_DFF drdy_falling_54 (.Q(drdy_falling), .C(clk_32MHz), .D(n14068));   // adc_ads127.vhd(101[3] 106[10])
    SB_DFF SCLK_43 (.Q(M_SCLK4), .C(clk_32MHz), .D(n14055));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF DTRIG_47 (.Q(acadc_dtrig4), .C(clk_32MHz), .D(n14054));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata4[0]), .C(clk_32MHz), .D(n14053));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n12059), .D(n65[0]), 
            .R(n13970));   // adc_ads127.vhd(36[3] 96[10])
    SB_DFFESR adc_state_i0 (.Q(adc_state[0]), .C(clk_32MHz), .E(n20249), 
            .D(n7_adj_1229), .R(adc_state[3]));   // adc_ads127.vhd(36[3] 96[10])
    SB_LUT4 i18_3_lut_3_lut (.I0(adc_state[1]), .I1(adc_state[2]), .I2(adc_state[0]), 
            .I3(GND_net), .O(n7));
    defparam i18_3_lut_3_lut.LUT_INIT = 16'h2525;
    
endmodule
