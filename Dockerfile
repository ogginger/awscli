from ubuntu:latest

run apt-get update && apt-get install -y \
curl \
vim \
unzip \
gnupg \
software-properties-common

run curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/root/awscliv2.zip" && \
unzip /root/awscliv2.zip -d /root/ && /root/aws/install

run curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
 run add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" && apt-get update && apt-get install -y docker-ce

run mkdir /home/project
volume ["/home/project"]
workdir /home/project

