variable "nic_name" {
  description = "nic-name"
  type = string
}
variable "nic_location" {
  description = "nic-location"
  type = string
}
variable "nic_resource_group_name" {
  description = "nic-resource-group-name"
  type = string
}
variable "data_subnet_name" {
  description = "data-block for subnet id"
  type = string
  }
  variable "data_vnet_name" {
  description = "data-block for subnet id"
  type = string
  }
  variable "data_rg_name" {
  description = "data-block subnet id"
  type = string
  }
  variable "data_pip_name" {
    description = "data block using for pip id"
    type = string
  }
  variable "data_pip_rg_name" {
    description = "data block using for pip id"
    type = string
  }
  variable "vm_name" {
    description = "vm name"
    type = string
  }
  variable "vm_rg_name" {
    description = "vm rg name"
    type = string
  }
  variable "vm_location" {
    description = "vm location"
    type = string
  }
  variable "vm_size" {
    description = "vm size"
    type = string
  }
  variable "vm_admin_username" {
    description = "vm admin user name"
    type = string
  }
  variable "vm_password" {
    description = "value of password"
    type = string
  }
  variable "vm_image_publisher" {
    description = "vm image"
    type = string
  }
  variable "vm_image_offer" {
    description = "vm image offer"
    type = string
  }
  variable "vm_image_sku" {
    description = "vm image sku"
    type = string
  }
  variable "vm_version" {
    description = "vm image version"
    type = string
  }