# Create a project
open_project -reset blind-axi-split

# Add design files
add_files blind-axi-split.cpp
add_files blind-axi-split.h
# Add test bench & files
add_files -tb dummy_tb.cpp

# Set the top-level function
set_top blind_axi_split_module

# ########################################################
# Create a solution
open_solution -reset solution1

# Define technology and clock rate
set_part {xc7z020clg484}
create_clock -period "10ns"

csynth_design