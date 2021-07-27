#### Pre-Requisite

1. Make sure you create your GitHub account.
2. Create Personal Access Token

#### GitHub Provider Terraform:

https://registry.terraform.io/providers/integrations/github/latest/docs

Code Used:

```sh
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = "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"
}

resource "github_repository" "terraform" {
  name        = "devsecops-terraform-github_repository"
  description = "My awesome devsecops codebase"

  visibility = "private"
}
```
#### Initialize and Apply:
```sh
terraform init
terraform plan
terraform apply
```
