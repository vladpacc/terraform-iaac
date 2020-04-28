resource "aws_key_pair" "us-west-2-key" {
  key_name   = "vlad_terraform_laptop-key"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
