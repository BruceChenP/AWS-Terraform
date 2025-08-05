output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = module.vpc.public_subnet_id
}

output "ec2_instance_ids" {
  value = module.ec2[*].instance_ids
}

output "ec2_public_ips" {
  value = module.ec2[*].public_ips
}

output "ec2_private_ips" {
  value = module.ec2[*].private_ips
}