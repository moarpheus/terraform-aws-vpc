resource "aws_vpc" "main_vpc" {
  cidr_block           = element(var.vpc_cidr, 0)
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "main_vpc"
  }
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "aws_vpc_dhcp_options" "vpc" {
  domain_name_servers = ["127.0.0.1", "AmazonProvidedDNS"]
  tags = {
    Name = "main-vpc-dhcp-options"
  }
}

resource "aws_vpc_dhcp_options_association" "vpc_dhcp" {
  vpc_id          = aws_vpc.main_vpc.id
  dhcp_options_id = aws_vpc_dhcp_options.vpc.id
}

resource "aws_internet_gateway" "vpc_igw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "main-vpc-igw"
  }
}

resource "aws_vpn_gateway" "vpn_gw" {
  vpc_id = aws_vpc.main_vpc.id
  tags = {
    Name = "main-vpc-vpn-gw"
  }
}
