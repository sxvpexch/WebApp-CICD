data "terraform_remote_state" "network_details" {
 backend = "s3"
 config = {
  bucket = "student.7-khushi-bucket"
  key = "student.7-network-state"
  region = "us-east-1"
 }
}
