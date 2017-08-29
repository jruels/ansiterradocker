##General vars
variable "ssh_user" {
  default = "ubuntu"
}
variable "public_key_path" {
  default = "/Users/jruels/.ssh/halo_dev.pem"
}
variable "private_key_path" {
  default = "/Users/jruels/.ssh/halo_dev.pem"
}
##AWS Specific Vars
variable "aws_worker_count" {
  default = 2
}
variable "aws_key_name" {
  default = "jason"
}
variable "aws_instance_size" {
  default = "t2.micro"
}
variable "aws_region" {
  default = "us-east-1"
}
variable "aws_vpc_id" {
  default = "vpc-13845577"
}
variable "aws_subnet_id" {
  default = "subnet-24a4b753"
}
##GCE Specific Vars
variable "gce_worker_count" {
  default = 1
}
variable "gce_creds_path" {
  default = "/Users/spencer/gce-creds.json"
}
variable "gce_project" {
  default = "test-project"
}
variable "gce_region" {
  default = "us-central1"
}
variable "gce_instance_size" {
  default = "n1-standard-1"
}
