output "my_vpc" {
 value = aws_vpc.main-vpc.id
}

output "my_subnet" {
 value = aws_subnet.subnet-1.id
}

output "my_gateway" {
 value = aws_internet_gateway.igw.id
}

output "my_route_table" {
 value = aws_route_table.my-route-table.id
}

output "my_route_table_association" {
 value = aws_route_table_association.my-route-association.id
}
