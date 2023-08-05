resource "aws_instance" "ec2" {
    ami =  var.ami
    instance_type = var.type
    user_data = file("nginx.sh")
    subnet_id = aws_subnet.pub_sub.id
    vpc_security_group_ids = [aws_security_group.sg.id]
     key_name = var.key_pair
    tags = {
      Name="Terraform"
    }

}