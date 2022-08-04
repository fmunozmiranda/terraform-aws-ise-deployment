# AWS ISE Deployment Terraform module

Terraform module which creates an ISE Deployment in AWS.

## Usage

```hcl


module "ise-deployment" {
  source  = "fmunozmiranda/ise-deployment/aws"
  version = "1.0.11"
  aws_instance_type          = "c5.4xlarge"
  aws_ise_ami                = "ami-0ffd69a117dbcbb9e"
  aws_keypair_name           = "ise-key-test"
  aws_public_access_cidr     = "0.0.0.0/0"
  aws_region                 = "us-west-2"
  aws_subnet_cidr            = "10.10.10.0/24"
  aws_subnet_name            = "ISE Subnet 2"
  aws_vpc_cidr               = "10.10.0.0/16"
  aws_vpc_name               = "ISE"
  aws_create_network         = false
  aws_security_group_name    = "ISE VPC SG Group"
  ise_base_hostname          = "ISE"
  ise_dns_server             = "208.67.220.220"
  ise_domain                 = "example.com"
  ise_ntp_server             = "10.10.10.1"
  ise_password               = "password"
  ise_small_deployment       = 1
  ise_timezone               = "America/Costa_Rica"
  ise_username               = "admin"
}


```

## Examples

<!-- - [SQS queues with server-side encryption (SSE) using KMS and without SSE](https://github.com/terraform-aws-modules/terraform-aws-sqs/tree/master/examples/complete) -->

- [ISE Deployment with Network ISE creation](https://github.com/fmunozmiranda/terraform-aws-ise-deployment/tree/main/examples/ise-deployment-with-network-ise-creation)
- [ISE Deployment without Network ISE creation](https://github.com/fmunozmiranda/terraform-aws-ise-deployment/tree/main/examples/ise-deployment-with-no-network-creation)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
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

| Name | Type |
|------|------|
| [ise_network](https://registry.terraform.io/modules/fmunozmiranda/ise-deployment/aws/1.0.7/submodules/ise_network) | internal |
| [large_deployment](https://registry.terraform.io/modules/fmunozmiranda/ise-deployment/aws/1.0.7/submodules/large_deployment) | internal |
| [medium_deployment](https://registry.terraform.io/modules/fmunozmiranda/ise-deployment/aws/1.0.7/submodules/medium_deployment) | internal |
| [small_deployment](https://registry.terraform.io/modules/fmunozmiranda/ise-deployment/aws/1.0.7/submodules/small_deployment) | internal |
| [single_deployment](https://registry.terraform.io/modules/fmunozmiranda/ise-deployment/aws/1.0.7/submodules/single_node_deployment) | internal |

## Resources

| Name | Type |
|------|------|
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) | data source |
| [aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |

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
| aws_security_group_id | AWS Security Group Id Required with no network creation | `string` | - |yes |
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

## Assumptions
- If you don't put `ise_psn_instances` inside the parameters when running a medium or large deployment, the psn nodes are skipped.
- The created SSH key is stored in the folder where the `main.tf` is executed.
- This module does not consider possible errors due to security rules in ISE that may prevent the execution of the deployment.
- If `aws_create_network` is not included, the default is create it.

## Authors



## License

Apache 2 Licensed. See [LICENSE]() for full details.
