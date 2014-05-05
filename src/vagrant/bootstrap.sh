#!/usr/bin/env bash

apt-get update > /dev/null
apt-get install -y zip unzip

apt-get install -y python-software-properties
add-apt-repository ppa:webupd8team/java
apt-get update > /dev/null

#echo debconf shared/accepted-oracle-license-v1-1 select true |  sudo debconf-set-selections
#echo debconf shared/accepted-oracle-license-v1-1 seen true |  sudo debconf-set-selections
#apt-get install -y oracle-java7-installer oracle-java7-set-default
apt-get install -y openjdk-6-jdk

export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64/


apt-get install -y redis-server

apt-get install -y xorg

echo "192.168.50.2 doms-testbed" >> /etc/hosts
echo "192.168.50.4 domsgui-testbed" >> /etc/hosts


#sudo su - vagrant -c "bash /vagrant/doms.sh"


