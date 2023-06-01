vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_13
vlib activehdl/processing_system7_vip_v1_0_15
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_29
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/xlslice_v1_0_2
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_27
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_26
vlib activehdl/axi_crossbar_v2_1_28
vlib activehdl/axi_protocol_converter_v2_1_27

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_13 activehdl/axi_vip_v1_1_13
vmap processing_system7_vip_v1_0_15 activehdl/processing_system7_vip_v1_0_15
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_29 activehdl/axi_gpio_v2_0_29
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap xlslice_v1_0_2 activehdl/xlslice_v1_0_2
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_27 activehdl/axi_register_slice_v2_1_27
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_26 activehdl/axi_data_fifo_v2_1_26
vmap axi_crossbar_v2_1_28 activehdl/axi_crossbar_v2_1_28
vmap axi_protocol_converter_v2_1_27 activehdl/axi_protocol_converter_v2_1_27

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_13  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_15  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_processing_system7_0_3/sim/design_ascon_processing_system7_0_3.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_add_constant.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_finalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_initalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_key_schedule.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_linear_diffusion.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_round.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_sbox.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_top.sv" \
"../../../bd/design_ascon/ip/design_ascon_ascon_core_0_2/sim/design_ascon_ascon_core_0_2.sv" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_rst_ps7_0_50M_4/sim/design_ascon_rst_ps7_0_50M_4.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_29 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_0/sim/design_ascon_axi_gpio_0_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_1/sim/design_ascon_axi_gpio_0_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_2/sim/design_ascon_axi_gpio_0_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_3/sim/design_ascon_axi_gpio_0_3.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_0/sim/design_ascon_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_4_0/sim/design_ascon_axi_gpio_4_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_0/sim/design_ascon_axi_gpio_3_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_1/sim/design_ascon_axi_gpio_3_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_2/sim/design_ascon_axi_gpio_3_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_3/sim/design_ascon_axi_gpio_3_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_1/sim/design_ascon_xlconcat_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_0/sim/design_ascon_axi_gpio_8_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_1/sim/design_ascon_axi_gpio_8_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_2/sim/design_ascon_axi_gpio_8_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_3/sim/design_ascon_axi_gpio_8_3.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_1_0/sim/design_ascon_xlconcat_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_0/sim/design_ascon_xlslice_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_1/sim/design_ascon_xlslice_0_1.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_2/sim/design_ascon_xlslice_0_2.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_3/sim/design_ascon_xlslice_0_3.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_0/sim/design_ascon_axi_gpio_13_0.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_1/sim/design_ascon_axi_gpio_13_1.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_2/sim/design_ascon_axi_gpio_13_2.vhd" \
"../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_3/sim/design_ascon_axi_gpio_13_3.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_27  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_26  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_28  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_xbar_0/sim/design_ascon_xbar_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_0_0/sim/design_ascon_tier2_xbar_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_1_0/sim/design_ascon_tier2_xbar_1_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_2_0/sim/design_ascon_tier2_xbar_2_0.v" \

vlog -work axi_protocol_converter_v2_1_27  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl" "+incdir+C:/Xilinx/Vivado/2022.2/data/xilinx_vip/include" \
"../../../bd/design_ascon/ip/design_ascon_auto_pc_0/sim/design_ascon_auto_pc_0.v" \
"../../../bd/design_ascon/sim/design_ascon.v" \

vlog -work xil_defaultlib \
"glbl.v"

