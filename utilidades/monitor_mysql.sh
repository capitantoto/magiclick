#!/bin/bash
FREQ_ACTUALIZACION_SECS=10
clear
while true;
do
	date
	mysql -e "SHOW PROCESSLIST \G"
	sleep $FREQ_ACTUALIZACION_SECS
	clear
done

