module "vpc" {
  source   = "./vpc"
  name     = "dev"
  vpc_cidr = "10.0.0.0/16"
  subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  azs      = ["us-east-1a", "us-east-1b"]
  env      = "dev"
}

module "ec2" {
  source          = "./ec2"
  name            = "dev"
  ami             = "ami-052cef05d01020f1d"
  instance_type   = "t2.micro"
  subnet_id       = module.vpc.subnet_ids[0]
  security_groups = []
  message         = "Hello from DEV EC2"
}
