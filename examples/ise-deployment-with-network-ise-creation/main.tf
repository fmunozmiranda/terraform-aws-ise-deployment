
module "ise-deployment" {
  source  = "fmunozmiranda/ise-deployment/aws"
  version = "1.0.11"
  # insert the 17 required variables here
  ise_base_hostname= var.ise_base_hostname
  ise_username = var.ise_username
  aws_instance_type= var.aws_instance_type
  aws_ise_ami= var.aws_ise_ami
  aws_keypair_name= var.aws_keypair_name
  aws_public_access_cidr= var.aws_public_access_cidr
  aws_region= var.aws_region
  aws_security_group_name= var.aws_security_group_name
  aws_subnet_cidr= var.aws_subnet_cidr
  aws_subnet_name= var.aws_subnet_name
  aws_vpc_cidr=var.aws_vpc_cidr
  aws_vpc_name= var.aws_vpc_name
  ise_dns_server= var.ise_dns_server
  ise_domain= var.ise_domain
  ise_password= var.ise_password
  ise_ntp_server= var.ise_ntp_server
  ise_small_deployment= var.ise_small_deployment
  ise_timezone= var.ise_timezone
  aws_create_network=var.aws_create_network
}

