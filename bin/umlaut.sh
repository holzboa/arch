#!/bin/bash

find -iregex ".*[äöüß].*" -printf "%d %p\n" | sort -rn | cut -d ' ' -f2- | xargs -i sh -c 'export f="{}";mv "$f" "${f%/*}/$(echo "${f##*/}" | sed -re "s/ä/ae/g" -e "s/ü/ue/g" -e "s/ö/oe/g" -e "s/Ä/Ae/g" -e "s/Ö/Oe/g" -e "s/Ü/Ue/g" -e "s/ß/ss/g")"'
