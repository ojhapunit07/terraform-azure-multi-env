module "resource_group" {
  source                          = "../modules/azurerm-rg"
  azurerm_resource_group          = "mp-rg"
  azurerm_resource_group_location = "central india"
}
module "virtual_network" {
  depends_on               = [module.resource_group]
  source                   = "../modules/azurerm-vnet"
  vnet_name                = "mp-vnet"
  vnet_location            = "central india"
  vnet_resource_group_name = "mp-rg"
  vnet_address_space       = ["10.0.0.0/16"]
}
module "subnet" {
  depends_on                  = [module.virtual_network]
  source                      = "../modules/azurerm-subnet"
  subnet_name                 = "mp-subnet"
  subnet_resource_group_name  = "mp-rg"
  subnet_virtual_network_name = "mp-vnet"
  subnet_address_prefixes     = ["10.0.2.0/24"]
}
module "azurerm_public_ip" {
  depends_on              = [module.resource_group]
  source                  = "../modules/azurerm-public-ip"
  pip_name                = "mp-pip"
  pip_resource_group_name = "mp-rg"
  pip_location            = "central india"
  pip_allocation_method   = "Static"
}
module "linux_vm" {
  depends_on = [module.resource_group, module.virtual_network, module.subnet, module.azurerm_public_ip]
  source                  = "../modules/azurerm-linux-vm"
  nic_name                = "mp_nic"
  nic_location            = "central india"
  nic_resource_group_name = "mp-rg"
  vm_name                 = "linuxvm"
  vm_rg_name              = "mp-rg"
  vm_location             = "central india"
  vm_size                 = "Standard_D2s_v3"
  vm_admin_username       = "punituser"
  vm_password             = "Punitojha07"
  vm_image_publisher      = "Canonical"
  vm_image_offer          = "0001-com-ubuntu-server-jammy"
  vm_image_sku            = "22_04-lts"
  vm_version              = "latest"
  data_subnet_name        = "mp-subnet"
  data_vnet_name          = "mp-vnet"
  data_rg_name            = "mp-rg"
  data_pip_name           = "mp-pip"
  data_pip_rg_name        = "mp-rg"
}