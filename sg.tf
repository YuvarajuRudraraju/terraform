resource "aws_security_group" "dev-sg" {
  vpc_id = aws_vpc.dev-vpc.id
  name   = "Allow TCP Ports"

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "all ports"
    from_port   = 80
    protocol    = "tcp"
    to_port     = 80
  }

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
  }
}