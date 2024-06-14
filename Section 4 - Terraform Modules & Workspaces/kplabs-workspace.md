### Terraform Workspace commands:
```sh
terraform workspace
terraform workspace show
terraform workspace new dev
terraform workspace new prod
terraform workspace list
terraform workspace select dev
```

### Base Code
```sh

resource "aws_instance" "myec2" {
   ami = "ami-08a0d1e16fc3f61ea"
   instance_type = "t2.micro"
}
```

### Final Code
```sh
locals {
  instance_type = {
    default = "t2.nano"
    dev     = "t2.micro"
    prod    = "m5.large"
  }
}

resource "aws_instance" "myec2" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = local.instance_type[terraform.workspace]
}
```


