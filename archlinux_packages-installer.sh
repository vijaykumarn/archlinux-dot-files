#!/bin/bash

# Check if the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

# Array of packages to install
packages=(
	alacritty
	starship
	feh
	picom
	git
	github-cli
	lxappearance
	blueman
	thunar	
	xorg-xrandr
	pavucontrol
	ttf-jetbrains-mono-nerd
	xprop
 	bash-completion
	unzip
	zip
    rofi
	materia-gtk-theme
	docker
	docker-compose
	#minikube
	#kubectl
 	# Add more packages here
)

# Update package lists and upgrade installed packages
pacman -Syu --noconfirm

# Install packages from the array
for package in "${packages[@]}"; do
    pacman -S --noconfirm "$package"
done

# Install SDK
curl -s "https://get.sdkman.io" | bash

# Print a completion message
echo "Package installation complete."

# Enable services
systemctl enable bluetooth

# Remove unwanted packages
pacman --Rncs xterm

# Remove unused packages
pacman -Scc --noconfirm
echo "Removed unused packages"

# Post installation steps - Docker
systemctl enable docker
usermod -aG docker $USER && newgrp docker

# Print steps to install YAY manually
#echo '##############################################'
#echo 'Run the below commands to install YAY manually'
#echo 'sudo pacman -S --needed base-devel git'
#echo 'cd Downloads'
#echo 'git clone https://aur.archlinux.org/yay.git'
#echo 'cd yay'
#echo 'makepkg -si'
#echo 'yay --version'
#echo 'yay <search-package>'
#echo 'yay -S <package-name>'
#echo 'yay -Rns <package-name> '
#echo 'yay -Sua - To upgrade yay as well as packages installed with yay'
#echo 'sudo pacman -Rns yay - To remove yay'
#echo '#################################################'
