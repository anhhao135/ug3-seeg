
`timescale 1ns / 1ps
`define BD_NAME tb_seeg_top
`define BD_INST_NAME tb_seeg_top_i
`define BD_WRAPPER tb_seeg_top_wrapper

import axi_vip_pkg::*;
import tb_seeg_top_axi_vip_0_0_pkg::*;

module tb_seeg_top_axi();


xil_axi_uint                           mst_agent_verbosity = 0;  

bit M_AXIS_ACLK;
bit S_AXI_ACLK;
bit M_AXIS_ARESETN;
bit S_AXI_ARESETN;
bit tready;                                  
bit clk;
bit rstn;


xil_axi_prot_t                          mtestProtectionType = 3'b000;  
xil_axi_resp_t                          mtestBresp;    
bit [31:0]                              mtestWDataL; 
bit [31:0]                              mtestRDataL;

bit [31:0] start_record_command = 32'b1;
bit [31:0] stop_record_command = 32'b10;
bit [31:0] start_stim_finite_command = 32'b1000000;
bit [31:0] start_stim_infinite_command = 32'b10000000;
bit [31:0] stop_stim_infinite_command = 32'b100000000;
bit [31:0] start_zcheck_command = 32'b100;

tb_seeg_top_axi_vip_0_0_mst_t          mst_agent_0;

  `BD_WRAPPER DUT(
    .M_AXIS_ACLK(clk),
    .M_AXIS_ARESETN(rstn),
    .S_AXI_ACLK(clk),
    .S_AXI_ARESETN(rstn),
    .M_AXIS_tready(tready)
    ); 
  
initial begin
    mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.axi_vip_0.inst.IF);
    mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE); 
    mst_agent_0.set_agent_tag("Master VIP"); 
    mst_agent_0.set_verbosity(mst_agent_verbosity); 
    mst_agent_0.start_master(); 
    $timeformat (-12, 1, " ps", 1);
  end





always #6.41 clk <= ~clk; //78 MHz

initial begin
  /*
  M_AXIS_ARESETN <= 1'b1;
  S_AXI_ARESETN <= 1'b1;
  #200ns;
  M_AXIS_ARESETN <= 1'b0;
  S_AXI_ARESETN <= 1'b0;
  #200ns;
  M_AXIS_ARESETN <= 1'b1;
  S_AXI_ARESETN <= 1'b1;
  #1000ns;
  */
  tready <= 0;

  rstn <= 1'b1;
  #500ns;
  rstn <= 1'b0;
  #5000ns;
  rstn <= 1'b1;
  #5000ns;

  mst_agent_0.AXI4LITE_WRITE_BURST(3 * 4, mtestProtectionType, {16'd1, 16'd1}, mtestBresp);
  mst_agent_0.AXI4LITE_WRITE_BURST(4 * 4, mtestProtectionType, {16'd5, 16'd1}, mtestBresp);
  mst_agent_0.AXI4LITE_WRITE_BURST(5 * 4, mtestProtectionType, {16'd2, 16'd3}, mtestBresp);
  mst_agent_0.AXI4LITE_WRITE_BURST(6 * 4, mtestProtectionType, {16'd0, 16'd8}, mtestBresp);
  mst_agent_0.AXI4LITE_WRITE_BURST(19 * 4, mtestProtectionType, {16'd0, 16'd4}, mtestBresp); //batch size
  mst_agent_0.AXI4LITE_WRITE_BURST(20 * 4, mtestProtectionType, {16'd0, 16'd1}, mtestBresp); //loopback



  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, start_zcheck_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #20ms;





  

  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, start_record_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #2ms;

  tready <= 1;

  #2ms;

  

  /*

  
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, start_stim_finite_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #10ms;

  */

  /*

  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, start_stim_infinite_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #9ms;

  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, stop_stim_infinite_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #1ms;

  */
  

  

  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, stop_record_command, mtestBresp);
  #500ns
  mst_agent_0.AXI4LITE_WRITE_BURST(0 * 4, mtestProtectionType, 0, mtestBresp);

  #1ms;

  



  $finish;

end

endmodule