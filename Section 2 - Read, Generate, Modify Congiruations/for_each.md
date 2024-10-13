### Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


### Example 1 - for_each with SET

```sh
variable "user_names" {
    type = set(string)
    default = ["alice","bob","john","james"]
}

resource "aws_iam_user" "this" {
    for_each = var.user_names
    name = each.value
}
```

### Example 2 - for_each with MAP

```sh
variable "my-map" {
    default = {
        key = "value"
        key1 = "value1"
    }
}

resource "aws_instance" "web" {
  for_each      = var.my-map
  ami           = each.value
  instance_type = "t3.micro"

  tags = {
    Name = each.key
  }
}
```
