resource "aws_instance" "ec2" {
  ami = "ami-06ca3ca175f37dd66"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0827c01ee4ba4d8aa"]
  tags = {
    name = "test"
  }
}


output "test" {

    value = aws_instance.ec2.public_ip
  
}