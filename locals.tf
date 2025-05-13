locals {
    project_name = "my_project" 
    environment  = terraform.workspace
    name_prefix  = "${local.project_name}-${local.environment}"

    default_tags = {
        Project     = local.project_name
        Enviroment = local.environment
        ManagedBy  = "Terraform"
    }
}