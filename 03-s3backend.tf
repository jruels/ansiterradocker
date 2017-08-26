terraform {
  backend "s3" {
    bucket = "jenkins-tf"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}
