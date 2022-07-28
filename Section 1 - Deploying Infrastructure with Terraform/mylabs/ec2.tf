provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAWU5F5UWLS25CKNN7"
  secret_key = "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"
}
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Terraform VPC"
  }
}
resource "aws_instance" "myec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-new-ec2"
  }
}
