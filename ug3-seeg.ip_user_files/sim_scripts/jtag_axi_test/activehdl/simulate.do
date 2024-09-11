transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+jtag_axi_test  -L xilinx_vip -L xpm -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_14 -L zynq_ultra_ps_e_vip_v1_0_14 -L xil_defaultlib -L jtag_axi -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.jtag_axi_test xil_defaultlib.glbl

do {jtag_axi_test.udo}

run 1000ns

endsim

quit -force
