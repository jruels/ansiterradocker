terraform {
  backend "s3" {
    bucket = "halo-tf"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
