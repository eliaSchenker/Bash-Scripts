#!/bin/bash
#---------------
#Autor: Elia Schenker, 27.10.2021
#Aufruf: bash currenttime.bash
#Beschreibung: Zeigt die Zeit jede Sekunde an
#---------------
while true
do
currentdate=$(date)
clear
echo "Current Time: $currentdate"
echo "[Press Ctrl+C to exit]"
sleep 1
done
