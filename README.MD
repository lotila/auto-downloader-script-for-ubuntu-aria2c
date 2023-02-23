Following command checks, if torrent-files are available in the folder and downloads them.
After downloading, command seeds for 1 day and then deletes torrent files.
Command repeats every 60 minutes.
Maximum of 100 concurrent downloads.
Runs in Ubuntu with aria2c.
Command blocks other terminal use and should be run in its own shell.

```
while true; do files=*.torrent; aria2c --seed-time $((60*24)) --max-concurrent-downloads=100 $files; rm $files; sleep 60m; done;
```

or download files one at a time with folloing command.
After downloading seeds for 24 hours.
This version of the script saves network traffic for other use.

```
while true; do for file in *.torrent; do aria2c --seed-time $((60*24)) "$file"; rm "$file"; done; sleep $((60*60)); done;
```

This is for Samba server, where I can add files easily but not run scritps.
