#!/bin/bash
#Josué Hernández Mateo

while :
do
	#get time from computer
	echo $(date +%T | awk '{print substr($1,8,1)}') > usegundo #unidad de segundo
	echo $(date +%T | awk '{print substr($1,7,1)}') > dsegundo #decima de segundo
	echo $(date +%T | awk '{print substr($1,5,1)}') > uminuto #decima de minuto
	echo $(date +%T | awk '{print substr($1,4,1)}') > dminuto #unidad de minuto

	#manda coneccion 
	nc -l -p 8000 < usegundo
	#nc -l -p 8001 < dsegundo
	#nc -l -p 8002 < dsegundo
	#nc -l -p 8003 < dsegundo
	sleep 1
done