resource "null_resource" "webserver_provisioner" {
  triggers = {
    public_ip = aws_instance.webserver.public_ip
  }

  connection {
    type  = "ssh"
    host  = aws_instance.webserver.public_ip
    user  = var.ssh_user
    port  = var.ssh_port
    agent = true
 #               private_key = "${file("../voluntarios_aws.pem")}"
 
  }

  // copy our example script to the server
  #provisioner "file" {
  #  source      = "files/get-public-ip.sh"
  #  destination = "/tmp/get-public-ip.sh"
  #}

  // change permissions to executable and pipe its output into a new file
  /*
  provisioner "remote-exec" {
    inline = [
      "echo 'Hello World'",
    ]
  }

  provisioner "local-exec" {
    # run locallly 
    #command = "ansible-playbook -u root --private-key var.ssh_key_private -i aws_instance.webserver.public_ip, el_playbook.yml"
    command = "dir"
  }
  */
}





    # Execute ansible playbooks using local-exec 
#    provisioner "local-exec" {
#            environment {
#                PUBLIC_IP                 = self.ipv4_address
#                PRIVATE_IP                = self.ipv4_address_private
#                ANSIBLE_HOST_KEY_CHECKING = "False" 
#            }
#            working_dir = "playbooks/"
#            command     = "ansible-playbook -u root --private-key ${var.ssh_key_private} -i ${self.ipv4_address}, wordpress_playbook.yml "
#    }
