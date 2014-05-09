#!/usr/bin/env bash 
sudo su
echo "set grub-pc/install_devices /dev/sda" | debconf-communicate

sudo echo "export LANGUAGE=en_US.UTF-8" >> /etc/bash.bashrc
sudo echo "export LANG=en_US.UTF-8"  >> /etc/bash.bashrc
sudo echo "export LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc

sudo echo "LANGUAGE=en_US.UTF-8" > /etc/default/locale
sudo echo "LANG=en_US.UTF-8"  >> /etc/default/locale
sudo echo "LC_ALL=en_US.UTF-8" >> /etc/default/locale

sudo update-locale LANG=en_US.UTF-8
sudo dpkg-reconfigure locales  

sudo . /etc/default/locale

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install postgresql -y
sudo su
sudo -u postgres psql -l

sudo reboot

sudo apt-get install python-dev libpq-dev python-pip python-virtualenv git-core solr-jetty openjdk-6-jdk -y

echo "c'est finit!"

#mkdir -p ~/ckan/lib
#sudo ln -s ~/ckan/lib /usr/lib/ckan
#mkdir -p ~/ckan/etc
#sudo ln -s ~/ckan/etc /etc/ckan

#sudo mkdir -p /usr/lib/ckan/default
#sudo chown `whoami` /usr/lib/ckan/default
#virtualenv --no-site-packages /usr/lib/ckan/default
#. /usr/lib/ckan/default/bin/activate

#pip install -e 'git+https://github.com/ckan/ckan.git#egg=ckan'

#pip install -r /usr/lib/ckan/default/src/ckan/requirements.txt

#deactivate
#. /usr/lib/ckan/default/bin/activate

#sudo -u postgres createuser -S -D -R -P ckan_default

#sudo -u postgres createdb -O ckan_default ckan_default -E utf-8

#sudo mkdir -p /etc/ckan/default
#sudo chown -R `whoami` /etc/ckan/

#cd /usr/lib/ckan/default/src/ckan
#paster make-config ckan /etc/ckan/default/development.ini

