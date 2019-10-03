#!/bahs/bin


#download rmp

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm

sudo yum install -y jdk-8u141-linux-x64.rpm

#set path.

export JAVA_HOME=/usr/java/jdk1.8.0_141

export JRE_HOME=/usr/java/jdk1.8.0_141/jre

PATH=$PATH:$HOME/bin:$JAVA_HOME/bin


export PATH

# user this comment if you have more than one jdk installad.

#sudo alternatives --config java >> java_version_list.log

sudo yum update


# set up jenkins .

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key
sudo yum install jenkins -y

#Start Jenkins service.

sudo service jenkins start


#Sonar Qube installation. 

#download sonar queube. 

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.6.zip 


sudo unzip sonarqube-7.6.zip
sudo mv sonarqube-7.6 sonarqube

# And change the jdk locatio in wrapper.config file. as below.

# file present at <sonarqube_home>/conf

#wrapper.java.command=/path/to/my/jdk/bin/java

