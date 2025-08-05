variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for the public subnet"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "name_prefix" {
  type        = string
  description = "Prefix for naming resources"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Common tags"
}

variable "availability_zone" {
  type        = string
  description = "AZ to place public subnet"
}
