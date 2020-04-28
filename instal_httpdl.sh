resource "aws_instance" "web" {
  user_data = "${file("install_httpd.sh")}"
}
