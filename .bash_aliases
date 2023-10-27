alias ei='sleep 5m && mpv ~/Musik/Bou\ \&\ Inja\ -\ Cous\ Cous.mp3'
alias eng='LC_ALL=C bash'
alias path="echo {"${PATH//:/$'\n'}"}"
alias cp="pycp -gi"
alias mv="pymv -gi"
alias bm=bashmount
alias stato='stat -c "%a %n" '
alias lso="ls -alnh | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\" %0o \",k);print}'"
alias band='sudo bandwhich'
alias wttr='curl wttr.in'
alias geoclue='/usr/lib/geoclue-2.0/demos/where-am-i'
alias feh='feh feh --scale-down --auto-zoom'
alias mang='/home/end/.local/bin/mang.sh'
alias carb="carbonyl https://google.at"
alias duf='duf --hide-fs tmpfs,squashfs'

###########################
#ssh
alias wohn='ssh -i ~/.ssh/meiner end@192.168.0.10'
alias pihole='ssh -i ~/.ssh/meiner pi@192.168.0.248'
alias zigbee='ssh -i ~/.ssh/meiner pi@192.168.0.108'
alias wohnrune='ssh -i ~/.ssh/meiner root@192.168.0.186'
alias runeamp='ssh root@192.168.0.207'
alias schlafrune='ssh -i ~/.ssh/meiner root@192.168.0.227'
alias nas='ssh -Y alarm@192.168.0.200'
alias trude='ssh -i ~/.ssh/meiner end@192.168.0.165'
alias arbeit='ssh -i ~/.ssh/meiner end@192.168.0.209'
alias vivo='ssh -i ~/.ssh/meiner end@192.168.0.101'

alias sshvivo='sshfs end@192.168.0.101:/ ~/ex8 -o IdentityFile=~/.ssh/meiner.pub'
alias sshtrude='sshfs end@192.168.0.165:/ ~/ex7 -o IdentityFile=~/.ssh/meiner.pub'
alias sshwohn='sshfs end@192.168.0.11:/ ~/ex6 -o IdentityFile=~/.ssh/meiner.pub'

#######################
##Radio
alias ö='ffplay -nodisp http://ors-sn09.ors-shoutcast.at/oe1-q2a'
alias f4='ffplay -nodisp http://ors-sn09.ors-shoutcast.at/fm4-q2a'
alias dsf='for i in *.dsf; do ffmpeg -i "$i" -af "lowpass=24000, volume=6dB" -sample_fmt s32 -ar 96000 "${i%.*}.flac"; done'
alias mov='for i in *.mov; do ffmpeg -i "$i" -vf "scale=-2:1080" "${i%.*}.mp4"; done'

#########################
##Speed
alias iotop='sudo iotop -o'
alias iftop='sudo iftop -B -i wlan0'
alias usbtop='sudo usbtop'

########################
##lsd
#alias lsa='lsd -A'
alias l='lsd -l'
alias la='lsd -lA'
alias lt='lsd --tree'

##################################
alias ncdu='ncdu --color dark'
alias r=ranger
alias play="SDL_AUDIODRIVER='alsa' AUDIODEV='hw:2,0' ffplay "
alias c='clear'

###################################
alias fuzi="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias fuzr="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias yayi="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"

### fzf search debs
#alias fuzi="apt-cache search '' | sort | cut --delimiter ' ' --fields 1 | fzf --multi --cycle --reverse --preview 'apt-cache show {1}' | xargs -r sudo apt install -y"

alias pac='sudo pacman -S --color auto'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
alias big="expac -H M '%m\t%n' | sort -h | nl"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

#grub update
#alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias kernel='sudo reinstall-kernels'

###################################

#quickly kill conkies
alias kc='killall conky'

############################
###  BASH Admin aliases  ###
############################
# Name: admin
# Description: administrator abbreviations

# if user is not root, pass all commands via sudo
if [ $UID -ne 0 ]; then
  # add new fonts
  alias fc='sudo fc-cache -fv'
  alias sce='sudo systemctl stop'
  alias scs='sudo systemctl start'
  alias scr='sudo systemctl daemon-reload'
else
  alias sce='systemctl stop'
  alias scs='systemctl start'
  alias scr='systemctl daemon-reload'
fi

# userlist
alias userlist="cut -d: -f1 /etc/passwd"

# hardware info --short
alias hw="hwinfo --short"

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

# backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

alias sc='systemctl'
alias scu='systemctl --user'
alias scur='systemctl --user daemon-reload'
alias scue='systemctl --user stop'
alias scus='systemctl --user start'

######################################
###  Curl aliases for convenience  ###
######################################
# Name: curl
# Description: curl abbreviations for convenience

alias cl='curl -L'  # follow redirects
alias clo='curl -L -O'  # follow redirects, download as original name
alias cloc='curl -L -C - -O'  # follow redirects, download as original name, continue
alias clocr='curl -L -C - -O --retry 5' # follow redirects, download as original name, continue, retry 5 times
alias clb='curl -L -I' # follow redirects, fetch banner
alias clhead='curl -D - -so /dev/null'  # see only response headers from a get request


#####################################
###  BASH aliases for yt-dlp  ###
#####################################
# Name: yt-dlp
# Description: aliases for yt-dlp

alias yta-aac="yt-dlp --extract-audio --audio-format aac "
alias yta-best="yt-dlp --extract-audio --audio-format best "
alias yta-flac="yt-dlp --extract-audio --audio-format flac "
alias yta-m4a="yt-dlp --extract-audio --audio-format m4a "
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3 "
alias yta-opus="yt-dlp --extract-audio --audio-format opus "
alias yta-vorbis="yt-dlp --extract-audio --audio-format vorbis "
alias yta-wav="yt-dlp --extract-audio --audio-format wav "
alias ytv-best="yt-dlp -f bestvideo+bestaudio "

alias ytv='yt-dlp -f "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]" -i -c --download-archive youtube.txt -o "%(title)s.%(ext)s"'

alias sr='sudo shutdown -r now'
alias ssn='sudo shutdown now'
alias logo='sudo pkill -u end'

##############################################################################################################################
# Execute "script" command just once
smart_script(){
    # if there's no SCRIPT_LOG_FILE exported yet
    if [ -z "$SCRIPT_LOG_FILE" ]; then
        # make folder paths
        logdirparent=~/Terminal_typescripts
        logdirraw=raw/$(date +%F)
        logdir=$logdirparent/$logdirraw
        logfile=$logdir/$(date +%F_%T).$$.rawlog

        # if no folder exist - make one
        if [ ! -d $logdir ]; then
            mkdir -p $logdir
        fi

        export SCRIPT_LOG_FILE=$logfile
        export SCRIPT_LOG_PARENT_FOLDER=$logdirparent

        # quiet output if no args are passed
        if [ ! -z "$1" ]; then
            script -f $logfile
        else
            script -f -q $logfile
        fi

        exit
    fi
}

# Start logging into new file
alias startnewlog='unset SCRIPT_LOG_FILE && smart_script -v'

# Manually saves current log file: $ savelog logname
savelog(){
    # make folder path
    manualdir=$SCRIPT_LOG_PARENT_FOLDER/manual
    # if no folder exists - make one
    if [ ! -d $manualdir ]; then
        mkdir -p $manualdir
    fi
    # make log name
    logname=${SCRIPT_LOG_FILE##*/}
    logname=${logname%.*}
    # add user logname if passed as argument
    if [ ! -z $1 ]; then
        logname=$logname'_'$1
    fi
    # make filepaths
    txtfile=$manualdir/$logname'.txt'
    rawfile=$manualdir/$logname'.rawlog'
    # make .rawlog readable and save it to .txt file
    cat $SCRIPT_LOG_FILE | perl -pe 's/\e([^\[\]]|\[.*?[a-zA-Z]|\].*?\a)//g' | col -b > $txtfile
    # copy corresponding .rawfile
    cp $SCRIPT_LOG_FILE $rawfile
    printf 'Saved logs:\n    '$txtfile'\n    '$rawfile'\n'
}

######################################################################################################
