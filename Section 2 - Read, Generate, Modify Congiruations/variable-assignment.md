
### variable-assignment.tf

```sh
resource "aws_instance" "myec2" {
   ami = "ami-0e670eb768a5fc3d4"
   instance_type = "t2.micro
}
```


### CLI Commands

```sh
terraform plan -var="instance_type=m5.large"
```

### Environment Variables in Windows

Open the System Properties using following command:

```sh
sysdm.cpl
```
