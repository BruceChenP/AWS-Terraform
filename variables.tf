variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "availability_zone" {
  description = "AZ for subnet placement"
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for naming AWS resources"
  type        = string
}

variable "extra_tags" {
  description = "Extra common tags for all resources"
  type        = map(string)
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "ec2_count" {
  description = "Number of EC2 instances to launch"
  type        = number
  default     = 1
}