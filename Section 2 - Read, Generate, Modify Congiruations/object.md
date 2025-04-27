### Base Code Used
```sh
variable "my-map" {
  type = map
}

output "variable_value" {
  value = var.my-map
}
```
Test Cases:
```sh
{"Name"="Zeal", "Age"="32"}
{"Name"="Zeal", "Age"="32","Location"="India"}
```

### Map That allows numbers only

```sh
variable "my-map" {
  type = map(number)
}

output "variable_value" {
  value = var.my-map
}
```
Test Cases:
```sh
{"Name"="Zeal", "Age"="32","Location"="India"}
{"Name"="12", "Age"="32","Location"="45"}
```


### Object Data Type Example

```sh
variable "my-object" {
  type = object({Name = string, userID = number})
}

output "variable_value" {
  value = var.my-object
}
```

Test cases

```sh
{"Name"="Zeal", "userID"=1234}
{"Name"="Zeal", "userID"="hello"}

```