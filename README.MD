This is auto downloaderfor Samba server, where I can add files easily but not run commands.


Following command/sh-file checks, if files are available in the folder and downloads them.
Supports *.torrent and *.magnet files
After downloading, command seeds and then deletes files.
Command repeats every 60 minutes.
Edit maximum of concurrent downloads to limit network traffic.
Runs in Ubuntu with aria2c.
Command blocks other terminal use and should be run in its own shell.

```
while true; do aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $(<*.magnet); aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 *.torrent; rm *.torrent; rm *.magnet; sleep 60m; done;
```
