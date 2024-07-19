// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Mon Jul 01 11:45:35 2024
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
            M_CLK4, M_SCLK4, M_CS4, M_MOSI4, M_MISO4, M_DRDY4);   // zimaux_main.vhd(7[8:14])
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
    
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zimaux_main.vhd(201[9:18])
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    
    wire VCC_net, n104, n15356;
    wire [15:0]buf_dds;   // zimaux_main.vhd(210[9:16])
    
    wire trig_dds, n78;
    wire [31:0]secclk_cnt;   // zimaux_main.vhd(214[9:19])
    wire [7:0]comm_tx_buf;   // zimaux_main.vhd(226[9:20])
    
    wire comm_data_vld;
    wire [7:0]comm_rx_buf;   // zimaux_main.vhd(228[9:20])
    wire [3:0]comm_state;   // zimaux_main.vhd(231[9:19])
    wire [7:0]comm_cmd;   // zimaux_main.vhd(233[9:17])
    
    wire comm_clear;
    wire [7:0]\comm_buf[0] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[1] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[2] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[3] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[4] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[5] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[6] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[7] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[8] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[9] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[10] ;   // zimaux_main.vhd(236[9:17])
    wire [7:0]\comm_buf[11] ;   // zimaux_main.vhd(236[9:17])
    wire [3:0]comm_index;   // zimaux_main.vhd(237[9:19])
    wire [3:0]comm_length;   // zimaux_main.vhd(238[9:20])
    
    wire acadc_trig, acadc_dtrig1, acadc_dtrig2, acadc_dtrig3, acadc_dtrig4;
    wire [15:0]acadc_skipcnt;   // zimaux_main.vhd(251[9:22])
    wire [15:0]acadc_skipCount;   // zimaux_main.vhd(252[9:24])
    wire [7:0]buf_device_acadc;   // zimaux_main.vhd(254[9:25])
    wire [23:0]buf_adcdata1;   // zimaux_main.vhd(260[9:21])
    wire [23:0]buf_adcdata2;   // zimaux_main.vhd(261[9:21])
    wire [23:0]buf_adcdata3;   // zimaux_main.vhd(262[9:21])
    wire [23:0]buf_adcdata4;   // zimaux_main.vhd(263[9:21])
    wire [2:0]eis_state;   // zimaux_main.vhd(271[9:18])
    
    wire tacadc_rst, eis_start, eis_stop, eis_end;
    wire [15:0]req_data_cnt;   // zimaux_main.vhd(279[9:21])
    wire [95:0]buf_data2;
    wire [9:0]data_count;   // zimaux_main.vhd(286[9:19])
    wire [15:0]data_cntvec;   // zimaux_main.vhd(287[9:20])
    wire [9:0]data_index;   // zimaux_main.vhd(288[9:19])
    wire [15:0]data_idxvec;   // zimaux_main.vhd(289[9:20])
    
    wire n56, n9224;
    wire [7:0]buf_control;   // zimaux_main.vhd(298[9:20])
    
    wire n69, n78_adj_1022, n117, n84, n90, n9, n93, n99, n8847, 
        TEST_LED_N_737, n7511, n90_adj_1023, n13, n99_adj_1024, n27, 
        n29, n14506, raw_buf1_N_775, n367, n368, n369, n370, n371, 
        n372, n373, n374, n375, n378, n379, n380, n381, n382, 
        n383, n384, n385, n386, n387, n388, n389, n390, n391, 
        n392, n393, n428, n429, n430, n431, n432, n433, n434, 
        n435, n436, n437, n438, n439, n440, n441, n442, n443, 
        n15147, n9215, eis_end_N_773, n9819, n26, n15711, n15466, 
        n14576, n14578, n14580, n14582, n14584, eis_end_N_770;
    wire [2:0]eis_state_2__N_213;
    
    wire n13_adj_1025, n12, n9837, n59, n71, n13_adj_1026, n12_adj_1027, 
        n9_adj_1028, n109, n729;
    wire [3:0]comm_length_3__N_433;
    wire [7:0]comm_buf_3__7__N_501;
    wire [9:0]data_index_9__N_647;
    wire [15:0]data_idxvec_15__N_673;
    wire [2:0]comm_state_3__N_418;
    
    wire n69_adj_1029, n878, n879, n880, n881, n882, n883, n884, 
        n885, n15474, n4, n9841, n15130, n9831, n9187, n6, n113, 
        n11, n14, n9862, n114, n14017, n11_adj_1030, n115, n15165, 
        n14016, n116, n14_adj_1031, n5, n14015, n112, n111, n110, 
        n13_adj_1032, n118, n11_adj_1033, n109_adj_1034, n15168, n108, 
        n14_adj_1035, n107, n106, n105, n7, n119, n60, n2, n104_adj_1036, 
        n103, n99_adj_1037, n11_adj_1038, n14586, n15171, n14_adj_1039, 
        n102, n101, n120, n15463, n13960, n14014, n14486, n13_adj_1040, 
        n4_adj_1041, n1, n14013;
    wire [3:0]comm_index_3__N_429;
    
    wire n100, n72, n75;
    wire [3:0]comm_state_3__N_402;
    
    wire n1523, comm_clear_N_749, ICE_GPMI_0_N_739, n14588, n14590, 
        n14592, n14594, n14596;
    wire [3:0]comm_state_3__N_57;
    
    wire n14598, n14600, n14602, n14604, n14606, n14608, n14610, 
        n14612, n14614, n14616, n14626, n14628, n14630, n14634, 
        n14636, n14638, n14640, n14642, n14644, n14648, n14650, 
        n14654, n14656, n14658, n14662, n14674, n14676, n14678, 
        n14680, n14688, n14690, n14692, n14700, n14718, n14720;
    wire [9:0]data_index_9__N_258;
    wire [15:0]data_idxvec_15__N_268;
    
    wire n14738, n15344, n14742, n13_adj_1042, n14012, n15700, n15696, 
        n13951, n15408, n8;
    wire [2:0]adc_state;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp;   // adc_ads127.vhd(27[8:20])
    
    wire n10033, DTRIG_N_957, n14744, n14746, n14752, n22, n15695, 
        n15546, n10363;
    wire [2:0]adc_state_adj_1285;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1286;   // adc_ads127.vhd(27[8:20])
    
    wire n10047, n14886, n18, DTRIG_N_957_adj_1077, n14754, n14758, 
        n14760, n15468, n14764, n15162, n24, n9123, n22_adj_1078, 
        n15691, n15690, n13980, n14362;
    wire [2:0]adc_state_adj_1308;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1309;   // adc_ads127.vhd(27[8:20])
    
    wire n10061, n69_adj_1113, n14870, DTRIG_N_957_adj_1114, n14768, 
        n14770, n14772, n12702, n11484, n14011, n14646, n14652, 
        n19, n14660, n23, n22_adj_1115, n9823;
    wire [2:0]adc_state_adj_1331;   // adc_ads127.vhd(26[8:17])
    wire [31:0]cmd_rdadctmp_adj_1332;   // adc_ads127.vhd(27[8:20])
    
    wire n15543, n14850, n21, n15542, DTRIG_N_957_adj_1150, n14774, 
        n14780, n14664, n11453, n11448, n11445, n11442, n11440, 
        n11437, n11435, n11432, n11429, n11426, n15153, n11423, 
        n11420, n11417, n11414, n11412, n11409, n19_adj_1151, n14364, 
        n14010, n14_adj_1152;
    wire [2:0]dds_state;   // dds_ad9837.vhd(23[9:18])
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    wire [3:0]bit_cnt_adj_1353;   // dds_ad9837.vhd(25[9:16])
    
    wire n15680, n15679;
    wire [3:0]bit_cnt_3__N_1011;
    wire [2:0]dds_state_2__N_963;
    
    wire n14366, n14368, n66, n15460, n9827, n4308, n4307, n4306, 
        n4305, n4304, n4303, n4302, n4301, n8058, n8047, n8085, 
        n14370, n8050, n8051, n4264, n4263, n4262, n4261, n4260, 
        n4259, n4258, n4257, n4254, n4253, n4252, n4251, n4250, 
        n4249, n4248, n4247, n83, n4234, n4233, n4232, n4231, 
        n4230, n4229, n4228, n4227, n87, n66_adj_1153, n90_adj_1154, 
        n15241, n4221, n4220, n4219, n4218, n4217, n4216, n4215, 
        n4214, n4209, n4208, n4207, n4206, n4205, n4204, n4203, 
        n4202, n4197, n4196, n4195, n4194, n4193, n4192, n4191, 
        n4190, n130, n9853, n109_adj_1155, n14372, n4152, n4151, 
        n4150, n4149, n4148, n4147, n4146, n4145, n130_adj_1156, 
        n15381, n31, n60_adj_1157, n14374, n66_adj_1158, n4108, 
        n4107, n4104, n4103, n4102, n4101, n96, n8055, n4075, 
        n98, n4064, n4063, n4062, n4061, n4060, n4059, n4058, 
        n4057, n96_adj_1159, n14_adj_1160, n69_adj_1161, n72_adj_1162, 
        n15266, n14_adj_1163, n9849, n10, n75_adj_1164, n4814, n87_adj_1165, 
        n66_adj_1166, n90_adj_1167, n15670, n61, n8054, n76, n9845, 
        n15128, n8823, n15668, n14_adj_1168, n15535, n14_adj_1169, 
        n14009, n12622, n12649, n8787, n9045, n15657, n14694, 
        n8763, n9876, n20, n9880, n9884, n9888, n22_adj_1170, 
        n16527, n9892, n14696, n9027, n10532, n9896, n9900, n16524, 
        n16521, n9904, n15651, n6_adj_1171, n10_adj_1172, n9021, 
        n16518, n16515, n28, n27_adj_1173, n24_adj_1174, n16512, 
        n6_adj_1175, n16509, n14698, n16506, n16503, n15447, n15411, 
        n14702, n16500, n16497, n14054, n16494, n6_adj_1176, n16491, 
        n9937, n9941, n8702, n9945, n14053, n14704, n16488, n14052, 
        n16485, n9965, n14216, n9969, n14051, n14706, n7_adj_1177, 
        n8_adj_1178, n8654, n14708, n4_adj_1179, n16482, n26_adj_1180, 
        n25, n15640, n6791, n15637, n14050, n8133, n14049, n16479, 
        n14048, n15635, n10522, n14710, n15245, n8129, n6_adj_1181, 
        n6_adj_1182, n10604, n6_adj_1183, n4_adj_1184, n6_adj_1185, 
        n8530, n9011, n14712, n14047, n15451, n6_adj_1186, n14714, 
        n6_adj_1187, n10029, n15448, n6_adj_1188, n15633, n15632, 
        n14716, n8997, n8576, n14722, n13457, n14_adj_1189, n16476, 
        n10599, n7_adj_1190, n8561, n16473, n18_adj_1191, n14354, 
        n16470, n16467, n26_adj_1192, n13458, n14724, n8525, n16464, 
        n16461, n14726, n15290, n8_adj_1193, n16458, n16455, n15221, 
        n9790, n14728, n8117, n15161, n10128, n15, n14730, n14046, 
        n23_adj_1194, n13979, n14045, n14732, n4_adj_1195, n14_adj_1196, 
        n16452, n16449, n14044, n14043, n14_adj_1197, n10148, n15527, 
        n14734, n14042, n13470, n15479, n14_adj_1198, n13978, n8048, 
        n23_adj_1199, n2_adj_1200, n8_adj_1201, n41, n16446, n8459, 
        n14736, n14041, n7567, n12846, n6301, n14_adj_1202, n15204, 
        n13475, n15526, n8253, n14740, n10590, n15_adj_1203, n16443, 
        n13959, n14748, n14672, n14040, n14750, n21_adj_1204, n16440, 
        n15190, n16437, n14756, n14038, n14762, n14037, n16434, 
        n14766, n10618, n14_adj_1205, n15475, n14776, n16431, n14_adj_1206, 
        n14782, n9694, n14_adj_1207, n17, n16428, n16425, n14036, 
        n14_adj_1208, n14_adj_1209, n14_adj_1210, n15156, n15150, 
        n8943, n16422, n16419, n14784, n14_adj_1211, n8_adj_1212, 
        n14786, n13977, n13976, n14_adj_1213, n14035, n17_adj_1214, 
        n14034, n14_adj_1215, n24_adj_1216, n13975, n16416, n18_adj_1217, 
        n14788, n13974, n16413, n13973, n14033, n7_adj_1218, n8_adj_1219, 
        n7_adj_1220, n8_adj_1221, n14032, n13972, n7_adj_1222, n8_adj_1223, 
        n14790, n16410, n7_adj_1224, n8_adj_1225, n15187, n16407, 
        n10583, n7_adj_1226, n8_adj_1227, n7_adj_1228, n8_adj_1229, 
        n15523, n14792, n7_adj_1230, n8_adj_1231, n16404, n14794, 
        n7_adj_1232, n8_adj_1233, n15522, n16401, n19_adj_1234, n8062, 
        n14796, n5_adj_1235, n14087, n16398, n16395, n10394, n14798, 
        n10576, n15835, n15834, n15399, n6_adj_1236, n6_adj_1237, 
        n14800, n16392, n15450, n7_adj_1238, n15423, n16389, n6_adj_1239, 
        n15390, n15402, n15387, n16386, n16383, n7_adj_1240, n15812, 
        n15593, n10124, n6_adj_1241, n16380, n13971, n10_adj_1242, 
        n10120, n6_adj_1243, n13970, n15811, n6_adj_1244, n13958, 
        n10112, n6_adj_1245, n13493, n6_adj_1246, n3, n14802, n15309, 
        n10104, n6_adj_1247, n13969, n14031, n15424, n15802, n14246, 
        n6_adj_1248, n14030, n13497, n14804, n10_adj_1249, n15589, 
        n10081, n14308, n15328, n10065, n14806, n13968, n13967, 
        n14029, n14028, n8250, n14808, n4_adj_1250, n14810, n15587, 
        n14812, n6_adj_1251, n15119, n15188, n10025, n15584, n14624, 
        n10021, n6_adj_1252, n20_adj_1253, n8332, n6_adj_1254, n15412, 
        n7_adj_1255, n14814, n10017, n6_adj_1256, n15396, n13_adj_1257, 
        n7485, n14027, n6_adj_1258, n10653, n15410, n15131, n10013, 
        n6_adj_1259, n8907, n14686, n13966, n10009, n6_adj_1260, 
        n14816, n10005, n6_adj_1261, n15581, n10001, n6_adj_1262, 
        n14026, n9997, n6_adj_1263, n4_adj_1264, n15578, n9993, 
        n6_adj_1265, n15576, n14852, n9989, n6_adj_1266, n9985, 
        n6_adj_1267, n9981, n6_adj_1268, n9977, n6_adj_1269, n6_adj_1270, 
        n15573, n15403, n14025, n10905, n14854, n10904, n6_adj_1271, 
        n10903, n10902, n15400, n10901, n6_adj_1272, n15397, n10900, 
        n10899, n10898, n6_adj_1273, n10897, n10896, n10895, n10894, 
        n15108, n10893, n10823, n8519, n10892, n9961, n6_adj_1274, 
        n14574, n15391, n9957, n6_adj_1275, n15388, n14856, n9953, 
        n9949, n15510, n9933, n9929, n10891, n10890, n10889, n10888, 
        n10887, n14858, n8456, n15144, n10886, n10885, n15382, 
        n10884, n10883, n10882, n10646, n10881, n10880, n10879, 
        n14860, n10878, n10877, n14114, n10876, n10875, n10874, 
        n10873, n15478, n14862, n10872, n10483, n14864, n10639, 
        n15567, n8094, n14866, n32, n8089, n10640, n8043, n8544, 
        n15565, n8302, n9872, n30, n13957, n13943, n8272, n18_adj_1276, 
        n8618, n17_adj_1277, n10871, n13956, n10870, n15191, n10869, 
        n13955, n10868, n10867, n13954, n14872, n14520, n10632, 
        n13944, n14518, n14516, n14874, n14514, n8738, n14512, 
        n13942, n14510, n14508, n14876, n13949, n10854, n13947, 
        n10853, n10852, n13948, n10851, n13965, n8045, n10850, 
        n14878, n10849, n10848, n13946, n10847, n10846, n10611, 
        n10845, n10844, n13953, n13964, n10843, n13945, n10842, 
        n30_adj_1278, n14882, n14024, n5022, n5014, n11_adj_1279, 
        n5006, n14023, n15557, n13963, n14022, n14021, n4994, 
        n15556, n15555, n10566, n10660, n10625, n14020, n4_adj_1280, 
        n14019, n13962, n6_adj_1281, n15176, n14018, n5_adj_1282, 
        n13952, n15198, n16190, n13961;
    
    assign M_CLK1 = EIS_SYNCCLK;   // zimaux_main.vhd(18[3:14])
    assign DISP_COMM = ICE_GPMO_2;   // zimaux_main.vhd(33[3:13])
    assign M_MOSI1 = M_MOSI4;   // zimaux_main.vhd(48[3:10])
    assign M_CLK2 = M_CLK1;   // zimaux_main.vhd(52[3:9])
    assign M_MOSI2 = M_MOSI4;   // zimaux_main.vhd(55[3:10])
    assign M_CLK3 = M_CLK1;   // zimaux_main.vhd(59[3:9])
    assign M_MOSI3 = M_MOSI4;   // zimaux_main.vhd(62[3:10])
    assign M_CLK4 = M_CLK1;   // zimaux_main.vhd(66[3:9])
    VCC i2 (.Y(VCC_net));
    zim_pll pll_main (.GND_net(M_MOSI4), .ICE_SYSCLK(ICE_SYSCLK), .VCC_net(VCC_net), 
            .clk_32MHz(clk_32MHz), .clk_16MHz(clk_16MHz));   // zimaux_main.vhd(712[13:20])
    SB_LUT4 i12816_2_lut (.I0(acadc_skipCount[12]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15632));
    defparam i12816_2_lut.LUT_INIT = 16'h8888;
    SB_DFFE comm_clear_330 (.Q(comm_clear), .C(clk_32MHz), .E(n8117), 
            .D(comm_clear_N_749));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12190_3_lut (.I0(\comm_buf[6] [4]), .I1(\comm_buf[7] [4]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15400));
    defparam i12190_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12189_3_lut (.I0(\comm_buf[4] [4]), .I1(\comm_buf[5] [4]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15399));
    defparam i12189_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12628_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n15526));
    defparam i12628_3_lut.LUT_INIT = 16'h1010;
    SB_DFFE comm_response_331 (.Q(ICE_GPMI_0), .C(clk_32MHz), .E(n8129), 
            .D(ICE_GPMI_0_N_739));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7741_3_lut (.I0(tacadc_rst), .I1(\comm_buf[0] [2]), .I2(n7485), 
            .I3(M_MOSI4), .O(n10852));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7741_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7742_3_lut (.I0(eis_stop), .I1(\comm_buf[0] [1]), .I2(n7485), 
            .I3(M_MOSI4), .O(n10853));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7742_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n8062));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_index_0__bdd_4_lut_13210 (.I0(comm_index[0]), .I1(\comm_buf[10] [1]), 
            .I2(\comm_buf[11] [1]), .I3(comm_index[1]), .O(n16422));
    defparam comm_index_0__bdd_4_lut_13210.LUT_INIT = 16'he4aa;
    SB_LUT4 i7743_3_lut (.I0(eis_start), .I1(\comm_buf[0] [0]), .I2(n7485), 
            .I3(M_MOSI4), .O(n10854));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7743_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(adc_state[1]), .I1(acadc_dtrig1), .I2(DTRIG_N_957), 
            .I3(adc_state[0]), .O(n14506));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut.LUT_INIT = 16'hcce8;
    SB_LUT4 i13037_4_lut (.I0(comm_state[3]), .I1(n15526), .I2(n15527), 
            .I3(comm_state[0]), .O(n14_adj_1189));
    defparam i13037_4_lut.LUT_INIT = 16'hafbb;
    SB_LUT4 i1_4_lut_adj_16 (.I0(adc_state_adj_1285[1]), .I1(acadc_dtrig2), 
            .I2(DTRIG_N_957_adj_1077), .I3(adc_state_adj_1285[0]), .O(n14510));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_16.LUT_INIT = 16'hcce8;
    SB_DFFE comm_state_i0 (.Q(comm_state[0]), .C(clk_32MHz), .E(n15130), 
            .D(comm_state_3__N_57[0]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i0 (.Q(data_index[0]), .C(clk_32MHz), .D(data_index_9__N_258[0]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_adj_17 (.I0(DTRIG_N_957_adj_1077), .I1(adc_state_adj_1285[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15150));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_17.LUT_INIT = 16'h2222;
    SB_DFFE data_idxvec_i0 (.Q(data_idxvec[0]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[0]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_1443_5_lut (.I0(data_index[3]), .I1(data_index[3]), .I2(n7567), 
            .I3(n14033), .O(n7_adj_1228)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1443_5 (.CI(n14033), .I0(data_index[3]), .I1(n7567), 
            .CO(n14034));
    SPI_SLAVE comm_spi (.comm_data_vld(comm_data_vld), .clk_32MHz(clk_32MHz), 
            .comm_clear(comm_clear), .comm_tx_buf({comm_tx_buf}), .GND_net(M_MOSI4), 
            .ICE_SPI_MOSI(ICE_SPI_MOSI), .comm_rx_buf({comm_rx_buf}), .ICE_SPI_SCLK(ICE_SPI_SCLK), 
            .VCC_net(VCC_net), .ICE_SPI_MISO(ICE_SPI_MISO));   // zimaux_main.vhd(722[13:22])
    SB_LUT4 i12776_2_lut_3_lut (.I0(eis_state[1]), .I1(eis_start), .I2(n31), 
            .I3(M_MOSI4), .O(n15700));   // zimaux_main.vhd(386[4] 459[13])
    defparam i12776_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 comm_state_3__I_0_378_Mux_1_i15_4_lut (.I0(n16467), .I1(n8_adj_1201), 
            .I2(comm_state[3]), .I3(n6791), .O(comm_state_3__N_57[1]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_378_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut (.I0(cmd_rdadctmp_adj_1286[9]), .I1(cmd_rdadctmp_adj_1286[8]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14806));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_18 (.I0(adc_state_adj_1308[1]), .I1(acadc_dtrig3), 
            .I2(DTRIG_N_957_adj_1114), .I3(adc_state_adj_1308[0]), .O(n14514));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_18.LUT_INIT = 16'hcce8;
    SB_LUT4 i12842_2_lut (.I0(comm_state_3__N_418[1]), .I1(comm_state[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15668));
    defparam i12842_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_19 (.I0(adc_state_adj_1331[1]), .I1(acadc_dtrig4), 
            .I2(DTRIG_N_957_adj_1150), .I3(adc_state_adj_1331[0]), .O(n14518));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_19.LUT_INIT = 16'hcce8;
    SB_LUT4 i12_4_lut_adj_20 (.I0(cmd_rdadctmp_adj_1286[10]), .I1(cmd_rdadctmp_adj_1286[9]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14808));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_20.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_21 (.I0(cmd_rdadctmp_adj_1309[21]), .I1(cmd_rdadctmp_adj_1309[20]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14616));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_21.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_22 (.I0(cmd_rdadctmp_adj_1309[20]), .I1(cmd_rdadctmp_adj_1309[19]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14614));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_22.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_23 (.I0(cmd_rdadctmp_adj_1309[19]), .I1(cmd_rdadctmp_adj_1309[18]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14612));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_23.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_24 (.I0(cmd_rdadctmp_adj_1286[8]), .I1(cmd_rdadctmp_adj_1286[7]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14804));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_24.LUT_INIT = 16'hca0a;
    SB_LUT4 n16422_bdd_4_lut (.I0(n16422), .I1(\comm_buf[9] [1]), .I2(\comm_buf[8] [1]), 
            .I3(comm_index[1]), .O(n16425));
    defparam n16422_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i7757_3_lut (.I0(DDS_MOSI1), .I1(tmp_buf[15]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n10868));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i7757_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_25 (.I0(cmd_rdadctmp_adj_1309[18]), .I1(cmd_rdadctmp_adj_1309[17]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14610));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_25.LUT_INIT = 16'hca0a;
    SB_CARRY add_58_13 (.CI(n13976), .I0(acadc_skipcnt[11]), .I1(M_MOSI4), 
            .CO(n13977));
    SB_LUT4 i13040_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(n26_adj_1192), .I3(M_MOSI4), .O(n18_adj_1191));
    defparam i13040_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 add_58_12_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[10]), .I2(M_MOSI4), 
            .I3(n13975), .O(n433)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_26 (.I0(cmd_rdadctmp_adj_1309[17]), .I1(cmd_rdadctmp_adj_1309[16]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14608));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_26.LUT_INIT = 16'hca0a;
    SB_CARRY add_58_12 (.CI(n13975), .I0(acadc_skipcnt[10]), .I1(M_MOSI4), 
            .CO(n13976));
    SB_LUT4 i12177_3_lut (.I0(\comm_buf[0] [2]), .I1(\comm_buf[1] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15387));
    defparam i12177_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_27 (.I0(cmd_rdadctmp_adj_1286[7]), .I1(cmd_rdadctmp_adj_1286[6]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14802));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_27.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_13205 (.I0(comm_index[0]), .I1(\comm_buf[2] [5]), 
            .I2(\comm_buf[3] [5]), .I3(comm_index[1]), .O(n16416));
    defparam comm_index_0__bdd_4_lut_13205.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_28 (.I0(n13_adj_1026), .I1(comm_state[3]), .I2(n6791), 
            .I3(comm_state[0]), .O(n9224));
    defparam i1_4_lut_adj_28.LUT_INIT = 16'hc0c4;
    SB_CARRY add_54_12 (.CI(n13960), .I0(data_cntvec[10]), .I1(M_MOSI4), 
            .CO(n13961));
    SB_LUT4 i3193_3_lut (.I0(\comm_buf[1] [3]), .I1(data_index[3]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1229));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3193_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9595_2_lut_3_lut (.I0(comm_state[0]), .I1(comm_state[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(comm_clear_N_749));
    defparam i9595_2_lut_3_lut.LUT_INIT = 16'h2f2f;
    SB_LUT4 i12178_3_lut (.I0(\comm_buf[2] [2]), .I1(\comm_buf[3] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15388));
    defparam i12178_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1443_4_lut (.I0(data_index[2]), .I1(data_index[2]), .I2(n7567), 
            .I3(n14032), .O(n7_adj_1230)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_4_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i12_4_lut_adj_29 (.I0(cmd_rdadctmp_adj_1286[6]), .I1(cmd_rdadctmp_adj_1286[5]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14800));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_29.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_30 (.I0(cmd_rdadctmp_adj_1309[16]), .I1(cmd_rdadctmp_adj_1309[15]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14606));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_30.LUT_INIT = 16'hca0a;
    SB_LUT4 n16416_bdd_4_lut (.I0(n16416), .I1(\comm_buf[1] [5]), .I2(\comm_buf[0] [5]), 
            .I3(comm_index[1]), .O(n16419));
    defparam n16416_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 comm_state_3__I_0_394_Mux_3_i15_4_lut (.I0(n7_adj_1228), .I1(n8_adj_1229), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[3]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_index_0__bdd_4_lut_13200 (.I0(comm_index[0]), .I1(\comm_buf[2] [6]), 
            .I2(\comm_buf[3] [6]), .I3(comm_index[1]), .O(n16410));
    defparam comm_index_0__bdd_4_lut_13200.LUT_INIT = 16'he4aa;
    SB_LUT4 i13029_2_lut (.I0(n8456), .I1(eis_end_N_770), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10532));
    defparam i13029_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_31 (.I0(cmd_rdadctmp_adj_1286[5]), .I1(cmd_rdadctmp_adj_1286[4]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14798));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_31.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_32 (.I0(DTRIG_N_957_adj_1114), .I1(adc_state_adj_1308[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15147));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_32.LUT_INIT = 16'h2222;
    SB_LUT4 i12238_3_lut (.I0(\comm_buf[6] [2]), .I1(\comm_buf[7] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15448));
    defparam i12238_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12237_3_lut (.I0(\comm_buf[4] [2]), .I1(\comm_buf[5] [2]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15447));
    defparam i12237_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_33 (.I0(cmd_rdadctmp_adj_1309[11]), .I1(cmd_rdadctmp_adj_1309[10]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14596));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_33.LUT_INIT = 16'hca0a;
    SB_LUT4 i3201_3_lut (.I0(\comm_buf[1] [2]), .I1(data_index[2]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1231));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3201_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_394_Mux_2_i15_4_lut (.I0(n7_adj_1230), .I1(n8_adj_1231), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[2]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 ICE_GPMO_0_I_0_1_lut (.I0(ICE_GPMO_0), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(M_START));   // zimaux_main.vhd(359[15:28])
    defparam ICE_GPMO_0_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i2358_3_lut (.I0(\comm_buf[1] [0]), .I1(data_index[0]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1178));   // zimaux_main.vhd(467[4] 708[13])
    defparam i2358_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_34 (.I0(cmd_rdadctmp_adj_1286[4]), .I1(cmd_rdadctmp_adj_1286[3]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14796));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_34.LUT_INIT = 16'hca0a;
    SB_LUT4 i2356_3_lut (.I0(data_index_9__N_647[0]), .I1(data_index[0]), 
            .I2(n7567), .I3(M_MOSI4), .O(n7_adj_1177));   // zimaux_main.vhd(467[4] 708[13])
    defparam i2356_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3209_3_lut (.I0(\comm_buf[1] [1]), .I1(data_index[1]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1233));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3209_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_394_Mux_0_i15_4_lut (.I0(n7_adj_1177), .I1(n8_adj_1178), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[0]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_0_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 comm_state_3__I_0_394_Mux_1_i15_4_lut (.I0(n7_adj_1232), .I1(n8_adj_1233), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[1]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_CARRY add_1443_4 (.CI(n14032), .I0(data_index[2]), .I1(n7567), 
            .CO(n14033));
    SB_LUT4 add_1443_3_lut (.I0(data_index[1]), .I1(data_index[1]), .I2(n7567), 
            .I3(n14031), .O(n7_adj_1232)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_3_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1443_3 (.CI(n14031), .I0(data_index[1]), .I1(n7567), 
            .CO(n14032));
    SB_LUT4 i12_4_lut_adj_35 (.I0(cmd_rdadctmp_adj_1286[3]), .I1(cmd_rdadctmp_adj_1286[2]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14794));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_35.LUT_INIT = 16'hca0a;
    SB_LUT4 add_58_11_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[9]), .I2(M_MOSI4), 
            .I3(n13974), .O(n434)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 n16410_bdd_4_lut (.I0(n16410), .I1(\comm_buf[1] [6]), .I2(\comm_buf[0] [6]), 
            .I3(comm_index[1]), .O(n16413));
    defparam n16410_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_36 (.I0(cmd_rdadctmp_adj_1309[9]), .I1(cmd_rdadctmp_adj_1309[8]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14592));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_36.LUT_INIT = 16'hca0a;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged0 (.RDATA({buf_data2[95:88]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged11 (.RDATA({buf_data2[7:0]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_LUT4 i12_4_lut_adj_37 (.I0(cmd_rdadctmp_adj_1309[8]), .I1(cmd_rdadctmp_adj_1309[7]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14590));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_37.LUT_INIT = 16'hca0a;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged9 (.RDATA({buf_data2[23:16]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_LUT4 add_1443_2_lut (.I0(M_MOSI4), .I1(data_index[0]), .I2(n729), 
            .I3(M_MOSI4), .O(data_index_9__N_647[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_2_lut.LUT_INIT = 16'hC33C;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged6 (.RDATA({buf_data2[47:40]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_LUT4 add_54_11_lut (.I0(M_MOSI4), .I1(data_cntvec[9]), .I2(M_MOSI4), 
            .I3(n13959), .O(n384)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_11_lut.LUT_INIT = 16'hC33C;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged5 (.RDATA({buf_data2[55:48]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_LUT4 i12_4_lut_adj_38 (.I0(cmd_rdadctmp_adj_1309[7]), .I1(cmd_rdadctmp_adj_1309[6]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14588));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_38.LUT_INIT = 16'hca0a;
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged4 (.RDATA({buf_data2[63:56]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged3 (.RDATA({buf_data2[71:64]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_RAM512x8NW raw_buf1_raw_buf4_merged_raw_buf3_merged_raw_buf2_merged2 (.RDATA({buf_data2[79:72]}), 
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
            .RCLK(clk_32MHz), .RCLKE(VCC_net), .RE(VCC_net), .RADDR({data_index_9__N_258[8:0]}), 
            .WCLKN(clk_32MHz), .WCLKE(VCC_net), .WE(raw_buf1_N_775), .WADDR({data_count[8:0]}), 
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
    SB_DFFNER eis_state_i2 (.Q(eis_end_N_770), .C(clk_32MHz), .E(n8459), 
            .D(eis_state_2__N_213[2]), .R(ICE_GPMO_0));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i1_4_lut_adj_39 (.I0(n13_adj_1040), .I1(n15190), .I2(n15309), 
            .I3(n4), .O(comm_state_3__N_418[1]));
    defparam i1_4_lut_adj_39.LUT_INIT = 16'h8000;
    SB_LUT4 i12_4_lut_adj_40 (.I0(cmd_rdadctmp_adj_1286[31]), .I1(cmd_rdadctmp_adj_1286[30]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14574));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_40.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_13195 (.I0(comm_index[0]), .I1(\comm_buf[2] [1]), 
            .I2(\comm_buf[3] [1]), .I3(comm_index[1]), .O(n16404));
    defparam comm_index_0__bdd_4_lut_13195.LUT_INIT = 16'he4aa;
    SB_LUT4 i12186_3_lut (.I0(\comm_buf[0] [3]), .I1(\comm_buf[1] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15396));
    defparam i12186_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7283_2_lut (.I0(ICE_SPI_CE0), .I1(comm_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10394));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7283_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i12187_3_lut (.I0(\comm_buf[2] [3]), .I1(\comm_buf[3] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15397));
    defparam i12187_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12214_3_lut (.I0(\comm_buf[6] [3]), .I1(\comm_buf[7] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15424));
    defparam i12214_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNER eis_state_i1 (.Q(eis_state[1]), .C(clk_32MHz), .E(n8459), 
            .D(eis_state_2__N_213[1]), .R(ICE_GPMO_0));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i13_2_lut (.I0(bit_cnt_adj_1353[1]), .I1(bit_cnt_adj_1353[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(bit_cnt_3__N_1011[1]));   // dds_ad9837.vhd(25[9:16])
    defparam i13_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_4_lut_adj_41 (.I0(comm_data_vld), .I1(comm_state[2]), .I2(ICE_SPI_CE0), 
            .I3(comm_state[1]), .O(n26_adj_1192));
    defparam i1_4_lut_adj_41.LUT_INIT = 16'h2338;
    SB_LUT4 i12_4_lut_adj_42 (.I0(cmd_rdadctmp_adj_1309[3]), .I1(cmd_rdadctmp_adj_1309[2]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14580));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_42.LUT_INIT = 16'hca0a;
    SB_CARRY add_1443_2 (.CI(M_MOSI4), .I0(data_index[0]), .I1(n729), 
            .CO(n14031));
    SB_LUT4 secclk_cnt_1601_1602_add_4_24_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[22]), .I3(n14030), .O(n98)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_24_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_11 (.CI(n13974), .I0(acadc_skipcnt[9]), .I1(M_MOSI4), 
            .CO(n13975));
    SB_LUT4 i12_4_lut_adj_43 (.I0(cmd_rdadctmp_adj_1309[2]), .I1(cmd_rdadctmp_adj_1309[1]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14578));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_43.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_1601_1602_add_4_23_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[21]), .I3(n14029), .O(n99_adj_1037)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_23_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_23 (.CI(n14029), .I0(M_MOSI4), .I1(secclk_cnt[21]), 
            .CO(n14030));
    SB_LUT4 i12213_3_lut (.I0(\comm_buf[4] [3]), .I1(\comm_buf[5] [3]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15423));
    defparam i12213_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_1601_1602_add_4_22_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[20]), .I3(n14028), .O(n100)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_22_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12856_2_lut (.I0(buf_dds[13]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15690));
    defparam i12856_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12670_2_lut (.I0(buf_device_acadc[5]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15691));
    defparam i12670_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12666_2_lut (.I0(req_data_cnt[13]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15523));
    defparam i12666_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_44 (.I0(cmd_rdadctmp_adj_1286[2]), .I1(cmd_rdadctmp_adj_1286[1]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14792));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_44.LUT_INIT = 16'hca0a;
    SB_LUT4 n16404_bdd_4_lut (.I0(n16404), .I1(\comm_buf[1] [1]), .I2(\comm_buf[0] [1]), 
            .I3(comm_index[1]), .O(n16407));
    defparam n16404_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i8932_3_lut (.I0(bit_cnt_adj_1353[2]), .I1(bit_cnt_adj_1353[1]), 
            .I2(bit_cnt_adj_1353[0]), .I3(M_MOSI4), .O(bit_cnt_3__N_1011[2]));   // dds_ad9837.vhd(25[9:16])
    defparam i8932_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i22_4_lut (.I0(comm_data_vld), .I1(n7), .I2(comm_state[2]), 
            .I3(comm_state[0]), .O(n8_adj_1193));   // zimaux_main.vhd(467[4] 708[13])
    defparam i22_4_lut.LUT_INIT = 16'hc0fa;
    SB_LUT4 i12879_4_lut (.I0(comm_state_3__N_418[1]), .I1(comm_state[2]), 
            .I2(ICE_SPI_CE0), .I3(comm_state[0]), .O(n15711));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12879_4_lut.LUT_INIT = 16'h0c44;
    SB_LUT4 i12726_2_lut (.I0(acadc_skipCount[13]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15522));
    defparam i12726_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i9626_4_lut (.I0(bit_cnt_adj_1353[3]), .I1(bit_cnt_adj_1353[2]), 
            .I2(bit_cnt_adj_1353[1]), .I3(bit_cnt_adj_1353[0]), .O(bit_cnt_3__N_1011[3]));
    defparam i9626_4_lut.LUT_INIT = 16'h6aaa;
    SB_LUT4 i21_4_lut (.I0(n15711), .I1(n8_adj_1193), .I2(comm_state[1]), 
            .I3(ICE_SPI_CE0), .O(n14216));   // zimaux_main.vhd(467[4] 708[13])
    defparam i21_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_45 (.I0(cmd_rdadctmp_adj_1309[6]), .I1(cmd_rdadctmp_adj_1309[5]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14586));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_45.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_13215 (.I0(comm_cmd[1]), .I1(n15522), 
            .I2(n15523), .I3(comm_cmd[3]), .O(n16398));
    defparam comm_cmd_1__bdd_4_lut_13215.LUT_INIT = 16'he4aa;
    SB_LUT4 n16398_bdd_4_lut (.I0(n16398), .I1(n15691), .I2(n15690), .I3(comm_cmd[3]), 
            .O(n16401));
    defparam n16398_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12_4_lut_adj_46 (.I0(cmd_rdadctmp_adj_1309[5]), .I1(cmd_rdadctmp_adj_1309[4]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14584));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_46.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_47 (.I0(cmd_rdadctmp_adj_1309[4]), .I1(cmd_rdadctmp_adj_1309[3]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14582));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_47.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_48 (.I0(cmd_rdadctmp_adj_1286[1]), .I1(cmd_rdadctmp_adj_1286[0]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14790));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_48.LUT_INIT = 16'hca0a;
    SB_LUT4 i1709_2_lut (.I0(comm_index[2]), .I1(n4814), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(comm_index_3__N_429[2]));   // zimaux_main.vhd(628[5] 638[12])
    defparam i1709_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut_adj_49 (.I0(eis_state[0]), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n3));   // zimaux_main.vhd(383[3] 460[10])
    defparam i1_2_lut_adj_49.LUT_INIT = 16'h8888;
    SB_LUT4 comm_index_1__bdd_4_lut_13225 (.I0(comm_index[1]), .I1(n15423), 
            .I2(n15424), .I3(comm_index[2]), .O(n16392));
    defparam comm_index_1__bdd_4_lut_13225.LUT_INIT = 16'he4aa;
    SB_LUT4 n16392_bdd_4_lut (.I0(n16392), .I1(n15397), .I2(n15396), .I3(comm_index[2]), 
            .O(n16395));
    defparam n16392_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 eis_state_2__I_0_405_Mux_1_i7_4_lut (.I0(n15700), .I1(n3), .I2(eis_end_N_770), 
            .I3(eis_state[0]), .O(eis_state_2__N_213[1]));   // zimaux_main.vhd(386[4] 459[13])
    defparam eis_state_2__I_0_405_Mux_1_i7_4_lut.LUT_INIT = 16'h3f3a;
    SB_LUT4 i1_2_lut_adj_50 (.I0(adc_state_adj_1308[1]), .I1(DTRIG_N_957_adj_1114), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15162));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_50.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_51 (.I0(cmd_rdadctmp[31]), .I1(cmd_rdadctmp[30]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14788));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_51.LUT_INIT = 16'hca0a;
    SB_LUT4 i1716_3_lut (.I0(comm_index[3]), .I1(comm_index[2]), .I2(n4814), 
            .I3(M_MOSI4), .O(comm_index_3__N_429[3]));   // zimaux_main.vhd(628[5] 638[12])
    defparam i1716_3_lut.LUT_INIT = 16'h6a6a;
    SB_LUT4 i12_4_lut_adj_52 (.I0(cmd_rdadctmp_adj_1309[10]), .I1(cmd_rdadctmp_adj_1309[9]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14594));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_52.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_53 (.I0(comm_cmd[3]), .I1(n8043), .I2(n93), .I3(comm_cmd[2]), 
            .O(n27));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_53.LUT_INIT = 16'h8cc8;
    SB_LUT4 add_58_10_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[8]), .I2(M_MOSI4), 
            .I3(n13973), .O(n435)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_54 (.I0(n12622), .I1(n13), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(n6_adj_1273));
    defparam i1_2_lut_adj_54.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_55 (.I0(comm_length[1]), .I1(n12), .I2(n27), 
            .I3(n12702), .O(n15119));
    defparam i1_4_lut_adj_55.LUT_INIT = 16'hf5c4;
    SB_CARRY secclk_cnt_1601_1602_add_4_22 (.CI(n14028), .I0(M_MOSI4), .I1(secclk_cnt[20]), 
            .CO(n14029));
    SB_LUT4 i7374_2_lut (.I0(n9790), .I1(eis_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10483));   // zimaux_main.vhd(383[3] 460[10])
    defparam i7374_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i13020_4_lut (.I0(n13_adj_1032), .I1(n15188), .I2(n15119), 
            .I3(n6_adj_1273), .O(comm_length_3__N_433[1]));   // zimaux_main.vhd(517[5] 604[14])
    defparam i13020_4_lut.LUT_INIT = 16'h7fff;
    SB_LUT4 i12_4_lut_adj_56 (.I0(cmd_rdadctmp_adj_1309[1]), .I1(cmd_rdadctmp_adj_1309[0]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14576));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_56.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_57 (.I0(cmd_rdadctmp[30]), .I1(cmd_rdadctmp[29]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14786));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_57.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_58 (.I0(adc_state_adj_1285[1]), .I1(DTRIG_N_957_adj_1077), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15165));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_58.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_59 (.I0(cmd_rdadctmp[29]), .I1(cmd_rdadctmp[28]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14784));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_59.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_60 (.I0(comm_length[2]), .I1(n22_adj_1115), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n23));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_2_lut_adj_60.LUT_INIT = 16'h8888;
    SB_LUT4 equal_46_i14_2_lut (.I0(acadc_skipCount[13]), .I1(acadc_skipcnt[13]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n14_adj_1160));   // zimaux_main.vhd(409[10:41])
    defparam equal_46_i14_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i12_4_lut_adj_61 (.I0(cmd_rdadctmp_adj_1309[12]), .I1(cmd_rdadctmp_adj_1309[11]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14598));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_61.LUT_INIT = 16'hca0a;
    SB_LUT4 i39_4_lut (.I0(n12649), .I1(n15463), .I2(comm_cmd[2]), .I3(comm_length[2]), 
            .O(n19_adj_1151));   // zimaux_main.vhd(517[5] 604[14])
    defparam i39_4_lut.LUT_INIT = 16'hc5c0;
    SB_LUT4 i2_4_lut (.I0(comm_cmd[0]), .I1(n12622), .I2(n19_adj_1151), 
            .I3(n23), .O(comm_length_3__N_433[2]));   // zimaux_main.vhd(517[5] 604[14])
    defparam i2_4_lut.LUT_INIT = 16'hff73;
    SB_LUT4 secclk_cnt_1601_1602_add_4_21_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[19]), .I3(n14027), .O(n101)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_21_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_54_11 (.CI(n13959), .I0(data_cntvec[9]), .I1(M_MOSI4), 
            .CO(n13960));
    SB_LUT4 i4_4_lut (.I0(acadc_skipCount[3]), .I1(acadc_skipCount[5]), 
            .I2(acadc_skipcnt[3]), .I3(acadc_skipcnt[5]), .O(n20));   // zimaux_main.vhd(409[10:41])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_62 (.I0(cmd_rdadctmp[28]), .I1(cmd_rdadctmp[27]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14782));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_62.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut (.I0(acadc_skipCount[9]), .I1(acadc_skipCount[15]), 
            .I2(acadc_skipcnt[9]), .I3(acadc_skipcnt[15]), .O(n24_adj_1174));   // zimaux_main.vhd(409[10:41])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i9554_2_lut (.I0(comm_cmd[3]), .I1(comm_cmd[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n12649));
    defparam i9554_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_3_lut (.I0(n15245), .I1(n8530), .I2(n15198), .I3(M_MOSI4), 
            .O(n15266));
    defparam i1_3_lut.LUT_INIT = 16'heaea;
    SB_LUT4 i1_4_lut_adj_63 (.I0(comm_cmd[3]), .I1(n8085), .I2(comm_cmd[2]), 
            .I3(comm_cmd[0]), .O(n22_adj_1115));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_63.LUT_INIT = 16'hdccc;
    SB_LUT4 i1_2_lut_3_lut_3_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n15131));
    defparam i1_2_lut_3_lut_3_lut_3_lut.LUT_INIT = 16'hecec;
    SB_CARRY add_58_10 (.CI(n13973), .I0(acadc_skipcnt[8]), .I1(M_MOSI4), 
            .CO(n13974));
    SB_LUT4 i6_4_lut (.I0(acadc_skipCount[2]), .I1(acadc_skipCount[7]), 
            .I2(acadc_skipcnt[2]), .I3(acadc_skipcnt[7]), .O(n22_adj_1170));   // zimaux_main.vhd(409[10:41])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i7_4_lut (.I0(acadc_skipCount[11]), .I1(acadc_skipCount[14]), 
            .I2(acadc_skipcnt[11]), .I3(acadc_skipcnt[14]), .O(n23_adj_1199));   // zimaux_main.vhd(409[10:41])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i39_4_lut_adj_64 (.I0(n12649), .I1(n15460), .I2(comm_cmd[2]), 
            .I3(comm_length[3]), .O(n19));   // zimaux_main.vhd(517[5] 604[14])
    defparam i39_4_lut_adj_64.LUT_INIT = 16'hc5c0;
    SB_CARRY secclk_cnt_1601_1602_add_4_21 (.CI(n14027), .I0(M_MOSI4), .I1(secclk_cnt[19]), 
            .CO(n14028));
    SB_LUT4 i1_4_lut_adj_65 (.I0(n15108), .I1(n15241), .I2(n15266), .I3(n4_adj_1179), 
            .O(n15130));
    defparam i1_4_lut_adj_65.LUT_INIT = 16'ha080;
    SB_LUT4 add_58_9_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[7]), .I2(M_MOSI4), 
            .I3(n13972), .O(n436)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_66 (.I0(comm_cmd[0]), .I1(comm_length[3]), .I2(n19), 
            .I3(n22_adj_1115), .O(comm_length_3__N_433[3]));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_66.LUT_INIT = 16'hdc50;
    SB_LUT4 i5_4_lut (.I0(acadc_skipCount[10]), .I1(acadc_skipCount[12]), 
            .I2(acadc_skipcnt[10]), .I3(acadc_skipcnt[12]), .O(n21));   // zimaux_main.vhd(409[10:41])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 secclk_cnt_1601_1602_add_4_20_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[18]), .I3(n14026), .O(n102)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_20_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_67 (.I0(DTRIG_N_957_adj_1150), .I1(adc_state_adj_1331[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15144));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_67.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_68 (.I0(cmd_rdadctmp[27]), .I1(cmd_rdadctmp[26]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14780));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_68.LUT_INIT = 16'hca0a;
    SB_LUT4 i2_4_lut_adj_69 (.I0(acadc_skipCount[1]), .I1(acadc_skipCount[4]), 
            .I2(acadc_skipcnt[1]), .I3(acadc_skipcnt[4]), .O(n18_adj_1276));   // zimaux_main.vhd(409[10:41])
    defparam i2_4_lut_adj_69.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(acadc_skipCount[8]), .I1(n20), .I2(n14_adj_1160), 
            .I3(acadc_skipcnt[8]), .O(n26));   // zimaux_main.vhd(409[10:41])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23_adj_1199), .I2(n22_adj_1170), 
            .I3(n24_adj_1174), .O(n30));   // zimaux_main.vhd(409[10:41])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut_adj_70 (.I0(acadc_skipCount[0]), .I1(acadc_skipCount[6]), 
            .I2(acadc_skipcnt[0]), .I3(acadc_skipcnt[6]), .O(n17_adj_1277));   // zimaux_main.vhd(409[10:41])
    defparam i1_4_lut_adj_70.LUT_INIT = 16'h7bde;
    SB_LUT4 comm_index_1__bdd_4_lut_13182 (.I0(comm_index[1]), .I1(n15447), 
            .I2(n15448), .I3(comm_index[2]), .O(n16386));
    defparam comm_index_1__bdd_4_lut_13182.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_4_lut_adj_71 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(data_idxvec[9]), 
            .I3(eis_stop), .O(n78));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_71.LUT_INIT = 16'heca0;
    SB_LUT4 i15_4_lut (.I0(n17_adj_1277), .I1(n30), .I2(n26), .I3(n18_adj_1276), 
            .O(n31));   // zimaux_main.vhd(409[10:41])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_72 (.I0(cmd_rdadctmp_adj_1332[31]), .I1(cmd_rdadctmp_adj_1332[30]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14776));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_72.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_1601_1602_add_4_20 (.CI(n14026), .I0(M_MOSI4), .I1(secclk_cnt[18]), 
            .CO(n14027));
    SB_LUT4 i12_4_lut_adj_73 (.I0(cmd_rdadctmp[26]), .I1(cmd_rdadctmp[25]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14774));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_73.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_74 (.I0(cmd_rdadctmp_adj_1332[30]), .I1(cmd_rdadctmp_adj_1332[29]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14772));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_74.LUT_INIT = 16'hca0a;
    SB_LUT4 i8_4_lut_adj_75 (.I0(data_cntvec[9]), .I1(data_cntvec[15]), 
            .I2(req_data_cnt[9]), .I3(req_data_cnt[15]), .O(n24_adj_1216));   // zimaux_main.vhd(443[9:35])
    defparam i8_4_lut_adj_75.LUT_INIT = 16'h7bde;
    SB_LUT4 i130_3_lut (.I0(buf_adcdata3[17]), .I1(data_cntvec[9]), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n90_adj_1023));   // zimaux_main.vhd(517[5] 604[14])
    defparam i130_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_76 (.I0(cmd_rdadctmp_adj_1332[29]), .I1(cmd_rdadctmp_adj_1332[28]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14770));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_76.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_1601_1602_add_4_19_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[17]), .I3(n14025), .O(n103)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_19_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_19 (.CI(n14025), .I0(M_MOSI4), .I1(secclk_cnt[17]), 
            .CO(n14026));
    SB_LUT4 i1_4_lut_adj_77 (.I0(comm_cmd[0]), .I1(n78), .I2(n4_adj_1041), 
            .I3(buf_data2[71]), .O(n99_adj_1024));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_77.LUT_INIT = 16'hf8a8;
    SB_CARRY add_58_9 (.CI(n13972), .I0(acadc_skipcnt[7]), .I1(M_MOSI4), 
            .CO(n13973));
    SB_LUT4 add_58_8_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[6]), .I2(M_MOSI4), 
            .I3(n13971), .O(n437)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_1601_1602_add_4_18_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[16]), .I3(n14024), .O(n104_adj_1036)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_18_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_18 (.CI(n14024), .I0(M_MOSI4), .I1(secclk_cnt[16]), 
            .CO(n14025));
    SB_LUT4 i1_4_lut_adj_78 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(n16527), 
            .I3(n99_adj_1024), .O(n4_adj_1264));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_78.LUT_INIT = 16'hdc50;
    SB_LUT4 i12_4_lut_adj_79 (.I0(cmd_rdadctmp_adj_1332[28]), .I1(cmd_rdadctmp_adj_1332[27]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14768));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_79.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_80 (.I0(cmd_rdadctmp_adj_1309[15]), .I1(cmd_rdadctmp_adj_1309[14]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14604));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_80.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_81 (.I0(cmd_rdadctmp_adj_1309[14]), .I1(cmd_rdadctmp_adj_1309[13]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14602));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_81.LUT_INIT = 16'hca0a;
    SB_LUT4 i127_4_lut (.I0(M_DCSEL), .I1(n90_adj_1023), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n69_adj_1113));   // zimaux_main.vhd(517[5] 604[14])
    defparam i127_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i1_4_lut_adj_82 (.I0(n69_adj_1113), .I1(n8043), .I2(n4_adj_1264), 
            .I3(n93), .O(n8055));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_82.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12632_2_lut (.I0(\comm_buf[0] [1]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15593));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12632_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_state_3__I_0_382_Mux_1_i6_4_lut (.I0(n15593), .I1(comm_rx_buf[1]), 
            .I2(comm_state[1]), .I3(n8055), .O(n6_adj_1188));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_1_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i12_4_lut_adj_83 (.I0(cmd_rdadctmp_adj_1332[27]), .I1(cmd_rdadctmp_adj_1332[26]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14766));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_83.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_84 (.I0(n13_adj_1025), .I1(comm_state[3]), .I2(n6791), 
            .I3(comm_state[0]), .O(n8250));
    defparam i1_4_lut_adj_84.LUT_INIT = 16'hc0c4;
    SB_LUT4 i130_3_lut_adj_85 (.I0(acadc_skipCount[10]), .I1(tacadc_rst), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n90_adj_1167));   // zimaux_main.vhd(517[5] 604[14])
    defparam i130_3_lut_adj_85.LUT_INIT = 16'hcaca;
    SB_LUT4 i125_4_lut (.I0(req_data_cnt[10]), .I1(n90_adj_1167), .I2(comm_cmd[0]), 
            .I3(comm_cmd[1]), .O(n72_adj_1162));   // zimaux_main.vhd(517[5] 604[14])
    defparam i125_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i12_4_lut_adj_86 (.I0(cmd_rdadctmp[25]), .I1(cmd_rdadctmp[24]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14764));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_86.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_87 (.I0(cmd_rdadctmp_adj_1332[26]), .I1(cmd_rdadctmp_adj_1332[25]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14762));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_87.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_88 (.I0(cmd_rdadctmp_adj_1332[25]), .I1(cmd_rdadctmp_adj_1332[24]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14758));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_88.LUT_INIT = 16'hca0a;
    SB_LUT4 i132_4_lut (.I0(buf_dds[10]), .I1(M_FLT0), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n66_adj_1166));   // zimaux_main.vhd(517[5] 604[14])
    defparam i132_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i131_3_lut (.I0(buf_adcdata3[18]), .I1(data_cntvec[10]), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n87_adj_1165));   // zimaux_main.vhd(517[5] 604[14])
    defparam i131_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_89 (.I0(cmd_rdadctmp[24]), .I1(cmd_rdadctmp[23]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14760));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_89.LUT_INIT = 16'hca0a;
    SB_LUT4 i6_4_lut_adj_90 (.I0(data_cntvec[2]), .I1(data_cntvec[7]), .I2(req_data_cnt[2]), 
            .I3(req_data_cnt[7]), .O(n22));   // zimaux_main.vhd(443[9:35])
    defparam i6_4_lut_adj_90.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_91 (.I0(cmd_rdadctmp_adj_1286[11]), .I1(cmd_rdadctmp_adj_1286[10]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14810));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_91.LUT_INIT = 16'hca0a;
    SB_LUT4 i7_4_lut_adj_92 (.I0(data_cntvec[11]), .I1(data_cntvec[14]), 
            .I2(req_data_cnt[11]), .I3(req_data_cnt[14]), .O(n23_adj_1194));   // zimaux_main.vhd(443[9:35])
    defparam i7_4_lut_adj_92.LUT_INIT = 16'h7bde;
    SB_LUT4 i129_4_lut (.I0(data_idxvec[10]), .I1(buf_data2[75]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n75_adj_1164));   // zimaux_main.vhd(517[5] 604[14])
    defparam i129_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i123_3_lut (.I0(n66_adj_1166), .I1(n72_adj_1162), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n96));   // zimaux_main.vhd(517[5] 604[14])
    defparam i123_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_93 (.I0(cmd_rdadctmp_adj_1332[24]), .I1(cmd_rdadctmp_adj_1332[23]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14756));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_93.LUT_INIT = 16'hca0a;
    SB_LUT4 i5_4_lut_adj_94 (.I0(data_cntvec[10]), .I1(data_cntvec[12]), 
            .I2(req_data_cnt[10]), .I3(req_data_cnt[12]), .O(n21_adj_1204));   // zimaux_main.vhd(443[9:35])
    defparam i5_4_lut_adj_94.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_95 (.I0(cmd_rdadctmp_adj_1309[13]), .I1(cmd_rdadctmp_adj_1309[12]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14600));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_95.LUT_INIT = 16'hca0a;
    SB_LUT4 i127_4_lut_adj_96 (.I0(n96), .I1(n75_adj_1164), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n130));   // zimaux_main.vhd(517[5] 604[14])
    defparam i127_4_lut_adj_96.LUT_INIT = 16'hca0a;
    SB_CARRY add_58_8 (.CI(n13971), .I0(acadc_skipcnt[6]), .I1(M_MOSI4), 
            .CO(n13972));
    SB_LUT4 secclk_cnt_1601_1602_add_4_17_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[15]), .I3(n14023), .O(n105)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i124_4_lut (.I0(M_POW), .I1(n87_adj_1165), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n69_adj_1161));   // zimaux_main.vhd(517[5] 604[14])
    defparam i124_4_lut.LUT_INIT = 16'hcac0;
    SB_CARRY secclk_cnt_1601_1602_add_4_17 (.CI(n14023), .I0(M_MOSI4), .I1(secclk_cnt[15]), 
            .CO(n14024));
    SB_LUT4 i1_4_lut_adj_97 (.I0(n69_adj_1161), .I1(n8043), .I2(n130), 
            .I3(n93), .O(n8050));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_97.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12699_2_lut (.I0(\comm_buf[0] [2]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15589));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12699_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_state_3__I_0_382_Mux_2_i6_4_lut (.I0(n15589), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(n8050), .O(n6_adj_1187));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_2_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i130_3_lut_adj_98 (.I0(acadc_skipCount[11]), .I1(ICE_CHKCABLE), 
            .I2(comm_cmd[1]), .I3(M_MOSI4), .O(n90_adj_1154));   // zimaux_main.vhd(517[5] 604[14])
    defparam i130_3_lut_adj_98.LUT_INIT = 16'hcaca;
    SB_LUT4 i125_4_lut_adj_99 (.I0(req_data_cnt[11]), .I1(n90_adj_1154), 
            .I2(comm_cmd[0]), .I3(comm_cmd[1]), .O(n72));   // zimaux_main.vhd(517[5] 604[14])
    defparam i125_4_lut_adj_99.LUT_INIT = 16'hcac0;
    SB_LUT4 i132_4_lut_adj_100 (.I0(buf_dds[11]), .I1(M_FLT1), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n66_adj_1153));   // zimaux_main.vhd(517[5] 604[14])
    defparam i132_4_lut_adj_100.LUT_INIT = 16'h0ac0;
    SB_LUT4 i12_4_lut_adj_101 (.I0(cmd_rdadctmp[23]), .I1(cmd_rdadctmp[22]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14754));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_101.LUT_INIT = 16'hca0a;
    SB_LUT4 i131_3_lut_adj_102 (.I0(buf_adcdata3[19]), .I1(data_cntvec[11]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n87));   // zimaux_main.vhd(517[5] 604[14])
    defparam i131_3_lut_adj_102.LUT_INIT = 16'hcaca;
    SB_LUT4 i4_4_lut_adj_103 (.I0(data_cntvec[3]), .I1(data_cntvec[5]), 
            .I2(req_data_cnt[3]), .I3(req_data_cnt[5]), .O(n20_adj_1253));   // zimaux_main.vhd(443[9:35])
    defparam i4_4_lut_adj_103.LUT_INIT = 16'h7bde;
    SB_LUT4 i129_4_lut_adj_104 (.I0(data_idxvec[11]), .I1(buf_data2[79]), 
            .I2(comm_cmd[1]), .I3(comm_cmd[0]), .O(n75));   // zimaux_main.vhd(517[5] 604[14])
    defparam i129_4_lut_adj_104.LUT_INIT = 16'h0ac0;
    SB_LUT4 i123_3_lut_adj_105 (.I0(n66_adj_1153), .I1(n72), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n96_adj_1159));   // zimaux_main.vhd(517[5] 604[14])
    defparam i123_3_lut_adj_105.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_106 (.I0(cmd_rdadctmp_adj_1332[23]), .I1(cmd_rdadctmp_adj_1332[22]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14752));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_106.LUT_INIT = 16'hca0a;
    SB_LUT4 i127_4_lut_adj_107 (.I0(n96_adj_1159), .I1(n75), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n130_adj_1156));   // zimaux_main.vhd(517[5] 604[14])
    defparam i127_4_lut_adj_107.LUT_INIT = 16'hca0a;
    SB_LUT4 i124_4_lut_adj_108 (.I0(buf_control[3]), .I1(n87), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n69_adj_1029));   // zimaux_main.vhd(517[5] 604[14])
    defparam i124_4_lut_adj_108.LUT_INIT = 16'hcac0;
    SB_LUT4 add_58_7_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[5]), .I2(M_MOSI4), 
            .I3(n13970), .O(n438)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i2_4_lut_adj_109 (.I0(data_cntvec[1]), .I1(data_cntvec[4]), 
            .I2(req_data_cnt[1]), .I3(req_data_cnt[4]), .O(n18_adj_1217));   // zimaux_main.vhd(443[9:35])
    defparam i2_4_lut_adj_109.LUT_INIT = 16'h7bde;
    SB_LUT4 i1_4_lut_adj_110 (.I0(n69_adj_1029), .I1(n8043), .I2(n130_adj_1156), 
            .I3(n93), .O(n8051));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_110.LUT_INIT = 16'hc0c8;
    SB_LUT4 n16386_bdd_4_lut (.I0(n16386), .I1(n15388), .I2(n15387), .I3(comm_index[2]), 
            .O(n16389));
    defparam n16386_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3_4_lut (.I0(data_cntvec[8]), .I1(data_cntvec[13]), .I2(req_data_cnt[8]), 
            .I3(req_data_cnt[13]), .O(n19_adj_1234));   // zimaux_main.vhd(443[9:35])
    defparam i3_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i12_4_lut_adj_111 (.I0(cmd_rdadctmp[22]), .I1(cmd_rdadctmp[21]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14748));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_111.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_112 (.I0(data_cntvec[0]), .I1(data_cntvec[6]), 
            .I2(req_data_cnt[0]), .I3(req_data_cnt[6]), .O(n17_adj_1214));   // zimaux_main.vhd(443[9:35])
    defparam i1_4_lut_adj_112.LUT_INIT = 16'h7bde;
    SB_LUT4 i12691_2_lut (.I0(\comm_buf[0] [3]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15587));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12691_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 secclk_cnt_1601_1602_add_4_16_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[14]), .I3(n14022), .O(n106)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 comm_state_3__I_0_382_Mux_3_i6_4_lut (.I0(n15587), .I1(comm_rx_buf[3]), 
            .I2(comm_state[1]), .I3(n8051), .O(n6_adj_1186));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_3_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i14_4_lut_adj_113 (.I0(n21_adj_1204), .I1(n23_adj_1194), .I2(n22), 
            .I3(n24_adj_1216), .O(n30_adj_1278));   // zimaux_main.vhd(443[9:35])
    defparam i14_4_lut_adj_113.LUT_INIT = 16'hfffe;
    SB_CARRY secclk_cnt_1601_1602_add_4_16 (.CI(n14022), .I0(M_MOSI4), .I1(secclk_cnt[14]), 
            .CO(n14023));
    SB_LUT4 i12_4_lut_adj_114 (.I0(cmd_rdadctmp_adj_1332[22]), .I1(cmd_rdadctmp_adj_1332[21]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14750));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_114.LUT_INIT = 16'hca0a;
    SB_CARRY add_58_7 (.CI(n13970), .I0(acadc_skipcnt[5]), .I1(M_MOSI4), 
            .CO(n13971));
    SB_LUT4 secclk_cnt_1601_1602_add_4_15_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[13]), .I3(n14021), .O(n107)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7780_3_lut (.I0(req_data_cnt[1]), .I1(n14_adj_1198), .I2(n8253), 
            .I3(M_MOSI4), .O(n10891));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7780_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12980_3_lut (.I0(comm_state[1]), .I1(n7), .I2(comm_cmd[7]), 
            .I3(M_MOSI4), .O(n16190));
    defparam i12980_3_lut.LUT_INIT = 16'ha8a8;
    SB_LUT4 i1_4_lut_adj_115 (.I0(comm_cmd[0]), .I1(comm_cmd[3]), .I2(buf_data2[83]), 
            .I3(n8043), .O(n8058));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_115.LUT_INIT = 16'hc800;
    SB_LUT4 i112_4_lut (.I0(buf_adcdata3[20]), .I1(buf_control[4]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n61));   // zimaux_main.vhd(517[5] 604[14])
    defparam i112_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i1_4_lut_adj_116 (.I0(n93), .I1(n8085), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n8089));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_116.LUT_INIT = 16'hcccd;
    SB_LUT4 i1_4_lut_adj_117 (.I0(n61), .I1(comm_cmd[2]), .I2(n93), .I3(n16461), 
            .O(n76));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_117.LUT_INIT = 16'h3b0a;
    SB_LUT4 i1_4_lut_adj_118 (.I0(\comm_buf[0] [4]), .I1(n76), .I2(n8089), 
            .I3(n8043), .O(n4_adj_1195));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_118.LUT_INIT = 16'heca0;
    SB_LUT4 i12771_4_lut (.I0(n15584), .I1(comm_cmd[2]), .I2(n83), .I3(comm_cmd[0]), 
            .O(n15581));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12771_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 comm_state_3__I_0_382_Mux_4_i6_4_lut (.I0(n15581), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(n4_adj_1195), .O(n6_adj_1185));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_4_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i12_4_lut_adj_119 (.I0(cmd_rdadctmp[21]), .I1(cmd_rdadctmp[20]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14746));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_119.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_120 (.I0(cmd_rdadctmp_adj_1332[21]), .I1(cmd_rdadctmp_adj_1332[20]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14744));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_120.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_121 (.I0(cmd_rdadctmp_adj_1332[20]), .I1(cmd_rdadctmp_adj_1332[19]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14742));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_121.LUT_INIT = 16'hca0a;
    SB_LUT4 add_58_6_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[4]), .I2(M_MOSI4), 
            .I3(n13969), .O(n439)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i105_4_lut (.I0(data_idxvec[13]), .I1(buf_data2[87]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n66_adj_1158));   // zimaux_main.vhd(517[5] 604[14])
    defparam i105_4_lut.LUT_INIT = 16'h0ac0;
    SB_CARRY secclk_cnt_1601_1602_add_4_15 (.CI(n14021), .I0(M_MOSI4), .I1(secclk_cnt[13]), 
            .CO(n14022));
    SB_LUT4 i108_4_lut (.I0(n16401), .I1(n66_adj_1158), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n109_adj_1155));   // zimaux_main.vhd(517[5] 604[14])
    defparam i108_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i111_4_lut (.I0(buf_adcdata3[21]), .I1(buf_control[5]), .I2(comm_cmd[3]), 
            .I3(comm_cmd[2]), .O(n60_adj_1157));   // zimaux_main.vhd(517[5] 604[14])
    defparam i111_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i13_4_lut (.I0(n17_adj_1214), .I1(n19_adj_1234), .I2(n18_adj_1217), 
            .I3(n20_adj_1253), .O(n29));   // zimaux_main.vhd(443[9:35])
    defparam i13_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_122 (.I0(cmd_rdadctmp_adj_1332[19]), .I1(cmd_rdadctmp_adj_1332[18]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14740));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_122.LUT_INIT = 16'hca0a;
    SB_LUT4 i12198_3_lut (.I0(comm_state[0]), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n15408));
    defparam i12198_3_lut.LUT_INIT = 16'he5e5;
    SB_LUT4 secclk_cnt_1601_1602_add_4_14_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[12]), .I3(n14020), .O(n108)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_123 (.I0(n60_adj_1157), .I1(n8043), .I2(n109_adj_1155), 
            .I3(n93), .O(n8048));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_123.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12672_2_lut (.I0(\comm_buf[0] [5]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15578));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12672_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_124 (.I0(cmd_rdadctmp[20]), .I1(cmd_rdadctmp[19]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14738));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_124.LUT_INIT = 16'hca0a;
    SB_CARRY secclk_cnt_1601_1602_add_4_14 (.CI(n14020), .I0(M_MOSI4), .I1(secclk_cnt[12]), 
            .CO(n14021));
    SB_LUT4 comm_state_3__I_0_382_Mux_5_i6_4_lut (.I0(n15578), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(n8048), .O(n6_adj_1183));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_5_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i12200_4_lut (.I0(n15408), .I1(n16190), .I2(comm_state[2]), 
            .I3(n10394), .O(n15410));
    defparam i12200_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i12_4_lut_adj_125 (.I0(cmd_rdadctmp_adj_1332[18]), .I1(cmd_rdadctmp_adj_1332[17]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14736));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_125.LUT_INIT = 16'hca0a;
    SB_LUT4 eis_end_I_3_3_lut (.I0(n29), .I1(eis_stop), .I2(n30_adj_1278), 
            .I3(M_MOSI4), .O(eis_end_N_773));   // zimaux_main.vhd(443[9:53])
    defparam eis_end_I_3_3_lut.LUT_INIT = 16'hcdcd;
    SB_LUT4 i12_4_lut_adj_126 (.I0(cmd_rdadctmp[19]), .I1(cmd_rdadctmp[18]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14734));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_126.LUT_INIT = 16'hca0a;
    SB_LUT4 i3_4_lut_adj_127 (.I0(acadc_dtrig1), .I1(acadc_dtrig4), .I2(acadc_dtrig3), 
            .I3(acadc_dtrig2), .O(n14087));
    defparam i3_4_lut_adj_127.LUT_INIT = 16'hfffe;
    SB_LUT4 i12_4_lut_adj_128 (.I0(cmd_rdadctmp[18]), .I1(cmd_rdadctmp[17]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14732));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_128.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_129 (.I0(cmd_rdadctmp[17]), .I1(cmd_rdadctmp[16]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14730));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_129.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_130 (.I0(cmd_rdadctmp[16]), .I1(cmd_rdadctmp[15]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14728));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_130.LUT_INIT = 16'hca0a;
    SB_LUT4 i17_4_lut (.I0(n14087), .I1(eis_stop), .I2(eis_state[0]), 
            .I3(eis_start), .O(n15356));
    defparam i17_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i7781_3_lut (.I0(req_data_cnt[2]), .I1(n14_adj_1197), .I2(n8253), 
            .I3(M_MOSI4), .O(n10892));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7781_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_state_i1 (.Q(comm_state[1]), .C(clk_32MHz), .E(n14_adj_1189), 
            .D(comm_state_3__N_57[1]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i105_4_lut_adj_131 (.I0(data_idxvec[14]), .I1(buf_data2[91]), 
            .I2(comm_cmd[1]), .I3(comm_cmd[0]), .O(n66));   // zimaux_main.vhd(517[5] 604[14])
    defparam i105_4_lut_adj_131.LUT_INIT = 16'h0ac0;
    SB_LUT4 i108_4_lut_adj_132 (.I0(n16437), .I1(n66), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n109));   // zimaux_main.vhd(517[5] 604[14])
    defparam i108_4_lut_adj_132.LUT_INIT = 16'hca0a;
    SB_LUT4 i111_4_lut_adj_133 (.I0(buf_adcdata3[22]), .I1(buf_control[6]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[2]), .O(n60));   // zimaux_main.vhd(517[5] 604[14])
    defparam i111_4_lut_adj_133.LUT_INIT = 16'h0ac0;
    SB_LUT4 i12_4_lut_adj_134 (.I0(cmd_rdadctmp[15]), .I1(cmd_rdadctmp[14]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14726));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_134.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_135 (.I0(cmd_rdadctmp[14]), .I1(cmd_rdadctmp[13]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14724));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_135.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_136 (.I0(n60), .I1(n8043), .I2(n109), .I3(n93), 
            .O(n8054));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_136.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12_4_lut_adj_137 (.I0(cmd_rdadctmp[13]), .I1(cmd_rdadctmp[12]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14722));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_137.LUT_INIT = 16'hca0a;
    SB_LUT4 i12661_2_lut (.I0(\comm_buf[0] [6]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15576));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12661_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_state_3__I_0_382_Mux_6_i6_4_lut (.I0(n15576), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(n8054), .O(n6_adj_1182));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_6_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 i13047_3_lut (.I0(n15356), .I1(eis_state[1]), .I2(eis_end_N_770), 
            .I3(M_MOSI4), .O(n8459));
    defparam i13047_3_lut.LUT_INIT = 16'h7f7f;
    SB_LUT4 i12_4_lut_adj_138 (.I0(cmd_rdadctmp[12]), .I1(cmd_rdadctmp[11]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14720));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_138.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_139 (.I0(cmd_rdadctmp_adj_1332[17]), .I1(cmd_rdadctmp_adj_1332[16]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14718));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_139.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_140 (.I0(n8085), .I1(comm_cmd[3]), .I2(n93), 
            .I3(comm_cmd[2]), .O(n84));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_140.LUT_INIT = 16'hbaab;
    SB_LUT4 i12_4_lut_adj_141 (.I0(cmd_rdadctmp[11]), .I1(cmd_rdadctmp[10]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14714));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_141.LUT_INIT = 16'hca0a;
    SB_LUT4 i7470_2_lut (.I0(n8654), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10576));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7470_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_142 (.I0(comm_state[0]), .I1(n15131), .I2(n15221), 
            .I3(n11_adj_1279), .O(n8654));
    defparam i1_4_lut_adj_142.LUT_INIT = 16'hc4c0;
    SB_LUT4 i12862_2_lut (.I0(eis_state[0]), .I1(eis_end_N_773), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15695));   // zimaux_main.vhd(386[4] 459[13])
    defparam i12862_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12861_3_lut (.I0(eis_start), .I1(eis_state[0]), .I2(n31), 
            .I3(M_MOSI4), .O(n15696));   // zimaux_main.vhd(386[4] 459[13])
    defparam i12861_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i12_4_lut_adj_143 (.I0(cmd_rdadctmp_adj_1332[16]), .I1(cmd_rdadctmp_adj_1332[15]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14716));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_143.LUT_INIT = 16'hca0a;
    SB_LUT4 i12648_4_lut (.I0(req_data_cnt[15]), .I1(n18), .I2(buf_data2[95]), 
            .I3(comm_cmd[2]), .O(n15466));   // zimaux_main.vhd(517[5] 604[14])
    defparam i12648_4_lut.LUT_INIT = 16'hc088;
    SB_DFFE comm_state_i3 (.Q(comm_state[3]), .C(clk_32MHz), .E(n15128), 
            .D(comm_state_3__N_57[3]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i1 (.Q(data_index[1]), .C(clk_32MHz), .D(data_index_9__N_258[1]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 eis_state_2__I_0_405_Mux_2_i7_4_lut (.I0(n15696), .I1(n15695), 
            .I2(eis_end_N_770), .I3(eis_state[1]), .O(eis_state_2__N_213[2]));   // zimaux_main.vhd(386[4] 459[13])
    defparam eis_state_2__I_0_405_Mux_2_i7_4_lut.LUT_INIT = 16'hcaf0;
    SB_LUT4 i110_4_lut (.I0(buf_dds[15]), .I1(buf_device_acadc[7]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n56));   // zimaux_main.vhd(517[5] 604[14])
    defparam i110_4_lut.LUT_INIT = 16'h0ac0;
    SB_LUT4 i12647_4_lut (.I0(acadc_skipCount[15]), .I1(comm_cmd[3]), .I2(data_idxvec[15]), 
            .I3(comm_cmd[2]), .O(n15468));   // zimaux_main.vhd(517[5] 604[14])
    defparam i12647_4_lut.LUT_INIT = 16'hc088;
    SB_LUT4 i12_4_lut_adj_144 (.I0(cmd_rdadctmp[10]), .I1(cmd_rdadctmp[9]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14712));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_144.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_145 (.I0(cmd_rdadctmp[9]), .I1(cmd_rdadctmp[8]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14710));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_145.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_146 (.I0(cmd_rdadctmp[8]), .I1(cmd_rdadctmp[7]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14708));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_146.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_147 (.I0(cmd_rdadctmp[7]), .I1(cmd_rdadctmp[6]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14706));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_147.LUT_INIT = 16'hca0a;
    SB_LUT4 i9560_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4_adj_1041));
    defparam i9560_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_index_1__bdd_4_lut_13177 (.I0(comm_index[1]), .I1(n15450), 
            .I2(n15451), .I3(comm_index[2]), .O(n16380));
    defparam comm_index_1__bdd_4_lut_13177.LUT_INIT = 16'he4aa;
    SB_LUT4 i12_4_lut_adj_148 (.I0(cmd_rdadctmp[6]), .I1(cmd_rdadctmp[5]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14704));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_148.LUT_INIT = 16'hca0a;
    SB_LUT4 i109_3_lut (.I0(buf_adcdata3[23]), .I1(eis_end), .I2(comm_cmd[3]), 
            .I3(M_MOSI4), .O(n71));   // zimaux_main.vhd(517[5] 604[14])
    defparam i109_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i106_4_lut (.I0(n71), .I1(n15468), .I2(comm_cmd[0]), .I3(comm_cmd[2]), 
            .O(n59));   // zimaux_main.vhd(517[5] 604[14])
    defparam i106_4_lut.LUT_INIT = 16'hcac0;
    SB_LUT4 i103_4_lut (.I0(n56), .I1(n15466), .I2(comm_cmd[3]), .I3(comm_cmd[2]), 
            .O(n104));   // zimaux_main.vhd(517[5] 604[14])
    defparam i103_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_378_Mux_0_i15_3_lut (.I0(n15410), .I1(n6791), 
            .I2(comm_state[3]), .I3(M_MOSI4), .O(comm_state_3__N_57[0]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_378_Mux_0_i15_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 i1_2_lut_adj_149 (.I0(eis_state[1]), .I1(eis_end_N_770), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15171));
    defparam i1_2_lut_adj_149.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_150 (.I0(comm_cmd[1]), .I1(n8043), .I2(n104), 
            .I3(n59), .O(n8045));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_150.LUT_INIT = 16'hc4c0;
    SB_LUT4 i12_4_lut_adj_151 (.I0(cmd_rdadctmp[5]), .I1(cmd_rdadctmp[4]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14702));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_151.LUT_INIT = 16'hca0a;
    SB_LUT4 i12746_2_lut (.I0(buf_dds[8]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15542));
    defparam i12746_2_lut.LUT_INIT = 16'h8888;
    SB_DFF data_index_i2 (.Q(data_index[2]), .C(clk_32MHz), .D(data_index_9__N_258[2]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i3 (.Q(data_index[3]), .C(clk_32MHz), .D(data_index_9__N_258[3]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i4 (.Q(data_index[4]), .C(clk_32MHz), .D(data_index_9__N_258[4]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i5 (.Q(data_index[5]), .C(clk_32MHz), .D(data_index_9__N_258[5]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i6 (.Q(data_index[6]), .C(clk_32MHz), .D(data_index_9__N_258[6]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i7 (.Q(data_index[7]), .C(clk_32MHz), .D(data_index_9__N_258[7]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF data_index_i8 (.Q(data_index[8]), .C(clk_32MHz), .D(data_index_9__N_258[8]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i1 (.Q(data_idxvec[1]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[1]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i2 (.Q(data_idxvec[2]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[2]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i3 (.Q(data_idxvec[3]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[3]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i4 (.Q(data_idxvec[4]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[4]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i5 (.Q(data_idxvec[5]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[5]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i6 (.Q(data_idxvec[6]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[6]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i7 (.Q(data_idxvec[7]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[7]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i8 (.Q(data_idxvec[8]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[8]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i9 (.Q(data_idxvec[9]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[9]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i10 (.Q(data_idxvec[10]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[10]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i11 (.Q(data_idxvec[11]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[11]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i12 (.Q(data_idxvec[12]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[12]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i13 (.Q(data_idxvec[13]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[13]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i14 (.Q(data_idxvec[14]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[14]));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE data_idxvec_i15 (.Q(data_idxvec[15]), .C(clk_32MHz), .E(n9187), 
            .D(data_idxvec_15__N_268[15]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12650_2_lut (.I0(\comm_buf[0] [7]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15573));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12650_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12713_2_lut (.I0(M_OSR0), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15543));
    defparam i12713_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i12_4_lut_adj_152 (.I0(cmd_rdadctmp[4]), .I1(cmd_rdadctmp[3]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14700));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_152.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_382_Mux_7_i6_4_lut (.I0(n15573), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(n8045), .O(n6_adj_1181));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_7_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 n16380_bdd_4_lut (.I0(n16380), .I1(n15382), .I2(n15381), .I3(comm_index[2]), 
            .O(n16383));
    defparam n16380_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i3145_3_lut (.I0(\comm_buf[0] [0]), .I1(data_index[8]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1219));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3145_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_153 (.I0(cmd_rdadctmp_adj_1332[15]), .I1(cmd_rdadctmp_adj_1332[14]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14698));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_153.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_394_Mux_8_i15_4_lut (.I0(n7_adj_1218), .I1(n8_adj_1219), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[8]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_8_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1494_i2_3_lut (.I0(data_cntvec[1]), .I1(data_idxvec[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4196));
    defparam mux_1494_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1507_i2_4_lut (.I0(n4196), .I1(buf_data2[39]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4233));
    defparam mux_1507_i2_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_154 (.I0(cmd_rdadctmp[3]), .I1(cmd_rdadctmp[2]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14696));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_154.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_155 (.I0(cmd_rdadctmp_adj_1286[12]), .I1(cmd_rdadctmp_adj_1286[11]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14812));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_155.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_156 (.I0(cmd_rdadctmp[1]), .I1(cmd_rdadctmp[0]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14692));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_156.LUT_INIT = 16'hca0a;
    SB_LUT4 i12710_2_lut (.I0(req_data_cnt[8]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15812));
    defparam i12710_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_1502_i2_3_lut (.I0(req_data_cnt[1]), .I1(acadc_skipCount[1]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4220));
    defparam mux_1502_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3157_3_lut (.I0(\comm_buf[1] [7]), .I1(data_index[7]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1221));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3157_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12630_2_lut (.I0(acadc_skipCount[8]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15811));
    defparam i12630_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_1511_i2_3_lut (.I0(n4220), .I1(n4233), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4253));
    defparam mux_1511_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1498_i2_3_lut (.I0(buf_adcdata3[9]), .I1(buf_dds[1]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4208));
    defparam mux_1498_i2_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_157 (.I0(cmd_rdadctmp_adj_1332[14]), .I1(cmd_rdadctmp_adj_1332[13]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14690));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_157.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1513_i2_4_lut (.I0(n4208), .I1(n4253), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4263));
    defparam mux_1513_i2_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6904_3_lut (.I0(n4263), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10013));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6904_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_158 (.I0(cmd_rdadctmp_adj_1286[13]), .I1(cmd_rdadctmp_adj_1286[12]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14814));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_158.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_159 (.I0(cmd_rdadctmp_adj_1286[14]), .I1(cmd_rdadctmp_adj_1286[13]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14816));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_159.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_160 (.I0(cmd_rdadctmp_adj_1286[15]), .I1(cmd_rdadctmp_adj_1286[14]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14850));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_160.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_161 (.I0(cmd_rdadctmp_adj_1286[16]), .I1(cmd_rdadctmp_adj_1286[15]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14852));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_161.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_162 (.I0(cmd_rdadctmp_adj_1286[17]), .I1(cmd_rdadctmp_adj_1286[16]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14854));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_162.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1494_i3_3_lut (.I0(data_cntvec[2]), .I1(data_idxvec[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4195));
    defparam mux_1494_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_163 (.I0(cmd_rdadctmp_adj_1286[18]), .I1(cmd_rdadctmp_adj_1286[17]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14856));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_163.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_164 (.I0(cmd_rdadctmp_adj_1286[19]), .I1(cmd_rdadctmp_adj_1286[18]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14858));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_164.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_394_Mux_7_i15_4_lut (.I0(n7_adj_1220), .I1(n8_adj_1221), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[7]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1507_i3_4_lut (.I0(n4195), .I1(buf_data2[43]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4232));
    defparam mux_1507_i3_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1502_i3_3_lut (.I0(req_data_cnt[2]), .I1(acadc_skipCount[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4219));
    defparam mux_1502_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_165 (.I0(cmd_rdadctmp_adj_1286[20]), .I1(cmd_rdadctmp_adj_1286[19]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14860));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_165.LUT_INIT = 16'hca0a;
    SB_LUT4 secclk_cnt_1601_1602_add_4_13_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[11]), .I3(n14019), .O(n109_adj_1034)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_1511_i3_3_lut (.I0(n4219), .I1(n4232), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4252));
    defparam mux_1511_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1498_i3_3_lut (.I0(buf_adcdata3[10]), .I1(buf_dds[2]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4207));
    defparam mux_1498_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1513_i3_4_lut (.I0(n4207), .I1(n4252), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4262));
    defparam mux_1513_i3_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12_4_lut_adj_166 (.I0(cmd_rdadctmp_adj_1286[21]), .I1(cmd_rdadctmp_adj_1286[20]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14862));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_166.LUT_INIT = 16'hca0a;
    SB_LUT4 i6900_3_lut (.I0(n4262), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10009));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6900_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_167 (.I0(cmd_rdadctmp_adj_1286[22]), .I1(cmd_rdadctmp_adj_1286[21]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14864));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_167.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_168 (.I0(cmd_rdadctmp_adj_1332[13]), .I1(cmd_rdadctmp_adj_1332[12]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14688));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_168.LUT_INIT = 16'hca0a;
    SB_LUT4 i7783_3_lut (.I0(req_data_cnt[4]), .I1(n14_adj_1196), .I2(n8253), 
            .I3(M_MOSI4), .O(n10894));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7783_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_169 (.I0(comm_cmd[7]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[7]), .O(n14374));   // zimaux_main.vhd(465[3] 709[10])
    defparam i12_4_lut_adj_169.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1494_i4_3_lut (.I0(data_cntvec[3]), .I1(data_idxvec[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4194));
    defparam mux_1494_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_170 (.I0(comm_cmd[6]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[6]), .O(n14372));   // zimaux_main.vhd(465[3] 709[10])
    defparam i12_4_lut_adj_170.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_171 (.I0(comm_cmd[5]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[5]), .O(n14370));   // zimaux_main.vhd(465[3] 709[10])
    defparam i12_4_lut_adj_171.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1507_i4_4_lut (.I0(n4194), .I1(buf_data2[47]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4231));
    defparam mux_1507_i4_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1502_i4_3_lut (.I0(req_data_cnt[3]), .I1(acadc_skipCount[3]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4218));
    defparam mux_1502_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut (.I0(comm_cmd[4]), .I1(n10363), .I2(n8618), .I3(comm_rx_buf[4]), 
            .O(n14368));   // zimaux_main.vhd(465[3] 709[10])
    defparam i11_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1511_i4_3_lut (.I0(n4218), .I1(n4231), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4251));
    defparam mux_1511_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_172 (.I0(comm_cmd[3]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[3]), .O(n14366));   // zimaux_main.vhd(465[3] 709[10])
    defparam i11_4_lut_adj_172.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1498_i4_3_lut (.I0(buf_adcdata3[11]), .I1(buf_dds[3]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4206));
    defparam mux_1498_i4_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1513_i4_4_lut (.I0(n4206), .I1(n4251), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4261));
    defparam mux_1513_i4_4_lut.LUT_INIT = 16'hc0ca;
    SB_CARRY add_53_3 (.CI(n13942), .I0(data_count[1]), .I1(M_MOSI4), 
            .CO(n13943));
    SB_LUT4 add_53_9_lut (.I0(M_MOSI4), .I1(data_count[7]), .I2(M_MOSI4), 
            .I3(n13948), .O(n368)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_173 (.I0(comm_cmd[2]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[2]), .O(n14364));   // zimaux_main.vhd(465[3] 709[10])
    defparam i11_4_lut_adj_173.LUT_INIT = 16'hca0a;
    SB_LUT4 i6896_3_lut (.I0(n4261), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10005));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6896_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY secclk_cnt_1601_1602_add_4_13 (.CI(n14019), .I0(M_MOSI4), .I1(secclk_cnt[11]), 
            .CO(n14020));
    SB_LUT4 mux_1494_i5_3_lut (.I0(data_cntvec[4]), .I1(data_idxvec[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4193));
    defparam mux_1494_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i3165_3_lut (.I0(\comm_buf[1] [6]), .I1(data_index[6]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1223));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3165_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1507_i5_4_lut (.I0(n4193), .I1(buf_data2[51]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4230));
    defparam mux_1507_i5_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1502_i5_3_lut (.I0(req_data_cnt[4]), .I1(acadc_skipCount[4]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4217));
    defparam mux_1502_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_119_i13_2_lut_3_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(n12), .O(n13_adj_1040));   // zimaux_main.vhd(569[11:20])
    defparam equal_119_i13_2_lut_3_lut_4_lut.LUT_INIT = 16'hffef;
    SB_LUT4 mux_1511_i5_3_lut (.I0(n4217), .I1(n4230), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4250));
    defparam mux_1511_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1498_i5_3_lut (.I0(buf_adcdata3[12]), .I1(buf_dds[4]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4205));
    defparam mux_1498_i5_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_394_Mux_6_i15_4_lut (.I0(n7_adj_1222), .I1(n8_adj_1223), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[6]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_6_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_3_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n8561));
    defparam i1_3_lut_3_lut_4_lut.LUT_INIT = 16'ha9e8;
    SB_LUT4 clk_16MHz_I_0_1_lut (.I0(clk_16MHz), .I1(M_MOSI4), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(DDS_MCLK1));   // zimaux_main.vhd(314[17:30])
    defparam clk_16MHz_I_0_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i12728_2_lut_3_lut (.I0(n7), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n15635));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12728_2_lut_3_lut.LUT_INIT = 16'hefef;
    SB_LUT4 i1_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(n15245), 
            .I3(comm_state[0]), .O(n8544));
    defparam i1_4_lut_4_lut.LUT_INIT = 16'hf4fe;
    SB_LUT4 i1_2_lut_3_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n8133));
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf1f1;
    GND i1 (.Y(M_MOSI4));
    SB_LUT4 mux_1513_i5_4_lut (.I0(n4205), .I1(n4250), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4260));
    defparam mux_1513_i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6888_3_lut (.I0(n4260), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9997));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6888_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFNE acadc_trig_329 (.Q(acadc_trig), .C(clk_32MHz), .E(VCC_net), 
            .D(n14486));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i1_4_lut_3_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n10566));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_4_lut_3_lut_4_lut.LUT_INIT = 16'ha9a8;
    SB_LUT4 mux_1494_i6_3_lut (.I0(data_cntvec[5]), .I1(data_idxvec[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4192));
    defparam mux_1494_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1507_i6_4_lut (.I0(n4192), .I1(buf_data2[55]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4229));
    defparam mux_1507_i6_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i1_4_lut_4_lut_4_lut (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[0]), .O(n8576));
    defparam i1_4_lut_4_lut_4_lut.LUT_INIT = 16'ha9b8;
    SB_LUT4 i1_2_lut_3_lut_adj_174 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n15241));
    defparam i1_2_lut_3_lut_adj_174.LUT_INIT = 16'hefef;
    SB_LUT4 mux_1502_i6_3_lut (.I0(req_data_cnt[5]), .I1(acadc_skipCount[5]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4216));
    defparam mux_1502_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1511_i6_3_lut (.I0(n4216), .I1(n4229), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4249));
    defparam mux_1511_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12656_2_lut (.I0(buf_dds[9]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15478));
    defparam i12656_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 mux_1498_i6_3_lut (.I0(buf_adcdata3[13]), .I1(buf_dds[5]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4204));
    defparam mux_1498_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE buf_dds_i0 (.Q(buf_dds[0]), .C(clk_32MHz), .E(VCC_net), .D(n11484));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12629_2_lut (.I0(M_OSR1), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15479));
    defparam i12629_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_1513_i6_4_lut (.I0(n4204), .I1(n4249), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4259));
    defparam mux_1513_i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i3173_3_lut (.I0(\comm_buf[1] [5]), .I1(data_index[5]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1225));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3173_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_394_Mux_5_i15_4_lut (.I0(n7_adj_1224), .I1(n8_adj_1225), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[5]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i6884_3_lut (.I0(n4259), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9993));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6884_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_54_10_lut (.I0(M_MOSI4), .I1(data_cntvec[8]), .I2(M_MOSI4), 
            .I3(n13958), .O(n385)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12701_2_lut (.I0(req_data_cnt[9]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15835));
    defparam i12701_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE comm_cmd_i0 (.Q(comm_cmd[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14354));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i3181_3_lut (.I0(\comm_buf[1] [4]), .I1(data_index[4]), .I2(n6301), 
            .I3(M_MOSI4), .O(n8_adj_1227));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7785_3_lut (.I0(req_data_cnt[6]), .I1(n14_adj_1169), .I2(n8253), 
            .I3(M_MOSI4), .O(n10896));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7785_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1494_i7_3_lut (.I0(data_cntvec[6]), .I1(data_idxvec[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4191));
    defparam mux_1494_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1507_i7_4_lut (.I0(n4191), .I1(buf_data2[59]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4228));
    defparam mux_1507_i7_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 i13004_2_lut (.I0(acadc_skipCount[9]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15834));
    defparam i13004_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_adj_175 (.I0(comm_state[0]), .I1(comm_data_vld), 
            .I2(ICE_SPI_CE0), .I3(M_MOSI4), .O(n15198));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut_3_lut_adj_175.LUT_INIT = 16'h7575;
    SB_LUT4 mux_1502_i7_3_lut (.I0(req_data_cnt[6]), .I1(acadc_skipCount[6]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4215));
    defparam mux_1502_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_176 (.I0(comm_state[1]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n15204));
    defparam i1_2_lut_3_lut_adj_176.LUT_INIT = 16'hdfdf;
    SB_LUT4 mux_1511_i7_3_lut (.I0(n4215), .I1(n4228), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4248));
    defparam mux_1511_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1498_i7_3_lut (.I0(buf_adcdata3[14]), .I1(buf_dds[6]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4203));
    defparam mux_1498_i7_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1513_i7_4_lut (.I0(n4203), .I1(n4248), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4258));
    defparam mux_1513_i7_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6880_3_lut (.I0(n4258), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9989));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6880_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_177 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n9011));
    defparam i1_2_lut_3_lut_adj_177.LUT_INIT = 16'hfdfd;
    SB_LUT4 i3_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n8530));
    defparam i3_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i7477_2_lut (.I0(n8702), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10583));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7477_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_4_lut_adj_178 (.I0(comm_state[3]), .I1(n6791), .I2(n15), 
            .I3(n15176), .O(n9021));
    defparam i1_4_lut_4_lut_adj_178.LUT_INIT = 16'hd888;
    SB_LUT4 i12654_4_lut (.I0(n24), .I1(n8043), .I2(n32), .I3(comm_cmd[3]), 
            .O(n15557));
    defparam i12654_4_lut.LUT_INIT = 16'hc8c0;
    SB_LUT4 i36_4_lut (.I0(n15557), .I1(n5), .I2(comm_state[1]), .I3(n13475), 
            .O(n17));
    defparam i36_4_lut.LUT_INIT = 16'h3a0a;
    SB_LUT4 i31_3_lut_4_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n14_adj_1152));
    defparam i31_3_lut_4_lut_3_lut.LUT_INIT = 16'h1818;
    SB_LUT4 i1_4_lut_adj_179 (.I0(comm_state[0]), .I1(n15131), .I2(n15221), 
            .I3(n17), .O(n8702));
    defparam i1_4_lut_adj_179.LUT_INIT = 16'hc4c0;
    SB_LUT4 i2_4_lut_4_lut (.I0(ICE_GPMO_0), .I1(eis_state[1]), .I2(eis_end_N_770), 
            .I3(eis_state[0]), .O(n9790));   // zimaux_main.vhd(359[15:28])
    defparam i2_4_lut_4_lut.LUT_INIT = 16'h0501;
    SB_LUT4 mux_1494_i8_3_lut (.I0(data_cntvec[7]), .I1(data_idxvec[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4190));
    defparam mux_1494_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_394_Mux_4_i15_4_lut (.I0(n7_adj_1226), .I1(n8_adj_1227), 
            .I2(comm_state[3]), .I3(n6791), .O(data_index_9__N_258[4]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_394_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12_4_lut_adj_180 (.I0(cmd_rdadctmp_adj_1332[11]), .I1(cmd_rdadctmp_adj_1332[10]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14680));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_180.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_adj_181 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(M_MOSI4), .O(n10640));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_2_lut_3_lut_adj_181.LUT_INIT = 16'he0e0;
    SB_LUT4 mux_1507_i8_4_lut (.I0(n4190), .I1(buf_data2[63]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4227));
    defparam mux_1507_i8_4_lut.LUT_INIT = 16'hfaca;
    SB_LUT4 mux_1502_i8_3_lut (.I0(req_data_cnt[7]), .I1(acadc_skipCount[7]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4214));
    defparam mux_1502_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1511_i8_3_lut (.I0(n4214), .I1(n4227), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4247));
    defparam mux_1511_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_182 (.I0(cmd_rdadctmp_adj_1332[10]), .I1(cmd_rdadctmp_adj_1332[9]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14678));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_182.LUT_INIT = 16'hca0a;
    SB_LUT4 i3754_2_lut (.I0(comm_state[1]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n6791));   // zimaux_main.vhd(467[4] 708[13])
    defparam i3754_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_54_10 (.CI(n13958), .I0(data_cntvec[8]), .I1(M_MOSI4), 
            .CO(n13959));
    SB_LUT4 i2_3_lut_3_lut (.I0(ICE_GPMO_0), .I1(eis_state[0]), .I2(n15171), 
            .I3(M_MOSI4), .O(raw_buf1_N_775));   // zimaux_main.vhd(359[15:28])
    defparam i2_3_lut_3_lut.LUT_INIT = 16'h4040;
    SB_LUT4 mux_1498_i8_3_lut (.I0(buf_adcdata3[15]), .I1(buf_dds[7]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4202));
    defparam mux_1498_i8_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_58_6 (.CI(n13969), .I0(acadc_skipcnt[4]), .I1(M_MOSI4), 
            .CO(n13970));
    SB_LUT4 i12765_2_lut_3_lut_4_lut (.I0(comm_index[3]), .I1(n5_adj_1235), 
            .I2(comm_index[0]), .I3(comm_index[1]), .O(n15567));   // zimaux_main.vhd(465[3] 709[10])
    defparam i12765_2_lut_3_lut_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i1_4_lut_4_lut_adj_183 (.I0(ICE_GPMO_0), .I1(eis_state[1]), 
            .I2(n8_adj_1212), .I3(n10_adj_1242), .O(n14308));   // zimaux_main.vhd(359[15:28])
    defparam i1_4_lut_4_lut_adj_183.LUT_INIT = 16'hff40;
    SB_LUT4 mux_1513_i8_4_lut (.I0(n4202), .I1(n4247), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4257));
    defparam mux_1513_i8_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6795_3_lut (.I0(n4257), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9904));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6795_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_184 (.I0(cmd_rdadctmp_adj_1332[9]), .I1(cmd_rdadctmp_adj_1332[8]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14676));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_184.LUT_INIT = 16'hca0a;
    SB_LUT4 i7786_3_lut (.I0(req_data_cnt[7]), .I1(n14_adj_1168), .I2(n8253), 
            .I3(M_MOSI4), .O(n10897));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7786_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1481_i2_4_lut (.I0(buf_adcdata3[1]), .I1(buf_data2[7]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4151));
    defparam mux_1481_i2_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12_4_lut_adj_185 (.I0(cmd_rdadctmp_adj_1286[23]), .I1(cmd_rdadctmp_adj_1286[22]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14866));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_185.LUT_INIT = 16'hca0a;
    SB_LUT4 i6787_3_lut (.I0(n4151), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9896));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_186 (.I0(cmd_rdadctmp_adj_1332[7]), .I1(cmd_rdadctmp_adj_1332[6]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14672));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_186.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_187 (.I0(cmd_rdadctmp_adj_1332[6]), .I1(cmd_rdadctmp_adj_1332[5]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14664));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_187.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_188 (.I0(cmd_rdadctmp_adj_1332[1]), .I1(cmd_rdadctmp_adj_1332[0]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14648));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_188.LUT_INIT = 16'hca0a;
    SB_LUT4 i7787_3_lut (.I0(req_data_cnt[8]), .I1(n14_adj_1211), .I2(n8253), 
            .I3(M_MOSI4), .O(n10898));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7787_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1481_i3_4_lut (.I0(buf_adcdata3[2]), .I1(buf_data2[11]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4150));
    defparam mux_1481_i3_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6783_3_lut (.I0(n4150), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9892));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6783_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_189 (.I0(secclk_cnt[4]), .I1(secclk_cnt[0]), .I2(secclk_cnt[18]), 
            .I3(secclk_cnt[11]), .O(n28));   // zimaux_main.vhd(330[7:31])
    defparam i12_4_lut_adj_189.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_190 (.I0(secclk_cnt[2]), .I1(secclk_cnt[7]), .I2(secclk_cnt[16]), 
            .I3(secclk_cnt[13]), .O(n26_adj_1180));   // zimaux_main.vhd(330[7:31])
    defparam i10_4_lut_adj_190.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_191 (.I0(secclk_cnt[3]), .I1(secclk_cnt[14]), 
            .I2(secclk_cnt[6]), .I3(secclk_cnt[10]), .O(n27_adj_1173));   // zimaux_main.vhd(330[7:31])
    defparam i11_4_lut_adj_191.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(secclk_cnt[5]), .I1(secclk_cnt[8]), .I2(secclk_cnt[15]), 
            .I3(secclk_cnt[1]), .O(n25));   // zimaux_main.vhd(330[7:31])
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i13050_2_lut_3_lut (.I0(ICE_GPMO_0), .I1(eis_state[1]), .I2(eis_end_N_770), 
            .I3(M_MOSI4), .O(n15344));
    defparam i13050_2_lut_3_lut.LUT_INIT = 16'h0101;
    SB_LUT4 mux_1481_i4_4_lut (.I0(buf_adcdata3[3]), .I1(buf_data2[15]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4149));
    defparam mux_1481_i4_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i2_2_lut (.I0(secclk_cnt[17]), .I1(secclk_cnt[9]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10));   // zimaux_main.vhd(330[7:31])
    defparam i2_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i6775_3_lut (.I0(n4149), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9884));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6775_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7788_3_lut (.I0(req_data_cnt[9]), .I1(n14_adj_1210), .I2(n8253), 
            .I3(M_MOSI4), .O(n10899));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7788_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1481_i5_4_lut (.I0(buf_adcdata3[4]), .I1(buf_data2[19]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4148));
    defparam mux_1481_i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6_4_lut_adj_192 (.I0(secclk_cnt[22]), .I1(secclk_cnt[19]), 
            .I2(secclk_cnt[21]), .I3(secclk_cnt[12]), .O(n14_adj_1163));   // zimaux_main.vhd(330[7:31])
    defparam i6_4_lut_adj_192.LUT_INIT = 16'h8000;
    SB_LUT4 i6767_3_lut (.I0(n4148), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9876));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6767_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1481_i6_4_lut (.I0(buf_adcdata3[5]), .I1(buf_data2[23]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4147));
    defparam mux_1481_i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i15_4_lut_adj_193 (.I0(n25), .I1(n27_adj_1173), .I2(n26_adj_1180), 
            .I3(n28), .O(n14114));   // zimaux_main.vhd(330[7:31])
    defparam i15_4_lut_adj_193.LUT_INIT = 16'hfffe;
    SB_LUT4 i7_4_lut_adj_194 (.I0(n14114), .I1(n14_adj_1163), .I2(n10), 
            .I3(secclk_cnt[20]), .O(n10522));   // zimaux_main.vhd(330[7:31])
    defparam i7_4_lut_adj_194.LUT_INIT = 16'h4000;
    SB_LUT4 i6753_3_lut (.I0(n4147), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9862));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6753_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13054_3_lut_4_lut (.I0(ICE_GPMO_0), .I1(eis_state[1]), .I2(eis_end_N_770), 
            .I3(eis_state[0]), .O(n8456));
    defparam i13054_3_lut_4_lut.LUT_INIT = 16'h0111;
    SB_LUT4 i7789_3_lut (.I0(req_data_cnt[10]), .I1(n14_adj_1209), .I2(n8253), 
            .I3(M_MOSI4), .O(n10900));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7789_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1481_i7_4_lut (.I0(buf_adcdata3[6]), .I1(buf_data2[27]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4146));
    defparam mux_1481_i7_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i8342_3_lut (.I0(n10823), .I1(bit_cnt_adj_1353[0]), .I2(dds_state[1]), 
            .I3(M_MOSI4), .O(n11453));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i8342_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 i6744_3_lut (.I0(n4146), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9853));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6744_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7790_3_lut (.I0(req_data_cnt[11]), .I1(n14_adj_1208), .I2(n8253), 
            .I3(M_MOSI4), .O(n10901));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7790_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7791_3_lut (.I0(req_data_cnt[12]), .I1(n14_adj_1207), .I2(n8253), 
            .I3(M_MOSI4), .O(n10902));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7791_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7484_2_lut (.I0(n8738), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10590));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7484_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12743_2_lut (.I0(comm_index[0]), .I1(n13475), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15657));
    defparam i12743_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i33_4_lut (.I0(n4075), .I1(n15657), .I2(comm_state[1]), .I3(comm_index[1]), 
            .O(n13_adj_1042));
    defparam i33_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_195 (.I0(comm_state[0]), .I1(n15131), .I2(n15221), 
            .I3(n13_adj_1042), .O(n8738));
    defparam i1_4_lut_adj_195.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_1481_i8_4_lut (.I0(buf_adcdata3[7]), .I1(buf_data2[31]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4145));
    defparam mux_1481_i8_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6736_3_lut (.I0(n4145), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9845));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6736_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7792_3_lut (.I0(req_data_cnt[13]), .I1(n14_adj_1202), .I2(n8253), 
            .I3(M_MOSI4), .O(n10903));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7792_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1469_i2_4_lut (.I0(buf_adcdata4[17]), .I1(buf_data2[68]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4107));
    defparam mux_1469_i2_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6722_3_lut (.I0(n4107), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9831));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6722_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1469_i3_4_lut (.I0(buf_adcdata4[18]), .I1(buf_data2[72]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(comm_buf_3__7__N_501[2]));
    defparam mux_1469_i3_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1885_3_lut (.I0(comm_buf_3__7__N_501[2]), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n4994));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1885_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12638_2_lut (.I0(comm_index[1]), .I1(comm_index[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15670));
    defparam i12638_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i34_4_lut (.I0(n4075), .I1(n15670), .I2(comm_state[1]), .I3(n13475), 
            .O(n15_adj_1203));
    defparam i34_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i12098_3_lut_4_lut (.I0(comm_cmd[0]), .I1(n12), .I2(n4_adj_1041), 
            .I3(n8), .O(n15188));   // zimaux_main.vhd(688[11:20])
    defparam i12098_3_lut_4_lut.LUT_INIT = 16'hdfdd;
    SB_LUT4 mux_1469_i4_4_lut (.I0(buf_adcdata4[19]), .I1(buf_data2[76]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(comm_buf_3__7__N_501[3]));
    defparam mux_1469_i4_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1905_3_lut (.I0(comm_buf_3__7__N_501[3]), .I1(comm_rx_buf[3]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n5014));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1905_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2992_3_lut_4_lut (.I0(comm_cmd[0]), .I1(n12), .I2(comm_state[0]), 
            .I3(n8), .O(n6301));   // zimaux_main.vhd(688[11:20])
    defparam i2992_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i22_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[1]), 
            .I3(comm_state[0]), .O(n7_adj_1190));   // zimaux_main.vhd(493[5] 500[12])
    defparam i22_3_lut_4_lut.LUT_INIT = 16'h0f20;
    SB_LUT4 i12087_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n15290));   // zimaux_main.vhd(493[5] 500[12])
    defparam i12087_2_lut_3_lut.LUT_INIT = 16'h2020;
    SB_LUT4 mux_1469_i5_4_lut (.I0(buf_adcdata4[20]), .I1(buf_data2[80]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4104));
    defparam mux_1469_i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_385_Mux_4_i6_3_lut (.I0(n4104), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1247));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_385_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1704_2_lut_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_index[1]), .I3(comm_index[0]), .O(n4814));   // zimaux_main.vhd(493[5] 500[12])
    defparam i1704_2_lut_3_lut_4_lut.LUT_INIT = 16'h2000;
    SB_LUT4 mux_1469_i6_4_lut (.I0(buf_adcdata4[21]), .I1(buf_data2[84]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4103));
    defparam mux_1469_i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1702_2_lut_3_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_index[1]), .I3(comm_index[0]), .O(comm_index_3__N_429[1]));   // zimaux_main.vhd(493[5] 500[12])
    defparam i1702_2_lut_3_lut_4_lut.LUT_INIT = 16'hd2f0;
    SB_LUT4 i12817_4_lut_4_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_state[2]), 
            .I3(comm_state[1]), .O(n15527));   // zimaux_main.vhd(493[5] 500[12])
    defparam i12817_4_lut_4_lut.LUT_INIT = 16'h002c;
    SB_LUT4 i1_2_lut_3_lut_adj_196 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_cmd[7]), .I3(M_MOSI4), .O(n5_adj_1235));   // zimaux_main.vhd(493[5] 500[12])
    defparam i1_2_lut_3_lut_adj_196.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_385_Mux_5_i6_3_lut (.I0(n4103), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1254));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_385_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_208_i13_2_lut_3_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(n12), .O(n13_adj_1025));   // zimaux_main.vhd(675[11:20])
    defparam equal_208_i13_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i12_4_lut_adj_197 (.I0(cmd_rdadctmp_adj_1286[27]), .I1(cmd_rdadctmp_adj_1286[26]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14876));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_197.LUT_INIT = 16'hca0a;
    SB_LUT4 i1694_2_lut_3_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(comm_index[0]), 
            .I3(M_MOSI4), .O(comm_index_3__N_429[0]));   // zimaux_main.vhd(493[5] 500[12])
    defparam i1694_2_lut_3_lut.LUT_INIT = 16'hd2d2;
    SB_LUT4 mux_1469_i7_4_lut (.I0(buf_adcdata4[22]), .I1(buf_data2[88]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4102));
    defparam mux_1469_i7_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_385_Mux_6_i6_3_lut (.I0(n4102), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1252));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_385_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9546_2_lut_3_lut_3_lut_3_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(M_MOSI4), .O(n12702));   // zimaux_main.vhd(675[11:20])
    defparam i9546_2_lut_3_lut_3_lut_3_lut.LUT_INIT = 16'heded;
    SB_LUT4 i1_4_lut_adj_198 (.I0(M_CS4), .I1(adc_state_adj_1331[1]), .I2(DTRIG_N_957_adj_1150), 
            .I3(adc_state_adj_1331[0]), .O(n14));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_198.LUT_INIT = 16'h4554;
    SB_LUT4 i12_4_lut_adj_199 (.I0(cmd_rdadctmp_adj_1286[25]), .I1(cmd_rdadctmp_adj_1286[24]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14872));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_199.LUT_INIT = 16'hca0a;
    SB_LUT4 i7491_2_lut (.I0(n8787), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10599));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7491_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12972_2_lut (.I0(n13475), .I1(comm_index[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15802));
    defparam i12972_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_200 (.I0(M_CS3), .I1(adc_state_adj_1308[1]), .I2(DTRIG_N_957_adj_1114), 
            .I3(adc_state_adj_1308[0]), .O(n14_adj_1031));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_200.LUT_INIT = 16'h4554;
    SB_LUT4 i30_4_lut (.I0(n4075), .I1(n15802), .I2(comm_state[1]), .I3(comm_index[0]), 
            .O(n10_adj_1249));
    defparam i30_4_lut.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_201 (.I0(comm_state[0]), .I1(n15131), .I2(n15221), 
            .I3(n10_adj_1249), .O(n8787));
    defparam i1_4_lut_adj_201.LUT_INIT = 16'hc4c0;
    SB_LUT4 mux_1469_i8_4_lut (.I0(buf_adcdata4[23]), .I1(buf_data2[92]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4101));
    defparam mux_1469_i8_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i13026_4_lut (.I0(M_DRDY3), .I1(n14_adj_1031), .I2(n15162), 
            .I3(adc_state_adj_1308[0]), .O(n11_adj_1030));   // adc_ads127.vhd(34[3] 89[10])
    defparam i13026_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 comm_state_3__I_0_385_Mux_7_i6_3_lut (.I0(n4101), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1251));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_385_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_202 (.I0(cmd_rdadctmp_adj_1286[26]), .I1(cmd_rdadctmp_adj_1286[25]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14874));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_202.LUT_INIT = 16'hca0a;
    SB_LUT4 i12_4_lut_adj_203 (.I0(cmd_rdadctmp_adj_1309[0]), .I1(M_MISO3), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14658));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_203.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1457_i2_4_lut (.I0(buf_adcdata4[9]), .I1(buf_data2[36]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4063));
    defparam mux_1457_i2_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_386_Mux_1_i6_3_lut (.I0(n4063), .I1(comm_rx_buf[1]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1248));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1457_i3_4_lut (.I0(buf_adcdata4[10]), .I1(buf_data2[40]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4062));
    defparam mux_1457_i3_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12_4_lut_adj_204 (.I0(cmd_rdadctmp_adj_1332[0]), .I1(M_MISO4), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14662));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_204.LUT_INIT = 16'hca0a;
    SB_LUT4 i13017_4_lut (.I0(M_DRDY4), .I1(n14), .I2(n15156), .I3(adc_state_adj_1331[0]), 
            .O(n11));   // adc_ads127.vhd(34[3] 89[10])
    defparam i13017_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 comm_state_3__I_0_386_Mux_2_i6_3_lut (.I0(n4062), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1246));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7793_3_lut (.I0(req_data_cnt[14]), .I1(n14_adj_1206), .I2(n8253), 
            .I3(M_MOSI4), .O(n10904));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7793_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1457_i4_4_lut (.I0(buf_adcdata4[11]), .I1(buf_data2[44]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4061));
    defparam mux_1457_i4_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12766_2_lut (.I0(dds_state[2]), .I1(bit_cnt_adj_1353[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15640));   // dds_ad9837.vhd(23[9:18])
    defparam i12766_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 secclk_cnt_1601_1602_add_4_12_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[10]), .I3(n14018), .O(n110)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_12_lut.LUT_INIT = 16'hC33C;
    SB_DFFSR secclk_cnt_1601_1602__i2 (.Q(secclk_cnt[1]), .C(clk_16MHz), 
            .D(n119), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i12_4_lut_adj_205 (.I0(cmd_rdadctmp_adj_1286[24]), .I1(cmd_rdadctmp_adj_1286[23]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14870));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_205.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_386_Mux_3_i6_3_lut (.I0(n4061), .I1(comm_rx_buf[3]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1245));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_206 (.I0(cmd_rdadctmp_adj_1332[8]), .I1(cmd_rdadctmp_adj_1332[7]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14674));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_206.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_207 (.I0(M_CS2), .I1(adc_state_adj_1285[1]), .I2(DTRIG_N_957_adj_1077), 
            .I3(adc_state_adj_1285[0]), .O(n14_adj_1035));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_207.LUT_INIT = 16'h4554;
    SB_LUT4 i8909_4_lut (.I0(dds_state[0]), .I1(n15640), .I2(dds_state[1]), 
            .I3(n10_adj_1172), .O(dds_state_2__N_963[0]));   // dds_ad9837.vhd(23[9:18])
    defparam i8909_4_lut.LUT_INIT = 16'hc505;
    SB_LUT4 comm_cmd_6__I_0_407_i13_2_lut_3_lut_4_lut (.I0(comm_cmd[0]), .I1(comm_cmd[1]), 
            .I2(comm_cmd[2]), .I3(n12_adj_1027), .O(n13_adj_1032));   // zimaux_main.vhd(675[11:20])
    defparam comm_cmd_6__I_0_407_i13_2_lut_3_lut_4_lut.LUT_INIT = 16'hfffd;
    SB_LUT4 i13032_4_lut (.I0(M_DRDY2), .I1(n14_adj_1035), .I2(n15165), 
            .I3(adc_state_adj_1285[0]), .O(n11_adj_1033));   // adc_ads127.vhd(34[3] 89[10])
    defparam i13032_4_lut.LUT_INIT = 16'h3323;
    SB_DFFE buf_dds_i1 (.Q(buf_dds[1]), .C(clk_32MHz), .E(VCC_net), .D(n11448));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE buf_dds_i2 (.Q(buf_dds[2]), .C(clk_32MHz), .E(VCC_net), .D(n11445));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12_4_lut_adj_208 (.I0(cmd_rdadctmp_adj_1286[28]), .I1(cmd_rdadctmp_adj_1286[27]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14878));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_208.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_209 (.I0(n13), .I1(comm_state[3]), .I2(n6791), 
            .I3(comm_state[0]), .O(n8253));
    defparam i1_4_lut_adj_209.LUT_INIT = 16'hc0c4;
    SB_LUT4 i12_4_lut_adj_210 (.I0(cmd_rdadctmp_adj_1332[5]), .I1(cmd_rdadctmp_adj_1332[4]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14660));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_210.LUT_INIT = 16'hca0a;
    SB_LUT4 i7794_3_lut (.I0(req_data_cnt[15]), .I1(n14_adj_1205), .I2(n8253), 
            .I3(M_MOSI4), .O(n10905));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7794_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_211 (.I0(cmd_rdadctmp_adj_1332[4]), .I1(cmd_rdadctmp_adj_1332[3]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14656));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_211.LUT_INIT = 16'hca0a;
    SB_LUT4 mux_1457_i5_4_lut (.I0(buf_adcdata4[12]), .I1(buf_data2[48]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4060));
    defparam mux_1457_i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12_4_lut_adj_212 (.I0(cmd_rdadctmp_adj_1286[29]), .I1(cmd_rdadctmp_adj_1286[28]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14882));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_212.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds_i3 (.Q(buf_dds[3]), .C(clk_32MHz), .E(VCC_net), .D(n11442));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE buf_dds_i4 (.Q(buf_dds[4]), .C(clk_32MHz), .E(VCC_net), .D(n11440));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_4_i6_3_lut (.I0(n4060), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1244));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_213 (.I0(cmd_rdadctmp_adj_1332[12]), .I1(cmd_rdadctmp_adj_1332[11]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14686));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_213.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_3_lut_4_lut (.I0(n9), .I1(comm_cmd[3]), .I2(n8085), 
            .I3(n9_adj_1028), .O(n5_adj_1282));   // zimaux_main.vhd(683[11:20])
    defparam i1_2_lut_3_lut_4_lut.LUT_INIT = 16'hfbf8;
    SB_DFFE buf_dds_i5 (.Q(buf_dds[5]), .C(clk_32MHz), .E(VCC_net), .D(n11437));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE buf_dds_i6 (.Q(buf_dds[6]), .C(clk_32MHz), .E(VCC_net), .D(n11435));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 mux_1457_i6_4_lut (.I0(buf_adcdata4[13]), .I1(buf_data2[52]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4059));
    defparam mux_1457_i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFE buf_dds_i7 (.Q(buf_dds[7]), .C(clk_32MHz), .E(VCC_net), .D(n11432));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_5_i6_3_lut (.I0(n4059), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1243));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_214 (.I0(cmd_rdadctmp_adj_1332[3]), .I1(cmd_rdadctmp_adj_1332[2]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14654));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_214.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds_i8 (.Q(buf_dds[8]), .C(clk_32MHz), .E(VCC_net), .D(n11429));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_215 (.I0(n9), .I1(comm_cmd[3]), .I2(n8085), 
            .I3(n8062), .O(n7485));   // zimaux_main.vhd(683[11:20])
    defparam i1_2_lut_3_lut_4_lut_adj_215.LUT_INIT = 16'h0400;
    SB_DFFE buf_dds_i9 (.Q(buf_dds[9]), .C(clk_32MHz), .E(VCC_net), .D(n11426));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut (.I0(comm_cmd[1]), .I1(n15834), .I2(n15835), 
            .I3(comm_cmd[3]), .O(n16524));
    defparam comm_cmd_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 n16524_bdd_4_lut (.I0(n16524), .I1(n15479), .I2(n15478), .I3(comm_cmd[3]), 
            .O(n16527));
    defparam n16524_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE buf_dds_i10 (.Q(buf_dds[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11423));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE buf_dds_i11 (.Q(buf_dds[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11420));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_3_lut_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[3]), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n8129));
    defparam i1_3_lut_4_lut_4_lut.LUT_INIT = 16'hcfcb;
    SB_LUT4 mux_1457_i7_4_lut (.I0(buf_adcdata4[14]), .I1(buf_data2[56]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4058));
    defparam mux_1457_i7_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_386_Mux_6_i6_3_lut (.I0(n4058), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1241));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_3_lut (.I0(comm_state[3]), .I1(comm_state[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n8117));
    defparam i2_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 i1_2_lut_3_lut_adj_216 (.I0(comm_state[1]), .I1(comm_state[2]), 
            .I2(comm_state[3]), .I3(M_MOSI4), .O(n1));
    defparam i1_2_lut_3_lut_adj_216.LUT_INIT = 16'h1010;
    SB_LUT4 i7498_2_lut (.I0(n8823), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10604));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7498_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12761_2_lut (.I0(n13457), .I1(n41), .I2(M_MOSI4), .I3(M_MOSI4), 
            .O(n15565));
    defparam i12761_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE buf_dds_i12 (.Q(buf_dds[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11417));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12_4_lut_adj_217 (.I0(cmd_rdadctmp_adj_1332[2]), .I1(cmd_rdadctmp_adj_1332[1]), 
            .I2(n9694), .I3(adc_state_adj_1331[0]), .O(n14652));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_217.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_218 (.I0(adc_state_adj_1331[1]), .I1(DTRIG_N_957_adj_1150), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15156));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_218.LUT_INIT = 16'h2222;
    SB_LUT4 comm_index_0__bdd_4_lut (.I0(comm_index[0]), .I1(\comm_buf[6] [6]), 
            .I2(\comm_buf[7] [6]), .I3(comm_index[1]), .O(n16518));
    defparam comm_index_0__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i20_4_lut (.I0(n4075), .I1(n15565), .I2(comm_state[1]), .I3(comm_state[0]), 
            .O(n13_adj_1257));
    defparam i20_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFE buf_dds_i13 (.Q(buf_dds[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11414));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 n16518_bdd_4_lut (.I0(n16518), .I1(\comm_buf[5] [6]), .I2(\comm_buf[4] [6]), 
            .I3(comm_index[1]), .O(n16521));
    defparam n16518_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_3_lut_adj_219 (.I0(n13_adj_1257), .I1(n15131), .I2(n15221), 
            .I3(M_MOSI4), .O(n8823));
    defparam i1_3_lut_adj_219.LUT_INIT = 16'hc8c8;
    SB_LUT4 comm_index_0__bdd_4_lut_13284 (.I0(comm_index[0]), .I1(\comm_buf[6] [1]), 
            .I2(\comm_buf[7] [1]), .I3(comm_index[1]), .O(n16512));
    defparam comm_index_0__bdd_4_lut_13284.LUT_INIT = 16'he4aa;
    SB_DFFE buf_dds_i14 (.Q(buf_dds[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11412));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 n16512_bdd_4_lut (.I0(n16512), .I1(\comm_buf[5] [1]), .I2(\comm_buf[4] [1]), 
            .I3(comm_index[1]), .O(n16515));
    defparam n16512_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 mux_1457_i8_4_lut (.I0(buf_adcdata4[15]), .I1(buf_data2[60]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4057));
    defparam mux_1457_i8_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i12_4_lut_adj_220 (.I0(cmd_rdadctmp_adj_1286[0]), .I1(M_MISO2), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14650));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_220.LUT_INIT = 16'hca0a;
    SB_DFFE buf_dds_i15 (.Q(buf_dds[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n11409));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_386_Mux_7_i6_3_lut (.I0(n4057), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1239));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_386_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_221 (.I0(comm_cmd[1]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[1]), .O(n14362));   // zimaux_main.vhd(465[3] 709[10])
    defparam i11_4_lut_adj_221.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_index_0__bdd_4_lut_13279 (.I0(comm_index[0]), .I1(\comm_buf[6] [0]), 
            .I2(\comm_buf[7] [0]), .I3(comm_index[1]), .O(n16506));
    defparam comm_index_0__bdd_4_lut_13279.LUT_INIT = 16'he4aa;
    SB_DFFE comm_cmd_i1 (.Q(comm_cmd[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14362));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 n16506_bdd_4_lut (.I0(n16506), .I1(\comm_buf[5] [0]), .I2(\comm_buf[4] [0]), 
            .I3(comm_index[1]), .O(n16509));
    defparam n16506_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFE comm_cmd_i2 (.Q(comm_cmd[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14364));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_54_9_lut (.I0(M_MOSI4), .I1(data_cntvec[7]), .I2(M_MOSI4), 
            .I3(n13957), .O(n386)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_1525_i2_4_lut (.I0(buf_adcdata4[1]), .I1(buf_data2[4]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4307));
    defparam mux_1525_i2_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_adj_222 (.I0(M_CS1), .I1(adc_state[1]), .I2(DTRIG_N_957), 
            .I3(adc_state[0]), .O(n14_adj_1039));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_adj_222.LUT_INIT = 16'h4554;
    SB_LUT4 comm_state_3__I_0_387_Mux_1_i6_3_lut (.I0(n4307), .I1(comm_rx_buf[1]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1237));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_387_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i3 (.Q(comm_cmd[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14366));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_378_Mux_1_i2_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1523), .I2(comm_state[0]), .I3(ICE_SPI_CE0), .O(n2_adj_1200));   // zimaux_main.vhd(701[5] 703[12])
    defparam comm_state_3__I_0_378_Mux_1_i2_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 mux_1525_i3_4_lut (.I0(buf_adcdata4[2]), .I1(buf_data2[8]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4306));
    defparam mux_1525_i3_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 comm_state_3__I_0_378_Mux_1_i8_3_lut_4_lut (.I0(comm_state[1]), 
            .I1(n1523), .I2(comm_state[0]), .I3(comm_state_3__N_402[3]), 
            .O(n8_adj_1201));   // zimaux_main.vhd(701[5] 703[12])
    defparam comm_state_3__I_0_378_Mux_1_i8_3_lut_4_lut.LUT_INIT = 16'h202f;
    SB_LUT4 i13035_4_lut (.I0(M_DRDY1), .I1(n14_adj_1039), .I2(n15168), 
            .I3(adc_state[0]), .O(n11_adj_1038));   // adc_ads127.vhd(34[3] 89[10])
    defparam i13035_4_lut.LUT_INIT = 16'h3323;
    SB_LUT4 comm_state_3__I_0_387_Mux_2_i6_3_lut (.I0(n4306), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1236));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_387_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i4 (.Q(comm_cmd[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14368));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_3_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n22_adj_1078));   // zimaux_main.vhd(663[5] 695[14])
    defparam i1_3_lut_4_lut.LUT_INIT = 16'h4f00;
    SB_LUT4 mux_1525_i4_4_lut (.I0(buf_adcdata4[3]), .I1(buf_data2[12]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4305));
    defparam mux_1525_i4_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i7018_3_lut (.I0(n4305), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10128));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7018_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE comm_cmd_i5 (.Q(comm_cmd[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14370));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7732_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n6791), .I2(n8250), 
            .I3(acadc_skipCount[0]), .O(n10843));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7732_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i12_4_lut_adj_223 (.I0(cmd_rdadctmp_adj_1309[31]), .I1(cmd_rdadctmp_adj_1309[30]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14646));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_223.LUT_INIT = 16'hca0a;
    SB_DFFE comm_cmd_i6 (.Q(comm_cmd[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14372));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFE comm_cmd_i7 (.Q(comm_cmd[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14374));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 mux_1525_i5_4_lut (.I0(buf_adcdata4[4]), .I1(buf_data2[16]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4304));
    defparam mux_1525_i5_4_lut.LUT_INIT = 16'hc0ca;
    SB_CARRY secclk_cnt_1601_1602_add_4_12 (.CI(n14018), .I0(M_MOSI4), .I1(secclk_cnt[10]), 
            .CO(n14019));
    SB_CARRY add_54_9 (.CI(n13957), .I0(data_cntvec[7]), .I1(M_MOSI4), 
            .CO(n13958));
    SB_LUT4 add_54_8_lut (.I0(M_MOSI4), .I1(data_cntvec[6]), .I2(M_MOSI4), 
            .I3(n13956), .O(n387)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 secclk_cnt_1601_1602_add_4_11_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[9]), .I3(n14017), .O(n111)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_11 (.CI(n14017), .I0(M_MOSI4), .I1(secclk_cnt[9]), 
            .CO(n14018));
    SB_LUT4 i7014_3_lut (.I0(n4304), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10124));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7014_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_395_Mux_0_i15_3_lut_4_lut (.I0(\comm_buf[1] [0]), 
            .I1(n6791), .I2(comm_state[3]), .I3(data_idxvec_15__N_673[0]), 
            .O(data_idxvec_15__N_268[0]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_395_Mux_0_i15_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 mux_1525_i6_4_lut (.I0(buf_adcdata4[5]), .I1(buf_data2[20]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4303));
    defparam mux_1525_i6_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 secclk_cnt_1601_1602_add_4_10_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[8]), .I3(n14016), .O(n112)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_5_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[3]), .I2(M_MOSI4), 
            .I3(n13968), .O(n440)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_10 (.CI(n14016), .I0(M_MOSI4), .I1(secclk_cnt[8]), 
            .CO(n14017));
    SB_LUT4 secclk_cnt_1601_1602_add_4_9_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[7]), .I3(n14015), .O(n113)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_9 (.CI(n14015), .I0(M_MOSI4), .I1(secclk_cnt[7]), 
            .CO(n14016));
    SB_LUT4 secclk_cnt_1601_1602_add_4_8_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[6]), .I3(n14014), .O(n114)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_8 (.CI(n14014), .I0(M_MOSI4), .I1(secclk_cnt[6]), 
            .CO(n14015));
    SB_LUT4 secclk_cnt_1601_1602_add_4_7_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[5]), .I3(n14013), .O(n115)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_7 (.CI(n14013), .I0(M_MOSI4), .I1(secclk_cnt[5]), 
            .CO(n14014));
    SB_CARRY add_58_5 (.CI(n13968), .I0(acadc_skipcnt[3]), .I1(M_MOSI4), 
            .CO(n13969));
    SB_LUT4 i7010_3_lut (.I0(n4303), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10120));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7010_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_58_4_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[2]), .I2(M_MOSI4), 
            .I3(n13967), .O(n441)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_adj_224 (.I0(adc_state[1]), .I1(DTRIG_N_957), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15168));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_224.LUT_INIT = 16'h2222;
    SB_LUT4 i7740_3_lut_4_lut (.I0(\comm_buf[1] [0]), .I1(n6791), .I2(n8253), 
            .I3(req_data_cnt[0]), .O(n10851));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7740_3_lut_4_lut.LUT_INIT = 16'h2f20;
    SB_LUT4 i12_4_lut_adj_225 (.I0(cmd_rdadctmp[0]), .I1(M_MISO1), .I2(n8272), 
            .I3(adc_state[0]), .O(n14644));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_225.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_cmd_1__bdd_4_lut_13289 (.I0(comm_cmd[1]), .I1(n15811), 
            .I2(n15812), .I3(comm_cmd[3]), .O(n16500));
    defparam comm_cmd_1__bdd_4_lut_13289.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_1525_i7_4_lut (.I0(buf_adcdata4[6]), .I1(buf_data2[24]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4302));
    defparam mux_1525_i7_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i7002_3_lut (.I0(n4302), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10112));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7002_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_2_lut_3_lut_adj_226 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(comm_state[0]), .I3(M_MOSI4), .O(n6_adj_1175));
    defparam i2_2_lut_3_lut_adj_226.LUT_INIT = 16'hefef;
    SB_LUT4 i12_4_lut_adj_227 (.I0(cmd_rdadctmp[2]), .I1(cmd_rdadctmp[1]), 
            .I2(n8272), .I3(adc_state[0]), .O(n14694));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_227.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_2_lut_adj_228 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n93));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_2_lut_adj_228.LUT_INIT = 16'heeee;
    SB_LUT4 secclk_cnt_1601_1602_add_4_6_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[4]), .I3(n14012), .O(n116)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_6 (.CI(n14012), .I0(M_MOSI4), .I1(secclk_cnt[4]), 
            .CO(n14013));
    SB_LUT4 i1_2_lut_3_lut_adj_229 (.I0(comm_state[3]), .I1(comm_state[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n15245));
    defparam i1_2_lut_3_lut_adj_229.LUT_INIT = 16'hefef;
    SB_LUT4 secclk_cnt_1601_1602_add_4_5_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[3]), .I3(n14011), .O(n117)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12836_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n15651));
    defparam i12836_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_CARRY secclk_cnt_1601_1602_add_4_5 (.CI(n14011), .I0(M_MOSI4), .I1(secclk_cnt[3]), 
            .CO(n14012));
    SB_LUT4 secclk_cnt_1601_1602_add_4_4_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[2]), .I3(n14010), .O(n118)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_230 (.I0(n14_adj_1152), .I1(n8043), .I2(n15651), 
            .I3(comm_cmd[3]), .O(n4075));
    defparam i1_4_lut_adj_230.LUT_INIT = 16'hc088;
    SB_CARRY secclk_cnt_1601_1602_add_4_4 (.CI(n14010), .I0(M_MOSI4), .I1(secclk_cnt[2]), 
            .CO(n14011));
    SB_LUT4 secclk_cnt_1601_1602_add_4_3_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[1]), .I3(n14009), .O(n119)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_3 (.CI(n14009), .I0(M_MOSI4), .I1(secclk_cnt[1]), 
            .CO(n14010));
    SB_LUT4 i7505_2_lut (.I0(n8847), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10611));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7505_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_231 (.I0(comm_index[2]), .I1(comm_index[3]), 
            .I2(n5_adj_1235), .I3(comm_state[0]), .O(n13470));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut_3_lut_4_lut_adj_231.LUT_INIT = 16'h0040;
    SB_LUT4 i22_4_lut_adj_232 (.I0(n4075), .I1(n15567), .I2(comm_state[1]), 
            .I3(comm_index[2]), .O(n7_adj_1255));
    defparam i22_4_lut_adj_232.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_4_lut_adj_233 (.I0(comm_state[0]), .I1(n15131), .I2(n15221), 
            .I3(n7_adj_1255), .O(n8847));
    defparam i1_4_lut_adj_233.LUT_INIT = 16'hc4c0;
    SB_LUT4 i1_2_lut_3_lut_4_lut_adj_234 (.I0(comm_index[2]), .I1(comm_index[3]), 
            .I2(n5_adj_1235), .I3(n5), .O(n15161));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut_3_lut_4_lut_adj_234.LUT_INIT = 16'h0040;
    SB_LUT4 mux_1525_i8_4_lut (.I0(buf_adcdata4[7]), .I1(buf_data2[28]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4301));
    defparam mux_1525_i8_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6994_3_lut (.I0(n4301), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10104));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6994_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 secclk_cnt_1601_1602_add_4_2_lut (.I0(M_MOSI4), .I1(M_MOSI4), 
            .I2(secclk_cnt[0]), .I3(VCC_net), .O(n120)) /* synthesis syn_instantiated=1 */ ;
    defparam secclk_cnt_1601_1602_add_4_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY secclk_cnt_1601_1602_add_4_2 (.CI(VCC_net), .I0(M_MOSI4), .I1(secclk_cnt[0]), 
            .CO(n14009));
    SB_LUT4 i6972_3_lut (.I0(buf_data2[69]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10081));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6972_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6956_3_lut (.I0(buf_data2[73]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10065));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6956_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6952_3_lut (.I0(buf_data2[77]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10061));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6952_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_58_4 (.CI(n13967), .I0(acadc_skipcnt[2]), .I1(M_MOSI4), 
            .CO(n13968));
    SB_CARRY add_54_8 (.CI(n13956), .I0(data_cntvec[6]), .I1(M_MOSI4), 
            .CO(n13957));
    SB_LUT4 add_58_3_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[1]), .I2(M_MOSI4), 
            .I3(n13966), .O(n442)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i6938_3_lut (.I0(buf_data2[81]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10047));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6938_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6924_3_lut (.I0(buf_data2[85]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10033));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6924_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6920_3_lut (.I0(buf_data2[89]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10029));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6920_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_54_7_lut (.I0(M_MOSI4), .I1(data_cntvec[5]), .I2(M_MOSI4), 
            .I3(n13955), .O(n388)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_54_7 (.CI(n13955), .I0(data_cntvec[5]), .I1(M_MOSI4), 
            .CO(n13956));
    SB_LUT4 n16500_bdd_4_lut (.I0(n16500), .I1(n15543), .I2(n15542), .I3(comm_cmd[3]), 
            .O(n16503));
    defparam n16500_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i7512_2_lut (.I0(n8907), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10618));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7512_2_lut.LUT_INIT = 16'h8888;
    SB_CARRY add_58_3 (.CI(n13966), .I0(acadc_skipcnt[1]), .I1(M_MOSI4), 
            .CO(n13967));
    SB_LUT4 add_54_6_lut (.I0(M_MOSI4), .I1(data_cntvec[4]), .I2(M_MOSI4), 
            .I3(n13954), .O(n389)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_2_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[0]), .I2(M_MOSI4), 
            .I3(VCC_net), .O(n443)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_17_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[15]), .I2(M_MOSI4), 
            .I3(n13980), .O(n428)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8298_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [7]), 
            .I3(buf_dds[15]), .O(n11409));   // zimaux_main.vhd(231[9:19])
    defparam i8298_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i8301_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [6]), 
            .I3(buf_dds[14]), .O(n11412));   // zimaux_main.vhd(231[9:19])
    defparam i8301_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_4_lut_4_lut_adj_235 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [1]), 
            .I3(buf_dds[1]), .O(n11448));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_235.LUT_INIT = 16'hb380;
    SB_CARRY add_54_6 (.CI(n13954), .I0(data_cntvec[4]), .I1(M_MOSI4), 
            .CO(n13955));
    SB_LUT4 i1_4_lut_4_lut_adj_236 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [2]), 
            .I3(buf_dds[2]), .O(n11445));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_236.LUT_INIT = 16'hb380;
    SB_LUT4 add_54_5_lut (.I0(M_MOSI4), .I1(data_cntvec[3]), .I2(M_MOSI4), 
            .I3(n13953), .O(n390)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_2 (.CI(VCC_net), .I0(acadc_skipcnt[0]), .I1(M_MOSI4), 
            .CO(n13966));
    SB_LUT4 i7266_2_lut (.I0(comm_state[1]), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10363));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7266_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_54_17_lut (.I0(M_MOSI4), .I1(data_cntvec[15]), .I2(M_MOSI4), 
            .I3(n13965), .O(n378)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_54_5 (.CI(n13953), .I0(data_cntvec[3]), .I1(M_MOSI4), 
            .CO(n13954));
    SB_CARRY add_53_9 (.CI(n13948), .I0(data_count[7]), .I1(M_MOSI4), 
            .CO(n13949));
    SB_LUT4 add_54_4_lut (.I0(M_MOSI4), .I1(data_cntvec[2]), .I2(M_MOSI4), 
            .I3(n13952), .O(n391)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_4_lut_adj_237 (.I0(comm_index[0]), .I1(n15191), .I2(n15204), 
            .I3(n13458), .O(n8907));
    defparam i1_4_lut_adj_237.LUT_INIT = 16'hc4c0;
    SB_LUT4 add_54_16_lut (.I0(M_MOSI4), .I1(data_cntvec[14]), .I2(M_MOSI4), 
            .I3(n13964), .O(n379)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i11_4_lut_adj_238 (.I0(comm_cmd[0]), .I1(n10363), .I2(n8618), 
            .I3(comm_rx_buf[0]), .O(n14354));   // zimaux_main.vhd(465[3] 709[10])
    defparam i11_4_lut_adj_238.LUT_INIT = 16'hca0a;
    SB_LUT4 add_58_16_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[14]), .I2(M_MOSI4), 
            .I3(n13979), .O(n429)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_16 (.CI(n13979), .I0(acadc_skipcnt[14]), .I1(M_MOSI4), 
            .CO(n13980));
    SB_LUT4 i12_4_lut_adj_239 (.I0(cmd_rdadctmp_adj_1309[30]), .I1(cmd_rdadctmp_adj_1309[29]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14642));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_239.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1441_17_lut (.I0(n14_adj_1205), .I1(data_idxvec[15]), .I2(comm_state[3]), 
            .I3(n14054), .O(data_idxvec_15__N_268[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_17_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_1441_16_lut (.I0(n14_adj_1206), .I1(data_idxvec[14]), .I2(comm_state[3]), 
            .I3(n14053), .O(data_idxvec_15__N_268[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_16_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i6916_3_lut (.I0(buf_data2[93]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10025));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6916_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6912_3_lut (.I0(buf_data2[37]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10021));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6912_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_54_16 (.CI(n13964), .I0(data_cntvec[14]), .I1(M_MOSI4), 
            .CO(n13965));
    SB_LUT4 i6908_3_lut (.I0(buf_data2[41]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10017));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6908_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n24));   // zimaux_main.vhd(663[5] 695[14])
    defparam i1_2_lut_3_lut_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i6892_3_lut (.I0(buf_data2[45]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n10001));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6892_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut_4_lut_adj_240 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [0]), 
            .I3(buf_dds[0]), .O(n11484));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_240.LUT_INIT = 16'hb380;
    SB_LUT4 i6876_3_lut (.I0(buf_data2[49]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9985));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6876_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_54_15_lut (.I0(M_MOSI4), .I1(data_cntvec[13]), .I2(M_MOSI4), 
            .I3(n13963), .O(n380)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_58_15_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[13]), .I2(M_MOSI4), 
            .I3(n13978), .O(n430)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_54_15 (.CI(n13963), .I0(data_cntvec[13]), .I1(M_MOSI4), 
            .CO(n13964));
    SB_LUT4 i1_4_lut_4_lut_adj_241 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [4]), 
            .I3(buf_dds[4]), .O(n11440));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_241.LUT_INIT = 16'hb380;
    SB_LUT4 i6872_3_lut (.I0(buf_data2[53]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9981));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6872_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_54_4 (.CI(n13952), .I0(data_cntvec[2]), .I1(M_MOSI4), 
            .CO(n13953));
    SB_CARRY add_1441_16 (.CI(n14053), .I0(data_idxvec[14]), .I1(comm_state[3]), 
            .CO(n14054));
    SB_LUT4 add_54_14_lut (.I0(M_MOSI4), .I1(data_cntvec[12]), .I2(M_MOSI4), 
            .I3(n13962), .O(n381)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_58_15 (.CI(n13978), .I0(acadc_skipcnt[13]), .I1(M_MOSI4), 
            .CO(n13979));
    SB_LUT4 add_1441_15_lut (.I0(n14_adj_1202), .I1(data_idxvec[13]), .I2(comm_state[3]), 
            .I3(n14052), .O(data_idxvec_15__N_268[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_15_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 add_54_3_lut (.I0(M_MOSI4), .I1(data_cntvec[1]), .I2(M_MOSI4), 
            .I3(n13951), .O(n392)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1441_15 (.CI(n14052), .I0(data_idxvec[13]), .I1(comm_state[3]), 
            .CO(n14053));
    SB_LUT4 i6868_3_lut (.I0(buf_data2[57]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9977));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6868_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1441_14_lut (.I0(n14_adj_1207), .I1(data_idxvec[12]), .I2(comm_state[3]), 
            .I3(n14051), .O(data_idxvec_15__N_268[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_14_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1441_14 (.CI(n14051), .I0(data_idxvec[12]), .I1(comm_state[3]), 
            .CO(n14052));
    SB_LUT4 equal_209_i13_2_lut_3_lut (.I0(n9_adj_1028), .I1(comm_cmd[3]), 
            .I2(n8085), .I3(M_MOSI4), .O(n13));   // zimaux_main.vhd(679[11:20])
    defparam equal_209_i13_2_lut_3_lut.LUT_INIT = 16'hfbfb;
    SB_CARRY add_54_3 (.CI(n13951), .I0(data_cntvec[1]), .I1(M_MOSI4), 
            .CO(n13952));
    SB_DFFSR secclk_cnt_1601_1602__i3 (.Q(secclk_cnt[2]), .C(clk_16MHz), 
            .D(n118), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 comm_state_3__I_0_400_i15_4_lut_4_lut (.I0(comm_state[0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(comm_state[3]), .O(ICE_GPMI_0_N_739));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_400_i15_4_lut_4_lut.LUT_INIT = 16'h0344;
    SB_LUT4 i1_4_lut_4_lut_adj_242 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [6]), 
            .I3(buf_dds[6]), .O(n11435));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_242.LUT_INIT = 16'hb380;
    SB_DFFSR secclk_cnt_1601_1602__i4 (.Q(secclk_cnt[3]), .C(clk_16MHz), 
            .D(n117), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i5 (.Q(secclk_cnt[4]), .C(clk_16MHz), 
            .D(n116), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i6 (.Q(secclk_cnt[5]), .C(clk_16MHz), 
            .D(n115), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i7 (.Q(secclk_cnt[6]), .C(clk_16MHz), 
            .D(n114), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i8 (.Q(secclk_cnt[7]), .C(clk_16MHz), 
            .D(n113), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i9 (.Q(secclk_cnt[8]), .C(clk_16MHz), 
            .D(n112), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i10 (.Q(secclk_cnt[9]), .C(clk_16MHz), 
            .D(n111), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i11 (.Q(secclk_cnt[10]), .C(clk_16MHz), 
            .D(n110), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i12 (.Q(secclk_cnt[11]), .C(clk_16MHz), 
            .D(n109_adj_1034), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i13 (.Q(secclk_cnt[12]), .C(clk_16MHz), 
            .D(n108), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i14 (.Q(secclk_cnt[13]), .C(clk_16MHz), 
            .D(n107), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i15 (.Q(secclk_cnt[14]), .C(clk_16MHz), 
            .D(n106), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i16 (.Q(secclk_cnt[15]), .C(clk_16MHz), 
            .D(n105), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i17 (.Q(secclk_cnt[16]), .C(clk_16MHz), 
            .D(n104_adj_1036), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i18 (.Q(secclk_cnt[17]), .C(clk_16MHz), 
            .D(n103), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i19 (.Q(secclk_cnt[18]), .C(clk_16MHz), 
            .D(n102), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i20 (.Q(secclk_cnt[19]), .C(clk_16MHz), 
            .D(n101), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i21 (.Q(secclk_cnt[20]), .C(clk_16MHz), 
            .D(n100), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i22 (.Q(secclk_cnt[21]), .C(clk_16MHz), 
            .D(n99_adj_1037), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFSR secclk_cnt_1601_1602__i23 (.Q(secclk_cnt[22]), .C(clk_16MHz), 
            .D(n98), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i1_4_lut_4_lut_adj_243 (.I0(comm_state[3]), .I1(n6791), .I2(n15_adj_1203), 
            .I3(n15176), .O(n8763));
    defparam i1_4_lut_4_lut_adj_243.LUT_INIT = 16'hd888;
    SB_LUT4 i1_4_lut_4_lut_adj_244 (.I0(n1), .I1(n8525), .I2(\comm_buf[1] [7]), 
            .I3(buf_dds[7]), .O(n11432));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_244.LUT_INIT = 16'hb380;
    SB_LUT4 comm_index_0__bdd_4_lut_13274 (.I0(comm_index[0]), .I1(\comm_buf[10] [7]), 
            .I2(\comm_buf[11] [7]), .I3(comm_index[1]), .O(n16494));
    defparam comm_index_0__bdd_4_lut_13274.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_245 (.I0(comm_index[1]), .I1(n13457), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13458));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_2_lut_adj_245.LUT_INIT = 16'h8888;
    SB_LUT4 i1_2_lut_adj_246 (.I0(comm_cmd[3]), .I1(n8085), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n12_adj_1027));   // zimaux_main.vhd(669[11:20])
    defparam i1_2_lut_adj_246.LUT_INIT = 16'heeee;
    SB_LUT4 i9641_2_lut_3_lut (.I0(\comm_buf[1] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1215));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9641_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i7519_2_lut (.I0(n8943), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10625));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7519_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 add_1441_13_lut (.I0(n14_adj_1208), .I1(data_idxvec[11]), .I2(comm_state[3]), 
            .I3(n14050), .O(data_idxvec_15__N_268[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_13_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1_4_lut_adj_247 (.I0(comm_index[0]), .I1(n15191), .I2(n15204), 
            .I3(n13458), .O(n8943));
    defparam i1_4_lut_adj_247.LUT_INIT = 16'hc8c0;
    SB_LUT4 i6791_3_lut (.I0(buf_data2[61]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9900));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6791_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6779_3_lut (.I0(buf_data2[5]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9888));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6779_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9642_2_lut_3_lut (.I0(\comm_buf[1] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1213));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9642_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_4_lut_adj_248 (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [0]), 
            .I3(buf_dds[8]), .O(n11429));   // zimaux_main.vhd(231[9:19])
    defparam i1_4_lut_4_lut_adj_248.LUT_INIT = 16'hb380;
    SB_LUT4 i6771_3_lut (.I0(buf_data2[9]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9880));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6771_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9638_2_lut_3_lut (.I0(\comm_buf[0] [5]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1202));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9638_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_3_lut_adj_249 (.I0(n13_adj_1032), .I1(n9011), .I2(comm_state[0]), 
            .I3(M_MOSI4), .O(n8519));
    defparam i1_3_lut_adj_249.LUT_INIT = 16'hcdcd;
    SB_LUT4 i1_4_lut_adj_250 (.I0(n8519), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n10148), .O(n8525));
    defparam i1_4_lut_adj_250.LUT_INIT = 16'ha0a2;
    SB_CARRY add_1441_13 (.CI(n14050), .I0(data_idxvec[11]), .I1(comm_state[3]), 
            .CO(n14051));
    SB_LUT4 i6763_3_lut (.I0(buf_data2[13]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9872));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6763_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_1441_12_lut (.I0(n14_adj_1209), .I1(data_idxvec[10]), .I2(comm_state[3]), 
            .I3(n14049), .O(data_idxvec_15__N_268[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_12_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i7784_3_lut_4_lut (.I0(req_data_cnt[5]), .I1(\comm_buf[1] [5]), 
            .I2(n6791), .I3(n8253), .O(n10895));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7784_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i6740_3_lut (.I0(buf_data2[17]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9849));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6740_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7782_3_lut_4_lut (.I0(req_data_cnt[3]), .I1(\comm_buf[1] [3]), 
            .I2(n6791), .I3(n8253), .O(n10893));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7782_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i13023_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(n8094), 
            .I3(M_MOSI4), .O(n729));   // zimaux_main.vhd(579[11:20])
    defparam i13023_2_lut_3_lut.LUT_INIT = 16'h0808;
    SB_LUT4 i6732_3_lut (.I0(buf_data2[21]), .I1(comm_rx_buf[5]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9841));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6732_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n16494_bdd_4_lut (.I0(n16494), .I1(\comm_buf[9] [7]), .I2(\comm_buf[8] [7]), 
            .I3(comm_index[1]), .O(n16497));
    defparam n16494_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i8315_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [1]), 
            .I3(buf_dds[9]), .O(n11426));   // zimaux_main.vhd(231[9:19])
    defparam i8315_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_CARRY add_1441_12 (.CI(n14049), .I0(data_idxvec[10]), .I1(comm_state[3]), 
            .CO(n14050));
    SB_LUT4 i6728_3_lut (.I0(buf_data2[25]), .I1(comm_rx_buf[6]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9837));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6728_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_3_lut_adj_251 (.I0(comm_cmd[0]), .I1(comm_cmd[3]), 
            .I2(n8085), .I3(M_MOSI4), .O(n8094));   // zimaux_main.vhd(579[11:20])
    defparam i1_2_lut_3_lut_adj_251.LUT_INIT = 16'hfbfb;
    SB_LUT4 i12_4_lut_adj_252 (.I0(cmd_rdadctmp_adj_1309[29]), .I1(cmd_rdadctmp_adj_1309[28]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14640));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_252.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1441_11_lut (.I0(n14_adj_1210), .I1(data_idxvec[9]), .I2(comm_state[3]), 
            .I3(n14048), .O(data_idxvec_15__N_268[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_11_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i9632_2_lut_3_lut (.I0(\comm_buf[0] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1205));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9632_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i61_2_lut (.I0(comm_index[0]), .I1(comm_index[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n41));
    defparam i61_2_lut.LUT_INIT = 16'heeee;
    SB_CARRY add_1441_11 (.CI(n14048), .I0(data_idxvec[9]), .I1(comm_state[3]), 
            .CO(n14049));
    SB_LUT4 add_1441_10_lut (.I0(n14_adj_1211), .I1(data_idxvec[8]), .I2(comm_state[3]), 
            .I3(n14047), .O(data_idxvec_15__N_268[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_10_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i17_3_lut (.I0(eis_end_N_770), .I1(eis_state[0]), .I2(eis_state[1]), 
            .I3(M_MOSI4), .O(n15328));
    defparam i17_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7526_2_lut (.I0(n8997), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10632));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7526_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i12_4_lut_adj_253 (.I0(n15171), .I1(acadc_trig), .I2(ICE_GPMO_0), 
            .I3(n15328), .O(n14486));   // zimaux_main.vhd(383[3] 460[10])
    defparam i12_4_lut_adj_253.LUT_INIT = 16'hccca;
    SB_LUT4 i12_4_lut_adj_254 (.I0(cmd_rdadctmp_adj_1286[30]), .I1(cmd_rdadctmp_adj_1286[29]), 
            .I2(n8302), .I3(adc_state_adj_1285[0]), .O(n14886));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_254.LUT_INIT = 16'hca0a;
    SB_CARRY add_1441_10 (.CI(n14047), .I0(data_idxvec[8]), .I1(comm_state[3]), 
            .CO(n14048));
    SB_LUT4 add_1441_9_lut (.I0(n14_adj_1168), .I1(data_idxvec[7]), .I2(comm_state[3]), 
            .I3(n14046), .O(data_idxvec_15__N_268[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_9_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1441_9 (.CI(n14046), .I0(data_idxvec[7]), .I1(comm_state[3]), 
            .CO(n14047));
    SB_LUT4 i1_4_lut_adj_255 (.I0(n13470), .I1(n15191), .I2(n15204), .I3(n41), 
            .O(n8997));
    defparam i1_4_lut_adj_255.LUT_INIT = 16'hc0c8;
    SB_LUT4 add_1441_8_lut (.I0(n14_adj_1169), .I1(data_idxvec[6]), .I2(comm_state[3]), 
            .I3(n14045), .O(data_idxvec_15__N_268[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_8_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1441_8 (.CI(n14045), .I0(data_idxvec[6]), .I1(comm_state[3]), 
            .CO(n14046));
    SB_LUT4 add_1441_7_lut (.I0(n14_adj_1213), .I1(data_idxvec[5]), .I2(comm_state[3]), 
            .I3(n14044), .O(data_idxvec_15__N_268[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_7_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i8312_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [2]), 
            .I3(buf_dds[10]), .O(n11423));   // zimaux_main.vhd(231[9:19])
    defparam i8312_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i9631_2_lut_3_lut (.I0(\comm_buf[0] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1206));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9631_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i8309_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [3]), 
            .I3(buf_dds[11]), .O(n11420));   // zimaux_main.vhd(231[9:19])
    defparam i8309_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 i1_3_lut_4_lut_adj_256 (.I0(comm_index[0]), .I1(comm_index[1]), 
            .I2(comm_state[1]), .I3(n13475), .O(n11_adj_1279));
    defparam i1_3_lut_4_lut_adj_256.LUT_INIT = 16'h1f0f;
    SB_LUT4 i6718_3_lut (.I0(buf_data2[29]), .I1(comm_rx_buf[7]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9827));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6718_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9630_2_lut_3_lut (.I0(\comm_buf[0] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1207));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9630_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i6714_3_lut (.I0(buf_data2[70]), .I1(comm_rx_buf[1]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9823));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6714_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i6710_3_lut (.I0(buf_data2[74]), .I1(comm_rx_buf[2]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9819));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6710_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_53_2 (.CI(VCC_net), .I0(data_count[0]), .I1(M_MOSI4), 
            .CO(n13942));
    SB_CARRY add_1441_7 (.CI(n14044), .I0(data_idxvec[5]), .I1(comm_state[3]), 
            .CO(n14045));
    SB_LUT4 add_53_3_lut (.I0(M_MOSI4), .I1(data_count[1]), .I2(M_MOSI4), 
            .I3(n13942), .O(n374)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_53_8_lut (.I0(M_MOSI4), .I1(data_count[6]), .I2(M_MOSI4), 
            .I3(n13947), .O(n369)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_53_2_lut (.I0(M_MOSI4), .I1(data_count[0]), .I2(M_MOSI4), 
            .I3(VCC_net), .O(n375)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i9629_2_lut_3_lut (.I0(\comm_buf[0] [3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1208));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9629_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_CARRY add_53_8 (.CI(n13947), .I0(data_count[6]), .I1(M_MOSI4), 
            .CO(n13948));
    SB_CARRY add_54_14 (.CI(n13962), .I0(data_cntvec[12]), .I1(M_MOSI4), 
            .CO(n13963));
    SB_LUT4 add_54_2_lut (.I0(M_MOSI4), .I1(data_cntvec[0]), .I2(M_MOSI4), 
            .I3(VCC_net), .O(n393)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_53_5 (.CI(n13944), .I0(data_count[3]), .I1(M_MOSI4), 
            .CO(n13945));
    SB_LUT4 add_53_7_lut (.I0(M_MOSI4), .I1(data_count[5]), .I2(M_MOSI4), 
            .I3(n13946), .O(n370)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_53_4_lut (.I0(M_MOSI4), .I1(data_count[2]), .I2(M_MOSI4), 
            .I3(n13943), .O(n373)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_53_7 (.CI(n13946), .I0(data_count[5]), .I1(M_MOSI4), 
            .CO(n13947));
    SB_LUT4 add_1441_6_lut (.I0(n14_adj_1196), .I1(data_idxvec[4]), .I2(comm_state[3]), 
            .I3(n14043), .O(data_idxvec_15__N_268[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_6_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_54_2 (.CI(VCC_net), .I0(data_cntvec[0]), .I1(M_MOSI4), 
            .CO(n13951));
    SB_LUT4 add_54_13_lut (.I0(M_MOSI4), .I1(data_cntvec[11]), .I2(M_MOSI4), 
            .I3(n13961), .O(n382)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i8306_4_lut_4_lut (.I0(n1), .I1(n8525), .I2(\comm_buf[0] [4]), 
            .I3(buf_dds[12]), .O(n11417));   // zimaux_main.vhd(231[9:19])
    defparam i8306_4_lut_4_lut.LUT_INIT = 16'hb380;
    SB_LUT4 add_53_6_lut (.I0(M_MOSI4), .I1(data_count[4]), .I2(M_MOSI4), 
            .I3(n13945), .O(n371)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1441_6 (.CI(n14043), .I0(data_idxvec[4]), .I1(comm_state[3]), 
            .CO(n14044));
    SB_LUT4 i7739_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [0]), 
            .I3(buf_control[0]), .O(n10850));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7739_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 add_53_10_lut (.I0(M_MOSI4), .I1(data_count[8]), .I2(M_MOSI4), 
            .I3(n13949), .O(n367)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_257 (.I0(cmd_rdadctmp_adj_1309[28]), .I1(cmd_rdadctmp_adj_1309[27]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14638));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_257.LUT_INIT = 16'hca0a;
    SB_CARRY add_54_13 (.CI(n13961), .I0(data_cntvec[11]), .I1(M_MOSI4), 
            .CO(n13962));
    SB_LUT4 add_58_14_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[12]), .I2(M_MOSI4), 
            .I3(n13977), .O(n431)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_1441_5_lut (.I0(n14_adj_1215), .I1(data_idxvec[3]), .I2(comm_state[3]), 
            .I3(n14042), .O(data_idxvec_15__N_268[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_5_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1441_5 (.CI(n14042), .I0(data_idxvec[3]), .I1(comm_state[3]), 
            .CO(n14043));
    SB_LUT4 i12_4_lut_adj_258 (.I0(cmd_rdadctmp_adj_1309[27]), .I1(cmd_rdadctmp_adj_1309[26]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14636));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_258.LUT_INIT = 16'hca0a;
    SB_LUT4 add_1441_4_lut (.I0(n14_adj_1197), .I1(data_idxvec[2]), .I2(comm_state[3]), 
            .I3(n14041), .O(data_idxvec_15__N_268[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_4_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1441_4 (.CI(n14041), .I0(data_idxvec[2]), .I1(comm_state[3]), 
            .CO(n14042));
    SB_LUT4 add_1441_3_lut (.I0(n14_adj_1198), .I1(data_idxvec[1]), .I2(comm_state[3]), 
            .I3(n14040), .O(data_idxvec_15__N_268[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_3_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 i1897_3_lut (.I0(buf_data2[78]), .I1(comm_rx_buf[3]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n5006));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1897_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7737_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [2]), 
            .I3(M_POW), .O(n10848));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7737_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_CARRY add_1441_3 (.CI(n14040), .I0(data_idxvec[1]), .I1(comm_state[3]), 
            .CO(n14041));
    SB_LUT4 add_1441_2_lut (.I0(M_MOSI4), .I1(data_idxvec[0]), .I2(n729), 
            .I3(M_MOSI4), .O(data_idxvec_15__N_673[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_1441_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_1441_2 (.CI(M_MOSI4), .I0(data_idxvec[0]), .I1(n729), 
            .CO(n14040));
    SB_CARRY add_53_4 (.CI(n13943), .I0(data_count[2]), .I1(M_MOSI4), 
            .CO(n13944));
    SB_CARRY add_53_6 (.CI(n13945), .I0(data_count[4]), .I1(M_MOSI4), 
            .CO(n13946));
    SB_LUT4 add_54_12_lut (.I0(M_MOSI4), .I1(data_cntvec[10]), .I2(M_MOSI4), 
            .I3(n13960), .O(n383)) /* synthesis syn_instantiated=1 */ ;
    defparam add_54_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i12_4_lut_adj_259 (.I0(cmd_rdadctmp_adj_1309[26]), .I1(cmd_rdadctmp_adj_1309[25]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14634));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_259.LUT_INIT = 16'hca0a;
    SB_LUT4 i1_3_lut_4_lut_adj_260 (.I0(comm_index[3]), .I1(n5_adj_1235), 
            .I2(comm_state[0]), .I3(comm_index[2]), .O(n13457));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_3_lut_4_lut_adj_260.LUT_INIT = 16'h0400;
    SB_LUT4 comm_index_0__bdd_4_lut_13264 (.I0(comm_index[0]), .I1(\comm_buf[10] [6]), 
            .I2(\comm_buf[11] [6]), .I3(comm_index[1]), .O(n16488));
    defparam comm_index_0__bdd_4_lut_13264.LUT_INIT = 16'he4aa;
    SB_LUT4 n16488_bdd_4_lut (.I0(n16488), .I1(\comm_buf[9] [6]), .I2(\comm_buf[8] [6]), 
            .I3(comm_index[1]), .O(n16491));
    defparam n16488_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_2_lut_3_lut_adj_261 (.I0(comm_index[3]), .I1(n5_adj_1235), 
            .I2(comm_index[2]), .I3(M_MOSI4), .O(n13475));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_2_lut_3_lut_adj_261.LUT_INIT = 16'h0404;
    SB_DFFNESR data_cntvec_i0_i15 (.Q(data_cntvec[15]), .C(clk_32MHz), .E(n9790), 
            .D(n378), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 comm_index_0__bdd_4_lut_13259 (.I0(comm_index[0]), .I1(\comm_buf[10] [5]), 
            .I2(\comm_buf[11] [5]), .I3(comm_index[1]), .O(n16482));
    defparam comm_index_0__bdd_4_lut_13259.LUT_INIT = 16'he4aa;
    SB_LUT4 i1_2_lut_adj_262 (.I0(comm_state[0]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15176));
    defparam i1_2_lut_adj_262.LUT_INIT = 16'h4444;
    SB_LUT4 i12_4_lut_adj_263 (.I0(cmd_rdadctmp_adj_1309[25]), .I1(cmd_rdadctmp_adj_1309[24]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14630));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_263.LUT_INIT = 16'hca0a;
    SB_DFFNESR data_cntvec_i0_i14 (.Q(data_cntvec[14]), .C(clk_32MHz), .E(n9790), 
            .D(n379), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i13 (.Q(data_cntvec[13]), .C(clk_32MHz), .E(n9790), 
            .D(n380), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i12 (.Q(data_cntvec[12]), .C(clk_32MHz), .E(n9790), 
            .D(n381), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i11 (.Q(data_cntvec[11]), .C(clk_32MHz), .E(n9790), 
            .D(n382), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i10 (.Q(data_cntvec[10]), .C(clk_32MHz), .E(n9790), 
            .D(n383), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i9 (.Q(data_cntvec[9]), .C(clk_32MHz), .E(n9790), 
            .D(n384), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 n16482_bdd_4_lut (.I0(n16482), .I1(\comm_buf[9] [5]), .I2(\comm_buf[8] [5]), 
            .I3(comm_index[1]), .O(n16485));
    defparam n16482_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFNESR data_cntvec_i0_i8 (.Q(data_cntvec[8]), .C(clk_32MHz), .E(n9790), 
            .D(n385), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i7 (.Q(data_cntvec[7]), .C(clk_32MHz), .E(n9790), 
            .D(n386), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i6 (.Q(data_cntvec[6]), .C(clk_32MHz), .E(n9790), 
            .D(n387), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i5 (.Q(data_cntvec[5]), .C(clk_32MHz), .E(n9790), 
            .D(n388), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i4 (.Q(data_cntvec[4]), .C(clk_32MHz), .E(n9790), 
            .D(n389), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i3 (.Q(data_cntvec[3]), .C(clk_32MHz), .E(n9790), 
            .D(n390), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i2 (.Q(data_cntvec[2]), .C(clk_32MHz), .E(n9790), 
            .D(n391), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR data_cntvec_i0_i1 (.Q(data_cntvec[1]), .C(clk_32MHz), .E(n9790), 
            .D(n392), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i12_4_lut_adj_264 (.I0(cmd_rdadctmp_adj_1309[24]), .I1(cmd_rdadctmp_adj_1309[23]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14628));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_264.LUT_INIT = 16'hca0a;
    SB_LUT4 i12752_4_lut (.I0(comm_index[1]), .I1(n5_adj_1235), .I2(n6), 
            .I3(comm_index[0]), .O(n15535));
    defparam i12752_4_lut.LUT_INIT = 16'h0400;
    SB_LUT4 i30_4_lut_adj_265 (.I0(n8094), .I1(n15535), .I2(comm_state[1]), 
            .I3(n4_adj_1041), .O(n15));
    defparam i30_4_lut_adj_265.LUT_INIT = 16'hc5c0;
    SB_LUT4 equal_206_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9_adj_1028));   // zimaux_main.vhd(679[11:20])
    defparam equal_206_i9_2_lut_3_lut.LUT_INIT = 16'hfdfd;
    SB_LUT4 comm_cmd_6__I_0_i9_2_lut_3_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n9));   // zimaux_main.vhd(679[11:20])
    defparam comm_cmd_6__I_0_i9_2_lut_3_lut.LUT_INIT = 16'hdfdf;
    SB_LUT4 i8303_4_lut_4_lut (.I0(n8525), .I1(comm_state[3]), .I2(n14_adj_1202), 
            .I3(buf_dds[13]), .O(n11414));   // zimaux_main.vhd(465[3] 709[10])
    defparam i8303_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i12_4_lut_adj_266 (.I0(cmd_rdadctmp_adj_1309[23]), .I1(cmd_rdadctmp_adj_1309[22]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14626));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_266.LUT_INIT = 16'hca0a;
    SB_LUT4 i12171_3_lut (.I0(\comm_buf[0] [7]), .I1(\comm_buf[1] [7]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15381));
    defparam i12171_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_1__bdd_4_lut (.I0(comm_index[1]), .I1(n15399), .I2(n15400), 
            .I3(comm_index[2]), .O(n16476));
    defparam comm_index_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 i12172_3_lut (.I0(\comm_buf[2] [7]), .I1(\comm_buf[3] [7]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15382));
    defparam i12172_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8326_4_lut_4_lut (.I0(n8525), .I1(comm_state[3]), .I2(n14_adj_1213), 
            .I3(buf_dds[5]), .O(n11437));   // zimaux_main.vhd(465[3] 709[10])
    defparam i8326_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i1913_3_lut (.I0(buf_data2[82]), .I1(comm_rx_buf[4]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n5022));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1913_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut_adj_267 (.I0(cmd_rdadctmp_adj_1309[22]), .I1(cmd_rdadctmp_adj_1309[21]), 
            .I2(n8332), .I3(adc_state_adj_1308[0]), .O(n14624));   // adc_ads127.vhd(34[3] 89[10])
    defparam i12_4_lut_adj_267.LUT_INIT = 16'hca0a;
    SB_LUT4 comm_state_3__I_0_391_Mux_5_i6_3_lut (.I0(buf_data2[86]), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1275));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_391_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_391_Mux_6_i6_3_lut (.I0(buf_data2[90]), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1274));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_391_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 equal_436_i5_2_lut (.I0(comm_index[0]), .I1(comm_index[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n5));   // zimaux_main.vhd(633[17:27])
    defparam equal_436_i5_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i7533_2_lut (.I0(n9027), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10639));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7533_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i8331_4_lut_4_lut (.I0(n8525), .I1(comm_state[3]), .I2(n14_adj_1215), 
            .I3(buf_dds[3]), .O(n11442));   // zimaux_main.vhd(465[3] 709[10])
    defparam i8331_4_lut_4_lut.LUT_INIT = 16'hf7a2;
    SB_LUT4 i9628_2_lut_3_lut (.I0(\comm_buf[0] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1209));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9628_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i1_4_lut_adj_268 (.I0(n15161), .I1(n15191), .I2(n15204), .I3(comm_state[0]), 
            .O(n9027));
    defparam i1_4_lut_adj_268.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12680_4_lut_4_lut (.I0(comm_cmd[3]), .I1(\comm_buf[0] [4]), 
            .I2(n8043), .I3(data_idxvec[12]), .O(n15584));   // zimaux_main.vhd(517[5] 604[14])
    defparam i12680_4_lut_4_lut.LUT_INIT = 16'he444;
    SB_LUT4 comm_state_3__I_0_391_Mux_7_i6_3_lut (.I0(buf_data2[94]), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1272));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_391_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12192_3_lut (.I0(\comm_buf[0] [4]), .I1(\comm_buf[1] [4]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15402));
    defparam i12192_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12193_3_lut (.I0(\comm_buf[2] [4]), .I1(\comm_buf[3] [4]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15403));
    defparam i12193_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12241_3_lut (.I0(\comm_buf[6] [7]), .I1(\comm_buf[7] [7]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15451));
    defparam i12241_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i7 (.Q(comm_tx_buf[7]), .C(clk_32MHz), .E(n9215), 
            .D(n878), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i6 (.Q(comm_tx_buf[6]), .C(clk_32MHz), .E(n9215), 
            .D(n879), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i5 (.Q(comm_tx_buf[5]), .C(clk_32MHz), .E(n9215), 
            .D(n880), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i4 (.Q(comm_tx_buf[4]), .C(clk_32MHz), .E(n9215), 
            .D(n881), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12240_3_lut (.I0(\comm_buf[4] [7]), .I1(\comm_buf[5] [7]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15450));
    defparam i12240_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_tx_buf_i3 (.Q(comm_tx_buf[3]), .C(clk_32MHz), .E(n9215), 
            .D(n882), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i2 (.Q(comm_tx_buf[2]), .C(clk_32MHz), .E(n9215), 
            .D(n883), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i1 (.Q(comm_tx_buf[1]), .C(clk_32MHz), .E(n9215), 
            .D(n884), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i9627_2_lut_3_lut (.I0(\comm_buf[0] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1210));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9627_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_11__i7 (.Q(\comm_buf[11] [7]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1256), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_11__i6 (.Q(\comm_buf[11] [6]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1258), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_11__i5 (.Q(\comm_buf[11] [5]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1259), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i9624_2_lut_3_lut (.I0(\comm_buf[0] [0]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1211));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9624_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 comm_state_3__I_0_392_Mux_1_i6_3_lut (.I0(buf_data2[38]), .I1(comm_rx_buf[1]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1271));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_11__i4 (.Q(\comm_buf[11] [4]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1260), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_392_Mux_2_i6_3_lut (.I0(buf_data2[42]), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1270));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_392_Mux_3_i6_3_lut (.I0(buf_data2[46]), .I1(comm_rx_buf[3]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1269));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_11__i3 (.Q(\comm_buf[11] [3]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1261), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_392_Mux_4_i6_3_lut (.I0(buf_data2[50]), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1268));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9697_2_lut_3_lut (.I0(\comm_buf[1] [7]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1168));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9697_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_11__i2 (.Q(\comm_buf[11] [2]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1262), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_11__i1 (.Q(\comm_buf[11] [1]), .C(clk_32MHz), .E(n9123), 
            .D(n6_adj_1263), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i7 (.Q(\comm_buf[10] [7]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1265), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i6 (.Q(\comm_buf[10] [6]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1266), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i5 (.Q(\comm_buf[10] [5]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1267), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i4 (.Q(\comm_buf[10] [4]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1268), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i3 (.Q(\comm_buf[10] [3]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1269), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i9698_2_lut_3_lut (.I0(\comm_buf[1] [6]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1169));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9698_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_10__i2 (.Q(\comm_buf[10] [2]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1270), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_10__i1 (.Q(\comm_buf[10] [1]), .C(clk_32MHz), .E(n9045), 
            .D(n6_adj_1271), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_392_Mux_5_i6_3_lut (.I0(buf_data2[54]), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1267));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_392_Mux_6_i6_3_lut (.I0(buf_data2[58]), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1266));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n16476_bdd_4_lut (.I0(n16476), .I1(n15403), .I2(n15402), .I3(comm_index[2]), 
            .O(n16479));
    defparam n16476_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_9__i7 (.Q(\comm_buf[9] [7]), .C(clk_32MHz), .E(n9027), 
            .D(n6_adj_1272), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7540_2_lut (.I0(n9045), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10646));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7540_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_269 (.I0(comm_index[0]), .I1(n15191), .I2(n15204), 
            .I3(n13497), .O(n9045));
    defparam i1_4_lut_adj_269.LUT_INIT = 16'hc4c0;
    SB_DFFESR comm_buf_9__i6 (.Q(\comm_buf[9] [6]), .C(clk_32MHz), .E(n9027), 
            .D(n6_adj_1274), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7734_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [5]), 
            .I3(buf_control[5]), .O(n10845));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7734_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 comm_state_3__I_0_392_Mux_7_i6_3_lut (.I0(buf_data2[62]), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1265));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_392_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_393_Mux_1_i6_3_lut (.I0(buf_data2[6]), .I1(comm_rx_buf[1]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1263));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_1_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_393_Mux_2_i6_3_lut (.I0(buf_data2[10]), .I1(comm_rx_buf[2]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1262));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_2_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_9__i5 (.Q(\comm_buf[9] [5]), .C(clk_32MHz), .E(n9027), 
            .D(n6_adj_1275), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_9__i4 (.Q(\comm_buf[9] [4]), .C(clk_32MHz), .E(n9021), 
            .D(n5022), .R(n10640));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_9__i3 (.Q(\comm_buf[9] [3]), .C(clk_32MHz), .E(n9021), 
            .D(n5006), .R(n10640));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_adj_270 (.I0(comm_state[3]), .I1(comm_state[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15221));
    defparam i1_2_lut_adj_270.LUT_INIT = 16'hbbbb;
    SB_LUT4 i7779_3_lut_4_lut (.I0(acadc_skipCount[15]), .I1(\comm_buf[0] [7]), 
            .I2(n6791), .I3(n8250), .O(n10890));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7779_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_9__i2 (.Q(\comm_buf[9] [2]), .C(clk_32MHz), .E(n9027), 
            .D(n9819), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_9__i1 (.Q(\comm_buf[9] [1]), .C(clk_32MHz), .E(n9027), 
            .D(n9823), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_8__i7 (.Q(\comm_buf[8] [7]), .C(clk_32MHz), .E(n8997), 
            .D(n9827), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_8__i6 (.Q(\comm_buf[8] [6]), .C(clk_32MHz), .E(n8997), 
            .D(n9837), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_8__i5 (.Q(\comm_buf[8] [5]), .C(clk_32MHz), .E(n8997), 
            .D(n9841), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_8__i4 (.Q(\comm_buf[8] [4]), .C(clk_32MHz), .E(n8997), 
            .D(n9849), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_393_Mux_3_i6_3_lut (.I0(buf_data2[14]), .I1(comm_rx_buf[3]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1261));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_3_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_3__I_0_393_Mux_4_i6_3_lut (.I0(buf_data2[18]), .I1(comm_rx_buf[4]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1260));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_4_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7778_3_lut_4_lut (.I0(acadc_skipCount[14]), .I1(\comm_buf[0] [6]), 
            .I2(n6791), .I3(n8250), .O(n10889));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7778_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_8__i3 (.Q(\comm_buf[8] [3]), .C(clk_32MHz), .E(n8997), 
            .D(n9872), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_8__i2 (.Q(\comm_buf[8] [2]), .C(clk_32MHz), .E(n8997), 
            .D(n9880), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_3_lut_4_lut_adj_271 (.I0(comm_cmd[3]), .I1(\comm_buf[0] [4]), 
            .I2(n8058), .I3(comm_cmd[1]), .O(n83));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_3_lut_4_lut_adj_271.LUT_INIT = 16'hf400;
    SB_DFFESR comm_buf_8__i1 (.Q(\comm_buf[8] [1]), .C(clk_32MHz), .E(n8997), 
            .D(n9888), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_4_lut_4_lut_4_lut_adj_272 (.I0(comm_state[3]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(n7_adj_1190), .O(n8618));
    defparam i1_4_lut_4_lut_4_lut_adj_272.LUT_INIT = 16'hada8;
    SB_DFFESR comm_buf_7__i7 (.Q(\comm_buf[7] [7]), .C(clk_32MHz), .E(n8943), 
            .D(n9900), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_393_Mux_5_i6_3_lut (.I0(buf_data2[22]), .I1(comm_rx_buf[5]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1259));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_5_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_7__i6 (.Q(\comm_buf[7] [6]), .C(clk_32MHz), .E(n8943), 
            .D(n9977), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_7__i5 (.Q(\comm_buf[7] [5]), .C(clk_32MHz), .E(n8943), 
            .D(n9981), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_7__i4 (.Q(\comm_buf[7] [4]), .C(clk_32MHz), .E(n8943), 
            .D(n9985), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_7__i3 (.Q(\comm_buf[7] [3]), .C(clk_32MHz), .E(n8943), 
            .D(n10001), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_393_Mux_6_i6_3_lut (.I0(buf_data2[26]), .I1(comm_rx_buf[6]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1258));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_6_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_7__i2 (.Q(\comm_buf[7] [2]), .C(clk_32MHz), .E(n8943), 
            .D(n10017), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_7__i1 (.Q(\comm_buf[7] [1]), .C(clk_32MHz), .E(n8943), 
            .D(n10021), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i7 (.Q(\comm_buf[6] [7]), .C(clk_32MHz), .E(n8907), 
            .D(n10025), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i6 (.Q(\comm_buf[6] [6]), .C(clk_32MHz), .E(n8907), 
            .D(n10029), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i5 (.Q(\comm_buf[6] [5]), .C(clk_32MHz), .E(n8907), 
            .D(n10033), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i4 (.Q(\comm_buf[6] [4]), .C(clk_32MHz), .E(n8907), 
            .D(n10047), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i3 (.Q(\comm_buf[6] [3]), .C(clk_32MHz), .E(n8907), 
            .D(n10061), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i2 (.Q(\comm_buf[6] [2]), .C(clk_32MHz), .E(n8907), 
            .D(n10065), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_6__i1 (.Q(\comm_buf[6] [1]), .C(clk_32MHz), .E(n8907), 
            .D(n10081), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7777_3_lut_4_lut (.I0(acadc_skipCount[13]), .I1(\comm_buf[0] [5]), 
            .I2(n6791), .I3(n8250), .O(n10888));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7777_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_5__i7 (.Q(\comm_buf[5] [7]), .C(clk_32MHz), .E(n8847), 
            .D(n10104), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i6 (.Q(\comm_buf[5] [6]), .C(clk_32MHz), .E(n8847), 
            .D(n10112), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i5 (.Q(\comm_buf[5] [5]), .C(clk_32MHz), .E(n8847), 
            .D(n10120), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i4 (.Q(\comm_buf[5] [4]), .C(clk_32MHz), .E(n8847), 
            .D(n10124), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i3 (.Q(\comm_buf[5] [3]), .C(clk_32MHz), .E(n8847), 
            .D(n10128), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i2 (.Q(\comm_buf[5] [2]), .C(clk_32MHz), .E(n8847), 
            .D(n6_adj_1236), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_5__i1 (.Q(\comm_buf[5] [1]), .C(clk_32MHz), .E(n8847), 
            .D(n6_adj_1237), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_4__i7 (.Q(\comm_buf[4] [7]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1239), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 equal_429_i6_2_lut (.I0(comm_index[2]), .I1(comm_index[3]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n6));   // zimaux_main.vhd(633[17:27])
    defparam equal_429_i6_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFESR comm_buf_4__i6 (.Q(\comm_buf[4] [6]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1241), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i9633_2_lut_3_lut (.I0(\comm_buf[1] [4]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1196));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9633_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_DFFESR comm_buf_4__i5 (.Q(\comm_buf[4] [5]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1243), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_4__i4 (.Q(\comm_buf[4] [4]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1244), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i15 (.Q(req_data_cnt[15]), .C(clk_32MHz), .D(n10905));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_4__i3 (.Q(\comm_buf[4] [3]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1245), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i14 (.Q(req_data_cnt[14]), .C(clk_32MHz), .D(n10904));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_4__i2 (.Q(\comm_buf[4] [2]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1246), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7776_3_lut_4_lut (.I0(acadc_skipCount[12]), .I1(\comm_buf[0] [4]), 
            .I2(n6791), .I3(n8250), .O(n10887));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7776_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFESR comm_buf_4__i1 (.Q(\comm_buf[4] [1]), .C(clk_32MHz), .E(n8823), 
            .D(n6_adj_1248), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i7 (.Q(\comm_buf[3] [7]), .C(clk_32MHz), .E(n8787), 
            .D(n6_adj_1251), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i6 (.Q(\comm_buf[3] [6]), .C(clk_32MHz), .E(n8787), 
            .D(n6_adj_1252), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i5 (.Q(\comm_buf[3] [5]), .C(clk_32MHz), .E(n8787), 
            .D(n6_adj_1254), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i4 (.Q(\comm_buf[3] [4]), .C(clk_32MHz), .E(n8787), 
            .D(n6_adj_1247), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i3 (.Q(\comm_buf[3] [3]), .C(clk_32MHz), .E(n8763), 
            .D(n5014), .R(n10640));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i2 (.Q(\comm_buf[3] [2]), .C(clk_32MHz), .E(n8763), 
            .D(n4994), .R(n10640));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_3__i1 (.Q(\comm_buf[3] [1]), .C(clk_32MHz), .E(n8787), 
            .D(n9831), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i13 (.Q(req_data_cnt[13]), .C(clk_32MHz), .D(n10903));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i7 (.Q(\comm_buf[2] [7]), .C(clk_32MHz), .E(n8738), 
            .D(n9845), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i12 (.Q(req_data_cnt[12]), .C(clk_32MHz), .D(n10902));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i11 (.Q(req_data_cnt[11]), .C(clk_32MHz), .D(n10901));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7775_3_lut_4_lut (.I0(acadc_skipCount[11]), .I1(\comm_buf[0] [3]), 
            .I2(n6791), .I3(n8250), .O(n10886));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7775_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i1_2_lut_adj_273 (.I0(comm_index[1]), .I1(n13470), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n13497));   // zimaux_main.vhd(465[3] 709[10])
    defparam i1_2_lut_adj_273.LUT_INIT = 16'h8888;
    SB_LUT4 i1_4_lut_adj_274 (.I0(n729), .I1(n15131), .I2(n15241), .I3(comm_state[0]), 
            .O(n15191));
    defparam i1_4_lut_adj_274.LUT_INIT = 16'hc0c8;
    SB_LUT4 i7774_3_lut_4_lut (.I0(acadc_skipCount[10]), .I1(\comm_buf[0] [2]), 
            .I2(n6791), .I3(n8250), .O(n10885));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7774_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7773_3_lut_4_lut (.I0(acadc_skipCount[9]), .I1(\comm_buf[0] [1]), 
            .I2(n6791), .I3(n8250), .O(n10884));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7773_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i12851_2_lut (.I0(buf_dds[14]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15679));
    defparam i12851_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_buf_2__i6 (.Q(\comm_buf[2] [6]), .C(clk_32MHz), .E(n8738), 
            .D(n9853), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i10 (.Q(req_data_cnt[10]), .C(clk_32MHz), .D(n10900));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i5 (.Q(\comm_buf[2] [5]), .C(clk_32MHz), .E(n8738), 
            .D(n9862), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i4 (.Q(\comm_buf[2] [4]), .C(clk_32MHz), .E(n8738), 
            .D(n9876), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12659_2_lut (.I0(buf_device_acadc[6]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15680));
    defparam i12659_2_lut.LUT_INIT = 16'h2222;
    SB_DFF req_data_cnt_i9 (.Q(req_data_cnt[9]), .C(clk_32MHz), .D(n10899));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i3 (.Q(\comm_buf[2] [3]), .C(clk_32MHz), .E(n8738), 
            .D(n9884), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i2 (.Q(\comm_buf[2] [2]), .C(clk_32MHz), .E(n8738), 
            .D(n9892), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i8 (.Q(req_data_cnt[8]), .C(clk_32MHz), .D(n10898));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7547_2_lut (.I0(n9123), .I1(comm_state[3]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10653));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7547_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_buf_2__i1 (.Q(\comm_buf[2] [1]), .C(clk_32MHz), .E(n8738), 
            .D(n9896), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i7 (.Q(req_data_cnt[7]), .C(clk_32MHz), .D(n10897));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_4_lut_adj_275 (.I0(comm_index[0]), .I1(n15191), .I2(n15204), 
            .I3(n13497), .O(n9123));
    defparam i1_4_lut_adj_275.LUT_INIT = 16'hc8c0;
    SB_DFFESR comm_buf_1__i7 (.Q(\comm_buf[1] [7]), .C(clk_32MHz), .E(n8702), 
            .D(n9904), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_1__i6 (.Q(\comm_buf[1] [6]), .C(clk_32MHz), .E(n8702), 
            .D(n9989), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i6 (.Q(req_data_cnt[6]), .C(clk_32MHz), .D(n10896));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_state_3__I_0_393_Mux_7_i6_3_lut (.I0(buf_data2[30]), .I1(comm_rx_buf[7]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n6_adj_1256));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_393_Mux_7_i6_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12655_2_lut (.I0(req_data_cnt[14]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15556));
    defparam i12655_2_lut.LUT_INIT = 16'h2222;
    SB_DFFESR comm_buf_1__i5 (.Q(\comm_buf[1] [5]), .C(clk_32MHz), .E(n8702), 
            .D(n9993), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_1__i4 (.Q(\comm_buf[1] [4]), .C(clk_32MHz), .E(n8702), 
            .D(n9997), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i5 (.Q(req_data_cnt[5]), .C(clk_32MHz), .D(n10895));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_1__i3 (.Q(\comm_buf[1] [3]), .C(clk_32MHz), .E(n8702), 
            .D(n10005), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i4 (.Q(req_data_cnt[4]), .C(clk_32MHz), .D(n10894));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_1__i2 (.Q(\comm_buf[1] [2]), .C(clk_32MHz), .E(n8702), 
            .D(n10009), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i3 (.Q(req_data_cnt[3]), .C(clk_32MHz), .D(n10893));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_4_lut_adj_276 (.I0(n15198), .I1(n15204), .I2(n9011), .I3(n8530), 
            .O(n4_adj_1184));
    defparam i1_4_lut_adj_276.LUT_INIT = 16'hfac8;
    SB_LUT4 i979126_i1_3_lut (.I0(n16407), .I1(n16515), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1240));
    defparam i979126_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_4_lut_adj_277 (.I0(ICE_SPI_CE0), .I1(n4_adj_1184), .I2(n6_adj_1175), 
            .I3(comm_state[1]), .O(n15108));
    defparam i2_4_lut_adj_277.LUT_INIT = 16'hccc4;
    SB_DFFESR comm_buf_1__i1 (.Q(\comm_buf[1] [1]), .C(clk_32MHz), .E(n8702), 
            .D(n10013), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i7 (.Q(\comm_buf[0] [7]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1181), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i6 (.Q(\comm_buf[0] [6]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1182), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF req_data_cnt_i2 (.Q(req_data_cnt[2]), .C(clk_32MHz), .D(n10892));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i5 (.Q(\comm_buf[0] [5]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1183), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i4 (.Q(\comm_buf[0] [4]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1185), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_index_0__bdd_4_lut_13254 (.I0(comm_index[0]), .I1(\comm_buf[6] [5]), 
            .I2(\comm_buf[7] [5]), .I3(comm_index[1]), .O(n16470));
    defparam comm_index_0__bdd_4_lut_13254.LUT_INIT = 16'he4aa;
    SB_DFF req_data_cnt_i1 (.Q(req_data_cnt[1]), .C(clk_32MHz), .D(n10891));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12984_2_lut (.I0(acadc_skipCount[14]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15555));
    defparam i12984_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_buf_0__i3 (.Q(\comm_buf[0] [3]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1186), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i2 (.Q(\comm_buf[0] [2]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1187), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i15 (.Q(acadc_skipCount[15]), .C(clk_32MHz), 
           .D(n10890));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i1 (.Q(\comm_buf[0] [1]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1188), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i14 (.Q(acadc_skipCount[14]), .C(clk_32MHz), 
           .D(n10889));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 mux_140_Mux_1_i15_4_lut (.I0(n7_adj_1240), .I1(n16425), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n884));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_1_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF acadc_skipCount_i13 (.Q(acadc_skipCount[13]), .C(clk_32MHz), 
           .D(n10888));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i12 (.Q(acadc_skipCount[12]), .C(clk_32MHz), 
           .D(n10887));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_adj_278 (.I0(TEST_LED), .I1(n10522), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(TEST_LED_N_737));
    defparam i1_2_lut_adj_278.LUT_INIT = 16'h6666;
    SB_LUT4 i3_4_lut_adj_279 (.I0(n14087), .I1(eis_end_N_770), .I2(eis_end_N_773), 
            .I3(eis_state[0]), .O(n8_adj_1212));   // zimaux_main.vhd(383[3] 460[10])
    defparam i3_4_lut_adj_279.LUT_INIT = 16'h0040;
    SB_DFF acadc_skipCount_i11 (.Q(acadc_skipCount[11]), .C(clk_32MHz), 
           .D(n10886));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_4_lut_adj_280 (.I0(eis_end), .I1(eis_end_N_770), .I2(n3), 
            .I3(ICE_GPMO_0), .O(n10_adj_1242));   // zimaux_main.vhd(383[3] 460[10])
    defparam i1_4_lut_adj_280.LUT_INIT = 16'haaa8;
    SB_LUT4 i7772_3_lut_4_lut (.I0(acadc_skipCount[8]), .I1(\comm_buf[0] [0]), 
            .I2(n6791), .I3(n8250), .O(n10883));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7772_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF acadc_skipCount_i10 (.Q(acadc_skipCount[10]), .C(clk_32MHz), 
           .D(n10885));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 mux_140_Mux_2_i15_4_lut (.I0(n16389), .I1(n16431), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n883));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_2_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_140_Mux_3_i15_4_lut (.I0(n16395), .I1(n16443), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n882));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_3_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFF acadc_skipCount_i9 (.Q(acadc_skipCount[9]), .C(clk_32MHz), .D(n10884));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7738_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [1]), 
            .I3(M_DCSEL), .O(n10849));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7738_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_DFFESR comm_length_i3 (.Q(comm_length[3]), .C(clk_32MHz), .E(n8576), 
            .D(comm_length_3__N_433[3]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i8 (.Q(acadc_skipCount[8]), .C(clk_32MHz), .D(n10883));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 n16470_bdd_4_lut (.I0(n16470), .I1(\comm_buf[5] [5]), .I2(\comm_buf[4] [5]), 
            .I3(comm_index[1]), .O(n16473));
    defparam n16470_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_length_i2 (.Q(comm_length[2]), .C(clk_32MHz), .E(n8576), 
            .D(comm_length_3__N_433[2]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i7 (.Q(acadc_skipCount[7]), .C(clk_32MHz), .D(n10882));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 equal_200_i2_2_lut (.I0(comm_index[1]), .I1(comm_length[1]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n2));   // zimaux_main.vhd(647[9:33])
    defparam equal_200_i2_2_lut.LUT_INIT = 16'h6666;
    SB_DFFESR comm_length_i1 (.Q(comm_length[1]), .C(clk_32MHz), .E(n8576), 
            .D(comm_length_3__N_433[1]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_index_i3 (.Q(comm_index[3]), .C(clk_32MHz), .E(n8561), 
            .D(comm_index_3__N_429[3]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i2_4_lut_adj_281 (.I0(comm_index[2]), .I1(comm_index[3]), .I2(comm_length[2]), 
            .I3(comm_length[3]), .O(n6_adj_1281));   // zimaux_main.vhd(647[9:33])
    defparam i2_4_lut_adj_281.LUT_INIT = 16'h7bde;
    SB_DFF acadc_skipCount_i6 (.Q(acadc_skipCount[6]), .C(clk_32MHz), .D(n10881));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_index_i2 (.Q(comm_index[2]), .C(clk_32MHz), .E(n8561), 
            .D(comm_index_3__N_429[2]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_index_i1 (.Q(comm_index[1]), .C(clk_32MHz), .E(n8561), 
            .D(comm_index_3__N_429[1]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_state_i2 (.Q(comm_state[2]), .C(clk_32MHz), .E(n18_adj_1191), 
            .D(n14216), .R(comm_state[3]));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_3_lut_adj_282 (.I0(comm_data_vld), .I1(ICE_SPI_CE0), 
            .I2(comm_state[0]), .I3(M_MOSI4), .O(n4_adj_1179));
    defparam i1_2_lut_3_lut_adj_282.LUT_INIT = 16'hdfdf;
    SB_LUT4 i3_4_lut_adj_283 (.I0(comm_index[0]), .I1(n6_adj_1281), .I2(n2), 
            .I3(comm_length[0]), .O(n7));   // zimaux_main.vhd(647[9:33])
    defparam i3_4_lut_adj_283.LUT_INIT = 16'hfdfe;
    SB_LUT4 i9634_2_lut_3_lut (.I0(\comm_buf[1] [2]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1197));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9634_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i11_4_lut_adj_284 (.I0(trig_dds), .I1(n1), .I2(n8519), .I3(n8133), 
            .O(n14246));
    defparam i11_4_lut_adj_284.LUT_INIT = 16'hcaaa;
    SB_LUT4 mux_140_Mux_4_i15_4_lut (.I0(n16479), .I1(n16455), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n881));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_4_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i1_4_lut_adj_285 (.I0(n15108), .I1(n15241), .I2(n8544), .I3(n15290), 
            .O(n15128));
    defparam i1_4_lut_adj_285.LUT_INIT = 16'h80a0;
    SB_LUT4 i981538_i1_3_lut (.I0(n16419), .I1(n16473), .I2(comm_index[2]), 
            .I3(M_MOSI4), .O(n7_adj_1238));
    defparam i981538_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_140_Mux_5_i15_4_lut (.I0(n7_adj_1238), .I1(n16485), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n880));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_5_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12180_3_lut (.I0(\comm_buf[0] [0]), .I1(\comm_buf[1] [0]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15390));
    defparam i12180_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i9637_2_lut_3_lut (.I0(\comm_buf[1] [1]), .I1(comm_state[1]), 
            .I2(comm_state[2]), .I3(M_MOSI4), .O(n14_adj_1198));   // zimaux_main.vhd(467[4] 708[13])
    defparam i9637_2_lut_3_lut.LUT_INIT = 16'h0202;
    SB_LUT4 i10400_3_lut (.I0(n16413), .I1(n16491), .I2(comm_index[3]), 
            .I3(M_MOSI4), .O(n13493));   // zimaux_main.vhd(237[9:19])
    defparam i10400_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7735_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [4]), 
            .I3(buf_control[4]), .O(n10846));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7735_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i10403_4_lut (.I0(n13493), .I1(n16521), .I2(comm_index[2]), 
            .I3(comm_index[3]), .O(n879));   // zimaux_main.vhd(237[9:19])
    defparam i10403_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i12181_3_lut (.I0(\comm_buf[2] [0]), .I1(\comm_buf[3] [0]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15391));
    defparam i12181_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12762_2_lut (.I0(comm_state_3__N_402[3]), .I1(comm_state[0]), 
            .I2(M_MOSI4), .I3(M_MOSI4), .O(n15637));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12762_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7771_3_lut_4_lut (.I0(acadc_skipCount[7]), .I1(\comm_buf[1] [7]), 
            .I2(n6791), .I3(n8250), .O(n10882));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7771_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7554_3_lut (.I0(n9215), .I1(comm_cmd[7]), .I2(comm_state[3]), 
            .I3(M_MOSI4), .O(n10660));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7554_3_lut.LUT_INIT = 16'ha2a2;
    SB_DFFNESR acadc_skipcnt_i0_i1 (.Q(acadc_skipcnt[1]), .C(clk_32MHz), 
            .E(n8456), .D(n442), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 comm_state_3__I_0_378_Mux_3_i7_4_lut (.I0(n10148), .I1(n15635), 
            .I2(comm_state[2]), .I3(comm_state[1]), .O(n12846));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_378_Mux_3_i7_4_lut.LUT_INIT = 16'hcafa;
    SB_DFFNESR acadc_skipcnt_i0_i2 (.Q(acadc_skipcnt[2]), .C(clk_32MHz), 
            .E(n8456), .D(n441), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i3 (.Q(acadc_skipcnt[3]), .C(clk_32MHz), 
            .E(n8456), .D(n440), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i4 (.Q(acadc_skipcnt[4]), .C(clk_32MHz), 
            .E(n8456), .D(n439), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 comm_state_3__I_0_378_Mux_3_i15_4_lut (.I0(n12846), .I1(n15637), 
            .I2(comm_state[3]), .I3(n6791), .O(comm_state_3__N_57[3]));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_378_Mux_3_i15_4_lut.LUT_INIT = 16'h05c5;
    SB_DFFNESR acadc_skipcnt_i0_i5 (.Q(acadc_skipcnt[5]), .C(clk_32MHz), 
            .E(n8456), .D(n438), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i1_2_lut_adj_286 (.I0(comm_state[1]), .I1(comm_state[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n4_adj_1250));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut_adj_286.LUT_INIT = 16'h4444;
    SB_DFFNESR acadc_skipcnt_i0_i6 (.Q(acadc_skipcnt[6]), .C(clk_32MHz), 
            .E(n8456), .D(n437), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i7 (.Q(acadc_skipcnt[7]), .C(clk_32MHz), 
            .E(n8456), .D(n436), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i1_4_lut_adj_287 (.I0(n9011), .I1(comm_state[2]), .I2(comm_state[3]), 
            .I3(n4_adj_1250), .O(n9215));
    defparam i1_4_lut_adj_287.LUT_INIT = 16'ha8a0;
    SB_DFFNESR acadc_skipcnt_i0_i8 (.Q(acadc_skipcnt[8]), .C(clk_32MHz), 
            .E(n8456), .D(n435), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i9 (.Q(acadc_skipcnt[9]), .C(clk_32MHz), 
            .E(n8456), .D(n434), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i10 (.Q(acadc_skipcnt[10]), .C(clk_32MHz), 
            .E(n8456), .D(n433), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_CARRY add_58_14 (.CI(n13977), .I0(acadc_skipcnt[12]), .I1(M_MOSI4), 
            .CO(n13978));
    SB_LUT4 i12717_3_lut (.I0(eis_end_N_773), .I1(eis_state[1]), .I2(eis_state[0]), 
            .I3(M_MOSI4), .O(n15510));   // zimaux_main.vhd(386[4] 459[13])
    defparam i12717_3_lut.LUT_INIT = 16'hc8c8;
    SB_DFFNESR acadc_skipcnt_i0_i11 (.Q(acadc_skipcnt[11]), .C(clk_32MHz), 
            .E(n8456), .D(n432), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNESR acadc_skipcnt_i0_i12 (.Q(acadc_skipcnt[12]), .C(clk_32MHz), 
            .E(n8456), .D(n431), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 eis_state_2__I_0_405_Mux_0_i7_4_lut (.I0(n15187), .I1(n15510), 
            .I2(eis_end_N_770), .I3(eis_state[0]), .O(eis_state_2__N_213[0]));   // zimaux_main.vhd(386[4] 459[13])
    defparam eis_state_2__I_0_405_Mux_0_i7_4_lut.LUT_INIT = 16'hc0c5;
    SB_DFFNESR acadc_skipcnt_i0_i13 (.Q(acadc_skipcnt[13]), .C(clk_32MHz), 
            .E(n8456), .D(n430), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i37_4_lut_4_lut (.I0(comm_cmd[3]), .I1(comm_cmd[1]), .I2(comm_cmd[0]), 
            .I3(comm_cmd[2]), .O(n32));
    defparam i37_4_lut_4_lut.LUT_INIT = 16'h8370;
    SB_LUT4 i15_4_lut_adj_288 (.I0(n7567), .I1(n6301), .I2(comm_state[3]), 
            .I3(n6791), .O(n9187));
    defparam i15_4_lut_adj_288.LUT_INIT = 16'hf535;
    SB_LUT4 mux_140_Mux_7_i15_4_lut (.I0(n16383), .I1(n16497), .I2(comm_index[3]), 
            .I3(comm_index[2]), .O(n878));   // zimaux_main.vhd(611[30:40])
    defparam mux_140_Mux_7_i15_4_lut.LUT_INIT = 16'h0aca;
    SB_DFFNESR acadc_skipcnt_i0_i14 (.Q(acadc_skipcnt[14]), .C(clk_32MHz), 
            .E(n8456), .D(n429), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i7731_3_lut (.I0(M_OSR0), .I1(n14_adj_1211), .I2(n9224), .I3(M_MOSI4), 
            .O(n10842));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7731_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i5 (.Q(acadc_skipCount[5]), .C(clk_32MHz), .D(n10880));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_2_lut_adj_289 (.I0(comm_cmd[1]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n18));   // zimaux_main.vhd(663[5] 695[14])
    defparam i1_2_lut_adj_289.LUT_INIT = 16'h2222;
    SB_DFFNESR data_cntvec_i0_i0 (.Q(data_cntvec[0]), .C(clk_32MHz), .E(n9790), 
            .D(n393), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFF acadc_skipCount_i4 (.Q(acadc_skipCount[4]), .C(clk_32MHz), .D(n10879));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR acadc_skipcnt_i0_i15 (.Q(acadc_skipcnt[15]), .C(clk_32MHz), 
            .E(n8456), .D(n428), .R(n10532));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i12202_3_lut (.I0(\comm_buf[10] [0]), .I1(\comm_buf[11] [0]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15412));
    defparam i12202_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12201_3_lut (.I0(\comm_buf[8] [0]), .I1(\comm_buf[9] [0]), 
            .I2(comm_index[0]), .I3(M_MOSI4), .O(n15411));
    defparam i12201_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF acadc_skipCount_i3 (.Q(acadc_skipCount[3]), .C(clk_32MHz), .D(n10878));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i2 (.Q(acadc_skipCount[2]), .C(clk_32MHz), .D(n10877));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR data_count_i0_i7 (.Q(data_count[7]), .C(clk_32MHz), .E(n9790), 
            .D(n368), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFF acadc_skipCount_i1 (.Q(acadc_skipCount[1]), .C(clk_32MHz), .D(n10876));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR data_count_i0_i1 (.Q(data_count[1]), .C(clk_32MHz), .E(n9790), 
            .D(n374), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i7770_3_lut_4_lut (.I0(acadc_skipCount[6]), .I1(\comm_buf[1] [6]), 
            .I2(n6791), .I3(n8250), .O(n10881));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7770_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF buf_device_acadc_i8 (.Q(buf_device_acadc[7]), .C(clk_32MHz), 
           .D(n10875));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12103_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n8085), .I2(comm_cmd[0]), 
            .I3(comm_cmd[2]), .O(n15309));
    defparam i12103_3_lut_4_lut.LUT_INIT = 16'hffdf;
    SB_DFFNESR data_count_i0_i2 (.Q(data_count[2]), .C(clk_32MHz), .E(n9790), 
            .D(n373), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i13011_4_lut (.I0(n5_adj_1282), .I1(comm_length[0]), .I2(n7511), 
            .I3(n27), .O(comm_length_3__N_433[0]));   // zimaux_main.vhd(517[5] 604[14])
    defparam i13011_4_lut.LUT_INIT = 16'h5fdf;
    SB_LUT4 i1_4_lut_adj_290 (.I0(comm_cmd[2]), .I1(comm_cmd[1]), .I2(data_idxvec[8]), 
            .I3(eis_start), .O(n78_adj_1022));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_290.LUT_INIT = 16'heca0;
    SB_DFF buf_device_acadc_i7 (.Q(buf_device_acadc[6]), .C(clk_32MHz), 
           .D(n10874));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i130_3_lut_adj_291 (.I0(buf_adcdata3[16]), .I1(data_cntvec[8]), 
            .I2(comm_cmd[3]), .I3(M_MOSI4), .O(n90));   // zimaux_main.vhd(517[5] 604[14])
    defparam i130_3_lut_adj_291.LUT_INIT = 16'hcaca;
    SB_DFF buf_device_acadc_i6 (.Q(buf_device_acadc[5]), .C(clk_32MHz), 
           .D(n10873));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF buf_device_acadc_i5 (.Q(buf_device_acadc[4]), .C(clk_32MHz), 
           .D(n10872));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR data_count_i0_i3 (.Q(data_count[3]), .C(clk_32MHz), .E(n9790), 
            .D(n372), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFF buf_device_acadc_i4 (.Q(M_FLT1), .C(clk_32MHz), .D(n10871));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR data_count_i0_i4 (.Q(data_count[4]), .C(clk_32MHz), .E(n9790), 
            .D(n371), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFF buf_device_acadc_i3 (.Q(M_FLT0), .C(clk_32MHz), .D(n10870));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_4_lut_adj_292 (.I0(comm_cmd[0]), .I1(n78_adj_1022), .I2(n4_adj_1041), 
            .I3(buf_data2[67]), .O(n99));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_292.LUT_INIT = 16'hf8a8;
    SB_DFFNESR data_count_i0_i5 (.Q(data_count[5]), .C(clk_32MHz), .E(n9790), 
            .D(n370), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFF buf_device_acadc_i2 (.Q(M_OSR1), .C(clk_32MHz), .D(n10869));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7736_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [3]), 
            .I3(buf_control[3]), .O(n10847));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7736_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_LUT4 i1_4_lut_adj_293 (.I0(comm_cmd[2]), .I1(comm_cmd[3]), .I2(n16503), 
            .I3(n99), .O(n4_adj_1280));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_293.LUT_INIT = 16'hdc50;
    SB_DFFSR secclk_cnt_1601_1602__i1 (.Q(secclk_cnt[0]), .C(clk_16MHz), 
            .D(n120), .R(n10522));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    ADC_ADS127 ADC_VAC4 (.\adc_state[0] (adc_state_adj_1331[0]), .clk_32MHz(clk_32MHz), 
            .M_DRDY4(M_DRDY4), .acadc_trig(acadc_trig), .DTRIG_N_957(DTRIG_N_957_adj_1150), 
            .GND_net(M_MOSI4), .\adc_state[1] (adc_state_adj_1331[1]), .n14648(n14648), 
            .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp_adj_1332}), .n14652(n14652), 
            .n14654(n14654), .n14656(n14656), .n14660(n14660), .n14662(n14662), 
            .n11(n11), .M_CS4(M_CS4), .n14664(n14664), .n14672(n14672), 
            .n14674(n14674), .n14676(n14676), .n14678(n14678), .n14680(n14680), 
            .n14686(n14686), .n15156(n15156), .n9694(n9694), .n14688(n14688), 
            .n14690(n14690), .n14698(n14698), .n14716(n14716), .n14718(n14718), 
            .n14736(n14736), .n14740(n14740), .n14742(n14742), .n14744(n14744), 
            .n14750(n14750), .n14752(n14752), .n14756(n14756), .n14758(n14758), 
            .n14762(n14762), .n14766(n14766), .n14768(n14768), .n14770(n14770), 
            .n14772(n14772), .n14776(n14776), .buf_adcdata4({buf_adcdata4}), 
            .n15144(n15144), .n14520(n14520), .M_SCLK4(M_SCLK4), .n14518(n14518), 
            .acadc_dtrig4(acadc_dtrig4));   // zimaux_main.vhd(777[13:23])
    SB_LUT4 i127_4_lut_adj_294 (.I0(buf_control[0]), .I1(n90), .I2(comm_cmd[2]), 
            .I3(comm_cmd[3]), .O(n69));   // zimaux_main.vhd(517[5] 604[14])
    defparam i127_4_lut_adj_294.LUT_INIT = 16'hcac0;
    SB_DFFNESR data_count_i0_i6 (.Q(data_count[6]), .C(clk_32MHz), .E(n9790), 
            .D(n369), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i1_4_lut_adj_295 (.I0(n69), .I1(n8043), .I2(n4_adj_1280), 
            .I3(n93), .O(n8047));   // zimaux_main.vhd(517[5] 604[14])
    defparam i1_4_lut_adj_295.LUT_INIT = 16'hc0c8;
    SB_LUT4 i12715_2_lut (.I0(\comm_buf[0] [0]), .I1(n84), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15546));   // zimaux_main.vhd(467[4] 708[13])
    defparam i12715_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 comm_state_3__I_0_382_Mux_0_i6_4_lut (.I0(n15546), .I1(comm_rx_buf[0]), 
            .I2(comm_state[1]), .I3(n8047), .O(n6_adj_1176));   // zimaux_main.vhd(467[4] 708[13])
    defparam comm_state_3__I_0_382_Mux_0_i6_4_lut.LUT_INIT = 16'hcfca;
    SB_LUT4 mux_1494_i1_3_lut (.I0(data_cntvec[0]), .I1(data_idxvec[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4197));
    defparam mux_1494_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_state_1__bdd_4_lut (.I0(comm_state[1]), .I1(n15668), .I2(n10394), 
            .I3(comm_state[2]), .O(n16464));
    defparam comm_state_1__bdd_4_lut.LUT_INIT = 16'he4aa;
    SB_LUT4 mux_1507_i1_4_lut (.I0(n4197), .I1(buf_data2[35]), .I2(comm_cmd[1]), 
            .I3(comm_cmd[0]), .O(n4234));
    defparam mux_1507_i1_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 mux_1502_i1_3_lut (.I0(req_data_cnt[0]), .I1(acadc_skipCount[0]), 
            .I2(comm_cmd[0]), .I3(M_MOSI4), .O(n4221));
    defparam mux_1502_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1511_i1_3_lut (.I0(n4221), .I1(n4234), .I2(comm_cmd[2]), 
            .I3(M_MOSI4), .O(n4254));
    defparam mux_1511_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1498_i1_3_lut (.I0(buf_adcdata3[8]), .I1(buf_dds[0]), .I2(comm_cmd[0]), 
            .I3(M_MOSI4), .O(n4209));
    defparam mux_1498_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_1513_i1_4_lut (.I0(n4209), .I1(n4254), .I2(comm_cmd[3]), 
            .I3(comm_cmd[1]), .O(n4264));
    defparam mux_1513_i1_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i1_4_lut_4_lut_adj_296 (.I0(n9_adj_1028), .I1(n9), .I2(n8085), 
            .I3(comm_cmd[3]), .O(n4));
    defparam i1_4_lut_4_lut_adj_296.LUT_INIT = 16'hfaf8;
    SB_LUT4 n16464_bdd_4_lut (.I0(n16464), .I1(n2_adj_1200), .I2(comm_state[0]), 
            .I3(comm_state[2]), .O(n16467));
    defparam n16464_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6820_3_lut (.I0(n4264), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9929));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6820_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF eis_start_366 (.Q(eis_start), .C(clk_32MHz), .D(n10854));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i1_3_lut_adj_297 (.I0(comm_cmd[4]), .I1(comm_cmd[6]), .I2(comm_cmd[5]), 
            .I3(M_MOSI4), .O(n8043));
    defparam i1_3_lut_adj_297.LUT_INIT = 16'h0202;
    SB_LUT4 i2_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n8085), .I2(n15188), 
            .I3(n12702), .O(n6_adj_1171));
    defparam i2_3_lut_4_lut.LUT_INIT = 16'hf0e0;
    SB_DFF eis_stop_365 (.Q(eis_stop), .C(clk_32MHz), .D(n10853));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_1443_10_lut (.I0(data_index[8]), .I1(data_index[8]), .I2(n7567), 
            .I3(n14038), .O(n7_adj_1218)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_10_lut.LUT_INIT = 16'hA3AC;
    SB_DFF tacadc_rst_364 (.Q(tacadc_rst), .C(clk_32MHz), .D(n10852));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_1443_9_lut (.I0(data_index[7]), .I1(data_index[7]), .I2(n7567), 
            .I3(n14037), .O(n7_adj_1220)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_9_lut.LUT_INIT = 16'hA3AC;
    SB_DFF req_data_cnt_i0 (.Q(req_data_cnt[0]), .C(clk_32MHz), .D(n10851));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 mux_1481_i1_4_lut (.I0(buf_adcdata3[0]), .I1(buf_data2[3]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4152));
    defparam mux_1481_i1_4_lut.LUT_INIT = 16'hc0ca;
    SB_LUT4 i6824_3_lut (.I0(n4152), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9933));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6824_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_0__361 (.Q(buf_control[0]), .C(clk_32MHz), .D(n10850));   // zimaux_main.vhd(465[3] 709[10])
    SB_CARRY add_1443_9 (.CI(n14037), .I0(data_index[7]), .I1(n7567), 
            .CO(n14038));
    SB_LUT4 mux_1469_i1_4_lut (.I0(buf_adcdata4[16]), .I1(buf_data2[64]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4108));
    defparam mux_1469_i1_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFF buf_control_1__360 (.Q(M_DCSEL), .C(clk_32MHz), .D(n10849));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i6828_3_lut (.I0(n4108), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9937));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6828_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_298 (.I0(DTRIG_N_957), .I1(adc_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15153));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_2_lut_adj_298.LUT_INIT = 16'h2222;
    ADC_ADS127_U0 ADC_VAC3 (.GND_net(M_MOSI4), .DTRIG_N_957(DTRIG_N_957_adj_1114), 
            .\adc_state[0] (adc_state_adj_1308[0]), .clk_32MHz(clk_32MHz), 
            .M_DRDY3(M_DRDY3), .\adc_state[1] (adc_state_adj_1308[1]), .n15147(n15147), 
            .cmd_rdadctmp({cmd_rdadctmp_adj_1309}), .buf_adcdata3({buf_adcdata3}), 
            .n14576(n14576), .VCC_net(VCC_net), .n14578(n14578), .n14580(n14580), 
            .n14582(n14582), .n14584(n14584), .n14586(n14586), .n14588(n14588), 
            .n14590(n14590), .n14592(n14592), .n14594(n14594), .n15162(n15162), 
            .n8332(n8332), .n14596(n14596), .acadc_trig(acadc_trig), .n14598(n14598), 
            .n14600(n14600), .n14602(n14602), .n14604(n14604), .n14606(n14606), 
            .n14608(n14608), .n14610(n14610), .n14612(n14612), .n14614(n14614), 
            .n14616(n14616), .n14624(n14624), .n14626(n14626), .n14628(n14628), 
            .n14630(n14630), .n14634(n14634), .n14636(n14636), .n14638(n14638), 
            .n14640(n14640), .n14642(n14642), .n14646(n14646), .n14658(n14658), 
            .n11(n11_adj_1030), .M_CS3(M_CS3), .n14516(n14516), .M_SCLK3(M_SCLK3), 
            .n14514(n14514), .acadc_dtrig3(acadc_dtrig3));   // zimaux_main.vhd(763[13:23])
    ADC_ADS127_U2 ADC_VAC1 (.\adc_state[0] (adc_state[0]), .clk_32MHz(clk_32MHz), 
            .\adc_state[1] (adc_state[1]), .DTRIG_N_957(DTRIG_N_957), .n14644(n14644), 
            .VCC_net(VCC_net), .cmd_rdadctmp({cmd_rdadctmp}), .n11(n11_adj_1038), 
            .M_CS1(M_CS1), .n15153(n15153), .buf_adcdata1({buf_adcdata1}), 
            .GND_net(M_MOSI4), .acadc_trig(acadc_trig), .M_DRDY1(M_DRDY1), 
            .n15168(n15168), .n8272(n8272), .n14692(n14692), .n14694(n14694), 
            .n14696(n14696), .n14700(n14700), .n14702(n14702), .n14704(n14704), 
            .n14706(n14706), .n14708(n14708), .n14710(n14710), .n14712(n14712), 
            .n14714(n14714), .n14720(n14720), .n14722(n14722), .n14724(n14724), 
            .n14726(n14726), .n14728(n14728), .n14730(n14730), .n14732(n14732), 
            .n14734(n14734), .n14738(n14738), .n14746(n14746), .n14748(n14748), 
            .n14754(n14754), .n14760(n14760), .n14764(n14764), .n14774(n14774), 
            .n14780(n14780), .n14782(n14782), .n14784(n14784), .n14786(n14786), 
            .n14788(n14788), .n14508(n14508), .M_SCLK1(M_SCLK1), .n14506(n14506), 
            .acadc_dtrig1(acadc_dtrig1));   // zimaux_main.vhd(735[13:23])
    SB_DFF buf_control_2__359 (.Q(M_POW), .C(clk_32MHz), .D(n10848));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 comm_cmd_1__bdd_4_lut_13269 (.I0(comm_cmd[1]), .I1(n15632), 
            .I2(n15633), .I3(comm_cmd[3]), .O(n16458));
    defparam comm_cmd_1__bdd_4_lut_13269.LUT_INIT = 16'he4aa;
    SB_DFF buf_control_3__358 (.Q(buf_control[3]), .C(clk_32MHz), .D(n10847));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_1443_8_lut (.I0(data_index[6]), .I1(data_index[6]), .I2(n7567), 
            .I3(n14036), .O(n7_adj_1222)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_8_lut.LUT_INIT = 16'hA3AC;
    SB_LUT4 mux_1457_i1_4_lut (.I0(buf_adcdata4[8]), .I1(buf_data2[32]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4064));
    defparam mux_1457_i1_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFF buf_control_4__357 (.Q(buf_control[4]), .C(clk_32MHz), .D(n10846));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_tx_buf_i0 (.Q(comm_tx_buf[0]), .C(clk_32MHz), .E(n9215), 
            .D(n885), .R(n10660));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF buf_control_5__356 (.Q(buf_control[5]), .C(clk_32MHz), .D(n10845));   // zimaux_main.vhd(465[3] 709[10])
    SB_CARRY add_1443_8 (.CI(n14036), .I0(data_index[6]), .I1(n7567), 
            .CO(n14037));
    SB_LUT4 i6832_3_lut (.I0(n4064), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9941));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6832_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF buf_control_6__355 (.Q(buf_control[6]), .C(clk_32MHz), .D(n10844));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i244_2_lut (.I0(comm_data_vld), .I1(ICE_SPI_CE0), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n1523));   // zimaux_main.vhd(701[8:49])
    defparam i244_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i12637_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n8043), .I2(comm_length[3]), 
            .I3(comm_cmd[1]), .O(n15460));   // zimaux_main.vhd(517[5] 604[14])
    defparam i12637_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_DFFESR comm_buf_11__i0 (.Q(\comm_buf[11] [0]), .C(clk_32MHz), .E(n9123), 
            .D(n9969), .R(n10653));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFF acadc_skipCount_i0 (.Q(acadc_skipCount[0]), .C(clk_32MHz), .D(n10843));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 add_1443_7_lut (.I0(data_index[5]), .I1(data_index[5]), .I2(n7567), 
            .I3(n14035), .O(n7_adj_1224)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_7_lut.LUT_INIT = 16'hA3AC;
    SB_CARRY add_1443_7 (.CI(n14035), .I0(data_index[5]), .I1(n7567), 
            .CO(n14036));
    SB_LUT4 mux_1525_i1_4_lut (.I0(buf_adcdata4[0]), .I1(buf_data2[0]), 
            .I2(comm_cmd[3]), .I3(comm_cmd[0]), .O(n4308));
    defparam mux_1525_i1_4_lut.LUT_INIT = 16'hc0ca;
    SB_DFFESR comm_buf_10__i0 (.Q(\comm_buf[10] [0]), .C(clk_32MHz), .E(n9045), 
            .D(n9965), .R(n10646));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_9__i0 (.Q(\comm_buf[9] [0]), .C(clk_32MHz), .E(n9027), 
            .D(n9961), .R(n10639));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 n16458_bdd_4_lut (.I0(n16458), .I1(n15475), .I2(n15474), .I3(comm_cmd[3]), 
            .O(n16461));
    defparam n16458_bdd_4_lut.LUT_INIT = 16'haad8;
    ADC_ADS127_U1 ADC_VAC2 (.M_DRDY2(M_DRDY2), .acadc_trig(acadc_trig), 
            .DTRIG_N_957(DTRIG_N_957_adj_1077), .GND_net(M_MOSI4), .\adc_state[1] (adc_state_adj_1285[1]), 
            .\adc_state[0] (adc_state_adj_1285[0]), .clk_32MHz(clk_32MHz), 
            .n15150(n15150), .cmd_rdadctmp({cmd_rdadctmp_adj_1286}), .buf_adcdata2({buf_adcdata2}), 
            .n14574(n14574), .VCC_net(VCC_net), .n15165(n15165), .n8302(n8302), 
            .n14886(n14886), .n14650(n14650), .n14882(n14882), .n14878(n14878), 
            .n11(n11_adj_1033), .M_CS2(M_CS2), .n14876(n14876), .n14874(n14874), 
            .n14872(n14872), .n14870(n14870), .n14866(n14866), .n14864(n14864), 
            .n14862(n14862), .n14860(n14860), .n14858(n14858), .n14856(n14856), 
            .n14854(n14854), .n14852(n14852), .n14850(n14850), .n14816(n14816), 
            .n14814(n14814), .n14812(n14812), .n14810(n14810), .n14790(n14790), 
            .n14792(n14792), .n14794(n14794), .n14796(n14796), .n14798(n14798), 
            .n14800(n14800), .n14802(n14802), .n14804(n14804), .n14808(n14808), 
            .n14806(n14806), .n14512(n14512), .M_SCLK2(M_SCLK2), .n14510(n14510), 
            .acadc_dtrig2(acadc_dtrig2));   // zimaux_main.vhd(749[13:23])
    SB_LUT4 i1_2_lut_3_lut_adj_299 (.I0(comm_state[2]), .I1(comm_state[0]), 
            .I2(comm_state[1]), .I3(M_MOSI4), .O(n7567));   // zimaux_main.vhd(467[4] 708[13])
    defparam i1_2_lut_3_lut_adj_299.LUT_INIT = 16'hfdfd;
    SB_LUT4 i6836_3_lut (.I0(n4308), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9945));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6836_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12636_3_lut_4_lut (.I0(comm_cmd[3]), .I1(n8043), .I2(comm_length[2]), 
            .I3(comm_cmd[1]), .O(n15463));   // zimaux_main.vhd(517[5] 604[14])
    defparam i12636_3_lut_4_lut.LUT_INIT = 16'hf800;
    SB_DFFESR comm_buf_8__i0 (.Q(\comm_buf[8] [0]), .C(clk_32MHz), .E(n8997), 
            .D(n9957), .R(n10632));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i6840_3_lut (.I0(buf_data2[65]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9949));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6840_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_7__i0 (.Q(\comm_buf[7] [0]), .C(clk_32MHz), .E(n8943), 
            .D(n9953), .R(n10625));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i2727_2_lut (.I0(comm_state[0]), .I1(comm_state[1]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n10148));   // zimaux_main.vhd(467[4] 708[13])
    defparam i2727_2_lut.LUT_INIT = 16'heeee;
    SB_DFFESR comm_buf_6__i0 (.Q(\comm_buf[6] [0]), .C(clk_32MHz), .E(n8907), 
            .D(n9949), .R(n10618));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i6844_3_lut (.I0(buf_data2[33]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9953));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6844_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 comm_index_0__bdd_4_lut_13244 (.I0(comm_index[0]), .I1(\comm_buf[10] [4]), 
            .I2(\comm_buf[11] [4]), .I3(comm_index[1]), .O(n16452));
    defparam comm_index_0__bdd_4_lut_13244.LUT_INIT = 16'he4aa;
    SB_LUT4 add_1443_6_lut (.I0(data_index[4]), .I1(data_index[4]), .I2(n7567), 
            .I3(n14034), .O(n7_adj_1226)) /* synthesis syn_instantiated=1 */ ;
    defparam add_1443_6_lut.LUT_INIT = 16'hA3AC;
    SB_DFFESR comm_buf_5__i0 (.Q(\comm_buf[5] [0]), .C(clk_32MHz), .E(n8847), 
            .D(n9945), .R(n10611));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7769_3_lut_4_lut (.I0(acadc_skipCount[5]), .I1(\comm_buf[1] [5]), 
            .I2(n6791), .I3(n8250), .O(n10880));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7769_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n16452_bdd_4_lut (.I0(n16452), .I1(\comm_buf[9] [4]), .I2(\comm_buf[8] [4]), 
            .I3(comm_index[1]), .O(n16455));
    defparam n16452_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_DFFESR comm_buf_4__i0 (.Q(\comm_buf[4] [0]), .C(clk_32MHz), .E(n8823), 
            .D(n9941), .R(n10604));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i6848_3_lut (.I0(buf_data2[1]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9957));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6848_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFESR comm_buf_3__i0 (.Q(\comm_buf[3] [0]), .C(clk_32MHz), .E(n8787), 
            .D(n9937), .R(n10599));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_2__i0 (.Q(\comm_buf[2] [0]), .C(clk_32MHz), .E(n8738), 
            .D(n9933), .R(n10590));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_1__i0 (.Q(\comm_buf[1] [0]), .C(clk_32MHz), .E(n8702), 
            .D(n9929), .R(n10583));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFESR comm_buf_0__i0 (.Q(\comm_buf[0] [0]), .C(clk_32MHz), .E(n8654), 
            .D(n6_adj_1176), .R(n10576));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i2_3_lut (.I0(comm_cmd[6]), .I1(comm_cmd[4]), .I2(comm_cmd[5]), 
            .I3(M_MOSI4), .O(n8085));   // zimaux_main.vhd(517[5] 604[14])
    defparam i2_3_lut.LUT_INIT = 16'hfbfb;
    SB_DFFESR comm_length_i0 (.Q(comm_length[0]), .C(clk_32MHz), .E(n8576), 
            .D(comm_length_3__N_433[0]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12653_2_lut (.I0(buf_dds[12]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15474));
    defparam i12653_2_lut.LUT_INIT = 16'h8888;
    SB_DFFESR comm_index_i0 (.Q(comm_index[0]), .C(clk_32MHz), .E(n8561), 
            .D(comm_index_3__N_429[0]), .R(n10566));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i12678_2_lut (.I0(buf_device_acadc[4]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15475));
    defparam i12678_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 comm_index_1__bdd_4_lut_13249 (.I0(comm_index[1]), .I1(n15411), 
            .I2(n15412), .I3(comm_index[3]), .O(n16446));
    defparam comm_index_1__bdd_4_lut_13249.LUT_INIT = 16'he4aa;
    SB_DFFNESR data_count_i0_i8 (.Q(data_count[8]), .C(clk_32MHz), .E(n9790), 
            .D(n367), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_CARRY add_1443_6 (.CI(n14034), .I0(data_index[4]), .I1(n7567), 
            .CO(n14035));
    SB_DFFNESR data_count_i0_i0 (.Q(data_count[0]), .C(clk_32MHz), .E(n9790), 
            .D(n375), .R(n10483));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i7768_3_lut_4_lut (.I0(acadc_skipCount[4]), .I1(\comm_buf[1] [4]), 
            .I2(n6791), .I3(n8250), .O(n10879));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7768_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFF buf_device_acadc_i1 (.Q(M_OSR0), .C(clk_32MHz), .D(n10842));   // zimaux_main.vhd(465[3] 709[10])
    SB_DFFNESR acadc_skipcnt_i0_i0 (.Q(acadc_skipcnt[0]), .C(clk_32MHz), 
            .E(n8456), .D(n443), .R(n15344));   // zimaux_main.vhd(383[3] 460[10])
    SB_DFFNER eis_state_i0 (.Q(eis_state[0]), .C(clk_32MHz), .E(n8459), 
            .D(eis_state_2__N_213[0]), .R(ICE_GPMO_0));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i7767_3_lut_4_lut (.I0(acadc_skipCount[3]), .I1(\comm_buf[1] [3]), 
            .I2(n6791), .I3(n8250), .O(n10878));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7767_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i6852_3_lut (.I0(buf_data2[66]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9961));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6852_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 n16446_bdd_4_lut (.I0(n16446), .I1(n15391), .I2(n15390), .I3(comm_index[3]), 
            .O(n16449));
    defparam n16446_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i6856_3_lut (.I0(buf_data2[34]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9965));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6856_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7766_3_lut_4_lut (.I0(acadc_skipCount[2]), .I1(\comm_buf[1] [2]), 
            .I2(n6791), .I3(n8250), .O(n10877));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7766_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7765_3_lut_4_lut (.I0(acadc_skipCount[1]), .I1(\comm_buf[1] [1]), 
            .I2(n6791), .I3(n8250), .O(n10876));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7765_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 add_58_13_lut (.I0(M_MOSI4), .I1(acadc_skipcnt[11]), .I2(M_MOSI4), 
            .I3(n13976), .O(n432)) /* synthesis syn_instantiated=1 */ ;
    defparam add_58_13_lut.LUT_INIT = 16'hC33C;
    SB_DFF trig_dds_333 (.Q(trig_dds), .C(clk_32MHz), .D(n14246));   // zimaux_main.vhd(465[3] 709[10])
    SB_LUT4 i7764_3_lut_4_lut (.I0(buf_device_acadc[7]), .I1(\comm_buf[0] [7]), 
            .I2(n6791), .I3(n9224), .O(n10875));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7764_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 equal_206_i13_2_lut_3_lut (.I0(n9_adj_1028), .I1(comm_cmd[3]), 
            .I2(n8085), .I3(M_MOSI4), .O(n13_adj_1026));   // zimaux_main.vhd(669[11:20])
    defparam equal_206_i13_2_lut_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i6860_3_lut (.I0(buf_data2[2]), .I1(comm_rx_buf[0]), .I2(comm_state[1]), 
            .I3(M_MOSI4), .O(n9969));   // zimaux_main.vhd(467[4] 708[13])
    defparam i6860_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_300 (.I0(comm_cmd[3]), .I1(n8085), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n12));   // zimaux_main.vhd(675[11:20])
    defparam i1_2_lut_adj_300.LUT_INIT = 16'hdddd;
    SB_LUT4 i1_4_lut_adj_301 (.I0(n22_adj_1078), .I1(n8043), .I2(comm_cmd[2]), 
            .I3(n24), .O(comm_state_3__N_402[3]));   // zimaux_main.vhd(663[5] 695[14])
    defparam i1_4_lut_adj_301.LUT_INIT = 16'h8c88;
    SB_LUT4 i7763_3_lut_4_lut (.I0(buf_device_acadc[6]), .I1(\comm_buf[0] [6]), 
            .I2(n6791), .I3(n9224), .O(n10874));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7763_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_DFFN eis_end_328 (.Q(eis_end), .C(clk_32MHz), .D(n14308));   // zimaux_main.vhd(383[3] 460[10])
    SB_LUT4 i9584_3_lut_4_lut (.I0(comm_cmd[0]), .I1(n8), .I2(n9), .I3(n12_adj_1027), 
            .O(n12622));   // zimaux_main.vhd(569[11:20])
    defparam i9584_3_lut_4_lut.LUT_INIT = 16'hffe0;
    SB_LUT4 i7762_3_lut_4_lut (.I0(buf_device_acadc[5]), .I1(\comm_buf[0] [5]), 
            .I2(n6791), .I3(n9224), .O(n10873));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7762_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7761_3_lut_4_lut (.I0(buf_device_acadc[4]), .I1(\comm_buf[0] [4]), 
            .I2(n6791), .I3(n9224), .O(n10872));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7761_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 comm_index_0__bdd_4_lut_13230 (.I0(comm_index[0]), .I1(\comm_buf[10] [3]), 
            .I2(\comm_buf[11] [3]), .I3(comm_index[1]), .O(n16440));
    defparam comm_index_0__bdd_4_lut_13230.LUT_INIT = 16'he4aa;
    SB_LUT4 i7733_3_lut_4_lut (.I0(n7511), .I1(n8062), .I2(\comm_buf[0] [6]), 
            .I3(buf_control[6]), .O(n10844));   // zimaux_main.vhd(467[4] 708[13])
    defparam i7733_3_lut_4_lut.LUT_INIT = 16'hfb40;
    SB_DFF SecClk_321 (.Q(TEST_LED), .C(clk_16MHz), .D(TEST_LED_N_737));   // zimaux_main.vhd(328[3] 334[10])
    SB_LUT4 i7760_3_lut_4_lut (.I0(M_FLT1), .I1(\comm_buf[0] [3]), .I2(n6791), 
            .I3(n9224), .O(n10871));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7760_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7759_3_lut_4_lut (.I0(M_FLT0), .I1(\comm_buf[0] [2]), .I2(n6791), 
            .I3(n9224), .O(n10870));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7759_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 i7758_3_lut_4_lut (.I0(M_OSR1), .I1(\comm_buf[0] [1]), .I2(n6791), 
            .I3(n9224), .O(n10869));   // zimaux_main.vhd(465[3] 709[10])
    defparam i7758_3_lut_4_lut.LUT_INIT = 16'h0caa;
    SB_LUT4 n16440_bdd_4_lut (.I0(n16440), .I1(\comm_buf[9] [3]), .I2(\comm_buf[8] [3]), 
            .I3(comm_index[1]), .O(n16443));
    defparam n16440_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i10399_4_lut (.I0(n16449), .I1(n16509), .I2(comm_index[2]), 
            .I3(comm_index[3]), .O(n885));   // zimaux_main.vhd(237[9:19])
    defparam i10399_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i7756_3_lut_4_lut (.I0(dds_state[2]), .I1(DDS_SCK1), .I2(dds_state[1]), 
            .I3(dds_state[0]), .O(n10867));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i7756_3_lut_4_lut.LUT_INIT = 16'h5c45;
    SB_LUT4 i3_4_lut_4_lut (.I0(n8094), .I1(n6_adj_1171), .I2(comm_cmd[1]), 
            .I3(comm_cmd[2]), .O(n15190));
    defparam i3_4_lut_4_lut.LUT_INIT = 16'h8cc8;
    SB_LUT4 comm_cmd_1__bdd_4_lut_13235 (.I0(comm_cmd[1]), .I1(n15555), 
            .I2(n15556), .I3(comm_cmd[3]), .O(n16434));
    defparam comm_cmd_1__bdd_4_lut_13235.LUT_INIT = 16'he4aa;
    SB_LUT4 n16434_bdd_4_lut (.I0(n16434), .I1(n15680), .I2(n15679), .I3(comm_cmd[3]), 
            .O(n16437));
    defparam n16434_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i1_4_lut_4_lut_adj_302 (.I0(adc_state_adj_1331[0]), .I1(M_SCLK4), 
            .I2(DTRIG_N_957_adj_1150), .I3(adc_state_adj_1331[1]), .O(n14520));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_302.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_4_lut_4_lut_adj_303 (.I0(adc_state_adj_1308[0]), .I1(M_SCLK3), 
            .I2(DTRIG_N_957_adj_1114), .I3(adc_state_adj_1308[1]), .O(n14516));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_303.LUT_INIT = 16'hc4d8;
    SB_LUT4 equal_114_i8_2_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n8));   // zimaux_main.vhd(542[11:20])
    defparam equal_114_i8_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i1_2_lut_3_lut_adj_304 (.I0(eis_state[1]), .I1(eis_start), .I2(n31), 
            .I3(M_MOSI4), .O(n15187));   // zimaux_main.vhd(386[4] 459[13])
    defparam i1_2_lut_3_lut_adj_304.LUT_INIT = 16'h8080;
    SB_LUT4 comm_index_0__bdd_4_lut_13220 (.I0(comm_index[0]), .I1(\comm_buf[10] [2]), 
            .I2(\comm_buf[11] [2]), .I3(comm_index[1]), .O(n16428));
    defparam comm_index_0__bdd_4_lut_13220.LUT_INIT = 16'he4aa;
    SB_LUT4 n16428_bdd_4_lut (.I0(n16428), .I1(\comm_buf[9] [2]), .I2(\comm_buf[8] [2]), 
            .I3(comm_index[1]), .O(n16431));
    defparam n16428_bdd_4_lut.LUT_INIT = 16'haad8;
    SB_LUT4 i12674_2_lut (.I0(req_data_cnt[12]), .I1(comm_cmd[0]), .I2(M_MOSI4), 
            .I3(M_MOSI4), .O(n15633));
    defparam i12674_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_4_lut_adj_305 (.I0(adc_state_adj_1285[0]), .I1(M_SCLK2), 
            .I2(DTRIG_N_957_adj_1077), .I3(adc_state_adj_1285[1]), .O(n14512));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_305.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_4_lut_4_lut_adj_306 (.I0(adc_state[0]), .I1(M_SCLK1), .I2(DTRIG_N_957), 
            .I3(adc_state[1]), .O(n14508));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_4_lut_4_lut_adj_306.LUT_INIT = 16'hc4d8;
    SB_LUT4 i1_2_lut_4_lut (.I0(comm_cmd[1]), .I1(comm_cmd[2]), .I2(comm_cmd[0]), 
            .I3(n12), .O(n7511));   // zimaux_main.vhd(672[11:20])
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    DDS_AD9837 CLOCK_DDS (.\dds_state_2__N_963[0] (dds_state_2__N_963[0]), 
            .dds_state({dds_state}), .clk_32MHz(clk_32MHz), .DDS_CS1(DDS_CS1), 
            .GND_net(M_MOSI4), .trig_dds(trig_dds), .n10823(n10823), .buf_dds({buf_dds}), 
            .\tmp_buf[15] (tmp_buf[15]), .bit_cnt({bit_cnt_adj_1353}), .n10(n10_adj_1172), 
            .n11453(n11453), .VCC_net(VCC_net), .\bit_cnt_3__N_1011[3] (bit_cnt_3__N_1011[3]), 
            .\bit_cnt_3__N_1011[2] (bit_cnt_3__N_1011[2]), .\bit_cnt_3__N_1011[1] (bit_cnt_3__N_1011[1]), 
            .n10868(n10868), .DDS_MOSI1(DDS_MOSI1), .n10867(n10867), .DDS_SCK1(DDS_SCK1));   // zimaux_main.vhd(792[14:24])
    SB_LUT4 add_53_5_lut (.I0(M_MOSI4), .I1(data_count[3]), .I2(M_MOSI4), 
            .I3(n13944), .O(n372)) /* synthesis syn_instantiated=1 */ ;
    defparam add_53_5_lut.LUT_INIT = 16'hC33C;
    
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
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    wire clk_16MHz /* synthesis SET_AS_NETWORK=clk_16MHz, is_clock=1 */ ;   // zimaux_main.vhd(201[9:18])
    
    SB_PLL40_2F_CORE zim_pll_inst (.REFERENCECLK(ICE_SYSCLK), .PLLOUTGLOBALA(clk_32MHz), 
            .PLLOUTGLOBALB(clk_16MHz), .EXTFEEDBACK(GND_net), .DYNAMICDELAY({GND_net, 
            GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, 
            GND_net}), .BYPASS(GND_net), .RESETB(VCC_net), .SDI(GND_net), 
            .SCLK(GND_net), .LATCHINPUTVALUE(GND_net)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=27, LSE_LCOL=13, LSE_RCOL=20, LSE_LLINE=712, LSE_RLINE=712 */ ;   // zimaux_main.vhd(712[13:20])
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

module SPI_SLAVE (comm_data_vld, clk_32MHz, comm_clear, comm_tx_buf, 
            GND_net, ICE_SPI_MOSI, comm_rx_buf, ICE_SPI_SCLK, VCC_net, 
            ICE_SPI_MISO);
    output comm_data_vld;
    input clk_32MHz;
    input comm_clear;
    input [7:0]comm_tx_buf;
    input GND_net;
    input ICE_SPI_MOSI;
    output [7:0]comm_rx_buf;
    input ICE_SPI_SCLK;
    input VCC_net;
    output ICE_SPI_MISO;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    wire iclk /* synthesis is_clock=1, SET_AS_NETWORK=\comm_spi/iclk */ ;   // spi_slave.vhd(28[8:12])
    
    wire DATA_VLD_N_837;
    wire [7:0]data_tx;   // spi_slave.vhd(33[8:15])
    
    wire n10448, data_tx_7__N_805, data_tx_7__N_813;
    wire [3:0]n21;
    wire [3:0]bit_cnt;   // spi_slave.vhd(31[8:15])
    
    wire data_tx_7__N_806, n10442, n10441, n16893, imosi, DOUT_7__N_786, 
        DOUT_7__N_785, imosi_N_792, imosi_N_791, data_tx_7__N_816, n10476, 
        n10475, n16896, data_tx_7__N_822, data_tx_7__N_808, data_tx_7__N_825, 
        data_tx_7__N_809, data_tx_7__N_828, data_tx_7__N_810, data_tx_7__N_831, 
        data_tx_7__N_811, data_tx_7__N_812, data_tx_7__N_834, n10451, 
        DOUT_7__N_784, DOUT_7__N_783, DOUT_7__N_782, DOUT_7__N_781, 
        DOUT_7__N_780, DOUT_7__N_779, DOUT_7__N_777, n10438, iclk_N_802, 
        n10437, iclk_N_801, n12175, n10434, n10456, n10455, n16890, 
        data_tx_7__N_819, data_tx_7__N_807, n16911, n16908, n16905, 
        n16902, n10449, n10444, n16899, n10433, n10446, n10445, 
        n10480, n10452, imiso, n10460, n10459, n16887, n10479, 
        n16884, n10464, n10463, n10468, n10467, n10472, n10471;
    
    SB_DFFNR data_valid_85 (.Q(comm_data_vld), .C(clk_32MHz), .D(DATA_VLD_N_837), 
            .R(comm_clear));   // spi_slave.vhd(97[3] 105[10])
    SB_DFFS data_tx_i7_7337_7338_set (.Q(n10448), .C(iclk), .D(data_tx[6]), 
            .S(data_tx_7__N_805));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 RESET_I_0_100_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_813));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_100_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNR bit_cnt_1603__i0 (.Q(bit_cnt[0]), .C(iclk), .D(n21[0]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 RESET_I_0_93_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_806));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_93_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i7332_3_lut (.I0(n10442), .I1(n10441), .I2(n16893), .I3(GND_net), 
            .O(imosi));   // spi_slave.vhd(47[3] 55[10])
    defparam i7332_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_87_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_87_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_86_2_lut (.I0(comm_clear), .I1(imosi), .I2(GND_net), 
            .I3(GND_net), .O(DOUT_7__N_785));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_86_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_89_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_792));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_89_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_88_2_lut (.I0(comm_clear), .I1(ICE_SPI_MOSI), .I2(GND_net), 
            .I3(GND_net), .O(imosi_N_791));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_88_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_101_2_lut (.I0(comm_clear), .I1(comm_tx_buf[6]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_816));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_101_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7366_3_lut (.I0(n10476), .I1(n10475), .I2(n16896), .I3(GND_net), 
            .O(data_tx[5]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7366_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_103_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_822));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_103_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_95_2_lut (.I0(comm_clear), .I1(comm_tx_buf[4]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_808));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_95_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_104_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_825));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_104_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_96_2_lut (.I0(comm_clear), .I1(comm_tx_buf[3]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_809));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_96_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_105_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_828));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_105_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_97_2_lut (.I0(comm_clear), .I1(comm_tx_buf[2]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_810));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_97_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_106_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_831));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_106_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_98_2_lut (.I0(comm_clear), .I1(comm_tx_buf[1]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_811));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_98_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_99_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_812));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_99_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 RESET_I_0_2_lut (.I0(comm_clear), .I1(comm_tx_buf[0]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_834));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_2_lut.LUT_INIT = 16'h2222;
    SB_DFFNS imiso_83_7340_7341_set (.Q(n10451), .C(iclk), .D(data_tx[7]), 
            .S(data_tx_7__N_805));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_rx_i1 (.Q(comm_rx_buf[1]), .C(iclk), .D(DOUT_7__N_784), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i2 (.Q(comm_rx_buf[2]), .C(iclk), .D(DOUT_7__N_783), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i3 (.Q(comm_rx_buf[3]), .C(iclk), .D(DOUT_7__N_782), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i4 (.Q(comm_rx_buf[4]), .C(iclk), .D(DOUT_7__N_781), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i5 (.Q(comm_rx_buf[5]), .C(iclk), .D(DOUT_7__N_780), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i6 (.Q(comm_rx_buf[6]), .C(iclk), .D(DOUT_7__N_779), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i7 (.Q(comm_rx_buf[7]), .C(iclk), .D(DOUT_7__N_777), 
            .R(comm_clear));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i10837_1_lut (.I0(bit_cnt[0]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n21[0]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i10837_1_lut.LUT_INIT = 16'h5555;
    SB_DFFR iclk_40_7326_7327_reset (.Q(n10438), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .R(iclk_N_802));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS iclk_40_7326_7327_set (.Q(n10437), .C(clk_32MHz), .D(ICE_SPI_SCLK), 
            .S(iclk_N_801));   // spi_slave.vhd(47[3] 55[10])
    SB_LUT4 RESET_I_0_90_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_801));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_90_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13107_4_lut_3_lut (.I0(n16896), .I1(comm_clear), .I2(comm_tx_buf[5]), 
            .I3(GND_net), .O(n16896));   // spi_slave.vhd(70[3] 80[10])
    defparam i13107_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 RESET_I_0_91_2_lut (.I0(comm_clear), .I1(ICE_SPI_SCLK), .I2(GND_net), 
            .I3(GND_net), .O(iclk_N_802));   // spi_slave.vhd(47[3] 55[10])
    defparam RESET_I_0_91_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i10853_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(n21[3]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i10853_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i10846_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(n21[2]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i10846_2_lut_3_lut.LUT_INIT = 16'h7878;
    SB_LUT4 i1_2_lut_3_lut (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[6]), 
            .I3(GND_net), .O(DOUT_7__N_777));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_10 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[5]), 
            .I3(GND_net), .O(DOUT_7__N_779));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_10.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_11 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[4]), 
            .I3(GND_net), .O(DOUT_7__N_780));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_11.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_12 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[3]), 
            .I3(GND_net), .O(DOUT_7__N_781));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_12.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_13 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[2]), 
            .I3(GND_net), .O(DOUT_7__N_782));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_13.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_14 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[1]), 
            .I3(GND_net), .O(DOUT_7__N_783));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_14.LUT_INIT = 16'he0e0;
    SB_LUT4 i1_2_lut_3_lut_adj_15 (.I0(bit_cnt[3]), .I1(n12175), .I2(comm_rx_buf[0]), 
            .I3(GND_net), .O(DOUT_7__N_784));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut_3_lut_adj_15.LUT_INIT = 16'he0e0;
    SB_DFFR data_tx_i0_7322_7323_reset (.Q(n10434), .C(iclk), .D(VCC_net), 
            .R(data_tx_7__N_834));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i7346_3_lut (.I0(n10456), .I1(n10455), .I2(n16890), .I3(GND_net), 
            .O(comm_rx_buf[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7346_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_102_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_819));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_102_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 RESET_I_0_94_2_lut (.I0(comm_clear), .I1(comm_tx_buf[5]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_807));   // spi_slave.vhd(70[3] 80[10])
    defparam RESET_I_0_94_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i13117_4_lut_3_lut (.I0(n16911), .I1(comm_clear), .I2(comm_tx_buf[0]), 
            .I3(GND_net), .O(n16911));   // spi_slave.vhd(70[3] 80[10])
    defparam i13117_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13082_4_lut_3_lut (.I0(n16908), .I1(comm_clear), .I2(comm_tx_buf[1]), 
            .I3(GND_net), .O(n16908));   // spi_slave.vhd(70[3] 80[10])
    defparam i13082_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13092_4_lut_3_lut (.I0(n16905), .I1(comm_clear), .I2(comm_tx_buf[2]), 
            .I3(GND_net), .O(n16905));   // spi_slave.vhd(70[3] 80[10])
    defparam i13092_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13097_4_lut_3_lut (.I0(n16902), .I1(comm_clear), .I2(comm_tx_buf[3]), 
            .I3(GND_net), .O(n16902));   // spi_slave.vhd(70[3] 80[10])
    defparam i13097_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i7339_3_lut (.I0(n10449), .I1(n10448), .I2(n10444), .I3(GND_net), 
            .O(data_tx[7]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7339_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13102_4_lut_3_lut (.I0(n16899), .I1(comm_clear), .I2(comm_tx_buf[4]), 
            .I3(GND_net), .O(n16899));   // spi_slave.vhd(70[3] 80[10])
    defparam i13102_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i0_7322_7323_set (.Q(n10433), .C(iclk), .D(VCC_net), 
            .S(data_tx_7__N_812));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i7336_3_lut (.I0(n10446), .I1(n10445), .I2(n10444), .I3(GND_net), 
            .O(ICE_SPI_MISO));   // spi_slave.vhd(60[3] 64[10])
    defparam i7336_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 RESET_I_0_92_2_lut (.I0(comm_clear), .I1(comm_tx_buf[7]), .I2(GND_net), 
            .I3(GND_net), .O(data_tx_7__N_805));   // spi_slave.vhd(60[3] 64[10])
    defparam RESET_I_0_92_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 i10839_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(n21[1]));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i10839_2_lut.LUT_INIT = 16'h6666;
    SB_DFFR data_tx_i6_7368_7369_reset (.Q(n10480), .C(iclk), .D(data_tx[5]), 
            .R(data_tx_7__N_816));   // spi_slave.vhd(70[3] 80[10])
    SB_LUT4 i7342_3_lut (.I0(n10452), .I1(n10451), .I2(n10444), .I3(GND_net), 
            .O(imiso));   // spi_slave.vhd(85[3] 91[10])
    defparam i7342_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7324_3_lut (.I0(n10434), .I1(n10433), .I2(n16911), .I3(GND_net), 
            .O(data_tx[0]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7324_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7350_3_lut (.I0(n10460), .I1(n10459), .I2(n16908), .I3(GND_net), 
            .O(data_tx[1]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7350_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7328_3_lut (.I0(n10438), .I1(n10437), .I2(n16887), .I3(GND_net), 
            .O(iclk));   // spi_slave.vhd(47[3] 55[10])
    defparam i7328_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7370_3_lut (.I0(n10480), .I1(n10479), .I2(n16884), .I3(GND_net), 
            .O(data_tx[6]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7370_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i2_3_lut (.I0(bit_cnt[2]), .I1(bit_cnt[0]), .I2(bit_cnt[1]), 
            .I3(GND_net), .O(n12175));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i2_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i1_2_lut (.I0(bit_cnt[3]), .I1(n12175), .I2(GND_net), .I3(GND_net), 
            .O(DATA_VLD_N_837));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i7354_3_lut (.I0(n10464), .I1(n10463), .I2(n16905), .I3(GND_net), 
            .O(data_tx[2]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7354_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7358_3_lut (.I0(n10468), .I1(n10467), .I2(n16902), .I3(GND_net), 
            .O(data_tx[3]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7358_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i7362_3_lut (.I0(n10472), .I1(n10471), .I2(n16899), .I3(GND_net), 
            .O(data_tx[4]));   // spi_slave.vhd(70[3] 80[10])
    defparam i7362_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i13072_4_lut_3_lut (.I0(n16893), .I1(comm_clear), .I2(ICE_SPI_MOSI), 
            .I3(GND_net), .O(n16893));   // spi_slave.vhd(47[3] 55[10])
    defparam i13072_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13087_4_lut_3_lut (.I0(n16890), .I1(comm_clear), .I2(imosi), 
            .I3(GND_net), .O(n16890));   // spi_slave.vhd(70[3] 80[10])
    defparam i13087_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13067_4_lut_3_lut (.I0(n16887), .I1(comm_clear), .I2(ICE_SPI_SCLK), 
            .I3(GND_net), .O(n16887));   // spi_slave.vhd(47[3] 55[10])
    defparam i13067_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_LUT4 i13112_4_lut_3_lut (.I0(n16884), .I1(comm_clear), .I2(comm_tx_buf[6]), 
            .I3(GND_net), .O(n16884));   // spi_slave.vhd(70[3] 80[10])
    defparam i13112_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFS data_tx_i6_7368_7369_set (.Q(n10479), .C(iclk), .D(data_tx[5]), 
            .S(data_tx_7__N_806));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i5_7364_7365_reset (.Q(n10476), .C(iclk), .D(data_tx[4]), 
            .R(data_tx_7__N_819));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i5_7364_7365_set (.Q(n10475), .C(iclk), .D(data_tx[4]), 
            .S(data_tx_7__N_807));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i4_7360_7361_reset (.Q(n10472), .C(iclk), .D(data_tx[3]), 
            .R(data_tx_7__N_822));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i4_7360_7361_set (.Q(n10471), .C(iclk), .D(data_tx[3]), 
            .S(data_tx_7__N_808));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i3_7356_7357_reset (.Q(n10468), .C(iclk), .D(data_tx[2]), 
            .R(data_tx_7__N_825));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i3_7356_7357_set (.Q(n10467), .C(iclk), .D(data_tx[2]), 
            .S(data_tx_7__N_809));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i2_7352_7353_reset (.Q(n10464), .C(iclk), .D(data_tx[1]), 
            .R(data_tx_7__N_828));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i2_7352_7353_set (.Q(n10463), .C(iclk), .D(data_tx[1]), 
            .S(data_tx_7__N_810));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_tx_i1_7348_7349_reset (.Q(n10460), .C(iclk), .D(data_tx[0]), 
            .R(data_tx_7__N_831));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_tx_i1_7348_7349_set (.Q(n10459), .C(iclk), .D(data_tx[0]), 
            .S(data_tx_7__N_811));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFR data_rx_i0_7344_7345_reset (.Q(n10456), .C(iclk), .D(imosi), 
            .R(DOUT_7__N_786));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFS data_rx_i0_7344_7345_set (.Q(n10455), .C(iclk), .D(imosi), 
            .S(DOUT_7__N_785));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR imiso_83_7340_7341_reset (.Q(n10452), .C(iclk), .D(data_tx[7]), 
            .R(data_tx_7__N_813));   // spi_slave.vhd(85[3] 91[10])
    SB_DFFR data_tx_i7_7337_7338_reset (.Q(n10449), .C(iclk), .D(data_tx[6]), 
            .R(data_tx_7__N_813));   // spi_slave.vhd(70[3] 80[10])
    SB_DFFNR MISO_48_7334_7335_reset (.Q(n10446), .C(clk_32MHz), .D(imiso), 
            .R(data_tx_7__N_813));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFNS MISO_48_7334_7335_set (.Q(n10445), .C(clk_32MHz), .D(imiso), 
            .S(data_tx_7__N_805));   // spi_slave.vhd(60[3] 64[10])
    SB_DFFR imosi_44_7330_7331_reset (.Q(n10442), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .R(imosi_N_792));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFS imosi_44_7330_7331_set (.Q(n10441), .C(clk_32MHz), .D(ICE_SPI_MOSI), 
            .S(imosi_N_791));   // spi_slave.vhd(47[3] 55[10])
    SB_DFFNR bit_cnt_1603__i1 (.Q(bit_cnt[1]), .C(iclk), .D(n21[1]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_DFFNR bit_cnt_1603__i2 (.Q(bit_cnt[2]), .C(iclk), .D(n21[2]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    SB_LUT4 i13077_4_lut_3_lut (.I0(n10444), .I1(comm_clear), .I2(comm_tx_buf[7]), 
            .I3(GND_net), .O(n10444));   // spi_slave.vhd(60[3] 64[10])
    defparam i13077_4_lut_3_lut.LUT_INIT = 16'he2e2;
    SB_DFFNR bit_cnt_1603__i3 (.Q(bit_cnt[3]), .C(iclk), .D(n21[3]), .R(comm_clear));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(838[41:65])
    
endmodule
//
// Verilog Description of module ADC_ADS127
//

module ADC_ADS127 (\adc_state[0] , clk_32MHz, M_DRDY4, acadc_trig, DTRIG_N_957, 
            GND_net, \adc_state[1] , n14648, VCC_net, cmd_rdadctmp, 
            n14652, n14654, n14656, n14660, n14662, n11, M_CS4, 
            n14664, n14672, n14674, n14676, n14678, n14680, n14686, 
            n15156, n9694, n14688, n14690, n14698, n14716, n14718, 
            n14736, n14740, n14742, n14744, n14750, n14752, n14756, 
            n14758, n14762, n14766, n14768, n14770, n14772, n14776, 
            buf_adcdata4, n15144, n14520, M_SCLK4, n14518, acadc_dtrig4);
    output \adc_state[0] ;
    input clk_32MHz;
    input M_DRDY4;
    input acadc_trig;
    output DTRIG_N_957;
    input GND_net;
    output \adc_state[1] ;
    input n14648;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n14652;
    input n14654;
    input n14656;
    input n14660;
    input n14662;
    input n11;
    output M_CS4;
    input n14664;
    input n14672;
    input n14674;
    input n14676;
    input n14678;
    input n14680;
    input n14686;
    input n15156;
    output n9694;
    input n14688;
    input n14690;
    input n14698;
    input n14716;
    input n14718;
    input n14736;
    input n14740;
    input n14742;
    input n14744;
    input n14750;
    input n14752;
    input n14756;
    input n14758;
    input n14762;
    input n14766;
    input n14768;
    input n14770;
    input n14772;
    input n14776;
    output [23:0]buf_adcdata4;
    input n15144;
    input n14520;
    output M_SCLK4;
    input n14518;
    output acadc_dtrig4;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    wire [2:0]adc_state_2__N_862;
    
    wire n15258, n15278, n14930, n10428, n9631, n10783;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n15330, n15354, n15619, n12, n17, n15257;
    wire [7:0]n63;
    
    wire n14008, n14007, n14006, n14005, n14004, n14003, n14002, 
        n10997, n10996, n10995, n10994, n10993, n10992, n10991, 
        n10990, n10989, n10988, n10987, n10986, n10985, n10984, 
        n10983, n10982, n10981, n10980, n10979, n10978, n10977, 
        n10976, n10975, n10864;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n15258), 
            .D(adc_state_2__N_862[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i18_3_lut (.I0(M_DRDY4), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(GND_net), .O(n15278));   // adc_ads127.vhd(34[3] 89[10])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(\adc_state[1] ), .I1(\adc_state[0] ), .I2(n15278), 
            .I3(GND_net), .O(n14930));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    SB_LUT4 i7317_2_lut (.I0(DTRIG_N_957), .I1(\adc_state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n10428));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7317_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i7677_2_lut (.I0(n9631), .I1(DTRIG_N_957), .I2(GND_net), .I3(GND_net), 
            .O(n10783));   // adc_ads127.vhd(34[3] 89[10])
    defparam i7677_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(M_DRDY4), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n9631));
    defparam i1_4_lut.LUT_INIT = 16'h0150;
    SB_LUT4 i12123_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n15330));
    defparam i12123_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12146_4_lut (.I0(bit_cnt[7]), .I1(n15330), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n15354));
    defparam i12146_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12804_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n15354), .O(n15619));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12804_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n15619), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_957), .I3(\adc_state[1] ), .O(adc_state_2__N_862[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14648));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14652));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14654));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14656));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14660));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_957), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_862[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i30_4_lut (.I0(M_DRDY4), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14662));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(M_CS4), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i13062_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i13062_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14664));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14672));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_957), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_862[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14674));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14676));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14678));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14680));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut_adj_8 (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(M_DRDY4), 
            .I3(DTRIG_N_957), .O(n15257));
    defparam i1_4_lut_adj_8.LUT_INIT = 16'hddcf;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n15257), .I2(GND_net), 
            .I3(GND_net), .O(n15258));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14686));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_3_lut_adj_9 (.I0(M_DRDY4), .I1(n15156), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n9694));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut_adj_9.LUT_INIT = 16'hc4c4;
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14688));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14690));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14698));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n14008), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n14007), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n14007), .I0(bit_cnt[6]), .I1(GND_net), .CO(n14008));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n14006), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n14006), .I0(bit_cnt[5]), .I1(GND_net), .CO(n14007));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n14005), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n14005), .I0(bit_cnt[4]), .I1(GND_net), .CO(n14006));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n14004), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n14004), .I0(bit_cnt[3]), .I1(GND_net), .CO(n14005));
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14716));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14718));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14736));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14740));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14742));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14750));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n14003), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14752));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_4 (.CI(n14003), .I0(bit_cnt[2]), .I1(GND_net), .CO(n14004));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n14002), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14756));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14758));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14762));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14766));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14768));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14770));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14772));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14776));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n14002), .I0(bit_cnt[1]), .I1(GND_net), .CO(n14003));
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata4[23]), .C(clk_32MHz), .D(n10997));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata4[22]), .C(clk_32MHz), .D(n10996));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata4[21]), .C(clk_32MHz), .D(n10995));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n14002));
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata4[20]), .C(clk_32MHz), .D(n10994));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata4[19]), .C(clk_32MHz), .D(n10993));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata4[18]), .C(clk_32MHz), .D(n10992));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata4[17]), .C(clk_32MHz), .D(n10991));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata4[16]), .C(clk_32MHz), .D(n10990));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata4[15]), .C(clk_32MHz), .D(n10989));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata4[14]), .C(clk_32MHz), .D(n10988));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata4[13]), .C(clk_32MHz), .D(n10987));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata4[12]), .C(clk_32MHz), .D(n10986));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata4[11]), .C(clk_32MHz), .D(n10985));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata4[10]), .C(clk_32MHz), .D(n10984));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata4[9]), .C(clk_32MHz), .D(n10983));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata4[8]), .C(clk_32MHz), .D(n10982));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata4[7]), .C(clk_32MHz), .D(n10981));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata4[6]), .C(clk_32MHz), .D(n10980));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata4[5]), .C(clk_32MHz), .D(n10979));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata4[4]), .C(clk_32MHz), .D(n10978));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata4[3]), .C(clk_32MHz), .D(n10977));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata4[2]), .C(clk_32MHz), .D(n10976));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata4[1]), .C(clk_32MHz), .D(n10975));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n9631), .D(n63[7]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n9631), .D(n63[6]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n9631), .D(n63[5]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n9631), .D(n63[4]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n9631), .D(n63[3]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n9631), .D(n63[2]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n9631), .D(n63[1]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(n10428), .R(n14930));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7886_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata4[23]), .O(n10997));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7886_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7885_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata4[22]), .O(n10996));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7885_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7884_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata4[21]), .O(n10995));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7884_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7883_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata4[20]), .O(n10994));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7883_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7882_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata4[19]), .O(n10993));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7882_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7881_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata4[18]), .O(n10992));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7881_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7880_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata4[17]), .O(n10991));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7880_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7879_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata4[16]), .O(n10990));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7879_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7878_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata4[15]), .O(n10989));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7878_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7877_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata4[14]), .O(n10988));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7877_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7876_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata4[13]), .O(n10987));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7876_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7875_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata4[12]), .O(n10986));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7875_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7874_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata4[11]), .O(n10985));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7874_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7873_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata4[10]), .O(n10984));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7873_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7872_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata4[9]), .O(n10983));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7872_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7871_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata4[8]), .O(n10982));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7871_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7870_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata4[7]), .O(n10981));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7870_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7869_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata4[6]), .O(n10980));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7869_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7868_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata4[5]), .O(n10979));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7868_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7867_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata4[4]), .O(n10978));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7867_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF SCLK_35 (.Q(M_SCLK4), .C(clk_32MHz), .D(n14520));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig4), .C(clk_32MHz), .D(n14518));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n9631), .D(n63[0]), 
            .R(n10783));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata4[0]), .C(clk_32MHz), .D(n10864));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7866_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata4[3]), .O(n10977));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7866_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7864_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata4[1]), .O(n10975));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7864_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7753_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata4[0]), .O(n10864));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7753_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7865_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15144), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata4[2]), .O(n10976));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7865_3_lut_4_lut.LUT_INIT = 16'hf780;
    
endmodule
//
// Verilog Description of module ADC_ADS127_U0
//

module ADC_ADS127_U0 (GND_net, DTRIG_N_957, \adc_state[0] , clk_32MHz, 
            M_DRDY3, \adc_state[1] , n15147, cmd_rdadctmp, buf_adcdata3, 
            n14576, VCC_net, n14578, n14580, n14582, n14584, n14586, 
            n14588, n14590, n14592, n14594, n15162, n8332, n14596, 
            acadc_trig, n14598, n14600, n14602, n14604, n14606, 
            n14608, n14610, n14612, n14614, n14616, n14624, n14626, 
            n14628, n14630, n14634, n14636, n14638, n14640, n14642, 
            n14646, n14658, n11, M_CS3, n14516, M_SCLK3, n14514, 
            acadc_dtrig3);
    input GND_net;
    output DTRIG_N_957;
    output \adc_state[0] ;
    input clk_32MHz;
    input M_DRDY3;
    output \adc_state[1] ;
    input n15147;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata3;
    input n14576;
    input VCC_net;
    input n14578;
    input n14580;
    input n14582;
    input n14584;
    input n14586;
    input n14588;
    input n14590;
    input n14592;
    input n14594;
    input n15162;
    output n8332;
    input n14596;
    input acadc_trig;
    input n14598;
    input n14600;
    input n14602;
    input n14604;
    input n14606;
    input n14608;
    input n14610;
    input n14612;
    input n14614;
    input n14616;
    input n14624;
    input n14626;
    input n14628;
    input n14630;
    input n14634;
    input n14636;
    input n14638;
    input n14640;
    input n14642;
    input n14646;
    input n14658;
    input n11;
    output M_CS3;
    input n14516;
    output M_SCLK3;
    input n14514;
    output acadc_dtrig3;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n13997, n13998, n9514, n10744;
    wire [2:0]adc_state_2__N_862;
    
    wire n15260, n13996, n10974, n10973, n10972, n13995, n10971, 
        n10970, n10969, n10968, n10967, n10966, n15259, n10965, 
        n10964, n10963, n10962, n10961, n10960, n10959, n10958, 
        n10957, n10956, n15334, n15358, n10955, n10954, n15602, 
        n10952, n10861, n10953, n12, n17, n14001, n14000, n13999;
    
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n13997), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n13997), .I0(bit_cnt[3]), .I1(GND_net), .CO(n13998));
    SB_LUT4 i7638_2_lut (.I0(n9514), .I1(DTRIG_N_957), .I2(GND_net), .I3(GND_net), 
            .O(n10744));   // adc_ads127.vhd(34[3] 89[10])
    defparam i7638_2_lut.LUT_INIT = 16'h2222;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n15260), 
            .D(adc_state_2__N_862[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(M_DRDY3), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n9514));
    defparam i1_4_lut.LUT_INIT = 16'h0150;
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n13996), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7863_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata3[23]), .O(n10974));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7863_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7862_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata3[22]), .O(n10973));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7862_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7861_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata3[21]), .O(n10972));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7861_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_4 (.CI(n13996), .I0(bit_cnt[2]), .I1(GND_net), .CO(n13997));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n13995), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14576));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n13995), .I0(bit_cnt[1]), .I1(GND_net), .CO(n13996));
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14578));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14580));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14582));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7860_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata3[20]), .O(n10971));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7860_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14584));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14586));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14588));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14590));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14592));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7859_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata3[19]), .O(n10970));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7859_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n13995));
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14594));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_3_lut (.I0(M_DRDY3), .I1(n15162), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n8332));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14596));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7858_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata3[18]), .O(n10969));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7858_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7857_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata3[17]), .O(n10968));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7857_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7856_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata3[16]), .O(n10967));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7856_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7855_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata3[15]), .O(n10966));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7855_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_4_lut_adj_7 (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(M_DRDY3), 
            .I3(DTRIG_N_957), .O(n15259));
    defparam i1_4_lut_adj_7.LUT_INIT = 16'hddcf;
    SB_LUT4 i7854_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata3[14]), .O(n10965));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7854_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n15259), .I2(GND_net), 
            .I3(GND_net), .O(n15260));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14598));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7853_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata3[13]), .O(n10964));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7853_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7852_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata3[12]), .O(n10963));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7852_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14600));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7851_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata3[11]), .O(n10962));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7851_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14602));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14604));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14606));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14608));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14610));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7850_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata3[10]), .O(n10961));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7850_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14612));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7849_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata3[9]), .O(n10960));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7849_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14614));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7848_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata3[8]), .O(n10959));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7848_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14616));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7847_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata3[7]), .O(n10958));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7847_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7846_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata3[6]), .O(n10957));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7846_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7845_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata3[5]), .O(n10956));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7845_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12127_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n15334));
    defparam i12127_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i12149_4_lut (.I0(bit_cnt[7]), .I1(n15334), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n15358));
    defparam i12149_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i7844_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata3[4]), .O(n10955));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7844_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7843_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata3[3]), .O(n10954));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7843_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i12787_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n15358), .O(n15602));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12787_4_lut.LUT_INIT = 16'h0080;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n15602), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_957), .I3(\adc_state[1] ), .O(adc_state_2__N_862[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14624));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14626));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7841_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata3[1]), .O(n10952));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7841_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14628));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14630));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14634));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14636));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7750_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata3[0]), .O(n10861));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7750_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14638));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14640));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14642));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7842_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15147), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata3[2]), .O(n10953));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7842_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14646));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_862[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_957), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_862[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14658));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(M_CS3), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_957), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_862[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_LUT4 i30_4_lut (.I0(M_DRDY3), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i13060_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i13060_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i9590_3_lut (.I0(DTRIG_N_957), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_862[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i9590_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n14001), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n14000), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata3[23]), .C(clk_32MHz), .D(n10974));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata3[22]), .C(clk_32MHz), .D(n10973));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata3[21]), .C(clk_32MHz), .D(n10972));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata3[20]), .C(clk_32MHz), .D(n10971));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata3[19]), .C(clk_32MHz), .D(n10970));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata3[18]), .C(clk_32MHz), .D(n10969));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata3[17]), .C(clk_32MHz), .D(n10968));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata3[16]), .C(clk_32MHz), .D(n10967));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata3[15]), .C(clk_32MHz), .D(n10966));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata3[14]), .C(clk_32MHz), .D(n10965));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata3[13]), .C(clk_32MHz), .D(n10964));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata3[12]), .C(clk_32MHz), .D(n10963));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata3[11]), .C(clk_32MHz), .D(n10962));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata3[10]), .C(clk_32MHz), .D(n10961));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata3[9]), .C(clk_32MHz), .D(n10960));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata3[8]), .C(clk_32MHz), .D(n10959));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata3[7]), .C(clk_32MHz), .D(n10958));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata3[6]), .C(clk_32MHz), .D(n10957));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n9514), .D(n63[7]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n9514), .D(n63[6]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata3[5]), .C(clk_32MHz), .D(n10956));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata3[4]), .C(clk_32MHz), .D(n10955));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n9514), .D(n63[5]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n9514), .D(n63[4]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n9514), .D(n63[3]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n9514), .D(n63[2]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n9514), .D(n63[1]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata3[3]), .C(clk_32MHz), .D(n10954));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata3[2]), .C(clk_32MHz), .D(n10953));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata3[1]), .C(clk_32MHz), .D(n10952));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(M_SCLK3), .C(clk_32MHz), .D(n14516));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig3), .C(clk_32MHz), .D(n14514));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata3[0]), .C(clk_32MHz), .D(n10861));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n9514), .D(n63[0]), 
            .R(n10744));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_8 (.CI(n14000), .I0(bit_cnt[6]), .I1(GND_net), .CO(n14001));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n13999), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n13999), .I0(bit_cnt[5]), .I1(GND_net), .CO(n14000));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n13998), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n13998), .I0(bit_cnt[4]), .I1(GND_net), .CO(n13999));
    
endmodule
//
// Verilog Description of module ADC_ADS127_U2
//

module ADC_ADS127_U2 (\adc_state[0] , clk_32MHz, \adc_state[1] , DTRIG_N_957, 
            n14644, VCC_net, cmd_rdadctmp, n11, M_CS1, n15153, buf_adcdata1, 
            GND_net, acadc_trig, M_DRDY1, n15168, n8272, n14692, 
            n14694, n14696, n14700, n14702, n14704, n14706, n14708, 
            n14710, n14712, n14714, n14720, n14722, n14724, n14726, 
            n14728, n14730, n14732, n14734, n14738, n14746, n14748, 
            n14754, n14760, n14764, n14774, n14780, n14782, n14784, 
            n14786, n14788, n14508, M_SCLK1, n14506, acadc_dtrig1);
    output \adc_state[0] ;
    input clk_32MHz;
    output \adc_state[1] ;
    output DTRIG_N_957;
    input n14644;
    input VCC_net;
    output [31:0]cmd_rdadctmp;
    input n11;
    output M_CS1;
    input n15153;
    output [23:0]buf_adcdata1;
    input GND_net;
    input acadc_trig;
    input M_DRDY1;
    input n15168;
    output n8272;
    input n14692;
    input n14694;
    input n14696;
    input n14700;
    input n14702;
    input n14704;
    input n14706;
    input n14708;
    input n14710;
    input n14712;
    input n14714;
    input n14720;
    input n14722;
    input n14724;
    input n14726;
    input n14728;
    input n14730;
    input n14732;
    input n14734;
    input n14738;
    input n14746;
    input n14748;
    input n14754;
    input n14760;
    input n14764;
    input n14774;
    input n14780;
    input n14782;
    input n14784;
    input n14786;
    input n14788;
    input n14508;
    output M_SCLK1;
    input n14506;
    output acadc_dtrig1;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    wire [2:0]adc_state_2__N_862;
    
    wire n15264, n12, n10928, n10927, n10926, n10925, n10923, 
        n10922, n10921, n10920, n10919, n10918, n10917;
    wire [7:0]n63;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n13987, n10916, n10915, n10914, n10913, n15263, n10912, 
        n10911, n10910, n10909, n10908, n10907, n10906, n10924, 
        n10855, n13986, n13985, n13984, n13983, n17, n13982, n13981, 
        n15338, n15360, n15553, n9312, n10667;
    
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n15264), 
            .D(adc_state_2__N_862[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(adc_state_2__N_862[1]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_957), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_862[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14644));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(M_CS1), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7817_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata1[23]), .O(n10928));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7817_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7816_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata1[22]), .O(n10927));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7816_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7815_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata1[21]), .O(n10926));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7815_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7814_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata1[20]), .O(n10925));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7814_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7812_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata1[18]), .O(n10923));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7812_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7811_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata1[17]), .O(n10922));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7811_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7810_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata1[16]), .O(n10921));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7810_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7809_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata1[15]), .O(n10920));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7809_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7808_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata1[14]), .O(n10919));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7808_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7807_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata1[13]), .O(n10918));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7807_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7806_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata1[12]), .O(n10917));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7806_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n13987), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i7805_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata1[11]), .O(n10916));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7805_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7804_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata1[10]), .O(n10915));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7804_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7803_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata1[9]), .O(n10914));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7803_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7802_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata1[8]), .O(n10913));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7802_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_4_lut (.I0(acadc_trig), .I1(\adc_state[0] ), .I2(M_DRDY1), 
            .I3(DTRIG_N_957), .O(n15263));
    defparam i1_4_lut.LUT_INIT = 16'hddcf;
    SB_LUT4 i7801_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata1[7]), .O(n10912));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7801_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7800_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata1[6]), .O(n10911));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7800_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7799_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata1[5]), .O(n10910));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7799_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n15263), .I2(GND_net), 
            .I3(GND_net), .O(n15264));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i7798_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata1[4]), .O(n10909));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7798_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7797_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata1[3]), .O(n10908));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7797_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7796_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata1[2]), .O(n10907));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7796_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7795_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata1[1]), .O(n10906));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7795_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7813_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata1[19]), .O(n10924));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7813_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7744_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15153), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata1[0]), .O(n10855));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7744_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n13986), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n13986), .I0(bit_cnt[6]), .I1(GND_net), .CO(n13987));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n13985), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n13985), .I0(bit_cnt[5]), .I1(GND_net), .CO(n13986));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n13984), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n13984), .I0(bit_cnt[4]), .I1(GND_net), .CO(n13985));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n13983), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n13983), .I0(bit_cnt[3]), .I1(GND_net), .CO(n13984));
    SB_LUT4 i1_3_lut (.I0(M_DRDY1), .I1(n15168), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n8272));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut.LUT_INIT = 16'hc4c4;
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_957), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_862[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14692));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i30_4_lut (.I0(M_DRDY1), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i13056_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i13056_2_lut.LUT_INIT = 16'hbbbb;
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14694));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14696));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n13982), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n13982), .I0(bit_cnt[2]), .I1(GND_net), .CO(n13983));
    SB_LUT4 i9581_3_lut (.I0(DTRIG_N_957), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(adc_state_2__N_862[1]));   // adc_ads127.vhd(44[4] 88[13])
    defparam i9581_3_lut.LUT_INIT = 16'h2323;
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n13981), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14700));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_3 (.CI(n13981), .I0(bit_cnt[1]), .I1(GND_net), .CO(n13982));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14702));   // adc_ads127.vhd(34[3] 89[10])
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n13981));
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14704));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14708));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14710));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14712));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14714));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14720));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14722));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14724));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14726));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14728));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14730));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14732));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14734));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14738));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14746));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14748));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14754));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14760));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14764));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14774));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14780));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12131_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[1]), .O(n15338));
    defparam i12131_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14782));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12151_4_lut (.I0(bit_cnt[7]), .I1(n15338), .I2(bit_cnt[0]), 
            .I3(bit_cnt[6]), .O(n15360));
    defparam i12151_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14784));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14786));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i12914_4_lut (.I0(\adc_state[1] ), .I1(bit_cnt[5]), .I2(\adc_state[0] ), 
            .I3(n15360), .O(n15553));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12914_4_lut.LUT_INIT = 16'h0080;
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14788));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n15553), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_957), .I3(\adc_state[1] ), .O(adc_state_2__N_862[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata1[23]), .C(clk_32MHz), .D(n10928));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata1[22]), .C(clk_32MHz), .D(n10927));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n9312), .D(n63[7]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n9312), .D(n63[6]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n9312), .D(n63[5]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n9312), .D(n63[4]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n9312), .D(n63[3]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n9312), .D(n63[2]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n9312), .D(n63[1]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata1[21]), .C(clk_32MHz), .D(n10926));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata1[20]), .C(clk_32MHz), .D(n10925));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata1[19]), .C(clk_32MHz), .D(n10924));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata1[18]), .C(clk_32MHz), .D(n10923));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata1[17]), .C(clk_32MHz), .D(n10922));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata1[16]), .C(clk_32MHz), .D(n10921));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata1[15]), .C(clk_32MHz), .D(n10920));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata1[14]), .C(clk_32MHz), .D(n10919));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata1[13]), .C(clk_32MHz), .D(n10918));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata1[12]), .C(clk_32MHz), .D(n10917));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata1[11]), .C(clk_32MHz), .D(n10916));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata1[10]), .C(clk_32MHz), .D(n10915));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata1[9]), .C(clk_32MHz), .D(n10914));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata1[8]), .C(clk_32MHz), .D(n10913));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata1[7]), .C(clk_32MHz), .D(n10912));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata1[6]), .C(clk_32MHz), .D(n10911));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata1[5]), .C(clk_32MHz), .D(n10910));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata1[4]), .C(clk_32MHz), .D(n10909));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata1[3]), .C(clk_32MHz), .D(n10908));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata1[2]), .C(clk_32MHz), .D(n10907));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata1[1]), .C(clk_32MHz), .D(n10906));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7561_2_lut (.I0(n9312), .I1(DTRIG_N_957), .I2(GND_net), .I3(GND_net), 
            .O(n10667));   // adc_ads127.vhd(34[3] 89[10])
    defparam i7561_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut_adj_6 (.I0(\adc_state[0] ), .I1(M_DRDY1), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n9312));
    defparam i1_4_lut_adj_6.LUT_INIT = 16'h0150;
    SB_DFF SCLK_35 (.Q(M_SCLK1), .C(clk_32MHz), .D(n14508));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig1), .C(clk_32MHz), .D(n14506));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata1[0]), .C(clk_32MHz), .D(n10855));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n9312), .D(n63[0]), 
            .R(n10667));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module ADC_ADS127_U1
//

module ADC_ADS127_U1 (M_DRDY2, acadc_trig, DTRIG_N_957, GND_net, \adc_state[1] , 
            \adc_state[0] , clk_32MHz, n15150, cmd_rdadctmp, buf_adcdata2, 
            n14574, VCC_net, n15165, n8302, n14886, n14650, n14882, 
            n14878, n11, M_CS2, n14876, n14874, n14872, n14870, 
            n14866, n14864, n14862, n14860, n14858, n14856, n14854, 
            n14852, n14850, n14816, n14814, n14812, n14810, n14790, 
            n14792, n14794, n14796, n14798, n14800, n14802, n14804, 
            n14808, n14806, n14512, M_SCLK2, n14510, acadc_dtrig2);
    input M_DRDY2;
    input acadc_trig;
    output DTRIG_N_957;
    input GND_net;
    output \adc_state[1] ;
    output \adc_state[0] ;
    input clk_32MHz;
    input n15150;
    output [31:0]cmd_rdadctmp;
    output [23:0]buf_adcdata2;
    input n14574;
    input VCC_net;
    input n15165;
    output n8302;
    input n14886;
    input n14650;
    input n14882;
    input n14878;
    input n11;
    output M_CS2;
    input n14876;
    input n14874;
    input n14872;
    input n14870;
    input n14866;
    input n14864;
    input n14862;
    input n14860;
    input n14858;
    input n14856;
    input n14854;
    input n14852;
    input n14850;
    input n14816;
    input n14814;
    input n14812;
    input n14810;
    input n14790;
    input n14792;
    input n14794;
    input n14796;
    input n14798;
    input n14800;
    input n14802;
    input n14804;
    input n14808;
    input n14806;
    input n14512;
    output M_SCLK2;
    input n14510;
    output acadc_dtrig2;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    
    wire n15280, n14926, n10426, n9413, n10706;
    wire [7:0]bit_cnt;   // adc_ads127.vhd(28[8:15])
    
    wire n16, n15596, n15595;
    wire [2:0]adc_state_2__N_862;
    
    wire n15262, n10858;
    wire [7:0]n63;
    
    wire n13994, n13993, n13992, n13991, n13990, n13989, n13988, 
        n15261, n12, n10951, n10937, n10949, n10931, n10940, n10944, 
        n17, n10936, n10948, n10932, n10941, n10945, n10935, n10947, 
        n10933, n10942, n10946, n10934, n10929, n10938, n10950, 
        n10930, n10939, n10943;
    
    SB_LUT4 i18_3_lut (.I0(M_DRDY2), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(GND_net), .O(n15280));   // adc_ads127.vhd(34[3] 89[10])
    defparam i18_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_3_lut (.I0(\adc_state[1] ), .I1(\adc_state[0] ), .I2(n15280), 
            .I3(GND_net), .O(n14926));   // adc_ads127.vhd(34[3] 89[10])
    defparam i1_3_lut.LUT_INIT = 16'h8a8a;
    SB_LUT4 i7315_2_lut (.I0(DTRIG_N_957), .I1(\adc_state[0] ), .I2(GND_net), 
            .I3(GND_net), .O(n10426));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7315_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i7600_2_lut (.I0(n9413), .I1(DTRIG_N_957), .I2(GND_net), .I3(GND_net), 
            .O(n10706));   // adc_ads127.vhd(34[3] 89[10])
    defparam i7600_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(\adc_state[0] ), .I1(M_DRDY2), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n9413));
    defparam i1_4_lut.LUT_INIT = 16'h0150;
    SB_LUT4 i6_4_lut (.I0(bit_cnt[0]), .I1(\adc_state[1] ), .I2(\adc_state[0] ), 
            .I3(bit_cnt[6]), .O(n16));
    defparam i6_4_lut.LUT_INIT = 16'h0040;
    SB_LUT4 i12926_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(bit_cnt[4]), 
            .I3(bit_cnt[5]), .O(n15596));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12926_4_lut.LUT_INIT = 16'h0100;
    SB_LUT4 i12780_4_lut (.I0(n15596), .I1(bit_cnt[1]), .I2(n16), .I3(bit_cnt[7]), 
            .O(n15595));   // adc_ads127.vhd(44[4] 88[13])
    defparam i12780_4_lut.LUT_INIT = 16'h0020;
    SB_LUT4 adc_state_2__I_0_43_Mux_0_i7_4_lut (.I0(n15595), .I1(\adc_state[0] ), 
            .I2(DTRIG_N_957), .I3(\adc_state[1] ), .O(adc_state_2__N_862[0]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_0_i7_4_lut.LUT_INIT = 16'h0a3a;
    SB_DFFE adc_state_i0 (.Q(\adc_state[0] ), .C(clk_32MHz), .E(n15262), 
            .D(adc_state_2__N_862[0]));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7747_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[8]), 
            .I3(buf_adcdata2[0]), .O(n10858));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7747_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFFE cmd_rdadctmp_i31 (.Q(cmd_rdadctmp[31]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14574));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_3_lut_adj_4 (.I0(M_DRDY2), .I1(n15165), .I2(\adc_state[0] ), 
            .I3(GND_net), .O(n8302));   // adc_ads127.vhd(44[4] 88[13])
    defparam i1_3_lut_adj_4.LUT_INIT = 16'hc4c4;
    SB_LUT4 add_14_9_lut (.I0(GND_net), .I1(bit_cnt[7]), .I2(GND_net), 
            .I3(n13994), .O(n63[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_14_8_lut (.I0(GND_net), .I1(bit_cnt[6]), .I2(GND_net), 
            .I3(n13993), .O(n63[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_8 (.CI(n13993), .I0(bit_cnt[6]), .I1(GND_net), .CO(n13994));
    SB_LUT4 add_14_7_lut (.I0(GND_net), .I1(bit_cnt[5]), .I2(GND_net), 
            .I3(n13992), .O(n63[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_7 (.CI(n13992), .I0(bit_cnt[5]), .I1(GND_net), .CO(n13993));
    SB_LUT4 add_14_6_lut (.I0(GND_net), .I1(bit_cnt[4]), .I2(GND_net), 
            .I3(n13991), .O(n63[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_6 (.CI(n13991), .I0(bit_cnt[4]), .I1(GND_net), .CO(n13992));
    SB_LUT4 add_14_5_lut (.I0(GND_net), .I1(bit_cnt[3]), .I2(GND_net), 
            .I3(n13990), .O(n63[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_5 (.CI(n13990), .I0(bit_cnt[3]), .I1(GND_net), .CO(n13991));
    SB_LUT4 add_14_4_lut (.I0(GND_net), .I1(bit_cnt[2]), .I2(GND_net), 
            .I3(n13989), .O(n63[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_4 (.CI(n13989), .I0(bit_cnt[2]), .I1(GND_net), .CO(n13990));
    SB_LUT4 add_14_3_lut (.I0(GND_net), .I1(bit_cnt[1]), .I2(GND_net), 
            .I3(n13988), .O(n63[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_14_3 (.CI(n13988), .I0(bit_cnt[1]), .I1(GND_net), .CO(n13989));
    SB_LUT4 add_14_2_lut (.I0(GND_net), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(VCC_net), .O(n63[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_14_2_lut.LUT_INIT = 16'hC33C;
    SB_DFF cmd_rdadctmp_i30 (.Q(cmd_rdadctmp[30]), .C(clk_32MHz), .D(n14886));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_4_lut_adj_5 (.I0(acadc_trig), .I1(DTRIG_N_957), .I2(M_DRDY2), 
            .I3(\adc_state[0] ), .O(n15261));
    defparam i1_4_lut_adj_5.LUT_INIT = 16'hff47;
    SB_DFFE adc_state_i2 (.Q(DTRIG_N_957), .C(clk_32MHz), .E(n12), .D(adc_state_2__N_862[2]));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i0 (.Q(cmd_rdadctmp[0]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14650));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7840_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[31]), 
            .I3(buf_adcdata2[23]), .O(n10951));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7840_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7826_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[17]), 
            .I3(buf_adcdata2[9]), .O(n10937));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7826_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7838_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[29]), 
            .I3(buf_adcdata2[21]), .O(n10949));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7838_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i29 (.Q(cmd_rdadctmp[29]), .C(clk_32MHz), .D(n14882));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i28 (.Q(cmd_rdadctmp[28]), .C(clk_32MHz), .D(n14878));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE CS_37 (.Q(M_CS2), .C(clk_32MHz), .E(VCC_net), .D(n11));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i27 (.Q(cmd_rdadctmp[27]), .C(clk_32MHz), .D(n14876));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i26 (.Q(cmd_rdadctmp[26]), .C(clk_32MHz), .D(n14874));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7820_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[11]), 
            .I3(buf_adcdata2[3]), .O(n10931));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7820_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i25 (.Q(cmd_rdadctmp[25]), .C(clk_32MHz), .D(n14872));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7829_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[20]), 
            .I3(buf_adcdata2[12]), .O(n10940));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7829_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i24 (.Q(cmd_rdadctmp[24]), .C(clk_32MHz), .D(n14870));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i1_2_lut (.I0(\adc_state[1] ), .I1(n15261), .I2(GND_net), 
            .I3(GND_net), .O(n15262));
    defparam i1_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY add_14_2 (.CI(VCC_net), .I0(bit_cnt[0]), .I1(GND_net), .CO(n13988));
    SB_DFF cmd_rdadctmp_i23 (.Q(cmd_rdadctmp[23]), .C(clk_32MHz), .D(n14866));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7833_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[24]), 
            .I3(buf_adcdata2[16]), .O(n10944));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7833_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i30_4_lut (.I0(M_DRDY2), .I1(acadc_trig), .I2(DTRIG_N_957), 
            .I3(\adc_state[1] ), .O(n17));
    defparam i30_4_lut.LUT_INIT = 16'hca03;
    SB_LUT4 i13058_2_lut (.I0(\adc_state[0] ), .I1(n17), .I2(GND_net), 
            .I3(GND_net), .O(n12));
    defparam i13058_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 i7825_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[16]), 
            .I3(buf_adcdata2[8]), .O(n10936));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7825_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 adc_state_2__I_0_43_Mux_2_i7_3_lut (.I0(\adc_state[1] ), .I1(DTRIG_N_957), 
            .I2(\adc_state[0] ), .I3(GND_net), .O(adc_state_2__N_862[2]));   // adc_ads127.vhd(44[4] 88[13])
    defparam adc_state_2__I_0_43_Mux_2_i7_3_lut.LUT_INIT = 16'h6262;
    SB_DFF cmd_rdadctmp_i22 (.Q(cmd_rdadctmp[22]), .C(clk_32MHz), .D(n14864));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i21 (.Q(cmd_rdadctmp[21]), .C(clk_32MHz), .D(n14862));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i20 (.Q(cmd_rdadctmp[20]), .C(clk_32MHz), .D(n14860));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i19 (.Q(cmd_rdadctmp[19]), .C(clk_32MHz), .D(n14858));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i18 (.Q(cmd_rdadctmp[18]), .C(clk_32MHz), .D(n14856));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i17 (.Q(cmd_rdadctmp[17]), .C(clk_32MHz), .D(n14854));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i16 (.Q(cmd_rdadctmp[16]), .C(clk_32MHz), .D(n14852));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i15 (.Q(cmd_rdadctmp[15]), .C(clk_32MHz), .D(n14850));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i14 (.Q(cmd_rdadctmp[14]), .C(clk_32MHz), .D(n14816));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i13 (.Q(cmd_rdadctmp[13]), .C(clk_32MHz), .D(n14814));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7837_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[28]), 
            .I3(buf_adcdata2[20]), .O(n10948));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7837_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i12 (.Q(cmd_rdadctmp[12]), .C(clk_32MHz), .D(n14812));   // adc_ads127.vhd(34[3] 89[10])
    SB_LUT4 i7821_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[12]), 
            .I3(buf_adcdata2[4]), .O(n10932));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7821_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7830_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[21]), 
            .I3(buf_adcdata2[13]), .O(n10941));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7830_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7834_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[25]), 
            .I3(buf_adcdata2[17]), .O(n10945));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7834_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7824_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[15]), 
            .I3(buf_adcdata2[7]), .O(n10935));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7824_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7836_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[27]), 
            .I3(buf_adcdata2[19]), .O(n10947));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7836_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7822_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[13]), 
            .I3(buf_adcdata2[5]), .O(n10933));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7822_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7831_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[22]), 
            .I3(buf_adcdata2[14]), .O(n10942));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7831_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7835_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[26]), 
            .I3(buf_adcdata2[18]), .O(n10946));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7835_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7823_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[14]), 
            .I3(buf_adcdata2[6]), .O(n10934));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7823_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7818_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[9]), 
            .I3(buf_adcdata2[1]), .O(n10929));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7818_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7827_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[18]), 
            .I3(buf_adcdata2[10]), .O(n10938));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7827_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7839_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[30]), 
            .I3(buf_adcdata2[22]), .O(n10950));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7839_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7819_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[10]), 
            .I3(buf_adcdata2[2]), .O(n10930));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7819_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7828_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[19]), 
            .I3(buf_adcdata2[11]), .O(n10939));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7828_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_LUT4 i7832_3_lut_4_lut (.I0(\adc_state[0] ), .I1(n15150), .I2(cmd_rdadctmp[23]), 
            .I3(buf_adcdata2[15]), .O(n10943));   // adc_ads127.vhd(44[4] 88[13])
    defparam i7832_3_lut_4_lut.LUT_INIT = 16'hf780;
    SB_DFF cmd_rdadctmp_i11 (.Q(cmd_rdadctmp[11]), .C(clk_32MHz), .D(n14810));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i1 (.Q(cmd_rdadctmp[1]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14790));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i2 (.Q(cmd_rdadctmp[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14792));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i3 (.Q(cmd_rdadctmp[3]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14794));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i4 (.Q(cmd_rdadctmp[4]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14796));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i5 (.Q(cmd_rdadctmp[5]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14798));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i6 (.Q(cmd_rdadctmp[6]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14800));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i7 (.Q(cmd_rdadctmp[7]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14802));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i8 (.Q(cmd_rdadctmp[8]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14804));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF cmd_rdadctmp_i10 (.Q(cmd_rdadctmp[10]), .C(clk_32MHz), .D(n14808));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFE cmd_rdadctmp_i9 (.Q(cmd_rdadctmp[9]), .C(clk_32MHz), .E(VCC_net), 
            .D(n14806));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i23 (.Q(buf_adcdata2[23]), .C(clk_32MHz), .D(n10951));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i22 (.Q(buf_adcdata2[22]), .C(clk_32MHz), .D(n10950));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i21 (.Q(buf_adcdata2[21]), .C(clk_32MHz), .D(n10949));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i20 (.Q(buf_adcdata2[20]), .C(clk_32MHz), .D(n10948));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i19 (.Q(buf_adcdata2[19]), .C(clk_32MHz), .D(n10947));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i18 (.Q(buf_adcdata2[18]), .C(clk_32MHz), .D(n10946));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i17 (.Q(buf_adcdata2[17]), .C(clk_32MHz), .D(n10945));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i16 (.Q(buf_adcdata2[16]), .C(clk_32MHz), .D(n10944));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i7 (.Q(bit_cnt[7]), .C(clk_32MHz), .E(n9413), .D(n63[7]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i15 (.Q(buf_adcdata2[15]), .C(clk_32MHz), .D(n10943));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i14 (.Q(buf_adcdata2[14]), .C(clk_32MHz), .D(n10942));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i6 (.Q(bit_cnt[6]), .C(clk_32MHz), .E(n9413), .D(n63[6]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i5 (.Q(bit_cnt[5]), .C(clk_32MHz), .E(n9413), .D(n63[5]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i4 (.Q(bit_cnt[4]), .C(clk_32MHz), .E(n9413), .D(n63[4]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i13 (.Q(buf_adcdata2[13]), .C(clk_32MHz), .D(n10941));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(n9413), .D(n63[3]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(n9413), .D(n63[2]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(n9413), .D(n63[1]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR adc_state_i1 (.Q(\adc_state[1] ), .C(clk_32MHz), .E(n12), 
            .D(n10426), .R(n14926));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i12 (.Q(buf_adcdata2[12]), .C(clk_32MHz), .D(n10940));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i11 (.Q(buf_adcdata2[11]), .C(clk_32MHz), .D(n10939));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i10 (.Q(buf_adcdata2[10]), .C(clk_32MHz), .D(n10938));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i9 (.Q(buf_adcdata2[9]), .C(clk_32MHz), .D(n10937));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i8 (.Q(buf_adcdata2[8]), .C(clk_32MHz), .D(n10936));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i7 (.Q(buf_adcdata2[7]), .C(clk_32MHz), .D(n10935));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i6 (.Q(buf_adcdata2[6]), .C(clk_32MHz), .D(n10934));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i5 (.Q(buf_adcdata2[5]), .C(clk_32MHz), .D(n10933));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i4 (.Q(buf_adcdata2[4]), .C(clk_32MHz), .D(n10932));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i3 (.Q(buf_adcdata2[3]), .C(clk_32MHz), .D(n10931));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i2 (.Q(buf_adcdata2[2]), .C(clk_32MHz), .D(n10930));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i1 (.Q(buf_adcdata2[1]), .C(clk_32MHz), .D(n10929));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF SCLK_35 (.Q(M_SCLK2), .C(clk_32MHz), .D(n14512));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF DTRIG_39 (.Q(acadc_dtrig2), .C(clk_32MHz), .D(n14510));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFF ADC_DATA_i0 (.Q(buf_adcdata2[0]), .C(clk_32MHz), .D(n10858));   // adc_ads127.vhd(34[3] 89[10])
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(n9413), .D(n63[0]), 
            .R(n10706));   // adc_ads127.vhd(34[3] 89[10])
    
endmodule
//
// Verilog Description of module DDS_AD9837
//

module DDS_AD9837 (\dds_state_2__N_963[0] , dds_state, clk_32MHz, DDS_CS1, 
            GND_net, trig_dds, n10823, buf_dds, \tmp_buf[15] , bit_cnt, 
            n10, n11453, VCC_net, \bit_cnt_3__N_1011[3] , \bit_cnt_3__N_1011[2] , 
            \bit_cnt_3__N_1011[1] , n10868, DDS_MOSI1, n10867, DDS_SCK1);
    input \dds_state_2__N_963[0] ;
    output [2:0]dds_state;
    input clk_32MHz;
    output DDS_CS1;
    input GND_net;
    input trig_dds;
    output n10823;
    input [15:0]buf_dds;
    output \tmp_buf[15] ;
    output [3:0]bit_cnt;
    output n10;
    input n11453;
    input VCC_net;
    input \bit_cnt_3__N_1011[3] ;
    input \bit_cnt_3__N_1011[2] ;
    input \bit_cnt_3__N_1011[1] ;
    input n10868;
    output DDS_MOSI1;
    input n10867;
    output DDS_SCK1;
    
    wire clk_32MHz /* synthesis is_clock=1, SET_AS_NETWORK=clk_32MHz */ ;   // zimaux_main.vhd(202[9:18])
    
    wire n9, CS_N_1016, n9_adj_1021;
    wire [15:0]tmp_buf_15__N_966;
    
    wire n9759;
    wire [15:0]tmp_buf;   // dds_ad9837.vhd(24[9:16])
    
    wire n7285, n3;
    
    SB_DFFE dds_state_i0 (.Q(dds_state[0]), .C(clk_32MHz), .E(n9), .D(\dds_state_2__N_963[0] ));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE CS_28 (.Q(DDS_CS1), .C(clk_32MHz), .E(n9_adj_1021), .D(CS_N_1016));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i0 (.Q(tmp_buf[0]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[0]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_LUT4 i7235_2_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n7285));   // dds_ad9837.vhd(32[4] 74[13])
    defparam i7235_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i1_2_lut (.I0(dds_state[1]), .I1(dds_state[2]), .I2(GND_net), 
            .I3(GND_net), .O(n3));
    defparam i1_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_4_lut (.I0(dds_state[1]), .I1(trig_dds), .I2(dds_state[0]), 
            .I3(dds_state[2]), .O(n9759));
    defparam i1_4_lut.LUT_INIT = 16'haf10;
    SB_LUT4 i7713_3_lut (.I0(dds_state[1]), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(GND_net), .O(n10823));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i7713_3_lut.LUT_INIT = 16'ha2a2;
    SB_LUT4 dds_state_2__I_0_34_Mux_15_i7_4_lut (.I0(buf_dds[15]), .I1(tmp_buf[14]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[15]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_15_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_14_i7_4_lut (.I0(buf_dds[14]), .I1(tmp_buf[13]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[14]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_14_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_13_i7_4_lut (.I0(buf_dds[13]), .I1(tmp_buf[12]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[13]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_13_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_0_i7_4_lut (.I0(buf_dds[0]), .I1(\tmp_buf[15] ), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[0]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_0_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_12_i7_4_lut (.I0(buf_dds[12]), .I1(tmp_buf[11]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[12]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_12_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_11_i7_4_lut (.I0(buf_dds[11]), .I1(tmp_buf[10]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[11]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_11_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_10_i7_4_lut (.I0(buf_dds[10]), .I1(tmp_buf[9]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[10]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_10_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_9_i7_4_lut (.I0(buf_dds[9]), .I1(tmp_buf[8]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[9]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_9_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_8_i7_4_lut (.I0(buf_dds[8]), .I1(tmp_buf[7]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[8]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_8_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_7_i7_4_lut (.I0(buf_dds[7]), .I1(tmp_buf[6]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[7]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_7_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i23_4_lut (.I0(trig_dds), .I1(dds_state[0]), .I2(dds_state[2]), 
            .I3(dds_state[1]), .O(n9_adj_1021));
    defparam i23_4_lut.LUT_INIT = 16'hf0c7;
    SB_LUT4 dds_state_2__I_0_34_Mux_6_i7_4_lut (.I0(buf_dds[6]), .I1(tmp_buf[5]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[6]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_6_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_5_i7_4_lut (.I0(buf_dds[5]), .I1(tmp_buf[4]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[5]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_5_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_4_i7_4_lut (.I0(buf_dds[4]), .I1(tmp_buf[3]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[4]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_4_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_3_i7_4_lut (.I0(buf_dds[3]), .I1(tmp_buf[2]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[3]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_3_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_2_i7_4_lut (.I0(buf_dds[2]), .I1(tmp_buf[1]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[2]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_2_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_34_Mux_1_i7_4_lut (.I0(buf_dds[1]), .I1(tmp_buf[0]), 
            .I2(dds_state[2]), .I3(dds_state[1]), .O(tmp_buf_15__N_966[1]));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_34_Mux_1_i7_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 dds_state_2__I_0_i7_3_lut (.I0(dds_state[0]), .I1(dds_state[1]), 
            .I2(dds_state[2]), .I3(GND_net), .O(CS_N_1016));   // dds_ad9837.vhd(32[4] 74[13])
    defparam dds_state_2__I_0_i7_3_lut.LUT_INIT = 16'h3535;
    SB_LUT4 i13064_4_lut (.I0(dds_state[0]), .I1(dds_state[2]), .I2(trig_dds), 
            .I3(dds_state[1]), .O(n9));
    defparam i13064_4_lut.LUT_INIT = 16'hffde;
    SB_LUT4 i4_4_lut (.I0(bit_cnt[2]), .I1(bit_cnt[3]), .I2(dds_state[0]), 
            .I3(bit_cnt[0]), .O(n10));   // dds_ad9837.vhd(31[3] 75[10])
    defparam i4_4_lut.LUT_INIT = 16'h8000;
    SB_DFFE tmp_buf_i1 (.Q(tmp_buf[1]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i2 (.Q(tmp_buf[2]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[2]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i3 (.Q(tmp_buf[3]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[3]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i4 (.Q(tmp_buf[4]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[4]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i5 (.Q(tmp_buf[5]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[5]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i6 (.Q(tmp_buf[6]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[6]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i7 (.Q(tmp_buf[7]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[7]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i8 (.Q(tmp_buf[8]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[8]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i9 (.Q(tmp_buf[9]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[9]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i10 (.Q(tmp_buf[10]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[10]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i11 (.Q(tmp_buf[11]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[11]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i12 (.Q(tmp_buf[12]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[12]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i13 (.Q(tmp_buf[13]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[13]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i14 (.Q(tmp_buf[14]), .C(clk_32MHz), .E(n9759), .D(tmp_buf_15__N_966[14]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE tmp_buf_i15 (.Q(\tmp_buf[15] ), .C(clk_32MHz), .E(n9759), 
            .D(tmp_buf_15__N_966[15]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE bit_cnt_i0 (.Q(bit_cnt[0]), .C(clk_32MHz), .E(VCC_net), .D(n11453));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFE dds_state_i2 (.Q(dds_state[2]), .C(clk_32MHz), .E(VCC_net), 
            .D(n3));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1011[3] ), .R(n10823));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1011[2] ), .R(n10823));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(clk_32MHz), .E(dds_state[1]), 
            .D(\bit_cnt_3__N_1011[1] ), .R(n10823));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFFESR dds_state_i1 (.Q(dds_state[1]), .C(clk_32MHz), .E(n9), .D(n7285), 
            .R(dds_state[1]));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF MOSI_31 (.Q(DDS_MOSI1), .C(clk_32MHz), .D(n10868));   // dds_ad9837.vhd(31[3] 75[10])
    SB_DFF SCLK_27 (.Q(DDS_SCK1), .C(clk_32MHz), .D(n10867));   // dds_ad9837.vhd(31[3] 75[10])
    
endmodule
