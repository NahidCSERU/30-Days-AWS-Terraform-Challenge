output "instance_id" {
  value = aws_instance.dev_ec2.id
}

output "public_ip" {
  value = aws_instance.dev_ec2.public_ip
}

output "ebs_volume_id" {
  value = aws_ebs_volume.dev_volume.id
}
