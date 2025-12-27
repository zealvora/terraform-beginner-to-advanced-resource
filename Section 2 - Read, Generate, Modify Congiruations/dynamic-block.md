### Documentation Referenced in the Video

https://developer.hashicorp.com/terraform/language/expressions/dynamic-blocks

### sg.tf (Base Code)

```sh
resource "aws_security_group" "demo_sg" {
  name        = "sample-sg"

  ingress {
    from_port   = 8200
    to_port     = 8200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8201
    to_port     = 8201
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 8300
    to_port     = 8300
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9200
    to_port     = 9200
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 9500
    to_port     = 9500
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

```

### Dynamic Block Base Code from Documentation

```sh
  dynamic "setting" {
    for_each = var.settings
    content {
      namespace = setting.value["namespace"]
      name = setting.value["name"]
      value = setting.value["value"]
    }
  }
```
### Final File

```sh
variable "sg_ports" {
  type = list(number)
  default = [8200,8201,8300,9200,9500]
}

resource "aws_security_group" "demo_sg" {
  name        = "sample-sg"

  dynamic "ingress" {
    for_each = var.sg_ports
    content {
       from_port   = ingress.value
       to_port     = ingress.value
       protocol    = "tcp"
       cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
```
```sh
terraform plan

terraform apply -auto-approve

terraform destroy -auto-approve
```