################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name S_AXI_ACLK -period 25.641 [get_ports S_AXI_ACLK]
create_clock -name M_AXIS_ACLK -period 4 [get_ports M_AXIS_ACLK]

################################################################################