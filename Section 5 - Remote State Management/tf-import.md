
### ec2.tf
```sh
resource "aws_instance" "myec2" {
  ami = "ami-bf5540df"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-6ae7d613", "sg-53370035"]
  key_name = "remotepractical"
  subnet_id = "subnet-9e3cfbc5"

  tags {
    Name = "manual"
  }
}
```
### providers.tf
```sh
provider "aws" {
  region = "us-west-1"
}

```

### Command To Import Resource

```sh
terraform import aws_instance.myec2 i-041886ebb7e9bd20
```
