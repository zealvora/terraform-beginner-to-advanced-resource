
## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

## data-types.tf

### Base Code used in Video

```sh
resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}
```

### Final Code with Data Type Restriction for Variable

```sh
variable "username {
  type = number
}
resource "aws_iam_user" "lb" {
  name = var.username
}
```

### EC2 Instance Code Example

```sh
resource "aws_instance" "web" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-06dc77ed59c310f03"]
}
```
