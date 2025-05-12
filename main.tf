module "compute" {
  source = "./modules/compute"
  ami_id = var.ami_id
  instace_type = var.instance_type
  subnet_id = module.network.public_subnet_id
  name_prefix = local.name_prefix
  tags = local.default_tags
}