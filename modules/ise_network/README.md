# AWS ISE Network Terraform module

Terraform module which creates an ISE Network in AWS.

## Usage

```hcl


module "ise-deployment_ise_network" {
  source  = "fmunozmiranda/ise-deployment/aws//modules/ise_network"
  version = "1.0.4"
  # insert the 6 required variables here
}



```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

## Modules

None.

## Resources

| Name | Type |
|------|------|
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | resource |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | resource |

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
