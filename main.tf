provider "aws" {
access_key = "AKIAUWGMV37N5UNYORRL"
secret_key = "PsJ1UWqvNX45YlNeBIIjg6EP3Gff4lTIrkGXJDam"
region = "ap-south-1"
}
resource "aws_instance" "example" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
