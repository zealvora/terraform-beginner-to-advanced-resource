### Documentation Referenced:

https://developer.hashicorp.com/terraform/language/backend/s3

### Base File (sg.tf)
```sh
resource "aws_security_group" "prod" {
  name        = "production-sg"
}
```
### Backend File Configuration (backend.tf)
> [!IMPORTANT]  
> Make sure to change the S3 bucket name.
```sh
terraform {
  backend "s3" {
    bucket = "kplabs-demo-bucket-007"
    key    = "production.tfstate"
    region = "us-east-1"
    use_lockfile = "true"
  }
}
```

### Commands Used
```sh
terraform init

terraform apply -auto-approve
```