### Base Code Used

```sh
resource "aws_instance" "myec2" {
    ami = "ami-0fa3fe0fa7920f68e"
    instance_type = "t2.micro"
}
```

### Commands Used
```sh
terraform apply

terraform destroy
```