#!/bin/bash
#-------------------
#Autor: Elia Schenker (geänderte Version von Pascal Thuma)
#Aufruf: bash createbash.bash <path> <description>
#Beschreibung: Kreiert ein neues Bash File mit Shebang Zeile und Header
#-------------------

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

#Check if file doesnt exist and export
if test -f "$file"; then
   echo "File existiert bereits!"
else
   echo -e $text > $file
fi
