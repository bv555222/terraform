resource "aws_instance" "terraform_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all.id]


  tags = {
    Name = "ansible_pr1"
  }
}

resource "aws_security_group" "allow_all" {
  name        = "mysecgrp"
  description = var.desc
  
  egress {
     
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr_blocks
    
  }

  ingress {
    
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = var.tag
  }
}

