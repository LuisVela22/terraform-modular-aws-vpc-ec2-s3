variable "ami_id" {
  description = "ID de la imagen AMI para la instancia EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Nombre de la clave SSH para acceder a la instancia EC2"
  type        = string
}

variable "subnet_id" {
  description = "ID de la subred pública donde se desplegará la EC2"
  type        = string
}

variable "name_prefix" {
  description = "Prefijo estándar para nombrar los recursos"
  type        = string
}

variable "tags" {
  description = "Conjunto de etiquetas comunes aplicadas a todos los recursos"
  type        = map(string)
}
