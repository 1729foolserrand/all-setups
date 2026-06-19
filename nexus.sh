sudo yum update -y
sudo yum install wget -y
sudo yum install java-21-amazon-corretto-jmods -y
sudo mkdir /app && cd /app
sudo wget https://download.sonatype.com/nexus/3/nexus-3.93.0-06-linux-x86_64.tar.gz
sudo tar -xvf nexus-3.93.0-06-linux-x86_64.tar.gz
sudo adduser nexus
sudo chown -R nexus:nexus /app/nexus-3.93.0-06
sudo chown -R nexus:nexus /app/sonatype-work
sudo su - nexus


#manual
cd /app/nexus-3.93.0-06/bin/
./nexus start
