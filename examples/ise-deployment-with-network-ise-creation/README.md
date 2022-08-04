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
| terraform | >= 0.13.1 |
| aws | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.0 |

