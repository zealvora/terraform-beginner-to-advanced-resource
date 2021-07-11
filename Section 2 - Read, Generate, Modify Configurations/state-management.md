## This snippet is from the Terraform State Management video.

## state-management.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

terraform {
  backend "s3" {
    bucket = "kplabs-remote-backends"
    key    = "demo.tfstate"
    region = "us-east-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
  }
}
```

## Commands used for State Management 

```sh
terraform state list
terraform state mv aws_instance.webapp aws_instance.myec2
terraform state pull
terraform state rm aws_instance.myec2
```
