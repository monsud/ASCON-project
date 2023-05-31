set_property SRC_FILE_INFO {cfile:C:/Users/david/Documents/ASCON-project/project_ascon.srcs/constrs_1/new/ascon_top.xdc rfile:../../../project_ascon.srcs/constrs_1/new/ascon_top.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_ascon_inst
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_ascon_inst] [get_cells -quiet [list ascon_inst]]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_serializer_key
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_serializer_key] [get_cells -quiet [list serializer_key]]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_serializer_nonce
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_serializer_nonce] [get_cells -quiet [list serializer_nonce]]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_deserializer
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_deserializer] [get_cells -quiet [list deserializer]]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_serializer_plaintext
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_serializer_plaintext] [get_cells -quiet [list serializer_plaintext]]
