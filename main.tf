provider "aws" {
access_key = "Access"
secret_key = "Secrete"
region = "ap-south-1"
}
resource "aws_instance" "Web_server" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
