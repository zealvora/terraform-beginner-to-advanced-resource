terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend"
    key    = "network/terraform.tfstate"
    region = "ap-south-1"
  }
}
