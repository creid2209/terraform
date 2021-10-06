variable "instance_type"{
    type = string
    default = "t2.micro"
    description = "The size of the instance"
}

variable "subnet_id"{
    type = string
    description = "The Subnet to be used by the instance"
}

/* variable "network_interface_name"{
    type = string
    description = "The name of the network interface on the instance"
} */

variable "ami"{
    type = string
    description = "The ami to be used for the instance"
}

variable "instance_name"{
    type = string
    description = "The name to be used by the instance"
}

variable "security_group_ids"{
    type = list(string)
    description = "The security group/s to be used by the instance"
}