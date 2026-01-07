To run the monitorDisk.sh

just do ./monitorDisk.sh in the directory it's in.

(Optional: You can also just make a cronjob):
1.)  Input this in terminal: crontab -e
2.)  Input this at the very bottom: 0 * * * * /directory/monitor_disk.sh >> /directory/disk_log.txt
