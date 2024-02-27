
## Base Code

### variable-definition-file.tf 

```sh
resource "aws_instance" "myec2" {
  ami           = "ami-0e670eb768a5fc3d4"
  instance_type = "t2.micro"
}
```

## Final Code

### variable-definition-file.tf

```sh
resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = "t2.micro"
}
```

### variables.tf

```sh
variable "ami" {}
```

### terraform.tfvars

```sh
ami = "ami-0e670eb768a5fc3d4"
```

## Commands Used in Video
```sh
terraform plan
terraform apply
terraform plan -var-file="prod.tfvars"
```