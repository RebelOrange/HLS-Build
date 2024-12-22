# Create a project
open_project -reset adaptive_filter

# Add design files
add_files adaptive_filter.h
add_files fir_filter.h
add_files nlms.cpp

# Add test bench & files
add_files -tb adaptive_filter_tb.cpp

# Set the top-level function
set_top nlms_module_3tap

# ########################################################
# Create a solution
open_solution -reset nlms_3tap

# Define technology and clock rate
set_part {xc7z020clg484}
create_clock -period "5ns"
set_clock_uncertainty "0.01ns"

csynth_design