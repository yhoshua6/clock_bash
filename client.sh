#!/bin/bash
#Josué Hernández Mateo
#Eduardo Herrera Dominguez
DIS=0
display "0.jpg" &
DIS=$!
client=/tmp/client

trap "rm -f $client" EXIT

if [[ ! -p $client ]]; then
    mkfifo $client
fi

if [ $DIS -ne 0 ]; then
	sleep 3
	while :
	do
		#recibe conexion de netcat
		nc $1 $2 > $client
		x=$(cat $client)
		case "$x" in
			0) display -remote "0.jpg" ;;
			1) display -remote "1.jpg" ;;
			2) display -remote "2.jpg" ;;
			3) display -remote "3.jpg" ;;
			4) display -remote "4.jpg" ;;
			5) display -remote "5.jpg" ;;
			6) display -remote "6.jpg" ;;
			7) display -remote "7.jpg" ;;
			8) display -remote "8.jpg" ;;
			9) display -remote "9.jpg" ;;
	    esac
	done
fi
