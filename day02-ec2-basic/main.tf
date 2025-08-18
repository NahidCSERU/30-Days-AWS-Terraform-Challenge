provider "aws" {
  region = var.aws_region
}
# Get default VPC (most beginners use this)
data "aws_vpc" "default" {
  default = true
}

# Get default subnet
data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}