#!/bin/bash
# place this file under /usr/bin , and chmod +x this file in order to be able to call it 
if [[ -z $1 ]];then
echo "You need to provide a manual"
else
man $1 |yad --text-info --height=500 --width=800 --center --title="Man Pages of $1" --wrap --show-uri &
fi
exit
