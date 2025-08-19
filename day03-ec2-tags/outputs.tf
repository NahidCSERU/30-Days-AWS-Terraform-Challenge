output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.my_ec2.id
}

output "ec2_public_ip" {
  description = "The Public IP of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "ec2_tags" {
  description = "The Tags applied to EC2 instance"
  value       = aws_instance.my_ec2.tags
}