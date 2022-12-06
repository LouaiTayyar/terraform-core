provider "aws" {
    region = "eu-central-1"
}

variable "num_servers" {
    type = number
}

resource "aws_instance" "ec2" {
    ami = "ami-076309742d466ad69"
    instance_type = "t2.micro"
    count = var.num_servers
}