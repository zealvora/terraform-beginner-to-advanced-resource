
### Base Code (multi-provider-config.tf)

```sh

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_security_group" "allow_tls" {
  name        = "prod_firewall"
  provider    = aws.usa
}

resource "aws_security_group" "allow_tls" {
  name        = "staging_firewall"
  provider    = aws.mumbai
}
```

### Final Code

```sh
provider "aws" {
    region = "ap-southeast-1"
}

provider "aws" {
    alias  = "mumbai"
    region = "ap-south-1"
}

provider "aws" {
    alias  = "usa"
    region = "us-east-1"
}

resource "aws_security_group" "sg_1" {
  name        = "prod_firewall"
  provider    = aws.usa
}

resource "aws_security_group" "sg_2" {
  name        = "staging_firewall"
  provider    = aws.mumbai
}
```