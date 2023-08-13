resource "null_resource" "remote"{
connection {
       type = "ssh"
       user = "ec2-user"
       private_key = var.ec2_private_key
       host  = aws_instance.instance.public_ip
}
provisioner "remote-exec" {
         inline = [
                       "sudo yum install httpd -y",
                       "sudo yum install git -y",
                       "sudo systemctl enable httpd",
                       "sudo git clone https://github.com/ginloen/terraformdemosite.git /var/www/html",
                       "sudo systemctl start httpd"
                  ]
  }
}
