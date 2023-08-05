resource "aws_eip" "nat_gateway" {
  # vpc = true
  domain = "vpc"
}
resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat_gateway.id
    subnet_id = aws_subnet.pub_sub.id
  
}