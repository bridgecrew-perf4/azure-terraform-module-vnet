provider "azurerm" {
  features {}
}

resource "random_id" "rg_name" {
  byte_length = 8
}

resource "random_id" "vnet_name" {
  byte_length = 8
}

resource "azurerm_resource_group" "example_rg" {
  name     = "example-${random_id.rg_name.hex}-rg"
  location = "northeurope"
}

module "vnet" {
  source = "../"

  name                = "example-${random_id.rg_name.hex}-vnet"
  location            = "northeurope"
  resource_group_name = azurerm_resource_group.example_rg.name
  vnet_cidr           = ["10.10.10.0/24"]
}

output "vnet_name" {
  value = module.vnet.name
}
