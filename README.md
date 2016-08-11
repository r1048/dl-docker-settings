# dl-docker-settings
scripts and guide to easily setup the environment

## Sequence of an environment setup
Note that most of scripts were slightly modified from [link-dl-docker]

### Install prerequisites: docker, nvidia driver, and nvidia-docker
* Get install scripts on this repository: ```git clone https://github.com/r1048/dl-docker-settings```
* Install packages according to the README and scripts

### Build docker images based on ubuntu/16.04, CUDA 8.0, cudnn 5
* Build docker images sequentially: cuda8.0-cudnn5-devel, torch-hdf5-cudnn5
* ```sudo docker build -t r1048/${image_name}:${tag_name} -f ${dockerfile_name}```
  * ```sudo docker build -t r1048/cuda:8.0-cudnn5-devel -f ~/dl-docker-settings/build/cuda8.0-cudnn5-devel```
  * ```sudo docker build -t r1048/torch:hdf5-cudnn5 -f ~/dl-docker-settings/build/torch-hdf5-cudnn5```

## Useful resources
* [NVIDIA CUDA Docker Repository][link-cuda-repo]
* [Docker Installation Guide][link-docker-guide]
* [All-in-one Docker Image for Deep Learning][link-dl-docker]
* [Setting up a Deep Learning Machine from Scratch][link-dl-setup]

## Install NVIDIA driver
Please refer this [link][link-askubuntu]
* Download the latest driver from the nvidia website
* Remove all previous NVIDIA related pacakges: ```sudo apt-get purge nvidia-*```
* Hit ```CTRL + ALT + F1``` and login
* Kill your curent X server session: ```sudo service lightdm stop```
* Enter run level 3: ```sudo init 3```
* Install your *.run file: ```sudo bash *.run```
* Reboot: ```sudo reboot```

## Change a mirror (to a JAIST server)
```sudo sed -i s/kr.archive.ubuntu.com/ftp.jaist.ac.jp/g /etc/apt/sources.list```

[link-askubuntu]: http://askubuntu.com/questions/149206/how-to-install-nvidia-run
[link-cuda-repo]: https://hub.docker.com/r/nvidia/cuda/
[link-docker-guide]: https://docs.docker.com/engine/installation/linux/ubuntulinux/
[link-dl-docker]: https://github.com/saiprashanths/dl-docker
[link-dl-setup]: https://github.com/saiprashanths/dl-setup
[link-torch-hdf5]: https://github.com/deepmind/torch-hdf5
