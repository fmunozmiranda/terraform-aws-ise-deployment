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

variable "aws_subnet_cidr" {
  description = "AWS Subnet CIDR"
  type        = string
}

variable "aws_security_group_name" {
  description = "AWS Security Group Name"
  type        = string
}

variable "aws_public_access_cidr" {
  description = "CIDR from where access should be permitted to the ISE server"
  type        = string
}
