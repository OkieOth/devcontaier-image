#/bin/bash

echo "[$(hostname)] started: $(date +'%Y-%m-%d %H:%M:%S')"
while true; do
	sleep 300
	echo " [$(hostname)] i am still here: $(date +'%Y-%m-%d %H:%M:%S')"
done
