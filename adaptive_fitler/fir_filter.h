#include <ap_axi_sdata.h>
#include <hls_stream.h>
#include <complex>
#include <ap_fixed.h>

template<typename weight_T, typename input_T, typename output_T, size_t N>
class FIR{
private:

protected:
	input_T aux_reg[N];
	weight_T weights_real[N];
	weight_T weights_imag[N];

public:
	//template<typename weight_T, typename input_T, typename output_T, size_t N>
	std::complex<output_T> filter(input_T input);
	void LoadWeights();

};

template<typename weight_T, typename input_T, typename output_T, size_t N>
void FIR<weight_T, input_T, output_T, N>::LoadWeights(){
	weight_T dummy_real[N] = {
#include "weights_real.dat"
	};
	weight_T dummy_imag[N] = {
	#include "weights_imag.dat"
		};

	for (int i = 0; i<N; i++){
		weights_real[i] = dummy_real[i];
		weights_imag[i] = dummy_imag[i];
	}
}

template<typename weight_T, typename input_T, typename output_T, size_t N>
std::complex<output_T> FIR<weight_T, input_T, output_T, N>::filter(input_T input){

	sc16 data;
	weight_T accum_real;
	weight_T accum_imag;
	std::complex<weight_T> output;

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
