#!/bin/bash

# Install kernel headers and dev packages
sudo dnf -y install kernel-devel-$(uname -r) kernel-headers-$(uname -r)

# Download and run installer for Linux Fedora 33 x86_64
wget https://developer.download.nvidia.com/compute/cuda/11.2.0/local_installers/cuda-repo-fedora33-11-2-local-11.2.0_460.27.04-1.x86_64.rpm
sudo rpm -i cuda-repo-fedora33-11-2-local-11.2.0_460.27.04-1.x86_64.rpm
sudo dnf clean all
sudo dnf -y module install nvidia-driver:latest-dkms
sudo dnf -y install cuda

## If RPMFusion non-free repo is enabled, use this to disable
# sudo dnf --disablerepo="rpmfusion-nonfree*" install cuda

## May need to rebuild grub config if non-default partition scheme
# sudo grub2-mkconfig -o /boot/grub2/grub.cfg
