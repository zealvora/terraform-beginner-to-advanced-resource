### file-one.tf
```sh
resource "local_file" "foo" {
  content  = "Hello from KPLABS!"
  filename = "${path.module}/kplabs.txt"
}
```

### file-two.tf

```sh
resource "local_file" "foo2" {
  content  = "Hello!"
  filename = "${path.module}/two.txt"
}
```

### file-three.tf.json

```sh
{
  "resource": {
    "local_file": {
      "json_example": {
        "filename": "${path.module}/hello_from_json.txt",
        "content": "This file was created using Terraform JSON syntax!"
      }
    }
  }
}
```

```sh
terraform plan
```