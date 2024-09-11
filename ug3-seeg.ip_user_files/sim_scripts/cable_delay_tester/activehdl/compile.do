transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Repos/ug3-seeg/ug3-seeg.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_14
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_14
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/jtag_axi

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_rhd_spi_master_0_0/sim/cable_delay_tester_rhd_spi_master_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_zynq_ultra_ps_e_0_0/sim/cable_delay_tester_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_clk_wiz_0_0/cable_delay_tester_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_clk_wiz_0_0/cable_delay_tester_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_proc_sys_reset_0_1/sim/cable_delay_tester_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_ila_0_0/sim/cable_delay_tester_ila_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_0_0/sim/cable_delay_tester_xlconstant_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_1_0/sim/cable_delay_tester_xlconstant_1_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_2_0/sim/cable_delay_tester_xlconstant_2_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_3_0/sim/cable_delay_tester_xlconstant_3_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_rhs_spi_master_0_0/sim/cable_delay_tester_rhs_spi_master_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_4_0/sim/cable_delay_tester_xlconstant_4_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_5_0/sim/cable_delay_tester_xlconstant_5_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_ila_0_1/sim/cable_delay_tester_ila_0_1.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_proc_sys_reset_1_0/sim/cable_delay_tester_proc_sys_reset_1_0.vhd" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/c8e9/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 -l xlconstant_v1_1_7 -l jtag_axi \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_jtag_axi_0_0/sim/cable_delay_tester_jtag_axi_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_seeg_top_0_0/sim/cable_delay_tester_seeg_top_0_0.v" \
"../../../bd/cable_delay_tester/sim/cable_delay_tester.v" \

vlog -work xil_defaultlib \
"glbl.v"

