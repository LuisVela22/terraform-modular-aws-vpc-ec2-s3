output "ec2_ip" {
  value       = aws_instance.vm_linux.public_ip
  description = "Public IP of the instance"
}

output "arn" {
  value       = aws_instance.vm_linux.arn
  description = "ARN of the instance"
}

# output "ec2_ip" {
#   description = "The public IP of the EC2 instance"
#   value       = aws_instance.v
# }