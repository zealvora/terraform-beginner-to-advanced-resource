### AWS Documentation Referenced:

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


### aws-provider-config.tf

```sh
provider "aws" {
  region     = "us-east-1"
}

resource "aws_iam_user" "demouser" {
    name = "kplabs-demo-user"
}
```

### CLI Commands Used:
```sh
terraform apply -auto-approve
terraform destroy -auto-approve
```

### AWS CLI commands Used:
```sh
aws configure
```
