resource "aws_security_group" "allow_all" {
  name        = "mysecgrp"
  description = "Allow all traffic"
  
  egress {
     
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  ingress {
    
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "allow_all"
  }
}