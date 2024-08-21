resource "aws_vpc" "testvpc" {
  cidr_block           = "10.100.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "terraform-vpc"
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.testvpc.id
  tags = {
    Name = "Terraform_IGW"
  }
}

resource "aws_subnet" "testsubnet" {
  vpc_id = aws_vpc.testvpc.id
  cid_block = "10.100.1.0/24"
   tags = {
    Name = "terraform-subnet-1"
  }
}

resource "aws_subnet" "testsubnet-2" {
  vpc_id = aws_vpc.testvpc.id
  cid_block = "10.100.2.0/24"
   tags = {
    Name = "terraform-subnet-2"
  }
}
