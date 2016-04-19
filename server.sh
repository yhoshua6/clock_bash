#!/bin/bash
#Josué Hernández Mateo

#!/bin/bash
while :
do
	#statements
	echo $(date +%T | awk '{print substr($1,8,1)}') > server
	nc -q 0 127.0.0.1 8000 < server
	sleep 1
done