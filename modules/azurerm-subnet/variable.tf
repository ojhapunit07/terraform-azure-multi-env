variable "subnet_name" {
  description = "subnet-name"
  type = string
}
variable "subnet_resource_group_name" {
  description = "subnet-rg_name"
  type = string
}
variable "subnet_virtual_network_name" {
  description = "subnet-vnet_name"
  type = string
}
variable "subnet_address_prefixes" {
  description = "subnet-address_prifixes"
  type = list(string)
}