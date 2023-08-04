# Create a Network Sercurity Group
resource "azurerm_network_security_group" "ref_nsg" {
  name = "${var.prefix}-nsg"
  location = "${var.server_location}"
  resource_group_name = "${azurerm_resource_group.ref_rg.name}" 
}