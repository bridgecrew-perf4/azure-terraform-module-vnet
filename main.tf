locals {
  vnet_name = module.naming.virtual_network.name
}

module "naming" {
  source = "github.com/k0kazpt/terraform-azurerm-modules//modules/_external/terraform-azurerm-naming"
  suffix = var.naming_suffix
}

resource "azurerm_virtual_network" "main_vnet" {
  name                = local.vnet_name
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_cidr
  location            = var.location

  dns_servers = var.dns_servers

  tags = merge(var.tags, var.custom_tags)
}
