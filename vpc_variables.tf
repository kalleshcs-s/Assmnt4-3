variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
  validation {
    condition     = can(cidrhost(var.vpc_cidr, 0))
    error_message = "Invalid CIDR provided."
  }
}

variable "subnet_cidrs" {
  type        = list(string)
  description = "List of subnet CIDRs"
}
