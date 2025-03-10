## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs


### ec2.tf file

```sh
resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro"
}
```
### Environment Variables to Add in Terraform Cloud
```sh
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION
```
