resource "aws_eip" "myeip" {
  instance = "${data.terraform_remote_state.myec2.ec2ip}"
}
