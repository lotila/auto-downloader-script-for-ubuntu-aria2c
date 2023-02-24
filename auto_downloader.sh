

while true; do 
	files=*.magnet; 
	aria2c --bt-metadata-only=true --bt-save-metadata=true <$files; 
	rm $files; 
	files=*.torrent; 
	aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $files; 
	rm $files; 
	sleep 60m; 
done;





