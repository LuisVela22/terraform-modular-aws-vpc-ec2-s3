variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "The AWS access key for authentication"
  type        = string
  default     = ""
}

variable "aws_secret_key" {
  description = "The AWS secret key for authentication"
  type        = string
  default     = ""
}