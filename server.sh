#!/bin/bash
#Josué Hernández Mateo

#!/bin/bash
while :
do
	#statements
	echo $(date +%T | awk '{print substr($1,8,1)}') > server
	#nc 127.0.0.1 8000 < server
	nc -l -p 8001 < server
	sleep 1
done