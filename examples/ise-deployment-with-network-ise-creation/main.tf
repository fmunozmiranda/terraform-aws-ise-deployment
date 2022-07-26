
module "ise-deployment" {
  source  = "fmunozmiranda/ise-deployment/aws"
  version = "1.0.12"
  # insert the 17 required variables here
  aws_instance_type          = var.aws_instance_type          
  aws_ise_ami                = var.aws_ise_ami                
  aws_keypair_name           = var.aws_keypair_name           
  aws_public_access_cidr     = var.aws_public_access_cidr     
  aws_region                 = var.aws_region                 
  aws_subnet_cidr            = var.aws_subnet_cidr            
  aws_subnet_name            = var.aws_subnet_name            
  aws_vpc_cidr               = var.aws_vpc_cidr               
  aws_vpc_name               = var.aws_vpc_name               
  aws_create_network         = var.aws_create_network         
  aws_security_group_id    = var.aws_security_group_id    
  aws_security_group_name    = var.aws_security_group_name    
  ise_base_hostname          = var.ise_base_hostname          
  ise_dns_server             = var.ise_dns_server             
  ise_domain                 = var.ise_domain                 
  ise_large_deployment       = var.ise_large_deployment       
  ise_medium_deployment      = var.ise_medium_deployment      
  ise_ntp_server             = var.ise_ntp_server             
  ise_password               = var.ise_password               
  ise_psn_instances          = var.ise_psn_instances          
  ise_single_node_deployment = var.ise_single_node_deployment 
  ise_small_deployment       = var.ise_small_deployment       
  ise_timezone               = var.ise_timezone               
  ise_username               = var.ise_username               
}

