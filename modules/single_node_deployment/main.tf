

resource "aws_instance" "ise" {
  ami                    = var.aws_ise_ami
  instance_type          = var.aws_instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  user_data_base64              = base64encode("hostname=${ lower(var.ise_base_hostname) }-server\nprimarynameserver=${var.ise_dns_server}\ndnsdomain=${var.ise_domain}\nntpserver=${var.ise_ntp_server}\ntimezone=${var.ise_timezone}\nusername=${var.ise_username}\npassword=${var.ise_password}")
  count                  = 1
  associate_public_ip_address= true
  # region = var.aws_region
  tags = {
    Name = format("%s-server-%s", var.ise_base_hostname, count.index + 1)
  }
}
