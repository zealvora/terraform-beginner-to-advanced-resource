
### Base Code Used:
```sh
resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
    count = 3

    tags = {
      Name = "payments-system"
    }
}

resource "aws_iam_user" "this" {
  name = "payments-user"
  count = 3
}
```

### Final Code Used
```sh
resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
    count = 3

    tags = {
      Name = "payments-system-${count.index}"
    }
}

resource "aws_iam_user" "this" {
  name = "payments-user-${count.index}"
  count = 3
}

variable "users" {
  type = list
  default = ["alice", "bob", "johncorner","james","mrA"]
}
```
```sh
resource "aws_iam_user" "that" {
  name = var.users[count.index]
  count = 3
}
```
