data "aws_ami" "joindevops"{

    filter {
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }
}