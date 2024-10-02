provider "aws" {
  region     = "us-east-1"
}

variable "aws_access_key" {}

variable "aws_secret_key" {}

resource "aws_instance" "dev" {
  ami                    = "ami-090fa75af13c156b4"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.dev-sg.id]
  subnet_id              = aws_subnet.dev-pub-subnet.id
}