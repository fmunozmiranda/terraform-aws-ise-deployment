# AWS ISE Deployment Terraform module

Terraform module which creates an ISE Deployment in AWS.

## Usage

```hcl


module "ise-deployment" {
  source  = "fmunozmiranda/ise-deployment/aws"
  version = "1.0.0"
  # insert the 19 required variables here
}


```

## Examples

<!-- - [SQS queues with server-side encryption (SSE) using KMS and without SSE](https://github.com/terraform-aws-modules/terraform-aws-sqs/tree/master/examples/complete) -->


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.63 |

## Modules

| Name | Type |
|------|------|
| [ise_network](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | internal |
| [large_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | internal |
| [medium_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | internal |
| [small_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | internal |
| [single_deployment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | internal |

## Resources

| Name | Type |
|------|------|
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | data source |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/arn) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws_instance_type | AWS Instance type | `string` | - | yes |
| aws_ise_ami | ISE AWS AMI ID | `string` | - | yes |
| aws_public_access_cidr| CIDR from where access should be permitted to the ISE server | `string` | - | yes |
| aws_region  | AWS Region | `string` | - | yes |
| aws_subnet_cidr | AWS Subnet CIDR | `string` | - | yes |
| aws_subnet_name  | AWS Subnet Name | `string` | - | yes |
| aws_vpc_cidr  | AWS VPC CIDR | `string` | - | yes |
| aws_vpc_name | AWS VPC Name | `string` | - | yes |
| aws_create_network | Define if terraform needs to create the VPC network and subnet| `boolean` | `true` | no |
| aws_security_group_name | AWS Security Group Name | `string` | - |yes |
| ise_base_hostname | ISE Server Base Hostname | `string` | - | yes |
| ise_dns_server | ISE Server DNS | `string` | - | yes |
| ise_domain  | ISE Server Domain | `string` | - | yes |
| ise_large_deployment | ISE Large Deployment `1` to create it. | `number` | `0` | no |
| ise_medium_deployment | ISE Medium Deployment `1` to create it. | `number` | `0` | no |
| ise_ntp_server  | ISE Server NTP | `string` | - | yes |
| ise_password  | ISE Administrator Password | `string` | - | yes |
| ise_psn_instances           | ISE PSN Instances determine number of nodes of PSN are going to be created. | `number` | `0` | no |
| ise_single_node_deployment  | ISE Single Deployment `1` to create it. | `number` | `0` | no |
| ise_small_deployment        | ISE Small Deployment `1` to create it. | `number` | `0` | no |
| ise_timezone                | ISE Server Timezone | `string` | - | yes |
| ise_username                | ISE Administrator Username | `string` | - | yes |

## Outputs

None


## Authors



## License

Apache 2 Licensed. See [LICENSE]() for full details.
