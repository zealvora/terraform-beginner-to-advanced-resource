## Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

### Base Code of Child Module
```sh
resource "aws_instance" "myec2" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
}
```
### Base Code of ROOT Module
```sh
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "../../modules/ec2"
}

resource "aws_eip" "this" {
  domain  = "vpc"
}
```

### Final Code of Child Module
```sh
resource "aws_instance" "myec2" {
    ami = "ami-08a0d1e16fc3f61ea"
    instance_type = "t2.micro"
}

output "instance_id" {
    value = aws_instance.myec2.id
}

```

### Final Code of Root Module
```sh
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source = "../../modules/ec2"
}

resource "aws_eip" "this" {
  domain  = "vpc"
  instance = module.ec2.instance_id
}
```