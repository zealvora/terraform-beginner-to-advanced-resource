
### Module of Network - Child Module

Path: `modules/network/sg.tf`

```sh
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
      configuration_aliases = [ aws.prod  ]
    }
  }
}

resource "aws_security_group" "dev" {
  name        = "dev-sg"
}

resource "aws_security_group" "prod" {
  name        = "prod-sg"
  provider    = aws.prod
}
```


### Root Module - main.tf

```sh
provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    alias = "mumbai"
    region = "ap-south-1"
}

module "sg" {
    source = "./modules/network"
    providers = {
        aws.prod = aws.mumbai
    }
}
```