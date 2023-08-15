#!/bin/bash
sudo yum update -y && 
sudo amazon-linux-extras install -y docker && 
sudo service docker start && 
sudo usermod -a -G docker ec2-user && 
sudo chkconfig docker on && 
sudo yum install -y git && 
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose && 
sudo chmod +x /usr/local/bin/docker-compose && 
docker-compose version && 
sudo curl -L https://raw.githubusercontent.com/mehmetCt/grid/main/docker-compose.yml -o /home/ec2-user/docker-compose.yml && 
sudo reboot
