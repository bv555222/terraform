module "module_ec2" {
    source = "../module_ec2"
    vpc_security_group_ids = ["sg-01f3293bb98789cad"]
    instance_type = "t3.small"
    tag = {
        Name = "Ansible-Prod1"
    }
  
}