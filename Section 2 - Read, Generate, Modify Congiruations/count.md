
### Base Code Used

```sh
resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
```


```sh
resource "aws_iam_user" "this" {
   name = "payments-user"
}
```