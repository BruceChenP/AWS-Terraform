aws_region         = "us-east-1"
ami_id             = "ami-020cba7c55df1f615"
availability_zone  = "us-east-1a"
key_name           = "TerraformKey"
name_prefix        = "dev"
vpc_cidr           = "10.1.0.0/16"
public_subnet_cidr = "10.1.0.0/24"
extra_tags         = {
  Environment = "dev"
  Project     = "terraform-side-project"
  Owner       = "bruce"
  CreatedBy   = "terraform"
}