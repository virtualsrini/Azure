resource "azurerm_network_security_rule" "ref_nsg_rule" {
  name = "RDP Inpound"
  priority = "100"
  direction = "Inbound"
  access = "allow"
  protocol = "TCP"
  source_port_range = "3389"
  destination_port_range = "*"
  source_address_prefix = "*"
  destination_address_prefix = "*"
  resource_group_name = "${azurerm_resource_group.ref_rg.name}"
  network_security_group_name = "${azurerm_network_security_group.ref_nsg.name}"
  }