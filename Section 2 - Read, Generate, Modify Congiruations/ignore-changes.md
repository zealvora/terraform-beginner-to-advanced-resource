
### ignore-changes.tf (Base Code)

```sh
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
}
```
### ignore-changes.tf (Manual Added Attribute List)

```sh
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    }

    lifecycle {
      ignore_changes = [tags,instance_type]
    }

}
```


### ignore-changes.tf (Using ALL)

```sh
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloWorld"
    }

    lifecycle {
      ignore_changes = all
    }

}
```