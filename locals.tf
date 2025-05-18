locals {
  project_name = "terraform-project"
  environment  = terraform.workspace
  name_prefix  = "${local.project_name}-${local.environment}"

  default_tags = {
    Project    = local.project_name
    Enviroment = local.environment
    ManagedBy  = "Terraform"
  }
}