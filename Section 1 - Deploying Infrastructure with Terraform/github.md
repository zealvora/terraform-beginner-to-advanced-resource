
#### GitHub Provider Terraform:

https://registry.terraform.io/providers/integrations/github/latest/docs

Code Used:

```sh

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = "your-token-here"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}
```
#### Initialize and Apply:
```sh
terraform init
terraform plan
terraform apply
```
