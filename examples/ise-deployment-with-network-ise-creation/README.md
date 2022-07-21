# ISE Deployment with ISE Network creation

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan -var-file "aws.tfvars"
$ terraform apply -var-file "aws.tfvars"
```

Note that this example may create resources which cost money. Run `terraform destroy -var-file "aws.tfvars"` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.0 |

