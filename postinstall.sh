#!/bin/bash

sudo pacman -Syu

sudo pacman -S --needed git base-devel --noconfirm


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay
 
yay -S autofs pamac-aur --noconfirm
sudo systemctl enable autofs
