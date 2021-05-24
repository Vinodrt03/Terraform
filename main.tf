provider "aws" {
access_key = "AKIAUWGMV37N76BT3UPA"
secret_key = "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"
region = "ap-south-1"
}
resource "aws_instance" "Web_server" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
