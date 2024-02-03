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
}
