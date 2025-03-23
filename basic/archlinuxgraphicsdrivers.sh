#!/bin/bash

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

# Array of packages to install
packages=(
  # Graphics Drivers
	intel-media-driver
	libva-intel-driver
	libva-mesa-driver
	mesa
	vulkan-intel
	vulkan-radeon
	xf86-video-amdgpu
	xf86-video-ati
  xf86-video-nouveau
	xf86-video-vmware
	xorg-server
	xrog-xinit
)

# Update package lists and upgrade installed packages
pacman -Syu --noconfirm

# Install packages from the array
pacman -S --noconfirm "${packages[@]}"

# Remove unused packages
pacman -Scc --noconfirm
echo "Removed unused packages"
