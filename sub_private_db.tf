resource "aws_subnet" "prv_sub_db" {
    vpc_id = aws_vpc.prod-vpc.id
    availability_zone = var.available_zone
    cidr_block = var.aws_sub3_cidr
}

resource "aws_route_table_association" "rta_prv_sub_db" {
  subnet_id = aws_subnet.prv_sub_db.id
  route_table_id = aws_route_table.rt_private.id
}
