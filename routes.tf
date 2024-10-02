#Private RouteTable
resource "aws_route_table" "dev-priv-rtable" {
  vpc_id = aws_vpc.dev-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "priv-rt"
  }  
}

#Public RouteTable
resource "aws_route_table" "dev-pub-rtable" {
  vpc_id = aws_vpc.dev-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev-igw.id
  }
  tags = {
    Name = "pub-subnet"
  }  
}

#Public RouteTable Association
resource "aws_route_table_association" "public_subnet_association" {
  subnet_id      = aws_subnet.dev-pub-subnet.id
  route_table_id = aws_route_table.dev-pub-rtable.id
}

#Private RouteTable Association
resource "aws_route_table_association" "private_subnet_association" {
  subnet_id      = aws_subnet.dev-priv-subnet.id
  route_table_id = aws_route_table.dev-priv-rtable.id
}