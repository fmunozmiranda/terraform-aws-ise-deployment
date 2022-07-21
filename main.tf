terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = var.aws_region
}

# resource "tls_private_key" "ise_key_pair" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "ise_key_pair" {
#   key_name   = var.aws_keypair_name
#   public_key = tls_private_key.ise_key_pair.public_key_openssh
# }

module "ise_network" {
  source                  = "./modules/ise_network"
  aws_public_access_cidr  = var.aws_public_access_cidr
  aws_subnet_cidr         = var.aws_subnet_cidr
  aws_vpc_cidr            = var.aws_vpc_cidr
  aws_vpc_name            = var.aws_vpc_name
  aws_subnet_name         = var.aws_subnet_name
  aws_security_group_name = var.aws_security_group_name

  count = var.aws_create_network ? 1 : 0
}

data "aws_subnet" "ise_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.aws_subnet_name]
  }

  count = var.aws_create_network ? 0 : 1
}

data "aws_security_group" "ise_security_group" {
  filter {
    name   = "tag:Name"
    values = [var.aws_security_group_name]
  }

  count = var.aws_create_network ? 0 : 1
}

module "single_node_deployment" {
  source            = "./modules/single_node_deployment"
  count             = var.ise_single_node_deployment
  aws_instance_type = var.aws_instance_type
  aws_ise_ami       = var.aws_ise_ami
  ise_base_hostname = var.ise_base_hostname
  ise_dns_server    = var.ise_dns_server
  ise_domain        = var.ise_domain
  ise_ntp_server    = var.ise_ntp_server
  ise_password      = var.ise_password
  ise_timezone      = var.ise_timezone
  ise_username      = var.ise_username
  #key_pair_name     = aws_key_pair.ise_key_pair.key_name
  key_pair_name     = var.aws_keypair_name
  subnet_id         = var.aws_create_network ? module.ise_network[0].subnet_id : data.aws_subnet.ise_subnet[0].id
  security_group_id = var.aws_create_network ? module.ise_network[0].security_group_id : data.aws_security_group.ise_security_group[0].id
}

module "small_deployment" {
  source            = "./modules/small_deployment"
  count             = var.ise_small_deployment
  aws_instance_type = var.aws_instance_type
  aws_ise_ami       = var.aws_ise_ami
  ise_base_hostname = var.ise_base_hostname
  ise_dns_server    = var.ise_dns_server
  ise_domain        = var.ise_domain
  ise_ntp_server    = var.ise_ntp_server
  ise_password      = var.ise_password
  ise_timezone      = var.ise_timezone
  ise_username      = var.ise_username
  #key_pair_name     = aws_key_pair.ise_key_pair.key_name
  key_pair_name     = var.aws_keypair_name
  subnet_id         = var.aws_create_network ? module.ise_network[0].subnet_id : data.aws_subnet.ise_subnet[0].id
  security_group_id = var.aws_create_network ? module.ise_network[0].security_group_id : data.aws_security_group.ise_security_group[0].id
}

module "medium_deployment" {
  source            = "./modules/medium_deployment"
  count             = var.ise_medium_deployment
  aws_instance_type = var.aws_instance_type
  aws_ise_ami       = var.aws_ise_ami
  ise_base_hostname = var.ise_base_hostname
  ise_dns_server    = var.ise_dns_server
  ise_domain        = var.ise_domain
  ise_ntp_server    = var.ise_ntp_server
  ise_password      = var.ise_password
  ise_psn_instances = var.ise_psn_instances
  ise_timezone      = var.ise_timezone
  ise_username      = var.ise_username
  #key_pair_name     = aws_key_pair.ise_key_pair.key_name
  key_pair_name     = var.aws_keypair_name
  subnet_id         = var.aws_create_network ? module.ise_network[0].subnet_id : data.aws_subnet.ise_subnet[0].id
  security_group_id = var.aws_create_network ? module.ise_network[0].security_group_id : data.aws_security_group.ise_security_group[0].id

}

module "large_deployment" {
  source            = "./modules/large_deployment"
  count             = var.ise_large_deployment
  aws_instance_type = var.aws_instance_type
  aws_ise_ami       = var.aws_ise_ami
  ise_base_hostname = var.ise_base_hostname
  ise_dns_server    = var.ise_dns_server
  ise_domain        = var.ise_domain
  ise_ntp_server    = var.ise_ntp_server
  ise_password      = var.ise_password
  ise_psn_instances = var.ise_psn_instances
  ise_timezone      = var.ise_timezone
  ise_username      = var.ise_username
  #key_pair_name     = aws_key_pair.ise_key_pair.key_name
  key_pair_name     = var.aws_keypair_name
  subnet_id         = var.aws_create_network ? module.ise_network[0].subnet_id : data.aws_subnet.ise_subnet[0].id
  security_group_id = var.aws_create_network ? module.ise_network[0].security_group_id : data.aws_security_group.ise_security_group[0].id
}
