resource_group_name         = "myResourceGroup"
resource_group_location     = "East US"
vnet_name                   = "myVNet"
vnet_address_space          = "10.0.2.1/16"
location                    = "East US"
subnet_name                 = "mySubnet"
subnet_address_prefix       = "10.0.0.1/24"
network_interface_card_name = "myNIC"
linux_virtual_machine_name  = "myLinuxVM"

vm_config_map = {
  vm1 = {
    name = "frontend-vm"
    size = "Standard_B1s"
  }
  vm2 = {
    name = "backend-vm"
    size = "Standard_B1ms"
  }
  vm3 = {
    name = "db-vm"
    size = "Standard_B2s"
  }
}
