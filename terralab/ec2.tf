# VARIABLES
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}
variable "key_name" {}
variable "region" {
  default = "us-east-1"
}

# PROVIDERS
provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.region
}


# RESOURCES
# Default VPC, it won't delete on destroy
resource "aws_default_vpc" "default" {

}

resource "aws_security_group" "allow_ssh_http_80" {
  name        = "allow_ssh_http"
  description = "Allow ssh on 22"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
ingress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example" {
  ami                    = "ami-042e8287309f5df03"
  instance_type          = "t2.micro"
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh_http_80.id]

 connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file(var.private_key_path)
  }


provisioner "local-exec" {
    working_dir= "/home/ubuntu/web_dev"
    command = "sudo docker exec mysql8  /usr/bin/mysqldump -u root --password=root timetable > backup.sql"
  }

  provisioner "file" {
    source      = "/home/ubuntu/web_dev"
    destination = "/tmp" 
  }
provisioner "remote-exec" {
    inline = [
      "sudo apt-get install ec2-instance-connect",
      "sudo apt-get update",
      "sudo apt-get -y install docker.io",
      "sudo apt -y install docker-compose",
      "cd /tmp/web_dev",
      "bash exec.sh",
      "sleep 30",
      "cat backup.sql | sudo docker exec -i mysql8 /usr/bin/mysql -u root --password=root timetable",
    ]
  }
}

