provider "aws" {
  region     = "us-east-1"
  secret_key = var.secret_key
  access_key = var.access_key
}

resource "aws_instance" "web-server" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "WEB"
  }
}