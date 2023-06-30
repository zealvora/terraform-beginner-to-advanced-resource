
### import.tf

```sh
provider "aws" {
  region     = "us-east-1"
}

import {
  to = aws_security_group.mysg
  id = "sg-07f13feb262ba8b6f"
}
```

### Command To Autogenerate Code for Imported Resource

```sh
terraform plan -generate-config-out=mysg.tf
```

### Command To Generate the Final State file

```sh
terraform apply -auto-approve
```
