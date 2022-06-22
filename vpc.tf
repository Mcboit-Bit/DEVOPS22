resource "aws_vpc" "terraform-vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "custom-vpc"
    Env = "Dev"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "custom-vpc-subnet-1"
    Env = "Dev"
  }
}

resource "aws_subnet" "subnet-2" {
  vpc_id     = aws_vpc.terraform-vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "custom-vpc-subnet-2"
    Env = "Dev"
  }
}

# This block is for attaching an IGW to a new VPC.

resource "aws_internet_gateway" "inspirators-gw" {
  vpc_id = aws_vpc.terraform-vpc.id

  tags = {
    Name = var.mymap["Key1"]
    Env  = var.mymap["Key2"]
    Region = var.mymap["Key3"]
  }
}

# This block is for attaching an IGW to an already existing VPC.

/* resource "aws_internet_gateway_attachment" "inspirator-igw-attach" {
  internet_gateway_id = aws_internet_gateway.inspirators-gw.id
  vpc_id              = aws_vpc.terraform-vpc.id
} */
