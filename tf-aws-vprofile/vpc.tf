module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name            = var.vpc_name
  cidr            = var.vpc_cidr
  azs             = [var.zone1, var.zone2, var.zone3]
  public_subnets  = [var.pubsubcidr1, var.pubsubcidr2, var.pubsubcidr3]
  private_subnets = [var.privsubcidr1, var.privsubcidr2, var.privsubcidr3]

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Terraform   = "true"
    Environment = "Prod"
  }

  vpc_tags = {
    Name = var.vpc_name
  }
}