module "vpc" {
  source       = "./modules/vpc"
  env          = var.env
  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}

module "ec2" {
  source             = "./modules/ec2"
  env                = var.env
  ami_id             = var.ami_id
  subnet_id          = module.vpc.subnet_ids[0]
  user_data_template = "${path.module}/modules/ec2/user-data.tpl"
}
