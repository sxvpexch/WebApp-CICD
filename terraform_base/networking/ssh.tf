resource "aws_key_pair" "vm_ssh_key" {
  key_name = "student.7-vm-key"
  public_key = file("../keys/student.7-vm_key.pub")
}
