variable "AWS_REGION" {    
    default = "eu-west-2"
}

variable "available_zone" {
    default = "eu-west-2a"
}

variable "aws_vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "pub_rt_cidr" {
    default = "0.0.0.0/0"
}

variable "prv_rt_cidr" {
    default = "0.0.0.0/0"
}

variable "aws_sub1_cidr" {
    default = "10.0.1.0/24"
}

variable "aws_sub2_cidr" {
    default = "10.0.2.0/24"
}

variable "aws_sub3_cidr" {
    default = "10.0.3.0/24"
}

variable "instance_image" {
    default = "ami-0fbec3e0504ee1970"
}

variable "ins_type" {
    default = "t2.micro"
}

variable "instance_count" {
    default = 2
}
