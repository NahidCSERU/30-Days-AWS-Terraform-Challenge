output "instance_id" {
  value = aws_instance.ec2_example.id
}

output "public_ip" {
  value = aws_instance.ec2_example.public_ip
}

output "public_dns" {
  value = aws_instance.ec2_example.public_dns
}
