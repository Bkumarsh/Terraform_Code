# resource "azurerm_key_vault" "keyvault" {
#     name                = var.azurerm_key_vault_name
#     location            = azureresource_group.resource_group.location
#     resource_group_name = azureresource_group.resource_group.name
#     tenant_id           = data.azurerm_client_config.current.tenant_id
#     sku_name            = "standard"
    
#     access_policy {
#         tenant_id = data.azurerm_client_config.current.tenant_id
#         object_id = data.azurerm_client_config.current.object_id
    
#         key_permissions = [
#         "Get",
#         "List",
#         "Create",
#         "Delete",
#         "Update",
#         "Purge",
#         "Recover",
#         ]
    
#         secret_permissions = [
#         "Get",
#         "List",
#         "Set",
#         "Delete",
#         "Purge",
#         "Recover",
#         ]
#     }
  
# }