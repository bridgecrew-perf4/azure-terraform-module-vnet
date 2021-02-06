variable "name" {
  description = "The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group where the virtual network will be created."
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
