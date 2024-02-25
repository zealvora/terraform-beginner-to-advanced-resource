## Documentation Referred:

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

### eip.tf

```sh
resource "aws_eip" "lb" {
  domain   = "vpc"
}
```

### Commands Used:
```sh
terraform apply -auto-approve
terraform destroy -auto-approve
```