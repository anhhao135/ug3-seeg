vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_14
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/jtag_axi
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_14 questa_lib/msim/axi_vip_v1_1_14
vmap zynq_ultra_ps_e_vip_v1_0_14 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap jtag_axi questa_lib/msim/jtag_axi
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

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

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_zynq_ultra_ps_e_0_0/sim/jtag_axi_test_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work jtag_axi  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/c8e9/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_jtag_axi_0_0/sim/jtag_axi_test_jtag_axi_0_0.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_seeg_top_0_0/sim/jtag_axi_test_seeg_top_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_proc_sys_reset_0_0/sim/jtag_axi_test_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_clk_wiz_0_0/jtag_axi_test_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_clk_wiz_0_0/jtag_axi_test_clk_wiz_0_0.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_ila_0_0/sim/jtag_axi_test_ila_0_0.v" \
"../../../bd/jtag_axi_test/sim/jtag_axi_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

