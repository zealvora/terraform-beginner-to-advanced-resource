## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


### list-data-type.md (Base Code)

```sh
variable "my-list" {
  type = list
}

output "variable_value" {
  value = var.my-list
}
```
### EC2 example
```sh
resource "aws_instance" "web" {
  ami           = "ami-123"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-1234"]
}
```

### List Data Type with Restriction of Numbers
```sh
variable "my-list" {
  type = list(number)
}
```