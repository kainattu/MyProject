#Sonar Qube installation.

#download sonar queube.

sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.6.zip


sudo unzip sonarqube-7.6.zip
sudo mv sonarqube-7.6 sonarqube

# And change the jdk locatio in wrapper.config file. as below if required.
# file present at <sonarqube_home>/conf

#wrapper.java.command=/path/to/my/jdk/bin/java

# start sonar qube with :9000 port. 
 sudo sh sonarqube/bin/linux-x86-64/sonar.sh console



