### Documentation Referred:

https://www.terraform.io/language/settings/backends/remote

### remote-backend.tf
```sh
terraform {
  cloud {
    organization = "mykplabs-org"

    workspaces {
      name = "remote-operation"
    }
  }
}
```

### iam.tf

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}
```

### CLI Commands used
```sh
terraform login
terraform init
terraform plan
terraform apply -auto-approve
terraform destroy -auto-approve
```
