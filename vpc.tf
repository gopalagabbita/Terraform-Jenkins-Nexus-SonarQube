resource "aws_vpc" "dev_vpc_01" {
  cidr_block           = "10.30.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "dev_vpc_01"
  }
}
resource "aws_internet_gateway" "igw01" {
  vpc_id = aws_vpc.dev_vpc_01.id
  tags = {
    "Name" = "dev_vpc_01_igw1"
  }
}

resource "aws_vpc" "dev_vpc_02" {
  cidr_block           = "10.40.0.0/16"
  enable_dns_hostnames = true
  tags = {
    "Name" = "dev_vpc_02"
  }
}
resource "aws_internet_gateway" "igw02" {
  vpc_id = aws_vpc.dev_vpc_02.id
  tags = {
    "Name" = "dev_vpc_02_igw2"
  }
}