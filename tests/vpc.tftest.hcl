# Apply run block to create the bucket
run "create_bucket" {
  variables {
    vpc_cidr = ["10.0.0.0/16"]
  }

  # Check that the bucket name is correct
  assert {
    condition     = aws_vpc.main_vpc.tags_all["Name"] == "main_vpc"
    error_message = "Incorrect vpc name"
  }

  # Check all expected outputs
  assert {
    condition = output.vpc_id != null
    error_message = "VPC id is not the output"
  }

  assert {
    condition = output.vpc_cidr_block[0] == "10.0.0.0/16"
    error_message = "vpc_cidr_block"
  }

  assert {
    condition = output.vpn_gateway_id != null
    error_message = "vpn_gateway_id is not the output"
  }

  assert {
    condition = output.vpc_igw_id != null
    error_message = "vpc_igw_id is not the output"
  }

  assert {
    condition = output.vpc_dhcp_options_id != null
    error_message = "vpc_dhcp_options_id is not the output"
  }
}
