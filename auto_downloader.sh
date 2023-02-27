
while true; do 

cd=100;

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd $(<*.URI); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd $(<*.metalink); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd $(<*.magnet); 

aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd *.torrent; 

rm *.torrent; 

rm *.magnet; 

rm *.URI;

rm *.metalink;

sleep 60m; 

done;