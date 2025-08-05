resource "aws_instance" "this" {
  ami                         = var.ami
  count                       = var.ec2_count
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = var.associate_public_ip_address
  key_name                    = var.key_name != "" ? var.key_name : null
  
  tags = merge(
    {
      Name = var.name
    },
    var.extra_tags
  )
}