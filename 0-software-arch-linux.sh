#!/bin/bash
#set -e
###############################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###############################################################################

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

func_category() {
	tput setaf 5;
	echo "################################################################"
	echo "Installing software for category " $1
	echo "################################################################"
	echo;tput sgr0
}

###############################################################################

func_category Accessories

list=(
akm
arp-scan
atool
bandwhich
base-devel
bash-completion
bat
calibre
cantata
conky
devede
duf
engrampa
ethtool
exfat-utils
fatsort
feh
ffmpegthumbnailer
firewalld
fzf
git
gnome-disk-utility
gparted
gpg-crypter
gping
highlight
hplip
htop
hwinfo
#i3
inxi
#eos-settings-i3wm
jre11-openjdk-headless
#k3b
kcron
kdeconnect
kio-admin
kio-fuse
less
libcaca
linssid
lsb-release
lsd
lsof
man-pages
man-pages-de
mediainfo
micro
mlocate
moc
most
nano
nano-syntax-highlighting
neofetch
otf-opendyslexic-nerd
p7zip
packagekit-qt5
pacman-contrib
perl-image-exiftool
python-chardet
pv
ranger
ripgrep
rofi
sniffnet
speedtest-cli
terminus-font
testdisk
the_silver_searcher
transmission-cli
tree
ttf-sourcecodepro-nerd
ueberzug
unzip
vnstat
wget
#wine-mono
#winetricks
wol
xed
xsane
xsel
yay
zenity
zoxide
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Development

list=(
meld
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Graphics

list=(
shotwell
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Internet

list=(
firefox
firefox-i18n-de
linssid
qbittorrent
thunderbird
thunderbird-i18n-de
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Multimedia

list=(
handbrake
mpv
quodlibet
yt-dlp
vorbis-tools
vorbisgain
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Office

list=(
hunspell
hunspell-de
hyphen-de
mythes-de
zathura
zathura-cb
zathura-pdf-poppler
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category System

list=(
dconf-editor
iftop
iotop
xdg-user-dirs
xdg-user-dirs-gtk
tldr
sshfs
expac
binutils
bat
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

func_category Unpack

list=(
unace
unrar
zip
unzip
)

count=0
for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 11;
echo "################################################################"
echo "Software has been installed"
echo "################################################################"
echo;tput sgr0
