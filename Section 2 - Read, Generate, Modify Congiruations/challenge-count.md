

### Base Example Used in Video:
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

variable "iam_names" {
  type = list
  default = ["user-01","user-02","user-03"]
}

resource "aws_iam_user" "iam" {
  name = var.iam_names[count.index]
  count = 3
  path = "/system/"
}
```
