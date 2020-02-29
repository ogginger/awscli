from ubuntu:latest

run apt-get update && apt-get install -y \
curl \
vim \
unzip

run curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/root/awscliv2.zip" && \
unzip /root/awscliv2.zip -d /root/ && /root/aws/install

workdir /home

