### Documentation Referenced:

https://developer.hashicorp.com/terraform/language/backend

https://developer.hashicorp.com/terraform/language/backend/local

### Base sg.tf file
```sh
resource "aws_security_group" "prod" {
  name        = "production-sg"
}
```

### Adding Explicit Local Backend
```sh
terraform {
  backend "local" {
    path = "prod.tfstate"
  }
}
```

