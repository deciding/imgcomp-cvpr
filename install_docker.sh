#!/bin/bash

sudo apt-get update
sudo apt-get install \
        apt-transport-https \
            ca-certificates \
                curl \
                    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
          $(lsb_release -cs) \
             stable"

sudo apt-get update
sudo apt-get install docker-ce

sudo apt-get nvidia-375 nvidia-modprobe
#reboot

#curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | \
#      sudo apt-key add -
#distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
#curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | \
#      sudo tee /etc/apt/sources.list.d/nvidia-container-runtime.list
#sudo apt-get update
#sudo apt-get install nvidia-container-runtime
