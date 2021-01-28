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
| custom\_tags | Custom tags that will be merged with the default tags. | `map(string)` | `{}` | no |
| dns\_servers | List of IP addresses of DNS servers | `list(string)` | `[]` | no |
| location | Azure region to use | `string` | n/a | yes |
| name | The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network. | `string` | n/a | yes |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| tags | Tags to be applied to the created resource. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| vnet\_cidr | The address space that is used by the virtual network | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | Virtual network generated id |
| location | Virtual network location |
| name | Virtual network name |
| network-space | Virtual network space |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
