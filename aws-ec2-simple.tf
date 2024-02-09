terraform {
  source = "./aws-ec2-simple.tf"
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "vm" {
  ami           = "<ami>"
  subnet_id     = "<subnet>"
  instance_type = "t3.micro"
  tags = {
    Env = "dev"
  }
}
