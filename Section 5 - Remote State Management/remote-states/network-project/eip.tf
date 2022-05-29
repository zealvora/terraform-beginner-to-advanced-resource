resource "aws_eip" "lb" {
  vpc      = true
}

output "eip_addr" {
  value = aws_eip.lb.public_ip
}
