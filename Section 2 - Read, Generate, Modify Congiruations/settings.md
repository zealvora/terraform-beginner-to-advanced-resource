
### Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/aws/latest

https://developer.hashicorp.com/terraform/language/settings

#### Base Code Used 

```sh
resource "aws_security_group" "sg_01" {
  name = "app_firewall"
}
```

### Final Code Used

```sh
terraform {
  required_version = "1.9.1"

  required_providers {
    aws = {
      version = "5.54.1"
      source = "hashicorp/aws"
    }
  }
}

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
}

```