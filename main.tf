provider "aws" {
access_key = "AKIAUWGMV37N5JOKMWHW"
secret_key = "jzY00p0CrLWCR9UJCP0+v0YWbeWLQixZxpWkAWa8"
region = "ap-south-1"
}
resource "aws_instance" "example" {
ami = "ami-06a0b4e3b7eb7a300"
instance_type = "t2.micro"
}
