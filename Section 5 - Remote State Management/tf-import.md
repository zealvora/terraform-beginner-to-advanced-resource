### Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

### ec2.tf
```sh
resource "aws_instance" "web" {
  ami           = "ami-098e42ae54c764c35"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0b784705b047aaf23"]
  key_name = "terraform-key"
  tags = {
    Name = "terraform-ec2"
  }
}
```
### providers.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"
}

```

### Command To Import Resource

```sh
terraform import aws_instance.web i-0f46ca5bb81b2c828
```
