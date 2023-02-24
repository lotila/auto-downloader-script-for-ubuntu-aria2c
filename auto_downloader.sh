

while true; do 
	files=*.torrent; 
	aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $files; 
	rm $files; 
	sleep 60m; 
done;
