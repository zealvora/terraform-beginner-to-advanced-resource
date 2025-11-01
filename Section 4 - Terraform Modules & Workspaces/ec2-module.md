### Documentation Referenced:

https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

### Code Used:

Change the `subnet_id` based on your environment. 

```sh
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.1.4"
  subnet_id  = "subnet-03f8c90a72ead2e4d" (Change this value)
}
```

### Commands used

```sh
terraform init
terraform apply -auto-approve
terraform destroy -auto-approve
```