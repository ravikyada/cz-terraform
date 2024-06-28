
resource "aws_instance" "web" {
  ami           = var.ami_id # Amazon Linux 2 AMI
  instance_type = var.instance_type

  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.aws_security_group
  associate_public_ip_address = true
  key_name                    = var.key_name #we can dynamically generate Keypair using tls_private_key & aws_key_pair

  tags = {
    Name = "nginx-web-server"
  }
}

resource "aws_eip" "web_eip" {
  vpc      = true
  instance = aws_instance.web.id
}

