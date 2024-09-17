create_hw_axi_txn write_batch_size [get_hw_axis hw_axi_1] -address 4C -type write -data 00000008 -force
create_hw_axi_txn write_loopback [get_hw_axis hw_axi_1] -address 50 -type write -data 00000001 -force
create_hw_axi_txn write_loopback_off [get_hw_axis hw_axi_1] -address 50 -type write -data 00000000 -force

create_hw_axi_txn write_reg0_clear [get_hw_axis hw_axi_1] -address 0 -type write -data 00000000 -force
create_hw_axi_txn write_record_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000001 -force
create_hw_axi_txn write_record_stop [get_hw_axis hw_axi_1] -address 0 -type write -data 00000002 -force
create_hw_axi_txn write_zcheck_start [get_hw_axis hw_axi_1] -address 0 -type write -data 00000004 -force

create_hw_axi_txn read_reg_31 [get_hw_axis hw_axi_1] -address 7C -type read -force

