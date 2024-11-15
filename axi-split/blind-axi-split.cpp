#include "rfnoc_hls/rfnoc_hls.h"
#include "blind-axi-split.h"

void blind_axi_split_module(axis_stream in0, axis_stream out0, axis_stream out1){
#pragma HLS PIPELINE
#pragma HLS INTERFACE mode=axis port=in0
#pragma HLS INTERFACE mode=axis port=out0
#pragma HLS INTERFACE mode=axis port=out1
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

    axis_packet in0_temp;
    axis_packet out0_temp;
    axis_packet out1_temp;

    in0.read(in0_temp);
    
    out0_temp.data = in0_temp.data;
    out0_temp.last = in0_temp.last;

    out1_temp.data = in0_temp.data;
    out1_temp.last = in0_temp.last;

    out0.write(out0_temp);
    out1.write(out1_temp);

    return;    
}