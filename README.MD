This is auto downloaderfor Samba server, where I can add files easily but not run commands.


Following command/sh-file checks, if files are available in the folder and downloads them.
Supports *.URI, *.metalink, *.torrent and *.magnet files
After downloading, command seeds and then deletes files.
Command repeats every 24 hours
Edit maximum of concurrent downloads (cd) to limit network traffic.
Runs in Ubuntu with aria2c.
Command blocks other terminal use and should be run in its own shell.

```
while true; do cd=10; aria2c --max-concurrent-downloads=$cd $(<*.URI); aria2c --max-concurrent-downloads=$cd $(<*.metalink); aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd $(<*.magnet); aria2c --seed-time $((60*24)) --max-concurrent-downloads=$cd *.torrent; rm *.torrent; rm *.magnet; rm *.URI; rm *.metalink; sleep 24h; chown -R tomi:tomi /media/tomi; done;
```
