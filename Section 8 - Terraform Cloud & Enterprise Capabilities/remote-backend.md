### iam.tf

```sh
terraform {
  required_version = "~> 0.12.0"

  backend "remote" {}
}

resource "aws_iam_user" "lb" {
  name = "remoteuser"
  path = "/system/"
}
```

### backend.hcl
```sh
workspaces { name = "kplabs-remote-backend" }
hostname     = "app.terraform.io"
organization = "demo-kplabs-org"
```

### CLI Commands used
```sh
terraform login
terraform init -backend-config=backend.hcl
```

### Documentation Referred:

https://www.terraform.io/docs/backends/types/remote.html
