data "terraform_remote_state" "network_details" {
 backend = "s3"
 config = {
  bucket = "student.7-khushi-bucket"
  key = "student.7-network-state"
  region = "us-east-1"
 }
}

resource "aws_instance" "my_vm" {
      ami = "ami-0c7217cdde317cfec"
      subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
      key_name = data.terraform_remote_state.network_details.outputs.my_key 
      instance_type = "t2.micro"
      tags = {
 	     Name = "student.7-vm1"
      }
}
