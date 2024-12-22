// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __nlms_module_3tap_add_175s_175ns_175_2_1__HH__
#define __nlms_module_3tap_add_175s_175ns_175_2_1__HH__
#include "nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(nlms_module_3tap_add_175s_175ns_175_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0 nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U;

    SC_CTOR(nlms_module_3tap_add_175s_175ns_175_2_1):  nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U ("nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U") {
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.clk(clk);
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.reset(reset);
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.ce(ce);
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.a(din0);
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.b(din1);
        nlms_module_3tap_add_175s_175ns_175_2_1_Adder_0_U.s(dout);

    }

};

#endif //
