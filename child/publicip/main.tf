resource "azurerm_public_ip" "PublicIP" {
    name                = "myPublicIP"
    location            = azurerm_resource_group.ResourceGroup.location
    resource_group_name = azurerm_resource_group.ResourceGroup.name
    allocation_method   = "Static"
    sku                 = "Standard"

}