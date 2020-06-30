resource "aws_key_pair" "keypair" {
  #key_name   = "${var.app_name}-keypair-${var.app_color}"
  key_name   = "${var.app_name}-keypair"
  #public_key = file(var.path_to_public_key)
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWXFP2SikNn0XwWBD7gBByIDYhxUdCKgoPUYPwLZF+ttdXz+EBm/C6gtUxFz6JMSrwYDstYzK9q1eF/jHCxzC76NCrGZVJtpkzlQ6MCQuE7IGKInsrD6zD4nHzHgJ8+njlkjJcEHAeIla9AiYyHwT1HuKFBa2nP/Mw4pN/c18BzN6VfJOO5Jhq7GYzH1s3UQagZt3fePHFNE76ImYhboTvt+PQPGF8wT+yp6/fCJhBOTwePeGWJ5MvQel3tX2K4xU9QByWGxQ6QeKDZipidNrJB7xFWMVG/G5t5t4/iR8gX0aZApjj6v50JoUlYYI8NshLc8pg9hC9ZZ8ZocduS1CcBpE9X7X8gMlqTOunQglU0aFLW4us/8pRJOlyYsMibfD51EnOySnDPFSYFC24D7nz5AVc191NRa0MdVjqZdu2wdTgaDmto9hLEvgLzedd4BBs3m4Xwtu7ntDVSl0MABfUsMkqGsr/lvuXsW4cIQoAJRB9PMn1y5++mT4XdxQTQms= root@ip-172-31-86-252.ec2.internal"
  
  lifecycle {
    ignore_changes = [public_key]
  }

  tags = {
    #Name = "${var.app_name}-keypair-${var.app_color}"
    Name = "${var.app_name}-keypair"
    environment  = var.app_env
    appname = var.app_name
    csiappid = var.app_csi
    #appcolor = var.app_color
  }

}