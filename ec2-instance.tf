resource "aws_instance" "web1" {
    ami = var.instance_image
    instance_type = var.ins_type
    count = var.instance_count
    # VPC
    subnet_id = aws_subnet.prod-subnet-public-1.id
}
