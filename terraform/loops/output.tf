output "instances_info" {
  value = aws_instance.terraform_ec2
}

output "default_vpc" {
  value = data.aws_vpc.default
}

output "default_security_group" {
  value = data.aws_security_group.default
}

output "ami_name" {
    value = data.aws_ami.joindevops
}