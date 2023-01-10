provider "aws" {
  profile = "terraform"
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
  ami = "ami-0bba69335379e17f8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }

  user_data = <<EOF
  #!/bin/bash
  amazon-linux-extras install -y nginx1.12
  systemctl start nginx
  EOF
}
