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
  source             = "./modules/network"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.az
  name_prefix        = local.name_prefix
  tags               = local.default_tags
}

module "compute" {
  source        = "./modules/compute"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.network.public_subnet_id
  key_name      = var.key_name
  name_prefix   = local.name_prefix
  tags          = local.default_tags
}

module "storage" {
  source      = "./modules/storage"
  bucket_prefix = local.name_prefix
  tags        = local.default_tags
}
