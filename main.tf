terraform {
  required_version = ">= 1.3.0"
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "terraform/state"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

module "network" {
  source    = "./modules/network"
  vpc_cidr  = var.vpc_cidr
}

module "compute" {
  source       = "./modules/compute"
  vpc_id       = module.network.vpc_id
  subnet_id    = module.network.public_subnet_id
  instance_type = var.instance_type
}

module "database" {
  source    = "./modules/database"
  vpc_id    = module.network.vpc_id
  subnet_id = module.network.private_subnet_id
  db_name   = var.db_name
}

module "load_balancer" {
  source     = "./modules/load_balancer"
  vpc_id     = module.network.vpc_id
  subnet_ids = [module.network.public_subnet_id]
}

module "iam_roles" {
  source = "./modules/iam_roles"
}

module "monitoring" {
  source      = "./modules/monitoring"
  vpc_id      = module.network.vpc_id
  instance_id = module.compute.instance_id
}
