terraform {
  backend "s3" {
     bucket = "student.7-khushi-bucket"
     key = "student.7-network-state"
     region = "us-east-1"
  }
}
