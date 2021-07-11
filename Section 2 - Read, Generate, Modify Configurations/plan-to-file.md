## This snippet is from the "Savings Terraform Plan To File" video.

### plan-file.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
### Commands Used:
```sh
terraform plan -out=demopath
terraform apply demopath
```
