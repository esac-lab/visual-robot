#!/usr/bin/env sh

# Install CUDA 10 by deb(network)
# If you encounter network problem, consider install CUDA 10 by deb(local).
# See https://developer.nvidia.com/cuda-downloads?target_os=Linux&target_arch=x86_64&target_distro=Ubuntu&target_version=1804&target_type=deblocal

DOWNLOAD_URL="https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb"
DEB_FILE="/tmp/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb"
KEY_URL="https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub"

wget $DOWNLOAD_URL -O $DEB_FILE
sudo dpkg -i $DEB_FILE
sudo apt-key adv --fetch-keys $KEY_URL
sudo apt update
sudo apt install cuda -y
