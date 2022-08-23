resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = tls_private_key.this.public_key_openssh

  tags = {
    Name = "${var.app_name}-keypair"
    environment  = var.app_env
    appname = var.app_name
    appid = var.app_id
  }  
}

