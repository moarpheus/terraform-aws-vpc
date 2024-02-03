output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "vpc_cidr_block" {
  value = var.vpc_cidr
}

output "vpn_gateway_id" {
  value = aws_vpn_gateway.vpn_gw.id
}

output "vpc_igw_id" {
  value = aws_internet_gateway.vpc_igw.id
}

output "vpc_dhcp_options_id" {
  value = aws_vpc_dhcp_options_association.vpc_dhcp.id
}

