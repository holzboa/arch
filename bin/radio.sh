#!/bin/bash
TITLE=Radio
declare -A SENDER
SENDER["Ö1"]="https://orf-live.ors-shoutcast.at/oe1-q2a"
SENDER["FM4"]="https://orf-live.ors-shoutcast.at/fm4-q2a"
SENDER["Freirad"]="http://stream.freirad.at:8002/live.mp3"
SENDER["Helsinki"]="https://live.helsinki.at:8088/live160.mp3"
SENDER["Dubstep.fm"]="http://stream.dubstep.fm/256aac"
SENDER["Radio FR-Reggae"]="https://icecast.radiofrance.fr/fipreggae-hifi.aac"
SENDER["Ö1 Campus"]="https://orf-live.ors-shoutcast.at/campus-q2a"
SENDER["Radio FR-Baroque"]="https://icecast.radiofrance.fr/francemusiquebaroque-hifi.aac"
clear
echo "Radiosender auswählen:"
select ENTRY in "${!SENDER[@]}"; do
  TITLE="${ENTRY}"
  URL=${SENDER[${ENTRY}]}
  ffplay -x 300 -y 100 -window_title "${TITLE}" ${URL} &>/dev/null
done 
