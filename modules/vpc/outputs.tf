output "vpc_id" {
  value = aws_vpc.this.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "security_group_id" {
  value = aws_security_group.public.id
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}