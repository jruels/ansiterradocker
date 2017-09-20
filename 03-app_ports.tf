##Create applications security group
resource "aws_security_group" "app_sg" {
  name        = "app_sg"
  vpc_id            = "${var.aws_vpc_id}"
  description = "Allow all inbound traffic necessary for Halo apps"
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port   = 8083
      to_port     = 8083
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "app_sg"
  }
}
