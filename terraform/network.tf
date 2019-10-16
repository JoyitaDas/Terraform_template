# Creating a VPC with CIDR , taking VPC as an input dynamically- 
# ${cidrsubnet(var.base_cidr_block, 4, lookup(var.region_numbers, var.region))}"

resource "aws_vpc" "joy-vpc" {
    cidr_block = "${var.base_cidr_block}"
    tags = {
      name = "joy-vpc-tf"
    }
}

resource "aws_internet_gateway" "joy-igw" {
    vpc_id = "${aws_vpc.joy-vpc.id}"
    tags = {
        name = "joy-igw-tf"
    }
}

resource "aws_eip" "joy-eip" {
    tags = {
        name = "joy-eip-tf"
    }
}

## creating the public ad private subnet
resource "aws_subnet" "joy-public-subnet1" {
    vpc_id="${aws_vpc.joy-vpc.id}"
    cidr_block="${var.cidr_block_public}"
    availability_zone="${var.availability_zone1}"
}
resource "aws_subnet" "joy-private-subnet1" {
    vpc_id="${aws_vpc.joy-vpc.id}"
    cidr_block="${var.cidr_block_private}"
    availability_zone="${var.availability_zone1}"
}

resource "aws_route_table" "joy_route_table1" {
  vpc_id="${aws_vpc.joy-vpc-vpc.id}"
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.joy-igw.id}"
  }

}

resource "aws_route_table_association" "public" {
    subnet_id="${aws_subnet.joy-public-subnet1.id}"
    route_table_id="${aws_route_table.joy_route_table1.id}"
}


resource "aws_route_table_association" "private" {
    subnet_id="${aws_subnet.joy-private-subnet1.id}"
    route_table_id="${aws_route_table.joy_route_table1.id}"
}