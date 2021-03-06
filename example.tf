provider "aws" {
  region = "us-east-2"

}

resource "aws_instance" "example" {
  ami = "${lookup(var.amis, var.region)}"
  instance_type = "t2.micro"
  tags = {
    Name = "Connaire's provisioner test"
  }
  # provisioner "local-exec" {

  # command = "echo ${aws_instance.example.public_ip} > ip_address.txt"
  # }
}


resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
