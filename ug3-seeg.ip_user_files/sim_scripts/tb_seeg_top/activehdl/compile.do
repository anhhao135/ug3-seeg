transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vmap -link {C:/Repos/ug3-seeg/ug3-seeg.cache/compile_simlib/activehdl}
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/xil_defaultlib
vlib activehdl/axi_vip_v1_1_14

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_axi_vip_0_0/sim/tb_seeg_top_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_14  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_axi_vip_0_0/sim/tb_seeg_top_axi_vip_0_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l axi_infrastructure_v1_1_0 -l xil_defaultlib -l axi_vip_v1_1_14 \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_seeg_top_0_0/sim/tb_seeg_top_seeg_top_0_0.v" \
"../../../bd/tb_seeg_top/sim/tb_seeg_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

