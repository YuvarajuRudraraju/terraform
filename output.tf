output "aws_vpc" {
  value = aws_vpc.dev-vpc.id
}

output "aws_subnet" {
  value = aws_subnet.dev-pub-subnet.id
}