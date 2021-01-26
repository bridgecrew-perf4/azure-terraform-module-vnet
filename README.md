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
| naming\_suffix | The naming suffix which will be used for the name generation of this Virtual Network. | `list(string)` | n/a | yes |
| resource\_group\_name | Resource group name | `string` | n/a | yes |
| tags | Tags to be applied to the created resource. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |
| vnet\_cidr | The address space that is used by the virtual network | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| virtual\_network\_id | Virtual network generated id |
| virtual\_network\_location | Virtual network location |
| virtual\_network\_name | Virtual network name |
| virtual\_network\_space | Virtual network space |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
