provider "aws" {
    profile = "default"
    region = "eu-west-1"  
}

module "ec2"{
    source = "./aws_ec2_instance"

    subnet_id = "subnet-f2318495"
    network_interface_name = "Test interface"
    ami = "ami-00103874"
    instance_name = "Test Server"
}