
while true; do 

cd=10;

aria2c --max-concurrent-downloads=$cd $(<*.URI); 

aria2c --max-concurrent-downloads=$cd $(<*.metalink); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd $(<*.magnet); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd *.torrent; 

rm *.torrent; 

rm *.magnet; 

rm *.URI;

rm *.metalink;

sleep 24h; 

chown -R tomi:tomi /media/tomi;

done;