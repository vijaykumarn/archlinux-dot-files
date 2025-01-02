# README

## Network Configuration

ip addr show

iwctl

device list

station wlan0 scan

station wlan0 get-networks

station wlan0 connect "IntelliSense" --- Enter password and exit using Ctrl+D

ip addr show 

ping www.archlinux.org

## Hyprland

I have installed the below packages manually

* waybar
* ttf-font-awesome
* starship
* podman
* podman-compose
* git
* less
* github-cli
* zip
* unzip
* chromium
* neovim
* bash-completion
* 

Here are the other AUR packages installed using makepkg -si command

* intellij
* code
* brave


Here the configuration that should go into .gitconfig

>> cat .gitconfig
```
[credential "https://github.com"]
	helper = 
	helper = !/usr/bin/gh auth git-credential
[credential "https://gist.github.com"]
	helper = 
	helper = !/usr/bin/gh auth git-credential
[user]
	email = vijaykumarn
	name = vijaykumarn
[init]
	defaultBranch = main
[core]
	excludesfile = /home/vikunalabs/.gitignore_global
	editor = nvim
```

Here's content for .gitignore_global
```
HELP.md
.gradle
build/
!gradle/wrapper/gradle-wrapper.jar
!**/src/main/**/build/
!**/src/test/**/build/

### STS ###
.apt_generated
.classpath
.factorypath
.project
.settings
.springBeans
.sts4-cache
bin/
!**/src/main/**/bin/
!**/src/test/**/bin/

### IntelliJ IDEA ###
.idea
*.iws
*.iml
*.ipr
out/
!**/src/main/**/out/
!**/src/test/**/out/

### NetBeans ###
/nbproject/private/
/nbbuild/
/dist/
/nbdist/
/.nb-gradle/

### VS Code ###
.vscode/
```
