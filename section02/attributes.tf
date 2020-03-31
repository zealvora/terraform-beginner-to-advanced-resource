provider "aws" {
  region     = "us-west-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "apache-server"{
    
   
    ami = "ami-03b5297d565ef30a6"
    instance_type = "t2.micro"
    availability_zone ="ap-south-1b"
   
    key_name = "my-aws-ec2-key"
    
    tags = {
        name ="terraform-second"
    }
    security_groups = ["my-security-group"]
}

output "ec2" {
  
  value =   aws_instance.apache-server.instance_state
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip" {
  value = aws_eip.lb
}

resource "aws_s3_bucket" "mys3" {
  bucket = "kplabs-attribute-demo-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3
}
