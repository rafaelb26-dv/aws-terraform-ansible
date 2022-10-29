terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.19"

}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-017fecd1353bcc96e"
  instance_type = "t2.micro"
  key_name = "iac-alura"
  # user_data = <<-EOF
  #               #!/bin/bash
  #               cd /home/ubuntu
  #               echo “<h1>Ola Mundo</h1>” > index.js
  #               nohup busybox httpd -f -p 8080 &
  #               EOF

  tags = {
    Name = "Terraform-ansible pyhton"
  }
}