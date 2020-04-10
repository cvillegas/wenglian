resource "aws_instance" "webserver" {
	ami 			= "ami-0fc20dd1da406780b" # ubuntu 18 LTS AMI (free tier)
	instance_type 	= "t2.micro"
    vpc_security_group_ids = [aws_security_group.wenliang.id]

    tags = {
        Name = "Webserver"
    }    


}

output "ec2instance" {
  value = aws_instance.webserver.public_ip
}
