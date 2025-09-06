resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  identifier           = "day21-mysql-db"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
  publicly_accessible  = true
}

# Create Manual Snapshot of the DB
resource "aws_db_snapshot" "mydb_snapshot" {
  db_instance_identifier = aws_db_instance.mydb.id
  db_snapshot_identifier = "day21-mysql-db-snapshot"
}
