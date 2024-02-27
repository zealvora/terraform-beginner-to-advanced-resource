### Documentation Referred for Installaling Terraform in Linux

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### List all ENV Variables 

```sh
printenv```

### Base Code Used
```sh
nano demo.tf
```
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

variable "instance_type" {}

resource "aws_instance" "myec2" {
   ami = "ami-0e670eb768a5fc3d4"
   instance_type = var.instance_type
}
```

### Creating ENV Variable in Linux
```sh
export TF_VAR_instance_type=m5.large
```
### Verify ENV Variable
```sh
echo $TF_VAR_instance_type
```

