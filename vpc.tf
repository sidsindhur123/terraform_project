resource "aws_vpc" "prod-vpc" {
    cidr_block = var.aws_vpc_cidr
    enable_dns_support = "true"
    enable_dns_hostnames = "true" 
    enable_classiclink = "false"
    instance_tenancy = "default"    
    
}
