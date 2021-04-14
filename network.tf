resource "aws_internet_gateway" "prod-igw" {
    vpc_id = aws_vpc.prod-vpc.id
 
}

resource "aws_route_table" "prod-public-crt" {
    vpc_id = aws_vpc.prod-vpc.id

    route {
        //associated subnet can reach everywhere
        cidr_block = var.pub_rt_cidr
        //CRT uses this IGW to reach internet
        gateway_id = aws_internet_gateway.prod-igw.id
   }

}


resource "aws_eip" "ng_eip" {
  vpc = true
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.ng_eip.id
  subnet_id = aws_subnet.prod-subnet-public-1.id

}

resource "aws_route_table" "rt_private" {
  vpc_id = aws_vpc.prod-vpc.id
  route {
    cidr_block = var.prv_rt_cidr
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }
}
