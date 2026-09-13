variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}


variable "instances" {
    type = map(string)
    default = {
        mongodb = "t3.micro"
        mysql   = "t3.micro"
        rabbitmq = "t3.micro"
}
}

# variable "instance_type" {
#     default = "t3.micro"
# }

variable "desc" {
    default = "allow all trafic(from var file)"
}
variable "from_port" {
    default = 0
}

variable "to_port" {
    default = 0
}

variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "tag" {
    type = map(string)
    default = {
        Name = "allow all incoming and outgoing traffic"
    }
}

variable "environment" {
    default = "dev"
}

variable "domain_name" {
    default = "devopsjourney.online "
}

variable "zone_id" {
    default = "Z04755481RNQRIFJYD1SG"
}