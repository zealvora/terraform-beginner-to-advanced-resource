
#### main.tf
```sh
resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = "Managed from Terraform"
}
```

#### variables.tf
```sh
variable "sg_name" {}
```

#### terraform.tfvars
```sh
sg_name = "kplabs-firewall"
```