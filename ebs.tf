resource "aws_ebs_volume" "ebs_vol" {
  availability_zone = "us-west-2"
  size              = 100

  tags = {
    Name = "HelloWorld"
  }
}
#
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.example.id}"
  instance_id = "${aws_instance.web.id}"
}

resource "aws_instance" "web" {
  ami               = "ami-21f78e11"
  availability_zone = "us-west-2"
  instance_type     = "t2.large"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = 1
}
