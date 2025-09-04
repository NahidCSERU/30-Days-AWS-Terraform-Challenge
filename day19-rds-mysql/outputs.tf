output "db_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.mydb.endpoint
}

output "db_port" {
  description = "RDS port"
  value       = aws_db_instance.mydb.port
}
