### Base Code Used:

```sh
resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
}

resource "aws_security_group" "prod" {
  name        = "production-sg"
}
```

### Final Code

```sh
resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.prod.id]
}

resource "aws_security_group" "prod" {
  name        = "production-sg"
}
```

```sh
terraform apply -auto-approve

terraform destroy -auto-approve
```