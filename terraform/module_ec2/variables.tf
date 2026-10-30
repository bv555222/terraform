variable "instance_id" {
    type = string
    default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "vpc_security_group_ids" {
    type = list(string)
    default = []
}

variable "tag" {
    type = map(string)
    default = {
        Name = "Ansible-Dev1"
    }
  
}