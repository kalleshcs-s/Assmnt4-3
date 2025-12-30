variable "ami" {
  type        = string
  description = "AMI ID"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "subnet_id" {
  type = string
}

variable "instance_name" {
  type = string
}
