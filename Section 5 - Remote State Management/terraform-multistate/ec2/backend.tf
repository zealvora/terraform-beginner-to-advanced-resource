
terraform {
  backend "s3" {
    bucket = "kplabs-remote-backend"
    key    = "ec2demo.tfstate"
    region = "us-west-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
    dynamodb_table = "s3-state-lock"
  }
}
