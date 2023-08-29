resource "aws_eip" "eip-01" {
  domain = "vpc"
  tags = {
    "Name" = "eip-01"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "ngw-01" {
  allocation_id = aws_eip.eip-01.id
  subnet_id     = aws_subnet.private_subnet_01.id

  tags = {
    "Name" = "ngw-01"
  }
}

resource "aws_eip" "eip-02" {
  domain = "vpc"
  tags = {
    "Name" = "eip-02"
  }
}

# NAT Gateway
resource "aws_nat_gateway" "ngw-02" {
  allocation_id = aws_eip.eip-02.id
  subnet_id     = aws_subnet.private_subnet_03.id

  tags = {
    "Name" = "ngw-02"
  }
}