output "nat_gateway_ip" {
  value = aws_eip.ng_eip.public_ip
}
