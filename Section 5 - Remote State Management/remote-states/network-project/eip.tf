resource "aws_eip" "lb" {
  domain = "vpc"
}

output "eip_addr" {
  value = aws_eip.lb.public_ip
}
