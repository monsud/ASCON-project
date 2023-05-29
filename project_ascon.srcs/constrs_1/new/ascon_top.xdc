create_clock -period 5.000 -name clk -waveform {0.000 2.500} -add [get_ports clk]

create_pblock pblock_ascon_inst
add_cells_to_pblock [get_pblocks pblock_ascon_inst] [get_cells -quiet [list ascon_inst]]
create_pblock pblock_serializer_key
add_cells_to_pblock [get_pblocks pblock_serializer_key] [get_cells -quiet [list serializer_key]]
create_pblock pblock_serializer_nonce
add_cells_to_pblock [get_pblocks pblock_serializer_nonce] [get_cells -quiet [list serializer_nonce]]
create_pblock pblock_deserializer
add_cells_to_pblock [get_pblocks pblock_deserializer] [get_cells -quiet [list deserializer]]
create_pblock pblock_serializer_plaintext
add_cells_to_pblock [get_pblocks pblock_serializer_plaintext] [get_cells -quiet [list serializer_plaintext]]
