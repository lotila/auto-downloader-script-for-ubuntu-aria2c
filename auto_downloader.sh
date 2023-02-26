
while true; do 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $(<*.magnet); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 *.torrent; 

rm *.torrent; 

rm *.magnet; 

sleep 60m; 

done;