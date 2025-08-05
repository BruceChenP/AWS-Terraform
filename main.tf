module "vpc" {
  source              = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  region              = var.aws_region
  availability_zone   = var.availability_zone
  name_prefix         = var.name_prefix
  tags                = var.extra_tags
}

module "ec2" {
  source                      = "./modules/ec2"
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnet_id
  security_group_ids          = [module.vpc.security_group_id]
  name                        = "${var.name_prefix}-instance"
  associate_public_ip_address = true
  key_name                    = var.key_name
  extra_tags                  = var.extra_tags
}