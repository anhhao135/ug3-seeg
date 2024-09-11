vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_14
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/jtag_axi

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 modelsim_lib/msim/axi_vip_v1_1_14
vmap zynq_ultra_ps_e_vip_v1_0_14 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap jtag_axi modelsim_lib/msim/jtag_axi

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_rhd_spi_master_0_0/sim/cable_delay_tester_rhd_spi_master_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_zynq_ultra_ps_e_0_0/sim/cable_delay_tester_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_clk_wiz_0_0/cable_delay_tester_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_clk_wiz_0_0/cable_delay_tester_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_proc_sys_reset_0_1/sim/cable_delay_tester_proc_sys_reset_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_ila_0_0/sim/cable_delay_tester_ila_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_0_0/sim/cable_delay_tester_xlconstant_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_1_0/sim/cable_delay_tester_xlconstant_1_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_2_0/sim/cable_delay_tester_xlconstant_2_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_3_0/sim/cable_delay_tester_xlconstant_3_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_rhs_spi_master_0_0/sim/cable_delay_tester_rhs_spi_master_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_4_0/sim/cable_delay_tester_xlconstant_4_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_xlconstant_5_0/sim/cable_delay_tester_xlconstant_5_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_ila_0_1/sim/cable_delay_tester_ila_0_1.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_proc_sys_reset_1_0/sim/cable_delay_tester_proc_sys_reset_1_0.vhd" \

vlog -work jtag_axi  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/c8e9/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/cable_delay_tester/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_jtag_axi_0_0/sim/cable_delay_tester_jtag_axi_0_0.v" \
"../../../bd/cable_delay_tester/ip/cable_delay_tester_seeg_top_0_0/sim/cable_delay_tester_seeg_top_0_0.v" \
"../../../bd/cable_delay_tester/sim/cable_delay_tester.v" \

vlog -work xil_defaultlib \
"glbl.v"

