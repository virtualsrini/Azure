# Create Network Interface
resource "azurerm_network_interface" "ref_nic" {
  name = "${var.prefix}-nic"
  location = "${var.server_location}"
  resource_group_name = "${azurerm_resource_group.ref_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.ref_nsg.id}"
    ip_configuration { 
      name = "${var.prefix}-ip"
      subnet_id = "${azurerm_subnet.ref_subnet.id}"
      private_ip_address_allocation = "Dynamic"
      public_ip_address_id = "${azurerm_public_ip.ref_ip.id}"
    }
  }
