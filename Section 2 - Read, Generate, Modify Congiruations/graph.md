## Documents and Websites Referenced

1. HashiCorp Documentation Related to GraphViz
   
https://developer.hashicorp.com/terraform/cli/commands/graph

2. Onliner Website to create Visualization

https://dreampuf.github.io/GraphvizOnline/

### sample-file.tf
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

resource "aws_instance" "web" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"
}
```

### Commands Used:
```sh
terraform graph
apt install graphviz
terraform graph | dot -Tsvg > graph.svg
```

