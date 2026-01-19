module "vpc" {
    source = "./modules/vpc"

  
}

module "ec2" {
    source = "./modules/ec2"
    subnet_id      = module.vpc.main_subnet_id
   security_group_id = module.vpc.security_group_id
   key_pair_name     = module.vpc.key_pair_name
  
}