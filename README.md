# terraform-vpc
Terraform module to manage VPCs

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_internet_gateway.vpc_igw](https://registry.terraform.io/providers/hashicorp/aws/5.29.0/docs/resources/internet_gateway) | resource |
| [aws_vpc.main_vpc](https://registry.terraform.io/providers/hashicorp/aws/5.29.0/docs/resources/vpc) | resource |
| [aws_vpc_dhcp_options.vpc](https://registry.terraform.io/providers/hashicorp/aws/5.29.0/docs/resources/vpc_dhcp_options) | resource |
| [aws_vpc_dhcp_options_association.vpc_dhcp](https://registry.terraform.io/providers/hashicorp/aws/5.29.0/docs/resources/vpc_dhcp_options_association) | resource |
| [aws_vpn_gateway.vpn_gw](https://registry.terraform.io/providers/hashicorp/aws/5.29.0/docs/resources/vpn_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | n/a | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | n/a |
| <a name="output_vpc_dhcp_options_id"></a> [vpc\_dhcp\_options\_id](#output\_vpc\_dhcp\_options\_id) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
| <a name="output_vpc_igw_id"></a> [vpc\_igw\_id](#output\_vpc\_igw\_id) | n/a |
| <a name="output_vpn_gateway_id"></a> [vpn\_gateway\_id](#output\_vpn\_gateway\_id) | n/a |
<!-- END_TF_DOCS -->