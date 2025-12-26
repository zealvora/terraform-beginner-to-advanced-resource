### demo.tf

```sh
resource "local_file" "foo" {
      content  = "Hello from KPLABS!"
  filename = "${path.module}/kplabs.txt"
}
```

```sh
terraform fmt
```

### Important Flags Explored in the Video

#### 1. Terraform FMT Diff

`terraform fmt -diff`

#### 2. Terraform FMT Recursive

Create a new folder called as `folder-1` and inside the folder, create a file called `file.tf` with following content

```sh
resource "local_file" "foo" {
      content  = "Hello from KPLABS!"
  filename = "${path.module}/kplabs.txt"
}
```

Run the below command from one directory back.

```sh
terraform fmt -recursive
```

#### 3. Terraform FMT Check

```sh
terraform fmt -check

echo $?
```