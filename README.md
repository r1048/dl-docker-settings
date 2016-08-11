# dl-docker-settings
scripts and guide to easily setup the environment

## Useful resources
* [NVIDIA CUDA docker repository][link-cuda-repo]
* [Docker Installation Guide][link-docker-guide]

## Install NVIDIA driver
Please refer this [link][link-askubuntu]
* Download the latest driver from the nvidia website
* Remove all previous NVIDIA related pacakges: ```sudo apt-get purge nvidia-*```
* Hit ```CTRL + ALT + F1``` and login
* Kill your curent X server session: ```sudo service lightdm stop```
* Enter run level 3: ```sudo init 3```
* Install your *.run file: ```sudo bash *.run```
* Reboot: ```sudo reboot```

[link-askubuntu]: http://askubuntu.com/questions/149206/how-to-install-nvidia-run
[link-cuda-repo]: https://hub.docker.com/r/nvidia/cuda/
[link-docker-guide]: https://docs.docker.com/engine/installation/linux/ubuntulinux/
