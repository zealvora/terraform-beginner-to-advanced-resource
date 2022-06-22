## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep


### ec2.tf file

```sh
provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
### Environment Variables to Add in Terraform Cloud
```sh
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```
### sleep.tf file
```sh
resource "time_sleep" "wait_30_seconds" {
  create_duration = "30s"
}
```
