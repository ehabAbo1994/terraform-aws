# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "myvpc"
  }

}

# creating a subnet
resource "aws_subnet" "my-subnet-1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
  tags = {
    Name = "my-subnet-1a"
  }
}


resource "aws_internet_gateway" "my-ig" {
  vpc_id = aws_vpc.myvpc.id
  
  tags = {
    Name = "Internet Gateway"
  }
}
resource "aws_route" "internet-route" {
  destination_cidr_block = "0.0.0.0/0"
  route_table_id = aws_route_table.public_rt.id
  gateway_id = aws_internet_gateway.my-ig.id
}
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my-ig.id
  }

  tags = {
    Name = "Public Route Table"
  }
}
resource "aws_route_table_association" "public_1_rt_a" {
  subnet_id      = aws_subnet.my-subnet-1.id
  route_table_id = aws_route_table.public_rt.id
}
#create a network interfae
resource "aws_network_interface" "web-server-nic" {
  subnet_id       = aws_subnet.my-subnet-1.id
  security_groups = [aws_security_group.my-sg.id]

 
}