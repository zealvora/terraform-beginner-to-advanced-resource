### Important Note:

In the latest AWS provider version,there is one small change to be added in the aws_security_group resource that was used in video. Otherwise you will get this error:

<p align="center">
  <img src="https://i.ibb.co/2hS4Btj/sg-error.png">
</p>

This issue will be fixed soon by HashiCorp in the next versions of AWS provider.

Intermediate Solution to Resolve the Error:

1. Open the VPC Console in AWS through the following link:

   https://console.aws.amazon.com/vpc/home

2. Click on "Your VPC"

<p align="center">
  <img src="https://i.ibb.co/FD2qVfq/vpc-console.png">
</p>

3. There should be 1 default VPC with no name. Copy the VPC ID of this VPC.


<p align="center">
  <img src="https://i.ibb.co/WVd8Pm5/vpc-id.png">
</p>

4. Add the VPC ID in the vpc_id argument in the aws_security_group. 

<p align="center">
  <img src="https://i.ibb.co/gFvfgft/add-vpc-id.png">
</p>

Here is a sample code reference:

```sh
resource "aws_security_group" "allow_tls" {
  name        = "kplabs-security-group"
  vpc_id      = "vpc-48ae592e"
```

Make sure to use the correct VPC ID of the AWS region in which you are creating your resource.

If you still get any error, feel free to raise your query in our Discord community. 

### Code:

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}



resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}

resource "aws_eip" "lb" {
  vpc      = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myec2.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name        = "kplabs-security-group"
  vpc_id      = <ADD-YOUR-VPC-ID-HERE>

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]

#    cidr_blocks = [aws_eip.lb.public_ip/32]
  }
}
```
