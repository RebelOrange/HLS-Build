// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1__HH__
#define __nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1__HH__
#include "nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1 nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U;

    SC_CTOR(nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1):  nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U ("nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U") {
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.clk(clk);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.rst(reset);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.ce(ce);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.in0(din0);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.in1(din1);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.in2(din2);
        nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1_DSP48_1_U.dout(dout);

    }

};

#endif //
