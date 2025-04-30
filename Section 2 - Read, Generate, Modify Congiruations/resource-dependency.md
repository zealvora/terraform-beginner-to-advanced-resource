
### Base Code Used in Video

> [!IMPORTANT]  
> Make sure to change S3 bucket name as it needs to be unique across all AWS Accounts.


```sh
resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "example" {
  bucket = "kplabs-demo-s3-007"
}
```


### Final Code
```sh
resource "aws_instance" "example" {
  ami           = "ami-0e449927258d45bc4"
  instance_type = "t2.micro"
  depends_on = [aws_s3_bucket.example]
}

resource "aws_s3_bucket" "example" {
  bucket = "kplabs-demo-s3-007"
}
```
```sh
terraform apply -auto-approve

terraform destroy -auto-approve
```