resource "aws_vpc" "this" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = var.name
  }
}

resource "aws_subnet" "this" {
  count                   = length(var.subnets)
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.subnets[count.index]
  availability_zone       = var.azs[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.name}-subnet-${count.index}"
  }
}
