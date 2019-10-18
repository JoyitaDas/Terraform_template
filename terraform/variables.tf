# Project level variables

variable "name" {
    default = "Joy-" 
}
variable "region" {
  default = "eu-west-1"
}

variable "environment" {
  description = "Environment being used"
  default = "dev"
}

variable "ami_id" {
  description = "AMI"
  default = "ami-0038837c7a57d6818"
}

variable "base_cidr_block" {
  default = "172.49.0.0/24"
}

variable "public_subnet1" {
    default = "172.49.0.0/27"
}
variable "private_subnet1" {
    default = "172.49.0.32/27"
}
variable "public_subnet2" {
  default = "172.49.0.64/27"
}

variable "private_subnet2" {
  default = "172.49.0.96/27"
}


variable "availability_zone1" {
    default = "eu-west-1a"
}
variable "availability_zone2" {
    default = "eu-west-1b"
}