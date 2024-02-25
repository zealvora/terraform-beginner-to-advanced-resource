### Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance


### cross-reference-attributes.tf

```sh
resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_security_group" "example" {
  name        = "attribute-sg"
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.example.id

  cidr_ipv4   = "${aws_eip.lb.public_ip}/32"
  from_port   = 443
  ip_protocol = "tcp"
  to_port     = 443
}
```

### Commands Used:
```sh
terraform apply -auto-approve
terraform destroy -auto-approve
```
