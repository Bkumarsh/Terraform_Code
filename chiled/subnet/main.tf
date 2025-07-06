resource "azurerm_subnet" "subnet" {
    name = var.subnet_name
    resource_group_name = azurerm_resource_group.ResourceGroup.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = [var.subnet_address_prefix]
}