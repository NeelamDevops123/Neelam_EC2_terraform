resource "aws_security_group" "ec2_demo_sg" {
  name        = "ec2_demo_allow_http_sg_tfdemo"
  description = "Allow HTTP inbound traffic"

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  

  tags = {
    Name = "allow_http"
  }
}