## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

### attributes.tf

```sh
provider "aws"{
    region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}
```
### Commands Used:
```sh
terraform apply -auto-approve
terraform destroy -auto-approve
```
