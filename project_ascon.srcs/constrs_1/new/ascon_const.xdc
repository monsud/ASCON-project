# Define the clock

# Input signals



# Output signals

# Synchronize input signals

# Enable button

# Reset signal

set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 2.500 [get_ports {push_buttons_tri_i[*]}]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 7.500 [get_ports {push_buttons_tri_i[*]}]

set_property IOSTANDARD LVCMOS25 [get_ports {push_buttons_tri_i[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {push_buttons_tri_i[0]}]
set_property PACKAGE_PIN M15 [get_ports {push_buttons_tri_i[1]}]
set_property PACKAGE_PIN H17 [get_ports {push_buttons_tri_i[0]}]
set_property PULLUP true [get_ports {push_buttons_tri_i[1]}]
set_property PULLUP true [get_ports {push_buttons_tri_i[0]}]
