### Base Code Used

```sh
resource "aws_instance" "myec2" {
    ami = "ami-0fa3fe0fa7920f68e"
    instance_type = "t2.micro"
}
```

### Commands Used
```sh
terraform apply
```

Manually modify instance type from t2.micro to t2.small.

Verify if terraform shows changes between desired and current state.

```sh
terraform plan
```

Remove the contents of the ec2.tf file so that Desired state is empty.
```sh
terraform apply
```