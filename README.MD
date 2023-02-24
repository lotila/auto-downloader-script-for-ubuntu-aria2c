This is auto downloaderfor Samba server, where I can add files easily but not run commands.


Following command/file checks, if torrent-files are available in the folder and downloads them.
After downloading, command seeds for 1 day and then deletes torrent files.
Command repeats every 60 minutes.
Edit maximum of concurrent download to limit network traffic.
Runs in Ubuntu with aria2c.
Command blocks other terminal use and should be run in its own shell.

```
while true; do files=*.magnet; aria2c --bt-metadata-only=true --bt-save-metadata=true <$files; rm $files; files=*.torrent; aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $files; rm $files; sleep 60m; done;
```
