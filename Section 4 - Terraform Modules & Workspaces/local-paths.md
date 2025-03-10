### Documentation Referenced:

https://developer.hashicorp.com/terraform/language/modules/sources

### Code used in Practical to Reference to EC2 Module from Teams A Folder

```sh
module "ec2" {
  source = "../../modules/ec2"
}
```

```sh
terraform init
terraform plan
```