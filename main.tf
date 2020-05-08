provider "aws" {
  region  = "us-east-1"
  version = "~> 2.61.0"
}

resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformTest"
  }
}
