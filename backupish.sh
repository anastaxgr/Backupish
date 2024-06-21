#!/bin/bash

# DELETE FILE AFTER UPLOAD #
DELETE_BACKUP_FILE=true

# YOUR FTP CREDENTIALS #
SOURCE_FOLDER="/path/to/your/folder"
BACKUP_FOLDER="/path/to/backup/folder"
FTP_SERVER="ftp.yourserver.com"
FTP_USERNAME="your_username"
FTP_PASSWORD="your_password"
FTP_UPLOAD_PATH="/path/on/ftp/server"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="${BACKUP_FOLDER}/backup_${TIMESTAMP}.zip"

# Create ZIP backup file
zip -r $BACKUP_FILE $SOURCE_FOLDER

# Update to server
ftp -inv $FTP_SERVER <<EOF
user $FTP_USERNAME $FTP_PASSWORD
put $BACKUP_FILE $FTP_UPLOAD_PATH/backup_${TIMESTAMP}.zip
bye
EOF

# Delete Backup ZIP after Upload
if [[ $DELETE_BACKUP_FILE ]]
    rm $BACKUP_FILE
fi