create_hw_axi_txn write_batch_size [get_hw_axis hw_axi_1] -address 4C -type write -data 00000008 -force
create_hw_axi_txn write_loopback_zcheck_scale [get_hw_axis hw_axi_1] -address 50 -type write -data 00000007 -force
create_hw_axi_txn write_loopback_off [get_hw_axis hw_axi_1] -address 50 -type write -data 00000000 -force

create_hw_axi_txn write_reg0_clear [get_hw_axis hw_axi_1] -address 0 -type write -data 00000000 -force
create_hw_axi_txn write_record_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000001 -force
create_hw_axi_txn write_record_stop [get_hw_axis hw_axi_1] -address 0 -type write -data 00000002 -force
create_hw_axi_txn write_zcheck_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000004 -force

create_hw_axi_txn read_reg_31 [get_hw_axis hw_axi_1] -address 7C -type read -force


create_hw_axi_txn write_reg1_stim [get_hw_axis hw_axi_1] -address 4 -type write -data FFFF3FE7 -force
create_hw_axi_txn write_reg2_stim [get_hw_axis hw_axi_1] -address 8 -type write -data 04000010 -force
create_hw_axi_txn write_reg3_stim [get_hw_axis hw_axi_1] -address C -type write -data 00010001 -force
create_hw_axi_txn write_reg4_stim [get_hw_axis hw_axi_1] -address 10 -type write -data 00050001 -force
create_hw_axi_txn write_reg5_stim [get_hw_axis hw_axi_1] -address 14 -type write -data 00070006 -force
create_hw_axi_txn write_reg6_stim [get_hw_axis hw_axi_1] -address 18 -type write -data 00000008 -force
create_hw_axi_txn write_inf_stim_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000080 -force
create_hw_axi_txn write_inf_stim_stop [get_hw_axis hw_axi_1] -address 0 -type write -data 00000100 -force
create_hw_axi_txn write_finite_stim_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000040 -force
