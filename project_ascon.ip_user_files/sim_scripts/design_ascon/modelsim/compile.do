vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_14
vlib modelsim_lib/msim/processing_system7_vip_v1_0_16
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/xlslice_v1_0_2
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_30
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_28
vlib modelsim_lib/msim/fifo_generator_v13_2_8
vlib modelsim_lib/msim/axi_data_fifo_v2_1_27
vlib modelsim_lib/msim/axi_crossbar_v2_1_29
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_28

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 modelsim_lib/msim/axi_vip_v1_1_14
vmap processing_system7_vip_v1_0_16 modelsim_lib/msim/processing_system7_vip_v1_0_16
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap xlslice_v1_0_2 modelsim_lib/msim/xlslice_v1_0_2
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_30 modelsim_lib/msim/axi_gpio_v2_0_30
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_28 modelsim_lib/msim/axi_register_slice_v2_1_28
vmap fifo_generator_v13_2_8 modelsim_lib/msim/fifo_generator_v13_2_8
vmap axi_data_fifo_v2_1_27 modelsim_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 modelsim_lib/msim/axi_crossbar_v2_1_29
vmap axi_protocol_converter_v2_1_28 modelsim_lib/msim/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_processing_system7_0_3/sim/design_ascon_processing_system7_0_3.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_ascon/ip/design_ascon_rst_ps7_0_50M_4/sim/design_ascon_rst_ps7_0_50M_4.vhd" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_0/sim/design_ascon_xlconcat_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_1/sim/design_ascon_xlconcat_0_1.v" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_1_0/sim/design_ascon_xlconcat_1_0.v" \

vlog -work xlslice_v1_0_2  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_0/sim/design_ascon_xlslice_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_1/sim/design_ascon_xlslice_0_1.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_2/sim/design_ascon_xlslice_0_2.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_3/sim/design_ascon_xlslice_0_3.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_add_constant.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_finalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_initalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_key_schedule.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_linear_diffusion.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_round.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_sbox.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_top.sv" \
"../../../bd/design_ascon/ip/design_ascon_ascon_core_0_2/sim/design_ascon_ascon_core_0_2.sv" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_30  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_0/sim/design_ascon_axi_gpio_0_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_1/sim/design_ascon_axi_gpio_0_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_2/sim/design_ascon_axi_gpio_0_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_3/sim/design_ascon_axi_gpio_0_3.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_0/sim/design_ascon_axi_gpio_13_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_1/sim/design_ascon_axi_gpio_13_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_2/sim/design_ascon_axi_gpio_13_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_3/sim/design_ascon_axi_gpio_13_3.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_0/sim/design_ascon_axi_gpio_3_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_1/sim/design_ascon_axi_gpio_3_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_2/sim/design_ascon_axi_gpio_3_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_3/sim/design_ascon_axi_gpio_3_3.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_4_0/sim/design_ascon_axi_gpio_4_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_0/sim/design_ascon_axi_gpio_8_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_1/sim/design_ascon_axi_gpio_8_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_2/sim/design_ascon_axi_gpio_8_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_3/sim/design_ascon_axi_gpio_8_3.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xbar_0/sim/design_ascon_xbar_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_0_0/sim/design_ascon_tier2_xbar_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_1_0/sim/design_ascon_tier2_xbar_1_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_2_0/sim/design_ascon_tier2_xbar_2_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_auto_pc_0/sim/design_ascon_auto_pc_0.v" \
"../../../bd/design_ascon/sim/design_ascon.v" \

vlog -work xil_defaultlib \
"glbl.v"

