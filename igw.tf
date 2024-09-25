resource "aws__internet_gateway" "igw_prod_vpc" {
  vpc_id = aws_vpc.mini-prod-vpc.id
  tags={
    Name="igw-prod-vpc"
  }
  lifecycle {
    ignore_changes = all 
  }
}