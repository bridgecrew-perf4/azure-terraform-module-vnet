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
| location | Location where the virtual network will be created! | `string` | n/a | yes |
| name | The name (should follow consistent naming convention) which will be used for the name generation of this Virtual Network. | `string` | n/a | yes |
| resource\_group\_name | Name of the resource group where the virtual network will be created. | `string` | n/a | yes |
| tags | Tags to be applied to the created resource. | `map(string)` | <pre>{<br>  "ManagedBy": "Terraform"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| address\_space | The address space of the newly created vNet |
| location | The location of the newly created vNet |
| name | The Name of the newly created vNet |
| vnet\_id | The id of the newly created vNet |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
