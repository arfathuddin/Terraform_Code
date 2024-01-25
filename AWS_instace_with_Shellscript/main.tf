resource "aws_instance" "Ansible_VM" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from the EC2 instance!"
              sudo apt-add-repository ppa:ansible/ansible
              if [ $? -eq 0 ]; then
                  sudo apt install ansible
              fi
              if [ $? -eq 0 ]; then
                  echo " The ansible installation is done"
              fi
              EOF
  tags = {
    Name = "Ansible_server"
  }
}

