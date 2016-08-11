# dl-docker-settings
scripts and guide to easily setup the environment

## install nvidia driver
Please refer this [link](http://askubuntu.com/questions/149206/how-to-install-nvidia-run)
* download the latest driver from the nvidia website
* ```sudo apt-get purge nvidia-*```
* hit ```CTRL + ALT + F1``` and login
* kill your curent X server session: ```sudo service lightdm stop```
* enter run level 3: ```sudo init 3```
* install your *.run file: ```sudo bash *.run```
* reboot: ```sudo reboot```
