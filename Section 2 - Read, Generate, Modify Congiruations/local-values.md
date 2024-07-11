### Documentation Referred:

https://developer.hashicorp.com/terraform/language/functions/formatdate

### Base Code of local-values.tf

```sh
resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = {
    Name = "security-team"
  }
}

resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = {
    Name = "security-team"
  }
}

```

### Final Code

```sh
variable "tags" {
  type = map
  default = {
    Team = "security-team"
  }
}

locals {
  default = {
    Team = "security-teams"
    CreationDate = "date-${formatdate("DDMMYYYY",timestamp())}"
  }
}

resource "aws_security_group" "sg_01" {
  name = "app_firewall"
  tags = local.default
}

resource "aws_security_group" "sg_02" {
  name = "db_firewall"
  tags = local.default
}
```

