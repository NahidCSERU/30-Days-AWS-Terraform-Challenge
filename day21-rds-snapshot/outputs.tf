output "db_endpoint" {
  value = aws_db_instance.mydb.endpoint
}

output "snapshot_id" {
  value = aws_db_snapshot.mydb_snapshot.id
}
