data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "ssh_ping_sg" {
  name        = "ssh_ping_sg"
  description = "SshPingSG"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    description = "Ping"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "SshPingSG"
    CreatedWith = "Terraform"
  }
}
