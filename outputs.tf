output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id

}

output "public_subnet_id" {
  description = "The ID of the public subnet"
  value       = module.network.public_subnet_id

}

output "ec2_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.compute.ec2_ip
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.storage.s3_bucket_name
}