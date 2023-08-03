# Create a Public IP address
resource "azurerm_public_ip" "ref_ip" {
  name = "${var.prefix}-ip"
  location = "${var.server_location}"
  resource_group_name = "${azurerm_resource_group.ref_rg.name}"
  allocation_method = "Dynamic"
}