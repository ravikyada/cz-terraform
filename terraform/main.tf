terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=4.48.0"
    }
  }
  required_version = ">= 1.3.7"
}

# Remote backend (For Best Practice)
# resource "aws_s3_bucket" "backend_bucket" {
#   bucket = var.remote_bucket_name

#   lifecycle {
#     prevent_destroy = true
#   }
# }

# 1 - Create VPC
module "vpc" {
  source            = "./modules/vpc"
  region            = var.region
  vpc_cidr_block    = var.vpc_cidr_block
  subnet_public_1a  = var.subnet_public_1a
  availability_zone = var.availability_zone
}

# 2 - Create EC2
module "compute" {
  source             = "./modules/compute"
  ami_id             = var.ami_id
  instance_type      = var.instance_type
  availability_zone  = var.availability_zone
  aws_security_group = [module.vpc.security_group_id]
  key_name           = var.key_name
  subnet_id          = module.vpc.subnet_id
}