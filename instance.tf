resource "aws_instance" "my-ec2" {
  ami                         = "ami-094125af156557ca2" # us-west-2
  instance_type               = "t2.micro"
  key_name               = aws_key_pair.key_pair.id
  tags = {
    "Name" : "my-ec2"
  }
  user_data = "${file("user-data.sh")}"
  provisioner "local-exec" {
    command = "echo ${aws_instance.my-ec2.public_ip} > publicIP.txt"
  }
  network_interface {
    device_index = 0
    network_interface_id = aws_network_interface.web-server-nic.id

  }
}