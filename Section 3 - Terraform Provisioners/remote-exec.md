### Documentation Referenced:

https://www.terraform.io/language/resources/provisioners/remote-exec

https://www.terraform.io/language/resources/provisioners/connection

https://www.terraform.io/language/functions/file

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
   key_name = "terraform-key"
   vpc_security_group_ids = ["sg-0edf854d7112cfbf4"]

 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key  = file("./terraform-key.pem")
    host     = self.public_ip
  }

 provisioner "remote-exec" {
    inline = [
      "sudo yum -y install nginx",
      "sudo systemctl start nginx",
    ]
  }
}
```
