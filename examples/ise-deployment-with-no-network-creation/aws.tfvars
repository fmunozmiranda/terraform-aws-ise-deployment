aws_instance_type          = "c5.4xlarge"
aws_ise_ami                = "ami-0a8b4f863885c3372"
aws_keypair_name           = "ise-testing"
aws_public_access_cidr     = "" //In this we can let this as empty string
aws_region                 = "us-west-2"
aws_subnet_cidr            = "" //In this we can let this as empty string
aws_subnet_name            = "ISE Subnet"
aws_vpc_cidr               = "" //In this we can let this as empty string
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
