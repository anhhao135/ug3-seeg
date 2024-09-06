
`timescale 1ns / 1ps
`define BD_NAME tb_seeg_top
`define BD_INST_NAME tb_seeg_top_i
`define BD_WRAPPER tb_seeg_top_wrapper

import axi_vip_pkg::*;
import tb_seeg_top_axi_vip_0_0_pkg::*;

module tb_seeg_top_axi();


xil_axi_uint                           mst_agent_verbosity = 0;  

bit                                     M_AXIS_ACLK;
bit                                     S_AXI_ACLK;
bit                                     M_AXIS_ARESETN;
bit                                     S_AXI_ARESETN;


xil_axi_prot_t                          mtestProtectionType = 3'b000;  
xil_axi_resp_t                          mtestBresp;    
bit [31:0]                              mtestWDataL; 
bit [31:0]                              mtestRDataL; 

tb_seeg_top_axi_vip_0_0_mst_t          mst_agent_0;

  `BD_WRAPPER DUT(
    .M_AXIS_ACLK(M_AXIS_ACLK),
    .M_AXIS_ARESETN(M_AXIS_ARESETN),
    .S_AXI_ACLK(S_AXI_ACLK),
    .S_AXI_ARESETN(S_AXI_ARESETN)
    ); 
  
initial begin
    mst_agent_0 = new("master vip agent",DUT.`BD_INST_NAME.axi_vip_0.inst.IF);
    mst_agent_0.vif_proxy.set_dummy_drive_type(XIL_AXI_VIF_DRIVE_NONE); 
    mst_agent_0.set_agent_tag("Master VIP"); 
    mst_agent_0.set_verbosity(mst_agent_verbosity); 
    mst_agent_0.start_master(); 
    $timeformat (-12, 1, " ps", 1);
  end




always #2 M_AXIS_ACLK <= ~M_AXIS_ACLK; //axi stream clock is 250 MHz
always #12.82 S_AXI_ACLK = ~S_AXI_ACLK; //seeg top module clock is 39 MHz

initial begin
  M_AXIS_ARESETN <= 1'b1;
  S_AXI_ARESETN <= 1'b1;
  #200ns;
  M_AXIS_ARESETN <= 1'b0;
  S_AXI_ARESETN <= 1'b0;
  #200ns;
  M_AXIS_ARESETN <= 1'b1;
  S_AXI_ARESETN <= 1'b1;
  #1000ns;

  mtestWDataL = 32'h22222222; //binary is 00010001000100010001000100010001 i.e. all miso lines are assumed to have 1 clock cycle delay
  mst_agent_0.AXI4LITE_WRITE_BURST(32'd120, mtestProtectionType, mtestWDataL, mtestBresp);

  $finish;

end

endmodule