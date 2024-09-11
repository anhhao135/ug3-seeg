transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+cable_delay_tester  -L xilinx_vip -L xpm -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xlconstant_v1_1_7 -L jtag_axi -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cable_delay_tester xil_defaultlib.glbl

do {cable_delay_tester.udo}

run 1000ns

endsim

quit -force
