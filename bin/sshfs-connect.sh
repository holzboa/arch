#!/bin/sh
# A bash script for mounting remote systems using sshfs
#------------------------------------------------------------
clear
echo "This script will help you mount a remote system using sshfs."
echo ""
echo -n "Continue? (Y|n) > "
read a
if [ "$a" = "y" ] || [ "$a" = "Y" ] || \
[ "$a" = "" ]; then
   type=""
   until [ "$type" = "1" ] || [ "$type" = "2" ] || \
   [ "$type" = "0" ]; do
       clear
       echo "Would you like to mount or unmount?"
       echo ""
       echo "1. Mount"
       echo "2. UnMount"
       echo ""
       echo "0. Cancel"
       echo ""
       echo -n ":> "
       read type
   done
   case $type in
       1 ) mode=yes
           ;;
       2 ) mode=no
           ;;
       0 ) clear && echo "Program cancelled. \n" && exit 0
   esac
   if [ "$mode" = "yes" ]; then
       # Choose remote host to mount
       selection=""
       until [ "$selection" = "1" ] || [ "$selection" = "2" ] || \
       [ "$selection" = "3" ] || [ "$selection" = "4" ] || [ "$selection" = "5" ] || [ "$selection" = "6" ] || [ "$selection" = "7" ] || [ "$selection" = "8" ] || [ "$selection" = "0" ]; do
           clear
           echo "Choose which host to mount. Select 1, 2, 3, 4, 5, 6, 7 or 8:"
           echo ""
           echo "1. pihole"
           echo "2. WohnRune"
           echo "3. SchlafRune"
           echo "4. RuneAmp"
	   echo "5. NAS"
	   echo "6. wohn"
	   echo "7. trude"
	   echo "8. vivobook"
	   echo ""
           echo "0. Cancel installation"
           echo ""
           echo -n ":> "
           read selection
       done
       case $selection in
           # If no user is specified, it will use your local username
           1 ) WHERE_TO_MOUNT="ex1"
               ;;
           2 ) WHERE_TO_MOUNT="ex2"
               ;;
           3 ) WHERE_TO_MOUNT="ex3"
               ;;
	   4 ) WHERE_TO_MOUNT="ex4"
	       ;;
           5 ) WHERE_TO_MOUNT="ex5"
               ;;
	   6 ) WHERE_TO_MOUNT="ex6"
               ;;
	   7 ) WHERE_TO_MOUNT="ex7"
               ;;
	   8 ) WHERE_TO_MOUNT="ex8"
               ;;
           0 ) clear && echo "Program cancelled. \n" && exit 0
       esac
       echo ""
       sleep 1s
       clear
       if [ "$WHERE_TO_MOUNT" = "ex1" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs end@192.168.0.248:/ ~/ex1 
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
       elif [ "$WHERE_TO_MOUNT" = "ex2" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs root@192.168.0.186:/ ~/ex2 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
       elif [ "$WHERE_TO_MOUNT" = "ex3" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs root@192.168.0.227:/ ~/ex3 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex4" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs root@192.168.0.207:/ ~/ex4 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex5" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs -o Ciphers=aes128-gcm@openssh.com -o Compression=no -o reconnect alarm@192.168.0.200:/srv/nfs/ ~/ex5
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex6" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs end@192.168.0.11:/ ~/ex6 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex7" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs end@192.168.0.165:/ ~/ex7 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex8" ]; then
           clear
           echo "You will be prompted for your password."
           echo ""
           sleep 1s
           sshfs end@192.168.0.101:/ ~/ex8 -o IdentityFile=~/.ssh/meiner.pub
           echo ""
           echo "Remote system should now be mounted."
           echo ""
           sleep 1s
       fi
   elif [ "$mode" = "no" ]; then
       # Choose remote host to unmount
       selection=""
       until [ "$selection" = "1" ] || [ "$selection" = "2" ] || \
       [ "$selection" = "3" ] || [ "$selection" = "4" ] || [ "$selection" = "5" ] || [ "$selection" = "6" ] || [ "$selection" = "7" ] || [ "$selection" = "8" ] || [ "$selection" = "0" ]; do
           clear
           echo "Choose which host to mount. Select 1, 2, 3, 4, 5, 6, 7 or 8:"
           echo ""
           echo "1. trude"
           echo "2. WohnRune"
           echo "3. SchlafRune"
           echo "4. RuneAmp"
	   echo "5. NAS"
	   echo "6. wohn"
	   echo "7. trude"
	   echo "8. vivobook"
	   echo ""
           echo "0. Cancel"
           echo ""
           echo -n ":> "
           read selection
       done
       case $selection in
           1 ) WHERE_TO_MOUNT="ex1"
               ;;
           2 ) WHERE_TO_MOUNT="ex2"
               ;;
           3 ) WHERE_TO_MOUNT="ex3"
               ;;
	   4 ) WHERE_TO_MOUNT="ex4"
               ;;
           5 ) WHERE_TO_MOUNT="ex5"
               ;;
           6 ) WHERE_TO_MOUNT="ex6"
               ;;
           7 ) WHERE_TO_MOUNT="ex7"
               ;;
           8 ) WHERE_TO_MOUNT="ex8"
               ;;
           0 ) clear && echo "Program cancelled. \n" && exit 0
       esac
       echo ""
       sleep 1s
       clear
       if [ "$WHERE_TO_MOUNT" = "ex1" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex1
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
       elif [ "$WHERE_TO_MOUNT" = "ex2" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex2
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
       elif [ "$WHERE_TO_MOUNT" = "ex3" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex3
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
       elif [ "$WHERE_TO_MOUNT" = "ex4" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex4
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex5" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex5
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex6" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex6
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex7" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex7
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
      elif [ "$WHERE_TO_MOUNT" = "ex8" ]; then
           clear
           echo "Remote system will now be unmounted."
           echo ""
           sleep 1s
           fusermount -u ~/ex8
           echo ""
           echo "Remote system should now be unmounted."
           echo ""
           sleep 1s
       fi
   fi
fi
exit 0

