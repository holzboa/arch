#!/bin/bash
# init
function pause(){
   read -p "$*"
}

if [[ ! -f $(which fatsort 2>/dev/null) ]]
   	 then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: Das Paket 'FATSort' muss zum Ausführen des Programmes installiert sein.\n\n"
			read -p "Soll es jetzt installiert werden? [y/n] :" input
			if [ -Z $input ]  ; then
				reset
				printf "FATSort GUI - 2016 by Charly 1.02"
				printf "\n---------------------------------\n"
				printf "Sie haben keine Auswahl getroffen\n\n"
				printf "Das Paket 'FATSort' muss zum ausführen des Programmes installiert sein.\nStarten Sie das Programm erneut und geben Sie zur Installation von FATSort\nden Buchsatben [y] ein. Alternativ können Sie das Paket über das Terminal\nmit folgendem Befehl installieren\n\n'sudo apt-get install fatsort'\n\n\n\n"
				printf "Das Programm wird nun beendet\n\n"
				pause "Weiter mit [ENTER]"
				exit
			else
				if [ `echo $input` == "y" ]; then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
				    sudo apt-get install -y fatsort
					reset	
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Die Installation von FATSort wurde abgeschlossen.\n"
				else
					if [ `echo $input` == "n" ]; then
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
				  	 	printf "Das Paket 'FATSort' muss zum ausführen des Scipts installiert sein.\n\n"
						printf "Sie können es über das Terminal mit folgendem Befehl installieren\n\n'sudo apt-get install fatsort'\n\n"
						printf "Das Programm wird nun beendet\n\n"
						pause "Weiter mit [ENTER]"
					exit				
				fi
			fi
		fi
fi

reset
printf "FATSort GUI - 2016 by Charly 1.02"
printf "\n---------------------------------\n"
printf "suche Datenträger ."
sleep 2
clear
printf "FATSort GUI - 2016 by Charly 1.02"
printf "\n---------------------------------\n"
printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
printf "Mount Point      |      Ort des Datenträgers  |  Typ"
printf "\n---------------------------------------------------\n"

if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
printf "\n\n'FATSort' arbeitet mit root-Rechten.\nGeben Sie daher ihr root-Passwort jetzt ein.\n\n" 
sudo findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
reset
printf "FATSort GUI - 2016 by Charly 1.02"
printf "\n---------------------------------\n"
PS3="Wähle eine Option: " 
options=("+ Dateien auf Datenträger sortieren - (DEFAULT)" "'----> sortieren ohne den Datenträger auszuhängen - (FORCE)" "+ Derzeitige Reihenfolge der Dateien anzeigen - (DEFAULT)" "'----> anzeigen ohne den Datenträger auszuhängen - (FORCE)" "  Eigene Optionen angeben" "  INFOS zu FATSort" "  Informationen über einen Datenträger anzeigen - (FORCE)" "  FATSort installieren" "  FATSort deinstallieren" "  Beenden")
select option in "${options[@]}"
do
   case $option in
	"+ Dateien auf Datenträger sortieren - (DEFAULT)")
		if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "\nMit [ENTER] können Sie die Eingabe überspringen\n\n"
			printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
			printf "Mount Point      |      Ort des Datenträgers  |  Typ"
			printf "\n---------------------------------------------------\n"
			findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
			printf "\n"
			read -p "Welcher Datenträger soll sortiert werden (Bsp: sdc1) :" disk
				if [ -Z $disk ]  ;
				then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Sie haben keinen Datenträger angegeben\n\n"
				else
					if [ "`mount|grep /dev/$disk`" != "" ]  ;
					then
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						read -p "'$disk' wird ausgehängt und 'FATSort' gestartet, OK? [y/n] :" input
							if [ -Z $input ]  ; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "Sie haben keine Auswahl getroffen\n"
							else
							if [ `echo $input` == "n" ]; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "Abbruch...\n"
								sleep 1
								
							else
							if [ `echo $input` == "y" ]; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "'$disk' wird ausgehängt und 'FATSort' gestartet, OK? [y/n] : y\n"
								sudo umount /dev/$disk && sudo fatsort /dev/$disk
								printf "Fertig...\n"
								sleep 1
								
							fi
							fi
							fi
					else
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Fehler: falsche Eingabe\n\n"
					fi
				fi
		else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: keine Datenträger gefunden\n\nTrennen Sie den Datenträger vom Computer und\nverbinden bzw. mounten Sie diesen erneut.\n\n"
		fi
        ;;
	
	"'----> sortieren ohne den Datenträger auszuhängen - (FORCE)")
		if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "\nMit [ENTER] können Sie die Eingabe überspringen\n\n"
			printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
			printf "Mount Point      |      Ort des Datenträgers  |  Typ"
			printf "\n---------------------------------------------------\n"
			findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
			printf "\n"
			read -p "Welcher Datenträger soll sortiert werden (Bsp: sdc1) :" disk
				if [ -Z $disk ]  ;
				then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Sie haben keinen Datenträger angegeben\n\n"
				else
					if [ "`mount|grep /dev/$disk`" != "" ]  ;
					then
						
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								sudo fatsort -f /dev/$disk
								printf "Fertig...\n"
								sleep 1
								
					else
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Fehler: falsche Eingabe\n\n"
					fi
				fi
		else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: keine Datenträger gefunden\n\nTrennen Sie den Datenträger vom Computer und\nverbinden bzw. mounten Sie diesen erneut.\n\n"
		fi
        ;;

      "+ Derzeitige Reihenfolge der Dateien anzeigen - (DEFAULT)")
		if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "\nMit [ENTER] können Sie die Eingabe überspringen\n\n"
			printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
			printf "Mount Point      |      Ort des Datenträgers  |  Typ"
			printf "\n---------------------------------------------------\n"
			findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
			printf "\n"
			read -p "Welcher Datenträger soll angezeigt werden (Bsp: sdc1) :" disk
				if [ -Z $disk ]  ;
				then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Sie haben keinen Datenträger angegeben\n\n"
				else
					if [ "`mount|grep /dev/$disk`" != "" ]  ;
					then
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						read -p "'$disk' wird ausgehängt und 'FATSort' gestartet, OK? [y/n] :" input
							if [ -Z $input ]  ; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "Sie haben keine Auswahl getroffen\n"
							else
							if [ `echo $input` == "n" ]; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "Abbruch...\n"
								sleep 1
								
							else
							if [ `echo $input` == "y" ]; then
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								printf "'$disk' wird ausgehängt und 'FATSort' gestartet, OK? [y/n] : y\n"
								sudo umount /dev/$disk && sudo fatsort -l /dev/$disk


							fi
							fi
							fi
					else
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Fehler: falsche Eingabe\n\n"
					fi
				fi
		else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: keine Datenträger gefunden\n\nTrennen Sie den Datenträger vom Computer und\nverbinden bzw. mounten Sie diesen erneut.\n\n"
		fi
        ;;
	"'----> anzeigen ohne den Datenträger auszuhängen - (FORCE)")
		if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "\nMit [ENTER] können Sie die Eingabe überspringen\n\n"
			printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
			printf "Mount Point      |      Ort des Datenträgers  |  Typ"
			printf "\n---------------------------------------------------\n"
			findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
			printf "\n"
			read -p "Welcher Datenträger soll sortiert werden (Bsp: sdc1) :" disk
				if [ -Z $disk ]  ;
				then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Sie haben keinen Datenträger angegeben\n\n"
				else
					if [ "`mount|grep /dev/$disk`" != "" ]  ;
					then
						
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								sudo fatsort -f -l /dev/$disk
								
							
					else
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Fehler: falsche Eingabe\n\n"
					fi
				fi
		else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: keine Datenträger gefunden\n\nTrennen Sie den Datenträger vom Computer und\nverbinden bzw. mounten Sie diesen erneut.\n\n"
		fi
        ;;
      
	"  Informationen über einen Datenträger anzeigen - (FORCE)")
		if findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat;
		then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "\nMit [ENTER] können Sie die Eingabe überspringen\n\n"
			printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
			printf "Mount Point      |      Ort des Datenträgers  |  Typ"
			printf "\n---------------------------------------------------\n"
			findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
			printf "\n"
			read -p "Informationen zu welchem Datentröger? (Bsp: sdc1) :" disk
				if [ -Z $disk ]  ;
				then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Sie haben keinen Datenträger angegeben\n\n"
				else
					if [ "`mount|grep /dev/$disk`" != "" ]  ;
					then
						
								reset
								printf "FATSort GUI - 2016 by Charly 1.02"
								printf "\n---------------------------------\n"
								sudo fatsort -f -i /dev/$disk
								
							
					else
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Fehler: falsche Eingabe\n\n"
					fi
				fi
		else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Fehler: keine Datenträger gefunden\n\nTrennen Sie den Datenträger vom Computer und\nverbinden bzw. mounten Sie diesen erneut.\n\n"
		fi
        ;;

	"  INFOS zu FATSort")
		reset
		fatsort -h
	;;

"  Eigene Optionen angeben")
	reset
	printf "FATSort GUI - 2016 by Charly 1.02"
	printf "\n---------------------------------\n\n"
	printf "Es werden in diesem Bereich keine Fehler abgefangen... \n\n"
	printf "Hier eine Liste Ihrer angeschlossenen Wechsel-Datenträger:\n"
	printf "Mount Point      |      Ort des Datenträgers  |  Typ"
	printf "\n---------------------------------------------------\n"
	findmnt -mo TARGET,SOURCE,FSTYPE | grep -e "sd[b-z]" | grep vfat
	printf "\n"
	read -p "Wählen Sie einen Datenträger (Bsp: sdc1) :" disk
	printf "\nMöchten Sie vor der Eingabe noch eine Übersicht\n"
	read -p "der verfügbaren Optionen von 'FATSort' sehen? [y/n] :" input
		if [ `echo $input` == "y" ]; then
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n\n"
			fatsort -h
		fi
	printf "\n"
	read -p "Geben Sie die gewünschten Optionen an (Bsp: -f -l) :" option
        printf "\nHaben Sie die Option '-f' gewählt, damit der\n"
	read -p "gewählte Datenträger gemountet bleibt?   [y/n]: " force
		if [ `echo $force` == "n" ]; then
			sudo umount /dev/$disk
		fi	
	reset
	printf "FATSort GUI - 2016 by Charly 1.02"
	printf "\n---------------------------------\n\n"
	sudo fatsort $option /dev/$disk
	printf "\n"
         ;;

	"  FATSort installieren")
reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Das Paket 'FATSort' muss zum Ausführen des Programmes installiert sein.\n\n"
			read -p "Soll es jetzt installiert werden? [y/n] :" input
			if [ -Z $input ]  ; then
				reset
				printf "FATSort GUI - 2016 by Charly 1.02"
				printf "\n---------------------------------\n"
				printf "Sie haben keine Auswahl getroffen\n\n"
				printf "Das Paket 'FATSort' muss zum ausführen des Programmes installiert sein.\nStarten Sie das Programm erneut und geben Sie zur Installation von FATSort\nden Buchsatben [y] ein. Alternativ können Sie das Paket über das Terminal\nmit folgendem Befehl installieren\n\n'sudo apt-get install fatsort'\n\n\n\n"
			else
				if [ `echo $input` == "y" ]; then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
				    sudo apt-get install -y fatsort
					reset	
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Die Installation von FATSort wurde abgeschlossen.\n"
				else
					if [ `echo $input` == "n" ]; then
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
				  	 	printf "Das Paket 'FATSort' muss zum ausführen des Scipts installiert sein.\n\n"
						printf "Sie können es über das Terminal mit folgendem Befehl installieren\n\n'sudo apt-get install fatsort'\n\n"
				fi
			fi
		fi
;;

	"  FATSort deinstallieren")
	reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n"
			printf "Das Paket 'FATSort' muss zum Ausführen des Programmes installiert sein.\n\n"
			read -p "Soll es trotzdem jetzt deinstalliert werden? [y/n] :" input
			if [ -Z $input ]  ; then
				reset
				printf "FATSort GUI - 2016 by Charly 1.02"
				printf "\n---------------------------------\n"
				printf "Sie haben keine Auswahl getroffen\n\n"
			else
				if [ `echo $input` == "y" ]; then
					reset
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
				    sudo apt-get autoremove -y fatsort
					reset	
					printf "FATSort GUI - 2016 by Charly 1.02"
					printf "\n---------------------------------\n"
					printf "Die Deinstallation von FATSort wurde abgeschlossen.\n"
				else
					if [ `echo $input` == "n" ]; then
						reset
						printf "FATSort GUI - 2016 by Charly 1.02"
						printf "\n---------------------------------\n"
						printf "Sie können FATSort auch über das Terminal mit folgendem Befehl deinstallieren\n\n'sudo apt-get autoremove fatsort'\n\n"
				fi
			fi
		fi
;;

	"  Beenden")
	clear
	printf "FATSort GUI - 2016 by Charly 1.02"
	printf "\n----------------------------------\n"
    printf "Programm beenden\n\n"
	printf "Danke das Sie dieses Script genutzt haben!"
	sleep 2
	exit
         ;;
    
      
      *)
	reset
		printf "FATSort GUI - 2016 by Charly 1.02"
		printf "\n---------------------------------\n"
        echo "Falsche eingabe"
         ;;
   
esac
	printf "\n---------------------------------\n"
	pause "Mit [ENTER] zurück zum Menü"
	reset
	printf "FATSort GUI - 2016 by Charly 1.02"
	printf "\n---------------------------------\n"
done

else
			reset
			printf "FATSort GUI - 2016 by Charly 1.02"
			printf "\n---------------------------------\n\n"
			printf "Fehler: keine Datenträger gefunden\n\n"
			printf "'FATSort' arbeitet ausschließlich mit FAT-formatierten Datenträgern.\n"
			printf "Bitte schließen Sie vor dem Ausführen des Programms einen Datenträger\n"
			printf "mit 'Fat16'- oder 'Fat32'- Formatierung an.\n\n"
			printf "Das Programm wird nun beendet\n\n"
			pause "Weiter mit [ENTER]"
			fi
		    ;;
