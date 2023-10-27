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
 
yay -S --needed brave-bin bashmount create_ap dragon-drop etcher-bin --noconfirm 
yay -S --needed flacon ios-mount-git ipscan jdownloader2 --noconfirm
#yay -S --needed kde-servicemenus-flacconvert kde-servicemenus-imagetools kde-servicemenus-pdf kde-servicemenus-thunderbird-attachment kwin-effects-burn-my-windows-git --noconfirm
yay -S --needed kodi-addon-pvr-iptvsimple koreader-bin losslesscut-bin --noconfirm
yay -S --needed luckybackup menulibre mocp-themes-git mp3check --noconfirm 
yay -S --needed mp3directcut mp3gain mugshot nerd-fonts-hack nomacs onlyoffice-bin --noconfirm 
yay -S --needed peaclock puddletag rofi-greenclip rpi-imager --noconfirm 
yay -S --needed stacer-bin subliminal tenacity --noconfirm
yay -S --needed topgrade-bin usbtop ventoy-bin vlc-wayland-git zram-swap-git  --noconfirm
#yay -S --needed thunar-custom-actions --noconfirm
#sudo systemctl enable autofs

  
