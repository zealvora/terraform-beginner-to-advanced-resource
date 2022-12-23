terraform {
  backend "s3" {
    bucket = "kplabs-terraform-backend"
    key    = "network/eip.tfstate"
    region = "ap-south-1"
  }
}
