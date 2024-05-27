### Documentation Referred:

https://developer.hashicorp.com/terraform/language/modules/sources

### Sample EC2 GitHub Repository Referred:

https://github.com/zealvora/sample-kplabs-terraform-ec2-module

### Code Used In Video

```sh
module "ec2" {
  source = "github.com/zealvora/sample-kplabs-terraform-ec2-module"
}
```

```sh
terraform init
terraform plan
```