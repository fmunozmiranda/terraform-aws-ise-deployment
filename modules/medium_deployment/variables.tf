variable "key_pair_name" {
  description = "SSH Key Pair Name"
  type        = string
  default     = "ISE"
}

variable "subnet_id" {
  description = "AWS Subnet ID"
  type        = string
}

variable "security_group_id" {
  description = "AWS Security Group ID"
  type        = string
}

variable "aws_instance_type" {
  description = "AWS Instance type"
  type        = string
}

variable "aws_ise_ami" {
  description = "ISE AWS AMI ID"
  validation {
    condition     = length(var.aws_ise_ami) > 4 && substr(var.aws_ise_ami, 0, 4) == "ami-"
    error_message = "The aws_ise_ami value must be a valid AMI id, starting with \"ami-\"."
  }
  type = string
}

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

variable "ise_psn_instances" {
  description = "ISE PSN Instances"
  type        = number
}
