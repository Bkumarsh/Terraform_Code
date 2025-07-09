variable "resource_group_name" {}
variable "resource_group_location" {}
variable "vnet_name" {}
variable "vnet_address_space" {}
variable "location" {}
variable "subnet_name" {}
variable "subnet_address_prefix" {}
variable "linux_virtual_machine_name" {}
variable "network_interface_card_name" {}

variable "vm_config_map" {
  type = map(object({
    name = string
    size = string
  }))
}

