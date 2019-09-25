#!/bin/bash
 
# Pull latest container, at the first time.

 
if [ $(docker images jenkins/jenkins -q) ]; 
then
   echo "image present So using local images."
else
   echo "image not presents, So about to download"
	docker pull jenkins/jenkins
fi
# Setup local configuration folder
# Should already be in a jenkins folder when running this script.
#export CONFIG_FOLDER=$PWD/config
#mkdir $CONFIG_FOLDER
#chown 1000 $CONFIG_FOLDER

# Remove the Local volume mappign if present 
rm -R $HOME/jenkins
mkdir $HOME/jenkins

# Start container

if [ $(docker ps --filter "name=condescending_albattani" -q) ]; 
then
   echo "Container is running..."
else
 docker run -d -p 49001:8080 -v $HOME/jenkins:/var/jenkins_home:z -t  jenkins/jenkins
  echo "Container is starting..."
fi

# -e http_proxy='http://proxy.com:8080' \
# -e https_proxy='http://proxy.com:8080' \

 
#docker logs --follow jenkins
