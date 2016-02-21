#!/bin/bash

if [ "$#" -lt 2 ]
then
	echo "input error"
	echo "Usage: $0 <latitutde> <longitude>"
	exit 1
fi

lat=$1
lon=$2

wget -O- -q "http://maps.google.com/maps/api/geocode/xml?latlng=$lat,$lon&sensor=false"|\
	grep formatted_address|\
	head -n1|\
	cut -d\> -f2|\
	cut -d\< -f1