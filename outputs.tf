output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "name" {
  description = "The Name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_ids" {
  description = "The ids of subnets created inside the new vNet"
  value       = azurerm_subnet.subnet.*.id
}
