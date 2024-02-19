variable "subnet-1_cidr_block" {
 default = "10.7.0.0/24"
}

variable "region" {
 default = "us-east-1"
}

variable "profile" {
 default = "student.7"
}

variable "vpc_cidr_block" {
 default = "10.7.0.0/16"
}

variable "vpc_name" {
 default = "student.7-vpc"
}

variable "subnet-1_name" {
 default = "student.7-subnet-1"
}

variable "igw_name" {
 default = "student.7-igw"
}

variable "route_table_name" {
 default = "student.7-route-table"
}

variable "security_group_name" {
 default = "student.7-security-group"
}

variable "key_name" {
 default = "student.7-vm-key"
}

