provisioner "remote-exec" {
        inline = [
          "sudo apt-get -qq install python -y",
        ]
         connection {
            host        = "${self.ipv4_address}"
            type        = "ssh"
            user        = "ubuntu"
            private_key = "${file("~/.ssh/id_rsa")}"
        }

    }

# Execute ansible playbooks using local-exec 
    provisioner "local-exec" {
        environment {
            PUBLIC_IP                 = "${self.ipv4_address}"
            PRIVATE_IP                = "${self.ipv4_address_private}"
            ANSIBLE_HOST_KEY_CHECKING = "False" 
        }
        working_dir = "playbooks/"
        command     = "ansible-playbook -u root --private-key ${var.ssh_key_private} -i ${self.ipv4_address}, wordpress_playbook.yml "
    }
}