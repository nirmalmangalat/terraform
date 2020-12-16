provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myawsserver" {
  ami = "ami-01e36b7901e884a10"
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
