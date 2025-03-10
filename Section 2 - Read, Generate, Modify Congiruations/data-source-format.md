## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/instance

## data-source-format.tf

```sh
provider "aws" {
    region = "us-east-1"
}

data "aws_instance" "example" {
 filter {
    name   = "tag:Team"
    values = ["Production"]
  }
}
```