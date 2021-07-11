
### test.fmt.tf

```sh
provider "aws" {
       region     = "us-west-2"
  access_key          = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET"
  version = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}
```

Command for Formatting

```sh
terraform fmt
```
