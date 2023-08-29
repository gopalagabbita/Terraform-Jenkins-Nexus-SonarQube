resource "aws_subnet" "private_subnet_01" {
  vpc_id                  = aws_vpc.dev_vpc_01.id
  cidr_block              = "10.30.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "private_subnet_01"
  }
}
resource "aws_subnet" "private_subnet_02" {
  vpc_id                  = aws_vpc.dev_vpc_01.id
  cidr_block              = "10.30.2.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "private_subnet_02"
  }
}

resource "aws_subnet" "private_subnet_03" {
  vpc_id                  = aws_vpc.dev_vpc_02.id
  cidr_block              = "10.40.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "private_subnet_03"
  }
}
resource "aws_subnet" "private_subnet_04" {
  vpc_id                  = aws_vpc.dev_vpc_02.id
  cidr_block              = "10.40.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "private_subnet_04"
  }
}