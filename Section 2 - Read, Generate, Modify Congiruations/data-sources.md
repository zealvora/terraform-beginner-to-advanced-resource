## Documentation Referred:

https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/data-sources/account

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

https://registry.terraform.io/providers/hashicorp/local/latest/docs/data-sources/file

## Code Used In Video:

### data-source-01.tf
```sh
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
    }
  }
}

provider "digitalocean" {
  token = "your-token-here"
}

data "digitalocean_account" "example" {}
```


### data-source-02.tf
```sh
data "local_file" "foo" {
  filename = "${path.module}/demo.txt"
}
```
```sh
output "data" {
    value = data.local_file.foo.content
}
```
### data-source-03.tf
```sh
provider "aws" {
    region = "us-east-1"
}

data "aws_instances" "example" {}
```