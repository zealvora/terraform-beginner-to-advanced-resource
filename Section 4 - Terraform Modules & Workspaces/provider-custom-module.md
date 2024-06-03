### Documentation Referenced:

https://developer.hashicorp.com/terraform/language/providers/requirements

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

### Final Main Module Code:

```sh
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.50"
    }
  }
}

resource "aws_instance" "myec2" {
    ami = var.ami
    instance_type = var.instance_type
}


variable "ami" {}
variable "instance_type" {}
```

### Final Calling Module Code
```sh
provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "../../modules/ec2"
  instance_type = "t2.large"
  ami = "ami-123"
}
```