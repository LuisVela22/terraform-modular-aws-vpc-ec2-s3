variable "bucket_prefix" {
  description = "Prefix for the resource names"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the resources"
  type        = map(string)
  default     = {}
  
}