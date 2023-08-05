resource "aws_security_group" "sg" {
    vpc_id = aws_vpc.vpc1.id
    name = "ec2_sg"
    ingress  {
        description = "for Admins"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "103.41.98.134/32" ]
    }
    ingress  {
        description = "for End Users"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = [ "103.41.98.134/32" ]
    }
    egress{
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
        ipv6_cidr_blocks = [ "::/0" ]
    }

tags = {
 Name = "ec2_sg"
}
  
}