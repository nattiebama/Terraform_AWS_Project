resource "aws_instance" "web_server" {
  ami                    = var.ec2_image_id
  instance_type          = "var.instance_type"
  subnet_id              = aws_subnet.public_subnet_az2.id
  key_name               = "key2"
  vpc_security_group_ids = [aws_security_group.alb_security_group.id]
  user_data              = file("${path.module}/apache.sh")


  tags = {
    Name = "web_server"
  }
}