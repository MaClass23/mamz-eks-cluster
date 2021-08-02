terraform {
  backend "s3" {
    bucket = "terraform-mbucket"
    key    = "global/s3/terraform.tfstate"
    region = "us-west-1"

    dynamodb_table = "terraform-lock"
    encrypt  = true
  }
}
