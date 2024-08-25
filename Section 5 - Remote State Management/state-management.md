Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_security_group_ingress_rule

### Base Code Used:

```sh
terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backends"
    key    = "demo.tfstate"
    region = "us-east-1"
  }
}

resource "aws_iam_user" "dev" {
  name = "kplabs-user-01"
}

resource "aws_security_group" "prod" {
  name        = "terraform-firewalls"
}
```

## State Management Commands:

#### 1 - List the Resources Managed through Terraform:
```sh
terraform state list
```
#### 2 - Show Attributes of Resource
```sh
terraform state show aws_security_group.prod
```

#### 3 - Pull the State file From Remote Backend

```sh
terraform state pull
```
#### 4 - Terraform State RM

Extra code used as part of this example

```sh
resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.prod.id

  cidr_ipv4   = "10.0.0.0/8"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}

resource "aws_vpc_security_group_ingress_rule" "example2" {
  security_group_id = aws_security_group.prod.id

  cidr_ipv4   = "10.0.0.0/8"
  from_port   = 80
  ip_protocol = "tcp"
  to_port     = 80
}
```
```sh
terraform state rm aws_security_group.prod
terraform state rm aws_vpc_security_group_ingress_rule.example
terraform state rm aws_vpc_security_group_ingress_rule.example2
```

#### 5 - Moving Resource Address
```sh
terraform state mv aws_iam_user.dev aws_iam_user.prod
```

#### 6 - Replace Provider
```sh
terraform state replace-provider hashicorp/aws kplabs.in/internal/aws
```

