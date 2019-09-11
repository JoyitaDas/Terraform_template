terraform {
  backend "s3" {
    bucket = "joy-terraform-state-bucket"
    key    = "terraform.tfstate"
    region = "${var.region}"
    dynamodb_table = "joy-stateconfig-dynamodb"
  }
}