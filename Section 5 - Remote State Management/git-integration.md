
### providers.tf

```sh
provider "aws" {
  region = "us-west-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}
```

### rds.tf
```sh
resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = file("../rds_pass.txt")
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}
```

### rds_pass.txt
```sh
mysecretpassword505
```
