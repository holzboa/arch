#!/bin/bash
begin=$(date +%s)
echo -ne "\nPress:\t\"Enter\" for lap time\n\t\"Strg + C\" to abort\n\n"
while true; do
    now=$(date +%s)
    diff=$(($now - $begin))
    mins=$(($diff / 60))
    secs=$(($diff % 60))
    echo -ne "Time elapsed: $mins:$(printf %02d $secs)\r"
    sleep .1
done
