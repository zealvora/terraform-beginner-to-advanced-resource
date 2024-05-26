### Documentation Referenced:

https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

### Code Used:

```sh
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
}
```

### Commands used

```sh
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve
```