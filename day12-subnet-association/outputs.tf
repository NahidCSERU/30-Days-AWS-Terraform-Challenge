output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.main.id
}

output "route_table_id" {
  value = aws_route_table.public.id
}

output "association_id" {
  value = aws_route_table_association.public_assoc.id
}
