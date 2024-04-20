Documentation Referenced:

https://developer.hashicorp.com/terraform/language/resources/provisioners/local-exec

### Base Code:
```sh
resource "aws_instance" "myec2" {
   ami = "ami-04e5276ebb8451442"
   instance_type = "t2.micro"
}
```

### Final Code:

```sh
resource "aws_instance" "myec2" {
   ami = "ami-04e5276ebb8451442"
   instance_type = "t2.micro"

   provisioner "local-exec" {
    command = "echo ${self.private_ip} >> server_ip.txt"
   }
}
```