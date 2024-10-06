provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "ec2-user" {
 ami           = "ami-00f251754ac5da7f0" #Amazon Linux 2 AMI
 instance_type = "t2.micro"

 tags = {
    Name = "MYfirstEc2instance"
 }

}
 resource "aws_s3_bucket" "my_gar"  {
  bucket  = "my-bucket-for-terraform-18923"  #unique name globally
  
  tags =  {
    Name       = "my_gar"
    Environment = "Dev"

  
  }

 }
  
