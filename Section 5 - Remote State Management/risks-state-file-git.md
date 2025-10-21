
### 1 - Base Code for Creating RDS in AWS

```sh
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz#321"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
```
```sh
terraform apply -auto-approve
```
Verify State file for Plain Text Password
```sh
terraform destroy -auto-approve
```

### 2 - Using File Function
Create a file on path of `outside-folder/pass.txt` with following content.
```sh
foobarbaz#321
```
Modify the `db.tf` to use `file` function.
```sh
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = file("outside-folder/pass.txt")
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
```

```sh
terraform apply -auto-approve
```
Verify State file for Plain Text Password
```sh
terraform destroy -auto-approve
```