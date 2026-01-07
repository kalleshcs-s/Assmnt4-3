variable "name" {
  type        = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "Invalid CIDR block"
  }
}

variable "subnets" {
  type        = list(string)
  description = "Subnet CIDRs"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
}

variable "env" {
  type           = string
  description    = "environment"
}
