provider "aws" {
  region  = "us-east-1"
  version = "~> 2.61.0"
}

resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  key_name      = "mark-key"

  security_groups = [aws_security_group.web.name]

  tags = {
    Name = "TerraformTest"
  }
}

resource "aws_security_group" "web" {
  name        = "Allow SSH"
  description = "Allow SSH to EC2"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_public_dns" {
  value = aws_instance.web.public_dns
}
