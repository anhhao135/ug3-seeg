create_ip -name fifo_generator -vendor xilinx.com -library ip -version 13.2 -module_name fifo_64_to_64
set_property -dict [list \
        CONFIG.Fifo_Implementation {Independent_Clocks_Builtin_FIFO} \
        CONFIG.asymmetric_port_width {false} \
        CONFIG.Input_Data_Width {64} \
        CONFIG.Input_Depth {1024} \
        CONFIG.Output_Data_Width {64} \
        CONFIG.Output_Depth {1024} \
        CONFIG.Data_Count_Width {12} \
        CONFIG.Write_Data_Count_Width {12} \
        CONFIG.Read_Data_Count_Width {9} \
        CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
        CONFIG.Full_Threshold_Assert_Value {4094} \
        CONFIG.Full_Threshold_Negate_Value {4093} \
        CONFIG.Empty_Threshold_Assert_Value {2} \
        CONFIG.Empty_Threshold_Negate_Value {3} \
        CONFIG.Valid_Flag {true}] \
        [get_ips fifo_64_to_64]



