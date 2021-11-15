#!/bin/bash

sudo pacman -Syu

sudo pacman -S --needed git base-devel --noconfirm


git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
rm -rf yay
 
yay -S autofs pamac-aur bashmount dragon-drag-and-drop --noconfirm
yay -S flacon gmusicbrowser-git ipscan jdownloader2 luckybackup --noconfirm
yay -S menulibre moc-unstable mocp-themes-git mp3check --noconfirm 
yay -S mp3directcut mp3gain mugshot nerd-fonts-hack --noconfirm
yay -S puddletag zramswap usbtop thunar-custom-actions
sudo systemctl enable autofs
