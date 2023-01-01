# --- networking / main.tf ---
resource "random_integer" "rand" {
  min = 0
  max = 100
}

resource "aws_vpc" "demo_vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
        Name = "DemoVPC"
    }
}

# Create 2 public subnets
resource "aws_subnet" "pubsub_a" {
    vpc_id = var.vpc_id.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-east-1a"

    tags = {
        Name = "PublicSubnetA"
    }
}

resource "aws_subnet" "pubsub_b" {
    vpc_id = var.vpc_id.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1b"

    tags = {
        Name = "PublicSubnetB"
    }
}

# Create 2 private subnets
resource "aws_subnet" "privsub_a" {
    vpc_id = var.vpc_id.id
    cidr_block = "10.0.16.0/20"
    availability_zone = "us-east-1a"

    tags = {
        Name = "PrivateSubnetA"
    }
}

resource "aws_subnet" "privsub_b" {
    vpc_id = var.vpc_id.id
    cidr_block = "10.0.32.0/20"
    availability_zone = "us-east-1b"

    tags = {
        Name = "PrivateSubnetB"
    }
}
