#!/bin/bash
BACKUP_FILE=$1
DB_NAME="TestDB"
USER="root"
PASSWORD="shakira"

if [ -z "$BACKUP_FILE" ]; then
    echo "Usage: ./restore.sh <backup_file>"
    exit 1
fi

mysql -u $USER -p$PASSWORD -e "DROP DATABASE IF EXISTS $DB_NAME; CREATE DATABASE $DB_NAME;"
mysql -u $USER -p$PASSWORD $DB_NAME < $BACKUP_FILE

echo "Restore completed from: $BACKUP_FILE"
