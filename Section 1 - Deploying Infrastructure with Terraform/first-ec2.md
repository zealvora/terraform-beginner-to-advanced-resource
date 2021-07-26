### Important Note

Note that every region has a different AMI ID. The AMI ID's keeps on changing so make sure you use the latest AMI ID from the AWS console similar to the way it is shown in the video.

### Documentation Referred:

https://registry.terraform.io/

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### first_ec2.tf

```sh
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

resource "aws_instance" "server0" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Section 1 - Deploying Infrastructure with Terraform"
  }
}
```
### Commands:

```sh
terraform init
terraform plan
terraform apply
```
