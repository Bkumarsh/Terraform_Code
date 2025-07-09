variable "network_interface_card_name" {
  description = "value for azurerm_network_interface"
    type        = string
    default = "myNIC"
}

variable "linux_virtual_machine_name" {
  description = "value for azurerm_linux_virtual_machine"
  type        = string
  default = "myVM"
}