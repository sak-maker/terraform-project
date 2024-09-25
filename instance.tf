resource "aws_instance" "prod_instance" {

    ami = "ami-08718895af4dfa033"
    instance_type = "t2.micro"
    associate_public_ip_address = true
    security_groups = [ aws_security_group.mini-project-sg.id ]

    count = 1
    subnet_id = aws_subnet.vpc_prod_subnet[0].id
    key_name = "IAM"
    tags = {
    Name = "terraform-ec2"
  }
  user_data = file(".install.sh")
}  