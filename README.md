
### 💾 Backupish


### Description

Create and upload backups of local directories to FTP server.
You can backup folder once , or create a crontab operator and create backups every 1 Hour.



### 🔋 Dependecies

You must have installed **ZIP** and **FTP** libraries.

To install them enter this command in your terminal.
```shell
sudo apt-get install zip ftp
```


#### Make script executable

```shell
chmod +x /path/to/your/script/backupish.sh
```


#### Open Crontab

```bash
crontab -e
```


#### Add this line to crontab 
Add this line to crontab and create backup every 1 Hour.

```bash
0 * * * * /path/to/your/script/backupish.sh
```



### Optional

You can keep or delete the file created from backup. <br/>
Change to **false** if you want to keep original backup archive.

```bash
DELETE_BACKUP_FILE=true
```
