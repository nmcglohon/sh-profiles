#!/bin/bash

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim -y
sudo apt-get install zsh -y
sudo apt-get install git -y
sudo apt-get install tmux -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#sudo curl -o /usr/local/bin/rmate https://raw.githubusercontent.com/aurora/rmate/master/rmate
#sudo chmod +x /usr/local/bin/rmate
#sudo mv /usr/local/bin/rmate /usr/local/bin/ratom

sudo chmod +x ./raspi-motd.sh
sudo ./raspi-motd.sh

sudo cp ./.zshrc ~/.zshrc
sudo cp ./.gitconfig ~/.gitconfig


#need to add ssh keys for github
