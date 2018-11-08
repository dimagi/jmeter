sudo apt-get update
sudo apt-get install -y python-dev python-pip libffi-dev libssl-dev git

ssh-keyscan 192.168.33.2 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan 192.168.33.3 >> /home/vagrant/.ssh/known_hosts
ssh-keyscan 192.168.33.4 >> /home/vagrant/.ssh/known_hosts
sudo chown vagrant:vagrant /home/vagrant/.ssh/known_hosts

sudo pip install virtualenv virtualenvwrapper
