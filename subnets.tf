#Private Subnets
resource "aws_subnet" "dev-priv-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "priv-subnet"
  }
}

#Public Subnets
resource "aws_subnet" "dev-pub-subnet" {
  vpc_id            = aws_vpc.dev-vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "pub-subnet"
  }
}