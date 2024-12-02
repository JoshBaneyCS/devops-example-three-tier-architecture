provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./vpc"
}

module "web_tier" {
  source = "./web-tier"
  vpc_id = module.vpc.vpc_id
}

module "app_tier" {
  source = "./app-tier"
  vpc_id         = module.vpc.vpc_id
  app_subnet_ids = module.vpc.private_subnets
}

module "db_tier" {
  source = "./db-tier"
  vpc_id         = module.vpc.vpc_id
  db_subnet_ids  = module.vpc.db_subnets
}

module "security_groups" {
  source = "./security-groups"
  vpc_id = module.vpc.vpc_id
}
