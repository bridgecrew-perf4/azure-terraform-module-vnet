output "id" {
  description = "Virtual network generated id"
  value       = azurerm_virtual_network.main_vnet.id
}

output "location" {
  description = "Virtual network location"
  value       = azurerm_virtual_network.main_vnet.location
}

output "name" {
  description = "Virtual network name"
  value       = azurerm_virtual_network.main_vnet.name
}

output "network-space" {
  description = "Virtual network space"
  value       = azurerm_virtual_network.main_vnet.address_space
}
