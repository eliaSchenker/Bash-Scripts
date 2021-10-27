#!/bin/bash
#-------------------
#Autor: Elia Schenker (geänderte Version von Pascal Thuma)
#Aufruf: bash createbash.bash <path> <description>
#Beschreibung: Kreiert ein neues Bash File mit Shebang Zeile und Header
#-------------------

#Check if the correct amount of parameters were given
if ! [ $# -eq 2 ]
then
echo "Falsche Anzahl an Parametern - Verwende createbash <path> <description>"
exit 1
fi

#Check if file doesn't exist already
if test -f $1
then
echo "File exisitiert bereits"
exit 1
fi

#Shebang-Zeile
shebang="#!/bin/bash\n"
#Get current date
date=$(date +"%d.%m.%Y")
#Get File name from first parameter
file=$1
author="#Author: Elia Schenker, $date\n"
aufrufText="#Aufruf: bash $file\n"
beschreibung="#Beschreibung: $2\n"
line="#-----------------------\n"

#Create the final output
text="$shebang$line$author$aufrufText$beschreibung$line"

#Export file
echo -e $text > $file
