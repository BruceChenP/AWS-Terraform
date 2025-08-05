variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
}

variable "name" {
  description = "Instance name"
  type        = string
}

variable "extra_tags" {
  description = "Extra tags"
  type        = map(string)
  default     = {}
}

variable "associate_public_ip_address" {
  description = "Associate public IP"
  type        = bool
  default     = true
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
  default     = []
}

variable "key_name" {
  description = "SSH key pair name for EC2"
  type        = string
}