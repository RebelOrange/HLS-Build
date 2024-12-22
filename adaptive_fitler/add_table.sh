#! /bin/bash


output_csv="hw_util_lms.csv"
echo "Filter Order, Weight Decimal Bits, Weight Integer Bits, Latency Min, Latency Max, Latency Min, Latency Mac, II Min, II Max, BRAM, DSP, FF, LUT, URAM" > "$output_csv"

filter_orders=("2" "3" "5" "11")
w_decs=("16" "32")

w_ints=("4" "8" "32")

for order in "${filter_orders[@]}"; do
    for w_dec in "${w_decs[@]}"; do
        for w_int in "${w_ints[@]}"; do

                    w_tot=$w_dec+$w_int;
                    e_tot=$e_dec+$e_int;

                    sed -i "6 c\ #define N $order" adaptive_filter.h
                    sed -i "15 c\ typedef ap_fixed<$w_tot, $w_int, AP_TRN, AP_SAT> error_T;" adaptive_filter.h

                    sed -i "10 c\ typedef ap_fixed<$w_tot, $w_int, AP_TRN, AP_SAT> weight_T;" adaptive_filter.h

                    /opt/Xilinx/Vitis_HLS/2021.1/bin/vitis_hls run_hls.tcl &
                    wait 

                    grep -A 20 -B 1 "Utilization Estimates" "adaptive_filter/lms_1tap/syn/report/lms_module_1tap_csynth.rpt" > "util.txt"
                    grep -A 20 -B 1 "Performance Estimates" "adaptive_filter/lms_1tap/syn/report/lms_module_1tap_csynth.rpt" > "II.txt"


                    ii_row=$(sed -n 18p "II.txt" | tail -n 1)
                    util_row=$(grep -A 0 "Total" "util.txt" | tail -n 1)

                    ii_csv_row=$(echo "$ii_row" | awk -F '|' '{print $2", "$3", "$4", "$5", "$6", "$7}')
                    util_csv_row=$(echo "$util_row" | awk -F '|' '{print ", "$3",  "$4", "$5", "$6", "$7}')

                    echo -n "$order, $w_dec, $w_int, " >> "$output_csv"
                    echo -n "$ii_csv_row" >> "$output_csv"
                    echo "$util_csv_row" >> "$output_csv"

        done
    done
done