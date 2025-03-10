
### Example 1 - List

```sh
variable "my-list" {
    type = list
    default = ["hello","world","hello"]
}

output "mylist" {
    value = var.my-list
}
```

### Example 2 - SET
```sh
variable "my-set" {
    type = set(string)
    default = ["alice","bob","john"]
}

output "myset" {
    value = var.my-set
}
```