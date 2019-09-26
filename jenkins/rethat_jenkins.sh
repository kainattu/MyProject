#1/bash/bin

echo $HOME

mkdir $HOME/jenkins_drive

docker run \
  --rm \
  -d \
  -p 8080:8080 \
  -p 50000:50000 \
  -v $HOME/jenkins_drive:/var/jenkins_home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  jenkinsci/blueocean
