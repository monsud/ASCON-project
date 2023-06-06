transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Users/david/Documents/ASCON-project/project_ascon.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/processing_system7_vip_v1_0_16
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/xlslice_v1_0_2
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_30
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_28
vlib activehdl/fifo_generator_v13_2_8
vlib activehdl/axi_data_fifo_v2_1_27
vlib activehdl/axi_crossbar_v2_1_29
vlib activehdl/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_16  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ip/design_ascon_processing_system7_0_3/sim/design_ascon_processing_system7_0_3.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_ascon/ip/design_ascon_rst_ps7_0_50M_4/sim/design_ascon_rst_ps7_0_50M_4.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_0/sim/design_ascon_xlconcat_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_0_1/sim/design_ascon_xlconcat_0_1.v" \
"../../../bd/design_ascon/ip/design_ascon_xlconcat_1_0/sim/design_ascon_xlconcat_1_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_0/sim/design_ascon_xlslice_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_1/sim/design_ascon_xlslice_0_1.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_2/sim/design_ascon_xlslice_0_2.v" \
"../../../bd/design_ascon/ip/design_ascon_xlslice_0_3/sim/design_ascon_xlslice_0_3.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_add_constant.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_finalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_initalization.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_key_schedule.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_linear_diffusion.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_round.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_sbox.sv" \
"../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_top.sv" \
"../../../bd/design_ascon/ip/design_ascon_ascon_core_0_2/sim/design_ascon_ascon_core_0_2.sv" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_30 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/18b7/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
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

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8 -93  \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ip/design_ascon_xbar_0/sim/design_ascon_xbar_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_0_0/sim/design_ascon_tier2_xbar_0_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_1_0/sim/design_ascon_tier2_xbar_1_0.v" \
"../../../bd/design_ascon/ip/design_ascon_tier2_xbar_2_0/sim/design_ascon_tier2_xbar_2_0.v" \

vlog -work axi_protocol_converter_v2_1_28  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl" "+incdir+../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aed8/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l processing_system7_vip_v1_0_16 -l xil_defaultlib -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconcat_v2_1_4 -l xlslice_v1_0_2 -l axi_lite_ipif_v3_0_4 -l interrupt_control_v3_1_4 -l axi_gpio_v2_0_30 -l generic_baseblocks_v2_1_0 -l axi_register_slice_v2_1_28 -l fifo_generator_v13_2_8 -l axi_data_fifo_v2_1_27 -l axi_crossbar_v2_1_29 -l axi_protocol_converter_v2_1_28 \
"../../../bd/design_ascon/ip/design_ascon_auto_pc_0/sim/design_ascon_auto_pc_0.v" \
"../../../bd/design_ascon/sim/design_ascon.v" \

vlog -work xil_defaultlib \
"glbl.v"

