### Documentation Referenced:

https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep.html

### Base File Used

```sh
resource "time_sleep" "wait_100_seconds" {
  create_duration = "100s"
}
```

```sh
terraform init

terraform apply -auto-approve

terraform plan (from next terminal tab)
```