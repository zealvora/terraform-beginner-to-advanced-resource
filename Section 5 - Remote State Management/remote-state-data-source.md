
## Documentation Referred:

1. Remote State Data Source

https://developer.hashicorp.com/terraform/language/state/remote-state-data

2. Terraform S3 Backend

https://developer.hashicorp.com/terraform/language/settings/backends/s3

### Base code for Network Team

#### eip.tf
```sh
resource "aws_eip" "lb" {
  domain = "vpc"
}

output "eip_addr" {
  value = aws_eip.lb.public_ip
}

```
#### backend.tf
```sh
terraform {
  backend "s3" {
    bucket = ""
    key    = "eip.tfstate"
    region = "us-east-1"
  }
}
```

### Base Code for Security Team

#### sg.tf

```sh
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "172.31.20.30/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
```

#### data.tf

```sh
data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "kplabs-networking-bucket-demo"
    key    = "eip.tfstate"
    region = "us-east-1"
    }
  }
```



### Final Code for Security Team SG.TF

```sh
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
}


resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${data.terraform_remote_state.vpc.outputs.eip_addr}/32"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
```