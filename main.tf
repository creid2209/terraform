provider "aws" {
    profile = "default"
    region = "eu-west-1"  
}

module "ec2"{
    source = "./aws_ec2_instance"

    subnet_id = "subnet-f2318495"
    security_group_ids = [ "sg-09932929b1ebcbe97" ]
    /* network_interface_name = "Test interface" */
    ami = "ami-0b93581e415b1656e"
    instance_name = "Test Server"
}