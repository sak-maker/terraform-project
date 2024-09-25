output "ec2-ip" {
    value = aws_instance.prod_instance[0].public_ip

  
}