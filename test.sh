#!/bin/bash


rm -f map.txt
rm -f map2.txt


touch map.txt
touch map2.txt

while true; do
	
	kubectl top nodes >> map.txt
	kubectl get nodes | awk '{print $3}' >> map2.txt
	clear
	paste map.txt map2.txt
	rm -f map.txt
	rm -f map2.txt
done



echo -n "DONE"
