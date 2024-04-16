## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

### Base Code used:

```sh
resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t2.micro"
}
```

### Final Code:

```sh
provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "myimage" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.image_id
  instance_type = "t2.micro"
}
```
