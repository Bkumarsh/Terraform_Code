resource "azurerm_network_interface" "nic" {
    name = var.network_interface_card_name
    location            = azurerm_resource_group.ResourceGroup.location
    resource_group_name = azurerm_resource_group.ResourceGroup.name
    
    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.subnet.id
        private_ip_address_allocation = "Dynamic"
    }
  
}

resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.linux_virtual_machine_name
  resource_group_name = azurerm_resource_group.ResourceGroup.name
  location            = azurerm_resource_group.ResourceGroup.location
  size                = "Standard_B1s"
  admin_username      = "azureuser"
  admin_password = "Password1234!" # Ensure to use a secure password or consider using SSH keys instead
  disable_password_authentication = "false"
    computer_name      = "myVM"

  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    name                 = "example-osdisk"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
