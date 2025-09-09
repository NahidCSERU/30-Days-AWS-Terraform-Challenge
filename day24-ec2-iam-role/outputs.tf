output "ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "ec2_role_name" {
  value = aws_iam_role.ec2_role.name
}
