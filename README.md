# Azure Terraform Virtual Network Module

[//]: # (Do not make changes below this line)
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | > 0.12.26 |
| azurerm | >= 1.32 |

## Providers

| Name | Version |
|------|---------|
| azurerm | >= 1.32 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| address\_space | The address space that is used by the virtual network. Example: ["10.0.1.0/22"] | `list(string)` | n/a | yes |
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| dns\_servers | The DNS servers to be used with vNet. If no values specified, this defaults to Azure DNS. | `list(string)` | `[]` | no |
| nsg\_ids | A map of subnet name to Network Security Group IDs | `map(string)` | `{}` | no |
| resource\_group\_name | Name of the resource group to be imported. | `string` | n/a | yes |
| route\_tables\_ids | A map of subnet name to Route table ids | `map(string)` | `{}` | no |
| subnet\_names | A list of public subnets inside the vNet. Example: ["subnet1", "subnet2", "subnet3"] | `list(string)` | n/a | yes |
| subnet\_prefixes | The address prefix to use for the subnet. Example: ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] | `list(string)` | n/a | yes |
| subnet\_service\_endpoints | A map of subnet name to service endpoints to add to the subnet. | `map(any)` | `{}` | no |
| tags | Tags to be applied to the created resource. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| vnet\_name | The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| address\_space | The address space of the newly created vNet |
| location | The location of the newly created vNet |
| name | The Name of the newly created vNet |
| subnet\_ids | The ids of subnets created inside the new vNet |
| vnet\_id | The id of the newly created vNet |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
