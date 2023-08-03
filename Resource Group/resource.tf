# Creating Resoure Group
resource "azurerm_resource_group" "ref_rg" {
  name     = "${var.server_rg}"
  location = "${var.server_location}"
}