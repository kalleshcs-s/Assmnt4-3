data "templatefile" "userdata" {
  template = var.user_data_template
  vars = {
    env     = var.env
    message = "EC2 created using modules"
  }
}

resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  user_data     = data.templatefile.userdata.rendered

  tags = {
    Name = "${var.env}-module-ec2"
  }
}
