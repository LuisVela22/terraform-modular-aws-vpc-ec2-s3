# module "network" {
#   source = "./modules/network"
#   vpc_cidr = "10.0.0.0/16"
#   public_subnet_cidr = "10.0.1.0/24"
#   azs = var.azs
#   name_prefix = local.name_prefix
#   tags = local.default_tags
# }

# module "compute" {
#   source = "./modules/compute"
#   ami_id = var.ami_id
#   instace_type = var.instance_type
#   subnet_id = module.network.public_subnet_id
#   name_prefix = local.name_prefix
#   tags = local.default_tags
# }

# module "storage" {
#   source = "./modules/storage"
#   bucket_prefix = local.name_prefix
#   tags = local.default_tags
  
# }

module "network" {
  source              = "./network"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  az                  = "us-east-1a"
  name_prefix         = local.name_prefix
  tags                = local.default_tags
}

module "compute" {
  source        = "./compute"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.network.public_subnet_id
  name_prefix   = local.name_prefix
  tags          = local.default_tags
}

module "storage" {
  source        = "./storage"
  name_prefix   = local.name_prefix
  tags          = local.default_tags
}
