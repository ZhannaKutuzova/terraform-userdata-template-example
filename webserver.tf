provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_security_group" "my_webserver" {
  name        = "WebServer Security Group Lesson-4"
  description = "My First Security Group"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my_webserver" {
  ami                    = "ami-0418306302097dbff" # твоя AMI
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my_webserver.id]

  user_data = templatefile("user_data.sh.tpl", {
    f_name = "Zhanna",
    l_name = "Kutuzova",
    names  = ["Vasya", "Kolya", "Petya", "John", "Donald", "Masha"]
  })

 tags = {
    Name  = "Web Server Build by Terraform"
    Owner = "Zhanna Kutuzova"
  }
}

