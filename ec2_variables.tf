variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
  description = "Subnet in which EC2 will launch"
}

variable "env" {
  type = string
}

variable "user_data_template" {
  type        = string
  description = "Path to user data template"
}
