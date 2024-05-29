module "security-group" {
  source = "./modules/SG"

}

module "rds-tf" {
  source    = "./modules/RDS"
  sg_id = module.security-group.sg_id

}

module "default-vpc" {
  source = "./modules/vpc"
}



