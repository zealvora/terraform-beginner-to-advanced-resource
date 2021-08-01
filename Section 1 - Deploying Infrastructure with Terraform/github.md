/*
Pre-Requisites

 1. Make sure you create your GitHub account.
 2. Create Personal Access Token

 GitHub Provider Terraform:
 https://registry.terraform.io/providers/integrations/github/latest/docs
*/

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
