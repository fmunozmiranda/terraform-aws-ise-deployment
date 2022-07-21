
resource "aws_instance" "ise" {
  ami                    = var.aws_ise_ami
  instance_type          = var.aws_instance_type
  key_name               = var.key_pair_name
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]
  user_data              = format("hostname=%s-server\nprimarynameserver=%s\ndnsdomain=%s\nntpserver=%s\ntimezone=%s\nusername=%s\npassword=%s", var.ise_base_hostname, var.ise_dns_server, var.ise_domain, var.ise_ntp_server, var.ise_timezone, var.ise_username, var.ise_password)
  count                  = 1
  tags = {
    Name = format("%s-server-%s", var.ise_base_hostname, count.index + 1)
  }
}
