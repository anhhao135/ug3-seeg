set_property SRC_FILE_INFO {cfile:/home/ug3/Repos/ug3-seeg/ug3-seeg.gen/sources_1/bd/seeg_zynq/ip/seeg_zynq_clk_wiz_0_0/seeg_zynq_clk_wiz_0_0.xdc rfile:../../../ug3-seeg.gen/sources_1/bd/seeg_zynq/ip/seeg_zynq_clk_wiz_0_0/seeg_zynq_clk_wiz_0_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.100
