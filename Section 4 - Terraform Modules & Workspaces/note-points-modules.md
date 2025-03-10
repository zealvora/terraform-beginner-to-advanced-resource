### Documentation Referenced:

#### EC2 Instance Module Page

https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest

#### EKS Module Page

https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest

#### IAM Module Page

https://registry.terraform.io/modules/terraform-aws-modules/iam/aws/latest

### Code Used

#### EC2 Instance Module

```sh
module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"
}
```

#### EKS Instance Module

```sh
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.11.1"
}
```

#### EKS Module Final Code

```sh
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.11.1"
  subnet_ids = ["subnet-021e7b87db88e184a","subnet-039fe8d9eeb59eb60"]
  cluster_name = "test"
}
```


#### IAM Instance Module

```sh
module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.39.1"
}
```