## This snippet is from the Data Sources video.

### data-source.tf

```sh

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIAQIW66DN2USXYQS7L"
  secret_key = "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"
}

data "aws_ami" "app_ami" {
  most_recent = true
  owners = ["amazon"]


  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "instance-1" {
    ami = data.aws_ami.app_ami.id
   instance_type = "t2.micro"
}
```
