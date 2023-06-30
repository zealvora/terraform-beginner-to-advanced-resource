### output-values.tf

```sh
provider "aws" {
  region = "us-east-1"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

output "public-ip" {
  value = aws_eip.lb.public_ip
}
```

### Output Values Customization Shown in The Video:

```sh
output "public-ip" {
  value = aws_eip.lb.public_ip
}
```

```sh
output "public-ip" {
  value = "https://${aws_eip.lb.public_ip}:8080"
}
```

```sh
output "public-ip" {
  value = aws_eip.lb
}
```

### CLI Commands used:
```sh
terraform apply -auto-approve
terraform destroy -auto-approve
```
