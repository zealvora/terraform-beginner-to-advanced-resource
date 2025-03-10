## Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance

### Base Code

```sh
resource "local_file" "foo" {
  content  = "supersecretpassw0rd"
  filename = "password.txt"
}
```

### Code with Variable

```sh
variable "password" {
  default = "supersecretpassw0rd"
}
resource "local_file" "foo" {
  content  = var.password
  filename = "password.txt"
}
```

### Code were Sensitive Parameter is set at Variable

```sh
variable "password" {
  default = "supersecretpassw0rd"
  sensitive = "true"
}
resource "local_file" "foo" {
  content  = var.password
  filename = "password.txt"
}
```
### Using Local Sensitive File Resource Type

```sh
resource "local_sensitive_file" "foo" {
  content  = "supersecretpassw0rd"
  filename = "password.txt"
}
```

### Code Block using Output Values
```sh
resource "local_sensitive_file" "foo" {
  content  = "supersecretpassw0rd"
  filename = "password.txt"
}


output "pass" {
  value = local_sensitive_file.foo.content
}
```

### RDS Code Block

```sh
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}
```
