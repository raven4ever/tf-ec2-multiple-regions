data "aws_ami" "amazon-linux-2" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-ebs"]
  }
}

resource "aws_key_pair" "access_key" {
  key_name   = "access_key"
  public_key = file("/home/me/.ssh/id_rsa.pub")

  tags = {
    Name        = "RegionalSpeedTestKey"
    CreatedWith = "Terraform"
  }
}

resource "aws_instance" "instance" {
  ami             = data.aws_ami.amazon-linux-2.id
  instance_type   = "t3.micro"
  key_name        = "access_key"
  security_groups = [aws_security_group.ssh_ping_sg.name]

  root_block_device {
    delete_on_termination = true
  }

  tags = {
    Name        = "RegionalSpeedTest-${var.region}"
    CreatedWith = "Terraform"
  }
}
