resource "aws_vpc" "main" {
  cidr_block       = "10.100.0.0/16"
  instance_tenancy = "dedicated"

  tags = {
    Name = "${var.prefix}-main-vpc"
  }
}