provider "aws" {
  region = var.region
}

module "ec2" {
  source = "./modules/ec2"

  ami_id             = var.ami_id
  instance_type      = var.instance_type
  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids
  volume_size        = var.volume_size
  environment        = var.environment
  owner              = var.owner
}

module "alb" {
  source = "./modules/alb"

  name            = "day6-${var.environment}-alb"
  subnets         = var.alb_subnets
  security_groups = var.alb_sg
  vpc_id          = var.vpc_id
  environment     = var.environment
  owner           = var.owner
}
