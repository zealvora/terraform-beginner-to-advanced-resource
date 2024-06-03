### Final Main Module Code

```sh

provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.instance_type
}


variable "ami" {}
variable "instance_type" {}
variable "region" {}
```

### Final Calling Module Code

```sh
module "ec2" {
  source = "../../modules/ec2"
  instance_type = "t2.large"
  ami = "ami-123"
  region = "ap-south-1"
}
```