variable "location" {
  description = "Azure region to use"
  type        = string
}

variable "name" {
  description = "The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network."
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "vnet_cidr" {
  description = "The address space that is used by the virtual network"
  type        = list(string)
}

variable "dns_servers" {
  description = "List of IP addresses of DNS servers"
  type        = list(string)
  default     = []
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
