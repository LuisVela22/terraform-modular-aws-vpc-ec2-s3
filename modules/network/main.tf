resource "aws_vpc" "main" {
    cidr_block = var.vpc_cidr_block
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = merge(var.tags,  {
        Name = "${var.name_prefix}-vpc"
    })
}

resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.public_subnet_cidr
    availability_zone = var.az
    map_public_ip_on_launch = true
    tags = merge(var.tags, {
        Name = "${var.name_prefix}-public-subnet"
    })
}