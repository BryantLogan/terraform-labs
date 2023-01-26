variable "region" {
  default = "us-east-1"
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

variable "amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-0b5eea76982371e91"
    us-east-2 = "ami-0a606d8395a538502"
  }
}

variable "user" {
  default = "ec2-user"
}

variable "pub_key" {
  default = "dovekey.pub"
}

variable "priv_key" {
  default = "dovekey"
}

variable "myip" {
  type = string
}