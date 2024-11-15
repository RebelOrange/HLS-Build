#include "lms.h"

void lms_module_3tap(axis_stream main_in,
		axis_stream aux_in,
		axis_stream output,
		ap_ufixed<32,0,AP_TRN,AP_SAT> mu){
#pragma HLS INTERFACE mode=axis port=main_in
#pragma HLS INTERFACE mode=axis port=aux_in
#pragma HLS INTERFACE mode=axis port=output
#pragma HLS INTERFACE mode=ap_none port=mu
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

#pragma HLS PIPELINE style=flp

	static LMS lms;
	//lms.LoadWeights();
	lms.set_mu(mu);

	axis_packet main_tmp;
	axis_packet aux_tmp;
	axis_packet output_tmp;
	error_T_cplx y;
	error_T_cplx error;
    
	main_in.read(main_tmp);
	aux_in.read(aux_tmp);

	y = lms.filter_fix(aux_tmp.data);
	lms.update_weights(  main_tmp.data.real() - y.real(), main_tmp.data.imag() - y.imag());


	output_tmp.data.real(  main_tmp.data.real() - y.real());
	output_tmp.data.imag( main_tmp.data.imag() - y.imag() );



	output_tmp.last = main_tmp.last;



	output.write(output_tmp);

}

void lms_module_1tap(axis_stream main_in,
		axis_stream aux_in,
		axis_stream output,
		ap_ufixed<32,0,AP_TRN,AP_SAT> mu){
#pragma HLS INTERFACE mode=axis port=main_in
#pragma HLS INTERFACE mode=axis port=aux_in
#pragma HLS INTERFACE mode=axis port=output
#pragma HLS INTERFACE mode=ap_none port=mu
#pragma HLS INTERFACE mode=ap_ctrl_none port=return

#pragma HLS PIPELINE style=flp

	static LMS lms;
	//lms.LoadWeights();
	lms.set_mu(mu);

	axis_packet main_tmp;
	axis_packet aux_tmp;
	axis_packet output_tmp;
	error_T_cplx y;
	error_T_cplx error;
    
	main_in.read(main_tmp);
	aux_in.read(aux_tmp);

	y = lms.filter_fix(aux_tmp.data);
	lms.update_weights(  main_tmp.data.real() - y.real(), main_tmp.data.imag() - y.imag());


	output_tmp.data.real(  main_tmp.data.real() - y.real());
	output_tmp.data.imag( main_tmp.data.imag() - y.imag() );



	output_tmp.last = main_tmp.last;



	output.write(output_tmp);

}
