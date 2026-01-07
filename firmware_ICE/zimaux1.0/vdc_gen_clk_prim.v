// Verilog netlist produced by program LSE :  version Diamond Version 0.0.0
// Netlist written on Fri Jun 28 10:35:30 2024
//
// Verilog Description of module vdc_gen_clk
//

module vdc_gen_clk (ICLK, OCLK, DIVIDE);   // vdc_gen_clk.vhd(6[8:19])
    input ICLK;   // vdc_gen_clk.vhd(8[4:8])
    output OCLK;   // vdc_gen_clk.vhd(9[4:8])
    input [15:0]DIVIDE;   // vdc_gen_clk.vhd(10[4:10])
    
    wire ICLK /* synthesis is_clock=1, SET_AS_NETWORK=ICLK */ ;   // vdc_gen_clk.vhd(8[4:8])
    
    wire GND_net, VCC_net;
    wire [1:0]div_state;   // vdc_gen_clk.vhd(18[9:18])
    wire [15:0]t0on;   // vdc_gen_clk.vhd(20[9:13])
    wire [15:0]t0off;   // vdc_gen_clk.vhd(21[9:14])
    wire [16:0]t0off_15__N_67;
    wire [16:0]t0on_15__N_35;
    wire [16:0]t0off_15__N_51;
    
    wire n1, n307, div_state_1__N_88, n420, n419, n418, n417, 
        n416, n415, n414, n413, n412, n411, n410, n409, n408, 
        n407, n406, n405;
    wire [15:0]t0off_15__N_19;
    wire [1:0]div_state_1__N_1;
    
    wire n5, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, 
        n15, n16, n17, n3, n28, n27, n26, n28_adj_1, n26_adj_2, 
        n6_adj_3, n444, n2, n1_adj_4, n388, n404, n1_adj_5, n421, 
        n1_adj_6, n1_adj_7, n1_adj_8, n403, n1_adj_9, n422, n1_adj_10, 
        n427, n1_adj_11, n428, n1_adj_12, n1_adj_13, n1_adj_14, 
        n1_adj_15, n402, n1_adj_16, n441, n1_adj_17, n401, n423, 
        n400, n424, n399, n425, n398, n426, n397, n430, n396, 
        n429, n395, n432, n394, n431, n393, n392, n447, n391, 
        n390, n389, n442, n27_adj_18, n386;
    
    VCC i2 (.Y(VCC_net));
    SB_LUT4 add_32_2_lut (.I0(GND_net), .I1(t0on[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0on_15__N_35[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_2_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_8_lut (.I0(GND_net), .I1(DIVIDE[6]), .I2(n11), 
            .I3(n423), .O(t0off_15__N_67[6])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_8 (.CI(n423), .I0(DIVIDE[6]), .I1(n11), .CO(n424));
    SB_DFF div_state_i0 (.Q(div_state[0]), .C(ICLK), .D(n2));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFF t_clk_24 (.Q(OCLK), .C(ICLK), .D(div_state_1__N_88));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i1 (.Q(t0on[1]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_4));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_CARRY sub_34_add_2_10 (.CI(n425), .I0(DIVIDE[8]), .I1(n9), .CO(n426));
    SB_DFFE t0on_i2 (.Q(t0on[2]), .C(ICLK), .E(div_state_1__N_88), .D(n1));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 i10_4_lut (.I0(t0off[8]), .I1(t0off[3]), .I2(t0off[13]), .I3(t0off[5]), 
            .O(n26));   // vdc_gen_clk.vhd(51[9:24])
    defparam i10_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut (.I0(t0off[10]), .I1(t0off[2]), .I2(t0off[12]), 
            .I3(t0off[7]), .O(n27));   // vdc_gen_clk.vhd(51[9:24])
    defparam i11_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i202_4_lut (.I0(t0off[0]), .I1(t0off[1]), .I2(t0off[6]), .I3(t0off[4]), 
            .O(n444));
    defparam i202_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i12_4_lut (.I0(t0on[11]), .I1(t0on[9]), .I2(t0on[14]), .I3(t0on[15]), 
            .O(n28_adj_1));   // vdc_gen_clk.vhd(40[9:23])
    defparam i12_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i10_4_lut_adj_1 (.I0(t0on[8]), .I1(t0on[3]), .I2(t0on[13]), 
            .I3(t0on[5]), .O(n26_adj_2));   // vdc_gen_clk.vhd(40[9:23])
    defparam i10_4_lut_adj_1.LUT_INIT = 16'hfffe;
    SB_LUT4 i11_4_lut_adj_2 (.I0(t0on[10]), .I1(t0on[2]), .I2(t0on[12]), 
            .I3(t0on[7]), .O(n27_adj_18));   // vdc_gen_clk.vhd(40[9:23])
    defparam i11_4_lut_adj_2.LUT_INIT = 16'hfffe;
    SB_LUT4 i200_4_lut (.I0(t0on[0]), .I1(t0on[1]), .I2(t0on[6]), .I3(t0on[4]), 
            .O(n447));
    defparam i200_4_lut.LUT_INIT = 16'hfffb;
    SB_LUT4 i205_4_lut (.I0(n444), .I1(n27), .I2(n26), .I3(n28), .O(n442));
    defparam i205_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 i206_4_lut (.I0(n447), .I1(n27_adj_18), .I2(n26_adj_2), .I3(n28_adj_1), 
            .O(n441));
    defparam i206_4_lut.LUT_INIT = 16'hfffe;
    SB_LUT4 sub_34_inv_0_i7_1_lut (.I0(DIVIDE[7]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n11));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i7_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i214_2_lut_4_lut (.I0(n441), .I1(n442), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n6_adj_3));
    defparam i214_2_lut_4_lut.LUT_INIT = 16'h35ff;
    SB_LUT4 div_state_1__I_0_28_Mux_7_i1_3_lut (.I0(DIVIDE[8]), .I1(t0on_15__N_35[7]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_12));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_7_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i211_2_lut_4_lut (.I0(n441), .I1(n442), .I2(div_state[1]), 
            .I3(div_state[0]), .O(n2));
    defparam i211_2_lut_4_lut.LUT_INIT = 16'hcaff;
    SB_LUT4 i208_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n307));
    defparam i208_2_lut.LUT_INIT = 16'h9999;
    SB_LUT4 div_state_1__I_0_29_Mux_0_i3_3_lut (.I0(t0off_15__N_67[0]), .I1(t0off_15__N_51[0]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[0]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_0_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE t0off_i0 (.Q(t0off[0]), .C(ICLK), .E(n307), .D(t0off_15__N_19[0]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_28_Mux_6_i1_3_lut (.I0(DIVIDE[7]), .I1(t0on_15__N_35[6]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_13));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_6_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_5_i1_3_lut (.I0(DIVIDE[6]), .I1(t0on_15__N_35[5]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_14));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_5_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_4_i1_3_lut (.I0(DIVIDE[5]), .I1(t0on_15__N_35[4]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_15));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_4_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_34_inv_0_i6_1_lut (.I0(DIVIDE[6]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n12));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i6_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_add_2_7_lut (.I0(GND_net), .I1(DIVIDE[5]), .I2(n12), 
            .I3(n422), .O(t0off_15__N_67[5])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_2 (.CI(VCC_net), .I0(t0on[0]), .I1(GND_net), .CO(n403));
    SB_LUT4 div_state_1__I_0_28_Mux_3_i1_3_lut (.I0(DIVIDE[4]), .I1(t0on_15__N_35[3]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_16));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_3_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_34_inv_0_i8_1_lut (.I0(DIVIDE[8]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n10));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i8_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_add_2_9_lut (.I0(GND_net), .I1(DIVIDE[7]), .I2(n10), 
            .I3(n424), .O(t0off_15__N_67[7])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_7 (.CI(n422), .I0(DIVIDE[5]), .I1(n12), .CO(n423));
    SB_DFFE t0on_i3 (.Q(t0on[3]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_16));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i4 (.Q(t0on[4]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_15));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i5 (.Q(t0on[5]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_14));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i6 (.Q(t0on[6]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_13));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i7 (.Q(t0on[7]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_12));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i8 (.Q(t0on[8]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_11));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i9 (.Q(t0on[9]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_10));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i10 (.Q(t0on[10]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_9));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i11 (.Q(t0on[11]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_8));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i12 (.Q(t0on[12]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_7));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i13 (.Q(t0on[13]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_6));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0on_i14 (.Q(t0on[14]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_5));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i1 (.Q(t0off[1]), .C(ICLK), .E(n307), .D(t0off_15__N_19[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_LUT4 div_state_1__I_0_29_Mux_2_i3_3_lut (.I0(t0off_15__N_67[2]), .I1(t0off_15__N_51[2]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[2]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_2_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_DFFE t0off_i2 (.Q(t0off[2]), .C(ICLK), .E(n307), .D(t0off_15__N_19[2]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i3 (.Q(t0off[3]), .C(ICLK), .E(n307), .D(t0off_15__N_19[3]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i4 (.Q(t0off[4]), .C(ICLK), .E(n307), .D(t0off_15__N_19[4]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i5 (.Q(t0off[5]), .C(ICLK), .E(n307), .D(t0off_15__N_19[5]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i6 (.Q(t0off[6]), .C(ICLK), .E(n307), .D(t0off_15__N_19[6]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i7 (.Q(t0off[7]), .C(ICLK), .E(n307), .D(t0off_15__N_19[7]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i8 (.Q(t0off[8]), .C(ICLK), .E(n307), .D(t0off_15__N_19[8]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i9 (.Q(t0off[9]), .C(ICLK), .E(n307), .D(t0off_15__N_19[9]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i10 (.Q(t0off[10]), .C(ICLK), .E(n307), .D(t0off_15__N_19[10]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i11 (.Q(t0off[11]), .C(ICLK), .E(n307), .D(t0off_15__N_19[11]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i12 (.Q(t0off[12]), .C(ICLK), .E(n307), .D(t0off_15__N_19[12]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i13 (.Q(t0off[13]), .C(ICLK), .E(n307), .D(t0off_15__N_19[13]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i14 (.Q(t0off[14]), .C(ICLK), .E(n307), .D(t0off_15__N_19[14]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE t0off_i15 (.Q(t0off[15]), .C(ICLK), .E(n307), .D(t0off_15__N_19[15]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFE div_state_i1 (.Q(div_state[1]), .C(ICLK), .E(n6_adj_3), .D(div_state_1__N_1[1]));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_DFFESR t0on_i15 (.Q(t0on[15]), .C(ICLK), .E(div_state_1__N_88), 
            .D(t0on_15__N_35[15]), .R(n386));   // vdc_gen_clk.vhd(30[3] 56[10])
    SB_CARRY add_32_3 (.CI(n403), .I0(t0on[1]), .I1(VCC_net), .CO(n404));
    SB_LUT4 sub_34_inv_0_i12_1_lut (.I0(DIVIDE[12]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n6));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i12_1_lut.LUT_INIT = 16'h5555;
    SB_CARRY sub_34_add_2_9 (.CI(n424), .I0(DIVIDE[7]), .I1(n10), .CO(n425));
    SB_LUT4 sub_34_inv_0_i13_1_lut (.I0(DIVIDE[13]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n5));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i13_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i14_1_lut (.I0(DIVIDE[14]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n4));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i14_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i15_1_lut (.I0(DIVIDE[15]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n3));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i15_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 i218_1_lut (.I0(div_state[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_88));
    defparam i218_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_add_2_17_lut (.I0(t0off_15__N_51[15]), .I1(DIVIDE[15]), 
            .I2(div_state_1__N_88), .I3(n432), .O(t0off_15__N_19[15])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_17_lut.LUT_INIT = 16'hCA3A;
    SB_LUT4 sub_34_add_2_16_lut (.I0(GND_net), .I1(DIVIDE[14]), .I2(n3), 
            .I3(n431), .O(t0off_15__N_67[14])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_16 (.CI(n431), .I0(DIVIDE[14]), .I1(n3), .CO(n432));
    SB_LUT4 sub_34_add_2_15_lut (.I0(GND_net), .I1(DIVIDE[13]), .I2(n4), 
            .I3(n430), .O(t0off_15__N_67[13])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_15 (.CI(n430), .I0(DIVIDE[13]), .I1(n4), .CO(n431));
    SB_LUT4 sub_34_add_2_14_lut (.I0(GND_net), .I1(DIVIDE[12]), .I2(n5), 
            .I3(n429), .O(t0off_15__N_67[12])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_14 (.CI(n429), .I0(DIVIDE[12]), .I1(n5), .CO(n430));
    SB_LUT4 sub_34_add_2_13_lut (.I0(GND_net), .I1(DIVIDE[11]), .I2(n6), 
            .I3(n428), .O(t0off_15__N_67[11])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_13 (.CI(n428), .I0(DIVIDE[11]), .I1(n6), .CO(n429));
    SB_LUT4 sub_34_add_2_6_lut (.I0(GND_net), .I1(DIVIDE[4]), .I2(n13), 
            .I3(n421), .O(t0off_15__N_67[4])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_17_lut (.I0(GND_net), .I1(t0off[15]), .I2(VCC_net), 
            .I3(n402), .O(t0off_15__N_51[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_12_lut (.I0(GND_net), .I1(DIVIDE[10]), .I2(n7), 
            .I3(n427), .O(t0off_15__N_67[10])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_12 (.CI(n427), .I0(DIVIDE[10]), .I1(n7), .CO(n428));
    SB_LUT4 add_33_16_lut (.I0(GND_net), .I1(t0off[14]), .I2(VCC_net), 
            .I3(n401), .O(t0off_15__N_51[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_16 (.CI(n401), .I0(t0off[14]), .I1(VCC_net), .CO(n402));
    SB_CARRY sub_34_add_2_6 (.CI(n421), .I0(DIVIDE[4]), .I1(n13), .CO(n422));
    SB_LUT4 add_33_15_lut (.I0(GND_net), .I1(t0off[13]), .I2(VCC_net), 
            .I3(n400), .O(t0off_15__N_51[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_15_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_5_lut (.I0(GND_net), .I1(DIVIDE[3]), .I2(n14), 
            .I3(n420), .O(t0off_15__N_67[3])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_15 (.CI(n400), .I0(t0off[13]), .I1(VCC_net), .CO(n401));
    SB_CARRY sub_34_add_2_5 (.CI(n420), .I0(DIVIDE[3]), .I1(n14), .CO(n421));
    SB_LUT4 add_33_14_lut (.I0(GND_net), .I1(t0off[12]), .I2(VCC_net), 
            .I3(n399), .O(t0off_15__N_51[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_14 (.CI(n399), .I0(t0off[12]), .I1(VCC_net), .CO(n400));
    SB_LUT4 add_33_13_lut (.I0(GND_net), .I1(t0off[11]), .I2(VCC_net), 
            .I3(n398), .O(t0off_15__N_51[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_13_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_4_lut (.I0(GND_net), .I1(DIVIDE[2]), .I2(n15), 
            .I3(n419), .O(t0off_15__N_67[2])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_13 (.CI(n398), .I0(t0off[11]), .I1(VCC_net), .CO(n399));
    SB_CARRY sub_34_add_2_4 (.CI(n419), .I0(DIVIDE[2]), .I1(n15), .CO(n420));
    SB_LUT4 add_33_12_lut (.I0(GND_net), .I1(t0off[10]), .I2(VCC_net), 
            .I3(n397), .O(t0off_15__N_51[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_12_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_3_lut (.I0(GND_net), .I1(DIVIDE[1]), .I2(n16), 
            .I3(n418), .O(t0off_15__N_67[1])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_12 (.CI(n397), .I0(t0off[10]), .I1(VCC_net), .CO(n398));
    SB_LUT4 sub_34_add_2_10_lut (.I0(GND_net), .I1(DIVIDE[8]), .I2(n9), 
            .I3(n425), .O(t0off_15__N_67[8])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_10_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_33_11_lut (.I0(GND_net), .I1(t0off[9]), .I2(VCC_net), 
            .I3(n396), .O(t0off_15__N_51[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_11 (.CI(n396), .I0(t0off[9]), .I1(VCC_net), .CO(n397));
    SB_LUT4 add_33_10_lut (.I0(GND_net), .I1(t0off[8]), .I2(VCC_net), 
            .I3(n395), .O(t0off_15__N_51[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_10 (.CI(n395), .I0(t0off[8]), .I1(VCC_net), .CO(n396));
    SB_LUT4 add_33_9_lut (.I0(GND_net), .I1(t0off[7]), .I2(VCC_net), .I3(n394), 
            .O(t0off_15__N_51[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_9_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 sub_34_add_2_11_lut (.I0(GND_net), .I1(DIVIDE[9]), .I2(n8), 
            .I3(n426), .O(t0off_15__N_67[9])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_9 (.CI(n394), .I0(t0off[7]), .I1(VCC_net), .CO(n395));
    SB_LUT4 add_33_8_lut (.I0(GND_net), .I1(t0off[6]), .I2(VCC_net), .I3(n393), 
            .O(t0off_15__N_51[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_3 (.CI(n418), .I0(DIVIDE[1]), .I1(n16), .CO(n419));
    SB_LUT4 sub_34_add_2_2_lut (.I0(GND_net), .I1(DIVIDE[0]), .I2(n17), 
            .I3(VCC_net), .O(t0off_15__N_67[0])) /* synthesis syn_instantiated=1 */ ;
    defparam sub_34_add_2_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY sub_34_add_2_2 (.CI(VCC_net), .I0(DIVIDE[0]), .I1(n17), .CO(n418));
    SB_CARRY add_33_8 (.CI(n393), .I0(t0off[6]), .I1(VCC_net), .CO(n394));
    SB_LUT4 add_32_17_lut (.I0(GND_net), .I1(t0on[15]), .I2(VCC_net), 
            .I3(n417), .O(t0on_15__N_35[15])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_17_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_16_lut (.I0(GND_net), .I1(t0on[14]), .I2(VCC_net), 
            .I3(n416), .O(t0on_15__N_35[14])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_16_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_16 (.CI(n416), .I0(t0on[14]), .I1(VCC_net), .CO(n417));
    SB_LUT4 add_33_7_lut (.I0(GND_net), .I1(t0off[5]), .I2(VCC_net), .I3(n392), 
            .O(t0off_15__N_51[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_7_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_15_lut (.I0(GND_net), .I1(t0on[13]), .I2(VCC_net), 
            .I3(n415), .O(t0on_15__N_35[13])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_15_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_15 (.CI(n415), .I0(t0on[13]), .I1(VCC_net), .CO(n416));
    SB_LUT4 add_32_14_lut (.I0(GND_net), .I1(t0on[12]), .I2(VCC_net), 
            .I3(n414), .O(t0on_15__N_35[12])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_14_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_7 (.CI(n392), .I0(t0off[5]), .I1(VCC_net), .CO(n393));
    SB_CARRY add_32_14 (.CI(n414), .I0(t0on[12]), .I1(VCC_net), .CO(n415));
    SB_LUT4 add_32_13_lut (.I0(GND_net), .I1(t0on[11]), .I2(VCC_net), 
            .I3(n413), .O(t0on_15__N_35[11])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_13_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_13 (.CI(n413), .I0(t0on[11]), .I1(VCC_net), .CO(n414));
    SB_LUT4 add_33_6_lut (.I0(GND_net), .I1(t0off[4]), .I2(VCC_net), .I3(n391), 
            .O(t0off_15__N_51[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_6_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_12_lut (.I0(GND_net), .I1(t0on[10]), .I2(VCC_net), 
            .I3(n412), .O(t0on_15__N_35[10])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_12_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_12 (.CI(n412), .I0(t0on[10]), .I1(VCC_net), .CO(n413));
    SB_LUT4 add_32_11_lut (.I0(GND_net), .I1(t0on[9]), .I2(VCC_net), .I3(n411), 
            .O(t0on_15__N_35[9])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_11_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_6 (.CI(n391), .I0(t0off[4]), .I1(VCC_net), .CO(n392));
    SB_CARRY add_32_11 (.CI(n411), .I0(t0on[9]), .I1(VCC_net), .CO(n412));
    SB_LUT4 add_32_10_lut (.I0(GND_net), .I1(t0on[8]), .I2(VCC_net), .I3(n410), 
            .O(t0on_15__N_35[8])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_10_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_10 (.CI(n410), .I0(t0on[8]), .I1(VCC_net), .CO(n411));
    SB_LUT4 add_33_5_lut (.I0(GND_net), .I1(t0off[3]), .I2(VCC_net), .I3(n390), 
            .O(t0off_15__N_51[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_5_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_9_lut (.I0(GND_net), .I1(t0on[7]), .I2(VCC_net), .I3(n409), 
            .O(t0on_15__N_35[7])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_9_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_9 (.CI(n409), .I0(t0on[7]), .I1(VCC_net), .CO(n410));
    SB_LUT4 add_32_8_lut (.I0(GND_net), .I1(t0on[6]), .I2(VCC_net), .I3(n408), 
            .O(t0on_15__N_35[6])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_8_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_5 (.CI(n390), .I0(t0off[3]), .I1(VCC_net), .CO(n391));
    SB_CARRY add_32_8 (.CI(n408), .I0(t0on[6]), .I1(VCC_net), .CO(n409));
    SB_LUT4 add_32_7_lut (.I0(GND_net), .I1(t0on[5]), .I2(VCC_net), .I3(n407), 
            .O(t0on_15__N_35[5])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_7_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_7 (.CI(n407), .I0(t0on[5]), .I1(VCC_net), .CO(n408));
    SB_LUT4 add_33_4_lut (.I0(GND_net), .I1(t0off[2]), .I2(VCC_net), .I3(n389), 
            .O(t0off_15__N_51[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_4_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_6_lut (.I0(GND_net), .I1(t0on[4]), .I2(VCC_net), .I3(n406), 
            .O(t0on_15__N_35[4])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_6_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_4 (.CI(n389), .I0(t0off[2]), .I1(VCC_net), .CO(n390));
    SB_CARRY add_32_6 (.CI(n406), .I0(t0on[4]), .I1(VCC_net), .CO(n407));
    SB_LUT4 add_32_5_lut (.I0(GND_net), .I1(t0on[3]), .I2(VCC_net), .I3(n405), 
            .O(t0on_15__N_35[3])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_5_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_5 (.CI(n405), .I0(t0on[3]), .I1(VCC_net), .CO(n406));
    SB_LUT4 add_33_3_lut (.I0(GND_net), .I1(t0off[1]), .I2(VCC_net), .I3(n388), 
            .O(t0off_15__N_51[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_3_lut.LUT_INIT = 16'hC33C;
    SB_LUT4 add_32_4_lut (.I0(GND_net), .I1(t0on[2]), .I2(VCC_net), .I3(n404), 
            .O(t0on_15__N_35[2])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_4_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_32_4 (.CI(n404), .I0(t0on[2]), .I1(VCC_net), .CO(n405));
    SB_LUT4 add_32_3_lut (.I0(GND_net), .I1(t0on[1]), .I2(VCC_net), .I3(n403), 
            .O(t0on_15__N_35[1])) /* synthesis syn_instantiated=1 */ ;
    defparam add_32_3_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_3 (.CI(n388), .I0(t0off[1]), .I1(VCC_net), .CO(n389));
    SB_DFFE t0on_i0 (.Q(t0on[0]), .C(ICLK), .E(div_state_1__N_88), .D(n1_adj_17));   // vdc_gen_clk.vhd(30[3] 56[10])
    GND i1 (.Y(GND_net));
    SB_LUT4 add_33_2_lut (.I0(GND_net), .I1(t0off[0]), .I2(GND_net), .I3(VCC_net), 
            .O(t0off_15__N_51[0])) /* synthesis syn_instantiated=1 */ ;
    defparam add_33_2_lut.LUT_INIT = 16'hC33C;
    SB_CARRY add_33_2 (.CI(VCC_net), .I0(t0off[0]), .I1(GND_net), .CO(n388));
    SB_CARRY sub_34_add_2_11 (.CI(n426), .I0(DIVIDE[9]), .I1(n8), .CO(n427));
    SB_LUT4 i12_4_lut_adj_3 (.I0(t0off[11]), .I1(t0off[9]), .I2(t0off[14]), 
            .I3(t0off[15]), .O(n28));   // vdc_gen_clk.vhd(51[9:24])
    defparam i12_4_lut_adj_3.LUT_INIT = 16'hfffe;
    SB_LUT4 div_state_1__I_0_28_Mux_1_i1_3_lut (.I0(DIVIDE[2]), .I1(t0on_15__N_35[1]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_4));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_1_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 sub_34_inv_0_i9_1_lut (.I0(DIVIDE[9]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n9));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i9_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_state_1__I_0_28_Mux_2_i1_3_lut (.I0(DIVIDE[3]), .I1(t0on_15__N_35[2]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_2_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_8_i1_3_lut (.I0(DIVIDE[9]), .I1(t0on_15__N_35[8]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_11));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_8_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_9_i1_3_lut (.I0(DIVIDE[10]), .I1(t0on_15__N_35[9]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_10));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_9_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_10_i1_3_lut (.I0(DIVIDE[11]), .I1(t0on_15__N_35[10]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_9));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_10_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_11_i1_3_lut (.I0(DIVIDE[12]), .I1(t0on_15__N_35[11]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_8));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_11_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_12_i1_3_lut (.I0(DIVIDE[13]), .I1(t0on_15__N_35[12]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_7));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_12_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_13_i1_3_lut (.I0(DIVIDE[14]), .I1(t0on_15__N_35[13]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_6));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_13_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_28_Mux_14_i1_3_lut (.I0(DIVIDE[15]), .I1(t0on_15__N_35[14]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_5));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_14_i1_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_1_i3_3_lut (.I0(t0off_15__N_67[1]), .I1(t0off_15__N_51[1]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_1_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_3_i3_3_lut (.I0(t0off_15__N_67[3]), .I1(t0off_15__N_51[3]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[3]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_3_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_4_i3_3_lut (.I0(t0off_15__N_67[4]), .I1(t0off_15__N_51[4]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[4]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_4_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_5_i3_3_lut (.I0(t0off_15__N_67[5]), .I1(t0off_15__N_51[5]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[5]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_5_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_6_i3_3_lut (.I0(t0off_15__N_67[6]), .I1(t0off_15__N_51[6]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[6]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_6_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_7_i3_3_lut (.I0(t0off_15__N_67[7]), .I1(t0off_15__N_51[7]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[7]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_7_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_8_i3_3_lut (.I0(t0off_15__N_67[8]), .I1(t0off_15__N_51[8]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[8]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_8_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_9_i3_3_lut (.I0(t0off_15__N_67[9]), .I1(t0off_15__N_51[9]), 
            .I2(div_state[1]), .I3(GND_net), .O(t0off_15__N_19[9]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_9_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_10_i3_3_lut (.I0(t0off_15__N_67[10]), 
            .I1(t0off_15__N_51[10]), .I2(div_state[1]), .I3(GND_net), 
            .O(t0off_15__N_19[10]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_10_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_11_i3_3_lut (.I0(t0off_15__N_67[11]), 
            .I1(t0off_15__N_51[11]), .I2(div_state[1]), .I3(GND_net), 
            .O(t0off_15__N_19[11]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_11_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_12_i3_3_lut (.I0(t0off_15__N_67[12]), 
            .I1(t0off_15__N_51[12]), .I2(div_state[1]), .I3(GND_net), 
            .O(t0off_15__N_19[12]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_12_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_13_i3_3_lut (.I0(t0off_15__N_67[13]), 
            .I1(t0off_15__N_51[13]), .I2(div_state[1]), .I3(GND_net), 
            .O(t0off_15__N_19[13]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_13_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 div_state_1__I_0_29_Mux_14_i3_3_lut (.I0(t0off_15__N_67[14]), 
            .I1(t0off_15__N_51[14]), .I2(div_state[1]), .I3(GND_net), 
            .O(t0off_15__N_19[14]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_29_Mux_14_i3_3_lut.LUT_INIT = 16'hcaca;
    SB_LUT4 i177_2_lut (.I0(div_state[0]), .I1(div_state[1]), .I2(GND_net), 
            .I3(GND_net), .O(div_state_1__N_1[1]));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam i177_2_lut.LUT_INIT = 16'h6666;
    SB_LUT4 i217_2_lut (.I0(div_state[1]), .I1(div_state[0]), .I2(GND_net), 
            .I3(GND_net), .O(n386));
    defparam i217_2_lut.LUT_INIT = 16'h1111;
    SB_LUT4 sub_34_inv_0_i5_1_lut (.I0(DIVIDE[5]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n13));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i5_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i11_1_lut (.I0(DIVIDE[11]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n7));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i11_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i4_1_lut (.I0(DIVIDE[4]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n14));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i4_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i3_1_lut (.I0(DIVIDE[3]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n15));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i3_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i2_1_lut (.I0(DIVIDE[2]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n16));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i2_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i10_1_lut (.I0(DIVIDE[10]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n8));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i10_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 sub_34_inv_0_i1_1_lut (.I0(DIVIDE[1]), .I1(GND_net), .I2(GND_net), 
            .I3(GND_net), .O(n17));   // C:/lscc/iCEcube2.2020.12/LSE/vhdl_packages/syn_arit.vhd(1113[42:66])
    defparam sub_34_inv_0_i1_1_lut.LUT_INIT = 16'h5555;
    SB_LUT4 div_state_1__I_0_28_Mux_0_i1_3_lut (.I0(DIVIDE[1]), .I1(t0on_15__N_35[0]), 
            .I2(div_state[0]), .I3(GND_net), .O(n1_adj_17));   // vdc_gen_clk.vhd(31[4] 55[13])
    defparam div_state_1__I_0_28_Mux_0_i1_3_lut.LUT_INIT = 16'hcaca;
    
endmodule
