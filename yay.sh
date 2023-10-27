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
 
yay -S brave-bin bashmount create_ap dragon-drop etcher-bin flacon ios-mount-git ipscan jdownloader2 --noconfirm
#yay -S kde-servicemenus-flacconvert kde-servicemenus-imagetools kde-servicemenus-pdf kde-servicemenus-thunderbird-attachment kwin-effects-burn-my-windows-git --noconfirm
yay -S kodi-addon-pvr-iptvsimple koreader-bin losslesscut-bin lsd luckybackup menulibre mocp-themes-git mp3check --noconfirm 
yay -S mp3directcut mp3gain mugshot nerd-fonts-hack nomacs onlyoffice-bin peaclock puddletag rofi-greenclip rpi-imager stacer-bin subliminal tenacity --noconfirm
yay -S topgrade-bin usbtop ventoy-bin vlc-wayland-git zram-swap-git  --noconfirm
#yay -S thunar-custom-actions --noconfirm
#sudo systemctl enable autofs

  
