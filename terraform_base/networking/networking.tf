resource "aws_vpc" "main-vpc" {
  cidr_block = var.vpc_cidr_block
  enable_dns_hostnames = "true"
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id = aws_vpc.main-vpc.id
  cidr_block = var.subnet-1_cidr_block
  map_public_ip_on_launch = "true"
  tags = {
     Name = var.subnet-1_name
  }
}

resource "aws_internet_gateway" "igw" {
 vpc_id = aws_vpc.main-vpc.id
 tags = {
   Name = var.igw_name
 }
}

resource "aws_route_table" "my-route-table" {
 vpc_id = aws_vpc.main-vpc.id
 
 route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
 }
 
 tags = {
      Name = var.route_table_name
 }
 }

resource "aws_route_table_association" "my-route-association" {
  subnet_id = aws_subnet.subnet-1.id
  route_table_id = aws_route_table.my-route-table.id
}



