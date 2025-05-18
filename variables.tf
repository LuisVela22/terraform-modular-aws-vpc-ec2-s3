variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-west-2"
}

# variable "aws_access_key" {
#   description = "The AWS access key for authentication"
#   type        = string
#   default     = ""
# }

# variable "aws_secret_key" {
#   description = "The AWS secret key for authentication"
#   type        = string
#   default     = ""
# }

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR para la VPC"
  type        = string
}

variable "key_name" {
  description = "Nombre de la clave SSH para acceder a la instancia"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR para la subred pública"
  type        = string
}

variable "az" {
  description = "Zona de disponibilidad para la subred"
  type        = string
}
