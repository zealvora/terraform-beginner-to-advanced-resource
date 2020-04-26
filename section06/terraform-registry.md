### Terraform Registry URL:

https://registry.terraform.io/

### Demo Code used in Video:

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0d6621c01e8c2de2c"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-4dbfb206"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```
