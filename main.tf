provider "aws" {
access_key = "AKIAUWGMV37N5JOKMWHW"
secret_key = "jzY00p0CrLWCR9UJCP0+v0YWbeWLQixZxpWkAWa8"
region = "ap-south-1"
}
resource "aws_instance" "example" {
ami = "ami-040589e8273e08d6e"
instance_type = "t2.micro"
}
