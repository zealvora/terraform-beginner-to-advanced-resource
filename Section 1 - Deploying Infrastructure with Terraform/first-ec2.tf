/*  Important Note

Note that every region has a different AMI ID. The AMI ID's keeps on changing so make sure you use the latest AMI ID from the AWS console similar to the way it is shown in the video.

Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs


   first_ec2.tf
   Configure the AWS Provider
*/

provider "aws" {
  region = "us-west-2" # Oregon
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_key_pair" "deployer" {
  key_name   = "tf-packer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCu1VZLS3dXyzg0whw9NlqboZg53ZY+1SOORWfqgJ31NWP7RNe6hoo+WpYTzZ1q1rWqMGu6vLpTPOgtvEzdIFC1mmcJDsgSFD01H4a5dfcnvMMLwYeEjR68KeNGTOCYTIMXdTVGlqgJzagwKdWfdsck1raVjBQM5ZEl7r5EiRRMTFWN5XVQ6v0rK1BI7VPgd2e2FJ26/8KGRdN7RQVPvGZ7JFtW+osRJ/XgRtbF9eVZoK6r/5jTUAv/esTK24lYqwDxfDZkQDG2AEaCsQysiKfjBWAiWbe2OMpKpVpDvbkNVnXp5G+gSKIO6DhwCucCHWqsV8hIwvDvj3LmglD7nP5uA8vrPE3UwOg3RQLm2ajYlMjVEDWxvt4ObX0QUhS9GrblUslKhFcmz6NiEmBMEjDmk4C8KW7SO8wsshMPR/XJKLI8WnJxAhqdKrZy1iAb0tEo9hEDjP17lj+5YFm7qIrYW1ahXt8drHRONMt/XZcmPLOslIXHOSSE6UN5K+rGcyE= abooker3@liberty.edu"

  tags = {
    Name = "Section 1 - Deploying Infrastructure with Terraform"
  }
}

resource "aws_instance" "server0" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Section 1 - Deploying Infrastructure with Terraform"
  }
  user_data = filebase64("${path.module}/example.sh")
}
