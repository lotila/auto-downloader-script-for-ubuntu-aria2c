Following command checks, if torrent-files are available in the folder and downloads them.
After downloading, command seeds for 3 days and then deletes torrent files.
Command repeats every 24 hours.
Maximum of 100 concurrent downloads.
Runs in Ubuntu with aria2c.
Command blocks other terminal use and should be run in its own shell.

´´´
while true; do sleep $((60*60*24)) && aria2c --seed-time $((60*24*3)) --max-concurrent-downloads=100 *.torrent && rm *.torrent; done
´´´