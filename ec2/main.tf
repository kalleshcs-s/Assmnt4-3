
resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.security_groups

  user_data = templatefile("${path.module}/user_data.sh.tpl", {
    message = var.message
  })

  tags = {
    Name = var.name
  }
}
