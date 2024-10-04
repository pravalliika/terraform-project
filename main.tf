provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "ec2-user" {
 ami           = "ami-00f251754ac5da7f0" #Amazon Linux 2 AMI
 instance_type = "t2.micro"
  
}