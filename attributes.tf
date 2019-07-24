provider "aws" {
  region     = "us-west-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_eip" "public_ip" {
   vpc      = true
}

#provider_property.user-defined-name.

output "ec2_public_ip" {
   value = "${aws_eip.public_ip.public_ip}"
}


resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-test-kplabs-02"
}


output "bucket_identifier" {
  value = "${aws_s3_bucket.my_bucket.bucket_domain_name}"
}
