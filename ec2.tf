resource "aws_instance" "web-server" {
  ami           = "ami-06c8f2ec674c67112"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-demo-ec2"
    Owner = "terraform"
    Purpose = "demo"
    Environment = "dev"
  }
} 

resource "aws_eip" "eip-public-id" {
  instance = aws_instance.web-server.id
  domain   = "vpc"
}

