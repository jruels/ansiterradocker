terraform {
  backend "s3" {
    bucket = "tf-jenkins"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}