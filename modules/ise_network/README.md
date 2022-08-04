# AWS ISE Network Terraform module

Terraform module which creates an ISE Network in AWS.

## Usage

```hcl



module "ise-deployment_large_deployment" {
  source  = "fmunozmiranda/ise-deployment/aws//modules/large_deployment"
  version = "1.0.11"
  # insert the 6 required variables here
}



```

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.1 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

## Modules

None.

## Resources

| Name | Type |
|------|------|
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws_vpc_name | AWS VPC name | `string` | - | yes |
| aws_vpc_cidr | ISE VPC CIDR | `string` | - | yes |
| aws_subnet_name| AWS Subnet name | `string` | - | yes |
| aws_subnet_cidr  | AWS Subnet CIDR | `string` | - | yes |
| aws_security_group_name | AWS Security Group name | `string` | - | yes |
| aws_public_access_cidr  | AWS Public Access CIDR | `string` | - | yes |


## Outputs

None


## Authors



## License

Apache 2 Licensed. See [LICENSE]() for full details.
