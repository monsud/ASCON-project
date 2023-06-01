-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_13 -sv \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ffc2/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_15 -sv \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ee60/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_processing_system7_0_3/sim/design_ascon_processing_system7_0_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_add_constant.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_finalization.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_initalization.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_key_schedule.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_linear_diffusion.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_round.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_sbox.sv" \
  "../../../bd/design_ascon/ipshared/a669/sources_1/new/ascon_top.sv" \
  "../../../bd/design_ascon/ip/design_ascon_ascon_core_0_2/sim/design_ascon_ascon_core_0_2.sv" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_rst_ps7_0_50M_4/sim/design_ascon_rst_ps7_0_50M_4.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_29 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/6219/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_0/sim/design_ascon_axi_gpio_0_0.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_1/sim/design_ascon_axi_gpio_0_1.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_2/sim/design_ascon_axi_gpio_0_2.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_0_3/sim/design_ascon_axi_gpio_0_3.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_xlconcat_0_0/sim/design_ascon_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_4_0/sim/design_ascon_axi_gpio_4_0.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_0/sim/design_ascon_axi_gpio_3_0.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_1/sim/design_ascon_axi_gpio_3_1.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_2/sim/design_ascon_axi_gpio_3_2.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_3_3/sim/design_ascon_axi_gpio_3_3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_xlconcat_0_1/sim/design_ascon_xlconcat_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_0/sim/design_ascon_axi_gpio_8_0.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_1/sim/design_ascon_axi_gpio_8_1.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_2/sim/design_ascon_axi_gpio_8_2.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_8_3/sim/design_ascon_axi_gpio_8_3.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_xlconcat_1_0/sim/design_ascon_xlconcat_1_0.v" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_xlslice_0_0/sim/design_ascon_xlslice_0_0.v" \
  "../../../bd/design_ascon/ip/design_ascon_xlslice_0_1/sim/design_ascon_xlslice_0_1.v" \
  "../../../bd/design_ascon/ip/design_ascon_xlslice_0_2/sim/design_ascon_xlslice_0_2.v" \
  "../../../bd/design_ascon/ip/design_ascon_xlslice_0_3/sim/design_ascon_xlslice_0_3.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_0/sim/design_ascon_axi_gpio_13_0.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_1/sim/design_ascon_axi_gpio_13_1.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_2/sim/design_ascon_axi_gpio_13_2.vhd" \
  "../../../bd/design_ascon/ip/design_ascon_axi_gpio_13_3/sim/design_ascon_axi_gpio_13_3.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_27 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_26 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_28 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/c40e/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_xbar_0/sim/design_ascon_xbar_0.v" \
  "../../../bd/design_ascon/ip/design_ascon_tier2_xbar_0_0/sim/design_ascon_tier2_xbar_0_0.v" \
  "../../../bd/design_ascon/ip/design_ascon_tier2_xbar_1_0/sim/design_ascon_tier2_xbar_1_0.v" \
  "../../../bd/design_ascon/ip/design_ascon_tier2_xbar_2_0/sim/design_ascon_tier2_xbar_2_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_27 \
  "../../../../project_ascon.gen/sources_1/bd/design_ascon/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_ascon/ip/design_ascon_auto_pc_0/sim/design_ascon_auto_pc_0.v" \
  "../../../bd/design_ascon/sim/design_ascon.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

