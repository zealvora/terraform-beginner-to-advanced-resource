
### Base Code of conditional-expression.tf

```sh
variable "environment" {
  default = "development"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = "t2.micro
}
```

### Final Code Used In Examples:

```sh
variable "environment" {
  default = "production"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = var.environment == "development" ? "t2.micro" :"m5.large" 
}
```
#### Using the NOT EQUALS to Operator !=
```sh
variable "environment" {
  default = "production"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = var.environment != "development" ? "t2.micro" :"m5.large" 
}
```

#### Empty Value Based Example

```sh
variable "environment" {
  default = "production"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = var.environment != "development" ? "t2.micro" :"m5.large" 
}
```


### Example with Multipl Variables and Conditional Expressions

```sh
variable "environment" {
  default = "production"
}

variable "region" {
  default = "ap-south-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-00c39f71452c08778"
    instance_type = var.environment == "production" && var.region == "us-east-1" ? "m5.large" : "t2.micro"
}
```