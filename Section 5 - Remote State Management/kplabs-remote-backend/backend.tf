
terraform {
  backend "s3" {
    bucket = "kplabs-remote-backend"
    key    = "remotedemo.tfstate"
    region = "us-west-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    dynamodb_table = "s3-state-lock"
  }
}
