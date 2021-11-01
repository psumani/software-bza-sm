// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Wed Sep 05 18:02:31 2018
//
// Verilog Description of module DAC8830
//

module DAC8830 (CLK, DATA, SCLK, CS, MOSI);   // dac8830.vhd(9[8:15])
    input CLK;   // dac8830.vhd(11[2:5])
    input [15:0]DATA;   // dac8830.vhd(12[2:6])
    output SCLK;   // dac8830.vhd(13[2:6])
    output CS;   // dac8830.vhd(14[2:4])
    output MOSI;   // dac8830.vhd(15[2:6])
    
    wire CLK /* synthesis is_clock=1, SET_AS_NETWORK=CLK */ ;   // dac8830.vhd(11[2:5])
    
    wire GND_net, VCC_net;
    wire [2:0]dac_state;   // dac8830.vhd(22[8:17])
    wire [15:0]dac_data;   // dac8830.vhd(24[8:16])
    wire [15:0]dac_buf;   // dac8830.vhd(25[8:15])
    wire [3:0]bit_cnt;   // dac8830.vhd(26[8:15])
    
    wire SCLK_N_84, n913, n14, n268;
    wire [3:0]bit_cnt_3__N_78;
    
    wire n18;
    wire [2:0]dac_state_2__N_72;
    
    wire n20, n746, n743, n740, n737, n734, n731, n728, n725, 
        n722, n719, n716, CS_N_85, n713, n710, n498, n3, n3_adj_1, 
        n473, n707, n2, n3_adj_2, n360, n3_adj_3, n3_adj_4, n3_adj_5, 
        n693, n3_adj_6, n688, n3_adj_7, n3_adj_8, n3_adj_9, n691, 
        n21, n3_adj_10, n3_adj_11, n554, n3_adj_12, n3_adj_13, n3_adj_14, 
        n3_adj_15, n3_adj_16, n946, n477, n534, n762, n30, n17, 
        n520, n26, n756, n481, n753, n749, n24, n23, n22;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 i547_4_lut (.I0(n268), .I1(dac_data[3]), .I2(DATA[3]), .I3(n498), 
            .O(n746));   // dac8830.vhd(32[3] 72[10])
    defparam i547_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i1_2_lut_3_lut (.I0(dac_state[1]), .I1(dac_state[0]), .I2(dac_state[2]), 
            .I3(GND_net), .O(n473));   // dac8830.vhd(32[3] 72[10])
    defparam i1_2_lut_3_lut.LUT_INIT = 16'hf1f1;
    SB_DFFE dac_data_i3 (.Q(dac_data[3]), .C(CLK), .E(VCC_net), .D(n746));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i1_3_lut_3_lut_3_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(dac_state[2]), .I3(GND_net), .O(n534));   // dac8830.vhd(32[3] 72[10])
    defparam i1_3_lut_3_lut_3_lut.LUT_INIT = 16'hecec;
    SB_LUT4 i159_2_lut (.I0(SCLK_N_84), .I1(dac_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n360));   // dac8830.vhd(33[4] 71[13])
    defparam i159_2_lut.LUT_INIT = 16'h2222;
    SB_LUT4 i507_2_lut (.I0(n554), .I1(dac_state[2]), .I2(GND_net), .I3(GND_net), 
            .O(n693));   // dac8830.vhd(32[3] 72[10])
    defparam i507_2_lut.LUT_INIT = 16'h8888;
    SB_LUT4 dac_state_2__I_0_37_Mux_15_i3_3_lut (.I0(DATA[15]), .I1(dac_buf[14]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_15));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_15_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i514_4_lut (.I0(n268), .I1(dac_data[14]), .I2(DATA[14]), .I3(n498), 
            .O(n713));   // dac8830.vhd(32[3] 72[10])
    defparam i514_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i511_4_lut (.I0(n268), .I1(dac_data[15]), .I2(DATA[15]), .I3(n498), 
            .O(n710));   // dac8830.vhd(32[3] 72[10])
    defparam i511_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i538_4_lut (.I0(n268), .I1(dac_data[6]), .I2(DATA[6]), .I3(n498), 
            .O(n737));   // dac8830.vhd(32[3] 72[10])
    defparam i538_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i541_4_lut (.I0(n268), .I1(dac_data[5]), .I2(DATA[5]), .I3(n498), 
            .O(n740));   // dac8830.vhd(32[3] 72[10])
    defparam i541_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i544_4_lut (.I0(n268), .I1(dac_data[4]), .I2(DATA[4]), .I3(n498), 
            .O(n743));   // dac8830.vhd(32[3] 72[10])
    defparam i544_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i123_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(bit_cnt[3]), .O(bit_cnt_3__N_78[3]));   // dac8830.vhd(57[17:24])
    defparam i123_3_lut_4_lut.LUT_INIT = 16'h7f80;
    SB_LUT4 i93_2_lut_3_lut (.I0(dac_state[1]), .I1(dac_state[0]), .I2(dac_state[2]), 
            .I3(GND_net), .O(n268));   // dac8830.vhd(32[3] 72[10])
    defparam i93_2_lut_3_lut.LUT_INIT = 16'he0e0;
    SB_LUT4 i750_2_lut (.I0(dac_state[2]), .I1(dac_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(n946));   // dac8830.vhd(32[3] 72[10])
    defparam i750_2_lut.LUT_INIT = 16'h4444;
    SB_DFFE dac_data_i4 (.Q(dac_data[4]), .C(CLK), .E(VCC_net), .D(n743));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i12_4_lut (.I0(SCLK), .I1(n946), .I2(n477), .I3(dac_state[0]), 
            .O(n913));   // dac8830.vhd(32[3] 72[10])
    defparam i12_4_lut.LUT_INIT = 16'h0aca;
    SB_LUT4 i508_3_lut (.I0(MOSI), .I1(dac_buf[15]), .I2(dac_state[0]), 
            .I3(GND_net), .O(n707));   // dac8830.vhd(32[3] 72[10])
    defparam i508_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_0_i3_3_lut (.I0(DATA[0]), .I1(dac_buf[15]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_1));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i109_2_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(GND_net), 
            .I3(GND_net), .O(bit_cnt_3__N_78[1]));   // dac8830.vhd(57[17:24])
    defparam i109_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i529_4_lut (.I0(n268), .I1(dac_data[9]), .I2(DATA[9]), .I3(n498), 
            .O(n728));   // dac8830.vhd(32[3] 72[10])
    defparam i529_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 dac_state_2__I_0_37_Mux_1_i3_3_lut (.I0(DATA[1]), .I1(dac_buf[0]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i563_3_lut (.I0(dac_state[2]), .I1(dac_state[0]), .I2(n520), 
            .I3(GND_net), .O(n762));   // dac8830.vhd(32[3] 72[10])
    defparam i563_3_lut.LUT_INIT = 16'h1414;
    SB_LUT4 dac_state_2__I_0_37_Mux_2_i3_3_lut (.I0(DATA[2]), .I1(dac_buf[1]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_2));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_2_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_3_i3_3_lut (.I0(DATA[3]), .I1(dac_buf[2]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_3));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_3_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i532_4_lut (.I0(n268), .I1(dac_data[8]), .I2(DATA[8]), .I3(n498), 
            .O(n731));   // dac8830.vhd(32[3] 72[10])
    defparam i532_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 dac_state_2__I_0_37_Mux_4_i3_3_lut (.I0(DATA[4]), .I1(dac_buf[3]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_4));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_4_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_5_i3_3_lut (.I0(DATA[5]), .I1(dac_buf[4]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_5));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_5_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_6_i3_3_lut (.I0(DATA[6]), .I1(dac_buf[5]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_6));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_6_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i520_4_lut (.I0(n268), .I1(dac_data[12]), .I2(DATA[12]), .I3(n498), 
            .O(n719));   // dac8830.vhd(32[3] 72[10])
    defparam i520_4_lut.LUT_INIT = 16'h5044;
    SB_DFFE dac_data_i5 (.Q(dac_data[5]), .C(CLK), .E(VCC_net), .D(n740));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 dac_state_2__I_0_37_Mux_7_i3_3_lut (.I0(DATA[7]), .I1(dac_buf[6]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_7));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_7_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_8_i3_3_lut (.I0(DATA[8]), .I1(dac_buf[7]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_8));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_8_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_9_i3_3_lut (.I0(DATA[9]), .I1(dac_buf[8]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_9));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_9_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i535_4_lut (.I0(n268), .I1(dac_data[7]), .I2(DATA[7]), .I3(n498), 
            .O(n734));   // dac8830.vhd(32[3] 72[10])
    defparam i535_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 dac_state_2__I_0_37_Mux_13_i3_3_lut (.I0(DATA[13]), .I1(dac_buf[12]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_13));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_13_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_14_i3_3_lut (.I0(DATA[14]), .I1(dac_buf[13]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_14));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_14_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE dac_data_i6 (.Q(dac_data[6]), .C(CLK), .E(VCC_net), .D(n737));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 dac_data_15__I_0_i14_2_lut (.I0(dac_data[13]), .I1(DATA[13]), 
            .I2(GND_net), .I3(GND_net), .O(n14));   // dac8830.vhd(35[8:24])
    defparam dac_data_15__I_0_i14_2_lut.LUT_INIT = 16'h6666;
    SB_DFF dac_data_i15 (.Q(dac_data[15]), .C(CLK), .D(n710));   // dac8830.vhd(32[3] 72[10])
    SB_DFF dac_data_i14 (.Q(dac_data[14]), .C(CLK), .D(n713));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i550_4_lut (.I0(n268), .I1(dac_data[2]), .I2(DATA[2]), .I3(n498), 
            .O(n749));   // dac8830.vhd(32[3] 72[10])
    defparam i550_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 i554_4_lut (.I0(n268), .I1(dac_data[1]), .I2(DATA[1]), .I3(n498), 
            .O(n753));   // dac8830.vhd(32[3] 72[10])
    defparam i554_4_lut.LUT_INIT = 16'h5044;
    SB_DFFESR dac_buf_i15 (.Q(dac_buf[15]), .C(CLK), .E(n554), .D(n3_adj_15), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i4_4_lut (.I0(dac_data[3]), .I1(dac_data[5]), .I2(DATA[3]), 
            .I3(DATA[5]), .O(n20));   // dac8830.vhd(35[8:24])
    defparam i4_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFESR dac_buf_i14 (.Q(dac_buf[14]), .C(CLK), .E(n554), .D(n3_adj_14), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i13 (.Q(dac_buf[13]), .C(CLK), .E(n554), .D(n3_adj_13), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 dac_state_2__I_0_37_Mux_10_i3_3_lut (.I0(DATA[10]), .I1(dac_buf[9]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_10));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_10_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i517_4_lut (.I0(n268), .I1(dac_data[13]), .I2(DATA[13]), .I3(n498), 
            .O(n716));   // dac8830.vhd(32[3] 72[10])
    defparam i517_4_lut.LUT_INIT = 16'h5044;
    SB_LUT4 dac_state_2__I_0_37_Mux_11_i3_3_lut (.I0(DATA[11]), .I1(dac_buf[10]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_11));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_11_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 dac_state_2__I_0_37_Mux_12_i3_3_lut (.I0(DATA[12]), .I1(dac_buf[11]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_12));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_37_Mux_12_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i8_4_lut (.I0(dac_data[9]), .I1(dac_data[15]), .I2(DATA[9]), 
            .I3(DATA[15]), .O(n24));   // dac8830.vhd(35[8:24])
    defparam i8_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i557_4_lut (.I0(n268), .I1(dac_data[0]), .I2(DATA[0]), .I3(n498), 
            .O(n756));   // dac8830.vhd(32[3] 72[10])
    defparam i557_4_lut.LUT_INIT = 16'h5044;
    SB_DFFESR dac_buf_i12 (.Q(dac_buf[12]), .C(CLK), .E(n554), .D(n3_adj_12), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i11 (.Q(dac_buf[11]), .C(CLK), .E(n554), .D(n3_adj_11), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFF dac_data_i13 (.Q(dac_data[13]), .C(CLK), .D(n716));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i10 (.Q(dac_buf[10]), .C(CLK), .E(n554), .D(n3_adj_10), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i7 (.Q(dac_data[7]), .C(CLK), .E(VCC_net), .D(n734));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i9 (.Q(dac_buf[9]), .C(CLK), .E(n554), .D(n3_adj_9), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i8 (.Q(dac_buf[8]), .C(CLK), .E(n554), .D(n3_adj_8), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i7 (.Q(dac_buf[7]), .C(CLK), .E(n554), .D(n3_adj_7), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFF dac_data_i12 (.Q(dac_data[12]), .C(CLK), .D(n719));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i6 (.Q(dac_buf[6]), .C(CLK), .E(n554), .D(n3_adj_6), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i6_4_lut (.I0(dac_data[2]), .I1(dac_data[7]), .I2(DATA[2]), 
            .I3(DATA[7]), .O(n22));   // dac8830.vhd(35[8:24])
    defparam i6_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFESR dac_buf_i5 (.Q(dac_buf[5]), .C(CLK), .E(n554), .D(n3_adj_5), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i4 (.Q(dac_buf[4]), .C(CLK), .E(n554), .D(n3_adj_4), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i8 (.Q(dac_data[8]), .C(CLK), .E(VCC_net), .D(n731));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i3 (.Q(dac_buf[3]), .C(CLK), .E(n554), .D(n3_adj_3), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i2 (.Q(dac_buf[2]), .C(CLK), .E(n554), .D(n3_adj_2), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_state_i0 (.Q(dac_state[0]), .C(CLK), .E(VCC_net), .D(n762));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_buf_i1 (.Q(dac_buf[1]), .C(CLK), .E(n554), .D(n3), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i7_4_lut (.I0(dac_data[11]), .I1(dac_data[14]), .I2(DATA[11]), 
            .I3(DATA[14]), .O(n23));   // dac8830.vhd(35[8:24])
    defparam i7_4_lut.LUT_INIT = 16'h7bde;
    SB_DFFESR bit_cnt_i3 (.Q(bit_cnt[3]), .C(CLK), .E(n534), .D(bit_cnt_3__N_78[3]), 
            .R(n691));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i9 (.Q(dac_data[9]), .C(CLK), .E(VCC_net), .D(n728));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR bit_cnt_i2 (.Q(bit_cnt[2]), .C(CLK), .E(n534), .D(bit_cnt_3__N_78[2]), 
            .R(n691));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR bit_cnt_i1 (.Q(bit_cnt[1]), .C(CLK), .E(n534), .D(bit_cnt_3__N_78[1]), 
            .R(n691));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE SCLK_33 (.Q(SCLK), .C(CLK), .E(VCC_net), .D(n913));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_state_i2 (.Q(dac_state[2]), .C(CLK), .E(n520), .D(dac_state_2__N_72[2]), 
            .R(n688));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i10 (.Q(dac_data[10]), .C(CLK), .E(VCC_net), .D(n725));   // dac8830.vhd(32[3] 72[10])
    SB_DFFESR dac_state_i1 (.Q(dac_state[1]), .C(CLK), .E(n520), .D(n3_adj_16), 
            .R(dac_state[2]));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i11 (.Q(dac_data[11]), .C(CLK), .E(VCC_net), .D(n722));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i523_4_lut (.I0(n268), .I1(dac_data[11]), .I2(DATA[11]), .I3(n498), 
            .O(n722));   // dac8830.vhd(32[3] 72[10])
    defparam i523_4_lut.LUT_INIT = 16'h5044;
    SB_DFFE dac_data_i0 (.Q(dac_data[0]), .C(CLK), .E(VCC_net), .D(n756));   // dac8830.vhd(32[3] 72[10])
    SB_DFFE dac_data_i1 (.Q(dac_data[1]), .C(CLK), .E(VCC_net), .D(n753));   // dac8830.vhd(32[3] 72[10])
    SB_DFF dac_data_i2 (.Q(dac_data[2]), .C(CLK), .D(n749));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 dac_state_2__I_0_39_Mux_1_i3_3_lut (.I0(dac_state[0]), .I1(dac_state_2__N_72[2]), 
            .I2(dac_state[1]), .I3(GND_net), .O(n3_adj_16));   // dac8830.vhd(33[4] 71[13])
    defparam dac_state_2__I_0_39_Mux_1_i3_3_lut.LUT_INIT = 16'h7a7a;
    SB_LUT4 i526_4_lut (.I0(n268), .I1(dac_data[10]), .I2(DATA[10]), .I3(n498), 
            .O(n725));   // dac8830.vhd(32[3] 72[10])
    defparam i526_4_lut.LUT_INIT = 16'h5044;
    SB_DFFESR dac_buf_i0 (.Q(dac_buf[0]), .C(CLK), .E(n554), .D(n3_adj_1), 
            .R(n693));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i138_2_lut (.I0(bit_cnt[0]), .I1(dac_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n2));   // dac8830.vhd(33[4] 71[13])
    defparam i138_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i3_3_lut_4_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[3]), 
            .I3(bit_cnt[2]), .O(dac_state_2__N_72[2]));   // dac8830.vhd(57[17:24])
    defparam i3_3_lut_4_lut.LUT_INIT = 16'h8000;
    SB_LUT4 i5_4_lut (.I0(dac_data[10]), .I1(dac_data[12]), .I2(DATA[10]), 
            .I3(DATA[12]), .O(n21));   // dac8830.vhd(35[8:24])
    defparam i5_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i2_4_lut (.I0(dac_data[1]), .I1(dac_data[4]), .I2(DATA[1]), 
            .I3(DATA[4]), .O(n18));   // dac8830.vhd(35[8:24])
    defparam i2_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i10_4_lut (.I0(dac_data[8]), .I1(n20), .I2(n14), .I3(DATA[8]), 
            .O(n26));   // dac8830.vhd(35[8:24])
    defparam i10_4_lut.LUT_INIT = 16'hfdfe;
    SB_LUT4 i14_4_lut (.I0(n21), .I1(n23), .I2(n22), .I3(n24), .O(n30));   // dac8830.vhd(35[8:24])
    defparam i14_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_4_lut (.I0(dac_data[0]), .I1(dac_data[6]), .I2(DATA[0]), 
            .I3(DATA[6]), .O(n17));   // dac8830.vhd(35[8:24])
    defparam i1_4_lut.LUT_INIT = 16'h7bde;
    SB_LUT4 i489_4_lut (.I0(n520), .I1(dac_state[1]), .I2(dac_state[0]), 
            .I3(dac_state[2]), .O(n688));   // dac8830.vhd(32[3] 72[10])
    defparam i489_4_lut.LUT_INIT = 16'haa2a;
    SB_LUT4 dac_state_2__I_0_i7_3_lut_4_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(dac_state[2]), .I3(SCLK_N_84), .O(CS_N_85));   // dac8830.vhd(32[3] 72[10])
    defparam dac_state_2__I_0_i7_3_lut_4_lut.LUT_INIT = 16'h101f;
    SB_LUT4 i1_4_lut_4_lut_3_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(dac_state[2]), .I3(GND_net), .O(n691));   // dac8830.vhd(32[3] 72[10])
    defparam i1_4_lut_4_lut_3_lut.LUT_INIT = 16'he4e4;
    SB_DFFESR bit_cnt_i0 (.Q(bit_cnt[0]), .C(CLK), .E(n481), .D(n2), 
            .R(n691));   // dac8830.vhd(32[3] 72[10])
    SB_DFF MOSI_35 (.Q(MOSI), .C(CLK), .D(n707));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i1_3_lut_4_lut_4_lut_4_lut_4_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(SCLK_N_84), .I3(dac_state[2]), .O(n477));   // dac8830.vhd(32[3] 72[10])
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut.LUT_INIT = 16'heeba;
    SB_LUT4 i15_4_lut (.I0(n17), .I1(n30), .I2(n26), .I3(n18), .O(SCLK_N_84));   // dac8830.vhd(35[8:24])
    defparam i15_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i1_2_lut_3_lut_4_lut_3_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(GND_net), .I3(GND_net), .O(n481));   // dac8830.vhd(32[3] 72[10])
    defparam i1_2_lut_3_lut_4_lut_3_lut.LUT_INIT = 16'heeee;
    SB_LUT4 i1_4_lut_adj_1 (.I0(dac_state[1]), .I1(n268), .I2(dac_state[2]), 
            .I3(n360), .O(n498));
    defparam i1_4_lut_adj_1.LUT_INIT = 16'hcdcc;
    SB_LUT4 i116_2_lut_3_lut (.I0(bit_cnt[1]), .I1(bit_cnt[0]), .I2(bit_cnt[2]), 
            .I3(GND_net), .O(bit_cnt_3__N_78[2]));   // dac8830.vhd(57[17:24])
    defparam i116_2_lut_3_lut.LUT_INIT = 16'h7878;
    GND i775 (.Y(GND_net));
    SB_LUT4 i1_2_lut_4_lut (.I0(SCLK_N_84), .I1(dac_state[1]), .I2(dac_state[2]), 
            .I3(dac_state[0]), .O(n520));
    defparam i1_2_lut_4_lut.LUT_INIT = 16'hfffe;
    SB_DFFE CS_32 (.Q(CS), .C(CLK), .E(n473), .D(CS_N_85));   // dac8830.vhd(32[3] 72[10])
    SB_LUT4 i1_4_lut_4_lut_4_lut_4_lut (.I0(dac_state[1]), .I1(dac_state[0]), 
            .I2(SCLK_N_84), .I3(dac_state[2]), .O(n554));   // dac8830.vhd(32[3] 72[10])
    defparam i1_4_lut_4_lut_4_lut_4_lut.LUT_INIT = 16'hee32;
    
endmodule
