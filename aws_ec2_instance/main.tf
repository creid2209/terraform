
/* resource "aws_network_interface" "interface"{
    subnet_id = "var.subnet_id"

    tags = {
        Name = "var.network_interface_name"
    }
} */

resource "aws_instance" "instance"{
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.security_group_ids


    tags = {
        Name = var.instance_name
    }


    /* network_interface {
        network_interface_id = aws_network_interface.interface.id
        device_index = 0
      
    } */
}