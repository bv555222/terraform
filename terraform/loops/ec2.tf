resource "aws_instance" "terraform_ec2" {
  for_each = var.instances
  ami      = var.ami_id
  # instance_type = var.environment == "prod" ? var.instance_type : "t3.large"
  instance_type          = each.value
  vpc_security_group_ids = [aws_security_group.allow_all.id]


  tags = {
    Name = each.key
  }
}

resource "aws_security_group" "allow_all" {
  name        = "mysecgrp"
  description = var.desc

  egress {

    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks

  }

  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  }

  tags = var.tag


}

resource "aws_route53_record" "terraform_ec2" {
  for_each = aws_instance.terraform_ec2
  zone_id  = var.zone_id
  name     = "${each.key}.${var.domain_name}"
  type     = "A"
  ttl      = 1
  records  = [aws_instance.terraform_ec2[each.key].private_ip]
}