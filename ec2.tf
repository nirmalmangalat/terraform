provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"
  key_name = "NIrmal-Key"

  tags = {
    Name = "NIrmaldevops"
    env = "test"
  }
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> /root/ansilist"
  }
}
