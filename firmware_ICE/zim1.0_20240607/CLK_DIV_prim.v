// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Jul 25 15:04:12 2018
//
// Verilog Description of module CLK_DIV
//

module CLK_DIV (CLK, RESET, DCNT, CLKOUT);   // clk_div.vhd(6[8:15])
    input CLK;   // clk_div.vhd(8[4:7])
    input RESET;   // clk_div.vhd(9[4:9])
    input [15:0]DCNT;   // clk_div.vhd(10[4:8])
    output CLKOUT;   // clk_div.vhd(11[4:10])
    
    wire CLK /* synthesis SET_AS_NETWORK=CLK, is_clock=1 */ ;   // clk_div.vhd(8[4:7])
    
    wire GND_net, VCC_net, n319, t_clk;
    wire [15:0]divcnt;   // clk_div.vhd(19[9:15])
    wire [1:0]cnt_state;   // clk_div.vhd(22[9:18])
    wire [1:0]state0;   // clk_div.vhd(25[9:15])
    wire [15:0]t0on;   // clk_div.vhd(27[9:13])
    wire [15:0]t0off;   // clk_div.vhd(28[9:14])
    
    wire n1004;
    wire [1:0]cnt;   // clk_div.vhd(30[9:12])
    
    wire clk3, n656, n1046, n611, n432, n748, n1;
    wire [1:0]cnt_state_1__N_3;
    
    wire clk3_N_91, n1018, n57, n1017, n423, n437, n56, n495, 
        n1_adj_1, n1114, n1005, n1030, n335, n336, n337, n338, 
        n339, n340, n341, n342, n343, n344, n345, n346, n347, 
        n348, n349, n350, n1111, n354, n355, n356, n357, n358, 
        n359, n360, n361, n362, n363, n364, n365, n366, n367, 
        n368, t_clk_N_87, n1016, n1115, n1025, n742, n1040, n17, 
        n1006, n1029;
    wire [15:0]t0off_15__N_63;
    wire [1:0]state0_1__N_5;
    
    wire n1_adj_2, n1_adj_3, n1107, n687, n10, n28, n27, n1092, 
        n26, n1105, n686, n1101, n1015, n1035, n318, n317, n320, 
        n321, n322, n323, n324, n325, n326, n327, n328, n329, 
        n330, n331, n332, n1045, n1007, n1024, n1023, n1044, 
        n1028, n1039, n1038, n1011, n1034, n1093, n1129, n1027, 
        n1043, n4, n5, n6, n7, n8, n9, n10_adj_4, n11, n12, 
        n1042, n14, n1026, n1033, n17_adj_5, n1022, n1021, n1020, 
        n1019, n688, n10_adj_6, n1126, n1_adj_7, n1_adj_8, n1_adj_9, 
        n1_adj_10, n1_adj_11, n1_adj_12, n1_adj_13, n1_adj_14, n24, 
        n1_adj_15, n1_adj_16, n22, n20, n1014, n1008, n16, n1124, 
        n1_adj_17, n13, n1123, n1013, n1037, n1012, n740, n28_adj_18, 
        n1036, n1010, n1032, n1031, n27_adj_19, n1041, n26_adj_20, 
        n1009, n1048, n1047;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 mux_45_Mux_13_i3_3_lut (.I0(n355), .I1(n337), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[13]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_13_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i755_4_lut (.I0(DCNT[6]), .I1(DCNT[10]), .I2(DCNT[8]), .I3(DCNT[11]), 
            .O(n1101));
    defparam i755_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i9_4_lut (.I0(DCNT[9]), .I1(DCNT[12]), .I2(DCNT[11]), .I3(DCNT[7]), 
            .O(n22));
    defparam i9_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 mux_45_Mux_12_i3_3_lut (.I0(n356), .I1(n338), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[12]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_12_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i552_2_lut (.I0(DCNT[12]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[12]));   // clk_div.vhd(37[12:46])
    defparam i552_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_4_lut (.I0(RESET), .I1(n57), .I2(state0[0]), .I3(state0[1]), 
            .O(n611));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'h0054;
    SB_DFFR cnt_148_157__i1 (.Q(cnt[0]), .C(CLK), .D(n10), .R(RESET));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    SB_LUT4 sub_72_inv_0_i1_1_lut_2_lut (.I0(DCNT[1]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n17_adj_5));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i1_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 mux_45_Mux_11_i3_3_lut (.I0(n357), .I1(n339), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[11]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_11_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_72_add_2_14_lut (.I0(GND_net), .I1(divcnt[12]), .I2(n5), 
            .I3(n1045), .O(n356)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut (.I0(RESET), .I1(DCNT[4]), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[4]));
    defparam i1_2_lut.LUT_INIT = 16'h4444;
    SB_CARRY sub_72_add_2_14 (.CI(n1045), .I0(divcnt[12]), .I1(n5), .CO(n1046));
    SB_LUT4 sub_72_add_2_13_lut (.I0(GND_net), .I1(divcnt[11]), .I2(n6), 
            .I3(n1044), .O(n357)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_72_inv_0_i12_1_lut_2_lut (.I0(DCNT[12]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i12_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY add_70_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n1019));
    SB_LUT4 sub_72_inv_0_i8_1_lut_2_lut (.I0(DCNT[8]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n10_adj_4));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i8_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY sub_72_add_2_13 (.CI(n1044), .I0(divcnt[11]), .I1(n6), .CO(n1045));
    SB_LUT4 add_70_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n1020), 
            .O(n330)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_72_add_2_12_lut (.I0(GND_net), .I1(divcnt[10]), .I2(n7), 
            .I3(n1043), .O(n358)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_71_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(n350)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_3 (.CI(n1004), .I0(t0off[1]), .I1(VCC_net), .CO(n1005));
    SB_CARRY add_71_15 (.CI(n1016), .I0(t0off[13]), .I1(VCC_net), .CO(n1017));
    SB_LUT4 add_70_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n1023), 
            .O(n327)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i760_4_lut (.I0(DCNT[15]), .I1(n1101), .I2(DCNT[5]), .I3(DCNT[2]), 
            .O(n1107));
    defparam i760_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFR state0_i0 (.Q(state0[0]), .C(CLK), .D(n1115), .R(RESET));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i0 (.Q(t0on[0]), .C(CLK), .E(n611), .D(n1_adj_3));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i0 (.Q(t0off[0]), .C(CLK), .E(n656), .D(t0off_15__N_63[0]));   // clk_div.vhd(82[3] 114[10])
    SB_LUT4 i764_4_lut (.I0(DCNT[14]), .I1(DCNT[9]), .I2(DCNT[7]), .I3(DCNT[13]), 
            .O(n1111));
    defparam i764_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFR cnt_state_i1 (.Q(cnt_state[1]), .C(CLK), .D(cnt_state_1__N_3[1]), 
            .R(RESET));   // clk_div.vhd(61[3] 76[10])
    SB_CARRY sub_72_add_2_12 (.CI(n1043), .I0(divcnt[10]), .I1(n7), .CO(n1044));
    SB_LUT4 sub_72_add_2_11_lut (.I0(GND_net), .I1(divcnt[9]), .I2(n8), 
            .I3(n1042), .O(n359)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_15 (.CI(n1046), .I0(divcnt[13]), .I1(n4), .CO(n1047));
    SB_LUT4 i1_2_lut_adj_1 (.I0(RESET), .I1(DCNT[5]), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[5]));
    defparam i1_2_lut_adj_1.LUT_INIT = 16'h4444;
    SB_LUT4 i7_3_lut (.I0(DCNT[6]), .I1(DCNT[2]), .I2(DCNT[4]), .I3(GND_net), 
            .O(n20));
    defparam i7_3_lut.LUT_INIT = 16'hfefe;
    SB_LUT4 i11_4_lut (.I0(DCNT[5]), .I1(n22), .I2(n16), .I3(DCNT[3]), 
            .O(n24));
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i702_1_lut (.I0(cnt[0]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(n10));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(928[41:65])
    defparam i702_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i535_2_lut (.I0(DCNT[0]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[0]));   // clk_div.vhd(37[12:46])
    defparam i535_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_45_Mux_10_i3_3_lut (.I0(n358), .I1(n340), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[10]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_10_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_71_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n1004), 
            .O(n349)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_45_Mux_9_i3_3_lut (.I0(n359), .I1(n341), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[9]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_9_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i12_4_lut (.I0(DCNT[8]), .I1(n24), .I2(n20), .I3(DCNT[10]), 
            .O(n56));
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_CARRY add_71_9 (.CI(n1010), .I0(t0off[7]), .I1(VCC_net), .CO(n1011));
    SB_LUT4 add_71_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n1009), 
            .O(n344)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i452_1_lut_2_lut (.I0(RESET), .I1(DCNT[15]), .I2(GND_net), 
            .I3(GND_net), .O(divcnt[15]));   // clk_div.vhd(9[4:9])
    defparam i452_1_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i542_2_lut (.I0(DCNT[6]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[6]));   // clk_div.vhd(37[12:46])
    defparam i542_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_71_8 (.CI(n1009), .I0(t0off[6]), .I1(VCC_net), .CO(n1010));
    SB_CARRY sub_72_add_2_11 (.CI(n1042), .I0(divcnt[9]), .I1(n8), .CO(n1043));
    SB_LUT4 add_71_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n1008), 
            .O(n345)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_45_Mux_8_i3_3_lut (.I0(n360), .I1(n342), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[8]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_8_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_71_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n1013), .O(n340)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i766_3_lut (.I0(RESET), .I1(DCNT[12]), .I2(DCNT[4]), .I3(GND_net), 
            .O(n1114));
    defparam i766_3_lut.LUT_INIT = 16'h5454;
    SB_CARRY add_71_12 (.CI(n1013), .I0(t0off[10]), .I1(VCC_net), .CO(n1014));
    SB_LUT4 i536_2_lut (.I0(DCNT[8]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[8]));   // clk_div.vhd(37[12:46])
    defparam i536_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i1_2_lut_adj_2 (.I0(RESET), .I1(DCNT[3]), .I2(GND_net), .I3(GND_net), 
            .O(n748));   // clk_div.vhd(9[4:9])
    defparam i1_2_lut_adj_2.LUT_INIT = 16'hbbbb;
    SB_LUT4 add_71_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n1006), 
            .O(n347)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_44_Mux_2_i1_3_lut (.I0(n748), .I1(n330), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_13));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_2_i1_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 mux_45_Mux_7_i3_3_lut (.I0(n361), .I1(n343), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[7]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_7_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_45_Mux_6_i3_3_lut (.I0(n362), .I1(n344), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[6]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_6_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_4_lut (.I0(DCNT[3]), .I1(RESET), .I2(n1111), .I3(n1107), 
            .O(n13));
    defparam i1_4_lut.LUT_INIT = 16'hcccd;
    SB_LUT4 i1_2_lut_adj_3 (.I0(DCNT[15]), .I1(n56), .I2(GND_net), .I3(GND_net), 
            .O(n57));
    defparam i1_2_lut_adj_3.LUT_INIT = 16'heeee;
    SB_LUT4 mux_132_i1_3_lut_4_lut (.I0(cnt[0]), .I1(clk3), .I2(DCNT[0]), 
            .I3(RESET), .O(n432));   // clk_div.vhd(39[12] 43[12])
    defparam mux_132_i1_3_lut_4_lut.LUT_INIT = 16'hccca;
    SB_LUT4 add_71_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n1015), .O(n338)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_14_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_71_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n1018), .O(n335)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_72_add_2_15_lut (.I0(GND_net), .I1(divcnt[13]), .I2(n4), 
            .I3(n1046), .O(n355)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_72_add_2_10_lut (.I0(GND_net), .I1(divcnt[8]), .I2(n9), 
            .I3(n1041), .O(n360)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_16 (.CI(n1047), .I0(divcnt[14]), .I1(n742), 
            .CO(n1048));
    SB_CARRY sub_72_add_2_10 (.CI(n1041), .I0(divcnt[8]), .I1(n9), .CO(n1042));
    SB_LUT4 i1_2_lut_adj_4 (.I0(RESET), .I1(DCNT[2]), .I2(GND_net), .I3(GND_net), 
            .O(n740));   // clk_div.vhd(9[4:9])
    defparam i1_2_lut_adj_4.LUT_INIT = 16'hbbbb;
    SB_LUT4 sub_72_add_2_16_lut (.I0(GND_net), .I1(divcnt[14]), .I2(n742), 
            .I3(n1047), .O(n354)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i1_2_lut_4_lut_adj_5 (.I0(state0[1]), .I1(RESET), .I2(n57), 
            .I3(state0[0]), .O(n1092));
    defparam i1_2_lut_4_lut_adj_5.LUT_INIT = 16'hffba;
    SB_LUT4 mux_45_Mux_5_i3_3_lut (.I0(n363), .I1(n345), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[5]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_5_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_136_i1_4_lut (.I0(divcnt[0]), .I1(n432), .I2(divcnt[1]), 
            .I3(CLK), .O(n437));   // clk_div.vhd(39[12] 43[12])
    defparam mux_136_i1_4_lut.LUT_INIT = 16'hcfc5;
    SB_LUT4 sub_72_add_2_9_lut (.I0(GND_net), .I1(divcnt[7]), .I2(n10_adj_4), 
            .I3(n1040), .O(n361)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_72_add_2_17_lut (.I0(n335), .I1(divcnt[15]), .I2(t_clk_N_87), 
            .I3(n1048), .O(t0off_15__N_63[15])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 mux_45_Mux_2_i3_3_lut (.I0(n366), .I1(n348), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[2]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_2_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFER state0_i1 (.Q(state0[1]), .C(CLK), .E(n10_adj_6), .D(state0_1__N_5[1]), 
            .R(RESET));   // clk_div.vhd(82[3] 114[10])
    SB_LUT4 mux_138_i1_4_lut (.I0(t_clk), .I1(n437), .I2(n13), .I3(n1114), 
            .O(CLKOUT));   // clk_div.vhd(39[12] 43[12])
    defparam mux_138_i1_4_lut.LUT_INIT = 16'haaca;
    SB_LUT4 mux_44_Mux_1_i1_3_lut (.I0(n740), .I1(n331), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_15));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_1_i1_3_lut.LUT_INIT = 16'hc5c5;
    SB_LUT4 i1_2_lut_adj_6 (.I0(RESET), .I1(DCNT[14]), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[14]));
    defparam i1_2_lut_adj_6.LUT_INIT = 16'h4444;
    SB_DFFE t0on_i0_i1 (.Q(t0on[1]), .C(CLK), .E(n611), .D(n1_adj_15));   // clk_div.vhd(82[3] 114[10])
    SB_LUT4 i12_4_lut_adj_7 (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28_adj_18));   // clk_div.vhd(108[9:24])
    defparam i12_4_lut_adj_7.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_72_inv_0_i11_1_lut_2_lut (.I0(DCNT[11]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i11_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFE t0on_i0_i2 (.Q(t0on[2]), .C(CLK), .E(n611), .D(n1_adj_13));   // clk_div.vhd(82[3] 114[10])
    SB_CARRY sub_72_add_2_9 (.CI(n1040), .I0(divcnt[7]), .I1(n10_adj_4), 
            .CO(n1041));
    SB_LUT4 i553_2_lut (.I0(DCNT[13]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[13]));   // clk_div.vhd(37[12:46])
    defparam i553_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26_adj_20));   // clk_div.vhd(108[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_8 (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27_adj_19));   // clk_div.vhd(108[9:24])
    defparam i11_4_lut_adj_8.LUT_INIT = 16'hfffe;
    SB_LUT4 i792_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), .I3(t0off[4]), 
            .O(n1126));
    defparam i792_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 mux_45_Mux_1_i3_3_lut (.I0(n367), .I1(n349), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[1]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i21_4_lut (.I0(n56), .I1(t0on[14]), .I2(RESET), .I3(DCNT[15]), 
            .O(n17));   // clk_div.vhd(9[4:9])
    defparam i21_4_lut.LUT_INIT = 16'hcfc4;
    SB_LUT4 i12_4_lut_adj_9 (.I0(t0on[2]), .I1(t0on[9]), .I2(t0on[13]), 
            .I3(t0on[11]), .O(n28));
    defparam i12_4_lut_adj_9.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_72_add_2_8_lut (.I0(GND_net), .I1(divcnt[6]), .I2(n11), 
            .I3(n1039), .O(n362)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i388_4_lut_4_lut (.I0(state0[1]), .I1(RESET), .I2(n1092), 
            .I3(t_clk), .O(n687));
    defparam i388_4_lut_4_lut.LUT_INIT = 16'hdf10;
    SB_LUT4 i22_3_lut (.I0(n17), .I1(n318), .I2(state0[0]), .I3(GND_net), 
            .O(n1_adj_1));   // clk_div.vhd(9[4:9])
    defparam i22_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i545_2_lut (.I0(DCNT[9]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[9]));   // clk_div.vhd(37[12:46])
    defparam i545_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_44_Mux_13_i1_3_lut (.I0(divcnt[14]), .I1(n319), .I2(state0[0]), 
            .I3(GND_net), .O(n1));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_13_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_72_inv_0_i10_1_lut_2_lut (.I0(DCNT[10]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n8));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i10_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_CARRY sub_72_add_2_8 (.CI(n1039), .I0(divcnt[6]), .I1(n11), .CO(n1040));
    SB_LUT4 i444_1_lut_2_lut (.I0(RESET), .I1(DCNT[14]), .I2(GND_net), 
            .I3(GND_net), .O(n4));
    defparam i444_1_lut_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 mux_44_Mux_12_i1_3_lut (.I0(divcnt[13]), .I1(n320), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_14));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_12_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_44_Mux_11_i1_3_lut (.I0(divcnt[12]), .I1(n321), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_9));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_11_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i10_4_lut_adj_10 (.I0(t0on[1]), .I1(t0on[8]), .I2(t0on[4]), 
            .I3(t0on[5]), .O(n26));
    defparam i10_4_lut_adj_10.LUT_INIT = 16'hfffd;
    SB_LUT4 mux_44_Mux_10_i1_3_lut (.I0(divcnt[11]), .I1(n322), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_2));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_10_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i11_4_lut_adj_11 (.I0(t0on[7]), .I1(t0on[10]), .I2(t0on[3]), 
            .I3(t0on[12]), .O(n27));
    defparam i11_4_lut_adj_11.LUT_INIT = 16'hfffe;
    SB_LUT4 i789_4_lut (.I0(t0on[0]), .I1(t0on[6]), .I2(t0on[14]), .I3(t0on[15]), 
            .O(n1129));
    defparam i789_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i25_3_lut (.I0(n1093), .I1(n1105), .I2(state0[0]), .I3(GND_net), 
            .O(n10_adj_6));
    defparam i25_3_lut.LUT_INIT = 16'h3a3a;
    SB_LUT4 sub_72_add_2_7_lut (.I0(GND_net), .I1(divcnt[5]), .I2(n12), 
            .I3(n1038), .O(n363)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_7 (.CI(n1038), .I0(divcnt[5]), .I1(n12), .CO(n1039));
    SB_LUT4 sub_72_add_2_6_lut (.I0(GND_net), .I1(divcnt[4]), .I2(n423), 
            .I3(n1037), .O(n364)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_6 (.CI(n1037), .I0(divcnt[4]), .I1(n423), .CO(n1038));
    SB_LUT4 sub_72_add_2_5_lut (.I0(GND_net), .I1(divcnt[3]), .I2(n14), 
            .I3(n1036), .O(n365)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_4 (.CI(n1020), .I0(t0on[2]), .I1(VCC_net), .CO(n1021));
    SB_CARRY add_70_7 (.CI(n1023), .I0(t0on[5]), .I1(VCC_net), .CO(n1024));
    SB_LUT4 add_70_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n1022), 
            .O(n328)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_71_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n1012), .O(n341)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_70_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n1019), 
            .O(n331)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_6 (.CI(n1022), .I0(t0on[4]), .I1(VCC_net), .CO(n1023));
    SB_CARRY add_71_7 (.CI(n1008), .I0(t0off[5]), .I1(VCC_net), .CO(n1009));
    SB_CARRY add_71_14 (.CI(n1015), .I0(t0off[12]), .I1(VCC_net), .CO(n1016));
    SB_LUT4 i386_2_lut (.I0(state0[0]), .I1(state0[1]), .I2(GND_net), 
            .I3(GND_net), .O(state0_1__N_5[1]));   // clk_div.vhd(85[4] 113[13])
    defparam i386_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i2_1_lut (.I0(state0[1]), .I1(GND_net), .I2(GND_net), .I3(GND_net), 
            .O(t_clk_N_87));
    defparam i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i543_2_lut (.I0(cnt_state[0]), .I1(cnt_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(cnt_state_1__N_3[1]));   // clk_div.vhd(64[4] 75[13])
    defparam i543_2_lut.LUT_INIT = 16'h2222;
    SB_CARRY add_70_3 (.CI(n1019), .I0(t0on[1]), .I1(VCC_net), .CO(n1020));
    SB_LUT4 add_70_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n1021), 
            .O(n329)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_5 (.CI(n1036), .I0(divcnt[3]), .I1(n14), .CO(n1037));
    SB_CARRY add_70_5 (.CI(n1021), .I0(t0on[3]), .I1(VCC_net), .CO(n1022));
    SB_LUT4 sub_72_add_2_4_lut (.I0(GND_net), .I1(divcnt[2]), .I2(n748), 
            .I3(n1035), .O(n366)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_4 (.CI(n1035), .I0(divcnt[2]), .I1(n748), .CO(n1036));
    SB_LUT4 sub_72_add_2_3_lut (.I0(GND_net), .I1(divcnt[1]), .I2(n740), 
            .I3(n1034), .O(n367)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_72_add_2_3 (.CI(n1034), .I0(divcnt[1]), .I1(n740), .CO(n1035));
    SB_LUT4 sub_72_add_2_2_lut (.I0(GND_net), .I1(divcnt[0]), .I2(n17_adj_5), 
            .I3(VCC_net), .O(n368)) /* synthesis syn_instantiated=1 */ ;
    defparam sub_72_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_71_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n1007), 
            .O(n346)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_4 (.CI(n1005), .I0(t0off[2]), .I1(VCC_net), .CO(n1006));
    SB_CARRY add_71_6 (.CI(n1007), .I0(t0off[4]), .I1(VCC_net), .CO(n1008));
    SB_CARRY add_71_11 (.CI(n1012), .I0(t0off[9]), .I1(VCC_net), .CO(n1013));
    SB_LUT4 mux_44_Mux_3_i1_3_lut (.I0(divcnt[4]), .I1(n329), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_12));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE t0on_i0_i3 (.Q(t0on[3]), .C(CLK), .E(n611), .D(n1_adj_12));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i4 (.Q(t0on[4]), .C(CLK), .E(n611), .D(n1_adj_11));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i5 (.Q(t0on[5]), .C(CLK), .E(n611), .D(n1_adj_10));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i6 (.Q(t0on[6]), .C(CLK), .E(n611), .D(n1_adj_8));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i7 (.Q(t0on[7]), .C(CLK), .E(n611), .D(n1_adj_17));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i8 (.Q(t0on[8]), .C(CLK), .E(n611), .D(n1_adj_16));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i9 (.Q(t0on[9]), .C(CLK), .E(n611), .D(n1_adj_7));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i10 (.Q(t0on[10]), .C(CLK), .E(n611), .D(n1_adj_2));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i11 (.Q(t0on[11]), .C(CLK), .E(n611), .D(n1_adj_9));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i12 (.Q(t0on[12]), .C(CLK), .E(n611), .D(n1_adj_14));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i13 (.Q(t0on[13]), .C(CLK), .E(n611), .D(n1));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0on_i0_i14 (.Q(t0on[14]), .C(CLK), .E(n495), .D(n1_adj_1));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i1 (.Q(t0off[1]), .C(CLK), .E(n656), .D(t0off_15__N_63[1]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i2 (.Q(t0off[2]), .C(CLK), .E(n656), .D(t0off_15__N_63[2]));   // clk_div.vhd(82[3] 114[10])
    SB_LUT4 i1_4_lut_adj_12 (.I0(RESET), .I1(n57), .I2(state0[1]), .I3(state0[0]), 
            .O(n656));
    defparam i1_4_lut_adj_12.LUT_INIT = 16'h5004;
    SB_LUT4 add_71_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n1011), .O(n342)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i788_4_lut (.I0(n1126), .I1(n27_adj_19), .I2(n26_adj_20), 
            .I3(n28_adj_18), .O(n1124));
    defparam i788_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i379_3_lut (.I0(n364), .I1(n346), .I2(state0[1]), .I3(GND_net), 
            .O(t0off_15__N_63[4]));   // clk_div.vhd(85[4] 113[13])
    defparam i379_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i786_4_lut (.I0(n1129), .I1(n27), .I2(n26), .I3(n28), .O(n1123));
    defparam i786_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i26_3_lut (.I0(n1123), .I1(n1124), .I2(state0[1]), .I3(GND_net), 
            .O(n1105));
    defparam i26_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_72_inv_0_i6_1_lut_2_lut (.I0(DCNT[6]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i6_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 mux_45_Mux_3_i3_3_lut (.I0(n365), .I1(n347), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[3]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_3_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY add_71_10 (.CI(n1011), .I0(t0off[8]), .I1(VCC_net), .CO(n1012));
    SB_DFFE t0off_i0_i3 (.Q(t0off[3]), .C(CLK), .E(n656), .D(t0off_15__N_63[3]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i4 (.Q(t0off[4]), .C(CLK), .E(n656), .D(t0off_15__N_63[4]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i5 (.Q(t0off[5]), .C(CLK), .E(n656), .D(t0off_15__N_63[5]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i6 (.Q(t0off[6]), .C(CLK), .E(n656), .D(t0off_15__N_63[6]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i7 (.Q(t0off[7]), .C(CLK), .E(n656), .D(t0off_15__N_63[7]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i8 (.Q(t0off[8]), .C(CLK), .E(n656), .D(t0off_15__N_63[8]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i9 (.Q(t0off[9]), .C(CLK), .E(n656), .D(t0off_15__N_63[9]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i10 (.Q(t0off[10]), .C(CLK), .E(n656), .D(t0off_15__N_63[10]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i11 (.Q(t0off[11]), .C(CLK), .E(n656), .D(t0off_15__N_63[11]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i12 (.Q(t0off[12]), .C(CLK), .E(n656), .D(t0off_15__N_63[12]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i13 (.Q(t0off[13]), .C(CLK), .E(n656), .D(t0off_15__N_63[13]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i14 (.Q(t0off[14]), .C(CLK), .E(n656), .D(t0off_15__N_63[14]));   // clk_div.vhd(82[3] 114[10])
    SB_DFFE t0off_i0_i15 (.Q(t0off[15]), .C(CLK), .E(n656), .D(t0off_15__N_63[15]));   // clk_div.vhd(82[3] 114[10])
    SB_DFF clk3_57 (.Q(clk3), .C(CLK), .D(n688));   // clk_div.vhd(61[3] 76[10])
    SB_LUT4 add_71_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n1010), 
            .O(n343)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i747_2_lut_3_lut (.I0(RESET), .I1(n57), .I2(state0[1]), .I3(GND_net), 
            .O(n1093));
    defparam i747_2_lut_3_lut.LUT_INIT = 16'hf4f4;
    SB_LUT4 mux_44_Mux_9_i1_3_lut (.I0(divcnt[10]), .I1(n323), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_7));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_9_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 mux_44_Mux_8_i1_3_lut (.I0(divcnt[9]), .I1(n324), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_16));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_8_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_71_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n1005), 
            .O(n348)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 mux_44_Mux_7_i1_3_lut (.I0(divcnt[8]), .I1(n325), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_17));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_71_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n1014), .O(n339)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i767_3_lut (.I0(n1093), .I1(n1105), .I2(state0[0]), .I3(GND_net), 
            .O(n1115));   // clk_div.vhd(82[3] 114[10])
    defparam i767_3_lut.LUT_INIT = 16'hcaca;
    SB_CARRY sub_72_add_2_2 (.CI(VCC_net), .I0(divcnt[0]), .I1(n17_adj_5), 
            .CO(n1034));
    SB_LUT4 add_70_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n1033), .O(n317)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_17_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_13 (.CI(n1014), .I0(t0off[11]), .I1(VCC_net), .CO(n1015));
    SB_LUT4 add_70_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n1032), .O(n318)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_16 (.CI(n1032), .I0(t0on[14]), .I1(VCC_net), .CO(n1033));
    SB_LUT4 add_70_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n1031), .O(n319)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_15 (.CI(n1031), .I0(t0on[13]), .I1(VCC_net), .CO(n1032));
    SB_LUT4 i550_2_lut (.I0(DCNT[10]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[10]));   // clk_div.vhd(37[12:46])
    defparam i550_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 add_71_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n1017), .O(n336)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_16_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_70_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n1030), .O(n320)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_16 (.CI(n1017), .I0(t0off[14]), .I1(VCC_net), .CO(n1018));
    SB_LUT4 mux_45_Mux_0_i3_3_lut (.I0(n368), .I1(n350), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[0]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 add_70_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(n332)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_5 (.CI(n1006), .I0(t0off[3]), .I1(VCC_net), .CO(n1007));
    SB_CARRY add_70_14 (.CI(n1030), .I0(t0on[12]), .I1(VCC_net), .CO(n1031));
    SB_LUT4 add_71_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n1016), .O(n337)) /* synthesis syn_instantiated=1 */ ;
    defparam add_71_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_71_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n1004));
    SB_LUT4 add_70_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n1029), .O(n321)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_13 (.CI(n1029), .I0(t0on[11]), .I1(VCC_net), .CO(n1030));
    SB_LUT4 add_70_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n1028), .O(n322)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_12 (.CI(n1028), .I0(t0on[10]), .I1(VCC_net), .CO(n1029));
    SB_LUT4 add_70_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n1027), 
            .O(n323)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_11_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 i544_2_lut (.I0(DCNT[1]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[1]));   // clk_div.vhd(37[12:46])
    defparam i544_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i453_1_lut_2_lut (.I0(RESET), .I1(DCNT[5]), .I2(GND_net), 
            .I3(GND_net), .O(n423));
    defparam i453_1_lut_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 mux_44_Mux_6_i1_3_lut (.I0(divcnt[7]), .I1(n326), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_8));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_DFF t_clk_59 (.Q(t_clk), .C(CLK), .D(n687));   // clk_div.vhd(82[3] 114[10])
    SB_DFFESR t0on_i0_i15 (.Q(t0on[15]), .C(CLK), .E(n611), .D(n317), 
            .R(n686));   // clk_div.vhd(82[3] 114[10])
    SB_LUT4 i798_2_lut (.I0(state0[1]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(n495));   // clk_div.vhd(82[3] 114[10])
    defparam i798_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 mux_44_Mux_5_i1_3_lut (.I0(divcnt[6]), .I1(n327), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_10));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_5_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i551_2_lut (.I0(DCNT[11]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[11]));   // clk_div.vhd(37[12:46])
    defparam i551_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_44_Mux_4_i1_3_lut (.I0(divcnt[5]), .I1(n328), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_11));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_72_inv_0_i9_1_lut_2_lut (.I0(DCNT[9]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n9));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i9_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_DFFR cnt_state_i0 (.Q(cnt_state[0]), .C(CLK), .D(clk3_N_91), .R(RESET));   // clk_div.vhd(61[3] 76[10])
    SB_CARRY add_70_11 (.CI(n1027), .I0(t0on[9]), .I1(VCC_net), .CO(n1028));
    SB_LUT4 add_70_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n1026), 
            .O(n324)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_10_lut.LUT_INIT = 16'hC33C;
    GND i1 (.Y(GND_net));
    SB_CARRY add_70_10 (.CI(n1026), .I0(t0on[8]), .I1(VCC_net), .CO(n1027));
    SB_LUT4 add_70_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n1025), 
            .O(n325)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_9 (.CI(n1025), .I0(t0on[7]), .I1(VCC_net), .CO(n1026));
    SB_LUT4 add_70_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n1024), 
            .O(n326)) /* synthesis syn_instantiated=1 */ ;
    defparam add_70_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_70_8 (.CI(n1024), .I0(t0on[6]), .I1(VCC_net), .CO(n1025));
    SB_LUT4 i454_1_lut_2_lut (.I0(RESET), .I1(DCNT[3]), .I2(GND_net), 
            .I3(GND_net), .O(divcnt[3]));   // clk_div.vhd(9[4:9])
    defparam i454_1_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i539_2_lut (.I0(DCNT[7]), .I1(RESET), .I2(GND_net), .I3(GND_net), 
            .O(divcnt[7]));   // clk_div.vhd(37[12:46])
    defparam i539_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 mux_44_Mux_0_i1_3_lut (.I0(divcnt[1]), .I1(n332), .I2(state0[0]), 
            .I3(GND_net), .O(n1_adj_3));   // clk_div.vhd(85[4] 113[13])
    defparam mux_44_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i1_2_lut_adj_13 (.I0(RESET), .I1(DCNT[15]), .I2(GND_net), 
            .I3(GND_net), .O(n742));   // clk_div.vhd(9[4:9])
    defparam i1_2_lut_adj_13.LUT_INIT = 16'hbbbb;
    SB_LUT4 i3_2_lut (.I0(DCNT[13]), .I1(DCNT[14]), .I2(GND_net), .I3(GND_net), 
            .O(n16));
    defparam i3_2_lut.LUT_INIT = 16'heeee;
    SB_LUT4 mux_45_Mux_14_i3_3_lut (.I0(n354), .I1(n336), .I2(state0[1]), 
            .I3(GND_net), .O(t0off_15__N_63[14]));   // clk_div.vhd(85[4] 113[13])
    defparam mux_45_Mux_14_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i455_1_lut_2_lut (.I0(RESET), .I1(DCNT[4]), .I2(GND_net), 
            .I3(GND_net), .O(n14));
    defparam i455_1_lut_2_lut.LUT_INIT = 16'hbbbb;
    SB_LUT4 sub_72_inv_0_i13_1_lut_2_lut (.I0(DCNT[13]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n5));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i13_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 sub_72_inv_0_i7_1_lut_2_lut (.I0(DCNT[7]), .I1(RESET), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // C:/lscc/iCEcube2.2017.08/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_72_inv_0_i7_1_lut_2_lut.LUT_INIT = 16'hdddd;
    SB_LUT4 i445_1_lut_2_lut (.I0(RESET), .I1(DCNT[2]), .I2(GND_net), 
            .I3(GND_net), .O(divcnt[2]));   // clk_div.vhd(9[4:9])
    defparam i445_1_lut_2_lut.LUT_INIT = 16'h4444;
    SB_LUT4 i389_3_lut (.I0(clk3), .I1(clk3_N_91), .I2(RESET), .I3(GND_net), 
            .O(n688));   // clk_div.vhd(61[3] 76[10])
    defparam i389_3_lut.LUT_INIT = 16'hacac;
    SB_LUT4 i801_2_lut (.I0(cnt_state[0]), .I1(cnt_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(clk3_N_91));
    defparam i801_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 i387_2_lut (.I0(n611), .I1(state0[0]), .I2(GND_net), .I3(GND_net), 
            .O(n686));   // clk_div.vhd(82[3] 114[10])
    defparam i387_2_lut.LUT_INIT = 16'h2222;
    
endmodule
