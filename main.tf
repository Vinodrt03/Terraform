provider "aws" {
access_key = "AKIAUWGMV37N27U43AUR"
secret_key = "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"
region = "ap-south-1"
}
resource "aws_instance" "Web_server" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
}
