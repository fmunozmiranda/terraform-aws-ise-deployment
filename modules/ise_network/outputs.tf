output "subnet_id" {
  value       = aws_subnet.ise_vpc_subnet.id
  description = "AWS Subnet ID"
}

output "security_group_id" {
  value       = aws_security_group.ise_security_group.id
  description = "AWS Security Group ID"
}


