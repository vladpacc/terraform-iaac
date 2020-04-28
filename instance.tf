resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.large"
  user_data = "${file("install_httpd.sh")}"
  key_name  = "${aws_key_pair.us-west-2-key.key_name}"
  security_groups = ["${aws_security_group.allow_tls.name}"]
  tags = {
    Name = "HelloWorld"
  }
}
