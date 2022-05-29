
# We are running Null Provisioner.
// This is second type of comment.

/*
Line 1
Line 2
Line 3
*/
resource "null_resource" "demo_run" {

 provisioner "local-exec" {

   command = "echo Null Provisioner has completed > sample.txt"

  }
}

/*
resource "null_resource" "demo_run2" {

 provisioner "local-exec" {

   command = "echo Null Provisioner has completed > sample.txt"

  }
}
*/
