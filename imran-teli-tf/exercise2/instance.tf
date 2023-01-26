resource "aws_instance" "dove-inst" {
  ami                    = var.amis[var.region]
  instance_type          = "t2.micro"
  availability_zone       = var.zone1
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-03fc57d840eebae4f"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}
