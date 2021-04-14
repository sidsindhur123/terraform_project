resource "aws_subnet" "prv_sub_app" {
    vpc_id = aws_vpc.prod-vpc.id
    availability_zone = var.available_zone
    cidr_block = var.aws_sub2_cidr
}

resource "aws_route_table_association" "rta_prv_sub_app" {
  subnet_id = aws_subnet.prv_sub_app.id
  route_table_id = aws_route_table.rt_private.id
}
