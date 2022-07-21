variable "ise_base_hostname" {
  description = "ISE Server Base Hostname"
  type        = string
}

variable "ise_username" {
  description = "ISE Administrator Username"
  type        = string
}


variable "ise_password" {
  description = "ISE Administrator Password"
  type        = string
  sensitive   = true
}

variable "ise_ntp_server" {
  description = "ISE Server NTP"
  type        = string
}

variable "ise_dns_server" {
  description = "ISE Server DNS"
  type        = string
}

variable "ise_domain" {
  description = "ISE Server Domain"
  type        = string
}

variable "ise_timezone" {
  description = "ISE Server Timezone"
  type        = string
}

variable "aws_ise_ami" {
  description = "ISE AWS AMI ID"
  validation {
    condition     = length(var.aws_ise_ami) > 4 && substr(var.aws_ise_ami, 0, 4) == "ami-"
    error_message = "The aws_ise_ami value must be a valid AMI id, starting with \"ami-\"."
  }
  type    = string
}

variable "aws_vpc_name" {
  description = "AWS VPC Name"
  type        = string
}

variable "aws_vpc_cidr" {
  description = "AWS VPC CIDR"
  type        = string
}

variable "aws_subnet_name" {
  description = "AWS Subnet Name"
  type        = string
}

variable "aws_security_group_name" {
  description = "AWS Security Group Name"
  type        = string
}

variable "aws_subnet_cidr" {
  description = "AWS Subnet CIDR"
  type        = string
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "aws_public_access_cidr" {
  description = "CIDR from where access should be permitted to the ISE server"
  type        = string
}

variable "aws_create_network" {
  description = "Define if terraform needs to create the VPC network and subnet"
  type        = bool
  default = true
}

variable "aws_keypair_name" {
  description = "AWS SSH key pair"
  type        = string
}

variable "aws_instance_type" {
  description = "AWS Instance type"
  type        = string
}

variable "ise_single_node_deployment" {
  description = "ISE Single Node Deployment"
  type        = number
}

variable "ise_small_deployment" {
  description = "ISE Small Deployment"
  type        = number
}

variable "ise_medium_deployment" {
  description = "ISE Medium Deployment"
  type        = number
  default = 0
}

variable "ise_large_deployment" {
  description = "ISE Large Deployment"
  type        = number
  default = 0
}

variable "ise_psn_instances" {
  description = "ISE PSN Instances"
  type        = number
  default = 0
}
