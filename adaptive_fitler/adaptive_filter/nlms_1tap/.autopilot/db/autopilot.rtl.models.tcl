set SynModuleInfo {
  {SRCNAME nlms_module_1tap MODELNAME nlms_module_1tap RTLNAME nlms_module_1tap IS_TOP 1
    SUBMODULES {
      {MODELNAME nlms_module_1tap_mul_64s_16s_80_3_1 RTLNAME nlms_module_1tap_mul_64s_16s_80_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mul_64s_16s_79_3_1 RTLNAME nlms_module_1tap_mul_64s_16s_79_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_udiv_65s_64ns_64_69_1 RTLNAME nlms_module_1tap_udiv_65s_64ns_64_69_1 BINDTYPE op TYPE udiv IMPL auto LATENCY 68 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mul_63ns_32ns_95_3_1 RTLNAME nlms_module_1tap_mul_63ns_32ns_95_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mul_95ns_81s_175_3_1 RTLNAME nlms_module_1tap_mul_95ns_81s_175_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mul_95ns_80s_175_3_1 RTLNAME nlms_module_1tap_mul_95ns_80s_175_3_1 BINDTYPE op TYPE mul IMPL dsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_add_175s_175ns_175_2_1 RTLNAME nlms_module_1tap_add_175s_175ns_175_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mul_mul_16s_16s_32_4_1 RTLNAME nlms_module_1tap_mul_mul_16s_16s_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1 RTLNAME nlms_module_1tap_mac_muladd_16s_16s_32s_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_mac_muladd_16s_16s_32ns_32_4_1 RTLNAME nlms_module_1tap_mac_muladd_16s_16s_32ns_32_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_lms_aux_reg_M_real_V RTLNAME nlms_module_1tap_lms_aux_reg_M_real_V BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nlms_module_1tap_regslice_both RTLNAME nlms_module_1tap_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME nlms_module_1tap_regslice_both_U}
    }
  }
}
