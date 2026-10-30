resource "aws_instance" "this" {
  ami           = var.instance_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = var.tag
}