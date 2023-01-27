terraform {
  backend "s3" {
    bucket = "imran-terraform-state"
    key    = "terraform/backend"
    region = "us-east-1"
  }
}