variable "vpc_cidr" {
  description = "The ID of the VPC where the network resources will be created."
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet."
  type        = string

}

variable "az" {
  description = "The availability zone for the subnet."
  type        = string
}

variable "name_prefix" {
  description = "The prefix for naming resources."
  type        = string

}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {}
}

