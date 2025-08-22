output "security_group_id" {
  description = "The ID of the created Security Group"
  value       = aws_security_group.web_sg.id
}

output "security_group_name" {
  description = "The Name of the Security Group"
  value       = aws_security_group.web_sg.name
}
