resource "azurerm_resource_group" "rg" {
  name     = var.azurerm_resource_group
  location = var.azurerm_resource_group_location
}