provider "azurerm" {
  features {}
}

variable "location" {}

resource "random_id" "rg_name" {
  byte_length = 8
}

resource "azurerm_resource_group" "test" {
  name     = "test-${random_id.rg_name.hex}-rg"
  location = var.location
}

module "vnet" {
  source              = "../"
  name                = "test-${random_id.rg_name.hex}-vnet"
  resource_group_name = azurerm_resource_group.test.name
  location            = azurerm_resource_group.test.location
  address_space       = ["10.0.0.0/22"]
  tags = {
    "example_tag" = "example_tag_value"
  }
  custom_tags = {
    "example_custom_tag" = "example_custom_tag_value"
  }

  depends_on = [azurerm_resource_group.test]
}

output "test_vnet_id" {
  value = module.vnet.vnet_id
}
