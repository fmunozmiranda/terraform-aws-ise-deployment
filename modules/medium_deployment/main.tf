
resource "aws_instance" "ise-pan-mnt" {
  ami                    = var.aws_ise_ami
  instance_type          = var.aws_instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  user_data              = format("hostname=%s-server-pan-mnt-%s\nprimarynameserver=%s\ndnsdomain=%s\nntpserver=%s\ntimezone=%s\nusername=%s\npassword=%s", var.ise_base_hostname, count.index + 1, var.ise_dns_server, var.ise_domain, var.ise_ntp_server, var.ise_timezone, var.ise_username, var.ise_password)
  count                  = 2
  associate_public_ip_address= true
  tags = {
    Name = format("%s-server-pan-mnt-%s", var.ise_base_hostname, count.index + 1)
  }
}

resource "aws_instance" "ise-psn" {
  ami                    = var.aws_ise_ami
  instance_type          = var.aws_instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  user_data              = format("hostname=%s-server-psn-%s\nprimarynameserver=%s\ndnsdomain=%s\nntpserver=%s\ntimezone=%s\nusername=%s\npassword=%s", var.ise_base_hostname, count.index + 1, var.ise_dns_server, var.ise_domain, var.ise_ntp_server, var.ise_timezone, var.ise_username, var.ise_password)
  count                  = var.ise_psn_instances
  associate_public_ip_address= true
  tags = {
    Name = format("%s-server-psn-%s", var.ise_base_hostname, count.index + 1)
  }
}
