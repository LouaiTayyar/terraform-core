provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-076309742d466ad69"
    instance_type = "t2.micro"
}

resource "aws_eip" "elkasticip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
  value = aws_eip.elkasticip.public_ip
}