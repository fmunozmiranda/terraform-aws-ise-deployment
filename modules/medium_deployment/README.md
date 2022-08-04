# AWS ISE Medium Deployment Terraform module

Terraform module which creates an ISE Medium Deployment in AWS.

## Usage

```hcl



module "ise-deployment_medium_deployment" {
  source  = "fmunozmiranda/ise-deployment/aws//modules/medium_deployment"
  version = "1.0.11"
  # insert the 12 required variables here
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
| [aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
|key_pair_name| Key Pair Name | `string` | - | yes |
|subnet_id| Subnet  | `string` | - | yes |
|security_group_id| AWS Security Group ID | `string` | - | yes |
|aws_ise_ami| ISE AWS AMI ID | `string` | - | yes |
|ise_base_hostname| ISE Server Base Hostname | `string` | - | yes |
|ise_username| ISE Administrator Username |  `string` | - | yes |
|ise_password| ISE Administrator Password |  `string` | - | yes |
|ise_ntp_server| ISE NTP Server |`string` | - | yes |
|ise_dns_server| ISE DNS Server |`string` | - | yes |
|ise_domain| ISE Domain |`string` | - | yes |
|ise_timezone| ISE Timezone |  `string` | - | yes |
|aws_instance_type| AWS Instance Type | `string` | - | yes |
|ise_psn_instances| Ise PSN Instances | `string` | - | yes |

## Outputs

None


## Authors



## License

Apache 2 Licensed. See [LICENSE]() for full details.
