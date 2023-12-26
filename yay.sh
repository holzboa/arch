#!/bin/bash
#set -e
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################
#sudo pacman -Syu

#sudo pacman -S --needed git base-devel --noconfirm


#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si --noconfirm
#cd ..
#rm -rf yay
 
yay -S --needed brave-bin bashmount dragon-drop etcher-bin ios-mount-git ipscan jdownloader2 kora-icon-theme nerd-fonts-hack onlyoffice-bin topgrade-bin usbtop ventoy-bin --noconfirm 
yay -S --needed flacon vlc-wayland-git stacer-bin create_ap tenacity --noconfirm
#yay -S --needed k3b kcron kdeconnect kio-admin kio-fuse kde-servicemenus-pdf kde-servicemenus-thunderbird-attachment kwin-effects-burn-my-windows-git --noconfirm
#yay -S --needed kodi-addon-pvr-iptvsimple  koreader-bin losslesscut-bin --noconfirm
#yay -S --needed luckybackup menulibre mocp-themes-git mp3check --noconfirm 
#yay -S --needed mp3directcut mp3gain mugshot nomacs  --noconfirm 
#yay -S --needed peaclock puddletag pycp rofi-greenclip rpi-imager --noconfirm 

#yay -S --needed thunar-custom-actions --noconfirm
#sudo systemctl enable autofs

  
