data "terraform_remote_state" "network_details" {
 backend = "s3"
 config = {
  bucket = "student.7-khushi-bucket"
  key = "student.7-network-state"
  region = var.region
 }
}

module "webserver" {
 source = "./modules/linux_node"
 ami = "ami-0c7217cdde317cfec" 
 instance_type = "t2.micro"
 key_name = data.terraform_remote_state.network_details.outputs.my_key
 subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
 vpc_security_group_ids = data.terraform_remote_state.network_details.outputs.security_group_id_array
 tags = {
    Name = "student.7-vm1"
 }
}
