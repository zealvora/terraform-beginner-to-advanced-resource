
### Base Code Used

```sh
resource "aws_iam_user" "this" {
  name = "test-aws-user"
}

resource "aws_security_group" "allow_tls" {
  name        = "terraform-firewall"
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.txt"
}
```

### Commands used

```sh
terraform plan -target local_file.foo
terraform apply -target local_file.foo
terraform destroy -target local_file.foo
```