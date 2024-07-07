## This snippet is from the "Savings Terraform Plan To File" video.

### local_file.tf

```sh
resource "local_file" "foo" {
  content  = "Hello World"
  filename = "terraform.txt"
}
```

### Commands Used:
```sh
terraform plan -out=infra.plan
terraform apply infra.plan
```
```sh
terraform show infra.plan
terraform show -json infra.plan
```
```sh
terraform show -json infra.plan | jq
```