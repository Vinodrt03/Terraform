provider "aws" {
access_key = "AKIAUWGMV37NSIXB2HBJ"
secret_key = "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"
region = "ap-south-1"
}
resource "aws_instance" "Web_server" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
