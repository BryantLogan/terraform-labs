variable "aws_region" {
  default = "us-east-1"
}

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-0778521d914d23bc1"
    us-east-2 = "ami-00149760ce42c967b"
    us-west-2 = "ami-04bad3c587fe60d89"
  }
}

variable "priv_key_path" {
  default = "vprofilekey"
}

variable "pub_key_path" {
  default = "vprofilekey.pub"
}

variable "username" {
  default = "ubuntu"
}

variable "myip" {
  type = string
}

variable "rmquser" {
  type = string
}

variable "rmqpass" {
  type = string
}

variable "db_user" {
  type = string
}

variable "db_pass" {
  type = string
}

variable "db_name" {
  type = string
}

variable "instance_count" {
  default = "1"
}

variable "vpc_name" {
  default = "vprofile-VPC"
}

variable "zone1" {
  default = "us-east-1a"
}

variable "zone2" {
  default = "us-east-1b"
}

variable "zone3" {
  default = "us-east-1c"
}

variable "vpc_cidr" {
  default = "172.21.0.0/16"
}

variable "pubsubcidr1" {
  default = "172.21.1.0/24"
}

variable "pubsubcidr2" {
  default = "172.21.2.0/24"
}

variable "pubsubcidr3" {
  default = "172.21.3.0/24"
}

variable "privsubcidr1" {
  default = "172.21.4.0/24"
}

variable "privsubcidr2" {
  default = "172.21.5.0/24"
}

variable "privsubcidr3" {
  default = "172.21.6.0/24"
}
