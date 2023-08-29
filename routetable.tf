resource "aws_route_table" "private_rt_01" {
  vpc_id = aws_vpc.dev_vpc_01.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw01.id
  }
  tags = {
    "Name" = "private_rt_01"
  }
}
resource "aws_route_table_association" "Public1" {
  subnet_id      = aws_subnet.private_subnet_01.id
  route_table_id = aws_route_table.private_rt_01.id
}
resource "aws_route_table_association" "Public2" {
  subnet_id      = aws_subnet.private_subnet_02.id
  route_table_id = aws_route_table.private_rt_01.id

}

resource "aws_route_table" "private_rt_02" {
  vpc_id = aws_vpc.dev_vpc_02.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw02.id
  }
  tags = {
    "Name" = "private_rt_02"
  }
}
resource "aws_route_table_association" "Public3" {
  subnet_id      = aws_subnet.private_subnet_03.id
  route_table_id = aws_route_table.private_rt_02.id
}
resource "aws_route_table_association" "Public4" {
  subnet_id      = aws_subnet.private_subnet_04.id
  route_table_id = aws_route_table.private_rt_02.id

}