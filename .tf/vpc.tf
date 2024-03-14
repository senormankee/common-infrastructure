resource "aws_vpc" "main" {
  cidr_block = "172.31.0.0/16" # Update with your desired CIDR block

  tags = {
    Name = "MainVPC"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "MainInternetGateway"
  }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.31.0.0/20"
  availability_zone = "${var.region}a"

  tags = {
    Name = "Subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.31.16.0/20" 
  availability_zone = "${var.region}b"

  tags = {
    Name = "Subnet2"
  }
}

resource "aws_subnet" "subnet3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "172.31.32.0/20" 
  availability_zone = "${var.region}c" 

  tags = {
    Name = "Subnet3"
  }
}
