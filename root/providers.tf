terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4f66054f-49b5-4a50-97d4-b19124d09600"
}


module "resourcegroup" {
  source                  = "../child/resourcegroup"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "vnet" {
  source               = "../child/vnet"
  virtual_network_name = var.vnet_name
  address_space        = var.vnet_address_space
  location             = var.location
  resource_group_name  = var.resource_group_name

}

module "subnet" {
  source                = "../child/subnet"
  subnet_name           = var.subnet_name
  subnet_address_prefix = var.subnet_address_prefix
  resource_group_name   = var.resource_group_name
  vnet_name             = var.vnet_name
  mySubnet              = var.subnet_name

}

module "vm" {
  for_each                    = var.vm_config_map
  source                      = "../child/vm"
  network_interface_card_name = var.network_interface_card_name
  linux_virtual_machine_name  = var.linux_virtual_machine_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  subnet_id                   = module.subnet.subnet_id
  vm_size                     = each.value.size
}