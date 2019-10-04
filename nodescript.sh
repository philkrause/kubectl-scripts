#!/bin/bash


ALLINFO=$(kubectl top nodes)
COLUMNS=$(kubectl top nodes | grep NAME)
MEMORY=$(kubectl top nodes | awk '{print $4}')

echo "testing"

touch map.txt

while true; do
	ping google.com
	clear
	sleep 5s
done


