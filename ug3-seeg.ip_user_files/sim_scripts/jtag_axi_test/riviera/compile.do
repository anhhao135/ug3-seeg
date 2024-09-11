transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Repos/ug3-seeg/ug3-seeg.cache/compile_simlib/riviera}
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_14
vlib riviera/zynq_ultra_ps_e_vip_v1_0_14
vlib riviera/xil_defaultlib
vlib riviera/jtag_axi
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_14  -incr "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_zynq_ultra_ps_e_0_0/sim/jtag_axi_test_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vlog -work jtag_axi  -incr -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/c8e9/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_jtag_axi_0_0/sim/jtag_axi_test_jtag_axi_0_0.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_seeg_top_0_0/sim/jtag_axi_test_seeg_top_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93  -incr \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93  -incr \
"../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_proc_sys_reset_0_0/sim/jtag_axi_test_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/ec67/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/f805/hdl" "+incdir+../../../../ug3-seeg.gen/sources_1/bd/jtag_axi_test/ipshared/30ef" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_14 -l zynq_ultra_ps_e_vip_v1_0_14 -l xil_defaultlib -l jtag_axi -l lib_cdc_v1_0_2 -l proc_sys_reset_v5_0_13 \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_clk_wiz_0_0/jtag_axi_test_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_clk_wiz_0_0/jtag_axi_test_clk_wiz_0_0.v" \
"../../../bd/jtag_axi_test/ip/jtag_axi_test_ila_0_0/sim/jtag_axi_test_ila_0_0.v" \
"../../../bd/jtag_axi_test/sim/jtag_axi_test.v" \

vlog -work xil_defaultlib \
"glbl.v"

