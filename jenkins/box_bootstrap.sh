#!/bash/bin

# its it for only Rethat family not for Debian OS family

sudo yum update -y
sudo yum install tree -y

sudo yum install docker -y


#start docker deman.
sudo service docker start


#adding docker group and enable permistions to docker for current user.


sudo groupadd docker
sudo usermod -aG docker $USER

# to avoid restart linux terminal session.
newgrp docker
