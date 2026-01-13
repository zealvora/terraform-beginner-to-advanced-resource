### Documentation Referenced in Video

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance

### Base Code Used in Video

```sh
resource "random_password" "db_password" {
  length           = 16
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password          = random_password.db_password.result
  skip_final_snapshot  = true
}

output "db_password" {
  value = random_password.db_password.result
  sensitive = true
}
```

```sh
terraform apply -auto-approve

terraform destroy -auto-approve
```
### Final Code Used in Video

```sh
resource "ephemeral_random_password" "db_password" {
  length           = 16
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password_wo          = ephemeral.random_password.db_password.result
  password_wo_version  = 3
  skip_final_snapshot  = true
}

resource "aws_secretsmanager_secret" "db_password" {
  name = "db_pass"
}

resource "aws_secretsmanager_secret_version" "db_password" {
  secret_id                = aws_secretsmanager_secret.db_password.id
  secret_string_wo         = ephemeral.random_password.db_password.result
  secret_string_wo_version = 3
}

ephemeral "aws_secretsmanager_secret_version" "db_password" {
  secret_id = aws_secretsmanager_secret_version.db_password.secret_id
}

```
```sh
terraform apply -auto-approve 

terraform destory -auto-approve
```
