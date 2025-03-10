### Base Code

```sh
resource "aws_instance" "myec2" {
   ami = "ami-0e670eb768a5fc3d4"
   instance_type = var.instance_type
}
```
### variables.tf
```sh
variable "instance_type" {
    default = "t2.micro"
}
```

Commands to remember:
```sh
terraform plan -var="instance_type=m5.large"
```