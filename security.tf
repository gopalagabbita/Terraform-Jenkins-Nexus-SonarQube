resource "aws_security_group" "private_sg_01" {
  vpc_id      = aws_vpc.dev_vpc_01.id
  name        = "private_sg_01"
  description = "Allow inbound and outbound rules"
  tags = {
    "Name" = "private_sg_01"
  }
  ingress {
    description = "allow inbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "allow outbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "private_sg_02" {
  vpc_id      = aws_vpc.dev_vpc_02.id
  name        = "private_sg_02"
  description = "Allow inbound and outbound rules"
  tags = {
    "Name" = "private_sg_02"
  }
  ingress {
    description = "allow inbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "allow outbound rules"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}