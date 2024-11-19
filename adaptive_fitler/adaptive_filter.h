#include "rfnoc_hls/rfnoc_hls.h"
#include "fir_filter.h"
#include "hls_math.h"

// filter order
#define N 3
#define E 1

// define weight types
typedef ap_fixed<64, 32, AP_TRN, AP_SAT> weight_T;
typedef std::complex<weight_T> weight_T_cplx;

// error types
// typedef sc16 error_cplx;
typedef ap_fixed<64, 32, AP_TRN, AP_SAT> error_T;
typedef std::complex<error_T> error_T_cplx;

// inner product normalization types
typedef ap_ufixed<64,32> inner_prod;

// base adaptive filter class
class adaptive_filter {//: public FIR<weight_T, sc16, error_T, N>{
private:

protected:
	sc16 aux_reg[N];
	weight_T weights_real[N];
	weight_T weights_imag[N];

	error_T error_real;
	error_T error_imag;
	error_T mu = 0.01;
	error_T mu_effective = mu;


public:
	void update_weights(error_T error_real, error_T error_imag);
	void update_weights_normalized(error_T error_real, error_T error_imag);
	void set_mu(ap_ufixed<32,0,AP_TRN,AP_SAT> new_mu);
	void normalize_mu();
	error_T_cplx filter_fix(sc16 input);

};

void adaptive_filter::set_mu(ap_ufixed<32,0,AP_TRN,AP_SAT> new_mu){
	mu = new_mu;
}

error_T_cplx adaptive_filter::filter_fix(sc16 input){
#pragma HLS INLINE
	sc16 data;
	error_T accum_real;
	error_T accum_imag;
	error_T_cplx output;

	accum_real = 0;
	accum_imag = 0;

	// normal loop
	fir_loop: for(int i=N-1; i >=0; i--){
		if(i==0){
			data = input;
			aux_reg[0] = input;
		} else {
			data = aux_reg[i-1];
			if (i!=(N-1))
				aux_reg[i] = aux_reg[i-1];
		}
		accum_real += data.real()*weights_real[i] - data.imag()*(-weights_imag[i]); // conjugate the weights
		accum_imag += data.real()*(-weights_imag[i]) + data.imag()*weights_real[i];
	}

	output.real(accum_real);
	output.imag(accum_imag);
	return output;
}

void adaptive_filter::update_weights(error_T error_real, error_T error_imag){
#pragma HLS INLINE
	updateWeightLoop: for (int i=0; i <N; i++){
		weights_real[i] += mu*(aux_reg[i].real()*error_real + aux_reg[i].imag()*error_imag);
		weights_imag[i] += mu*(aux_reg[i].imag()*error_real - aux_reg[i].real()*error_imag);
	}
}


void adaptive_filter::update_weights_normalized(error_T error_real, error_T error_imag){
#pragma HLS INLINE

	 inner_prod innerP = aux_reg[0].real()*aux_reg[0].real() + aux_reg[0].imag()*aux_reg[0].imag()
			 + aux_reg[1].real()*aux_reg[1].real() + aux_reg[1].imag()*aux_reg[1].imag()
			 + aux_reg[2].real()*aux_reg[2].real() + aux_reg[2].imag()*aux_reg[2].imag();

	 mu_effective = hls::divide((inner_prod) 1, innerP);

	updateWeightLoop: for (int i=0; i <N; i++){
		weights_real[i] += mu*mu_effective*(aux_reg[i].real()*error_real + aux_reg[i].imag()*error_imag);
		weights_imag[i] += mu*mu_effective*(aux_reg[i].imag()*error_real - aux_reg[i].real()*error_imag);
	}
}


