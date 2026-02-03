data "azurerm_subnet" "datasubnet" {
  name                 = var.data_subnet_name
  virtual_network_name = var.data_vnet_name
  resource_group_name  = var.data_rg_name
}
data "azurerm_public_ip" "datapip" {
  name                = var.data_pip_name
  resource_group_name = var.data_pip_rg_name
}