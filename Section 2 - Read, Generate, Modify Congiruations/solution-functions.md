
###

This file contains the output that we had added as part of test.tf after analyzing each function

```sh
{
    a="ay"
    b="bee"
}
```
```sh
lookup({"us-east-1" = "ami-08a0d1e16fc3f61ea","us-west-2" = "ami-0b20a6f09484773af","ap-south-1" = "ami-0e1d06225679bc1c5"},"us-east-1")
```
```sh
resource "aws_instance" "app-dev" {
   ami = "ami-08a0d1e16fc3f61ea"
   instance_type = "t2.micro"
   count = 2

   tags = {
     Name = element(var.tags,count.index)
     CreationDate = "17 Jun 2024 17:51 UTC"
   }
}
```
```sh
length(["firstec2","secondec2"])
```
```sh
element(["firstec2","secondec2"],1)
```

```sh
formatdate("DD MMM YYYY hh:mm ZZZ", "2024-06-17T17:51:34Z")
```