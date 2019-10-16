# Project level variables

variable "name" {
    default = "Joy-" 
}
variable "region" {
  default = "eu-west-1"
}

variable "deploy_region" {
  default = "eu-west-1"
}

variable "costcode_tag" {
  description = "Costcode tag"
  default     = "10389392"
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
  default = "10.83.104.0/24"
}

variable "cidr_block_public" {
    default = "10.83.104.0/24"
}
variable "cidr_block_private" {
    default = "10.83.104.65/24"
}
variable "availability_zone1" {
    default = "eu-west-1a"
}
variable "availability_zone2" {
    default = "eu-west-1b"
}