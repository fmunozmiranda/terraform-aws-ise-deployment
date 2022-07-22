# Create a VPC
resource "aws_vpc" "ise_vpc" {
  cidr_block = var.aws_vpc_cidr
}

# Create subnet for ISE servers
resource "aws_subnet" "ise_vpc_subnet" {
  vpc_id                  = aws_vpc.ise_vpc.id
  cidr_block              = var.aws_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = var.aws_subnet_name
  }
}

# Create ISE security group
resource "aws_security_group" "ise_security_group" {
  name        = var.aws_security_group_name
  description = "ISE Security Group"
  vpc_id      = aws_vpc.ise_vpc.id
  ingress {
    protocol    = "tcp"
    from_port   = 443
    to_port     = 443
    cidr_blocks = [var.aws_public_access_cidr]
    description = "Access to HTTPS"
  }
  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = [var.aws_public_access_cidr]
    description = "Access to HTTPS"
  }
  ingress {
    protocol    = "tcp"
    from_port   = 0
    to_port     = 65535
    cidr_blocks = [var.aws_public_access_cidr]
    description = "Allow everything TCP"
  }
  ingress {
    protocol    = "udp"
    from_port   = 0
    to_port     = 65535
    cidr_blocks = [var.aws_public_access_cidr]
    description = "Allow everything UDP"
  }
  ingress {
    protocol    = "icmp"
    from_port   = 1
    to_port     = 1
    cidr_blocks = [var.aws_public_access_cidr]
  }
}
