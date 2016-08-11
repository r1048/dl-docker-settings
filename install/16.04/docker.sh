sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates -y --no-install-recommends
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

# add dockerproject link to an apt source
sudo rm -rf /etc/apt/sources.list.d/docker.list
sudo touch /etc/apt/sources.list.d/docker.list
echo deb https://apt.dockerproject.org/repo ubuntu-xenial main | sudo tee -a /etc/apt/sources.list.d/docker.list

# install prerequisites and docker
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-get install linux-image-extra-$(uname -r) -y --no-install-recommends
sudo apt-get install apparmor docker-engine -y --no-install-recommends

# start docker and run a hello-world image
sudo service docker start
sudo docker run hello-world
