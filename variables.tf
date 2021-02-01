variable "vnet_name" {
  description = "The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to be imported."
  type        = string
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used by the virtual network. Example: [\"10.0.1.0/22\"]"
}

variable "dns_servers" {
  description = "The DNS servers to be used with vNet. If no values specified, this defaults to Azure DNS."
  type        = list(string)
  default     = []
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet. Example: [\"10.0.1.0/24\", \"10.0.2.0/24\", \"10.0.3.0/24\"]"
  type        = list(string)
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet. Example: [\"subnet1\", \"subnet2\", \"subnet3\"]"
  type        = list(string)
}

variable "subnet_service_endpoints" {
  description = "A map of subnet name to service endpoints to add to the subnet."
  type        = map(any)
  default     = {}
}

variable "nsg_ids" {
  description = "A map of subnet name to Network Security Group IDs"
  type        = map(string)
  default     = {}
}

variable "route_tables_ids" {
  description = "A map of subnet name to Route table ids"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags to be applied to the created resource."
  type        = map(string)
  default = {
    ManagedBy = "Terraform"
  }
}

variable "custom_tags" {
  description = "Custom tags that will be merged with the default tags."
  type        = map(string)
  default     = {}
}
