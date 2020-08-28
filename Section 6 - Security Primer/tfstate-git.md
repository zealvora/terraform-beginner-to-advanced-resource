### RDS Configuration File
```sh
provider "aws" {
  region  = "us-east-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"


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

Please store this file outside of the folder of rds.tf 
```sh
mysecretpassword505
```
