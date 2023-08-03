# Create a Virtual Network
resource "azurerm_virtual_network" "ref_vnet" {
  name = "${var.prefix}-vnet"
  location = "${var.server_location}"
  resource_group_name = "${azurerm_resource_group.ref_rg.name}"
  address_space = ["${var.server_address_space}"]
}