# Set the input delay for the clock
set_input_delay -clock [get_pins {clk}] -max 1.000 [get_pins {key}]
set_input_delay -clock [get_pins {clk}] -max 1.000 [get_pins {nonce}]
set_input_delay -clock [get_pins {clk}] -max 1.000 [get_pins {plaintext}]

# Set the output delay for the clock
set_output_delay -clock [get_pins {clk}] -max 1.000 [get_pins {ciphertext}]

# Define the clock period constraint
create_clock -period 10.000 [get_pins {clk}]
