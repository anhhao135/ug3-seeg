vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/axi_vip_v1_1_14

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap axi_vip_v1_1_14 modelsim_lib/msim/axi_vip_v1_1_14

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_axi_vip_0_0/sim/tb_seeg_top_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L xilinx_vip "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_axi_vip_0_0/sim/tb_seeg_top_axi_vip_0_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../ug3-seeg.gen/sources_1/bd/tb_seeg_top/ipshared/ec67/hdl" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/tb_seeg_top/ip/tb_seeg_top_seeg_top_0_0/sim/tb_seeg_top_seeg_top_0_0.v" \
"../../../bd/tb_seeg_top/sim/tb_seeg_top.v" \

vlog -work xil_defaultlib \
"glbl.v"

