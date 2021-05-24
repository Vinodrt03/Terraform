provider "aws" {
access_key = "AKIAUWGMV37N5OC3TXVL"
secret_key = "+gJgEJfYhLU028smjsuZdIoDoIWFWrjpGzrS2VJw"
region = "ap-south-1"
}
resource "aws_instance" "example" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
